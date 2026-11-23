CREATE VIEW vw_Credit_Score_Distribution
AS
SELECT
    CASE
        WHEN Credit_Score >= 700 THEN 'Excellent'
        WHEN Credit_Score >= 650 THEN 'Good'
        WHEN Credit_Score >= 600 THEN 'Average'
        WHEN Credit_Score >= 500 THEN 'Poor'
        ELSE 'Very Poor'
    END AS Score_Category,

    COUNT(*) AS Total_Borrowers,

    AVG(Default_Probability) * 100
        AS Average_Predicted_Risk,

    AVG(CAST(Actual_Delinquency AS FLOAT)) * 100
        AS Actual_Delinquency_Rate

FROM dbo.Credit_Risk

GROUP BY
    CASE
        WHEN Credit_Score >= 700 THEN 'Excellent'
        WHEN Credit_Score >= 650 THEN 'Good'
        WHEN Credit_Score >= 600 THEN 'Average'
        WHEN Credit_Score >= 500 THEN 'Poor'
        ELSE 'Very Poor'
    END;
GO