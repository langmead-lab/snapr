% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_builder_wrappers.R
\name{get_coordinate_modifier}
\alias{get_coordinate_modifier}
\alias{set_coordinate_modifier}
\title{Get or set coordinate modifiers for the query.}
\usage{
get_coordinate_modifier(qb)

set_coordinate_modifier(qb, coordinate_modifier)
}
\arguments{
\item{qb}{a QueryBuilder object constructed using the
\code{\link{QueryBuilder}} function.}

\item{coordinate_modifier}{any of the variants of the \link{Coordinates}
enum.}
}
\value{
\code{get_coordinate_modifier} returns the current coodinate modifier
as a string.
\code{set_coordinate_modifier} returns a new \code{QueryBuilder}
object with the coordinate modifier set to the value of
\code{coordinate_modifier}.
}
\description{
Get or set coordinate modifiers for the query.
}
\examples{
qb <- QueryBuilder(compilation = "gtex", regions = "CD99")
qb <- set_coordinate_modifier(qb, Coordinates$Within)
get_coordinate_modifier(qb)
}
