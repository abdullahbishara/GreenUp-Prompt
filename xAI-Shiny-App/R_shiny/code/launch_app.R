# Launch script for xAI-Shiny-App
# First try to load required packages, install if missing

required_packages <- c('shiny', 'visNetwork', 'igraph', 'DT', 'uuid', 'shinyjs', 'shinyBS', 'zip', 'rje', 'png', 'shinycssloaders', 'jsonlite', 'httr', 'xml2', 'ggplot2')

missing_packages <- character(0)

for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    missing_packages <- c(missing_packages, pkg)
  }
}

if (length(missing_packages) > 0) {
  cat("Missing packages:", paste(missing_packages, collapse = ", "), "\n")
  cat("Attempting to install missing packages...\n")
  
  for (pkg in missing_packages) {
    tryCatch({
      install.packages(pkg, repos = 'https://cran.rstudio.com/', dependencies = TRUE)
      cat("Successfully installed:", pkg, "\n")
    }, error = function(e) {
      cat("Failed to install:", pkg, "- Error:", e$message, "\n")
    })
  }
} else {
  cat("All required packages are available.\n")
}

# Launch the Shiny app
cat("Launching Shiny application...\n")
shiny::runApp('.')
