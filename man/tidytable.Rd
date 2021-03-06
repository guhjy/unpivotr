% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidytable.R
\name{tidytable}
\alias{tidytable}
\title{Convert data frames into a tidy structure}
\usage{
tidytable(x, rownames = TRUE, colnames = TRUE)
}
\arguments{
\item{x}{A data.frame or a matrix}

\item{rownames}{Whether to include the column names in the output}

\item{colnames}{Whether to include the row names in the output}
}
\value{
A data.frame with six columns: 'row' and 'col' (integer) giving the
original position of the 'cells', and 'character', 'double', 'integer' and
'logical' giving the cell values in their original types.  Row and column
names are returned in the 'character' column, and, when present, offset the
other cells by one row or column.
}
\description{
Data frames and matrices represents data in a tabular structure.
\code{tidytable} takes the row and column position of each 'cell', and
returns that information in a new data frame.  This makes certain tasks
easier.  For example, a pivot table with multi-row headers that has been
imported into R as a data frame may be easier to un-pivot by converting it
with \code{tidytable} first.

This is an S3 generic.
}
\examples{
tidytable(Formaldehyde)
tidytable(as.matrix(Formaldehyde))
tidytable(Formaldehyde, colnames = FALSE)
tidytable(Formaldehyde, rownames = FALSE)
}
