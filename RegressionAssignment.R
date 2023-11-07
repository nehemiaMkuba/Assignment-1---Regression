# Example using read.csv
data <- read.csv("your_data.csv")

head(data)
summary(data)
str(data)
colnames(data)

# Check for missing values
any(is.na(data))

# Remove rows with missing values
data <- data[complete.cases(data), ]

# Impute missing values
data$column_name[is.na(data$column_name)] <- mean(data$column_name, na.rm = TRUE)

# Check for duplicate rows
duplicate_rows <- data[duplicated(data), ]

# Remove duplicate rows
data <- unique(data)

# Convert a column to a factor
data$column_name <- as.factor(data$column_name)

# Convert a column to a numeric type
data$column_name <- as.numeric(data$column_name)

# Convert a column to a date type
data$column_name <- as.Date(data$column_name, format = "YYYY-MM-DD")

# Standardize data
data$column_name <- scale(data$column_name)

# Min-Max scaling
data$column_name <- (data$column_name - min(data$column_name)) / (max(data$column_name) - min(data$column_name))


write.csv(data, "cleaned_data.csv", row.names = FALSE)
