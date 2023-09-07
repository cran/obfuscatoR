## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(obfuscatoR)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5)

## -----------------------------------------------------------------------------
design <- generate_designs(design_opt_input)

## -----------------------------------------------------------------------------
print_design(design)

## -----------------------------------------------------------------------------
print_design(design, print_all = TRUE)

## -----------------------------------------------------------------------------
entropy <- calculate_entropy(design)

## -----------------------------------------------------------------------------
print_entropy(entropy)

## -----------------------------------------------------------------------------
print_entropy(entropy, print_all = TRUE)

## -----------------------------------------------------------------------------
prior_probs <- c(0.2, 0.3, 0.15, 0.35)
entropy <- calculate_entropy(design, priors = prior_probs)
print_entropy(entropy, print_all = TRUE)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5,
                         obligatory = 1)

design <- generate_designs(design_opt_input)

print_design(design, FALSE)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5,
                         min = 2, 
                         max = 3,
                         obligatory = 1)

design <- generate_designs(design_opt_input)

print_design(design, FALSE)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5,
                         min_fit = 2,
                         obligatory = 1)

design <- generate_designs(design_opt_input)

print_design(design, FALSE)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5,
                         considered_rule = 3,
                         sd_entropy = 0.15)

design <- generate_designs(design_opt_input)

print_design(design, FALSE)

## -----------------------------------------------------------------------------
entropy <- calculate_entropy(design)

print_entropy(entropy)

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5,
                         considered_rule = 3,
                         designs = 2)

design <- generate_designs(design_opt_input)

print_design(design, TRUE)

## -----------------------------------------------------------------------------
entropy <- calculate_entropy(design)

print_entropy(entropy)

## ---- eval = FALSE------------------------------------------------------------
#  print_entropy(entropy, print_all = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  save_design(design, "my_designs")

## -----------------------------------------------------------------------------
design_opt_input <- list(rules = 4,
                         actions = 5)

design <- generate_designs(design_opt_input)
entropy <- calculate_entropy(design)

payout <- calculate_payouts(entropy,
                            pay_obs = 10,
                            pay_no_guess = 5,
                            pay_dm = 5,
                            deterministic = FALSE)

## -----------------------------------------------------------------------------
print_payout(payout, print_all = TRUE)

