#' @importFrom utils download.file
.onLoad <- function(libname, pkgname) {
  link_path <- system.file("data", "link.rda", package = "tlaqData")

  # check if the file exists
  if (!file.exists(link_path)) {
    warning("Error finding R1000 data. Some functionality may not work.")
  return()
  }

  load(link_path)

  # temp directory for the session
  temp_dir <- tempdir()

  dest <- file.path(temp_dir, "r1000.rda")

  # check if the file exists; if not, download it
  if (!file.exists(dest)) {
    message("Downloading data, please wait...")
    load("data/link.rda")
    download.file(url, dest, mode = "wb", quiet = TRUE)
  }

  # load the data into the global environment
  load(dest, envir = globalenv())
  message("Data successfully loaded.")
}
