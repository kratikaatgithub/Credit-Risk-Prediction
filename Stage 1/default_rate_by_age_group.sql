-- Filename: default_rate_by_age_group.sql
-- Description: Creates a view that aggregates data by 'AgeGroup' and calculates
--              the total loans and default rate for each age segment.
--              Useful for visualizing credit risk patterns across different age ranges.

CREATE OR REPLACE VIEW `credit-risk-prediction-project.credit_data.default_rate_by_age_group` AS
SELECT
    AgeGroup,
    COUNT(*) AS TotalLoansInGroup,
    SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) AS DefaultedLoansInGroup,
    (SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS DefaultRatePercent
FROM
    `credit-risk-prediction-project.credit_data.german_credit_cleaned_sql`
GROUP BY
    AgeGroup
ORDER BY
    AgeGroup;