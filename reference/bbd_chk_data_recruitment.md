# Check recruitment data structure

The data must follow all requirements to not error. This format is
required for usage of the bbou suite of tools.

## Usage

``` r
bbd_chk_data_recruitment(
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

- Day:

  The day the observation occurred. Must be an integer between 1 and 31.

- Cows:

  The total number of cows counted in each group in a survey/year. Must
  be a positive integer.

- Bulls:

  The total number of bulls counted in each group in a survey/year. Must
  be a positive integer

- UnknownAdults:

  The total number of adults counted that the sex could not be
  identified in each group in a survey/year. Must be a positive integer.

- Yearlings:

  The total number of yearlings that did not have the sex identified in
  each group in a survey/year. Must be a positive integer.

- Calves:

  The total number of calves counted in each group in a survey/year.
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
  years. When TRUE, rows with all-NA measurement columns (Month, Day,
  Cows, Bulls, UnknownAdults, Yearlings, Calves) are permitted. These
  rows signal unobserved years to the model.

## Value

An invisible copy of the original data.frame.

## Examples

``` r
bbd_chk_data_recruitment(bbourecruit_a)
bbd_chk_data_recruitment(bbourecruit_b)
bbd_chk_data_recruitment(bbourecruit_c)
# this example will error as it doesn't follow the requirements
x <- bbourecruit_a
x[1, 4] <- 32L
try(bbd_chk_data_recruitment(x))
#> Error in bbd_chk_data_recruitment(x) : 
#>   Column Day of x must have values between 1 and 31.
```
