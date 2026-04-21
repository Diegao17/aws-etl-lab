# AWS ETL Laboratory - Glue + Athena

## 📌 Overview
This project demonstrates a complete ETL (Extract, Transform, Load) workflow using AWS services. The lab includes data extraction using AWS Glue, querying using Amazon Athena, and infrastructure automation using AWS CloudFormation.

## ⚙️ Technologies Used
- AWS Glue
- Amazon S3
- Amazon Athena
- AWS CloudFormation
- AWS CLI

## 📊 Dataset
Public dataset used:
s3://noaa-ghcn-pds/csv/by_year/

## 🔄 ETL Process

### 1. Extract
- AWS Glue crawler scans data from S3
- Automatically detects schema
- Stores metadata in AWS Glue Data Catalog

### 2. Transform
- Schema modified for better readability
- Data filtered between 1950–2015
- Converted to Parquet format

### 3. Load & Analyze
- Data queried using Amazon Athena
- View created for TMAX values
- Aggregation query performed

## 📜 CloudFormation
The infrastructure was automated using a YAML template to:
- Create a Glue database
- Deploy a crawler
- Configure data source

## 📈 Results
- Initial query: ~98 GB scanned
- Optimized query: ~2.45 GB scanned
- Execution time reduced significantly (~1 min → ~25 sec)

## 🚀 How to Run

1. Configure AWS CLI:
