
                      % DOCUMENTACIÓN : OPERACIONES()
                % -----------------------------------------

\name{ESP_OPERACIONES}
\alias{OPERACIONES_español}
\title{OPERACIONES en ESPAÑOL}

\usage{
OPERACIONES( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                           "ENGLISH",
                                                           "ITALIANO" ) )
}

\arguments{

\item{CM}{Cadena de Markov ya creada con la función CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Current selected language ( By default: Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() with the different language options.}

}

\value{Puede devolver tres tipos de salidas ; 1º [ Distribución de X en el tiempo t : 'c()' ] , 2º [ Probabilidad de transición de estado A al B en el tiempo t : 'número' ] , 3º [ 1º y 2º : 'list( c() , número )' ].}

\description{Función que sirve para realizar dos tipos de operaciones sobre una Cadena de Markov previamente creada con la función de este paquete, 'CREACION_DE_CADENA_DE_MARKOV()'. Estas son : 1º [ Distribución de X en el tiempo t ] , 2º [ Probabilidad de transición de estado A al B en tiempo t ].}

\examples{

# SEA DEFINIDA SU CADENA DE MARKOV

##CM = CREACION_DE_CADENA_DE_MARKOV()

# ENTONCES, SÓLO SE TIENEN 3 IDIOMAS DISPONIBLES PARA LA INTERFAZ :

##OPERACIONES( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##OPERACIONES( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##OPERACIONES( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
