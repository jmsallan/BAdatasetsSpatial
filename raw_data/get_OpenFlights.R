# https://openflights.org/data.html

of_routes <- read.table("https://raw.githubusercontent.com/jpatokal/openflights/master/data/routes.dat", sep = ",", header = FALSE)

names(of_routes) <- c("airline", "airline_of", "org", "org_of", "dst", "dst_of", "codeshare", "stops", "equipment")

of_airports <- read.table("https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat", sep = ",", header = FALSE)

names(of_airports) <- c("airport_of", "name", "city", "country", "IATA", "ICAO", "lat", "lon", "alt", "timezone", "DST", "tz", "type", "source")

of_airlines <- read.table("https://raw.githubusercontent.com/jpatokal/openflights/master/data/airlines.dat", sep = ",", header = FALSE)

names(of_airlines) <- c("airline_of", "name", "alias", "IATA", "ICAO", "callsign", "country", "active")

of_aircraft <- read.table("https://raw.githubusercontent.com/jpatokal/openflights/master/data/planes.dat", sep = ",", header = FALSE)

names(of_aircraft) <- c("name", "IATA", "ICAO")

of_countries <- read.table("https://raw.githubusercontent.com/jpatokal/openflights/master/data/countries.dat", sep = ",", header = FALSE)

names(of_countries) <- c("name", "ISO", "dafif")

save.image("of.RData")

#---- cleaning airports -----

library(dplyr)

of_airports %>% summarise_all(~ sum(. == "\\N")) %>% glimpse()

of_airports <- of_airports %>% mutate_if(is.character, ~ gsub('\\\\N', NA, .))

of_airports %>% summarise_all(~ sum(is.na(.))) %>% glimpse()

of_airports <- of_airports %>% select(-c(airport_of, type, source))

save(of_airports, file = "of_airports.RData")

#---- cleaning routes -----

of_routes %>% glimpse()

unique(of_routes$codeshare)

of_routes %>% filter(codeshare == "Y")

of_routes %>% filter(org == "GES", dst == "MNL")

of_routes <- of_routes %>% mutate(codeshare = replace(codeshare, which(codeshare == ""), "N"))

of_routes <- of_routes %>% select(-c(airline_of, org_of, dst_of))

save(of_routes, file = "of_routes.RData")

#---- cleaning airlines -----

odd_IATA <- unique(of_airlines$IATA)[which(!grepl("^[0-9A-Z]", unique(of_airlines$IATA)))]

icao <- unique(of_airlines$ICAO)

of_airlines %>% filter(ICAO == "\\\\'\\\\")



of_airlines <- of_airlines %>% filter(!IATA %in% odd_IATA)
