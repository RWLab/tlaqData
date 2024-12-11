#' Load the Russell 1000 Data (Temporary Storage)
#'
#' This function downloads and loads the Russell 1000 dataset into the global environment.
#' The data is temporarily stored in the session's temporary directory (`tempdir()`).
#'
#' @details
#' The function checks if the `r1000.rda` file exists in the temporary directory.
#' The data is then loaded into the global environment.
#'
#' This approach ensures that the data is session-specific and does not persist across
#' R sessions.
#'
#' @return
#' The function loads the data into the global environment and returns `NULL` invisibly.
#'
#' @examples
#' \dontrun{
#' load_r1000()
#' }
#'
#' @export
load_r1000 <- function() {
  # Get the temporary directory for the session
  temp_dir <- tempdir()

  # Define the path to save the data
  dest <- file.path(temp_dir, "r1000.rda")

  # Check if the data already exists in the temp directory
  if (!file.exists(dest)) {
    dest <- file.path(temp_dir, "r1000.rda")
    message("Downloading data, please wait...")
    data(link)
    download.file(r1000_url, dest, mode = "wb", quiet = TRUE)
  }

  # Load the data into the global environment
  load(dest, envir = globalenv())

  rm(r1000_url, envir = globalenv())
  message("Data successfully loaded.")
}
