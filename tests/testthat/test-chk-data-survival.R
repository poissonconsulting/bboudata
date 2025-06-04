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

test_that("survival data checks work", {
  x <- bboudata::bbousurv_a

  x2 <- x
  x2$StartTotal[1] <- 10.5
  expect_error(
    bbd_chk_data_survival(x2),
    regexp = "Column StartTotal of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )
  x2 <- x
  x2$MortalitiesCertain[1] <- 10.5
  expect_error(
    bbd_chk_data_survival(x2),
    regexp = "Column MortalitiesCertain of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )
  x2 <- x
  x2$MortalitiesUncertain[1] <- 10.5
  expect_error(
    bbd_chk_data_survival(x2),
    regexp = "Column MortalitiesUncertain of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )

  ### check that accepts additional columns
  x2 <- x
  x2$Week <- 50
  expect_silent(bbd_chk_data_survival(x2))

  ### check that wont accept missing required column
  x2 <- x
  x2$StartTotal <- NULL
  expect_error(
    bbd_chk_data_survival(x2),
    regexp = "X2 must include 'StartTotal'\\."
  )
})

test_that("error if missing values in survival data", {
  x <- bboudata::bbousurv_a
  x[1, 1] <- NA_character_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "PopulationName must not have any missing values\\."
  )

  x <- bboudata::bbousurv_a
  x[1, 2] <- NA_integer_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "Year must not have any missing values\\."
  )

  x <- bboudata::bbousurv_a
  x[1, 3] <- NA_integer_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "Month must not have any missing values\\."
  )

  x <- bboudata::bbousurv_a
  x[1, 4] <- NA_integer_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "StartTotal must not have any missing values\\."
  )

  x <- bboudata::bbousurv_a
  x[1, 5] <- NA_integer_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "MortalitiesCertain must not have any missing values\\."
  )

  x <- bboudata::bbousurv_a
  x[1, 6] <- NA_integer_
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "MortalitiesUncertain must not have any missing values\\."
  )
})

test_that("error multiple pops", {
  x <- bboudata::bbousurv_a
  x[1, 1] <- "B"
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "'PopulationName' can only contain one unique value."
  )
})

test_that("error StartTotal doesn't add up", {
  x <- bboudata::bbousurv_a
  x[1, 5] <- 3
  expect_error(
    bbd_chk_data_survival(x),
    regexp = "Sum of 'MortalitiesCertain' and 'MortalitiesUncertain'must not be greater than 'StartTotal'."
  )
})
