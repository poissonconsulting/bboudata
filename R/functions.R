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
