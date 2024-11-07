
                        % DOCUMENTAZIONE: is_true()
                  % -------------------------------------

\name{IT_is_true}
\alias{is_true_italiano}
\title{is_true in ITALIANO}

\usage{
is_true( boolean_vector )
}

\arguments{

\item{boolean_vector}{Vettore cui valori soltanto possono essere T oppure F}

}

\value{Ritorna T se e solo se tutti i valori nel vettore sono T. Invece, ritorna F.}

\description{Funzione che ha il compito di confermare che tutti gli elementi booleani del vettore sono veri, cioè, TRUE.}

\examples{
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,FALSE) )   # = FALSE
is_true( boolean_vector = c(TRUE,TRUE,TRUE,TRUE,TRUE) )   # = TRUE
}
