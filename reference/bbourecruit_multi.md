# Sample Data for Multiple Populations

The data contains anonymized recruitment information for boreal caribou
populations 'A', 'B' and 'C' with staggered year ranges, an internal gap
(B missing 2009-2010), and unobserved year placeholder rows (2016 for
all populations). Designed to test multi-population analysis, latent
random effects for missing year-population combos, and unobserved year
prediction. Filter to single population or remove placeholder rows
(where Month is NA) as needed. This dataset follows the methodology
described in DeCesare et al. (2012) for estimating population growth
rates using calf/cow age ratios.

## Usage

``` r
bbourecruit_multi
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

## Details

The data is released under the [Open Government Licence -
Alberta](https://open.alberta.ca/licence)

## References

DeCesare, N.J., Hebblewhite, M., Bradley, M., Smith, K.G., Hervieux, D.,
& Neufeld, L. (2012). Estimating ungulate recruitment and growth rates
using age ratios. The Journal of Wildlife Management, 76(1), 144-153.
doi:10.1002/jwmg.244
