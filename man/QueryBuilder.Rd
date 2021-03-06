% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_builder_wrappers.R
\name{QueryBuilder}
\alias{QueryBuilder}
\title{Construct a QueryBuilder object given a compilation and one or regions.}
\usage{
QueryBuilder(compilation, regions)
}
\arguments{
\item{compilation}{A single string containing the name of the
Snaptron data source. Any variant of the \code{Compilation} enum can also be
passed an argument.}

\item{regions}{Either a list of 1 more \code{HUGO} gene names as strings
\verb{e.g. "BRCA1"} or a Granges class object containing one or more geneomic
intervals \verb{(e.g. "chr1:1-1000")}.}
}
\value{
A QueryBuilder object.
}
\description{
Construct a QueryBuilder object given a compilation and one or regions.
}
\examples{
# contruct a query builder for GTEX data source and BRAC1 gene
qb <- QueryBuilder(compilation = Compilation$gtex, regions = "BRCA1")

# contruct a query builder for TCGA data source and chromosome region
qb <- QueryBuilder(compilation = "tcga", regions = "chr1:1-1000")

# construct a query builder for TCGA data source using GRanges object
library(GenomicRanges)
qb <- QueryBuilder(compilation = "tcga", regions = GRanges("chr1", "1-1000"))
}
