
              % DOCUMENTAZIONE : CREACION_DE_CADENA_DE_MARKOV()
        % ----------------------------------------------------------

\name{IT_CREACION_DE_CADENA_DE_MARKOV}
\alias{CREACION_DE_CADENA_DE_MARKOV_italiano}
\title{CREACION_DE_CADENA_DE_MARKOV in ITALIANO}

\usage{
CREACION_DE_CADENA_DE_MARKOV( idioma_actual ,
                              IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                       "ENGLISH",
                                                       "ITALIANO" ) )
}

\arguments{

\item{idioma_actual}{Lingua attualmente selezionata ( Predefinita : Español ).}

\item{IDIOMAS_DISPONIBLES}{Vettore c() con i diversi opzioni linguistique.}

}

\value{Restituisce i parametri che definiscono la Catena di Markov creata nel formato 'list()'.}

\description{Funzione responsabile della creazione di una nuova catena di Markov tramite un'interfaccia. I parametri raccolti verranno archiviati nel formato dati 'list()'.}

\examples{

# CI SONO SOLO 3 LINGUE DISPONIBILI PER L'INTERFACCIA:

##CREACION_DE_CADENA_DE_MARKOV( "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##CREACION_DE_CADENA_DE_MARKOV( "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##CREACION_DE_CADENA_DE_MARKOV( "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
