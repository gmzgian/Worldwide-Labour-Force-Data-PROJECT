from pathlib import Path
import pandas as pd
from prefect import flow, task
from prefect_gcp.cloud_storage import GcsBucket
from random import randint


@task(retries=3)
def fetch(dataset_url: str) -> pd.DataFrame:
    """Read taxi data from web into pandas DataFrame"""
    # if randint(0, 1) > 0:
    #     raise Exception

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
def etl_web_to_gcs() -> None:
    """The main ETL function"""
    theme = "POP_XWAP_SEX_AGE_EDU_NB_A"
    dataset_file = f"{theme}"
    dataset_url = f"https://www.ilo.org/ilostat-files/WEB_bulk_download/indicator/{theme}.csv.gz"

    df = fetch(dataset_url)
    path = write_local(df, theme, dataset_file)
    write_gcs(path, dataset_file)


if __name__ == "__main__":
    etl_web_to_gcs()

