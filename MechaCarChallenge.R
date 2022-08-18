# Load the dplyr package
library(tidyverse)

# Importing the MechaCar_mpg.csv
mechaCar <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Run Multiple Regression Model
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
summary(model)

# Importing Suspension_Coil.csv
suspension <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Summarize the PSI Column
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Group by Lots and Summarize
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# T.Test for All Manufacturing Lots
t.test(suspension$PSI, mu = 1500)

# T.Test for Lot 1
t.test(subset(suspension, Manufacturing_Lot == "Lot1", select = PSI), mu = 1500)

# T.Test for Lot 2
t.test(subset(suspension, Manufacturing_Lot == "Lot2", select = PSI), mu = 1500)

# T.Test for Lot 3
t.test(subset(suspension, Manufacturing_Lot == "Lot3", select = PSI), mu = 1500)
