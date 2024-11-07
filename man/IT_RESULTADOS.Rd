
                        % DOCUMENTAZIONE : RESULTADOS()
                  % -----------------------------------------

\name{IT_RESULTADOS}
\alias{RESULTADOS_italiano}
\title{RESULTADOS in ITALIANO}

\usage{
RESULTADOS( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                          "ENGLISH",
                                                          "ITALIANO" ) )
}

\arguments{

\item{CM}{Catena di Markov già creata con la funzione CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Lingua attualmente selezionata ( Predefinita : Español ).}

\item{IDIOMAS_DISPONIBLES}{Vettore c() con i diversi opzioni linguistique.}

}

\value{Nello specifico nessuno, poiché attiva solo la visualizzazione grafica di una catena di Markov già esistente.}

\description{Funzione che serve solo a visualizzare una Catena di Markov precedentemente creata con la funzione di questo pacchetto, 'CREACION_DE_CADENA_DE_MARKOV()'.}

\examples{

# SIA DEFINITA LA SUA CADENA DE MARKOV

##CM = CREACION_DE_CADENA_DE_MARKOV()

# ALLORA, CI SONO SOLO 3 LINGUE DISPONIBILE PER L'INTERFACCIA :

##RESULTADOS( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##RESULTADOS( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##RESULTADOS( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
