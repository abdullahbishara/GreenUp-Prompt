# Install required R packages for xAI-Shiny-App
packages <- c('shiny', 'visNetwork', 'igraph', 'DT', 'uuid', 'shinyjs', 'shinyBS', 'zip', 'rje', 'png', 'shinycssloaders', 'jsonlite', 'httr', 'xml2', 'ggplot2')

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, repos='https://cran.rstudio.com/', dependencies=TRUE)
    library(pkg, character.only = TRUE)
  }
}

cat("All packages installed successfully!\n")
