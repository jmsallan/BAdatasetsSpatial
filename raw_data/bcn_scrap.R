# https://vangdata.carto.com/tables/shapefiles_barcelona_distrito/public
# https://laura-an.carto.com/tables/shapefiles_barrio_barcelona/public

unzip("data-raw/shapefiles_barcelona_distrito.zip", exdir="/bcn_distritos")
unzip("data-raw/shapefiles_barrio_barcelona.zip", exdir="/bcn_barrios")

BCNDistricts <- st_read("data/bcn_distritos/")
BCNDistricts %>% select(n_distri)
distritos <- c("Sarrià-Sant Gervasi", "Horta-Guinardó", "Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Gràcia", "Nou Barris", "Sant Andreu", "Sant Martí")
BCNDistricts <- BCNDistricts %>% mutate(n_distri = distritos)
save(BCNDistricts, file = "BCNDistricts.RData")

BCNNeigh <- st_read("data/bcn_barrios/")
barrios <- BCNNeigh$n_barri
distritos <- BCNNeigh$n_distri
barrios <- barrios %>% select(-geometry)

a_acute <- substr(barrios[2], 6, nchar(barrios[2]))
barrios <- gsub(a_acute, "à", barrios)
o_grave <- substr(barrios[7], 4, 5)
barrios <- gsub(o_grave, "ó", barrios)
i_grave <- substr(barrios[10], 15, 16)
barrios <- gsub(i_grave, "í", barrios)
o_acute <- substr(barrios[24], 11, 12)
barrios <- gsub(o_acute, "ò", barrios)
c_trencada <- substr(barrios[32], 21, 22)
barrios <- gsub(c_trencada, "ç", barrios)
e_grave <- substr(barrios[55], 9,10)
barrios <- gsub(e_grave, "é", barrios)

# https://www.i18nqa.com/debug/utf8-debug.html
funny_chars <- data.frame(wrong_enc = c(a_acute, o_grave, i_grave, o_acute, c_trencada, e_grave, i_dieresis), utf8_enc = c("à", "ó", "í", "ò", "ç", "é", "ï"))
write_csv(funny_chars, "funny_chars.csv")

distritos <- gsub(a_acute, "à", distritos)
distritos <- gsub(o_grave, "ó", distritos)
distritos <- gsub(i_grave, "í", distritos)
distritos <- gsub(o_acute, "ò", distritos)
distritos <- gsub(c_trencada, "ç", distritos)
distritos <- gsub(e_grave, "é", distritos)
i_dieresis <- substr(distritos[5], 13, 14)
distritos <- gsub(i_dieresis, "ï", distritos)

BCNNeigh <- BCNNeigh %>% mutate(n_barri = barrios, n_distri = distritos)

BCNNeigh %>% select(n_barri, n_distri) %>% print(n=11000)
save(BCNNeigh, file="BCNNeigh.RData")
