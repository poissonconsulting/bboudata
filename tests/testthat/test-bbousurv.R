test_that("column names of bbousurv are correct", {
  expect_true(
    chk::vld_subset(
      c(
        "PopulationName", "Year", "Month", "StartTotal", "MortalitiesCertain",
        "MortalitiesUncertain"
      ),
      colnames(bbousurv)
    )
  )
}
)
