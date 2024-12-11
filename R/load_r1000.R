#' Load the Russell 1000 Data (Temporary Storage)
#'
#' This function downloads and loads the Russell 1000 dataset into the global environment.
#' The data is temporarily stored in the session's temporary directory (`tempdir()`).
#' If the dataset is already available in the temporary directory, it is loaded directly
#' without re-downloading.
#'
#' @details
#' The function checks if the `r1000.rda` file exists in the temporary directory.
#' If the file does not exist, it downloads the dataset, and saves it in the temporary directory.
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
#' load_r1000_temp()
#' }
#'
#' @export
load_r1000_temp <- function() {
  # Get the temporary directory for the session
  temp_dir <- tempdir()

  # Define the path to save the data
  dest <- file.path(temp_dir, "r1000.rda")

  # Check if the data already exists in the temp directory
  if (!file.exists(dest)) {
    # Data does not exist, download it
    message("Downloading data, please wait...")

    # Assume the URL is stored in an internal object `url` in the package
    load(system.file("data", "link.rda", package = "tlaqData"))

    # Download the data
    download.file(url, dest, mode = "wb", quiet = TRUE)
    message("Data successfully downloaded.")
  } else {
    message("Data found in the temporary directory. Loading...")
  }

  # Load the data into the global environment
  load(dest, envir = globalenv())
  message("Data successfully loaded into the global environment.")
}
