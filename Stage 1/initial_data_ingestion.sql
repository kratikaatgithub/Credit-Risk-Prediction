CREATE OR REPLACE TABLE `credit-risk-prediction-project.credit_data.german_credit_raw` AS
SELECT
    CAST(Age as INT66) AS Age,
    CAST(Sex as STRING) AS Sex,
    CAST(Job as INT66) AS Job,
    CAST(Housing as STRING) AS Housing,
    CAST(Saving_accounts as STRING) AS SavingAccountsStatus,
    CAST(Checking_account as STRING) AS CheckingAccountStatus,
    CAST(Credit_amount as INT66) AS LoanAmount,
    CAST(Duration as INT66) AS LoanDuration,
    CAST(Purpose as STRING) AS Purpose,
    CAST(Risk as STRING) AS RiskStatus
FROM
    `credit-risk-prediction-project.credit_data.raw_german_credit_external`;