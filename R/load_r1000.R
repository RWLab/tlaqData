load_r1000 <- function() {
  dest <- "data/r100.rda"
  if (!file.exists(dest)) {
    download.file(readRDS("data/link.rds"), dest, mode = "wb")
  }
  load(dest)
}
