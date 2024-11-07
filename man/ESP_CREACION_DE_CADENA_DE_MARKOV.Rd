
              % DOCUMENTACIÓN : CREACION_DE_CADENA_DE_MARKOV()
        % ----------------------------------------------------------

\name{ESP_CREACION_DE_CADENA_DE_MARKOV}
\alias{CREACION_DE_CADENA_DE_MARKOV_español}
\title{CREACION_DE_CADENA_DE_MARKOV en ESPAÑOL}

\usage{
CREACION_DE_CADENA_DE_MARKOV( idioma_actual ,
                              IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                       "ENGLISH",
                                                       "ITALIANO" ) )
}

\arguments{

\item{idioma_actual}{Idioma seleccionado actual ( Por defecto : Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() con las diferentes opciones lingüísticas.}

}

\value{Devuelve los parámetros que definirán la Cadena de Markov creada en formato 'list()'.}

\description{Función que se encarga de crear una nueva Cadena de Markov por medio de un interfaz. Los parámetros recogidos serán almacenados en formato de dato 'list()'.}

\examples{

# SÓLO SE TIENEN 3 IDIOMAS DISPONIBLES PARA LA INTERFAZ :

##CREACION_DE_CADENA_DE_MARKOV( "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##CREACION_DE_CADENA_DE_MARKOV( "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##CREACION_DE_CADENA_DE_MARKOV( "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
