# Load the iris dataset
data(iris)

# Check for missing values
missing_values <- sum(is.na(iris))
cat("Missing Values:", missing_values, "\n")

# Top variable in the dataset
head(iris)

# Number of observations and variables
num_observations <- nrow(iris)
num_variables <- ncol(iris)
cat("Number of Rows:", num_observations, "\n")
cat("Number of Columns:", num_variables, "\n")

# Numeric variables
numeric_variables <- sapply(iris, is.numeric)
cat("Numeric Variables:", sum(numeric_variables), "\n")

# Categorical variables
categorical_variables <- sapply(iris, is.factor)
cat("Categorical Variables:", sum(categorical_variables), "\n")

# Description of the variables
str(iris)

summary(iris)
summary(iris[numeric_variables])

#categorical_variables
#numeric_variables

# Summary statistics for numeric variables MEAN MEDIAN MODE
summary(iris[, numeric_variables])

# Select one categorical variable (Species) and compute statistics on a numeric variable (Sepal.Length)
summary_by_species <- aggregate(Sepal.Length ~ Species, data = iris, summary)
print(summary_by_species)

library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Sepal Width", title = "Scatterplot of Sepal Length vs. Sepal Width by Species",subtitle = 'Shows scatter of Width to Length')

ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_line() +
  labs(x = "Petal Length", y = "Petal Width", title = "Trend of Petal Length vs. Petal Width by Species")

ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(binwidth = 1.1, alpha = 2) +
  labs(x = "Sepal Length", y = "Frequency", title = "Distribution of Sepal Length by Species")

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(x = "Species", y = "Sepal Length", title = "Boxplot of Sepal Length by Species")



