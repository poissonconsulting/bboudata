# bbourecruit <- tibble::as_tibble(readRDS("data-raw/bbourecruit.rds"))
# bbousurv <- tibble::as_tibble(readRDS("data-raw/bbbousurv.rds"))

### TODO: Add in sample data
bbourecruit <- tibble::tibble(
  PopulationName = c("A"),
  Year = c(2023L),
  Month = c(1L),
  Day = c(1L),
  Cows = c(10L),
  Bulls = c(10L),
  UnknownAdults = c(0L),
  Yearlings = c(1L),
  Calves = c(1L)
)

bbousurv <- tibble::tibble(
  PopulationName = c("A"),
  Year = c(2023L),
  Month = c(1L),
  StartTotal = c(10L),
  MortalitiesCertain = c(0L),
  MortalitiesUncertain = c(0L)
)

usethis::use_data(bbourecruit, overwrite = TRUE)
usethis::use_data(bbousurv, overwrite = TRUE)
