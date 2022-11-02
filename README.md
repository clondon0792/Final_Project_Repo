# Final_Project_Repo
Final project repository to maintain and hold code/information amongst all four collaborators 

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

independent variables:
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

### Dashboard
For the dashboard, we will be using Tableau to present our findings.
