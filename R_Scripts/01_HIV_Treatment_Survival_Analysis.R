# ============================================================
# HIV TREATMENT SURVIVAL ANALYSIS
# ============================================================
# Objective:
# Compare relapse-free survival between two-drug and triple-drug HIV treatments using survival analysis.
#
# Methods:
# - Kaplan-Meier survival estimation
# - Survival probabilities and confidence intervals
# - Cox proportional hazards regression
# - Proportional hazards diagnostics
# ============================================================

# ============================================================
# 1. DATA IMPORT & PREPARATION
# ============================================================

# Load package for survival analysis:
library(survival)

# Import HIV treatment dataset
hiv <- read.csv("data/HIV_Treatment_Data.csv")

# Inspect dataset structure
str(hiv)
head(hiv)

# Define the order of treatment groups 
hiv$treatment <- factor(hiv$treatment, levels = c("Two-drug", "Triple-drug"))

# Create survival object using relapse times and event status
hiv_surv <- Surv(time = hiv$time, event = hiv$status)

# ============================================================
# 2. KAPLAN-MEIER SURVIVAL ANALYSIS
# ============================================================

# Estimate relapse-free survival separately for each treatment group
km_fit <- survfit(hiv_surv ~ treatment, data = hiv)

# Plot Kaplan-Meier survival curves
plot(km_fit,
     lty = 2:1,
     xlab = "Time",
     ylab = "Survival Probability",
     main = "Kaplan-Meier Survival Curves by Treatment Type")

# Add treatment key to top right of the graph
legend("topright", legend =  levels(hiv$treatment), lty = 2:1, bty = "n")

# ============================================================
# 3. SURVIVAL PROBABILITIES AND CONFIDENCE INTERVALS
# ============================================================

# Estimate relapse-free survival probabilities at day 120
km_120 <- summary(km_fit, times = 120)

# Output survival estimates and confidence intervals
km_120

# Output lower and upper 95% confidence limits
km_120$lower
km_120$upper

# ============================================================
# 4. COX PROPORTIONAL HAZARDS REGRESSION
# ============================================================

# Fit Cox model to assess the association between treatment type and hazard of CD4 relapse
cox_fit <- coxph(hiv_surv ~ treatment, data = hiv)

# Output the regression coefficients, hazard ratio, confidence intervals, and statistical significance. 
summary(cox_fit)

# Create dataset containing both treatment groups.
cox_groups <- data.frame( treatment = factor(c("Two-drug", "Triple-drug"), levels = levels(hiv$treatment)))

# Estimate Cox model survival curves for both treatment groups
cox_surv <- survfit(cox_fit, newdata = cox_groups)

# Plot Cox model survival curves for both treatment groups
plot(cox_surv,
     col = "blue",
     lty = 2:1,
     lwd = 1.5,
     conf.int = FALSE,
     xlab = "Time (days)",
     ylab = "Relapse-Free Survival Probability",
     main = "Cox Model Survival Curves by Treatment Type")

# Add treatment key to the top right of the graph
legend("topright",
       legend = levels(hiv$treatment),
       col = "blue",
       lty = 2:1,
       lwd = 1.5,
       bty = "n")



