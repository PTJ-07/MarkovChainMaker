
                        % DOCUMENTATION : RESULTADOS()
                  % ----------------------------------------

\name{ENG_RESULTADOS}
\alias{RESULTADOS_english}
\title{RESULTADOS in ENGLISH}

\usage{
RESULTADOS( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                          "ENGLISH",
                                                          "ITALIANO" ) )
}

\arguments{

\item{CM}{Markov Chain already created with function CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Current selected language ( By default: Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() with the different language options.}

}

\value{Specifically none, as it only enables a graphical visualization of an already existing Markov Chain.}

\description{Function that is only used to display a Markov Chain previously created with the function of this package, 'CREACION_DE_CADENA_DE_MARKOV()'.}

\examples{

# LET BE YOUR MARKOV CHAIN AS

##CM = CREACION_DE_CADENA_DE_MARKOV()

# HENCE, ONLY THERE ARE 3 AVAILABLE LANGUAGES FOR THE INTERFACE :

##RESULTADOS( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##RESULTADOS( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##RESULTADOS( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
