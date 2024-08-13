# Load necessary libraries
library(tidyverse)

# Load the dataset
data <- read.csv("/Users/maxnussbaum/Downloads/refined_vehicles.csv")

# Explore the data
summary(data)
str(data)

# Convert categorical variables to factors
data$condition <- as.factor(data$condition)

# Build the regression model
model <- lm(price ~ year + odometer + condition, data = data)

# Check the summary of the model to interpret the coefficients
summary(model)

# Plot
plot(model)
