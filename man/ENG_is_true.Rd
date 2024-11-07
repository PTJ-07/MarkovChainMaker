
                        % DOCUMENTATION : is_true()
                  % -------------------------------------

\name{ENG_is_true}
\alias{is_true_english}
\title{is_true in ENGLISH}

\usage{
is_true( boolean_vector )
}

\arguments{

\item{boolean_vector}{Vector whose values can only be T or F}

}

\value{Returns T if and only if all values of the vector are T. Otherwise, it returns F.}

\description{Function that is responsible for corroborating that all boolean elements of the vector are true, i.e., TRUE.}

\examples{
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,FALSE) )   # = FALSE
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,TRUE) )   # = TRUE
}
