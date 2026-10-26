# Survival Analysis of HIV Treatment and Diabetic Retinopathy

## 1. Project Overview and Backround

This project applies survival analysis techniques in R to investigate time to event outcomes using two datasets: HIV Treatment and Diabetic Retinopathy. The analyses explore how different treatments and patient characteristics are associated with clinical outcomes, while accounting for censored observations. This project consists of **two** studies:

### 1): HIV Treatment 
Compares relapse-free survival between two-drug and triple-drug HIV treatments. HIV attacks CD4 T cells, which are essential immune cells responsible for coordinating the body's immune response. In this study, CD4 relapse refers to the deterioration in CD4 cell count, indicating weakened immune function. The analysis investigates whether triple-drug treatment is associated with a longer time until CD4 relapse compared with two-drug treatment. 

### 2): Diabetic Retinopathy 
Investigates the time until blindness among patients with diabetic retinopathy, a complication of diabetes that damages blood vessels in the retina and can lead to vision loss. The analysis examines three explanatory variables: treatment type (laser or placebo), patient age, and risk group (riskgp). These factors are assessed to determine their association with the risk and timing of blindness. 

### Statistical Methods
- Kaplan-Meier estimation
- Cox proportional hazards regression
- Proportional Hazards diagnostics
- Model selection via Backward Elimation
- Weibull Accelerated Failure Time (AFT) modelling

The objective is to demonstrate the application of statstical modelling, data analysis and interpretation using R, with an emphasis on understanding survival outcomes and communicating meaningful insights. 

## 2. Datasets & Tools 
### HIV Treatment Dataset: (HIV_Treatment_Data.csv)
- **time**: time until CD4 relapse or censoring
- **status**: whether CD4 relapse occured (1 = event, 0 = censored)
- **treatment**: Two-drug or Triple-drug treatment
### Diabetic Retinopathy Dataset (DRS.csv)
- **time**: time until blindeness or censoring
- **status**: whether blindness occured (1 = event, 0 = censored)
- **treatment**: Laser or placebo treatment
- **age**: Patient age
- **riskgp**: Patient risk group
### Tools & Technologies
- **R**: Statistical Modelling and data analysis.
- **Survival Package**: Kaplan-Meier estimation, Cox regression, Schoenfield residual diagnostics and Weibull AFT Modelling.
- **CSV datasets**: Storing and importing clinical data.
- **Github**: Organising and presenting the project.

## 3. HIV Treatment Survival Analysis
### 3.1 Kaplan-Meier Survival Analysis

![Kaplan-Meier Survival Curves](figures/KM%20Survival%20Curves%20by%20Treatment%20Type.png)

### 3.2 Survival Probabilities and 95% Confidence Intervals

### 3.3 Cox Proportional Hazards Regression

### 3.4 Proportional Hazards Assumption Diagnostics




