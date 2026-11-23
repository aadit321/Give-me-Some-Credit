CREATE VIEW vw_Risk_Band_Analysis
AS
SELECT
    Risk_Band,

    COUNT(*) AS Total_Borrowers,

    SUM(CAST(Actual_Delinquency AS INT))
        AS Delinquent_Borrowers,

    AVG(CAST(Credit_Score AS FLOAT))
        AS Average_Credit_Score,

    AVG(Default_Probability) * 100
        AS Average_Predicted_Risk,

    AVG(CAST(Actual_Delinquency AS FLOAT)) * 100
        AS Actual_Delinquency_Rate

FROM dbo.Credit_Risk

GROUP BY Risk_Band;
GO