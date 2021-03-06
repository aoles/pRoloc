% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot2D}
\alias{plot2D}
\alias{plot2Dmethods}
\title{Plot organelle assignment data and results.}
\usage{
plot2D(object, fcol = "markers", fpch, unknown = "unknown", dims = 1:2,
  score = 1, method = "PCA", methargs, axsSwitch = FALSE,
  mirrorX = FALSE, mirrorY = FALSE, col, pch, cex, index = FALSE,
  idx.cex = 0.75, identify = FALSE, plot = TRUE, ...)
}
\arguments{
\item{object}{An instance of class \code{MSnSet}.}

\item{fcol}{Feature meta-data label (fData column name) defining
the groups to be differentiated using different colours. Default
is \code{markers}. Use \code{NULL} to suppress any colouring.}

\item{fpch}{Featre meta-data label (fData column name) desining
the groups to be differentiated using different point symbols.}

\item{unknown}{A \code{character} (default is \code{"unknown"})
defining how proteins of unknown/un-labelled localisation are
labelled.}

\item{dims}{A \code{numeric} of length 2 defining the dimensions
to be plotted. Always 1:2 for MDS.}

\item{score}{A numeric specifying the minimum organelle assignment score
to consider features to be assigned an organelle. (not yet implemented).}

\item{method}{A \code{character} describe how to transform the
data or what to plot. One of \code{"PCA"} (default),
\code{"MDS"}, \code{"kpca"} or \code{"t-SNE"}, defines what
dimensionality reduction is applied: principal component
analysis (see \code{\link{prcomp}}), classical
multidimensional scaling (see \code{\link{cmdscale}}), kernel
PCA (see \code{kernlab::kpca}) or t-SNE (see
\code{tsne::tsne}). \code{"scree"} can also be used to produce
a scree plot. If none is used, the data is plotted as is,
i.e. without any transformation. In this case, \code{object}
can either be an \code{MSnSet} or a \code{matrix} (as
invisibly returned by \code{plot2D}). This enables to
re-generate the figure without computing the dimensionality
reduction over and over again, which can be time consuming for
certain methods. Available methods are listed in
\code{plot2Dmethods}. If \code{object} is a \code{matrix}, an
\code{MSnSet} containing the feature metadata must be provided
in \code{methargs} (see below for details).}

\item{methargs}{A \code{list} of arguments to be passed when
\code{method} is called. If missing, the data will be scaled
and centred prior to PCA. If \code{method = "none"} and
\code{object} is a \code{matrix}, then the first and only
argument of \code{methargs} must be an \code{MSnSet} with
matching features with \code{object}.}

\item{axsSwitch}{A \code{logical} indicating whether the axes
should be switched.}

\item{mirrorX}{A \code{logical} indicating whether the x axis
should be mirrored?}

\item{mirrorY}{A \code{logical} indicating whether the y axis
should be mirrored?}

\item{col}{A \code{character} of appropriate length defining colours.}

\item{pch}{A \code{character} of appropriate length defining point character.}

\item{cex}{Character expansion.}

\item{index}{A \code{logical} (default is \code{FALSE}, indicating of the
feature indices should be plotted on top of the symbols.}

\item{idx.cex}{A \code{numeric} specifying the character expansion
(default is 0.75) for the feature indices. Only relevant when \code{index}
is TRUE.}

\item{identify}{A logical (default is \code{TRUE}) defining if
user interaction will be expected to identify individual data
points on the plot. See also \code{\link{identify}}.}

\item{plot}{A \code{logical} defining if the figure should be plotted.
Useful when retrieving data only. Default is \code{TRUE}.}

\item{...}{Additional parameters passed to \code{plot} and
\code{points}.}
}
\value{
Used for its side effects of generating a plot.
Invisibly returns the 2d data.
}
\description{
Generate 2 dimensional or feature distribution plots to illustrate
localistation clusters. In \code{plot2D}, rows containing
\code{NA} values are removed prior to dimention reduction.
}
\details{
\itemize{

\item Note that \code{plot2D} has been update in version 1.3.6 to
       support more organelle classes than colours defined in
       \code{\link{getStockcol}}. In such cases, the default
       colours are recycled using the default plotting characters
       defined in \code{\link{getStockpch}}. See the example for
       an illustration. The \code{alpha} argument is also
       depreciated in version 1.3.6. Use \code{setStockcol} to set
       colours with transparency instead. See example below.

\item Version 1.11.3: to plot data as is, i.e. without any
      transformation, \code{method} can be set to "none" (as
      opposed to passing pre-computed values to \code{method} as a
      \code{matrix}, in previous versions). If \code{object} is an
      \code{MSnSet}, the untransformed values in the assay data
      will be plotted. If \code{object} is a \code{matrix} with
      coordinates, then a matching \code{MSnSet} must be passed to
      \code{methargs}.
}
}
\examples{
library("pRolocdata")
data(dunkley2006)
plot2D(dunkley2006, fcol = NULL)
## available methods
plot2Dmethods
plot2D(dunkley2006, fcol = NULL, method = "kpca")
plot2D(dunkley2006, fcol = NULL, method = "kpca",
       methargs = list(kpar = list(sigma = 1)))
plot2D(dunkley2006, fcol = "markers")
addLegend(dunkley2006,
          fcol = "markers",
          where = "topright",
          cex = 0.5, bty = "n", ncol = 3)
title(main = "plot2D example")
## Using transparent colours
setStockcol(paste0(getStockcol(), "80"))
plot2D(dunkley2006, fcol = "markers")
## New behavious in 1.3.6 when not enough colours
setStockcol(c("blue", "red", "green"))
getStockcol() ## only 3 colours to be recycled
getMarkers(dunkley2006)
plot2D(dunkley2006)
## reset colours
setStockcol(NULL)
plot2D(dunkley2006, method = "none") ## plotting along 2 first fractions
plot2D(dunkley2006, dims = c(3, 5), method = "none") ## plotting along fractions 3 and 5
## pre-calculate PC1 and PC2 coordinates
pca <- plot2D(dunkley2006, plot=FALSE)
head(pca)
plot2D(pca, method = "none", methargs  = list(dunkley2006))
}
\author{
Laurent Gatto <lg390@cam.ac.uk>
}
\seealso{
\code{\link{addLegend}} to add a legend to \code{plot2D}
    figures and \code{\link{plotDist}} for alternative graphical
    representation of quantitative organelle proteomics
    data. \code{\link{plot2Ds}} to overlay 2 data sets on the same
    PCA plot.
}

