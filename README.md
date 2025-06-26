# Credit-Risk-Prediction
Predicting loan defaults using SQL, R, and Looker Studio.


# Stage 1: Data Foundation & SQL Overview

This stage focuses on establishing a robust data foundation in Google BigQuery and performing initial data cleaning and basic feature engineering using SQL. The objective is to prepare the raw German Credit Data for further analysis and provide a high-level overview of the loan portfolio's health.

## Key Activities:
- Data ingestion from Google Cloud Storage to BigQuery.
- SQL-based data type conversion and basic cleansing.
- Creation of new categorical features (e.g., `AgeGroup`, `LoanDurationCategory`).
- Calculation of key portfolio metrics (e.g., overall default rate, total loans).
- Creation of BigQuery views for streamlined dashboarding.

## SQL Files:
- `initial_data_ingestion.sql`: Defines the process for loading raw data into BigQuery and initial type casting.
- `data_cleaning_feature_engineering.sql`: Contains SQL queries for further cleaning and creating derived features.
- `overall_portfolio_metrics.sql`: SQL to create a BigQuery view for overall portfolio summary metrics.
- `default_rate_by_age_group.sql`: SQL to create a BigQuery view for default rates by age group.
- `default_rate_by_purpose.sql`: SQL to create a BigQuery view for default rates by loan purpose.

## Looker Studio Dashboard:
- 

This stage demonstrates foundational SQL skills for data preparation and initial business understanding.
