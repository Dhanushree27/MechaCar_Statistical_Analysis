# Analysis of MechaCar Prototypes

## Overview
This project was undertaken to perform statistical analysis on production data, to arrive at insights that can help the manufacturing team overcome the production troubles blocking their progress. The analysis was carried out in R using two csv files containing the production data. The files are:
- MechaCar_mpg: Contains mpg test results for 50 prototype MechaCars
- Suspension_coil: Contains weight capacities for multiple suspension coils collected across different production lots

## Results
The results from the analysis are as follows:

### Linear Regression to Predict MPG
Multiple linear regression was used to test a linear model that can be used to predict the mpg. The regression was carried out using metrics that vary between the different prototypes. The metrics studied were vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. 

![Linear Regression Summary](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Linear%20Regression.PNG)

Looking at the overall fit, we can see that p-value is less than 0.001 which suggests that there exists a significant relationship. This is supported by a co-efficient of determination is 0.7149.

From the results, it was observed that 'vehicle length' and 'ground clearance', as well as intercept are statistically significant. These metrics have p-values less than 0.001 suggesting that the variance is non-random. The slope is also not equal to zero for these metrics. On the other hand, the slope for 'vehicle weight' and 'spoiler angle' is close to zero and p-values are greater than 0.05 suggesting that the variance is due to randomness. Though there is a negative slope for AMD, it is not supported by p-value. A p-value of 0.18 is greater than 0.05, suggesting that randomness does play a role.

Though there exists a significant relationship, the model is **not ideal**. The high intercept value suggests that the relationship between 'mpg' and 'vehicle length', 'ground clearance' needs to be scaled or transformed to improve the predictive power of the model. Also, it suggests that there could be other metrics that influence 'mpg'.

### Summary Statistics on Suspension Coils
Summary statistics mean, median, variance and SD were calculated for the suspension coil data. An overall summary as well as a summary for each lot was calculated

**Total Summary**

![Total Summary](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Total%20Summary.PNG)

The mean and median values are similar suggesting that the data is normally distributed. The overall variance is 62.29 PSI which is less than the limit of 100 PSI, so it meets the design requirement but the variance is considerably high suggesting that there is not sufficient consistency in production. Also, since the values are normally distributed, we can infer that 68% of the values lie between 1506.67 and 1490.89 and 95% of the values lie between 1514.56 and 1482.99.

**Lot Summary**

![Lot Summary](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Lot%20Summary.PNG)

The mean and median values are similar for each lot suggesting that the data is normally distributed. In terms of variance, Lots 1 and 2 meet the limit of 100PSI, whereas Lot3 fails to meet the specification limit. Also, the variance is significantly lower for the other two lots, with Lot1 having the lowest variance suggesting good consistency within the lots. On the other hand, the variance for Lot3 is quite high at 170.28PSI indicating a lack of consistency. This requires investigation into Lot3's production. Also, more datapoints are required to determine if this is an outlier or an underlying issue.

### T-Tests on Suspension Coils
One-sample t-test was carried out between the overall PSI, PSI for each lot and a population mean of 1500. This can be used to determine if the sample is a good representation of the population.

**Overall t-test Statistic**

![Overall ttest](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Overall%20ttest.PNG)

From the results, for a significance level of 0.05, we can see that the p-value is higher than that which implies that we have failed to reject the null hypothesis. So there is **no statistical difference** between the observed sample mean and the presumed population mean.

**Lot1 t-test Statistic**

![Lot1 ttest](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Lot1%20ttest.PNG)

The p-value if 1 is well above the significance level of 0.05. Therefore, there is **no statistical difference** between the observed sample mean and the presumed population mean. The sample is a good representation of the population.

**Lot2 t-test Statistic**

![Lot2 ttest](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Lot2%20ttest.PNG)

The p-value if 0.6 is well above the significance level of 0.05. Therefore, there is **no statistical difference** between the observed sample mean and the presumed population mean. This sample is also a good representation of the population.

**Lot3 t-test Statistic**

![Lot3 ttest](https://github.com/Dhanushree27/MechaCar_Statistical_Analysis/blob/main/images/Lot3%20ttest.PNG)

The p-value if 0.04 is below the significance level of 0.05. Therefore, there is **a statistical difference** between the observed sample mean and the presumed population mean. Since there is a difference, this sample cannot be considered a good representation of the population.

## Study Design: MechaCar vs Competition.
To compare performance of MechaCar vehicles against that of competitors, we can study multiple metrics to see how they fare against competition. In this study design, we are testing one metric

**Metric to study:** City Fuel Efficiency

**Null Hypothesis:** On a sedan class vehicle with 4 cylinders and 1.5 litres engine running on gas that have travelled 5000 to 5500 miles and were manufactured in the year 2015, there is no significant difference in fuel efficiency.
**Alternate Hypothesis:** On a sedan class vehicle with 4 cylinders and 1.5 litres engine running on gas that have travelled 5000 to 5500 miles and were manufactured in the year 2015, there is a significant difference in fuel efficiency.

**Statistical Test:** Since the test involves comparing one continuous dependent variable (fuel efficiency) against multiple independent variables which are categorical (Vehicle Model), we can use ANOVA to test the hypothesis. The significance level will be 0.05.

**Data to be collected:** 
- Identify vehicle(s) of interest [Sedan class, 4 cylinders and 1.5 litres engine, runs on gas, manufactured in 2015]
- Identify vehicle(s) from manufacturer that meet the same requirement
- Gather city fuel efficiency data for atleast 20 cars that have travelled 5000 to 5500 miles, per model


