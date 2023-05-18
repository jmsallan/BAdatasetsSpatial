#' A map of the world (1:10m)
#'
#' @description A map of the world loaded as a sf object (scale 1:10m)
#'
#' Countries distinguish between metropolitan (homeland) and independent and semi-independent portions of sovereign states. Each country is coded with a world region that roughly follows the United Nations setup. Countries are coded with standard ISO and FIPS codes. French INSEE codes are also included. Includes some thematic data from the United Nations (1), U.S. Central Intelligence Agency, and elsewhere. The map is in a 1:10m scale, suitable for detailed maps of specific regions.
#'
#' @source \url{https://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-0-countries/}
#'
#' @examples
#'
#' WorldMap1_10
#'
'WorldMap1_10'

#' A map of world states (scale 1:10m)
#'
#' @description A map of world states loaded as a sf object(scale 1:10m)
#'
#' Internal, first-order administrative boundaries and polygons for all but a few tiny countries. Includes name attributes (including diacritical marks), name variants, and some statistical codes (FIPS, ISO, HASC).
#'
#' @source \url{https://www.naturalearthdata.com/downloads/10m-cultural-vectors/10m-admin-1-states-provinces/}
#'
#' @examples
#'
#' WorldStates1_10
#'
'WorldStates1_10'

#' A map of states of the United States of America (scale 1:110m)
#'
#' @description A map of states of the United States of America loaded as a sf object (scale 1:110m)
#'
#' Internal, first-order administrative boundaries and polygons for the United States of America.
#'
#' @source \url{https://www.naturalearthdata.com/downloads/110m-cultural-vectors/110m-admin-1-states-provinces/}
#'
#' @examples
#'
#' USStates1_110
#'
'USStates1_110'

#' A map of the world (1:110m)
#'
#' @description A map of the world loaded as a sf object (scale 1:110m)
#'
#' Countries distinguish between metropolitan (homeland) and independent and semi-independent portions of sovereign states. Each country is coded with a world region that roughly follows the United Nations setup. Countries are coded with standard ISO and FIPS codes. French INSEE codes are also included. Includes some thematic data from the United Nations (1), U.S. Central Intelligence Agency, and elsewhere. The map is in a 1:110m scale, suitable for schematic maps of the world.
#'
#' @source \url{https://www.naturalearthdata.com/downloads/10m-cultural-vectors/110m-admin-0-countries/}
#'
#' @examples
#'
#' WorldMap1_110
#'
'WorldMap1_110'

#' Data of world countries
#'
#' @description A data frame containing information from 188 world countries.
#'
#' \describe{
#' \item{iso_a2}{ISO 3166-1 alpha-2 country codes.}
#' \item{name_long}{Long name of the country.}
#' \item{continent}{Continent the country belongs to.}
#' \item{region_un}{UN region.}
#' \item{subregion}{UN subregion.}
#' \item{type}{Variable indicating if it is a Sovereign Country, a Country, a Dependency, a Disputed territory or with Indeterminate status.}
#' \item{area_km2}{Country area.}
#' \item{pop}{Population.}
#' \item{liefExp}{Life expectancy.}
#' \item{gdpPercap}{gdp per capita.}
#' \item{lat}{Average latitude.}
#' \item{lon}{Average longitude.}
#' }
#'
#' @source data retrieved from the world bank, available in the spData package.
#'
#' @examples
#'
#' WorldMapData
#'
'WorldMapData'

#' Data of world cities
#'
#' @description A data frame containing information from 15,493 cities
#'
#' \describe{
#' \item{city}{The city name in utf-8 encoding}
#' \item{city_ascii}{The city name in ascii (no accents and special characters).}
#' \item{lat}{Latitude.}
#' \item{lon}{Longitude.}
#' \item{country}{Country name (in English).}
#' \item{iso_a2}{ISO 3166-1 alpha-2 country codes.}
#' \item{iso_a3}{ISO 3166-1 alpha-3 country codes.}
#' \item{admin_name}{Name of administrative region.}
#' \item{capital}{If the city is capital. Capital cities have 'primary' in this variable, and 'admin' for the administrative region.}
#' \item{population}{Inhabitants of the city (updated in 2019.)}
#' }
#'
#' @source \url{https://simplemaps.com/data/world-cities}
#'
#' @examples
#'
#' WorldCities
#'
'WorldCities'

#' A map of Barcelona districts
#'
#' @description A map of Barcelona districts loaded as a sf object
#'
#' District names have been set into utf8 encoding. District numbers are set as numeric, like in Barcelona Open Data platform. The coordinates of the original dataset have been removed, and replaced by centroids of polygons.
#'
#' @source \url{https://vangdata.carto.com/tables/shapefiles_barcelona_distrito/public}
#'
#' @examples
#'
#' BCNDistricts
#'
'BCNDistricts'

#' A map of Barcelona neighbourhoods
#'
#' @description A map of Barcelona neighbourhoods loaded as a sf object
#'
#' District names have been set into utf8 encoding.  District numbers are set as numeric, like in Barcelona Open Data platform. The coordinates of the original dataset have been removed, and replaced by centroids of polygons.
#'
#' @source \url{https://vangdata.carto.com/tables/shapefiles_barcelona_distrito/public}
#'
#' @examples
#'
#' BCNNeigh
#'
'BCNNeigh'

#' A map of Spanish Autonomous Regions
#'
#' @description A map with the borders of the Spanish autonomous regions as a sf object
#'
#' @examples
#'
#' esp_ccaa
#'
'esp_ccaa'

#' A map of Terrassa neighbourhoods
#'
#' @description A map of Terrassa neighbourhoods loaded as a sf object
#'
#' Additional information: AREA and PERIMETER of each neighbourhood, and neighbourhood name in NOM_BARRI.
#'
#' @source \url{https://opendata.terrassa.cat/es/dataset/mapa-de-la-ciutat-amb-les-divisions-per-barris}
#'
#' @examples
#'
#' trs_barris
#'
'trs_barris'

#' A map of Terrassa districts
#'
#' @description A map of Terrassa districts loaded as a sf object
#'
#' Additional information: AREA and PERIMETER of each district, and district number in DISTRICTE.
#'
#' @source \url{https://opendata.terrassa.cat/es/dataset/mapa-de-la-ciutat-amb-les-divisions-per-districtes}
#'
#' @examples
#'
#' trs_districtes
#'
'trs_districtes'

#' A map of Terrassa zip codes
#'
#' @description A map of Terrassa zip codes loaded as a sf object
#'
#' Additional information: AREA and PERIMETER of each zip code, and zip code in CODI_POSTA.
#'
#' @source \url{https://opendata.terrassa.cat/es/dataset/mapa-de-la-ciutat-amb-les-divisions-per-districtes}
#'
#' @examples
#'
#' trs_codis
#'
'trs_codis'

#' A map of Terrassa industrial parks
#'
#' @description A map of Terrassa industrial parks loaded as a sf object
#'
#' Additional information: AREA in square meters, area in HECTARES and PERIMETER of each industrial park, and industrial park name in NOM_POLIGO.
#'
#' @source \url{https://opendata.terrassa.cat/es/dataset/mapa-dels-poligons-industrials}
#'
#' @examples
#'
#' trs_poligons
#'
'trs_poligons'

#' A map of Terrassa census tracts
#'
#' @description A map of Terrassa census tracts loaded as a sf object
#'
#' Additional information: AREA and PERIMETER of each zip code, district at DIST and census tract at SECC.
#'
#' @source \url{https://emap.terrassa.cat/mapserver/zipService/downloadZIP.aspx?type=divadm&key=post&srs=ETRS89}
#'
#' @examples
#'
#' trs_cens
#'
'trs_cens'

#' OpenFlights airport data
#'
#' @description Data from aiports presented in the OpenFlights data set. Last update is on January 2017.
#'
#' \describe{
#' \item{name}{Name of airport.}
#' \item{city}{Main city served by airport.}
#' \item{country}{Country or territory where airport is located, in ISO 3166-1 format.}
#' \item{IATA}{3-letter IATA code.}
#' \item{ICAO}{4-letter ICAO code.}
#' \item{lat}{Decimal degrees, usually to six significant digits. Negative is South, positive is North.}
#' \item{lon}{Decimal degrees, usually to six significant digits. Negative is West, positive is East.}
#' \item{alt}{Altitude in feet.}
#' \item{timezone}{Hours offset from UTC. Fractional hours are expressed as decimals, eg. India is 5.5.}
#' \item{DST}{Daylight savings time. One of E (Europe), A (US/Canada), S (South America), O (Australia), Z (New Zealand), N (None) or U (Unknown).}
#' \item{tz}{Timezone in "tz" (Olson) format, eg. "America/Los_Angeles".}
#' }
#'
#' @source \url{https://openflights.org/data.html}
#'
#' @examples
#'
#' of_airports
#'
'of_airports'

#' OpenFlights route database
#'
#' @description The set of OpenFlights routes. The third-party that OpenFlights uses for route data ceased providing updates in June 2014. The current data is of historical value only.
#'
#' \describe{
#' \item{airline}{2-letter (IATA) or 3-letter (ICAO) code of the airline.}
#' \item{org}{3-letter (IATA) or 4-letter (ICAO) code of the source (origin) airport.}
#' \item{dst}{3-letter (IATA) or 4-letter (ICAO) code of the destination airport.}
#' \item{codeshare}{"Y" if this flight is a codeshare (that is, not operated by Airline, but another carrier), "N otherwise.}
#' \item{stops}{Number of stops on this flight ("0" for direct).}
#' \item{equipment}{3-letter codes for plane type(s) generally used on this flight, separated by spaces.}
#' }
#'
#' @source \url{https://openflights.org/data.html}
#'
#' @examples
#'
#' of_routes
#'
'of_routes'

#' The mwgg airport database
#'
#' @description Obtained from a JSON database of 28828 entries with basic information about nearly every airport and landing strip in the world. ICAO codes used as primary value. Some IATA codes have been added from the csv_airports database.
#'
#' \describe{
#' \item{icao}{4-letter ICAO code.}
#' \item{iata}{3-letter IATA code.}
#' \item{name}{Name of airport.}
#' \item{city}{Main city served by airport.}
#' \item{country}{Country or territory where airport is located, in ISO 3166-1 format.}
#' \item{state}{State or administrative division of the country where the airport is located.}
#' \item{elevation}{Altitude in feet.}
#' \item{lat}{Decimal degrees, usually to ten significant digits. Negative is South, positive is North.}
#' \item{lon}{Decimal degrees, usually to ten significant digits. Negative is West, positive is East.}
#' \item{tz}{Timezone in "tz" (Olson) format, eg. "America/Los_Angeles".}
#' }
#'
#' @source \url{https://github.com/mwgg/Airports}
#'
#' @examples
#'
#' mwgg_airports
#'
'mwgg_airports'

#' A database of airports obtained from a csv file of unknown origin.
#'
#' @description Another database of airports. It comes from a .csv file of unknown origin, with some additions and modifications with information from Wikipedia.
#'
#' \describe{
#' \item{name}{Name of airport.}
#' \item{city}{Main city served by airport.}
#' \item{country}{Country or territory where airport is located, in ISO 3166-1 format.}
#' \item{region}{State or administrative division of the country where the airport is located.}
#' \item{IATA}{3-letter IATA code.}
#' \item{ICAO}{4-letter ICAO code.}
#' \item{lat}{Decimal degrees, usually to six significant digits. Negative is South, positive is North.}
#' \item{lon}{Decimal degrees, usually to six significant digits. Negative is West, positive is East.}
#' \item{alt}{Altitude in feet.}
#' \item{timezone}{Hours offset from UTC. Fractional hours are expressed as decimals, eg. India is 5.5.}
#' \item{tz}{Timezone in "tz" (Olson) format, eg. "America/Los_Angeles".}
#' \item{WAC}{Numeric codes used to identify geopolitical areas such as countries, states, provinces, and territories or possessions of certain countries. The codes are used within the various data banks maintained by the Office of Airline Information (OAI) and are created by OAI.}
#' }
#'
#' @source unknown (didn't bother to record at the moment).
#'
#' @examples
#'
#' csv_airports
#'
'csv_airports'

