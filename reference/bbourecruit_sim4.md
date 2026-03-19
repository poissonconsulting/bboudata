# Simulated Data for Scenario 4

Data are simulated with
[`bbousims`](https://poissonconsulting.github.io/bbousims/) package.
This is a stable population spanning 20 years with small population size
(50 initial adult females) and annual variation on female adult survival
and female calf survival. Coverage is medium, with 40% of groups
observed and 20 collars. This dataset follows the methodology described
in DeCesare et al. (2012) for estimating population growth rates using
calf/cow age ratios.

## Usage

``` r
bbourecruit_sim4
```

## Format

A tibble with columns:

- PopulationName:

  Name of the population

- Year:

  The year the observation occurred

- Month:

  The month the observation occurred

- Day:

  The day the observation occurred

- Cows:

  The number of cows counted in the group

- Bulls:

  The number of bulls counted in the group

- UnknownAdults:

  The number of adults which could not be sexed in the group

- Yearlings:

  The number of yearlings counted in the group

- Calves:

  The number of calves counted in the group

## References

DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D.,
& Neufeld, L. (2012). Estimating ungulate recruitment and growth rates
using age ratios. The Journal of Wildlife Management, 76(1), 144-153.
doi:10.1002/jwmg.244
