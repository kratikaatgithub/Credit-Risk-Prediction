# Credit-Risk-Prediction
Predicting loan defaults using SQL, R, and Looker Studio.

## Stage 1: Data Foundation & SQL Overview
This stage focuses on establishing a robust data foundation in Google BigQuery and performing initial data cleaning and basic feature engineering using SQL. The objective is to prepare the raw German Credit Data for further analysis and provide a high-level overview of the loan portfolio's health.

### Key Activities:
- Data ingestion from Google Cloud Storage to BigQuery.
- SQL-based data type conversion and basic cleansing.
- Creation of new categorical features (e.g., `AgeGroup`, `LoanDurationCategory`).
- Calculation of key portfolio metrics (e.g., overall default rate, total loans).
- Creation of BigQuery views for streamlined dashboarding.

### SQL Files:
- `initial_data_ingestion.sql`: Defines the process for loading raw data into BigQuery and initial type casting.
- `data_cleaning_feature_engineering.sql`: Contains SQL queries for further cleaning and creating derived features.
- `overall_portfolio_metrics.sql`: SQL to create a BigQuery view for overall portfolio summary metrics.
- `default_rate_by_age_group.sql`: SQL to create a BigQuery view for default rates by age group.
- `default_rate_by_purpose.sql`: SQL to create a BigQuery view for default rates by loan purpose.



## Stage 2: Statistical Analysis & Predictive Modeling in R
This stage focuses on using R to perform in-depth Exploratory Data Analysis (EDA) and build a foundational predictive model. The goal is to identify the statistically significant factors driving loan defaults and to create a Logistic Regression model for prediction.

### Key Activities:
- Connecting the R environment to BigQuery to pull the SQL-processed data.
- Conducting comprehensive EDA in R, including advanced visualizations with ggplot2 to explore relationships between features and default status.
- Performing statistical hypothesis testing in R to rigorously assess which factors are statistically significant drivers of default.
- Evaluating initial model performance using metrics like Accuracy, Precision, Recall, and F1-score from the confusion matrix.

### Colab Notebook: [Link to Python Notebook](https://github.com/kratikaatgithub/Credit-Risk-Prediction/blob/main/Stage%202/Credit_Risk_Assessment_Stage_2.ipynb)



## Stage 3: Advanced Modeling, Model Comparison & Actionable Risk Strategies
This final stage involves implementing more sophisticated R-based classification models, rigorously comparing their performance, and translating model outputs into actionable business strategies.

### Key Activities:
- Comparing models using performance matrics.
- Using the best-performing model to predict default probabilities and segment customers into clear risk tiers (Low, Medium, High Risk).

### Looker Studio Dashboard:
[Dashboard Link](https://lookerstudio.google.com/reporting/8b4c4b86-8f86-42c2-8e83-6fde101c56da/page/p_lp92wsodud)

### Key Findings & Business Insights:
- The loan portfolio has a significant default rate of 30%, with 300 out of 1,000 total loans defaulted.
- The most critical factor influencing credit risk is the checking account status.
- Loans for "vacation/others" have the highest default rate, indicating they are a high-risk loan purpose.
- The Logistic Regression and Gradient Boosting Machine (GBM) models achieved the highest Area Under the Curve (AUC) score of 0.75, making them the best-performing models for prediction.


## Author:
[Kratika Garg]
[LinkedIn Profile Link](https://www.linkedin.com/in/kratikagarg01/)
[Medium / Blog Link]()
