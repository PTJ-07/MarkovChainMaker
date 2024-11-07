
                        % DOCUMENTACIÓN : RESULTADOS()
                  % ----------------------------------------

\name{ESP_RESULTADOS}
\alias{RESULTADOS_español}
\title{RESULTADOS en ESPAÑOL}

\usage{
RESULTADOS( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                          "ENGLISH",
                                                          "ITALIANO" ) )
}

\arguments{

\item{CM}{Cadena de Markov ya creada con la función CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Current selected language ( By default: Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() with the different language options.}

}

\value{Especificamente ninguno, ya que sólo activa una visualización gráfica de una Cadena de Markov ya existente.}

\description{Función que sólo sirve para la visualización de una Cadena de Markov previamente creada con la función de este paquete, 'CREACION_DE_CADENA_DE_MARKOV()'.}

\examples{

# SEA DEFINIDA SU CADENA DE MARKOV

##CM = CREACION_DE_CADENA_DE_MARKOV()

# ENTONCES, SÓLO SE TIENEN 3 IDIOMAS DISPONIBLES PARA LA INTERFAZ :

##RESULTADOS( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##RESULTADOS( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##RESULTADOS( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
