
                        % DOCUMENTACIÓN : is_true()
                  % -------------------------------------

\name{ESP_is_true}
\alias{is_true_español}
\title{is_true en ESPAÑOL}

\usage{
is_true( boolean_vector )
}

\arguments{

\item{boolean_vector}{Vector cuyos valores sólo pueden ser T ó F}

}

\value{Devuelve T si y solo si todos los valores del vector son T. De otro modo devolverá F.}

\description{Función que se encarga de corroborar que todos los elementos booleanos del vector son verdad, i.e, TRUE.}

\examples{
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,FALSE) )   # = FALSE
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,TRUE) )   # = TRUE
}
