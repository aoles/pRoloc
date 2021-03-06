\name{MLearn-methods}
\docType{methods}

\alias{MLearn,formula,MSnSet,learnerSchema,numeric-method}
\alias{MLearn,formula,MSnSet,learnerSchema,xvalSpec-method}
\alias{MLearn,formula,MSnSet,clusteringSchema,missing-method}
\alias{MSnSetMLean}
\alias{MLearnMSnSet}

\title{ The \code{MLearn} interface for machine learning}

\description{
  This method implements \code{MLInterfaces}'
  \code{MLean} method for instances of the class
  \code{"\linkS4class{MSnSet}"}. 
}

\section{Methods}{
  \describe{    
    \item{\code{signature(formula = "formula", data = "MSnSet", .method
	= "learnerSchema", trainInd = "numeric")}}{ 
      The learning problem is stated with the \code{formula} and applies
      the \code{.method} schema on the \code{MSnSet} \code{data} input
      using the \code{trainInd} numeric indices as train data.
    }
    
    \item{\code{signature(formula = "formula", data = "MSnSet", .method
	= "learnerSchema", trainInd = "xvalSpec")}}{ 
      In this case, an instance of \code{\link{xvalSpec}} is used for
      cross-validation. 
    }

    \item{\code{signature(formula = "formula", data = "MSnSet", .method
	= "clusteringSchema", trainInd = "missing")}}{ 
      Hierarchical (\code{hclustI}), k-means (\code{kmeansI}) and
      partitioning around medoids (\code{pamI}) clustering algorithms
      using \code{MLInterface}'s \code{MLearn} interface.
    }
    
  }
}

\seealso{
  The \code{MLInterfaces} package documentation, in particular \code{\link{MLearn}}.
}

\keyword{methods}

