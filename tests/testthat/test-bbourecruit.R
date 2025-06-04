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

test_that("bbousurv snapshots", {
  expect_snapshot({
    print(bbourecruit_a, width = 120, n = 1200)
    print(bbourecruit_b, width = 120, n = 1000)
    print(bbourecruit_c, width = 120, n = 1000)
  })
})

test_that("column names of bbourecruit_a are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "Day", "Cows", "Bulls",
      "UnknownAdults", "Yearlings", "Calves"
    ),
    colnames(bbourecruit_a)
  )
})

test_that("column names of bbourecruit_b are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "Day", "Cows", "Bulls",
      "UnknownAdults", "Yearlings", "Calves"
    ),
    colnames(bbourecruit_b)
  )
})

test_that("column names of bbourecruit_c are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "Day", "Cows", "Bulls",
      "UnknownAdults", "Yearlings", "Calves"
    ),
    colnames(bbourecruit_c)
  )
})

test_that("confirming correct bbourecruit_a data classes", {
  expect_s3_class(bbourecruit_a, "data.frame")
  expect_type(bbourecruit_a$PopulationName, "character")
  expect_type(bbourecruit_a$Year, "integer")
  expect_type(bbourecruit_a$Month, "integer")
  expect_type(bbourecruit_a$Day, "integer")
  expect_type(bbourecruit_a$Cows, "integer")
  expect_type(bbourecruit_a$Bulls, "integer")
  expect_type(bbourecruit_a$UnknownAdults, "integer")
  expect_type(bbourecruit_a$Yearlings, "integer")
  expect_type(bbourecruit_a$Calves, "integer")
})

test_that("confirming correct bbourecruit_b data classes", {
  expect_s3_class(bbourecruit_b, "data.frame")
  expect_type(bbourecruit_b$PopulationName, "character")
  expect_type(bbourecruit_b$Year, "integer")
  expect_type(bbourecruit_b$Month, "integer")
  expect_type(bbourecruit_b$Day, "integer")
  expect_type(bbourecruit_b$Cows, "integer")
  expect_type(bbourecruit_b$Bulls, "integer")
  expect_type(bbourecruit_b$UnknownAdults, "integer")
  expect_type(bbourecruit_b$Yearlings, "integer")
  expect_type(bbourecruit_b$Calves, "integer")
})

test_that("confirming correct bbourecruit_c data classes", {
  expect_s3_class(bbourecruit_c, "data.frame")
  expect_type(bbourecruit_c$PopulationName, "character")
  expect_type(bbourecruit_c$Year, "integer")
  expect_type(bbourecruit_c$Month, "integer")
  expect_type(bbourecruit_c$Day, "integer")
  expect_type(bbourecruit_c$Cows, "integer")
  expect_type(bbourecruit_c$Bulls, "integer")
  expect_type(bbourecruit_c$UnknownAdults, "integer")
  expect_type(bbourecruit_c$Yearlings, "integer")
  expect_type(bbourecruit_c$Calves, "integer")
})

test_that("confirming no NAs in bbourecruit_a data", {
  expect_true(chk::vld_not_any_na(bbourecruit_a$PopulationName))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Year))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Month))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Day))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Cows))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Bulls))
  expect_true(chk::vld_not_any_na(bbourecruit_a$UnknownAdults))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Yearlings))
  expect_true(chk::vld_not_any_na(bbourecruit_a$Calves))
})

test_that("confirming no NAs in bbourecruit_b data", {
  expect_true(chk::vld_not_any_na(bbourecruit_b$PopulationName))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Year))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Month))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Day))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Cows))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Bulls))
  expect_true(chk::vld_not_any_na(bbourecruit_b$UnknownAdults))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Yearlings))
  expect_true(chk::vld_not_any_na(bbourecruit_b$Calves))
})

test_that("confirming no NAs in bbourecruit_c data", {
  expect_true(chk::vld_not_any_na(bbourecruit_c$PopulationName))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Year))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Month))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Day))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Cows))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Bulls))
  expect_true(chk::vld_not_any_na(bbourecruit_c$UnknownAdults))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Yearlings))
  expect_true(chk::vld_not_any_na(bbourecruit_c$Calves))
})

test_that("dates are all valid dates", {
  expect_true(
    all(
      !is.na(
        as.Date(
          paste0(
            bbourecruit_a$Year, "-", bbourecruit_a$Month, "-", bbourecruit_a$Day
          ),
          "%Y-%m-%d"
        )
      )
    )
  )
  expect_true(
    all(
      !is.na(
        as.Date(
          paste0(
            bbourecruit_b$Year, "-", bbourecruit_b$Month, "-", bbourecruit_b$Day
          ),
          "%Y-%m-%d"
        )
      )
    )
  )
  expect_true(
    all(
      !is.na(
        as.Date(
          paste0(
            bbourecruit_c$Year, "-", bbourecruit_c$Month, "-", bbourecruit_c$Day
          ),
          "%Y-%m-%d"
        )
      )
    )
  )
})

test_that("bbousurv sim snapshots", {
  expect_snapshot({
    print(bbourecruit_sim1, width = 120, n = 1200)
    print(bbourecruit_sim2, width = 120, n = 1000)
    print(bbourecruit_sim3, width = 120, n = 1000)
    print(bbourecruit_sim4, width = 120, n = 1000)
  })
})
