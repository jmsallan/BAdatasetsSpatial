
WorldMap1_110 %>% filter(NAME == "Spain") %>% select(ISO_A3, NAME, NAME_ES)

sort(WorldMap1_110$NAME)

# https://stackoverflow.com/questions/28013850/change-value-of-variable-with-dplyr
# France FR FRA
# Norway NO NOR
# Kosovo XK XKX (in World Bank reports)
# Somaliland, Kosovo and North Cyprus do not have ISO A3 code and do not appear in World Bank reports

data("WorldMap1_110")

WorldMap1_110 %>% filter(NAME %in% c("France", "Norway", "Kosovo")) %>% select(NAME, ISO_A2, ISO_A3)

WorldMap1_110 <- WorldMap1_110 %>% 
  mutate_if(is.factor, as.character)

WorldMap1_110 <- WorldMap1_110 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "France", "FRA"))
         
WorldMap1_110 <- WorldMap1_110 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "Norway", "NOR"))

WorldMap1_110 <- WorldMap1_110 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "Kosovo", "XKX"))

WorldMap1_110 %>% filter(NAME %in% c("France", "Norway", "Kosovo")) %>% select(NAME, ISO_A2, ISO_A3)

data("WorldMap1_10")

WorldMap1_10 %>% filter(NAME %in% c("France", "Norway", "Kosovo")) %>% select(NAME, ISO_A2, ISO_A3)

WorldMap1_10 <- WorldMap1_10 %>% 
  mutate_if(is.factor, as.character)

WorldMap1_10 <- WorldMap1_10 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "France", "FRA"))

WorldMap1_10 <- WorldMap1_10 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "Norway", "NOR"))

WorldMap1_10 <- WorldMap1_10 %>% 
  mutate(ISO_A3 = replace(ISO_A3, NAME == "Kosovo", "XKX"))

WorldMap1_10 %>% filter(NAME %in% c("France", "Norway", "Kosovo")) %>% select(NAME, ISO_A2, ISO_A3)

