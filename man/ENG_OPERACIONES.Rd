
                      % DOCUMENTATION : OPERACIONES()
                % -----------------------------------------

\name{ENG_OPERACIONES}
\alias{OPERACIONES_english}
\title{OPERACIONES in ENGLISH}

\usage{
OPERACIONES( CM , idioma_actual , IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                           "ENGLISH",
                                                           "ITALIANO" ) )
}

\arguments{

\item{CM}{Markov Chain already created with function CREACION_DE_CADENA_DE_MARKOV().}

\item{idioma_actual}{Current selected language ( By default: Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() with the different language options.}

}

\value{It can return three types of outputs; 1st [ Distribution of X at time t : 'c()' ], 2nd [ Probability of transition from state A to B at time t : 'number' ], 3rd [ 1st and 2nd : 'list( c() , number )' ].}

\description{Function used to perform two types of operations on a Markov Chain previously created with the function of this package, 'CREACION_DE_CADENA_DE_MARKOV()'. These are: 1st [ Distribution of X at time t ], 2nd [ Probability of transition from state A to B at time t ].}

\examples{

# LET BE YOUR MARKOV CHAIN AS

##CM = CREACION_DE_CADENA_DE_MARKOV()

# HENCE, ONLY THERE ARE 3 AVAILABLE LANGUAGES FOR THE INTERFACE :

##OPERACIONES( CM, "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##OPERACIONES( CM, "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##OPERACIONES( CM, "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
