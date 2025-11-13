# Copyright 2022-2023 Integrated Ecological Research and Poisson Consulting Ltd.
# Copyright 2024 Province of Alberta
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

bbourecruit_multi <-
  dplyr::bind_rows(
    bbourecruit_a %>% dplyr::filter(Year %in% 2003:2013),
    bbourecruit_b %>% dplyr::filter(Year %in% 2005:2015),
    bbourecruit_c %>% dplyr::filter(Year %in% 2005:2013)
  )

bbourecruit_missing <- 
  bbourecruit_c %>% 
  dplyr::mutate(
    Cows = ifelse(Year %in% 2010:2013, NA, Cows),
    Bulls = ifelse(Year %in% 2010:2013, NA, Bulls),
    UnknownAdults = ifelse(Year %in% 2010:2013, NA, UnknownAdults),
    Yearlings = ifelse(Year %in% 2010:2013, NA, Yearlings),
    Calves = ifelse(Year %in% 2010:2013, NA, Calves)
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

bbousurv_multi <-
  dplyr::bind_rows(
    bbousurv_a %>% dplyr::filter(Year %in% 2001:2013),
    bbousurv_b %>% dplyr::filter(Year %in% 2003:2014),
    bbousurv_c %>% dplyr::filter(Year %in% 2003:2013)
  )

bbousurv_annual <-
  bbousurv_c %>%
  dplyr::group_by(PopulationName, Year) %>%
  dplyr::summarize(Month = 4L,
            StartTotal = max(StartTotal),
            MortalitiesCertain = sum(MortalitiesCertain),
            MortalitiesUncertain = sum(MortalitiesUncertain)) %>%
  dplyr::ungroup() %>%
  dplyr::filter(!(Year %in% 2008:2009))

bbousurv_missing <- 
  bbousurv_c %>% 
  dplyr::mutate(
    StartTotal = ifelse(Year %in% 2010:2013, NA, StartTotal),
    MortalitiesCertain = ifelse(Year %in% 2010:2013, NA, MortalitiesCertain),
    MortalitiesUncertain = ifelse(Year %in% 2010:2013, NA, MortalitiesUncertain)
  )

usethis::use_data(bbousurv_a, overwrite = TRUE)
usethis::use_data(bbousurv_b, overwrite = TRUE)
usethis::use_data(bbousurv_c, overwrite = TRUE)
usethis::use_data(bbousurv_multi, overwrite = TRUE)
usethis::use_data(bbousurv_annual, overwrite = TRUE)
usethis::use_data(bbousurv_missing, overwrite = TRUE)
