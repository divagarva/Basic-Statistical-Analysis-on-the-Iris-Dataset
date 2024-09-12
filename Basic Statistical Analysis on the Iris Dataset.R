# Load the dataset
data(iris)

# View the first few rows of the dataset
head(iris)

# Get a summary of the dataset
summary(iris)

# Calculate basic statistics for numeric variables (Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)

# Mean of each variable
mean_values <- colMeans(iris[, 1:4])
print("Mean of each variable:")
print(mean_values)

# Median of each variable
median_values <- apply(iris[, 1:4], 2, median)
print("Median of each variable:")
print(median_values)

# Variance of each variable
variance_values <- apply(iris[, 1:4], 2, var)
print("Variance of each variable:")
print(variance_values)

# Standard deviation of each variable
sd_values <- apply(iris[, 1:4], 2, sd)
print("Standard Deviation of each variable:")
print(sd_values)

# Data Visualization

# Histogram of Sepal Length
hist(iris$Sepal.Length, main = "Histogram of Sepal Length", 
     xlab = "Sepal Length", col = "lightblue", border = "black")

# Scatter plot for Sepal Length vs Petal Length
plot(iris$Sepal.Length, iris$Petal.Length, 
     main = "Sepal Length vs Petal Length", 
     xlab = "Sepal Length", ylab = "Petal Length", 
     col = as.factor(iris$Species), pch = 16)
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 16)

# Boxplot for Sepal Length by Species
boxplot(Sepal.Length ~ Species, data = iris, 
        main = "Boxplot of Sepal Length by Species", 
        xlab = "Species", ylab = "Sepal Length", 
        col = c("red", "green", "blue"))

# Correlation Matrix for numeric variables
correlation_matrix <- cor(iris[, 1:4])
print("Correlation Matrix:")
print(correlation_matrix)

# Increase margins to prevent cropping of labels and title
par(mar = c(5, 5, 5, 5))  # Adjust margins

# Heatmap of the correlation matrix with margins and adjusted label size
heatmap(correlation_matrix, 
        main = "Heatmap of Correlation Matrix", 
        col = heat.colors(10), 
        margins = c(8, 8),   # Adjust margins for row and column labels
        cexRow = 0.8,        # Adjust size of row labels
        cexCol = 0.8)        # Adjust size of column labels
