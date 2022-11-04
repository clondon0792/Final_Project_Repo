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

### Communication Protocols 
Our group will meet during our regular Zoom classes. We will communicate via our private Slack channel.

### Data Cleaning and Analysis
We will preprocess the data using Excel. Exploratory and further analysis will be completed in R.

### Database Storage
Tentatively, we will be using Google Cloud and PostgreSQL for storage.

### Machine Learning
R is the machine learning tool we will be using. Training and testing setup will use Logistic Regression.

#### Data Exploration Phase 

While pondering the viability of our chosen topic, the group worked together using data bases such as Google Cloud SQL - Postgres and Statistica to find look for legitimate sources. We knew theoretically that we needed data regarding the price of gas and traffic accidents that ended in fatalities, as well as the variables mentioned in the original National Highway Traffic Safety Administration (NHTSA) press release (violations regarding seat belt usage, DUI/DWI, and excessive speeding. We ultimately sourced our data directly from the NHTSA and the U.S. Energy Information Administration (EIA).

The XLS file provided by the EIA was simple and straightforward, while the zip file of CSV files had our data scattered about across different sheets. Dissecting the files together, we managed to find the variables we looked work with together and highlighted which columns of data we want to merge later in the project.

#### Data analysis

Our machine learning model is a logarithmic regression to estimate the relationship between our chosen variables (month, day of the week, gas price, light level, weather condition, rural/urban, age of driver, alcohol violation, seat belt violation, speeding violation, and whether an accident resulted in a fatality). Using the logarithmic regression, R can generate summary statistics that will highlight which of our variables were the most significant.

Ultimately, we want to see if gas prices give any explanatory value in our model. We can also measure the probability that each variable may result in a fatal car accident given the presence of a certain violation and/or circumstance.

### Dashboard
For the dashboard, we will be using Tableau to present our findings.


