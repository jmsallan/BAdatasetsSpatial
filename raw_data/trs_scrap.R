library(dplyr)
library(sf)
library(ggplot2)


unzip("raw_data/pt_barri.zip", exdir = "raw_data/trs_barris/")
trs_barris <- st_read("raw_data/trs_barris/TERRASSA/")

unzip("raw_data/pt_dis.zip", exdir = "raw_data/trs_districtes/")
trs_districtes <- st_read("raw_data/trs_districtes//TERRASSA/")

unzip("raw_data/pt_codis.zip", exdir = "raw_data/trs_codis/")
trs_codis <- st_read("raw_data/trs_codis//TERRASSA/")

unzip("raw_data/pt_poligons.zip", exdir = "raw_data/trs_poligons/")
trs_poligons <- st_read("raw_data/trs_poligons//TERRASSA/")

unzip("raw_data/archive-2022-feb-15-163642.zip", exdir = "raw_data/trs_cens/")
trs_cens <- st_read("raw_data/trs_cens//TERRASSA/")


trs_barris <- st_transform(trs_barris, crs = 4326)
trs_districtes <- st_transform(trs_districtes, crs = 4326)
trs_codis <- st_transform(trs_codis, crs = 4326)
trs_poligons <- st_transform(trs_poligons, crs = 4326)
trs_cens <- st_transform(trs_cens, crs = 4326)

save(trs_barris, file = "data/trs_barris.RData")
save(trs_districtes, file = "data/trs_districtes.RData")
save(trs_codis, file = "data/trs_codis.RData")
save(trs_poligons, file = "data/trs_poligons.RData")
save(trs_cens, file = "data/trs_cens.RData")




ggplot(trs_barris) +
  geom_sf() +
  theme_void()

