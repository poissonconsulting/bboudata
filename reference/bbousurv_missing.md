# Sample Data with Unobserved Years

The data contains anonymized survival information for boreal caribou
population 'C', with years 2010-2013 represented as single placeholder
rows with all-NA measurement columns. These placeholder rows signal
unobserved years to the model: the data pipeline uses them to set Annual
factor levels, then strips them before building the likelihood. Random
effects for unobserved years are estimated purely from the hierarchical
prior. The dataset follows the methodology described in DeCesare et al.
(2012) for estimating population growth rates using adult female
survival data.

## Usage

``` r
bbousurv_missing
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

## Details

The data is released under the [Open Government Licence -
Alberta](https://open.alberta.ca/licence)

## References

DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D.,
& Neufeld, L. (2012). Estimating ungulate recruitment and growth rates
using age ratios. The Journal of Wildlife Management, 76(1), 144-153.
doi:10.1002/jwmg.244
