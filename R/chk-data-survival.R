#' Check survival data structure
#'
#' @param data A data frame.
#' @param x_name Name of data frame.
#'
#' @return An invisible data frame.
#' @export
#'
#' @examples
#' bbd_chk_data_survival(bbousurv_a)
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
