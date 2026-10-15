# initLesson.R for Flipped Coding 2 (Titanic version), STEP0020 2026-27
# Runs before the lesson starts. Loads readr and dplyr quietly.
# The data file is copied into the working directory later in the lesson
# (copydata.R), after the student has set the working directory.
suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  if (requireNamespace("tidyverse", quietly = TRUE)) library(tidyverse)
})
