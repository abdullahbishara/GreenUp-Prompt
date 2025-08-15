# Simple script to run the Shiny app
# Check for basic shiny functionality first

cat("Checking R installation...\n")
print(R.version.string)

cat("Checking for Shiny...\n")
if (require("shiny", quietly = TRUE)) {
  cat("Shiny is available!\n")
  
  # Set working directory
  cat("Current working directory:", getwd(), "\n")
  
  # Check if server.R and ui.R exist
  if (file.exists("server.R") && file.exists("ui.R")) {
    cat("server.R and ui.R found!\n")
    
    # Try to run the app
    cat("Attempting to launch Shiny app...\n")
    shiny::runApp(port = 3838, host = "0.0.0.0")
  } else {
    cat("Error: server.R or ui.R not found\n")
    cat("Files in current directory:", paste(list.files(), collapse = ", "), "\n")
  }
} else {
  cat("Shiny package not found. Attempting to install...\n")
  install.packages("shiny", repos = "https://cran.rstudio.com/")
  
  if (require("shiny", quietly = TRUE)) {
    cat("Shiny installed successfully!\n")
    shiny::runApp(port = 3838, host = "0.0.0.0")
  } else {
    cat("Failed to install Shiny package\n")
  }
}
