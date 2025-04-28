library(duckdb)
library(fs)
library(REDCapR)

#### Functions

get_data <- function(token = Sys.getenv("REDCAP_API_TOKEN")) {
    redcap_read(
        redcap_uri = "https://redcap.uth.tmc.edu/api/",
        token = token,
        continue_on_error = FALSE
    )
}

save_data <- function(directory) {
    if (!dir_exists(path = directory)) {
        dir_create(path = directory)
    }

    con <- dbConnect(
        duckdb(),
        dbdir = path(directory, "APS-DATA", ext = "duckdb"),
        read_only = FALSE
    )

    tryCatch(
        {
            dbWriteTable(con, "APS-BL", data$data, overwrite = TRUE)
        },
        finally = {
            message(glue::glue(
                "Data written to disk at {directory} as DuckDB database"
            ))
        }
    )

    on.exit(dbDisconnect(con, shutdown = TRUE))
}

#### Program Logic

DIRECTORY <- path(path_wd(), "assets", "data")

data <- get_data()
save_data(directory = DIRECTORY)
