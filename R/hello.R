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

#' Countries and regions for World Bank datasets
#'
#' @description A list of countries and regions as in World Bank Data datasets
#'
#' The table is taken from the metadata of several datasets of the World Bank Data open data bank
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{country_name}{The name of the country or region, as of the World Bank datasets}
#' \item{region}{The geograpical region of each country}
#' \item{income_group}{The income group of each country}
#' \item{notes}{Notes for specific observations}}
#'
#' @source \url{https://data.worldbank.org/}
#'
#' @examples
#'
#' WB_countries
#'
'WB_countries'

#' Fertility rates of countries from World Bank Data
#'
#' @description A table of fertility rates for each country and year
#'
#' The total fertility rate (TFR), sometimes also called the fertility rate, absolute/potential natality, period total fertility rate (PTFR), or total period fertility rate (TPFR) of a population is the average number of children that would be born to a woman over her lifetime if she was to experience the exact current age-specific fertility rates through her lifetime and she was to live from birth until the end of her reproductive life.
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (SP.DYN.TFRT.IN)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/SP.DYN.TFRT.IN}
#'
#'@examples
#'
#'WB_fertility
#'
'WB_fertility'

#' GDP per capita at purchasing power parity of countries from World Bank Data
#'
#' @description A table of fertility GDP per capita for each country and year, in current international dollars
#'
#' The purchasing power parity (PPP) value of all final goods and services produced within a country in a given year, divided by the average (or mid-year) population for the same year.
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (NY.GDP.PCAP.PP.CD)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/NY.GDP.PCAP.PP.CD}
#'
#'@examples
#'
#'WB_gdp_per_capita
#'
'WB_gdp_per_capita'

#' Gini index of countries from World Bank Data
#'
#' @description A table of the Gini index for each country and year, estimated by the World Bank
#'
#' The Gini index or coefficient of inequality of income. A Gini index near one expresses maximal inequality, and a value near zero expresses maximal equality.
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (SI.POV.GINI)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/SI.POV.GINI}
#'
#'@examples
#'
#'WB_gini
#'
'WB_gini'

#' Population (female)
#'
#' @description A table of female population for each country and year, estimated by the World Bank
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (SP.POP.TOTL.FE.IN)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/SP.POP.TOTL.FE.IN}
#'
#'@examples
#'
#'WB_population_female
#'
'WB_population_female'

#' Population (total)
#'
#' @description A table of total population for each country and year, estimated by the World Bank
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (SP.POP.TOTL)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/SP.POP.TOTL}
#'
#'@examples
#'
#'WB_population
#'
'WB_population'

#' Poverty headcount ratio at 1.90 dollar a day
#'
#' @description A table of percentage of population earning less than 1.90 dollar a day (2011 purchasing power parity) for each country and year, estimated by the World Bank
#'
#' \describe{
#' \item{country_code}{ISO 3166-1 alpha-3 country codes or regions}
#' \item{indicator}{The World Bank indicator (SI.POV.DDAY)}
#' \item{year}{The year of the datum}
#' \item{value}{The value of the datum}}
#'
#' @source \url{https://data.worldbank.org/indicator/SI.POV.DDAY}
#'
#'@examples
#'
#'WB_poverty_odd
#'
'WB_poverty_odd'


