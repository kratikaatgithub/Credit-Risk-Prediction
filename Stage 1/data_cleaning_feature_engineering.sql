CREATE OR REPLACE TABLE `credit-risk-prediction-project.credit_data.german_credit_cleaned_sql` AS
SELECT
    Age,
    Sex,
    Job,
    Housing,
    SavingAccountsStatus,
    CheckingAccountStatus,
    LoanAmount,
    LoanDuration,
    Purpose,
    RiskStatus,

    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS AgeGroup,

    CASE
        WHEN LoanDuration <= 12 THEN 'Short (<=12 months)'
        WHEN LoanDuration > 12 AND LoanDuration <= 24 THEN 'Medium (13-24 months)'
        ELSE 'Long (>24 months)'
    END AS LoanDurationCategory,

    CASE
        WHEN RiskStatus = 'bad' THEN 1
        WHEN RiskStatus = 'good' THEN 0
        ELSE NULL
    END AS IsDefault
FROM
    `credit-risk-prediction-project.credit_data.german_credit_raw`;