# initLesson.R for Flipped Coding 3 (ggplot2 on the Gapminder data), STEP0020 2026-27
# Runs before the lesson starts. Loads readr, dplyr and ggplot2 quietly.
# The data file is copied into the working directory later in the lesson
# (copydata.R), after the student has set the working directory.
suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(ggplot2)
  if (requireNamespace("tidyverse", quietly = TRUE)) library(tidyverse)
})
