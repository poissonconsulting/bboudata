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

#' Sample Data for Population A
#'
#' The data contains anonymized survival information for boreal caribou population 'A',
#' which spans 31 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_a"

#' Sample Data for Population B
#'
#' The data contains anonymized survival information for boreal caribou population 'B',
#' which spans 18 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_b"

#' Sample Data for Population C
#'
#' The data contains anonymized survival information for boreal caribou population 'C',
#' which spans 11 years. This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_c"

#' Sample Data for Multiple Populations
#'
#' The data contains anonymized survival information for boreal caribou populations 'A', 'B' and 'C'
#' with staggered year ranges, an internal gap (B missing 2008-2009), and unobserved year
#' placeholder rows (2015 for all populations). Designed to test multi-population analysis,
#' latent random effects for missing year-population combos, and unobserved year prediction.
#' Filter to single population or remove placeholder rows (where Month is NA) as needed.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_multi"

#' Sample Data for Annual Survival Data
#'
#' The data contains anonymized survival information for boreal caribou populations 'A' and 'C',
#' aggregated to annual resolution with staggered year ranges. Designed to test the combination
#' of multi-population analysis with aggregate annual data. Filter to single population for
#' simple annual-only testing.
#' This dataset follows the methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_annual"

#' Sample Data with Unobserved Years
#'
#' The data contains anonymized survival information for boreal caribou population 'C',
#' with years 2010-2013 represented as single placeholder rows with all-NA measurement
#' columns. These placeholder rows signal unobserved years to the model: the data pipeline
#' uses them to set Annual factor levels, then strips them before building the likelihood.
#' Random effects for unobserved years are estimated purely from the hierarchical prior.
#' The dataset follows the methodology described
#' in DeCesare et al. (2012) for estimating population growth rates using adult female survival data.
#'
#' @details
#' The data is released under the [Open Government Licence -
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_missing"

#' Simulated Data for Scenario 1
#'
#' Data are simulated with the [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with annual variation on
#' female adult survival and female calf survival.
#' Coverage is low, with 20% of groups observed and 10 collars.
#' The dataset follows methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_sim1"

#' Simulated Data for Scenario 2
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with annual variation on
#' female adult survival and female calf survival.
#' Coverage is high, with 70% of groups observed and 40 collars.
#' The dataset follows methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_sim2"

#' Simulated Data for Scenario 3
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a population spanning 20 years with negative trend on female adult survival
#' and additional annual variation on female adult survival and female calf survival.
#' Coverage is medium, with 50% of groups observed and 25 collars.
#' The dataset follows methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_sim3"

#' Simulated Data for Scenario 4
#'
#' Data are simulated with [`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
#' This is a stable population spanning 20 years with small population size
#' (50 initial adult females) and annual variation on female adult survival and female calf survival.
#' Coverage is medium, with 40% of groups observed and 20 collars.
#' The dataset follows methodology described in DeCesare et al. (2012) for estimating
#' population growth rates using adult female survival data.
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
#' \item{StartTotal}{The total number of collared caribou at the start of the
#' month}
#' \item{MortalitiesCertain}{The number of confirmed caribou mortalities in the
#' month}
#' \item{MortalitiesUncertain}{The total number of mortalities that were not
#' confirmed in that month}
#' }
#'
"bbousurv_sim4"
