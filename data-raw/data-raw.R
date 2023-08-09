# Copyright 2023 Environment and Climate Change Canada
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
