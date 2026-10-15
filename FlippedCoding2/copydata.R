# copydata.R  (Flipped Coding 2, Titanic version)
# Sourced by the lesson after the student has set the working directory.
# Copies mysterydata.csv from the installed course into getwd(), if it is not already there.
local({
  courses <- getOption("swirl_courses_dir", file.path(find.package("swirl"), "Courses"))
  src <- list.files(courses, pattern = "^mysterydata\\.csv$", recursive = TRUE, full.names = TRUE)
  dest <- file.path(getwd(), "mysterydata.csv")
  if (!file.exists(dest)) {
    if (length(src) > 0) {
      file.copy(src[1], dest)
    } else {
      message("Could not find mysterydata.csv inside the swirl course folder. Download it from the Session 4 page on Moodle into this folder, then type list.files().")
    }
  }
  invisible(NULL)
})
