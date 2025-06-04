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

test_that("recruitment data checks work", {
  x <- bboudata::bbourecruit_a

  ### check wont accept non-integer
  x2 <- x
  x2$Year[1] <- 10.5
  expect_error(
    bbd_chk_data_recruitment(x2),
    regexp = "Column Year of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )
  x2 <- x
  x2$Cows[1] <- 10.5
  expect_error(
    bbd_chk_data_recruitment(x2),
    regexp = "Column Cows of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )
  x2 <- x
  x2$Calves[1] <- 10.5
  expect_error(
    bbd_chk_data_recruitment(x2),
    regexp = "Column Calves of x2 must be a whole numeric vector \\(integer vector or double equivalent\\)\\."
  )

  ### check that accepts additional columns
  x2 <- x
  x2$Week <- 50
  expect_silent(bbd_chk_data_recruitment(x2))

  ### check that wont accept missing required column
  x2 <- x
  x2$Calves <- NULL
  expect_error(
    bbd_chk_data_recruitment(x2),
    regexp = "X2 must include 'Calves'\\."
  )
})

test_that("error if missing values in recruitment dates and popname column", {
  x <- bboudata::bbourecruit_a
  x[1, 1] <- NA_character_
  expect_error(
    bbd_chk_data_recruitment(x),
    regexp = "PopulationName must not have any missing values\\."
  )

  x <- bboudata::bbourecruit_a
  x[1, 2] <- NA_integer_
  expect_error(
    bbd_chk_data_recruitment(x),
    regexp = "Year must not have any missing values\\."
  )

  x <- bboudata::bbourecruit_a
  x[1, 3] <- NA_integer_
  expect_error(
    bbd_chk_data_recruitment(x),
    regexp = "Month must not have any missing values\\."
  )

  x <- bboudata::bbourecruit_a
  x[1, 4] <- NA_integer_
  expect_error(
    bbd_chk_data_recruitment(x),
    regexp = "Day must not have any missing values\\."
  )

  x <- bboudata::bbourecruit_a
  x[1, 5] <- NA_integer_
  x_chk <- bbd_chk_data_recruitment(x)
  expect_equal(
    bbd_chk_data_recruitment(x),
    x
  )
})
