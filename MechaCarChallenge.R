# Load the dplyr package
library(tidyverse)

# Importing the MechaCar_mpg.csv
mechaCar <- read.csv('MechaCar_mpg.csv')


# Run Multiple Regression Model
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar)
summary(model)

# Importing Suspension
suspension <- read.csv('Suspension_Coil.csv')

# Summarize the PSI Column
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Group by Lots and Summarize
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
