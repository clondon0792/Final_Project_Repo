# Final_Project_Repo
Final project repository to maintain and hold code/information amongst all four collaborators 

## Google slides
[Group 9 Google Slides](https://docs.google.com/presentation/d/1z85IFOMbi_5oYAHke_qazw_QyQq-UAIZADgRrmkzRlQ/edit#slide=id.p)

## Selected Topic 
The Rise of Traffic Fatalities During the Pandemic and its Relation to the Price of Gas


### Reason for selecting topic 
According to multiple reports from U.S. Department of Transportation’s National Highway Traffic Safety Administration, there was a rise in traffic fatalities during the pandemic. While the NHTSA attributes this rise as positively correlated to the rise of DUI/DWI’s, lack of seatbelt usage, and speeding, our team is curious to find out how the price of gasoline, which notably fell to $1.841 a gallon during May 2020 of the pandemic, may also be correlated. We also hope to see if the subsequent historic rise of gasoline prices shows a negative relationship with traffic fatalities.

https://www.nhtsa.gov/press-releases/2020-fatality-data-show-increased-traffic-fatalities-during-pandemic

https://www.nhtsa.gov/press-releases/early-estimate-2021-traffic-fatalities


### Description for source of data 

We are sourcing our data related to the traffic fatalities directly National Highway Traffic Safety Administration (CSV). 

We are sourcing our data related to the average U.S. price of gasoline from the U.S. Energy Information Administration (XLS).

links to our data sources:

https://www.eia.gov/dnav/pet/hist/LeafHandler.ashx?n=pet&s=emm_epmr_pte_nus_dpg&f=m

https://www.nhtsa.gov/file-downloads?p=nhtsa/downloads/CRSS/2020/


### Desired questions to answer with the data 

- Can we verify that the variables offered by the NHTSA (speeding, seatbelt usage, DUI/DWIs) significantly explain the relationship between the rise of traffic fatalities?
- Does our added variable (average U.S. Price of Gasoline in dollars per gallon) contribute significantly to explain the rise of traffic fatalities?
- What other variables can we add to tell us why traffic fatalities rose during the pandemic?

## Machine Learning Model

Our model will be a logistic regression to predict the relationship between the likelihood of a crash resulting in a fatality for every dollar that the price of gasoline went up in the years 2019 to 2021, along with other significant variables.

Dependent Variable: 
- Probability that a traffic incident resulted in a fatality

Independent variables:
- U.S. Average price of gasoline (dollars per gallon)
-	Failure to require restraint use by self or passengers (0 or 1)
-	Whether or not there was impaired driving due to the use of alcohol, drugs, or prescription medication (0 or 1)
-	Whether or not there was involvement of a vehicle travelling at an illegal high speed (0 or 1)
-	Weather (levels)
-	Day of the Week (levels)
-	Light level (levels)

## Technologies Used

### Data Cleaning and Analysis
We have preprocessed the data using Excel. Exploratory and further analysis will be completed in R.

### Database Storage
We are using Google Cloud SQL and PostgreSQL for Database Storage.

### Machine Learning
R is the machine learning tool we will be using. Training and testing setup will use Logistic Regression.

#### Logistic Regression & Training/Testing

We are choosing to analyze the data using a binomial logistics regression due to the binary nature of our dependent variable (an accident either resulted in a fatality or it did not). With our many independent variables (many of which include categorical classes) LR can easily extend to a multinomial regression and generate a probabilistic view of class predictions.

Like other types of regression models, LR is prone to overfitting. Thankfully, our number of independent variables are far outnumbered by our obervations. We also intend to reveal the explanatory power of our final regression model by comparing the captured explained variation to the model's total variation.

![pic1](https://github.com/clondon0792/Final_Project_Repo/blob/main/MachineLearningModel/week3_mlm_summstats.JPG?raw=true)


We randomly seeded the data to train a model with 75% of the data and make predictions with 25% of the data.

![pic2](https://github.com/clondon0792/Final_Project_Repo/blob/main/MachineLearningModel/week3_traintest_summstat.JPG?raw=true)

#### Data Exploration Phase 

While pondering the viability of our chosen topic, the group worked together using data bases such as Google Cloud SQL - Postgres and Statistica to find look for legitimate sources. We knew theoretically that we needed data regarding the price of gas and traffic accidents that ended in fatalities, as well as the variables mentioned in the original National Highway Traffic Safety Administration (NHTSA) press release (violations regarding seat belt usage, DUI/DWI, and excessive speeding. We ultimately sourced our data directly from the NHTSA and the U.S. Energy Information Administration (EIA).

The XLS file provided by the EIA was simple and straightforward, while the zip file of CSV files had our data scattered about across different sheets. Dissecting the files together, we managed to find the variables and highlighted which columns of data we want to merge later in the project. These variables were then copied into their own csv files and imported to our Google Cloud SQL database. From this database, we were able to join our data to form differring levels of analysis: The incident level, the vehicle level, the violation level, and the driver level. The results of these SQL queries were then converted into respective Pandas DataFrames and eventually converted to a csv to integrate into our analyses.

#### Data analysis

Our machine learning model is a logarithmic regression to estimate the relationship between our chosen variables (month, day of the week, gas price, light level, weather condition, rural/urban, age of driver, alcohol violation, seat belt violation, speeding violation, and whether an accident resulted in a fatality). Using the logarithmic regression, R can generate summary statistics that will highlight which of our variables were the most significant.


| Variable | Variable type | Relationship | Significance | Interpretation |
|----------|---------------|--------------|--------------|----------------|
Speeding Violations |0 or 1|-0.767|Moderately, p=0.0317|A speeding violation is moderate predictor of a fatality NOT occuring.|
|DUI/DWI Violation|0 or 1|-0.586|Moderately, p=0.0383|A DUI/DWI violation is moderate predictor of a fatality NOT occuring.|
|Seatbelt Violations|0 or 1|0.164|None, p=0.7469|Seatbelt violations are a positive but POOR predictor of fatalities.|
|Light|Levels ranging from lightest to darkest|Varies, generally positive|Varies, generally significant|The lower the light outside, the higher the likelihood of an accident becoming fatal.|
|Gas Price|Continuous|-1.109|Extremely|p<0.00001|The higher the price of gas, the lower the likelihood of an accident being fatal.|

We found justification (albeit the opposite relationship that we would expect) for speeding and DUIs as explanatory variables for traffic fatalities, but we did not see sufficient evidence to include the seatbelt violations, despite the rise of seatbelt violations during the pandemic being notable. We found that gas price was a significant, positively correlated explanatory variable. We alsp found that light levels are an easily interpretable and significant additional explanatory variable.


### Dashboard
For the dashboard, we used Tableau to present the data and our results from the machine learning task. The dashboard can be found [here](https://public.tableau.com/app/profile/nzahbihi/viz/DrivingViolationsandGasPricesduringtheCOVID19Pandemic2020/DrivingViolationsandGasPricesduringtheCOVID19Pandemic2020).

In Tableau, we will be creating interactive bar and bubble charts. These charts will present data regarding driving violations such as alcohol use, speeding, failure to use a seatbelt, and fatalities. They will also include gas price data, as another variable we are interested in reviewing to see if it trends with the number of violations per month for 2020. The charts will contain filters, as well as mouse-over descriptor boxes that will showcase detailed information for the user to review.
