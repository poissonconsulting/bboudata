test_that("column names of bbourecruit are correct", {
  expect_true(
    chk::vld_subset(
      c(
        "PopulationName", "Year", "Month", "Day", "Cows", "Bulls",
        "UnknownAdults", "Yearlings", "Calves"
      ),
      colnames(bbourecruit)
    )
  )
}
)
