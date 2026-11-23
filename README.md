# Credit Risk Analytics & Predictive Credit Scorecard

## Project Overview

The **Credit Risk Analytics & Predictive Credit Scorecard** project uses machine learning, SQL Server, and Power BI to analyse borrower credit risk and identify customers who may experience serious financial delinquency within the next two years.

Using the **Give Me Some Credit** dataset from Kaggle, this project builds a Logistic Regression classification model, estimates borrower delinquency probabilities, converts predictions into credit scores, and presents portfolio risk insights through an interactive Power BI dashboard.

The objective is to demonstrate how data analytics and predictive modelling can support data-driven credit risk assessment.

## Project Objectives

- Analyse borrower financial and credit-related information.
- Perform data cleaning and exploratory data analysis (EDA).
- Identify important predictors using Information Value (IV).
- Apply Weight of Evidence (WoE) transformation.
- Build a Logistic Regression classification model.
- Handle class imbalance during model training.
- Estimate borrower delinquency probabilities.
- Develop a credit scorecard with risk categories.
- Store analytical results in SQL Server.
- Build an interactive Power BI dashboard.

## Dataset

**Dataset:** Give Me Some Credit

**Source:** [Kaggle – Give Me Some Credit](https://www.kaggle.com/c/GiveMeSomeCredit)

**Target Variable:** `SeriousDlqin2yrs`

This variable indicates whether a borrower experienced serious delinquency within the following two years.

The dataset contains borrower-level information, including:

- Revolving utilization of unsecured lines
- Age
- Number of times 30–59 days past due
- Debt ratio
- Monthly income
- Number of open credit lines and loans
- Number of times 90 days late
- Number of real estate loans
- Number of times 60–89 days past due
- Number of dependents

## Technology Stack

| Technology | Purpose |
|---|---|
| Python | Data processing and machine learning |
| Pandas & NumPy | Data cleaning and manipulation |
| Matplotlib & Seaborn | Exploratory data visualization |
| Scikit-learn | Model development and evaluation |
| SQL Server | Data storage and analytical queries |
| Power BI | Interactive dashboard development |
| Jupyter Notebook | Development and experimentation |
| Git & GitHub | Version control and project sharing |

## Project Workflow

### 1. Data Cleaning and Preprocessing

- Loaded and inspected the dataset.
- Analysed missing values and duplicate records.
- Handled missing values in `MonthlyIncome` and `NumberOfDependents`.
- Performed data validation and preprocessing.
- Prepared the dataset for model development.

### 2. Exploratory Data Analysis

- Analysed borrower demographics and financial characteristics.
- Examined the target variable distribution.
- Investigated relationships between credit-related variables and delinquency.
- Identified patterns and potential risk indicators.

### 3. Feature Selection and Transformation

- Calculated Information Value (IV) to evaluate feature predictive strength.
- Selected relevant features for modelling.
- Applied Weight of Evidence (WoE) transformation.
- Prepared model-ready features.

### 4. Machine Learning Model

Developed a Logistic Regression classification model to estimate the probability of serious borrower delinquency.

Key modelling techniques:
- Logistic Regression
- Class weighting to address class imbalance
- Sigmoid probability calibration
- Classification threshold analysis

### 5. Model Evaluation

The model was evaluated using:

- ROC-AUC
- Precision
- Recall
- F1-score
- PR-AUC
- Confusion Matrix

**Validation results:**

| Metric | Result |
|---|---:|
| ROC-AUC | 0.819 |
| PR-AUC | 0.281 |
| Precision | 26.12% |
| Recall | 51.57% |
| F1-Score | 34.68% |

*Precision, recall, and F1-score are based on the approximately 0.7143 threshold selected through F1 optimisation. Results are from the validation dataset.*

### 6. Credit Scorecard Development

Converted predicted delinquency probabilities into numerical credit scores.

Scorecard configuration:

- Base Score: 600
- Base Odds: 20:1
- Points to Double the Odds (PDO): 50
- Credit Score Range: 300–850

Borrowers were grouped into three relative risk categories:

- Low Risk
- Medium Risk
- High Risk

Validation dataset risk analysis:

| Risk Band | Borrowers | Actual Delinquency Rate |
|---|---:|---:|
| Low Risk | 10,000 | 1.00% |
| Medium Risk | 10,000 | 3.10% |
| High Risk | 10,000 | 15.95% |

These risk bands represent equal-sized groups based on predicted risk in the validation dataset, not established lending policy thresholds.

### 7. SQL Server Analysis

Stored the credit scorecard results in SQL Server and created analytical views for Power BI.

Views created:

- `vw_Portfolio_Summary`
- `vw_Risk_Band_Analysis`
- `vw_Credit_Score_Distribution`

These views support portfolio-level reporting, risk segmentation, and credit score distribution analysis.

### 8. Power BI Dashboard

Developed a three-page dashboard:

**Page 1 – Portfolio Overview**
- Total borrowers
- Delinquent borrowers
- Actual delinquency rate
- Average credit score
- Portfolio risk distribution

**Page 2 – Credit Risk Analysis**
- Borrower age analysis
- Income-based risk analysis
- Debt ratio analysis
- Credit utilization analysis
- Late payment analysis

**Page 3 – Credit Scorecard & Model Performance**
- Credit score distribution
- Risk band distribution
- Actual delinquency by risk band
- Model performance KPIs
- Predicted credit risk insights


## Key Findings

- Revolving credit utilization and previous late-payment behaviour were important risk indicators in feature analysis.
- The model achieved a ROC-AUC of approximately 0.819 on the validation dataset.
- The high-risk segment had a substantially higher observed delinquency rate than the low-risk segment.
- The credit scorecard converts model predictions into an interpretable numerical scoring system.
- SQL Server and Power BI make the analytical results easier to explore and communicate.

## Limitations

- The project uses historical borrower data and does not represent a real-time lending system.
- Model performance depends on the dataset and validation methodology.
- Risk categories are relative segments, not approved lending decisions.
- The model should not be used for actual loan approval without further validation, fairness assessment, monitoring, and business-policy review.

## Future Improvements

- Experiment with Random Forest, XGBoost, and other classification algorithms.
- Perform external validation on additional credit datasets.
- Improve probability calibration and threshold selection.
- Develop an interactive borrower-level credit risk assessment interface.
- Deploy the model using Streamlit or Flask.
- Introduce model monitoring and explainability using SHAP.

## Author

**Aditya Chourasia**

B.Tech – Information Technology | Data Science

Interested in Data Analytics, Machine Learning, Business Intelligence, and Data Engineering.

---

**Disclaimer:** This project is developed for educational and portfolio purposes using a publicly available Kaggle dataset. It is not intended for real-world lending or financial decision-making.
