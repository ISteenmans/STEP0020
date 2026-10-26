# copydata.R  (Flipped Coding 3, Gapminder version)
# Sourced by the lesson after the student has set the working directory.
# Copies gapminder.csv from the installed course into getwd(), if it is not already there.
local({
  courses <- getOption("swirl_courses_dir", file.path(find.package("swirl"), "Courses"))
  src <- list.files(courses, pattern = "^gapminder\\.csv$", recursive = TRUE, full.names = TRUE)
  dest <- file.path(getwd(), "gapminder.csv")
  if (!file.exists(dest)) {
    if (length(src) > 0) {
      file.copy(src[1], dest)
    } else {
      message("Could not find gapminder.csv inside the swirl course folder. Download it from the Session 8 page on Moodle into this folder, then type list.files().")
    }
  }
  invisible(NULL)
})
