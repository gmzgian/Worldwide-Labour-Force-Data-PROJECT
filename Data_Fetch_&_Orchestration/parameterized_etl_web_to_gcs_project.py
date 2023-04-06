from pathlib import Path
import pandas as pd
from prefect import flow, task
from prefect_gcp.cloud_storage import GcsBucket
from random import randint
from prefect.tasks import task_input_hash
from datetime import timedelta


@task(retries=3, cache_key_fn=task_input_hash, cache_expiration=timedelta(days=1))
def fetch(dataset_url: str) -> pd.DataFrame:
    """Read taxi data from web into pandas DataFrame"""

    df = pd.read_csv(dataset_url)
    return df


@task()
def write_local(df: pd.DataFrame, theme: str, dataset_file: str) -> Path:
    """Write DataFrame out locally as parquet file"""
    path = Path(f"/home/gian/data-engineering-zoomcamp/week_7_project/data/{dataset_file}.parquet")
    df.to_parquet(path)
    return path



@task()
def write_gcs(path: Path, dataset_file: str) -> None:
    """Upload local parquet file to GCS"""
    gcs_block = GcsBucket.load("finalproject-gcs")
    gcs_block.upload_from_path(from_path=path, to_path=f"data/{dataset_file}.parquet")
    return

@flow()
def etl_web_to_gcs(theme: str) -> None:
    """The main ETL function"""

    dataset_file = f"{theme}"
    dataset_url = f"https://www.ilo.org/ilostat-files/WEB_bulk_download/indicator/{theme}.csv.gz"
    df = fetch(dataset_url)
    path = write_local(df, theme, dataset_file)
    write_gcs(path, dataset_file)

@flow()
def etl_parent_flow(
    themes: list[str] = ["POP_XWAP_SEX_AGE_EDU_NB_A", "EAR_4MTH_SEX_ECO_CUR_NB_A"]
):
    for theme in themes:
        etl_web_to_gcs(theme)

if __name__ == "__main__":
     themes = ["POP_XWAP_SEX_AGE_EDU_NB_A", "EAR_4MTH_SEX_ECO_CUR_NB_A"]
     etl_parent_flow(themes)

"""Themes (codes) can be found in the official International Labour Organization webiste at this link: https://ilostat.ilo.org/data/?# """
"""Look for the file name you are interested in and use the related code as parameter. You can also use the Theme code to look for the file by using the search bar."""
"""Default files are: Working-age population by sex, age and education (thousands), Average monthly earnings of employees by sex and economic activity."""