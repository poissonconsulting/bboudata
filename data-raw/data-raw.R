# Copyright 2023 Province of Alberta
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

path <- file.path("data-raw", "recruitment.xlsx")
sheets <- readxl::excel_sheets(path)

bbourecuit_a <- readxl::read_excel(path, sheets[1])
bbourecuit_b <- readxl::read_excel(path, sheets[2])
bbourecuit_c <- readxl::read_excel(path, sheets[3])

usethis::use_data(bbourecuit_a, overwrite = TRUE)
usethis::use_data(bbourecuit_b, overwrite = TRUE)
usethis::use_data(bbourecuit_c, overwrite = TRUE)

path <- file.path("data-raw", "survival.xlsx")
sheets <- readxl::excel_sheets(path)

bbousurv_a <- readxl::read_excel(path, sheets[1])
bbousurv_b <- readxl::read_excel(path, sheets[2])
bbousurv_c <- readxl::read_excel(path, sheets[3])

usethis::use_data(bbousurv_a, overwrite = TRUE)
usethis::use_data(bbousurv_b, overwrite = TRUE)
usethis::use_data(bbousurv_c, overwrite = TRUE)
