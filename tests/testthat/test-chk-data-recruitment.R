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
})

test_that("can accept multiple populations", {
  x <- bboudata::bbourecruit_multi
  chk::expect_chk_error(
    bbd_chk_data_recruitment(x)
  )

  # multi_population alone fails because dataset includes placeholder rows
  chk::expect_chk_error(
    bbd_chk_data_recruitment(x, multi_population = TRUE)
  )

  # both flags needed for multi-pop dataset with unobserved years
  expect_equal(
    bbd_chk_data_recruitment(x, multi_population = TRUE, allow_missing = TRUE), x
  )

  # multi_population alone works when placeholder rows are removed
  x_obs <- x[!is.na(x$Month), ]
  expect_equal(bbd_chk_data_recruitment(x_obs, multi_population = TRUE), x_obs)
})

test_that("can accept missing values", {
  x <- bboudata::bbourecruit_missing
  chk::expect_chk_error(
    bbd_chk_data_recruitment(x)
  )

  expect_equal(bbd_chk_data_recruitment(x, allow_missing = TRUE), x)
})

test_that("partial NA measurement columns error with allow_missing", {
  # single column NA on one row
  x <- bboudata::bbourecruit_a
  x$Cows[1] <- NA_integer_
  chk::expect_chk_error(
    bbd_chk_data_recruitment(x, allow_missing = TRUE),
    "Placeholder rows must have all measurement columns"
  )

  # four of five columns NA on one row
  x <- bboudata::bbourecruit_a
  x$Cows[1] <- NA_integer_
  x$Bulls[1] <- NA_integer_
  x$UnknownAdults[1] <- NA_integer_
  x$Yearlings[1] <- NA_integer_
  chk::expect_chk_error(
    bbd_chk_data_recruitment(x, allow_missing = TRUE),
    "Placeholder rows must have all measurement columns"
  )
})

test_that("proper placeholder rows pass with allow_missing", {
  x <- bboudata::bbourecruit_a
  # add a proper placeholder row: all measurement columns NA
  placeholder <- x[1, ]
  placeholder$Year <- 2099L
  placeholder$Month <- NA_integer_
  placeholder$Day <- NA_integer_
  placeholder$Cows <- NA_integer_
  placeholder$Bulls <- NA_integer_
  placeholder$UnknownAdults <- NA_integer_
  placeholder$Yearlings <- NA_integer_
  placeholder$Calves <- NA_integer_
  x2 <- rbind(x, placeholder)

  chk::expect_chk_error(
    bbd_chk_data_recruitment(x2)
  )

  expect_equal(bbd_chk_data_recruitment(x2, allow_missing = TRUE), x2)
})
