
              % DOCUMENTATION : CREACION_DE_CADENA_DE_MARKOV()
        % ----------------------------------------------------------

\name{ENG_CREACION_DE_CADENA_DE_MARKOV}
\alias{CREACION_DE_CADENA_DE_MARKOV_english}
\title{CREACION_DE_CADENA_DE_MARKOV in ENGLISH}

\usage{
CREACION_DE_CADENA_DE_MARKOV( idioma_actual ,
                              IDIOMAS_DISPONIBLES = c( "ESPAÑOL" ,
                                                       "ENGLISH",
                                                       "ITALIANO" ) )
}

\arguments{

\item{idioma_actual}{Current selected language ( By default: Español ).}

\item{IDIOMAS_DISPONIBLES}{Vector c() with the different language options.}

}

\value{Returns the parameters that will define the created Markov Chain in a 'list()'.}

\description{Function that is responsible for creating a new Markov Chain through an interface. The collected parameters will be stored in the data format 'list()'.}

\examples{

# THERE ARE ONLY 3 AVAILABLES LANGUAGES FOR THE INTERFACE :

##CREACION_DE_CADENA_DE_MARKOV( "Español", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ESP

##CREACION_DE_CADENA_DE_MARKOV( "English", c("ESPAÑOL","ENGLISH","ITALIANO") )  #ENG

##CREACION_DE_CADENA_DE_MARKOV( "Italiano", c("ESPAÑOL","ENGLISH","ITALIANO") )  #IT

}
