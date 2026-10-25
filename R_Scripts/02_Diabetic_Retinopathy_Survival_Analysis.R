# ============================================================
# DIABETIC RETINOPATHY SURVIVAL ANALYSIS
# ============================================================
# Objective:
# Investigate factors associated with time to blindness among patients with diabetic retinpathy.
#
# Methods:
# - Cox proportional hazards regression
# - Best Model selection via backward elimination
# - Comparison of tied-event methods
# - Weibull accelerated failure time modelling
# ============================================================

# ============================================================
# 1. DATA IMPORT & PREPARATION
# ============================================================

# Load package for survival analysis:
library(survival)

# Import Diabetic dataset
drs <- read.csv("data/DRS.csv")

# Inspect dataset structure 
str(drs)
head(drs)

# Fit Cox Model to the data
Model_1 <- coxph(Surv(time,status) ~ treatment + age + riskgp, data = drs)

# Display initial model results 
summary(Model_1)

# ============================================================
# 2. BACKWARD ELIMINATION
# ============================================================

# Fit reduced Cox Model eliminating age
Model_2 <- coxph(Surv(time, status) ~ treatment + riskgp, data = drs)

# Display model results without age
summary(Model_2)

# Fit reduced Cox Model eliminating age and riskgp
Model_3 <- coxph(Surv(time, status) ~ treatment, data = drs)

# Display final model results
summary(Model_3)

# ============================================================
# 3. COMPARISON OF TIED-EVENT METHODS
# ============================================================

# Fit Cox proportional hazards model using the exact method
Model_exact <- coxph(Surv(time, status) ~ treatment,
                     data = drs,
                     ties = "exact")

# Display exact method results 
summary(Model_exact)

# Fit Cox proportional hazards model using the Efron method
Model_efron <- coxph(Surv(time, status) ~ treatment,
                     data = drs,
                     ties = "efron")

# Display Efron method results
summary(Model_efron)

# ============================================================
# 4. WEIBULL ACCELERATED FAILURE TIME MODEL 
# ============================================================

# Fit Weibull AFT Model to investigate the association between treatment time to blindness
drs_weibull <- survreg(Surv(time,status)~ treatment, data = drs, dist = "weibull")

# Display regression coefficients and model results
summary(drs_weibull)




