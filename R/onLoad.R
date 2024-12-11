#' @importFrom utils download.file
.onAttach <- function(libname, pkgname) {
  # check if the file exists
  if (!exists("r1000_url")) {
    warning("Error finding R1000 data. Some functionality may not work.")
    return()
  }

  # temp directory for the session
  temp_dir <- tempdir()

  dest <- file.path(temp_dir, "r1000.rda")

  # check if the file exists; if not, download it
  if (!file.exists(dest)) {
    message("Downloading data, please wait...")
    download.file(r1000_url, dest, mode = "wb", quiet = TRUE)
  }

  # load the data into the global environment
  load(dest, envir = globalenv())
  message("Data successfully loaded.")
}
