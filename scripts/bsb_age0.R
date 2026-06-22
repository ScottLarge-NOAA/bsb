condition <- NEesp2::species_condition(
  data = survdat$survdat,
  LWparams = NEesp2::LWparams,
  species.codes = NEesp2::species.codes,
  by_EPU = TRUE,
  by_sex = FALSE,
  length_break = c(0, 15),
  output = "full"
)

bsb_15 <- condition |>
  dplyr::filter(Species == "Black sea bass") |>
  dplyr::rename(DATA_VALUE = MeanCond)

write.csv(bsb_15, here::here('bsb_age0_condition.csv'))

#############################################################

bsb_15 <- read.csv(here::here('data/bsb_age0_condition.csv'))

NEesp2::plot_condition(data = bsb_15,
                       var = "Black sea bass",
                       return = TRUE)
