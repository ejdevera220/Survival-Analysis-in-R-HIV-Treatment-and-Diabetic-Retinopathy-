# Survival Analysis of HIV Treatment and Diabetic Retinopathy

## 1. Project Overview and Backround

This project applies survival analysis techniques in R to investigate time to event outcomes using two datasets: HIV Treatment and Diabetic Retinopathy. The analyses explore how different treatments and patient characteristics are associated with clinical outcomes, while accounting for censored observations. 

The project consists of two studies: 

**HIV Treatment Analysis**
\
Compares relapse-free survival between two-drug and triple-drug HIV treatments. HIV attacks CD4 T cells, which are essential immune cells responsible for coordinating the body's immune response. In this study, CD4 relapse refers to the deterioration in CD4 cell count, indicating weakened immune function. The analysis investigates whether triple-drug treatment is associated with a longer time until CD4 relapse compared with two-drug treatment. 

**Diabetic Retinopathy Analysis**
\
Investigates the time until blindness among patients with diabetic retinopathy, a complication of diabetes that damages blood vessels in the retina and can lead to vision loss. The analysis examines three explanatory variables: treatment type (laser or placebo), patient age, and risk group (riskgp). These factors are assessed to determine their association with the risk and timing of blindness. 
\
\
This project uses the following statistcal methods: 
- Kaplan-Meier estimation
- Cox proportional hazards regression
- Proportional Hazards diagnostics
- Model selection via Backward Elimation
- Weibull Accelerated Failure Time (AFT) modelling

The objective is to demonstrate the application of statstical modelling, data analysis and interpretation using R, with an emphasis on understanding survival outcomes and communicating meaningful insights. 

