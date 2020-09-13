# R_Analysis


## ***Project Overview***
  * Load, clean up, and reshape datasets using tidyverse in R.
  * Visualize datasets with basic plots such as line, bar, and scatter plots using ggplot2.
  * Generate and interpret more complex plots such as boxplots and heatmaps using ggplot2.
  * Plot and identify distribution characteristics of a given dataset.
  * Formulate null and alternative hypothesis tests for a given data problem.
  * Implement and evaluate simple linear regression and multiple linear regression models for a given dataset.
  * Implement and evaluate the one-sample t-Tests, two-sample t-Tests, and analysis of variance (ANOVA) models for a given dataset.
  * Implement and evaluate a chi-squared test for a given dataset.
  * Identify key characteristics of A/B and A/A testing.
  * Determine the most appropriate statistical test for a given hypothesis and dataset.

  
## ***Resources***
  * Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
  * Software: R 3.6.3, RStudio 1.3.1073
  
## ***Challenge Overview***
  * Design and interpret a multiple linear regression analysis to identify variables of interest.
  * Calculate summary statistics for quantitative variables.
  * Perform a t-test in R and provide interpretation of results.
  * Design your own statistical study to compare vehicle performance of two vehicles.
  
## ***Challenge Summary***

#### ***MechaCar MPG Regression***
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * The vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset. This is because they both have a positive correlation from the multiple linear regression model

* Is the slope of the linear model considered to be zero? Why or why not?
  * The slope of the linear model is not considered to be zero, given that the Multiple R-squared is 0.7149 and the p-value of 5.35e-11 is below the assumed significance level of 0.05%. Therefore, there is enough evidence to reject the null hypothesis

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * We got a p-value is 5.35e-11, which is below the significance level of 0.05% and the Multiple R-squared value is 0.7149.Therefore, 71% of the predictions will be effective using this linear model for the MechaCar prototypes.


#### ***Suspension Coil***
* Suspension Coil Summary
  * After generating the summary statistics for Suspension Coil, I got the following results for the Mean, Median, Variance and Standard Deviation:
   * Mean = 1500
   * Median = 1500
   * Variance = 76.23
   * Standard Deviation = 8.73

* I also generated the summary statistics for Suspension Coil based on Manufacturing Lots using the group_by function
        Mean     Median  Variance SD
#Lot1   1500.    1500.   1.15    1.07
#Lot2   1500.    1499.   10.1    3.18
#Lot3   1499.    1498.   220.    14.8 


* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?

  * Overall the suspension coil has a variance of 76.23 which meets the design specifications but after grouping them by manufacturing lot, I found out that Lot 3 does not meet the design specifications for the variance of the suspension coil must not exceed 100 pounds per inch.
  
* Visualization of the distribution using density plot
     ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%201.png)
  ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%20sample%201.png)
  ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%20sample2.png)

* T-test
  * The p-value is above the assumed significance level. Therefore, there is not enough evidence to reject the null hypothesis and we can confirm our two samples are not statistically different.
  ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%201.png)
  ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%20sample%201.png)
  ![](https://github.com/soijebor/R_Analysis/blob/master/Challenge/images/Rplot%20sample2.png)

Design Your Own Study:
