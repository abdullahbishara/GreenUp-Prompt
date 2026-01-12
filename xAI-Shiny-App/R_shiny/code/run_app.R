#!/usr/bin/env Rscript

# Check if we can load shiny first
if (!requireNamespace("shiny", quietly = TRUE)) {
  stop("Shiny package is not available")
}

# Load shiny
library(shiny)

# Set the working directory to the app directory
setwd('/home/daytona/GreenUp-Prompt/xAI-Shiny-App/R_shiny/code')

# Try to run the app
cat("Starting Shiny application...\n")
cat("Working directory:", getwd(), "\n")
cat("Files in directory:", paste(list.files(), collapse = ", "), "\n")

# Run the application
runApp('.', host = '0.0.0.0', port = 3838)
