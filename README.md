# Worldwide Labour Force Project - End to end data pipeline
My final project of the Data Engineering Zoomcamp consisted in developing an End-to-end data pipeline that fetches, transforms and analyzes worldwide labour force data.

Through this pipeline, data is extracted from the [International Labour Organization website](https://ilostat.ilo.org/data/) and undergoes a series of carefully orchestrated processes, such as uploading to the cloud, cleaning, analysis, and visualization to provide users with accurate and up-to-date statistics on labor issues across the world. With its comprehensive data collection and batch data processing, the end-to-end data pipeline exemplifies the power of technology to drive social and economic progress.

# Problem
While the ILOSTAT website provides a wealth of valuable labor-related data, doing ad-hoc analysis with the data provided can be problematic.

Firstly, data on the ILOSTAT website is presented in a pre-defined format, which may not always match the specific research questions or analytical approaches of the user. As a result, users may need to spend a considerable amount of time and effort reformatting and cleaning the data to suit their needs, which can be time-consuming and error-prone.

Secondly, the website provides limited data exploration and visualization capabilities. Users may not be able to customize charts, tables, or graphs based on their specific analysis requirements. This could limit the user's ability to identify patterns, relationships, or trends in the data, which are crucial for making informed decisions.

The end-to-end pipeline addresses the limitations of ad-hoc analysis by providing cleaned and structured data, enabling users to conduct efficient and effective data exploration, analysis and visualization.

# Infrastructure
*The following tools and technologies are used:

Cloud - Google Cloud Platform
Infrastructure as Code software - Terraform
Containerization - Docker, Docker Compose
Batch Processing - Python
Orchestration - Airflow
Transformation - dbt
Data Lake - Google Cloud Storage
Data Warehouse - BigQuery
Data Visualization - Data Studio
