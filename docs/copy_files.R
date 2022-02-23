dirs <- list.dirs(path = "./2021_CISNET/", full.names = FALSE, recursive = TRUE)
files <- list.files(path = "./2021_CISNET/", include.dirs = TRUE, recursive = TRUE)

for (i in seq_along(dirs)) {
    dir.create(path = paste0("./docs/", dirs[i]), showWarnings = FALSE)
}

for (i in seq_along(files)) {
    file.copy(from = paste0("./2021_CISNET/", files[i]), 
              to = paste0("./docs/", files[i]), overwrite = TRUE)
}



