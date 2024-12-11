#' @importFrom utils download.file
.onLoad <- function(libname, pkgname) {
  return()
  data_path <- system.file("data", "link.rda", package = pkgname)
  # check if the file exists
  if (file.exists(data_path)) {
    load(data_path, envir = parent.env(environment()))
  } else {
    warning("Error finding R1000 data. Some functionality may not work.")
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
