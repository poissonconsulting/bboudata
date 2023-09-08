
<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/poissonconsulting/bboudata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/bboudata/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# bboudata

`bboudata` provides survival and recruitment datasets for boreal
caribou.

## Installation

You can install the development version of bboudata from
[GitHub](https://github.com/poissonconsulting/bboudata) with:

``` r
# install.packages("devtools")
devtools::install_github("poissonconsulting/bboudata")
```

## Demonstration

``` r
library(bboudata)
library(tibble) # to enhance readability

bboudata::bbourecruit_a
```

    ## # A tibble: 696 × 9
    ##    PopulationName  Year Month   Day  Cows Bulls UnknownAdults Yearlings Calves
    ##    <chr>          <int> <int> <int> <int> <int>         <int>     <int>  <int>
    ##  1 A               1990     3     9     1     1             0         0      0
    ##  2 A               1990     3     9     5     1             0         0      0
    ##  3 A               1990     3     9     4     1             0         0      0
    ##  4 A               1990     3     9     2     0             0         0      0
    ##  5 A               1990     3     9     6     0             0         0      0
    ##  6 A               1990     3     9     4     1             0         0      0
    ##  7 A               1990     3     9     5     0             0         0      0
    ##  8 A               1990     3     9     2     0             0         0      0
    ##  9 A               1990     3     9     3     2             0         0      1
    ## 10 A               1990     3     9     4     0             0         0      1
    ## # ℹ 686 more rows

``` r
bboudata::bbousurv_a
```

    ## # A tibble: 364 × 6
    ##    PopulationName  Year Month StartTotal MortalitiesCertain MortalitiesUncertain
    ##    <chr>          <int> <int>      <int>              <int>                <int>
    ##  1 A               1986     1          0                  0                    0
    ##  2 A               1986     2          8                  0                    0
    ##  3 A               1986     3          8                  0                    0
    ##  4 A               1986     4          8                  0                    0
    ##  5 A               1986     5          8                  0                    0
    ##  6 A               1986     6          8                  0                    0
    ##  7 A               1986     7          8                  0                    0
    ##  8 A               1986     8          8                  0                    0
    ##  9 A               1986     9          8                  0                    0
    ## 10 A               1986    10          8                  0                    0
    ## # ℹ 354 more rows

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/bboudata/issues).

[Pull requests](https://github.com/poissonconsulting/bboudata/pulls) are
always welcome.

## Code of Conduct

Please note that the bboudata project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
