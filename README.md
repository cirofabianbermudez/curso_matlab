# Manual de Matlab 

Autor: Ciro Fabian Bermudez Marquez



## 1. Introducción (uso básico)

* Una vez abierto Matlab se puede utilizar directamente desde el prompt `>>` para realizar operaciones básicas, como declarar variables o utilizarlo como una calculadora simple.
* Las partes básicas de en el ambiente de trabajo de Matlab son **Workspace**, **Command Window**, **Current Folder**, **Editor**.
* Utilizar `;` al final de los comandos ingresados en el prompt tiene la única finalidad de evitar que el resultado se despliegue.
* Los nombres de las variables deben empezar con una letra siempre.
* Para guardar el espacio de trabajo utilizamos el comando `save filename`, se guarda un archivo con terminación `.mat`.
* Con el comando `clear` limpias todas las variables de espacio de trabajo.
* Para cargar un espacio de trabajo se utiliza el comando `load filename`.
* El comando`clc` limpia el prompt.

> Nota 1: cuando se trata de archivos `.mat` es opcional poner la terminación dentro de los comandos.
>
> Nota 2: se puede agregar como parámetro opcional la variable que se desee cargar en `save` y `load`.



## Lista de comandos

| Comando             | Descripción                                                 |
| ------------------- | ----------------------------------------------------------- |
| `save filemane.mat` | Guarda el espacio de trabajo actual.                        |
| `clear`             | Vacía el espacio de trabajo.                                |
| `load filename.mat` | Carga el espacio de trabajo `filename`.                     |
| `clc`               | Limpia la salida del prompt.                                |
| `format short`      | Formato por default de los resultados en el prompt. `long`. |
| `close`             | Cierra ventanas emergentes.                                 |
| `doc commandname`   | Abre la documentación de `commandname`. **MÁS IMPORTANTE**  |


## Lista de comandos de funciones matemáticas 


| Comando  | Descripción                                    |
| -------- | ---------------------------------------------- |
| `pi`     | Variable que contiene el valor numérico de pi. |
| `sin()`  | Calcula la función seno en radianes.           |
| `cos()`  | Calcular la función coseno en radianes.        |
| `sqrt()` | Calcula la raíz cuadrada.                      |



## 2. Arreglos

Todas las variables de MATLAB son *arreglos*. Esto significa que cada variable puede contener múltiples elementos. Se pueden utilizar arreglos para almacenar datos relacionados en una variable.

Debido a que usará arreglos cada vez que programe, es importante conocer los arreglos y la terminología utilizada para describirlos.

Los arreglos se utilizan en todo MATLAB. De hecho, MATLAB es una abreviatura de MATrix LABoratory (laboratorio de matrices)

| Tipo de arreglo | Código                                                       |
| --------------- | ------------------------------------------------------------ |
| Matriz          | `A = [1 2; 3 4]`                                             |
| Escalar         | `A = 1`                                                      |
| Vector renglon  | `A = [1 2 3 4]`                                              |
| Vector columna  | `A = [1; 2; 3; 4]` o `A = [1 2 3 4].'`   ( operador de trasposición (`.'`) ) |

Existe cierta flexibilidad cuando se crean arreglos. Por ejemplo, todas estas son formas válidas de crear el mismo arreglo: `x = [7 9]` `x=[7,9]` `x = [7, 9]`



### Funciones para crear arreglos

| Comando                 | Descripción                                                  |
| ----------------------- | ------------------------------------------------------------ |
| `x = 1:10`              | Vector de 1 a 10 de uno en uno.                              |
| `x = 0:2:20`            | Vector de 0 hasta 20 de dos en dos.                          |
| `x = linspace(0,20,2)`  | Vector linealmente espaciado (uniforme) de 0 hasta 20 de dos en dos. |
| `x = rand(2)`           | Matriz de 2X2  de números aleatorios.                        |
| `x = randi([1,20],5,7)` | Matriz de números aleatorios enteros entre 1 y 20 de 5X7.    |
| `x = ones(2,1)`         | Matriz de 2X1  llena de unos.                                |
| `x = zeros(3,2)`        | Matriz de 3X2 llena de ceros.                                |
| `size(x)`               | Retorna el tamaño de la matriz  `x`                          |
| `numel(x)`              | Retorna el número de elementos del vector o matriz           |



## 3. Indexación

La indexación es la forma de extraer y modificar los valores de los arreglos. La posición de un valor dentro de un arreglo es su índice. El índice se puede utilizar para extraer valores concretos.

Supongamos un vector de la forma `x = 1:10 `, entonces podemos realizar las siguientes indexaciones:

| Comando      | Descripción                                                  |
| ------------ | ------------------------------------------------------------ |
| `x(3)`       | Extrae el tercer elemento del vector `x`.                    |
| `x(3) = 1`   | Modifica el tercer elemento del vector `x` por `1.`          |
| `x(2:4)`     | Extrae desde el segundo elemento hasta el cuarto elemento.   |
| `x(1:2:end)` | Extrae desde el primer elemento hasta el último de dos en dos. |

Supongamos una matriz de la forma `y = [1 2 3; 4 5 6; 7 8 9] `, entonces podemos realizar las siguientes indexaciones:

| Comando      | Descripción                                                  |
| ------------ | ------------------------------------------------------------ |
| `y(2,2)`     | Extrae el elemento del segundo renglón segunda columna de `y`. |
| `y(1,:)`     | Extrae todo el primer renglón,  el operador `:` en indexación significa todo, (todas las columnas). |
| `y(:,2)`     | Extrae todos los renglones de la segunda columna.            |
| `y(1,end)`   | Extrae el último elemento de la columna del primer renglón.  |
| `y(1,end-1)` | Extrae el penúltimo elemento de la columna del primer renglón. |
| `y(6)`       | Cuando utilizamos un solo índice en las matrices comienza de arriba para abajo desde la primera columna hasta la última por ejemplo `y(6)` es igual a `8`. |
| `y(1:2,:)`   | Extrae los dos primeros renglones.                           |



## 4. Calculo con arreglos

Cuando se esta trabajando con arreglos es muy sencillo realizar operaciones entre ellos. 

Supongamos un vector de la siguiente forma `x1 = 1:100`, el primer elemento vale 1 y el último 100. y un vector `x2 = 101:200`.

| Comando                | Descripción                                                  |
| ---------------------- | ------------------------------------------------------------ |
| `h = x1 + 1`           | Le suma un 1 a todos los elementos de`x1`.                   |
| `h = x1 + x2`          | Se suman elemento a elemento `x1` y `x2`. **DEBEN SER DEL MISMO TAMAÑO** |
| `h = 2*x1`             | Multiplicación por un escalar.                               |
| `h = x1/2`             | División por un escalar.                                     |
| `max(x1)`              | Calcula el máximo de todos los elementos.                    |
| `min(x1)`              | Calcula el mínimo de todos los elementos.                    |
| `sqrt(x1)`             | Calcula la raíz cuadrada de cada uno de todos los elementos. |
| `round(x1)`            | Redondea al entero más cercano de cada uno de los elementos. |
| `h = x1.*x2`           | Realiza la **multiplicación elemento a elemento** de las matrices. |
| `h = x1./x2`           | Realiza la división elemento a elemento de las matrices.     |
| `h = x1*x2`            | Realiza la **multiplicación matricial**, los tamaños de `x1 ` y `x2` deben ser compatibles. |
| `[r,c] = size(x1)`     | `r` contienen los renglones y `c` las columnas de la matriz `x1`. |
| `[vMax,idx] = max(x1)` | `vMax` contienen el valor máximo del vector y `idx` el índice de este. |
| `[~,idx] = max(x1)`    | Si solo se necesita uno se utiliza el operador tilde `~` para no guardar nada. |



## 5. Indexación lógica

Los operadores relacionales, como `>`, `<`, `==` y `~=`, realizan comparaciones entre dos valores. El resultado de una comparación de igualdad o desigualdad es 1 (verdadero) o 0 (falso). Para entenderlo mejor analizaremos los siguientes vectores `v = [4.0, 6.66, 1.51, 4.72, 9.06].'` y `t = [10 15 16 20 25].'`, de manera que estos dos vectores representan la velocidad y el tiempo medidos en un sistema.

Se puede comparar un vector o una matriz con un único valor escalar utilizando operadores relacionales. El resultado es un arreglo lógico del mismo tamaño que el arreglo original.

Se puede utilizar un arreglo lógico como índice de arreglo, en cuyo caso MATLAB extrae los elementos del arreglo en los que el índice es `true`.

También puede utilizar la indexación lógica con dos vectores diferentes.

Se puede utilizar la indexación lógica para reasignar valores en un arreglo. 

Puede utilizar los operadores lógicos `and` (`&`) y `or` (`|`) para combinar comparaciones lógicas.

| Comando           | Descripción                                                  |
| ----------------- | ------------------------------------------------------------ |
| `pi < 4`          | Devuelve un `1` lógico.                                      |
| `test = v < 4`    | Devuelve un vector lógico `[0 0 1 0 0].'`                    |
| `test = v(v < 4)` | Extrae los elementos del arreglo que sean menores a 4, `[1.5100]` |
| `test = t(v < 4)` | Extrae los elementos del arreglo de `t` correspondientes cuando `v` es menor a 4, `[16]` |
| `v(v < 4 ) = 0`   | Asigna cero a todos los elementos de `v` que sean menores que 4.  `[4.0, 6.66, 0, 4.72, 9.06].'` |



## 6. Representación grafica de datos

Para poder graficar una función primero es necesario definir un vector que represente el eje de las `x` y uno que represente el eje de las `y`, es importante que los vectores tengan el mismo tamaño.

### Prog01: Gráfica sencilla

```matlab
%% prog01_grafica_sencilla
clear; close all; clc;									% Limpiar
x = 0:0.1:2*pi; 										% x = linspace(0,2*pi,100);
y = sin(x);
plot(x,y,'-sb','DisplayName', 'f(x) = sin(x)');			% Graficar, nombre y color
axis( [min(x) max(x) min(y) max(y)] );					% Límites de grafica
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');	% Titulos
```

* `'-sb'` **Line Style - Marker - Color**  (si no pones uno se elige el predeterminado), linea solida, marcadores cuadrados, color azul.
* El comando `plot(y)` grafica los puntos de `y` en el eje vertical, y de 1 hasta N (número de elementos del vector) en el eje horizontal. 
* `axis( [xmin xmax ymin ymax] )` controla los límites de la gráfica. 
* `title(''); xlabel(''); ylabel('');` agrega las etiquetas de los ejes y el título.+-



### Prog02: Gráficas sobrepuestas

```matlab
%% prog02_graficas_sobrepuestas
clear; close all; clc;									% Limpiar
x = 0:0.01:2*pi; 										% x = linspace(0,2*pi,100);
y1 = sin(x); y2 = cos(x);
plot(x,y1,'-b','DisplayName', 'f1(x) = sin(x)','LineWidth',2);		
hold on;
plot(x,y2,'--k','DisplayName', 'f2(x) = cos(x)','LineWidth',2);		
axis( [min(x) max(x) min(y1) max(y1)] );			    % Definir ejes
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('Funciones'); xlabel('x'); ylabel('f(x)');	    % Titulos
```

* `hold on` mantiene la primera grafica en pantalla.
* `plot(.....,'LineWidth',2)`    (Controla el ancho de línea)



### Prog03: Gráficas avanzadas

Este formato de gráfica es el estándar para publicaciones.

```matlab
%% prog03_graficas_publicaciones
clear; close all; clc;									
x = 0:0.1:2*pi; 										
y = sin(x);
plot(x,y,'-sr','DisplayName', '$f(x) = \sin(x)$');	    
axis( [min(x) max(x) min(y) max(y)] );					
grid on; grid minor;								
legend('Location','northeast','Interpreter','latex','FontSize', 12);
title('$f(x) = \sin(x)$','Interpreter','latex'); 
xlabel('$x$','Interpreter','latex'); 
ylabel('$f(x)$','Interpreter','latex');
set(gca,'TickLabelInterpreter','latex', 'FontSize', 12);
```

* `'Interpreter','latex'` cambia la fuente a modo LaTeX.
* `set(gca,'TickLabelInterpreter','latex', 'FontSize', 11)` cambia a LaTeX los ejes. 



### Prog04: Gráficas múltiples 

```matlab
%% prog04_graficas_multiples
clear; close all; clc;									
x = 0:0.1:2*pi; 										
y1 = sin(x); y2 = cos(x);

subplot(2,1,1);
plot(x,y1,'-sr','DisplayName', 'f(x) = sin(x)');	    
axis( [min(x) max(x) min(y1)*1.1 max(y1)*1.1] );				
grid on; grid minor;								
legend('Location','northeast','FontSize', 12);
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');

subplot(2,1,2);
plot(x,y2,'-sk','DisplayName', 'f(x) = cos(x)');	    
axis( [min(x) max(x) min(y2)*1.1 max(y2)*1.1] );					
grid on; grid minor;								
legend('Location','southeast','FontSize', 12);
title('f(x) = cos(x)');  xlabel('x'); ylabel('f(x)');
```

* `subplot(2,1,1);` divide la figura actual en una cuadricula de 2 renglones por 1 columna, el tercer parámetro indica la posición, en este caso solo hay dos posiciones.



### Prog05: Leer archivos y graficar

El objetivo es representar de forma gráfica el consumo de electricidad para varios sectores económicos: residencial, comercial e industrial. ¿Qué sector económico tendrá el consumo más elevado?

El archivo `electricity.mat` contienen una matriz llamada `usage` y otra llamada `prices`, la primera columna es para residencial, la segunda para comercial y la tercera para industrial.

Los datos de consumo representan el consumo eléctrico de EE. UU. para diferentes años en el mes de julio. Los datos de consumo están en 10^9 kWh/día, y los datos de precios están en centavos de dólar estadounidense por kWh.

```matlab
%% prog05_leer_archivo_y_graficar
clear; close all; clc;
load electricity;
res = usage(:,1);
comm = usage(:,2);
ind = usage(:,3);
yrs = 1991:2013;
plot(yrs,res,'--b','DisplayName','Residencial'); hold on;
plot(yrs,comm,':k','DisplayName','Comercial');
plot(yrs,ind,'-.m','DisplayName','Industrial');
grid on; grid minor;
legend('Location','northwest');
title('Uso de electricidad en Julio');
xlabel('Años'); ylabel('10^9 kWh / dia'); 
```



### Prog06: Frecuencias en audio

Las señales de audio suelen estar compuestas por muchas frecuencias diferentes. Por ejemplo, en la música, la nota "do medio" tiene una frecuencia fundamental de 261,6 Hz, y la mayoría de la música consta de varias notas (o frecuencias) que se tocan al mismo tiempo.

Se analizará el contenido de frecuencia de un órgano que toca el acorde Do. El acorde Do consta de las notas Do (261,6 Hz), Mi (329,6 Hz) y Sol (392 Hz).  La grabación del acorde Do está almacenada en un archivo llamado `Cchord.mat`. Este archivo contiene dos variables:

- `y`: señal de la grabación
- `fs`: frecuencia de muestreo

Una transformada de Fourier devolverá información sobre el contenido de frecuencia de la señal. La ubicación de las frecuencias dominantes mostrará qué notas están contenidas en el acorde.

Se puede utilizar la función `fft` para calcular la transformada discreta de Fourier de un vector. Los valores de salida de `fft` son números complejos. Se puede utilizar la función `abs` para obtener la magnitud.

```matlab
%% prog06_frecuencia_audio
clear; close all; clc;
load Cchord.mat;
% sound(y);
n = numel(y);
t = 0:n-1;
t = t/fs;
plot(t,y)
yfft = abs(fft(y));
f = 0:n-1;
f = f*(fs/(n-1));
plot(f,yfft);
grid on; grid minor;
title('FFT'); xlabel('Hz'); ylabel('Amplitud');	
xlim([0 1000])
```



## 7. Construcciones de programación

### 7.1 Sentencia if

La sentencia `if` sirve para realizar toma de decisiones en nuestros códigos. Evalúa una expresión y ejecuta un grupo de declaraciones cuando la expresión es verdadera. Una expresión es verdadera cuando su resultado no está vacío y conti ene solo elementos distintos de cero (lógicos o numéricos reales). De lo contrario, la expresión es falsa.

Los bloques `elseif` y `else` son opcionales. Las declaraciones se ejecutan solo si las expresiones anteriores en el bloque `if` ... `end` son falsas. Un bloque `if` puede incluir varios bloques `elseif`.

La sintaxis es la siguiente:

```matlab
if expresion
    sentencias
elseif expresion
    sentencias
else
    sentencias
end
```



### Prog7: 

```matlab
```

