% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{hyper}
\alias{hyper}
\title{Treatment of hypernephroma data}
\format{A data frame with 36 observations on the following 4 variables:
 \describe{ \item{\code{nephrectomy}}{indicator on whether or not the patient
 had recived a nephrectomy} \item{\code{age}}{age group at the time of
 diagnosis. 1 = <60, 2 = 60-70, 3 = >70.} \item{\code{time}}{observed time.}
 \item{\code{status}}{status of the observed time. 0 = censored, 1 = event.}
 }}
\usage{
hyper
}
\description{
This dataset contains survival times for 36
patients with malignant tumour in the kidney. Some of the patients received
nephrectomy. See Example 3.4 and example 5.9 of the Collett (2003) for more
details. The  event time in this example is right censored.
}
\details{
The data uses time and status to represent the observed survival
 time. To fit into the icweib function, left and right endpoints of censoring
 interval need to be derived (see examples).
}
\examples{
data(hyper)
## Derive left and right endpoints from time and status
hyper$left <- hyper$time
hyper$right <- ifelse(hyper$status==1, hyper$time, Inf)

}
\references{
Collett, D. (2003). \emph{Modelling Survival Data in Medical
 Research, Second Edition}, Texts in statistical science. Taylor & Francis.
}
\keyword{datasets}
