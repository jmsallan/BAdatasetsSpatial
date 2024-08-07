% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\docType{data}
\name{of_airports}
\alias{of_airports}
\title{OpenFlights airport data}
\format{
An object of class \code{data.frame} with 7698 rows and 11 columns.
}
\source{
\url{https://openflights.org/data.html}
}
\usage{
of_airports
}
\description{
Data from aiports presented in the OpenFlights data set. Last update is on January 2017.

\describe{
\item{name}{Name of airport.}
\item{city}{Main city served by airport.}
\item{country}{Country or territory where airport is located, in ISO 3166-1 format.}
\item{IATA}{3-letter IATA code.}
\item{ICAO}{4-letter ICAO code.}
\item{lat}{Decimal degrees, usually to six significant digits. Negative is South, positive is North.}
\item{lon}{Decimal degrees, usually to six significant digits. Negative is West, positive is East.}
\item{alt}{Altitude in feet.}
\item{timezone}{Hours offset from UTC. Fractional hours are expressed as decimals, eg. India is 5.5.}
\item{DST}{Daylight savings time. One of E (Europe), A (US/Canada), S (South America), O (Australia), Z (New Zealand), N (None) or U (Unknown).}
\item{tz}{Timezone in "tz" (Olson) format, eg. "America/Los_Angeles".}
}
}
\examples{

of_airports

}
\keyword{datasets}
