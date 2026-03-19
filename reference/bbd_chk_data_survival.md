# Check survival data structure

The data must follow all requirements to not error. This format is
required for usage of the bbou suite of tools.

## Usage

``` r
bbd_chk_data_survival(
  data,
  x_name = deparse(substitute(data)),
  multi_population = FALSE,
  allow_missing = FALSE
)
```

## Format

The data must follow the requirements:

- PopulationName:

  Name of the herd or population

- Year:

  The calendar year the observation occurred. Must be a positive
  integer.

- Month:

  The calendar month the observation occurred. Must be an integer
  between 1 and 12.

- StartTotal:

  The total number of collared caribou at the start of the month. Must
  be a positive integer.

- MortalitiesCertain:

  The total number of confirmed mortalities in that month. Must be a
  positive integer.

- MortalitiesUncertain:

  The total number of mortalities that were not confirmed in that month.
  Must be a positive integer.

## Arguments

- data:

  The data.frame to check.

- x_name:

  A string of the name of the data.frame.

- multi_population:

  A flag indicating whether to accept multiple populations.

- allow_missing:

  A flag indicating whether to accept placeholder rows for unobserved
  years. When TRUE, rows with all-NA measurement columns (Month,
  StartTotal, MortalitiesCertain, MortalitiesUncertain) are permitted.
  These rows signal unobserved years to the model.

## Value

An invisible copy of the original data.frame.

## Examples

``` r
bbd_chk_data_survival(bbousurv_a)
bbd_chk_data_survival(bbousurv_b)
bbd_chk_data_survival(bbousurv_c)

# this example will error as it doesn't follow the requirements
x <- bbousurv_c
x[1, 3] <- 14L
try(bbd_chk_data_survival(x))
#> Error in bbd_chk_data_survival(x) : 
#>   Column Month of x must have values between 1 and 12.
```
