# Sample Data for Multiple Populations

The data contains anonymized survival information for boreal caribou
populations 'A', 'B' and 'C' with staggered year ranges, an internal gap
(B missing 2008-2009), and unobserved year placeholder rows (2015 for
all populations). Designed to test multi-population analysis, latent
random effects for missing year-population combos, and unobserved year
prediction. Filter to single population or remove placeholder rows
(where Month is NA) as needed. This dataset follows the methodology
described in DeCesare et al. (2012) for estimating population growth
rates using adult female survival data.

## Usage

``` r
bbousurv_multi
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
