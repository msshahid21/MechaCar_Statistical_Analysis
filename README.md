# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![Multiple Linear Regression](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/MLR.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- The variables that provided a non-random amount variation were vehicle_length and ground_clearance, as they are shown to have a statistically significant impact on the mpg of the MechaCar.

Is the slope of the linear model considered to be zero? Why or why not?
- As there are two variables shown to have a statistically significant impact on the mpg of the MechaCar, vehicle_length and ground_clearance, the slope of the linear model can be considered to be non-zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- Yes, the linear model constructed is able to explain 71% of the variation in the mpg (R-Squared Value of 0.7149)

## Summary Statistics on Suspension Coils
### Lot Summary

![Total Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/TotalSummary.png)

The PSI of the Suspensions amongst all the lots have a variance below the 100 pounds per square inch benchmark at 62.29 pounds per square inch.

### Lot Summary

![Lot Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/LotSummary.png)

On the other hand, when drilling down, it can be seen that Lot 1 and Lot 2 both meet the benchmark of being below the 100 pounds per square inch PSI at 0.98 and 7.47 respectively, while Lot 3 fails by a substantial amount with 170 pounds per square inch of variance.

## T-Tests on Suspension Coils
### All Lots
![Lot Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/TTestAll.png)

### Lot 1
![Lot Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/TTestLot1.png)

### Lot 2
![Lot Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/TTestLot2.png)

### Lot 3
![Lot Summary](https://github.com/msshahid21/MechaCar_Statistical_Analysis/blob/main/Images/TTestLot3.png)

The t-test for the PSI of all the manufacturing lots, compared to the true mean of 1500 PSI has a p-value of 0.06, which is almost statistically significant. However, when drilling down and performing t-tests for the individual lots against the true mean the picture is slightly different. Only Lot 3 yielded a low p-value at 0.042 while Lot 1 and Lot 2 had a p-value of 1 and 0.61 respectively. Therefore, the t-test for all lots, lot 1, and lot 2 fail to reject the null hypothesis of the true mean being equal to 1500 PSI. While the t-test for Lot 3 yields a statistically significant result, giving enough evidence to reject the null and infer that the population mean is not equal to 1500 PSI.

## Study Design: MechaCar vs Competition
For the average consumer cost efficiency is probably the most important factor when choosing a car. However, cost efficiency could come as an initial cost, maintenance cost, and/or operating (fuel) cost.

- For this statistical study, the city and highway fuel efficiency would be the metric being tested between MechaCar and it's competitors.

- The null hypothesis is that the fuel efficiency of MechaCar is equal to the fuel efficiency of its competitors, while the alternative hypothesis is that fuel efficiency between the different manufacturers are not equal. More specifically:
  - Null Hypothesis: Mean MPG of MechaCar = Mean MPG of Competitor
  - Alternative Hypothesis: Mean MPG of MechaCar != Mean MPG of Competitor

- To perform this test, a two sample t-test can be used to determine if there is a statistically significant difference between the mean mpg of the two cars.

- Various measurements of the miles per gallon within the same constraints would have to be captured for both the cars. In order to limit the randomness in the test the measurements for both cars can be gathered at the same time on the same routes.