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

usethis::use_data(bbourecruit_a, overwrite = TRUE)
usethis::use_data(bbourecruit_b, overwrite = TRUE)
usethis::use_data(bbourecruit_c, overwrite = TRUE)

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

usethis::use_data(bbousurv_a, overwrite = TRUE)
usethis::use_data(bbousurv_b, overwrite = TRUE)
usethis::use_data(bbousurv_c, overwrite = TRUE)
