<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# bboudata 0.4.0

Updated for bboutools 1.3.0.

## New features

* `bbd_chk_data_survival()` and `bbd_chk_data_recruitment()` gained `multi_population` and `allow_missing` arguments to support multi-population data and unobserved year placeholder rows.
* `bbd_chk_data_survival()` and `bbd_chk_data_recruitment()` now validate that placeholder rows have all measurement columns as NA (not just some) when `allow_missing = TRUE` (#94).

## Datasets

* Added `bbousurv_multi` and `bbourecruit_multi` — multi-population datasets (populations A, B, C) with staggered year ranges, an internal data gap, and unobserved year placeholder rows.
* Added `bbousurv_missing` and `bbourecruit_missing` — single-population (C) datasets with unobserved year placeholder rows.
* Added `bbousurv_annual` — multi-population (A, C) aggregate annual survival data with staggered years.

# bboudata 0.3.2

- Improve dataset documentation by clarifying that empirical data are 'anonymized' and adding DeCesare et al. 2012 reference. 

# bboudata 0.3.1

- Fix documentation as number of years the data sets span was incorrect. 

# bboudata 0.3.0

- Add 4 simulated data sets
  - Recruitment
    - `bbourecruit_sim1`
    - `bbourecruit_sim2`
    - `bbourecruit_sim3`
    - `bbourecruit_sim4`
  - Survival
    - `bbousurv_sim1`
    - `bbousurv_sim2`
    - `bbousurv_sim3`
    - `bbousurv_sim4`

# bboudata 0.2.0.9000

- Internal updates and improvements. 

# bboudata 0.2.0

- Adding check data functions which error if data is not formatted as required.
  - `bbd_chk_data_recruitment()`
  - `bbd_chk_data_survival()`
- Added sections to pkgdown reference page.
- Added test coverage action.
- Date error correction in `bbourecruit_a`.

# bboudata 0.1.0

- Package is ready for 1st public release.
- Added a `NEWS.md` file to track changes to the package.
