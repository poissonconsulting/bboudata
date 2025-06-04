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

#' Sample Data for Population A
#'
#' The data contains anonymized recruitment information for boreal caribou population 'A',
#' which spans 27 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @details The data is released under the [Open Government Licence -
#' Alberta](https://open.alberta.ca/licence)
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_a"

#' Sample Data for Population B
#'
#' The data contains anonymized recruitment information for boreal caribou population 'B'
#' which spans 15 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @details The data is released under the [Open Government Licence -
#' Alberta](https://open.alberta.ca/licence)
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_b"

#' Sample Data for Population C
#'
#' The data contains anonymized recruitment information for boreal caribou population 'C',
#' which spans 9 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @details The data is released under the [Open Government Licence -
#' Alberta](https://open.alberta.ca/licence)
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_c"

#' Simulated Data for Scenario 1
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with annual variation on
#' female adult survival and female calf survival. Coverage is low, with 20% of groups observed and 10 collars.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_sim1"

#' Simulated Data for Scenario 2
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with annual variation on
#' female adult survival and female calf survival. Coverage is high, with 70% of groups observed and 40 collars.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_sim2"

#' Simulated Data for Scenario 3
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a population spanning 20 years with negative trend on female adult survival
#' and additional annual variation on female adult survival and female calf survival.
#' Coverage is medium, with 50% of groups observed and 25 collars.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_sim3"

#' Simulated Data for Scenario 4
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with small population size
#' (50 initial adult females) and annual variation on female adult survival and female calf survival.
#' Coverage is medium, with 40% of groups observed and 20 collars.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using calf/cow age ratios.
#'
#' @references
#' DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D., & Neufeld, L. (2012).
#' Estimating ungulate recruitment and growth rates using age ratios.
#' The Journal of Wildlife Management, 76(1), 144-153. doi:10.1002/jwmg.244
#'
#' @format A tibble with columns:
#' \describe{
#' \item{PopulationName}{Name of the population}
#' \item{Year}{The year the observation occurred}
#' \item{Month}{The month the observation occurred}
#' \item{Day}{The day the observation occurred}
#' \item{Cows}{The number of cows counted in the group}
#' \item{Bulls}{The number of bulls counted in the group}
#' \item{UnknownAdults}{The number of adults which could not be sexed in the
#' group}
#' \item{Yearlings}{The number of yearlings counted in the group}
#' \item{Calves}{The number of calves counted in the group}
#' }
#'
"bbourecruit_sim4"
