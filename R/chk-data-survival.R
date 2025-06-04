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

#' Check survival data structure
#'
#' The data must follow all requirements to not error. This format is required
#' for usage of the bbou suite of tools.
#'
#' @format The data must follow the requirements:
#' \describe{
#' \item{PopulationName}{Name of the herd or population}
#' \item{Year}{The calendar year the observation occurred. Must be a positive
#' integer.}
#' \item{Month}{The calendar month the observation occurred. Must be an integer
#' between 1 and 12.}
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month. Must be a positive integer.}
#' \item{MortalitiesCertain}{The total number of confirmed mortalities in that
#' month. Must be a positive integer.}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month. Must be a positive integer.}
#' }
#'
#' @param data The data frame check.
#' @param x_name Name of data frame.
#'
#' @return An invisible copy of the original data frame.
#' @export
#'
#' @examples
#' bbd_chk_data_survival(bbousurv_a)
#' bbd_chk_data_survival(bbousurv_b)
#' bbd_chk_data_survival(bbousurv_c)
#'
#' # this example will error as it doesn't follow the requirements
#' x <- bbousurv_c
#' x[1, 3] <- 14L
#' try(bbd_chk_data_survival(x))
bbd_chk_data_survival <- function(data, x_name = deparse(substitute(data))) {
  nms <- c(
    "PopulationName", "Year", "Month", "StartTotal",
    "MortalitiesCertain", "MortalitiesUncertain"
  )
  chk::chk_superset(names(data), nms, x_name = x_name)

  chk::chk_character_or_factor(data$PopulationName, x_name = xname(x_name, "PopulationName"))
  chk::chk_not_any_na(data$PopulationName, x_name = "PopulationName")
  .chk_population(data)

  chk::chk_whole_numeric(data$Year, x_name = xname(x_name, "Year"))
  chk::chk_gte(data$Year, 0, x_name = xname(x_name, "Year"))

  chk::chk_whole_numeric(data$Month, x_name = xname(x_name, "Month"))
  chk::chk_range(data$Month, range = c(1, 12), x_name = xname(x_name, "Month"))

  chk::chk_whole_numeric(data$StartTotal, x_name = xname(x_name, "StartTotal"))
  chk::chk_gte(data$StartTotal, 0, x_name = xname(x_name, "StartTotal"))

  chk::chk_whole_numeric(data$MortalitiesCertain, x_name = xname(x_name, "MortalitiesCertain"))
  chk::chk_gte(data$MortalitiesCertain, 0, x_name = xname(x_name, "MortalitiesCertain"))

  chk::chk_whole_numeric(data$MortalitiesUncertain, x_name = xname(x_name, "MortalitiesUncertain"))
  chk::chk_gte(data$MortalitiesUncertain, 0, x_name = xname(x_name, "MortalitiesUncertain"))

  chk::check_key(data, c("PopulationName", "Year", "Month"))

  chk::chk_not_any_na(data$Year, x_name = "Year")
  chk::chk_not_any_na(data$Month, x_name = "Month")
  chk::chk_not_any_na(data$StartTotal, x_name = "StartTotal")
  chk::chk_not_any_na(data$MortalitiesCertain, x_name = "MortalitiesCertain")
  chk::chk_not_any_na(data$MortalitiesUncertain, x_name = "MortalitiesUncertain")

  .chk_sum_less(data, c("MortalitiesCertain", "MortalitiesUncertain"), "StartTotal")

  invisible(data)
}
