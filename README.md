
<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/poissonconsulting/bboudata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/poissonconsulting/bboudata/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/poissonconsulting/bboudata/branch/main/graph/badge.svg)](https://app.codecov.io/gh/poissonconsulting/bboudata?branch=main)
<!-- badges: end -->

# bboudata

`bboudata` provides sample survival and recruitment data for boreal
caribou.

## Installation

You can install the latest version of `bboudata` from
[GitHub](https://github.com/poissonconsulting/bboudata) with:

``` r
# install.packages("remotes")
remotes::install_github("poissonconsulting/bboudata")
```

## Demonstration

``` r
library(tibble) # to enhance readability

bboudata::bbourecruit_a
#> # A tibble: 696 × 9
#>   PopulationName  Year Month   Day  Cows Bulls UnknownAdults Yearlings Calves
#>   <chr>          <int> <int> <int> <int> <int>         <int>     <int>  <int>
#> 1 A               1990     3     9     1     1             0         0      0
#> 2 A               1990     3     9     5     1             0         0      0
#> 3 A               1990     3     9     4     1             0         0      0
#> 4 A               1990     3     9     2     0             0         0      0
#> 5 A               1990     3     9     6     0             0         0      0
#> # ℹ 691 more rows

bboudata::bbousurv_a
#> # A tibble: 364 × 6
#>   PopulationName  Year Month StartTotal MortalitiesCertain MortalitiesUncertain
#>   <chr>          <int> <int>      <int>              <int>                <int>
#> 1 A               1986     1          0                  0                    0
#> 2 A               1986     2          8                  0                    0
#> 3 A               1986     3          8                  0                    0
#> 4 A               1986     4          8                  0                    0
#> 5 A               1986     5          8                  0                    0
#> # ℹ 359 more rows
```

## bbou Suite

`bboudata` is part of the bbou suite of tools. Other packages in this
suite include:

- [bboutools](https://github.com/poissonconsulting/bboutools)
- [bbouretro](https://github.com/poissonconsulting/bbouretro)
- [bboushiny](https://github.com/poissonconsulting/bboushiny)
- [bbousims](https://github.com/poissonconsulting/bbousims)

## Contribution

Please report any
[issues](https://github.com/poissonconsulting/bboudata/issues).

## Code of Conduct

Please note that the bboudata project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
