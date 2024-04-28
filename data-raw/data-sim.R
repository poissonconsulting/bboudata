library(bbousims)

seed <- 102

# basics
nsims <- 1
month_collar = 1L
month_composition = 9L
nyear <- 20
# 90 observed, assume ~ 20% coverage
adult_females = 500
# in example datasets typically median 5 and interquartile range 2-7
group_size = 5
# from eg data
group_min_size <- 2
proportion_adult_female = 0.65
proportion_yearling_female = 0.5
probability_unsexed_adult_female = 0.01
probability_unsexed_adult_male = 0.01
probability_uncertain_survival = 0
probability_uncertain_mortality = 0.01

# demographic rates, stable pop
saf <- 0.86
saf_annual_sd <- 0.35
saf_month_sd <- 0.1
saf_annual_month_sd <- 0.01
saf_trend <- 0
scf <- 0.5
scf_annual_sd <- 0.35
scf_month_sd <- 0.1
scf_annual_month_sd <- 0.01
scf_trend <- 0

caf = 0.7
caf_annual_sd <- 0
caf_trend <- 0

# low coverage, stable ------------------------------------------------------------
group_coverage <- c(0.2)
collared_adult_females <- c(10)

set.seed(seed)
survival <- bbs_survival_caribou(survival_adult_female = saf,
                                 annual_sd_adult_female = saf_annual_sd,
                                 month_sd_adult_female = saf_month_sd,
                                 annual_month_sd_adult_female = saf_annual_month_sd,
                                 trend_adult_female = saf_trend,
                                 survival_calf_female = scf,
                                 annual_sd_calf_female = scf_annual_sd,
                                 month_sd_calf_female = scf_month_sd,
                                 annual_month_sd_calf_female = scf_annual_month_sd,
                                 trend_calf_female = scf_trend,
                                 nyear = nyear)

set.seed(seed)
fecundity <- bbs_fecundity_caribou(calves_per_adult_female = caf,
                                   annual_sd = caf_annual_sd,
                                   trend = caf_trend,
                                   nyear = nyear)


set.seed(seed)
data1 <- bbs_simulate_caribou(nsims = nsims,
                     survival = survival,
                     fecundity = fecundity,
                     collared_adult_females = collared_adult_females,
                     group_coverage = group_coverage,
                     group_size = group_size,
                     group_min_size = group_min_size,
                     month_composition = month_composition,
                     adult_females = adult_females,
                     proportion_adult_female = proportion_adult_female,
                     proportion_yearling_female = proportion_yearling_female,
                     month_collar = month_collar,
                     probability_uncertain_survival = probability_uncertain_survival,
                     probability_uncertain_mortality = probability_uncertain_mortality,
                     probability_unsexed_adult_female = probability_unsexed_adult_female,
                     probability_unsexed_adult_male = probability_unsexed_adult_male)

bbourecruit_sim1 <- data1[[1]]$recruitment
bbousurv_sim1 <- data1[[1]]$survival

usethis::use_data(bbourecruit_sim1, overwrite = TRUE)
usethis::use_data(bbousurv_sim1, overwrite = TRUE)

# high coverage, stable ------------------------------------------------------------
group_coverage <- c(0.7)
collared_adult_females <- c(40)

set.seed(seed)
survival <- bbs_survival_caribou(survival_adult_female = saf,
                                 annual_sd_adult_female = saf_annual_sd,
                                 month_sd_adult_female = saf_month_sd,
                                 annual_month_sd_adult_female = saf_annual_month_sd,
                                 trend_adult_female = saf_trend,
                                 survival_calf_female = scf,
                                 annual_sd_calf_female = scf_annual_sd,
                                 month_sd_calf_female = scf_month_sd,
                                 annual_month_sd_calf_female = scf_annual_month_sd,
                                 trend_calf_female = scf_trend,
                                 nyear = nyear)

set.seed(seed)
fecundity <- bbs_fecundity_caribou(calves_per_adult_female = caf,
                                   annual_sd = caf_annual_sd,
                                   trend = caf_trend,
                                   nyear = nyear)


set.seed(seed)
data2 <- bbs_simulate_caribou(nsims = nsims,
                             survival = survival,
                             fecundity = fecundity,
                             collared_adult_females = collared_adult_females,
                             group_coverage = group_coverage,
                             group_size = group_size,
                             group_min_size = group_min_size,
                             month_composition = month_composition,
                             adult_females = adult_females,
                             proportion_adult_female = proportion_adult_female,
                             proportion_yearling_female = proportion_yearling_female,
                             month_collar = month_collar,
                             probability_uncertain_survival = probability_uncertain_survival,
                             probability_uncertain_mortality = probability_uncertain_mortality,
                             probability_unsexed_adult_female = probability_unsexed_adult_female,
                             probability_unsexed_adult_male = probability_unsexed_adult_male)

bbourecruit_sim2 <- data2[[1]]$recruitment
bbousurv_sim2 <- data2[[1]]$survival

usethis::use_data(bbourecruit_sim2, overwrite = TRUE)
usethis::use_data(bbousurv_sim2, overwrite = TRUE)

# medium coverage, survival negative trend --------------------------------------------------
group_coverage <- c(0.5)
collared_adult_females <- c(25)
saf_trend <- -0.02

set.seed(seed)
survival <- bbs_survival_caribou(survival_adult_female = saf,
                                 annual_sd_adult_female = saf_annual_sd,
                                 month_sd_adult_female = saf_month_sd,
                                 annual_month_sd_adult_female = saf_annual_month_sd,
                                 trend_adult_female = saf_trend,
                                 survival_calf_female = scf,
                                 annual_sd_calf_female = scf_annual_sd,
                                 month_sd_calf_female = scf_month_sd,
                                 annual_month_sd_calf_female = scf_annual_month_sd,
                                 trend_calf_female = scf_trend,
                                 nyear = nyear)

set.seed(seed)
fecundity <- bbs_fecundity_caribou(calves_per_adult_female = caf,
                                   annual_sd = caf_annual_sd,
                                   trend = caf_trend,
                                   nyear = nyear)


set.seed(seed)
data3 <- bbs_simulate_caribou(nsims = nsims,
                             survival = survival,
                             fecundity = fecundity,
                             collared_adult_females = collared_adult_females,
                             group_coverage = group_coverage,
                             group_size = group_size,
                             group_min_size = group_min_size,
                             month_composition = month_composition,
                             adult_females = adult_females,
                             proportion_adult_female = proportion_adult_female,
                             proportion_yearling_female = proportion_yearling_female,
                             month_collar = month_collar,
                             probability_uncertain_survival = probability_uncertain_survival,
                             probability_uncertain_mortality = probability_uncertain_mortality,
                             probability_unsexed_adult_female = probability_unsexed_adult_female,
                             probability_unsexed_adult_male = probability_unsexed_adult_male)

if(FALSE){
  bbs_plot_population(data3)
}

bbourecruit_sim3 <- data3[[1]]$recruitment
bbousurv_sim3 <- data3[[1]]$survival

usethis::use_data(bbourecruit_sim3, overwrite = TRUE)
usethis::use_data(bbousurv_sim3, overwrite = TRUE)

# low-ish coverage, stable, small population --------------------------------------------------
group_coverage <- c(0.4)
collared_adult_females <- c(20)
adult_females <- 50
saf_annual_sd <- 0.2
scf_annual_sd <- 0.2

set.seed(seed)
survival <- bbs_survival_caribou(survival_adult_female = saf,
                                 annual_sd_adult_female = saf_annual_sd,
                                 month_sd_adult_female = saf_month_sd,
                                 annual_month_sd_adult_female = saf_annual_month_sd,
                                 trend_adult_female = saf_trend,
                                 survival_calf_female = scf,
                                 annual_sd_calf_female = scf_annual_sd,
                                 month_sd_calf_female = scf_month_sd,
                                 annual_month_sd_calf_female = scf_annual_month_sd,
                                 trend_calf_female = scf_trend,
                                 nyear = nyear)

set.seed(seed)
fecundity <- bbs_fecundity_caribou(calves_per_adult_female = caf,
                                   annual_sd = caf_annual_sd,
                                   trend = caf_trend,
                                   nyear = nyear)


set.seed(seed)
data4 <- bbs_simulate_caribou(nsims = nsims,
                              survival = survival,
                              fecundity = fecundity,
                              collared_adult_females = collared_adult_females,
                              group_coverage = group_coverage,
                              group_size = group_size,
                              group_min_size = group_min_size,
                              month_composition = month_composition,
                              adult_females = adult_females,
                              proportion_adult_female = proportion_adult_female,
                              proportion_yearling_female = proportion_yearling_female,
                              month_collar = month_collar,
                              probability_uncertain_survival = probability_uncertain_survival,
                              probability_uncertain_mortality = probability_uncertain_mortality,
                              probability_unsexed_adult_female = probability_unsexed_adult_female,
                              probability_unsexed_adult_male = probability_unsexed_adult_male)


if(FALSE){
  bbs_plot_population(data4)
}

bbourecruit_sim4 <- data4[[1]]$recruitment
bbousurv_sim4 <- data4[[1]]$survival

usethis::use_data(bbourecruit_sim4, overwrite = TRUE)
usethis::use_data(bbousurv_sim4, overwrite = TRUE)
