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

.chk_single_population <- function(x) {
  if (.vld_single_population(x)) {
    return(invisible())
  }
  chk::abort_chk("'PopulationName' can only contain one unique value.")
}

.chk_sum_less <- function(x, colsum, coltot, na.rm = FALSE) {
  if (.vld_sum_less(x, colsum, coltot, na.rm = na.rm)) {
    return(invisible())
  }
  chk::abort_chk(
    paste0(
      "Sum of ",
      chk::cc(colsum, " and "),
      "must not be greater than '",
      coltot,
      "'."
    )
  )
}

.vld_sum_less <- function(x, colsum, coltot, na.rm = FALSE) {
  all(rowSums(x[colsum]) <= x[[coltot]], na.rm = na.rm)
}

.vld_single_population <- function(x) {
  length(unique(x$PopulationName)) == 1L
}

.chk_placeholder_all_or_nothing <- function(data, measurement_cols) {
  na_counts <- rowSums(is.na(data[measurement_cols]))
  partial <- na_counts > 0L & na_counts < length(measurement_cols)
  if (!any(partial)) {
    return(invisible())
  }

  rows <- which(partial)
  chk::abort_chk(
    paste0(
      "Placeholder rows must have all measurement columns (",
      chk::cc(measurement_cols, " and "),
      ") as NA, not just some. Found partial NA in row(s): ",
      chk::cc(rows, " and "),
      "."
    )
  )
}

xname <- function(x, col) {
  paste("Column", col, "of", x)
}
