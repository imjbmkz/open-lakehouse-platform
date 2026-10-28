## Components 
compute engine:
    - Distributed processing: Spark
    - Real-time streaming: [pending], options: flink
    - Query engine: [pending], options: trino, datafusion

open table format:
    - options: iceberg, delta lake 

orchestration:
    - options: airflow, prefect, 

catalog:
    - options: unity catalog

machine learning:
    - options: mlflow

```
git clone https://github.com/imjbmkz/open-lakehouse-platform.git
cd open-lakehouse-platform

cp .env.example .env       # fill in POSTGRES_*, S3_* placeholders
docker compose -f ./docker-compose-seaweedfs.yml up -d
docker compose -f ./docker-compose-postgres.yml up -d
```