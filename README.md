# ANOVA-project-on-SAS
Using ANOVA model in SAS, determine the mean of housing prices based on different characteristics.



**Descriptive Statistics**
 
Looking at the basic descriptive statistics of the sales price variable using “PROC UNIVARIATE”, we see that there are 300 observations in the file. The mean of the sale price of homes, are 137,524.87 dollars with a standard deviation of 37,622.64 dollars.
 
 
The histogram and the Q-Q plot of the sale price signals the normality of the datasets. Low value of kurtosis and skewness also shows normality of the datasets.

1.	Build an ANOVA model to investigate whether the average sale prices are significantly different for homes with different number of fireplaces. 
a.	Is it appropriate to use a two-sample t-test here?
To start with a conclusion, two-sample t-test would not be appropriate in this case where we are measuring the average sales price against the different number of fireplaces.
One-sample t-test is where the hypothesis examines a specified value. For instance, we can analyze whether the average SAT scores for a certain region will be 1200. Two-sample t-test is designed to understand whether two groups have the same average. For instance, if we are looking to understand the SAT score differs between male and female students, we would be able to use two-sample t- test. In this case of fireplaces and sales price, we would need to use ANOVA because there are three groups that we are comparing (more than two).
 
Looking at the chart below, we see that there are three groups: no fireplace, 1 fireplace and 2 fireplaces. Since there are more than two groups, two-sample t-test is not feasible and we would have to use ANOVA to assess our hypothesis.


**Justifying ANOVA model**

  
To justify the ANOVA testing, it is important to assess the mean and the standard deviation of sale price and fireplaces. Looking at the mean of sale price categorized by the number of fireplaces, we can see that sale prices are higher with higher number of fireplaces. However, simply concluding that the mean of sale prices are higher with higher number of fireplaces is not conclusive. The number of observations for 2 fireplaces, are limited with only 12 observations and we do not know that the difference of sale price per number of fireplaces are within the acceptable range based on standard deviations. Additionally, the mean of sale prices between homes with 1 fireplace and 2 fireplaces seems very close which again, makes it difficult to assess whether the difference of average sale price is caused by the different number of fireplaces. 
This type of situation is where ANOVA test can be extremely helpful. ANOVA test takes into account the sample size, standard deviation of each category as well as confidence interval to check the hypothesis that the average of the sale prices between the number of fireplaces are the same (within the acceptable range) or different.


**Satisfying Assumptions for ANOVA model**

Prior to conducting the ANOVA test, there are three assumptions that we need to assess which are independence, normality, and variability assumptions. For the purpose of this assignment, I am assuming that these two variables are independent. Regarding normality of our data, the histogram and the Q-Q plot echoes our assumption of normality. 
  
The histogram is plotted with the residual which is the difference between the actual y value and the predicted y value. The shape of the bar graph closely follows the shape of the normal graph. Looking at the Q-Q plot, which is the residual plotted against the quantiles, the points are very close to the 45 degrees angle line, again, signaling the normality of the dataset. 
Regarding the variability hypothesis that all of the variables are equal to each other, the homogeneity of sales price for fireplaces variance shows normality. The p-value of 0.3374 is a lot higher than the cut off and therefore, we would fail to reject the null hypothesis that the variabilities are the same between the variables.
 

**Testing the hypothesis that the average sale price of homes with different number of fireplaces are equal.**
ANOVA test relevant results:
 

Conclusion:

The F-value is 20.92 and the p-value is less than 0.0001. Since p-value is less than alpha of 0.005, I reject the null hypothesis.
I have sufficient evidence to suggest that the true mean of Sale Price for homes are different among the number of fireplaces in homes.

Looking at the Sum of Squares column, we see that most of the variabilities are within the error variability group which initially signals that it might not be significant. R-Square column, which is calculated with Sum of Squares, is also very low at 0.123502. R-Square value can be interpreted as the Fireplace variable explaining only 12.3502 percent of the variability in our data. However, looking at the actual significance, depicted by the p-value, we can confirm that the mean of sale price is different based on the number of fireplaces. The p-value is calculated based on the ratio of Mean Square column which takes Degrees of Freedom into account.


**Post-hoc Analysis**

Turkey Adjustment
 

Turkey adjustments compares all of the categories against other categories to see if their mean is significantly different based on the p-value. 
0 fireplace against 1 fireplace:
Comparing homes without a fireplace against homes with 1 fireplace, we can see that the difference is most significant compared to other comparisons. The p-value of less than 0.0001 again, shows that there is a significant difference above the acceptable range set by alpha of 0.05, considering other factors such as sample size.
0 fireplace against 2 fireplaces:
Comparing homes without a fireplace against homes with 2 fireplaces, we can see that the difference is significant based on the p-value of 0.0123 which is less than the alpha of 0.05. Although the mean of homes with two fireplaces are higher than homes with 1 fireplace, the p-value is lower due to the limited sample size.
1 fireplace against 2 fireplaces:
Difference between the sale price average of homes with 1 fireplace and 2 fireplaces is not significant with a high p-value of 0.9635. This p-value proves that the difference between these two variables is significant which is understandable based on small difference of their sale price average. 

The graph above also confirms the results. Looking at the graph, only non-significant line (red line) is associated with the comparison between homes with 1 fireplace and 2 fireplaces. Other comparisons (blue line) shows that it is significant.


Dunnett Comparison
 

While holding homes with 0 fireplace as a control variable, we can see that both homes with 1 or 2 fireplaces are significantly higher above Upper Dunnet Level “UDL”. Based on how much the line goes beyond the UDL, we can determine that homes with 1 fireplace is more significantly different than homes with 2 fireplaces. Although the mean of homes with 2 fireplaces are higher, considering other factors including the sample size, the Dunnet adjustment determines that the homes with 1 fireplace is more significant as depicted by the p-value as well in the chart above.

 
Comparing the unadjusted analysis with the adjusted Turkey analysis, we can observed that the p-value has been decreased. With the error terms unadjusted, the analysis is more prone to accept that the difference in mean value is significant compared to the adjusted turkey model. 


**ANOVA model with Fireplace and Season**


**Justification for ANOVA**

Based on the previous plots with sale price and the number of fireplaces, we have determined that the average sale price for homes with more than one fireplace is significantly different than homes without fireplaces. However, the R-squared value shows that only 12 percent of the variabiltiy in the data is explained by the number of fireplaces. Other 88 percent of the variabilities are explained by other nuisance factors. In order to explain more of the variabiltiy, we have included the Season_sold category to explain more of the variabiltiy in our dataset.
 
Looking at the Box and Whisker plot for Sale Price per seasons, we can see that season 1 seemed to have a lower sales price. However, due to the limited observations and the value of the standard deviation, we cannot conclude that season will be able to explain more of the variability combined with the number of fireplaces. ANOVA test can combine both the number of fireplaces and the seasons to check the hypothesis that the average sale price will differ based on the combination of fireplaces and seasons.


**Checking the hypothesis that the means are equal**

 
Checking the assumptions of the ANOVA model, the Q-Q plot and the histogram shows the normality based on the residuals. 
 
Looking at the Hovtest of Season_sold category, we fail to reject that the null hypothesis that the variabilities between season_sold categories are different. 
Since the variability assumptions has been confirmed for the number of fireplaces, refer to the question above. With this assumptions confirmed, we have ensured that all of the assumptions have been met.

 

Comparing the results of the ANOVA analysis from the previous ANOVA analysis, we can see that more of sum of squares are within the model variability group even though error variability group still the majority by far. Because of the increase in sum of squares belonging to the model variability, we see the increase in R-squared value at 14.0889 percent. This R-squared method can be interpreted as the model explaining 14.0889 of the variability in the dataset which is approximately 2 percent higher than the ANOVA model with only the number of fireplaces as the variable. 
Looking at the p-value of the entire model, we can conclude that the combination of fireplaces and seasons is significant. However, looking at the individual variables, we see that the fireplaces is a significant differentiator while the Season_sold variable is not significant with p-value of 0.1165. Since the combined F-value is less than the previous F-value, we can confirm that the combine model is less significant than the model built with the number of fireplaces alone. Although our conclusion will be that the model shows that a p-value less than the alpha, the season_sold and the combination of these two variables will not result in more significance than the fireplace variable alone.

Conclusion:
The F-value is 9.64 and the p-value is less than 0.0001. Since p-value is less than alpha of 0.005, I reject the null hypothesis.
I have sufficient evidence to suggest that the true mean of Sale Price for homes are different among the number of fireplaces and seasons sold.


**Overall Conclusion**

Although the conclusion was that the combination of fireplaces and seasons sold will result in p-value less than 0.0001, seasons sold variable is not a good variable for us to analyze the difference in the sale price. In order to analyze further, the next step would be look for variables that can explain more about the data in combination with the fireplace variable. Although the number of fireplaces showed strong significant, it was able to only explain approximately 12 percent of the variability according to the R-squared value. While ensuring that the model is not overfitting the dataset, it would be beneficial to add more variables additional to the fireplace variable to explain more of the variability in the dataset as part of the next step.
