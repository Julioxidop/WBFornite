##Caracteristicas
- Totalmente configurable a tus necesidades con unos pocos comandos.
- Al ser vanilla no se necesita tener conocimientos avanzados en programación para modificarlo a tu gusto.
- Funciones listas para que lo puedas personalizar y dar tu toque único.

##Descargar e instalar
Primero necesitaremos [***descargar***](https://github.com/Julioxidop/WBFornite/releases/tag/1.0 "aquí")  el datapack, después lo descomprimimos en la carpeta **datapacks** de nuestro mundo y ejercutaremos el comando **/reload** para que esté listo para funcionar.

##Funcionamiento y configuración
Los parametros configurables que tenemos son los siguientes.
###Tamaño inicial
Este parámetro es necesario configurarlo de manera correcta, ya que es usado para realizar calculos escencial para el correcto funcionamiento.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _startsize TAMAÑO_INICIAL
```
Donde solo cambiaremos la palabra TAMAÑO_INICIAL a la cantidad de bloques del tamaño del worldborder inicial.
**IMPORTANTE:** El tamaño que coloquemos en este scoreboard tambien deberemos de cambiar manualmente el tamaño del worldborder al mismo valor con el siguiente comando:
```
/worldborder set TAMAÑO_INICIAL
```
**De no ser así no podremos iniciar el funcionamiento del datapack
**
###Tamaño final
Este parámetro marcará la cantidad de bloques a la cual terminará el worldborder cuando se acabe el tiempo.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _finalsize TAMAÑO_FINAL
```
Donde solo cambiaremos la palabra TAMAÑO_FINAL a la cantidad de bloques del tamaño del worldborder final.
###Tiempo
Este es el parámetro principal el cual definirá toda la ejecución del datapack. 
Este tiempo se refiere a los **segundos** que pasarán desde que se inicia la primera iteración hasta que el borde alcanza el tamaño final.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando.
```
    /scoreboard players set .b _timer TIEMPO

```
Donde solo cambiaremos la palabra TIEMPO a la **cantidad de segundos** que durará todo el sistema.
[![tiempoytamaños](https://i.imgur.com/dH8q28y.png "tiempoytamaños")](https://i.imgur.com/dH8q28y.png "tiempoytamaños")

###Iteraciones
Llevamos un simil con FORNITE, son las veces que la tormenta avanza. Por ejemplo, si yo tengo 2 iteraciones, en 2 ocaciones el borde se reducirá de tamaño hasta alcanzar el tamaño final.
Es necesario mencionar que siempre se añade una iteración extra, está iteración es el periodo de gracia al empezar el juego, en está iteración no se reducirá el borde.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando.
```
    /scoreboard players set .b _iters ITERACIONES

```
Donde solo cambiaremos la palabra ITERACIONES por la cantidad de iteraciones que queremos.
[![iters](https://i.imgur.com/d5C4T0B.png "iters")](https://i.imgur.com/d5C4T0B.png "iters")

###Porcentaje del tiempo de reducción
Este parámetro es un porcentaje que va de 0 a 100, el cual indica de lo que dura una iteración, cuanto tiempo se estará reduciendo el borde. Por ejemplo, si yo tengo ya configurado mis parámetros, y por como los configuré resulta que los segundos que dura una iteración es de 10 segundos, y yo a este parámetro lo pongo a 80, entonces el 80% del tiempo de la iteración el borde se estaría reduciendo, es decir, de los 10 segundos que dura una iteración, 8 segundos se estaría reduciendo el borde.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando.
```
    /scoreboard players set .b _reductionpercent PORCENTAJE

```
Donde solo cambiaremos la palabra PORCENTAJE por el porcentaje del tiempo que se estará reduciendo el borde.
**IMPORTANTE:** Este número solo debería de ser entre 0 y 100, de no ser así podría causar problemas.
[![percent](https://i.imgur.com/mJaDWzc.png "percent")](https://i.imgur.com/mJaDWzc.png "percent")

##Como usar el datapack
- Después de haber configurado todos los parámetros, para iniciar el sistema, necesitaremos ejecutar el siguiente comando:
```
/function wbfornite:_start
```
- Si queremos resetear todo el sistema deberemos ejecutar el siguiente comando:
```
/function wbfornite:_reset
```
**NOTA:** Esta función no resetea los parámetros, solo el temporizador y variables internas. Tampoco resetea el tamaño del worldborder al inicial, por lo que eso deberemos de hacerlo nosotros manualmente.
- Si por alguna razón necesitamos parar completamente el ciclo de ejeción del sistema, necesitaremos ejecutar el siguiente comando:
```
/function wbfornite:_kill
```
**NOTA:**Esta función no es una "PAUSA", esta función mata el ciclo de ejecución del sistema.
##Personalización
Este datapack está planeada para la personalización de eventos específicos, las funciones para ajustar estan en `p22wbf/data/wbfornite/functions/modify/` aqui tenemos 4 funciones listas para 4 eventos diferentes.
###start.mcfunction
Esta función se ejecuta cuando se empieza el sistema después de usar el comando `./function wbfornite:_start`
###iter.mcfunction
Esta función se ejecuta al comienzo de una iteración. Por defecto en el datapack dice el tiempo que falta para que el borde se comienze a reducir.
###reduction.mcfunction
Esta función se ejecuta cuando el borde comienza a reducirse. Por defecto solo dice que el borde comenzó a reducirse.
###final.mcfunction
Esta función se ejecuta cuando el tiempo se termina y el worldborder llega al tamaño final.

Sientete libre de modificar las demás funciones si necesitas mayor personalización.
##Notas
- Por cuestión de decimales y por falta de tiempo, el tamaño final del worldborder no siempre es exactamente el que se estableció, el tamaño final puede varias desde una fracción de bloque a un par de bloques.
- Si tienes dudas o quieres contactar conmigo, mi user de discord es: **hugme#8792**
