\name{SpectralProfiler}
\alias{SpectralProfiler}

\title{
Calculates the spectral profile of a set zone.
}

\description{
Calculates the spectral profile of a set zone. For lines and polygoins, calculates the mean values.
With a line, the change in each band is given as the line goes on.
}

\usage{
SpectralProfiler(rasterIn, nProfile = 1, type = "points", plotL = 1, stand = FALSE, silent = TRUE, shapeIn = NULL, csvOut = NULL)
}

\arguments{
  \item{rasterIn}{Raster* object to extract values from.}
  \item{nProfile}{Number of profiles to take (ignored for "lines" & "shape")}
  \item{type}{What type of input should be used?
  -points: Profiles for each point.
  -lines: Profiles of changing spectral values along a line.
  -poly : Profiles of mean values over polygons.
  -shape: Profiles using a pre-defined shapefile, not yet implemented.}
  \item{plotL}{Which layer should be used to plot when selecting areas?}
  \item{stand}{Should the data be standardised before plotting?}
  \item{silent}{Should progress be printed to the console?}
  \item{shapeIn}{If type is "shape", this is where the shapefile is given.}
  \item{csvOut}{A string of the file name to write the profile to. If omitted, the file is not written.}
}

\value{
A list of two items:
\item{Profile}{Matrix of DN values.}
\item{Area used}{Coordinates/shapefile that was used to create them.}
}

\author{Joseph McGrath}

\examples{
r <- brick(ncol = 50, nrow = 50, nl = 4)
values(r) <- sample(1:2500, 10000, TRUE)
r <- SpectralProfiler(r, 3)
r
}