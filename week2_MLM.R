data <- read.csv(file="C:/Users/Rebecca/Desktop/group9.csv", check.names=F,stringsAsFactors = F)
attach(data)
head(data)

library(dplyr)


skimr::skim(data)


logit <- glm(FATALITY ~ 
               MONTHNAME + 
               WKDY_IMNAME + 
               LGT_COND +
               ALC_INV +
               URBANICITYNAME + 
               WEATHERNAME +
               GAS_PRICE
             , data = data, family = "binomial")

summary(logit)

