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
    print(bbousurv_a, width = 120, n = 1200)
    print(bbousurv_b, width = 120, n = 1000)
    print(bbousurv_c, width = 120, n = 1000)
  })
})

test_that("column names of bbousurv_a are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "StartTotal", "MortalitiesCertain",
      "MortalitiesUncertain"
    ),
    colnames(bbousurv_a)
  )
})

test_that("column names of bbousurv_b are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "StartTotal", "MortalitiesCertain",
      "MortalitiesUncertain"
    ),
    colnames(bbousurv_b)
  )
})

test_that("column names of bbousurv_c are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "StartTotal", "MortalitiesCertain",
      "MortalitiesUncertain"
    ),
    colnames(bbousurv_c)
  )
})

test_that("confirming correct bbousurv_a data classes", {
  expect_s3_class(bbousurv_a, "data.frame")
  expect_type(bbousurv_a$PopulationName, "character")
  expect_type(bbousurv_a$Year, "integer")
  expect_type(bbousurv_a$Month, "integer")
  expect_type(bbousurv_a$StartTotal, "integer")
  expect_type(bbousurv_a$MortalitiesCertain, "integer")
  expect_type(bbousurv_a$MortalitiesUncertain, "integer")
})

test_that("confirming correct bbousurv_b data classes", {
  expect_s3_class(bbousurv_b, "data.frame")
  expect_type(bbousurv_b$PopulationName, "character")
  expect_type(bbousurv_b$Year, "integer")
  expect_type(bbousurv_b$Month, "integer")
  expect_type(bbousurv_b$StartTotal, "integer")
  expect_type(bbousurv_b$MortalitiesCertain, "integer")
  expect_type(bbousurv_b$MortalitiesUncertain, "integer")
})

test_that("confirming correct bbousurv_c data classes", {
  expect_s3_class(bbousurv_c, "data.frame")
  expect_type(bbousurv_c$PopulationName, "character")
  expect_type(bbousurv_c$Year, "integer")
  expect_type(bbousurv_c$Month, "integer")
  expect_type(bbousurv_c$StartTotal, "integer")
  expect_type(bbousurv_c$MortalitiesCertain, "integer")
  expect_type(bbousurv_c$MortalitiesUncertain, "integer")
})

test_that("confirming no NAs in bbousurv_a data", {
  expect_true(chk::vld_not_any_na(bbousurv_a$PopulationName))
  expect_true(chk::vld_not_any_na(bbousurv_a$Year))
  expect_true(chk::vld_not_any_na(bbousurv_a$Month))
  expect_true(chk::vld_not_any_na(bbousurv_a$StartTotal))
  expect_true(chk::vld_not_any_na(bbousurv_a$MortalitiesCertain))
  expect_true(chk::vld_not_any_na(bbousurv_a$MortalitiesUncertain))
})

test_that("confirming no NAs in bbousurv_b data", {
  expect_true(chk::vld_not_any_na(bbousurv_b$PopulationName))
  expect_true(chk::vld_not_any_na(bbousurv_b$Year))
  expect_true(chk::vld_not_any_na(bbousurv_b$Month))
  expect_true(chk::vld_not_any_na(bbousurv_b$StartTotal))
  expect_true(chk::vld_not_any_na(bbousurv_b$MortalitiesCertain))
  expect_true(chk::vld_not_any_na(bbousurv_b$MortalitiesUncertain))
})

test_that("confirming no NAs in bbousurv_c data", {
  expect_true(chk::vld_not_any_na(bbousurv_c$PopulationName))
  expect_true(chk::vld_not_any_na(bbousurv_c$Year))
  expect_true(chk::vld_not_any_na(bbousurv_c$Month))
  expect_true(chk::vld_not_any_na(bbousurv_c$StartTotal))
  expect_true(chk::vld_not_any_na(bbousurv_c$MortalitiesCertain))
  expect_true(chk::vld_not_any_na(bbousurv_c$MortalitiesUncertain))
})

test_that("bbousurv sim snapshots", {
  expect_snapshot({
    print(bbousurv_sim1, width = 120, n = 1200)
    print(bbousurv_sim2, width = 120, n = 1200)
    print(bbousurv_sim3, width = 120, n = 1200)
    print(bbousurv_sim4, width = 120, n = 1200)
  })
})
