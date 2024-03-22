# Copyright 2024 Province of Alberta
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

.chk_population <- function(x) {
  if (.vld_population(x)) {
    return(invisible())
  }
  chk::abort_chk("'PopulationName' can only contain one unique value.")
}

.chk_sum_less <- function(x, colsum, coltot) {
  if (.vld_sum_less(x, colsum, coltot)) {
    return(invisible())
  }
  chk::abort_chk(
    paste0(
      "Sum of ",
      chk::cc(colsum, ' and '),
      "must not be greater than '",
      coltot,
      "'.")
  )
}

.vld_sum_less <- function(x, colsum, coltot) {
  all(rowSums(x[colsum]) <= x[[coltot]])
}

.vld_population <- function(x) {
  length(unique(x$PopulationName)) == 1L
}

xname <- function(x, col) {
  paste("Column", col, "of", x)
}
