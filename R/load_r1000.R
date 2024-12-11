#' Load the Russell 1000 Data
#'
#' This function loads the Russell 1000 dataset into the global environment.
#' If the data file is not already available locally, it downloads the file
#' and saves it to the `data` directory before loading it.
#'
#' @details
#' The function first checks if the file `r1000.rda` exists in the `data` directory.
#' If the file does not exist, it downloads the data using
#' `utils::download.file`. After downloading, the file is loaded into the global environment.
#'
#' @return
#' The data is loaded into the global environment. This function does not return a value.
#'
#' @examples
#' \dontrun{
#' load_r1000()
#' }
#'
#' @importFrom utils download.file
#' @export
load_r1000 <- function() {
  dest <- "data/r1000.rda"
  if (!file.exists(dest)) {
    print("Retrieving data, please wait...")
    load("data/link.rda")
    download.file(url, dest, mode = "wb", quiet = TRUE)
  }
  load(dest, envir = globalenv())
  print("Data successfully loaded.")
}

