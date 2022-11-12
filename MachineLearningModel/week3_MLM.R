data <- read.csv(file="C:/Users/Rebecca/Desktop/violation_level.csv", check.names=F,stringsAsFactors = F)
attach(data)
head(data)

library(tidyverse)
library(dplyr)
library(caret)


Month_Name <- as.character(as.numeric(data$Month))
Light_Chr <- as.character(as.numeric(data$`Light Level`))

df <- data.frame(Light_Chr, Month_Name, data$Weekday, data$Fat_Bin, data$Seatbelt_Vio, data$Speeding_Vio, data$DUI_DWI, data$Gas_Price)

#initial model 
logit <- glm(data.Fat_Bin~ 
               Light_Chr +
               data.Seatbelt_Vio +
               data.Speeding_Vio +
               data.DUI_DWI +
               data.Gas_Price
             , train.data, family = "binomial")

summary(logit)



# testing and training


set.seed(99)
training.samples <- df$data.Fat_Bin %>%
  createDataPartition(p=0.75, list=FALSE)

train.data <- df[training.samples, ]
test.data <- df[-training.samples, ]


model <- glm(data.Fat_Bin~ 
               Light_Chr +
               data.Seatbelt_Vio +
               data.Speeding_Vio +
               data.DUI_DWI +
               data.Gas_Price
             , train.data, family = "binomial")
summary(model)

predictions <- model %>% predict(test.data)

compare <- data.frame(actual = test.data$data.Fat_Bin,
                      predicted = predictions)
compare

error <- RMSE(predictions, test.data$data.Fat_Bin)
error
