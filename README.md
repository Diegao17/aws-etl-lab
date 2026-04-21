# AWS ETL Laboratory - Glue + Athena

## 📌 Overview
This project demonstrates a complete ETL workflow using AWS services, including AWS Glue, Amazon Athena, and CloudFormation.

## ⚙️ Technologies Used
- AWS Glue
- Amazon S3
- Amazon Athena
- AWS CloudFormation
- AWS CLI

## 📊 Dataset
s3://noaa-ghcn-pds/csv/by_year/

## 🔄 ETL Process
### Extract
AWS Glue crawler scans data from S3 and detects schema automatically.

### Transform
- Schema modified for better readability  
- Data filtered between 1950–2015  
- Converted to Parquet format  

### Load & Analyze
- Data queried using Athena  
- View created for TMAX values  
- Aggregation query executed  

## 📈 Results
- Initial scan: ~98 GB  
- Optimized scan: ~2.45 GB  
- Execution time reduced (~1 min → ~25 sec)  

## 🚀 How to Run
1. Configure AWS CLI  
2. Deploy CloudFormation  
3. Run crawler  
4. Execute queries in Athena  

## 📁 Project Structure
aws-etl-lab/
├── README.md
├── gluecrawler.cf.yml
├── queries.sql
├── screenshots/
└── report/

## 📌 Author
Diego J. Garcia Espinoza
