-- Filename: default_rate_by_purpose.sql
-- Description: Creates a view that aggregates data by 'Purpose' and calculates
--              the total loans and default rate for each loan purpose.
--              Helps in identifying higher-risk loan categories.

CREATE OR REPLACE VIEW `credit-risk-prediction-project.credit_data.default_rate_by_purpose` AS
SELECT
    Purpose,
    COUNT(*) AS TotalLoansInGroup,
    SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) AS DefaultedLoansInGroup,
    (SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS DefaultRatePercent
FROM
    `credit-risk-prediction-project.credit_data.german_credit_cleaned_sql`
GROUP BY
    Purpose
ORDER BY
    DefaultRatePercent DESC;