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

#' Sample Boreal Caribou Survival Data
#'
#' The data contains survival information for Boreal Caribou.
#'
#' The data is released under the [Open Government Licence -
#' Alberta](https://open.alberta.ca/licence)
#'
#' @format A tibble
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year}
#' \item{Month}{The month}
#' \item{StartTotal}{The number of living caribou at the start of the month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The number of unconfirmed caribou mortalities in
#' the month}
#' }
#'
"bbousurv"
