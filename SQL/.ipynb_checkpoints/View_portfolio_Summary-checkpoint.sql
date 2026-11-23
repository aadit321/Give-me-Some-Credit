CREATE VIEW vw_Portfolio_Summary
AS
SELECT
    COUNT(*) AS Total_Borrowers,

    SUM(CAST(Actual_Delinquency AS INT))
        AS Delinquent_Borrowers,

    COUNT(*) -
    SUM(CAST(Actual_Delinquency AS INT))
        AS Non_Delinquent_Borrowers,

    AVG(CAST(Credit_Score AS FLOAT))
        AS Average_Credit_Score,

    AVG(Default_Probability) * 100
        AS Average_Predicted_Risk,

    AVG(CAST(Actual_Delinquency AS FLOAT)) * 100
        AS Actual_Delinquency_Rate

FROM dbo.Credit_Risk;
GO