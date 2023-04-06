# Worldwide Labour Force Project - End to end data pipeline
My final project of the Data Engineering Zoomcamp consisted in developing an End-to-end data pipeline that fetches, transforms and analyzes worldwide labour force data.

Through this pipeline, data is extracted from the [International Labour Organization website](https://ilostat.ilo.org/data/) and undergoes a series of carefully orchestrated processes, such as uploading to the cloud, cleaning, analysis, and visualization to provide users with accurate and up-to-date statistics on labor issues across the world. With its comprehensive data collection and batch data processing, the end-to-end data pipeline exemplifies the power of technology to drive social and economic progress.

## Problem
While the ILOSTAT website provides a wealth of valuable labor-related data, doing ad-hoc analysis with the data provided can be problematic.

Firstly, data on the ILOSTAT website is presented in a pre-defined format, which may not always match the specific research questions or analytical approaches of the user. As a result, users may need to spend a considerable amount of time and effort reformatting and cleaning the data to suit their needs, which can be time-consuming and error-prone.

Secondly, the website provides limited data exploration and visualization capabilities. Users may not be able to customize charts, tables, or graphs based on their specific analysis requirements. This could limit the user's ability to identify patterns, relationships, or trends in the data, which are crucial for making informed decisions.

## Solution
The end-to-end pipeline addresses the limitations of ad-hoc analysis by providing cleaned and structured data in the cloud, enabling users to conduct efficient and effective data exploration, analysis and visualization.

## Infrastructure
The following tools and technologies are used:

* Cloud - [Google Cloud Platform](https://cloud.google.com/)
* Infrastructure as Code software - [Terraform](https://www.terraform.io/)
* Containerization - [Docker](https://www.docker.com/), [Docker Compose](https://docs.docker.com/compose/)
* Batch Processing - [Python](https://www.python.org/)
* Orchestration - [Prefect](https://www.prefect.io/)
* Transformation - [Tableau Prep Builder](https://www.tableau.com/products/prep)
* Data Lake - [Google Cloud Storage](https://cloud.google.com/storage)
* Data Warehouse - [BigQuery](https://cloud.google.com/bigquery)
* Data Visualization - [Tableau](https://www.tableau.com/)

Quick descriptions of the two tools not used during the Zoomcamp
* [Tableau Prep Builder](https://www.tableau.com/products/prep): Tableau Prep Builder provides a modern approach to data preparation, making it easier and faster to combine, shape, and clean data for analysis within Tableau. By providing a visual and direct path to prep your data, you can get your hands on quality data in just a few clicks.
* [Tableau](https://www.tableau.com/): Tableau delivers everything you need to access, visualize, and analyze your data. With an intuitive drag and drop interface, you can uncover the hidden insights you need to make impactful business decisions faster.




*** add image of pipe line and tableau prep flow ***




## Dashboard




*** add dashboard image and link to Tableau public ***



## Development Steps
1. Started a Google Cloud Platform [free account](https://cloud.google.com/free/docs/free-cloud-features#free-trial)
2. Creation of GCP project with the name and followed the advanced steps in [here](GCP_setup/gcp_overview_setup.md)
