# Simulated Data for Scenario 3

Data are simulated with
[`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
This is a population spanning 20 years with negative trend on female
adult survival and additional annual variation on female adult survival
and female calf survival. Coverage is medium, with 50% of groups
observed and 25 collars. The dataset follows methodology described in
DeCesare et al. (2012) for estimating population growth rates using
adult female survival data.

## Usage

``` r
bbousurv_sim3
```

## Format

A tibble with columns:

- PopulationName:

  Name of the population

- Year:

  The year the observation occurred

- Month:

  The month the observation occurred

- StartTotal:

  The total number of collared caribou at the start of the month

- MortalitiesCertain:

  The number of confirmed caribou mortalities in the month

- MortalitiesUncertain:

  The total number of mortalities that were not confirmed in that month

## References

DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D.,
& Neufeld, L. (2012). Estimating ungulate recruitment and growth rates
using age ratios. The Journal of Wildlife Management, 76(1), 144-153.
doi:10.1002/jwmg.244
