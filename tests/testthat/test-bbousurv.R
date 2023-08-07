test_that("column names of bbousurv are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "StartTotal", "MortalitiesCertain",
      "MortalitiesUncertain"
    ),
    colnames(bbousurv)
  )
})

test_that("confirming correct bbousurv data classes", {
  expect_s3_class(bbousurv, "data.frame")
  expect_type(bbousurv$PopulationName, "character")
  expect_type(bbousurv$Year, "integer")
  expect_type(bbousurv$Month, "integer")
  expect_type(bbousurv$StartTotal, "integer")
  expect_type(bbousurv$MortalitiesCertain, "integer")
  expect_type(bbousurv$MortalitiesUncertain, "integer")
})

test_that("confirming no NAs in bbousurv data", {
  expect_true(chk::vld_not_any_na(bbousurv$PopulationName))
  expect_true(chk::vld_not_any_na(bbousurv$Year))
  expect_true(chk::vld_not_any_na(bbousurv$Month))
  expect_true(chk::vld_not_any_na(bbousurv$StartTotal))
  expect_true(chk::vld_not_any_na(bbousurv$MortalitiesCertain))
  expect_true(chk::vld_not_any_na(bbousurv$MortalitiesUncertain))
})
