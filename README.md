
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

bboudata::bbourecruit
```

    ## # A tibble: 1 × 9
    ##   PopulationName  Year Month   Day  Cows Bulls UnknownAdults Yearlings Calves
    ##   <chr>          <int> <int> <int> <int> <int>         <int>     <int>  <int>
    ## 1 A               2023     1     1    10    10             0         1      1

``` r
bboudata::bbousurv
```

    ## # A tibble: 1 × 6
    ##   PopulationName  Year Month StartTotal MortalitiesCertain MortalitiesUncertain
    ##   <chr>          <int> <int>      <int>              <int>                <int>
    ## 1 A               2023     1         10                  0                    0

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
