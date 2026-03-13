# Copyright 2022-2023 Integrated Ecological Research and Poisson Consulting Ltd.
# Copyright 2024 Province of Alberta
# Copyright 2025 Environment and Climate Change Canada
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

path <- file.path("data-raw", "recruitment.xlsx")
sheets <- readxl::excel_sheets(path)

bbourecruit_a <- readxl::read_excel(path, sheets[1]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, Day, Cows, Bulls, UnknownAdults, Yearlings, Calves),
      as.integer
    )
  )
bbourecruit_b <- readxl::read_excel(path, sheets[2]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, Day, Cows, Bulls, UnknownAdults, Yearlings, Calves),
      as.integer
    )
  )
bbourecruit_c <- readxl::read_excel(path, sheets[3]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, Day, Cows, Bulls, UnknownAdults, Yearlings, Calves),
      as.integer
    )
  )

# Multi-population recruitment with staggered years, internal gap, and
# unobserved year placeholder rows. Designed to exercise:
#   - Latent random effects for missing year-population combos (~35% latent)
#   - Internal gap (B missing 2009-2010)
#   - Unobserved year beyond all data (2016 placeholder for all pops)
# Tests can filter to single pop, remove placeholder rows, etc. as needed.
#
# Year: 03 04 05 06 07 08 09 10 11 12 13 14 15 16
# A:     X  X  X  X  X  X  X  X  .  .  .  .  .  P
# B:     .  .  .  X  X  X  .  .  X  X  X  X  X  P
# C:     .  .  X  X  X  X  X  X  X  X  X  .  .  P
bbourecruit_multi <-
  dplyr::bind_rows(
    bbourecruit_a |> dplyr::filter(Year %in% 2003:2010),
    bbourecruit_b |> dplyr::filter(Year %in% 2006:2015, !(Year %in% 2009:2010)),
    bbourecruit_c |> dplyr::filter(Year %in% 2005:2013)
  ) |>
  dplyr::bind_rows(
    tidyr::expand_grid(
      PopulationName = c("A", "B", "C"),
      Year = 2016L,
      Month = NA_integer_,
      Day = NA_integer_,
      Cows = NA_integer_,
      Bulls = NA_integer_,
      UnknownAdults = NA_integer_,
      Yearlings = NA_integer_,
      Calves = NA_integer_
    )
  )

# Single-population dataset with unobserved years (placeholder rows).
# Kept for simple single-pop unobserved year testing without multi-pop complexity.
bbourecruit_missing <-
  bbourecruit_c |>
  dplyr::filter(!(Year %in% 2010:2013)) |>
  dplyr::bind_rows(
    tidyr::expand_grid(
      PopulationName = "C",
      Year = 2010:2013,
      Month = NA_integer_,
      Day = NA_integer_,
      Cows = NA_integer_,
      Bulls = NA_integer_,
      UnknownAdults = NA_integer_,
      Yearlings = NA_integer_,
      Calves = NA_integer_
    )
  )

usethis::use_data(bbourecruit_a, overwrite = TRUE)
usethis::use_data(bbourecruit_b, overwrite = TRUE)
usethis::use_data(bbourecruit_c, overwrite = TRUE)
usethis::use_data(bbourecruit_multi, overwrite = TRUE)
usethis::use_data(bbourecruit_missing, overwrite = TRUE)

path <- file.path("data-raw", "survival.xlsx")
sheets <- readxl::excel_sheets(path)

bbousurv_a <- readxl::read_excel(path, sheets[1]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, StartTotal, MortalitiesCertain, MortalitiesUncertain),
      as.integer
    )
  )
bbousurv_b <- readxl::read_excel(path, sheets[2]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, StartTotal, MortalitiesCertain, MortalitiesUncertain),
      as.integer
    )
  )
bbousurv_c <- readxl::read_excel(path, sheets[3]) |>
  dplyr::mutate(
    dplyr::across(
      c(Year, Month, StartTotal, MortalitiesCertain, MortalitiesUncertain),
      as.integer
    )
  )

# Multi-population survival with staggered years, internal gap, and
# unobserved year placeholder rows. Designed to exercise:
#   - Latent random effects for missing year-population combos (~35% latent)
#   - Internal gap (B missing 2008-2009)
#   - Unobserved year beyond all data (2015 placeholder for all pops)
# Tests can filter to single pop, remove placeholder rows, etc. as needed.
#
# Year: 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
# A:     X  X  X  X  X  X  X  X  X  X  .  .  .  .  P
# B:     .  .  .  .  X  X  X  .  .  X  X  X  X  X  P
# C:     .  .  X  X  X  X  X  X  X  X  X  X  X  .  P
bbousurv_multi <-
  dplyr::bind_rows(
    bbousurv_a |> dplyr::filter(Year %in% 2001:2010),
    bbousurv_b |> dplyr::filter(Year %in% 2005:2014, !(Year %in% 2008:2009)),
    bbousurv_c |> dplyr::filter(Year %in% 2003:2013)
  ) |>
  dplyr::bind_rows(
    tidyr::expand_grid(
      PopulationName = c("A", "B", "C"),
      Year = 2015L,
      Month = NA_integer_,
      StartTotal = NA_integer_,
      MortalitiesCertain = NA_integer_,
      MortalitiesUncertain = NA_integer_
    )
  )

# Multi-population annual (aggregate) survival data with staggered years.
# Tests deliverables 1+2 together (multi-pop + annual data).
# Filter to single population for simple annual-only testing.
#
# Year: 01 02 03 04 05 06 07 08 09 10 11 12 13
# A:     X  X  X  X  X  X  X  X  .  .  .  .  .
# C:     .  .  X  X  X  X  X  .  .  X  X  X  X
bbousurv_annual <-
  dplyr::bind_rows(
    bbousurv_a |> dplyr::filter(Year %in% 2001:2008),
    bbousurv_c |> dplyr::filter(Year %in% 2003:2013, !(Year %in% 2008:2009))
  ) |>
  dplyr::group_by(PopulationName, Year) |>
  dplyr::summarize(
    Month = 4L,
    StartTotal = max(StartTotal),
    MortalitiesCertain = sum(MortalitiesCertain),
    MortalitiesUncertain = sum(MortalitiesUncertain),
    .groups = "drop"
  )

# Single-population dataset with unobserved years (placeholder rows).
# Kept for simple single-pop unobserved year testing without multi-pop complexity.
bbousurv_missing <-
  bbousurv_c |>
  dplyr::filter(!(Year %in% 2010:2013)) |>
  dplyr::bind_rows(
    tidyr::expand_grid(
      PopulationName = "C",
      Year = 2010:2013,
      Month = NA_integer_,
      StartTotal = NA_integer_,
      MortalitiesCertain = NA_integer_,
      MortalitiesUncertain = NA_integer_
    )
  )

usethis::use_data(bbousurv_a, overwrite = TRUE)
usethis::use_data(bbousurv_b, overwrite = TRUE)
usethis::use_data(bbousurv_c, overwrite = TRUE)
usethis::use_data(bbousurv_multi, overwrite = TRUE)
usethis::use_data(bbousurv_annual, overwrite = TRUE)
usethis::use_data(bbousurv_missing, overwrite = TRUE)
