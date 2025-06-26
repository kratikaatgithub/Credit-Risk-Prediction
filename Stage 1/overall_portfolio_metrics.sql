-- Filename: overall_portfolio_metrics.sql
-- Description: Creates a view containing overall summary metrics for the loan portfolio,
--              such as total loans, number of defaulted loans, and overall default rate.
--              This view is ideal for high-level scorecards in Looker Studio.

CREATE OR REPLACE VIEW `credit-risk-prediction-project.credit_data.overall_portfolio_metrics` AS
SELECT
    COUNT(*) AS TotalLoans,
    SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) AS DefaultedLoans,
    SUM(CASE WHEN IsDefault = 0 THEN 1 ELSE 0 END) AS GoodLoans,
    (SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS OverallDefaultRatePercent,
    AVG(LoanAmount) AS AverageLoanAmount,
    AVG(LoanDuration) AS AverageLoanDurationMonths
FROM
    `credit-risk-prediction-project.credit_data.german_credit_cleaned_sql`;