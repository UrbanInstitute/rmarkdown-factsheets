library(rmarkdown)
library(stringr)
library(tidyverse)

# create an index
index <- c("Aberdeen",  "Biloxi", "Boulder")

# create a data frame with parameters and output file names
runs <- tibble(
  filename = str_c(index, ".pdf"),             # creates a string with output file names in the form <index>.pdf
  params = map(index, ~list(parameter1 = .)))  # creates a nest list of parameters for each object in the index

# iterate render() along the tibble of parameters and file names
runs %>%
  select(output_file = filename, params) %>%
  pwalk(rmarkdown::render, input = "factsheet.Rmd", output_dir = "factsheets")
