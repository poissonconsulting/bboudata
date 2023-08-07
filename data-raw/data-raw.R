#bbourecruit <- tibble::as_tibble(readRDS("data-raw/bbourecruit.rds"))
#bbousurv <- tibble::as_tibble(readRDS("data-raw/bbbousurv.rds"))

### TODO: Add in sample data
bbourecruit <- tibble::tibble(
  PopulationName = c("A"),
  Year = c(2023),
  Month = c(1),
  Day = c(1),
  Cows = c(10),
  Bulls = c(10),
  UnknownAdults = c(0),
  Yearlings = c(1),
  Calves = c(1)
)

bbousurv <- tibble::tibble(
  PopulationName = c("A"),
  Year = c(2023),
  Month = c(1),
  StartTotal = c(10),
  MortalitiesCertain = c(0),
  MortalitiesUncertain = c(0)
)

usethis::use_data(bbourecruit, overwrite = TRUE)
usethis::use_data(bbousurv, overwrite = TRUE)
