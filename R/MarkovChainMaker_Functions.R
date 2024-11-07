


##################################################################################################
##################################################################################################

######################## -------- FUNCIONES AUXILIARES ---------- ################################

##################################################################################################
##################################################################################################



SELECCIONAR_IDIOMA <- function(IDIOMAS,idioma_anterior)
{
  IDIOMAS_DISPONIBLES = IDIOMAS
  idioma_valido = FALSE

  repeat
  {
    if ( idioma_anterior == IDIOMAS_DISPONIBLES[1] ){
      cat("---------------------------------------------------------------------------------------
Teniendo en cuenta que los idiomas disponibles son :
{ IDIOMAS } := {",IDIOMAS_DISPONIBLES,"}
---------------------------------------------------------------------------------------
Seleccione el que desee :")
    } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[2] ){
      cat("---------------------------------------------------------------------------------------
Considering the following available languages :
{ LANGUAGES } := {",IDIOMAS_DISPONIBLES,"}
---------------------------------------------------------------------------------------
Select the one you want :")
    } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[3] ){
      cat("---------------------------------------------------------------------------------------
Considerando che le lingue disponibile sono :
{ LINGUE } := {",IDIOMAS_DISPONIBLES,"}
---------------------------------------------------------------------------------------
Seleziona quella che desideri :")
    }

    idioma_elegido = scan( , , 1, what = "")
    idioma_elegido = toupper(idioma_elegido)

    if( length(idioma_elegido) != 0 )
    {
      l = 1
      while( l <= length(IDIOMAS_DISPONIBLES) )
      {
        if( idioma_elegido == IDIOMAS_DISPONIBLES[l] )
        {
          idioma_valido = TRUE
          break
        }else{
          l = l + 1
        }
      }

      if ( idioma_valido == FALSE )
      {
        if ( idioma_anterior == IDIOMAS_DISPONIBLES[1] ){
          cat("---------------------------------------------------------------------------------------
Por favor, seleccione uno de los idiomas propuestos\n")
        } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[2] ){
          cat("---------------------------------------------------------------------------------------
Please, select one of the proposed languages\n")
        } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[3] ){
          cat("---------------------------------------------------------------------------------------
Per favore, seleziona una delle lingue proposte\n")
        }
      }else{
        break
      }

    }else{

      if ( idioma_anterior == IDIOMAS_DISPONIBLES[1] ) {
        cat("---------------------------------------------------------------------------------------
Por favor, no presione INTRO y seleccione uno de los idiomas propuestos\n")
      } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[2] ){
        cat("---------------------------------------------------------------------------------------
Please, do not press ENTER and select one of the proposed languages\n")
      } else if ( idioma_anterior == IDIOMAS_DISPONIBLES[3] ){
        cat("---------------------------------------------------------------------------------------
Per favor, non premere INVIO e seleziona una delle lingue proposte\n")
      }

    }

  }

  return(idioma_elegido)

}



##################################################################################################



MENU_DE_LA_APLICACION <- function(idioma_actual,IDIOMAS_DISPONIBLES)
{

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("---------------------------------------------------------------------------------------

BIENVENIDO",toupper(Usuario),"A MARKOV CHAIN MAKER

  Opciones:

  1 - CREAR UNA CADENA DE MARKOV

  2 - TRABAJAR CON CADENAS DE MARKOV CREADAS

  3 - CAMBIAR IDIOMA

  4 - ABANDONAR APLICACIÓN

---------------------------------------------------------------------------------------

Introduzca una opción mediante su número asociado")

  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("---------------------------------------------------------------------------------------

WELCOME",toupper(Usuario),"TO MARKOV CHAIN MAKER

  Options:

  1 - CREATING A MARKOV CHAIN

  2 - WORKING WITH CREATED MARKOV CHAINS

  3 - SELECT LANGUAGE

  4 - EXIT THE APP

---------------------------------------------------------------------------------------

Enter an option using its associated number")

  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("---------------------------------------------------------------------------------------

BENVENUTO",toupper(Usuario),"AL MARKOV CHAIN MAKER

  Opzioni:

  1 - CREA UNA CATENA DI MARKOV

  2 - LAVORA CON LE CATENE DI MARKOV GIÀ CREATE

  3 - CAMBIA LINGUA

  4 - LASCIA L'APP

---------------------------------------------------------------------------------------

Immettere un'opzione utilizzando il suo numero associato")

  }

  OPCION = scan( , , 1, what = "")
  return(OPCION)
}



##################################################################################################



CREACION_DE_CADENA_DE_MARKOV <- function(idioma_actual,IDIOMAS_DISPONIBLES)
{
  repeat
  {
    if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
      cat("---------------------------------------------------------------------------------------
SIMULACIÓN DE CADENAS DE MARKOV PARA SU ANÁLISIS
---------------------------------------------------------------------------------------
Primero, introduzca el número de estados deseado, # k € {S}:")
    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
      cat("---------------------------------------------------------------------------------------
SIMULATION OF MARKOV CHAINS FOR ANALYSIS
---------------------------------------------------------------------------------------
First, enter the desired number of states, # k € {S}:")
    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
      cat("---------------------------------------------------------------------------------------
SIMULAZIONE DI CATENE DI MARKOV PER IL SUO ANALISI
---------------------------------------------------------------------------------------
Innanzitutto, inserisci il numero di stati desiderato, # k € {S}:")
    }

    n = scan( , ,1, what = "")
    n = as.numeric(n)

    if( length(n) != 0 )
    {
      if(is.na(n) == FALSE )
      {
        repeat
        {
          if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
            cat("---------------------------------------------------------------------------------------
Segundo, introduzca el nombre de los estados deseado, {S}:")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
            cat("---------------------------------------------------------------------------------------
Second, enter the names of said desired states, {S}:")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
            cat("---------------------------------------------------------------------------------------
In secondo luogo, inserisci i nomi degli stati desiderati, {S}:")
          }

          S = scan( , ,n, what = "")

          if( length(S) != 0 )
          {
            if( is_true(is.na(S) == rep(FALSE,n)) == TRUE & length(S) == n )
            {
              repeat
              {
                if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                  cat("---------------------------------------------------------------------------------------
Tercero, introduzca la distribución de probabilidades inicial, [P(X0)]: ")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                  cat("---------------------------------------------------------------------------------------
Third, enter the initial probability distribution, [P(X0)]: ")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                  cat("---------------------------------------------------------------------------------------
Terzo, inserisci la distribuzione di probabilità iniziale, [P(X0)]: ")
                }

                DI = scan( , ,n, what = "")
                DI = as.numeric(DI)

                if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                  cat("Por último, introduzca la matriz de transición inicial por filas, P")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                  cat("Finally, introduce the initial row-wise transition matrix, P")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                  cat("Infine, inserisci la matrice di transizione iniziale per righe, P")
                }

                P = scan( , , (n^2),what="")
                P = as.numeric(P)

                if ( length(D) != 0 & length(P) != 0 )
                {
                  if( ( is_true(is.na(DI) == rep(FALSE,n)) == TRUE & is_true(is.na(P) == rep(FALSE,n^2)) == TRUE ) & (is.numeric(DI) == TRUE & is.numeric(P) == TRUE) )
                  {
                    # Inicio del programa:

                    # Primero, creación y análisis general de la Cadena de Markov
                    P = matrix(P, nrow = n,ncol= n, byrow=T)
                    rownames(P) = S
                    colnames(P) = S

                    if( (sum(DI) == 1) & (sum(P) == n) )
                    {
                      MC = new("markovchain", transitionMatrix = P,
                               states = S, name="Cadena 1")

                      TIPO = str(MC)
                      SUM = summary(MC)
                      GRAFO = plot(MC)

                      # Segundo, estudio de la tipología de las Clases
                      # ó estados de la Cadena de Markov
                      RC = recurrentClasses(MC)
                      TS = transientStates(MC)
                      AS = absorbingStates(MC)

                      # Tercero, creación de la distribución inicial de la Cadena
                      X0 = DI

                      # Por último, la Probabilidad de que en el infinito la cadena
                      # termine ahí. E.d, su Distribución ó matriz estacionaria
                      DE = steadyStates(MC)

                      # Pasos esperados hasta que regrese a dicho estado
                      M = 1/DE

                      CM = list( ._MATRIZ_TRANSICION = P,
                                 ._TIPO = TIPO,
                                 ._SUMMARY = SUM,
                                 ._GRAFO = GRAFO,
                                 ._CLASES_RECURRENTES = RC,
                                 ._ESTADOS_TRANSITANTES = TS,
                                 ._ESTADOS_ABSORBENTES = AS,
                                 ._DISTRIBUCION_INICIAL = X0,
                                 ._DISTRIBUCION_ESTACIONARIA = DE,
                                 ._PASOS_ESPERADOS = M,
                                 ._ESTADOS = S)
                      return(CM)
                      break

                    }else if( (sum(DI) != 1) & (sum(P) != n) ){

                      if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                        cat("---------------------------------------------------------------------------------------
Por favor, siga las instrucciones enunciadas
e introduzca correctamente las cifras pedidas.
")
                      } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                        cat("---------------------------------------------------------------------------------------
Please follow the instructions stated
and enter the requested figures correctly.
")
                      } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                        cat("---------------------------------------------------------------------------------------
Per favore, seguire le istruzioni indicate
e inserisci correttamente i numeri richiesti.
")
                      }

                    }

                  }

                }

                if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                  cat(
                    "---------------------------------------------------------------------------------------
Por favor, siga las instrucciones enunciadas.
")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                  cat(
                    "---------------------------------------------------------------------------------------
Please follow the instructions stated.
")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                  cat(
                    "---------------------------------------------------------------------------------------
Per favore, seguire le istruzioni indicate.
")
                }

              }

            }

          }

          if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
            cat("---------------------------------------------------------------------------------------
Por favor, siga las instrucciones enunciadas he introduzca algo.
")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
            cat("---------------------------------------------------------------------------------------
Please follow the instructions given and enter something.
")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
            cat("---------------------------------------------------------------------------------------
Per favore, seguire le istruzioni indicate e inserire qualcosa.
")
          }

        }

      }

    }

    if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
      cat("---------------------------------------------------------------------------------------
Por favor, introduzca un número en vez de un carácter
")
    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
      cat("---------------------------------------------------------------------------------------
Please, enter a number instead of a character
")
    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
      cat("---------------------------------------------------------------------------------------
Per favore, inserisci un numero invece di un carattere
")
    }

  }

}



##################################################################################################



RESULTADOS <- function(CM,idioma_actual,IDIOMAS_DISPONIBLES)
{
  DATOS = CM
  MC = DATOS[[1]]
  TIPO = DATOS[[2]]
  SUM = DATOS[[3]]
  GRAFO = DATOS[[4]]
  RC = DATOS[[5]]
  TS = DATOS[[6]]
  AS = DATOS[[7]]
  X0 = DATOS[[8]]
  DE = DATOS[[9]]
  M = DATOS[[10]]

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("---------------------------------------------------------------------------------------
1º) He aquí la matriz de transición inicial de la Cadena de Markov creada:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("---------------------------------------------------------------------------------------
1_st) Here is the initial transition matrix of the created Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("---------------------------------------------------------------------------------------
1º) Ecco la matrice di transizione iniziale della catena di Markov creata:
")
  }

  print(MC)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
2º) He aquí la tipología de la mencionada matriz de transición inicial:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
2_nd) Here is the typology of the aforementioned initial transition matrix:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
2°) Ecco la tipologia della suddetta matrice di transizione iniziale:
")
  }

  print(TIPO)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
3º) He aquí un breve resumen de la estructura de la matriz de transición inicial:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
3_rd) Here is a brief summary of the structure of the initial transition matrix:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
3º) Ecco un breve riassunto della struttura della matrice di transizione iniziale:
")
  }

  print(SUM)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
4º) He aquí el grafo de conexiones entre los estados de la Cadena de Markov:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
4_th) Here is the graph of connections between the states of the Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
4º) Ecco il grafico delle connessioni tra gli stati della Catena di Markov:
")
  }

  print(GRAFO)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
5º) He aquí las CLASES RECURRENTES de la Cadena de Markov creada:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
5_th) Here are the RECURRENT CLASSES of the created Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
5º) Ecco le CLASSI RICORRENTI della Catena Markov create:
")
  }

  print(RC)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
6º) He aquí los ESTADOS Ó CLASES RECURRENTES de la Cadena de Markov:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
6_th) Here are the RECURRENT STATES OR CLASSES of the Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
6°) Ecco gli STATI O CLASSI RICORRENTI della Catena di Markov:
")
  }

  print(TS)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
7º) He aquí los ESTADOS ABSORBENTES de la Cadena de Markov creada:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
7_th) Here are the ABSORBENT STATES of the created Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
7º) Ecco gli STATI ASSORBENTI della Catena di Markov creata:
")
  }

  print(AS)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
8º) He aquí la DISTRIBUCIÓN INICIAL (X0 = k € {S}): asociada a la Cadena:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
8_th) Here is the INITIAL DISTRIBUTION (X0 = k € {S}): associated with the Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
8º) Ecco la DISTRIBUZIONE INIZIALE (X0 = k € {S}): associata alla Catena:
")
  }

  print(X0)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
9º) He aquí la DISTRIBUCIÓN ó MATRIZ ESTACIONARIA de la Cadena de Markov creada:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
9_th) Here is the DISTRIBUTION or STATIONARY MATRIX of the Markov Chain created:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
9º) Ecco la DISTRIBUZIONE o MATRICE STAZIONARIA della Catena di Markov creata:
")
  }

  print(DE)

  if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
    cat("
10º) He aquí la MEDIA DE PASOS ESPERADOS por cada estado de la Cadena de Markov:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
    cat("
10_th) Here is the AVERAGE NUMBER OF EXPECTED STEPS for each state of the Markov Chain:
")
  } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
    cat("
10º) Ecco il NUMERO MEDIO DI PASSI PREVISTI per ogni stato della Catena di Markov:
")
  }

  print(M)

}



##################################################################################################



OPERACIONES <- function(CM,idioma_actual,IDIOMAS_DISPONIBLES)
{
  S = unlist(CM[[11]])
  repeat
  {

    if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
      cat("---------------------------------------------------------------------------------------
OPERACIONES
---------------------------------------------------------------------------------------
Nota: Teniendo en cuenta que el espacio de estados es:
{S} := {",S,"}
Introduzca el número de pasos parametrales deseados:")

    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
      cat("---------------------------------------------------------------------------------------
OPERATIONS
---------------------------------------------------------------------------------------
Note: Considering that the state space is:
{S} := {",S,"}
Enter the number of parameter steps desired:")

    } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
      cat("---------------------------------------------------------------------------------------
OPERAZIONI
---------------------------------------------------------------------------------------
Nota: Tenendo conto che lo spazio degli stati è:
{S} := {",S,"}
Immettere il numero di passaggi dei parametri desiderati:")

    }

    a = scan( , , 1, what = "")
    a = as.numeric(a)

    if( length(a) != 0 )
    {
      if(is.na(a) == FALSE)
      {
        if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
          cat("Introduzca el estado de salida 'i'")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
          cat("Enter your desired exit status 'i'")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
          cat("Inserisci lo stato di uscita desiderato 'i'")
        }

        b = scan( , , 1, what = "")

        if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
          cat("Introduzca el estado de llegada 'j'")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
          cat("Enter your desired arrival status 'j'")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
          cat("Inserisci lo stato di arrivo desiderato 'j'")
        }

        c = scan( , , 1, what = "")

        cont = 0

        if( length(b) != 0 & length(c) != 0 )
        {
          for(i in 1:length(S))
          {
            if( (c == b) & (c == S[i]) ){
              cont = 2
            }else if( (b == S[i]) | (c == S[i]) ){
              cont = cont + 1
            }
          }
        }

        if( cont == 2 )
        {
          Z = unlist(CM[[1]])
          P = matrix(Z, nrow = sqrt(length(Z)), byrow = FALSE)
          P_N = P%^%a
          MC_N = new("markovchain", transitionMatrix = P_N,
                     states = S, name="Cadena 1")

          if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
            cat("Sea la siguiente matriz de transición del momento",a,"

M_TR_(",a,") :
-------------\n")

          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
            cat("Let be the following transition matrix at moment ",a,"

M_TR_(",a,") :
-------------\n")

          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
            cat("Sia la seguente matrice di transizione al momento ",a,"

M_TR_(",a,") :
-------------\n")

          }

          plot(MC_N)
          print(MC_N)
          DI = unlist(CM[[8]])

          if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
            cat("Y sea la distribución inicial de la Cadena de Markov:

D_I := [",DI,"]")

          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
            cat("And let the initial distribution of the Markov Chain be:

D_I := [",DI,"]")

          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
            cat("E sia la distribuzione iniziale della catena di Markov:

D_I := [",DI,"]")

          }

          repeat
          {
            if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
              cat("\n\n---------------------------------------------------------------------------------------
-> Teclee '1' si desea calcular la Distribución de X en el tiempo:",a,"
-> Teclee '2' si desea calcular la probabilidad de transición de '",b,"' a '",c,"'
   en",a,"paso(s)
-> Teclee '3' si desea calcular ambas métricas")

            } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
              cat("\n\n---------------------------------------------------------------------------------------
-> Type '1' if you want to calculate the Distribution of X over time:",a,"
-> Type '2' if you want to calculate the transition probability from '",b,"' to '",c,"'
   in",a,"step(s)
-> Type '3' if you want to calculate both metrics")

            } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
              cat("\n\n---------------------------------------------------------------------------------------
-> Digita '1' se vuoi calcolare la distribuzione di X nel tempo:",a,"
-> Digita '2' se vuoi calcolare la probabilità di transizione da '",b,"' a '",c,"'
 in",a,"passaggio(i)
-> Digita '3' se desideri calcolare entrambe le metriche")

            }

            num = scan( , , 1, what = "")

            if( length(num) == 0)
            {
              if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                cat("---------------------------------------------------------------------------------------
Por favor, siga las instrucciones enunciadas.")
              } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                cat("---------------------------------------------------------------------------------------
Please follow the instructions stated.")
              } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                cat("---------------------------------------------------------------------------------------
Per favore, seguire le istruzioni indicate.")
              }

            }else{

              if(num == "1"){
                DN = DI %*% P_N
                cat("
D_N := [",DN,"]")
                return(DN)
                break
              }else if(num == "2"){
                TP = transitionProbability(object = MC_N, t0 = b, t1 = c)
                cat("
P [",b,"->",c,"]( t =",a,") =",TP)
                return(TP)
                break
              }else if(num == "3"){
                DN = DI %*% P_N
                TP = transitionProbability(object = MC_N, t0 = b, t1 = c)
                cat("
D_N := [",DN,"]
P [",b,"->",c,"]( t =",a,") =",TP)
                return( list(DN,TP) )
                break
              }else{

                if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
                  cat("---------------------------------------------------------------------------------------
Por favor, siga las instrucciones enunciadas.")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
                  cat("---------------------------------------------------------------------------------------
Please follow the instructions stated.")
                } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
                  cat("---------------------------------------------------------------------------------------
Per favore, seguire le istruzioni indicate.")
                }

              }

            }

          }

          break

        }else if( cont != 2){

          if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
            cat("---------------------------------------------------------------------------------------
Alguno de dichos estados (",b,c,")
no existen en el conjunto {S} ya
predefinido.
Por favor, siga las instrucciones
enunciadas.
")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
            cat("---------------------------------------------------------------------------------------
Some of the states (",b,c,")
do not exist in the default {S} conjunct.
Please read the instructions given.
")
          } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
            cat("---------------------------------------------------------------------------------------
Alcuni di questi stati (",b,c,")
non esistono nel congiunto {S} già
predefinito.
Per favore, seguire le istruzioni
enunciate.
")
          }

        }

      }else{

        if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
          cat("---------------------------------------------------------------------------------------
Por favor, introduzca un número en vez de un carácter
")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
          cat("---------------------------------------------------------------------------------------
Please, enter a number instead of a character
")
        } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
          cat("---------------------------------------------------------------------------------------
Per favore, inserisci un numero invece di un carattere
")
        }

      }

    }else if( is.na(a) == TRUE || length(a) == 0 ){

      if ( idioma_actual == IDIOMAS_DISPONIBLES[1] ) {
        cat("---------------------------------------------------------------------------------------
Por favor, introduzca un número en vez de un espacio nulo
")
      } else if ( idioma_actual == IDIOMAS_DISPONIBLES[2] ){
        cat("---------------------------------------------------------------------------------------
Please, enter a number instead of a null space
")
      } else if ( idioma_actual == IDIOMAS_DISPONIBLES[3] ){
        cat("---------------------------------------------------------------------------------------
Per favore, inserisci un numero invece di uno spazio nullo
")
      }

    }

  }

}



##################################################################################################



is_true <- function (boolean_vector){
  q = 1
  true = TRUE
  while ( q <= length(boolean_vector) & true == TRUE ){
    if( boolean_vector[q] != TRUE ){
      true = FALSE
    }
    q = q + 1
  }
  return(true)
}



##################################################################################################
##################################################################################################

################## ----------- ESQUELETO DE LA APLICACIÓN ----------- ############################

##################################################################################################
##################################################################################################



CADENA_DE_MARKOV <- function(){

  IDIOMAS = c("ESPAÑOL","ENGLISH","ITALIANO")

  MI_IDIOMA_ANTERIOR = IDIOMAS[1]

  # ------ "SELECCIONAR_IDIOMA" DEFINICION ---------

  MI_IDIOMA_ACTUAL = SELECCIONAR_IDIOMA(IDIOMAS,MI_IDIOMA_ANTERIOR)

  if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
    cat("---------------------------------------------------------------------------------------
CADENAS DE MARKOV
---------------------------------------------------------------------------------------
Antes de ejecutar este código, primero se han
de instalar los siguientes paquetes:

    - 'markovchain'
    - 'expm'
---------------------------------------------------------------------------------------

")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
    cat("---------------------------------------------------------------------------------------
MARKOV CHAINS
---------------------------------------------------------------------------------------
Before running this code, the following packages
must first be installed:

    - 'markovchain'
    - 'expm'
---------------------------------------------------------------------------------------

")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
    cat("---------------------------------------------------------------------------------------
CATENE DI MARKOV
---------------------------------------------------------------------------------------
Prima di eseguire questo codice, innanzitutto
si devono installare i seguenti pacchetti:

    - 'markovchain'
    - 'expm'
---------------------------------------------------------------------------------------

")
  }

  install.packages("markovchain") ###
  library(markovchain)            ###  PUEDE SER SUPLANTADO SI SE
  install.packages("expm")        ###. IMPORTA DIRECTAMENTE CON EL PAQUETE
  library(expm)                   ###

  if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
    cat("---------------------------------------------------------------------------------------
                      MARKOV CHAIN MAKER
---------------------------------------------------------------------------------------
Introduzca su nombre de usuario :
")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
    cat("---------------------------------------------------------------------------------------
                      MARKOV CHAIN MAKER
---------------------------------------------------------------------------------------
Enter your user name :
")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
    cat("---------------------------------------------------------------------------------------
                      MARKOV CHAIN MAKER
---------------------------------------------------------------------------------------
Inserisci il suo nome utente :
")
  }

  Usuario <<- readline("")

  if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
    cat("Introduzca su contraseña:")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
    cat("Enter your password:")
  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
    cat("Inserisci la tua password:")
  }

  Contraseña <<- readline("")

  CM = NULL
  Directorio_CMs = list()
  nombres_CMs = c()

  repeat
  {
    Volver = FALSE

    # ------ "MENU_DE_LA_APLICACION" DEFINICION ---------

    MENU = MENU_DE_LA_APLICACION(MI_IDIOMA_ACTUAL,IDIOMAS)

    if( length(MENU) == 0 ){


      if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
        cat("---------------------------------------------------------------------------------------
Por favor, responda a la pregunta enunciada
---------------------------------------------------------------------------------------
¡VUELTA AL MENU!
")
      } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
        cat("---------------------------------------------------------------------------------------
Please, answer the question stated
---------------------------------------------------------------------------------------
BACK TO THE MENU!
")
      } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
        cat("---------------------------------------------------------------------------------------
Per favore, rispondere alla domanda indicata
---------------------------------------------------------------------------------------
TORNA AL MENU'!
")
      }

    }else{

      # ------ "CREACION_DE_CADENA_DE_MARKOV" DEFINICION ---------

      # ------ "RESULTADOS" DEFINICION ---------

      # ------ "OPERACIONES" DEFINICION ---------

      if( (MENU == "1") & (Volver == FALSE) ){

        CM = CREACION_DE_CADENA_DE_MARKOV(MI_IDIOMA_ACTUAL,IDIOMAS)
        RESULT = RESULTADOS(CM,MI_IDIOMA_ACTUAL,IDIOMAS)
        repeat
        {
          if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
            cat("
---------------------------------------------------------------------------------------
Desea guardar la Cadena de Markov creada?
Aviso 1 : Si desea volver al menú principal, escriba 'NO'
Aviso 2 : Si no lo desea, por favor no escriba ni teclee nada")

          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
            cat("
---------------------------------------------------------------------------------------
Do you want to save the created Markov Chain?
Notice 1 : If you want to return to the main menu, type 'NO'
Notice 2 : If you do not want to, please do not type or enter anything")

          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
            cat("
---------------------------------------------------------------------------------------
Vuoi salvare la catena di Markov creata?
Avviso 1: Se vuoi tornare al menu principale, digita 'NO'
Avviso 2: Se non lo desideri, non scrivere né digitare nulla")

          }

          ELECCION = scan( , ,1, what = "")
          ELECCION = toupper(ELECCION)

          if( length(ELECCION) == 0 ) {

            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
              cat("---------------------------------------------------------------------------------------
Por favor, vuelva a leer la consideración enunciada")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
              cat("---------------------------------------------------------------------------------------
Please, re-read the consideration stated.")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
              cat("---------------------------------------------------------------------------------------
Per favore, rileggere la considerazione espressa")
            }

          }else{

            if ( (ELECCION == "SÍ") | (ELECCION == "SI") |
                 (ELECCION == "YES") | (ELECCION == "SÌ") ){

              repeat
              {
                if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                  cat("---------------------------------------------------------------------------------------
Introduzca el nombre asignado a dicha Cadena de Markov :
")
                } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                  cat("---------------------------------------------------------------------------------------
Enter the name assigned to said Markov Chain :
")
                } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                  cat("---------------------------------------------------------------------------------------
Inserisci il nome assegnato a detta catena di Markov :
")
                }

                nom_CM = scan( , , 1, what = "")

                if(length(nom_CM) != 0){

                  nombre_repetido = FALSE

                  if(length(nombres_CMs) >= 1){

                    z = 1
                    nom_CM_sintetico = paste0("_",nom_CM,"_")

                    while( z <= length(nombres_CMs))
                    {
                      if( nom_CM_sintetico == nombres_CMs[z] ){

                        nombre_repetido = TRUE
                        break

                      }else{
                        z = z + 1
                      }
                    }
                  }

                  if( nombre_repetido == FALSE ){

                    nom_CM = paste0("_",nom_CM,"_")
                    nombres_CMs = c(nombres_CMs,nom_CM)
                    Directorio_CMs[[nom_CM]] = CM

                    if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                      cat("---------------------------------------------------------------------------------------
La Cadena de Markov :",nom_CM,"
¡Se ha guardado correctamente en el sistema!
")
                    } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                      cat("---------------------------------------------------------------------------------------
The Markov Chain :",nom_CM,"
has been successfully saved to the system!
")
                    } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                      cat("---------------------------------------------------------------------------------------
La Catena di Markov:",nom_CM,"
È stato salvato con successo nel sistema!
")
                    }

                    break

                  }else if( nombre_repetido == TRUE ){

                    if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                      cat("---------------------------------------------------------------------------------------
¡Nombre Repetido! Seleccione otro, por favor
")
                    } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                      cat("---------------------------------------------------------------------------------------
Duplicate Name! Please enter another one
")
                    } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                      cat("---------------------------------------------------------------------------------------
Nome ripetuto! Inserisci un altro, per favore
")
                    }

                  }

                }else{

                  if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                    cat("---------------------------------------------------------------------------------------
Por favor, introduzca un nombre como se le pide
")
                  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                    cat("---------------------------------------------------------------------------------------
Please, enter a name as requested
")
                  } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                    cat("---------------------------------------------------------------------------------------
Per favore, inserisci un nome come richiesto
")
                  }

                }

              }

              Volver = TRUE
              break

            }else if ( ELECCION == "NO" ){

              Volver = TRUE
              break

            }else{

              if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                cat("---------------------------------------------------------------------------------------
Por favor, vuelva a leer la consideración enunciada")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                cat("---------------------------------------------------------------------------------------
Please, re-read the consideration stated.")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                cat("---------------------------------------------------------------------------------------
Per favore, rileggere la considerazione espressa")
              }

            }
          }

        }

      }else if( (MENU == "2") & (Volver == FALSE) ){

        CM_eliminada = FALSE

        repeat
        {
          if( length(Directorio_CMs) != 0 ){

            Recordar_Dominio = FALSE

            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
              cat("---------------------------------------------------------------------------------------

CADENAS DE MARKOV CREADAS
")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
              cat("---------------------------------------------------------------------------------------

MARKOV CHAINS CREATED
")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
              cat("---------------------------------------------------------------------------------------

CATENE DI MARKOV GIÀ CREATE
")
            }

            for( i in 1:length(nombres_CMs) )
            {
              cat("\n",i,"-",nombres_CMs[i],"\n")
            }

            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
              cat("\n---------------------------------------------------------------------------------------

Seleccione la Cadena de Markov que desee mediante su número asociado : ")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
              cat("\n---------------------------------------------------------------------------------------

Select the Markov Chain you want by its associated number : ")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
              cat("\n---------------------------------------------------------------------------------------

Seleziona la Catena di Markov che desideri utilizzando il numero associato : ")
            }

            OPCION_2 = scan( , , 1, what = "")
            OPCION_2 = as.numeric(OPCION_2)

            if( length(OPCION_2) != 0 ){

              if( is.na(OPCION_2) == FALSE ){

                if( (1 <= OPCION_2) && (OPCION_2 <= length(nombres_CMs) ) ){

                  j = 1
                  while( j <=length(nombres_CMs) )
                  {
                    if( j == OPCION_2 ){
                      es_natural = TRUE
                      break
                    }else{
                      j = j + 1
                    }
                  }

                  if( es_natural == TRUE ){

                    CM_elegida = Directorio_CMs[[OPCION_2]]

                    repeat
                    {

                      repeat
                      {
                        if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                          cat("---------------------------------------------------------------------------------------

Elegida la Cadena de Markov :",nombres_CMs[OPCION_2],"

Seleccione una de las tres opciones propuestas mediante su número asociado:

 1 - OPERACIONES

 2 - RESUMEN

 3 - ELIMINAR CADENA

")
                        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                          cat("---------------------------------------------------------------------------------------

Selected Markov Chain: ",nombres_CMs[OPCION_2],"

Select one of the three options proposed by its associated number:

 1 - OPERATIONS

 2 - SUMMARY

 3 - DELETE CHAIN

")
                        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                          cat("---------------------------------------------------------------------------------------

Catena di Markov scelta:",nombres_CMs[OPCION_2],"

Selezionare una delle tre opzioni proposte utilizzando il numero associato:

 1 - OPERAZIONI

 2 - SOMMARIO

 3 - ELIMINA CATENA

")
                        }

                        OPCION_3 = scan( , , 1, what = "")
                        if( length(OPCION_3) != 0 ){

                          if( OPCION_3 == "1" )
                          {
                            OPE = OPERACIONES(CM_elegida,MI_IDIOMA_ACTUAL,IDIOMAS)
                            break

                          }else if( OPCION_3 == "2" )
                          {

                            RES = RESULTADOS(CM_elegida,MI_IDIOMA_ACTUAL,IDIOMAS)
                            break

                          }else if( OPCION_3 == "3"){

                            Directorio_CMs = Directorio_CMs[-OPCION_2]

                            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                              cat("---------------------------------------------------------------------------------------
La Cadena de Markov :",nombres_CMs[OPCION_2],"
¡Se ha eliminado correctamente del sistema!
")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                              cat("---------------------------------------------------------------------------------------
The Markov Chain :",nombres_CMs[OPCION_2],"
has been successfully removed from the system!
")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                              cat("---------------------------------------------------------------------------------------
La Catena di Markov :",nombres_CMs[OPCION_2],"
È stato rimosso con successo dal sistema!
")
                            }

                            nombres_CMs = nombres_CMs[-OPCION_2]
                            CM_eliminada = TRUE
                            break

                          }else{

                            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                              cat("---------------------------------------------------------------------------------------
Por favor, atienda a las indicaciones mostradas en pantalla
")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                              cat("---------------------------------------------------------------------------------------
Please, follow the instructions on the screen.
")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                              cat("---------------------------------------------------------------------------------------
Per favore, prestare attenzione alle istruzioni visualizzate sullo schermo.
")
                            }

                          }

                        }else{

                          if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                            cat("---------------------------------------------------------------------------------------
Por favor, atienda a las indicaciones mostradas en pantalla
")
                          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                            cat("---------------------------------------------------------------------------------------
Please, follow the instructions on the screen.
")
                          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                            cat("---------------------------------------------------------------------------------------
Per favore, prestare attenzione alle istruzioni visualizzate sullo schermo.
")
                          }

                        }
                      }

                      if( CM_eliminada == TRUE)
                        break

                      Misma = TRUE

                      repeat
                      {
                        if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                          cat("
---------------------------------------------------------------------------------------
Si desea seguir trabajando con dicha Cadena de Markov teclee:  '1'
Si desea seguir trabajando con otra Cadena de Markov teclee:   '2'
Si desea volver al menú principal teclee:                      '3'
En caso contrario, por favor no escriba nada
")
                        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                          cat("
---------------------------------------------------------------------------------------
If you want to continue working with this Markov Chain type: '1'
If you want to continue working with another Markov Chain type: '2'
If you want to return to the main menu type: '3'
Otherwise, please do not type anything
")
                        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                          cat("
---------------------------------------------------------------------------------------
Se vuoi continuare a lavorare con la catena di Markov, digita: '1'
Se vuoi continuare a lavorare con un'altra catena di Markov, digita: '2'
Se vuoi tornare al menu principale digita: '3'
Altrimenti, non scrivere nulla
")
                        }

                        ELECCION = scan( , ,1, what = "")
                        ELECCION = toupper(ELECCION)

                        if( length(ELECCION) == 0 ) {

                          if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                            cat("---------------------------------------------------------------------------------------
Por favor, vuelva a leer la consideración enunciada")
                          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                            cat("---------------------------------------------------------------------------------------
Please, re-read the consideration stated.")
                          } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                            cat("---------------------------------------------------------------------------------------
Per favore, rileggere la considerazione espressa")
                          }

                        }else{

                          if( (ELECCION == "1") ){

                            break

                          }else if (ELECCION == "2" )
                          {
                            Misma = FALSE
                            break

                          }else if( ELECCION == "3"){

                            Misma = FALSE
                            Volver = TRUE
                            break

                          }else{

                            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                              cat("---------------------------------------------------------------------------------------
Por favor, vuelva a leer la consideración enunciada")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                              cat("---------------------------------------------------------------------------------------
Please, re-read the consideration stated")
                            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                              cat("---------------------------------------------------------------------------------------
Per favore, rileggere la considerazione espressa")
                            }

                          }

                        }

                      }

                      if( Misma == FALSE )
                        break
                    }

                  }else{
                    Recordar_Dominio = TRUE
                  }

                }else{
                  Recordar_Dominio = TRUE
                }
              }
            }

            if( Recordar_Dominio == TRUE ){

              if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                cat("---------------------------------------------------------------------------------------
Recuerde que el dominio de selección son los naturales entre: 1 -",length(nombres_CMs),"\n")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                cat("---------------------------------------------------------------------------------------
Remember that the selection domain is the natural numbers between: 1 - ",length(nombres_CMs),"\n")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                cat("---------------------------------------------------------------------------------------
Si ricorda che il dominio di selezione è quello naturale compreso tra: 1 -",length(nombres_CMs),"\n")
              }

            }else if( Recordar_Dominio == FALSE && CM_eliminada == FALSE ){

              if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
                cat("---------------------------------------------------------------------------------------
Por favor siga las instrucciones enunciadas y teclee un número
")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
                cat("---------------------------------------------------------------------------------------
Please, follow the instructions given and enter a number.
")
              } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
                cat("---------------------------------------------------------------------------------------
Per favore, segui le istruzioni e inserisci un numero
")
              }

            }

            if( CM_eliminada == TRUE )
              Volver = TRUE

          }else{

            if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
              cat("---------------------------------------------------------------------------------------
Por favor, defina antes una Cadena de Markov
")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
              cat("---------------------------------------------------------------------------------------
Please, define a Markov Chain first
")
            } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
              cat("---------------------------------------------------------------------------------------
Per favore, definire prima una Catena di Markov
")
            }

            Volver = TRUE
          }

          if(Volver == TRUE)
            break
        }

      } else if(MENU == "3"){

        MI_IDIOMA_ANTERIOR = MI_IDIOMA_ACTUAL
        MI_IDIOMA_ACTUAL = SELECCIONAR_IDIOMA(IDIOMAS,MI_IDIOMA_ANTERIOR)

      }else if(MENU == "4"){

        if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
          cat("---------------------------------------------------------------------------------------
Hasta pronto usuario:",Usuario,"
---------------------------------------------------------------------------------------
Desinstalando paquetes:
  - markovchain
  - expm
---------------------------------------------------------------------------------------
  ")
        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
          cat("---------------------------------------------------------------------------------------
See you soon user:",Usuario,"
---------------------------------------------------------------------------------------
Uninstalling packages:
  - markovchain
  - expm
---------------------------------------------------------------------------------------
  ")
        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
          cat("---------------------------------------------------------------------------------------
A presto utente:",Usuario,"
---------------------------------------------------------------------------------------
Disinstallazione dei pacchetti:
  - markovchain
  - expm
---------------------------------------------------------------------------------------
  ")
        }

        detach("package:markovchain", unload = TRUE)
        remove.packages("markovchain")
        detach("package:expm", unload = TRUE)
        remove.packages("expm")
        break

      }else{

        if ( MI_IDIOMA_ACTUAL == IDIOMAS[1] ) {
          cat("---------------------------------------------------------------------------------------
Por favor, vuelva a leer la consideración enunciada
---------------------------------------------------------------------------------------
¡VUELTA AL MENU!
")
        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[2] ){
          cat("---------------------------------------------------------------------------------------
Please, re-read the consideration stated.
---------------------------------------------------------------------------------------
BACK TO THE MENU!
")
        } else if ( MI_IDIOMA_ACTUAL == IDIOMAS[3] ){
          cat("---------------------------------------------------------------------------------------
Per favore, rileggere la considerazione espressa
---------------------------------------------------------------------------------------
TORNA AL MENÙ!
")
        }

      }
    }
  }
}



##################################################################################################
##################################################################################################

################################## -------- FIN ---------- #######################################

##################################################################################################
##################################################################################################


