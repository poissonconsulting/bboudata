test_that("column names of bbourecruit are correct", {
  expect_identical(
    c(
      "PopulationName", "Year", "Month", "Day", "Cows", "Bulls",
      "UnknownAdults", "Yearlings", "Calves"
    ),
    colnames(bbourecruit)
  )
})

test_that("confirming correct bbourecruit data classes", {
  expect_s3_class(bbourecruit, "data.frame")
  expect_type(bbourecruit$PopulationName, "character")
  expect_type(bbourecruit$Year, "integer")
  expect_type(bbourecruit$Month, "integer")
  expect_type(bbourecruit$Day, "integer")
  expect_type(bbourecruit$Cows, "integer")
  expect_type(bbourecruit$Bulls, "integer")
  expect_type(bbourecruit$UnknownAdults, "integer")
  expect_type(bbourecruit$Yearlings, "integer")
  expect_type(bbourecruit$Calves, "integer")
})

test_that("confirming no NAs in bbourecruit data", {
  expect_true(chk::vld_not_any_na(bbourecruit$PopulationName))
  expect_true(chk::vld_not_any_na(bbourecruit$Year))
  expect_true(chk::vld_not_any_na(bbourecruit$Month))
  expect_true(chk::vld_not_any_na(bbourecruit$Day))
  expect_true(chk::vld_not_any_na(bbourecruit$Cows))
  expect_true(chk::vld_not_any_na(bbourecruit$Bulls))
  expect_true(chk::vld_not_any_na(bbourecruit$UnknownAdults))
  expect_true(chk::vld_not_any_na(bbourecruit$Yearlings))
  expect_true(chk::vld_not_any_na(bbourecruit$Calves))
})
