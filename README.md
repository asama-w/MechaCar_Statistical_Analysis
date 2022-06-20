# R: The Statistical Analysis of MechaCar
## Analysis Overview
### Purpose

To help Jeremy perform the statistical analysis of the production data of MechaCar, the AutosRUs’ newest prototype, by using R programming language in order to determine its manufacturing insights.

### Resources
+ **Programming Language:** `R`
+ **Library:** `dplyr`
+ **Data Sources:** 
	+ [MechaCar_mpg.csv](https://github.com/asama-w/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv): contains the mpg test results for 50 prototype MechaCars.
	+ [Suspension_Coil.csv](https://github.com/asama-w/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv): contains the weight capacities of the suspension coils from multiple production lots.
	

## Results 
## Deliverable 1: Linear Regression to Predict MPG

Performing the multiple linear regression analysis on the `MechaCar_mpg.csv` dataset to determine which of the following design variables can predict the mpg of MechaCars:
	+ vehicle length
	+ vehicle weight
	+ spoiler angle
	+ drivetrain
	+ ground clearance

**Hypotheses:**
+ H<sub>0</sub>: The slope of the linear model is zero, or m = 0
+ H<sub>a</sub>: The slope of the linear model is not zero, or m ≠ 0

The following images show the statistical summary of mpg and other specifications.
<img src= to-be-put-link width="50%" height="50%">
<img src= to-be-put-link width="50%" height="50%">

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
+ The vehicle length and the ground clearance of MechaCar, which has a `Pr(>|t|)` value of 2.60e-12 and 5.215-08, respectively, provides a non-random amount of variance to the mpg value, meaning that they have a significant influence on the miles per gallon values or the car's fuel efficiency.

- Is the slope of the linear model considered to be zero? Why or why not?
+ The p-value of this multiple linear regression model is 5.35e-11, which is much smaller than 0.05, this implies that there is enough evidence to reject the null hypothesis, in other words, the slope of this linear model is not zero, or that there is a significant linear relationship between mpg and other MechaCar's specifications.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
+ From the r-squared value, which is 0.7149, meaning that approximately 71% of the variablilty of mpg is explained using this linear model. Hence, it can be said that this linear model can predict the MechaCar's mpg effectively.


# Deliverable 2: Summary Statistics on Suspension Coils

## Summary Statistics on Suspension Coils's PSI
Determine the summary statistics (mean, median, variance, and standard deviation) of suspension coil’s PSI to see the consistency of the manufacturing process across 3 manufacturing lots.

The following images show the PSI's summary statistics of all manufacturing lot and each manufacturing lot.

### PSI across all manufacturing lots
<img src= to-be-put-link width="50%" height="50%">


### PSI for each manufacturing lots (Lot 1, 2, and 3)

#### Lot 1
<img src= to-be-put-link width="50%" height="50%">

#### Lot 2
<img src= to-be-put-link width="50%" height="50%">

#### Lot 3
<img src= to-be-put-link width="50%" height="50%">


- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

+ When looking at the statistics of the overall manufacturing lots, the PSI variance for the total manufacturing lots is 62.29 psi, less than 100 psi limit, indicating that the total manufacturing lots meets the design specification.

+ When breaking down to each of the manufacturing lot, lot 1 and lot 2 still meets the design specification as their variances are 0.98 and 7.47, respectively, which are lower than 100 psi. However, the variance of the manufacturing lot 3 is as high as 170.29 psi, considerably higher than 100 psi, meaning that lot 3 are out of spec. 


# Deliverable 3: T-Tests on Suspension Coils

## T-Tests on Suspension Coils

Performing T-Tests to determine whether there is a statistical difference between the population mean of 1,500 pounds per square inch and the PSI across all lots and of each lot.

Hypotheses:
+ H<sub>0</sub>: There is no statistical difference between the observed manufacturing lot PSI and its presumed population mean.
+ H<sub>a</sub>:  There is a statistical difference between the observed manufacturing lot PSI and its presumed population mean.

The following images show the t-test statistical values of all lots and between individual lot.

### T-test for PSI across all manufacturing lots
<img src= to-be-put-link width="50%" height="50%">

### T-test for PSI across each manufacturing lots (Lot 1, 2, and 3)

#### Lot 1
<img src= to-be-put-link width="50%" height="50%">

#### Lot 2
<img src= to-be-put-link width="50%" height="50%">

#### Lot 3
<img src= to-be-put-link width="50%" height="50%">


|Data lot|p-value|Note|
|-----|:-----:||
|All manufacturing lots|0.06028|not statistically significant|
|Manufacturing lot 1|1|not statistically significant|
|Manufacturing lot 2|0.6072|not statistically significant|
|**Manufacturing lot 3**|**0.04168**|**statistically significant**|

Assuming our significance level is 0.05 percent (p=0.05).
The p-value of total manufacturing lots, the manufacturing lot 1 and the manufacturing lot 2 are 0.06, 1, and 0.61, respectively, which are larger than 0.05, meaning that there is not enough evidence to reject the null hypothesis, in shorts, the means of total lots, lot 1, lot 2 and the population mean are statistically similar.

For the manufacturing lot 3 which has a p-value of 0.04, lower than the significance p-value level of 0.05, indicating that the null hypothesis is rejected or that the PSI of lot 3 are statistically different from the population mean.

The t-tests analysis correlates with the statistical summary (mean, median, variance, sd) in deliverable 2, indicating that there is a dispersion of the PSI spec values of MechaCar in the production lot 3, which implies that the manufacturing process is not as consistent in lot 3 as in the first two lots.


# Deliverable 4

## Study Design: MechaCar vs Competition

To see the performance of MechaCar in comparison to the competitors's models with the consumer's interest in mind, the company could perform a statistical analysis by the following designs.

### Metrics:
The top considerations that come in mind when buying a car are cost, safety and its speed (power). By comparing the statistics of the following metrics of MechaCar and other manufacturer's vehicles, AutosRUs can determine the stand of the MechaCar model in the industry:
+ vehicle's price
+ maintenance cost
+ horse power
+ safety rating


### Hypotheses:
1. One statistical analysis could be performed to determine the relationship between the car performance (horse power, safety rating) vs price, of MechaCar and other vehicles in the market, in order to see whether MechaCar is reasonably-priced, under-priced, or over-priced when compare with other brands.
The hypotheses of this analysis would be as follows: 
+ Null Hypothesis, H<sub>0</sub>: There is no linear relationship of vehicle's price and its performances, the price is not based on the performance factors of vehicle.
+ Alternative Hypothesis, H<sub>a</sub>: There is a linear relationship of vehicle's price and its performances, the price is based on the performance factors of vehicle.

2. Another statistical analysis could be the summary statistics (mean, median, variance, sd) of the safety ratings and the maintenance cost of MechaCar and its competitors over the past few years.
+ Null Hypothesis, H<sub>0</sub>: There is no statistical difference between the performance mean of MechaCar and the similar model of other brands.
+ Alternative Hypothesis, H<sub>a</sub>: There is a statistical difference between the performance mean of MechaCar and the similar model of other brands.


### Statistical Test:
**The multiple linear regression** analysis will be used to test the price vs performance hypotheses, since it can shows the relationships between multiple independent variables (horse power, safety rating) and the dependent variable (price).

**Summary Statistic and T-tests** analysis will be used to compare the mean of MechaCar's and other competitor's vehicles maintenance cost and performances.

### Required data
+ Performance data of MechaCar's and its competitors' vehicles.
+ Selling and maintenance price data of MechaCar's and its competitors' vehicles.
