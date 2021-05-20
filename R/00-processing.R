# load('public-data/lab.range.rda')
# lab_bounds <- lab.range[, -1] %>%
#   colMeans() %>%
#   data.frame(value = .) %>%
#   rownames_to_column() %>%
#   separate(col = rowname, into = c('LOINC', 'bound'), sep = '_') %>%
#   mutate(LOINC = gsub('loinc', '', LOINC) %>% gsub('\\.', '-', .),
#          value = exp(value)) %>%
#   pivot_wider(names_from = 'bound', values_from = 'value') %>%
#   left_join(lab_mapping, by = 'LOINC') %>%
#   {.}
# write_csv(lab_bounds, 'public-data/lab_bounds.csv')
