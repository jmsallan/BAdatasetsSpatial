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

