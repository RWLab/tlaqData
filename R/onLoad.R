.onLoad <- function(libname, pkgname) {
  dest <- "data/r1000.rda"
  if (!file.exists(dest)) {
    print("Retrieving data, please wait...")
    load("data/link.rda")
    download.file(url, dest, mode = "wb", quiet = TRUE)
  }
}
