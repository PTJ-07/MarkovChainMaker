
                      % DOCUMENTAZIONE : OPERACIONES()
                % -----------------------------------------

\name{IT_OPERACIONES}
\alias{OPERACIONES_italiano}
\title{OPERACIONES in ITALIANO}

\usage{
OPERACIONES( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                           "ENGLISH",
                                                           "ITALIANO" ) )
}

\arguments{

\item{CM}{Catena di Markov già creata con la funzione CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Lingua attualmente selezionata ( Predefinita : Español ).}

\item{IDIOMAS_DISPONIBLES}{Vettore c() con i diversi opzioni linguistique.}

}

\value{Può ritornare tre tipo di outputs ; 1º [ Distribuzione di X nel tempo t : 'c()' ] , 2º [ Probabilità di transizione dallo stato A fino allo B nel tempo t : 'numero' ] , 3º [ 1º e 2º : 'list( c() , numero )' ].}

\description{Funzione che serve per eseguire due tipi di operazioni su una Catena di Markov precedentemente creata con la funzione di questo pacchetto, 'CREACION_DE_CADENA_DE_MARKOV()'. Quelle sono : 1º [ Distribuzione di X nel tempo t ] , 2º [ Probabilità di transizione dallo stato A fino allo B nel tempo t ].}

\examples{

# SIA DEFINITA LA SUA CADENA DE MARKOV

##CM = CREACION_DE_CADENA_DE_MARKOV()

# ALLORA, CI SONO SOLO 3 LINGUE DISPONIBILE PER L'INTERFACCIA :

##OPERACIONES( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##OPERACIONES( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##OPERACIONES( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
