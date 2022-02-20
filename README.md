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



## Lista de operadores básicos

| Operador | Función              |
| -------- | -------------------- |
| `+`      | Suma                 |
| `-`      | Resta                |
| `*`      | Multiplicación       |
| `/`      | División             |
| `^`      | Exponenciación       |
| `&`      | Operación lógica AND |
| `|`      | Operación lógica OR  |

La siguiente lista es el orden de las operaciones; el operador que se encuentra más arriba en la lista debe aplicarse primero.

1. paréntesis, corchetes
2. exponentes, raíces
3. multiplicación, división
4. suma, resta



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

| Comando                       | Descripción                                                  |
| ----------------------------- | ------------------------------------------------------------ |
| `x = 1:10`                    | Vector de 1 a 10 de uno en uno.                              |
| `x = 0:2:20`                  | Vector de 0 hasta 20 de dos en dos.                          |
| `x = linspace(0,20,2)`        | Vector linealmente espaciado (uniforme) de 0 hasta 20 de dos en dos. |
| `x = rand(2,2)`               | Matriz de 2X2  de números aleatorios uniformemente distribuidos. |
| `x = randn(2,2)`              | Matriz de 2X2  de números aleatorios normalmente distribuidos, es decir media de cero |
| `x = randi(10,100,1);`        | Matriz de 100X1 de números aleatorios enteros uniformemente distribuidos. con valor máximo de 1. |
| `x = randi([1,20],5,7)`       | Matriz de 5X7 de números aleatorios enteros entre 1 y 20.    |
| `x = a + (b-a)*rand(n,m)`     | Matriz de nXm de números aleatorios uniformemente distribuidos entre `a` y `b`. |
| `x = M + sd*randn(n,m)`       | Matriz de nXm de números aleatorios normalmente distribuidos con una media `M` y una derivación estandar `sd`. |
| `x = ones(2,1)`               | Matriz de 2X1  llena de unos.                                |
| `x = ones(2,1)*5`             | Matriz de 2X1  llena de cincos.                              |
| `x = zeros(3,2)`              | Matriz de 3X2 llena de ceros.                                |
| `size(x)` o `[r,c] = size(x)` | Retorna el tamaño de la matriz  `x`                          |
| `numel(x)`                    | Retorna el número de elementos del vector o matriz           |
| `x = reshape(A,3,3).'`        | Si `A = 1:9;`, generar una matriz 3X3 con los elementos de `A`, nota también funciona `reshape(A,[3,3]).` |
| `x = reshape(A,2,[]).'`       | Si `A = 1:10;`, generar una matriz de dos renglones y automáticamente calcula  cuantas columnas necesita (en este caso 5) con los elementos de`A`. |
| `x = A(:)`                    | Sea `A` cualquier matriz de cualquier tamaño, retorna la matriz `A` convertida en un vector columna, leyendo de arriba a abajo de la primera columna a la última. |

> Nota: para que el comando `reshape()` funcione correctamente es necesario que el número de elementos del vector del argumento coincida con el número de elementos de la matriz resultante.



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



## 4. Concatenación

Concatenar matrices y vectores es una actividad muy común de manera que en esta sección se mostraran algunos ejemplos. sea  `A = 1:9;`, `B = reshape(A,[3,3]).';` y `C = (10:12).';`

| Comando        | Descripción                                                  |
| -------------- | ------------------------------------------------------------ |
| `h = [B C]`    | Concatenación del vector `C` a la derecha de la matriz `B`.  |
| `h = [C D]`    | Concatenación del vector `C` a la izquierda de la matriz `B`. |
| `h = [B; C.']` | Concatenación del vector `C` abajo de la matriz `B`.         |
| `h = [C.'; B]` | Concatenación del vector `C` arriba de la matriz `B`.        |



## 5. Calculo con arreglos

Cuando se esta trabajando con arreglos es muy sencillo realizar operaciones entre ellos. 

Supongamos un vector de la siguiente forma `x1 = 1:100`, el primer elemento vale 1 y el último 100. y un vector `x2 = 101:200`.

| Comando                | Descripción                                                  |
| ---------------------- | ------------------------------------------------------------ |
| `h = x1 + 1`           | Le suma un 1 a todos los elementos de`x1`.                   |
| `h = x1 + x2`          | Se suman elemento a elemento `x1` y `x2`. **DEBEN SER DEL MISMO TAMAÑO** |
| `h = 2*x1`             | Multiplicación por un escalar.                               |
| `h = x1/2`             | División por un escalar.                                     |
| `x = B/A`              | Sea`A = [1 1 3; 2 0 4; -1 6 -1];`, ` B = [2 19 8];` de manera que se tiene lineal de la forma `A*x = B`, se resuelve de la siguiente manera. |
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



## 6. Indexación lógica

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



## 7. Representación grafica de datos

Para poder graficar una función primero es necesario definir un vector que represente el eje de las `x` y uno que represente el eje de las `y`, es importante que los vectores tengan el mismo tamaño.

### Prog01: Gráfica sencilla

```matlab
%% prog01_grafica_sencilla
clear; close all; clc;									% Limpiar
x = 0:0.1:2*pi; 										% x = linspace(0,2*pi,100);
y = sin(x);
plot(x,y,'-sb','DisplayName', 'f(x) = sin(x)');			% Graficar, nombre y color
axis( [min(x) max(x) min(y) max(y)] );					% Límites de grafica
% xlim([ min(x) max(x)]);
% ylim([ min(y) max(y)]);
legend('Location','northeast');							% Ubicación leyenda
grid on; grid minor;									% Reja de fondo
title('f(x) = sin(x)'); xlabel('x'); ylabel('f(x)');	% Titulos
```

* `'-sb'` **Line Style - Marker - Color**  (si no pones uno se elige el predeterminado), linea solida, marcadores cuadrados, color azul.
* El comando `plot(y)` grafica los puntos de `y` en el eje vertical, y de 1 hasta N (número de elementos del vector) en el eje horizontal. 
* `axis( [xmin xmax ymin ymax] )` controla los límites de la gráfica. 
* En lugar de `axis()` se pueden utilizar los comandos de `xlim()` y `ylim()` para controlar los ejes por separado.
* `title(''); xlabel(''); ylabel('');` agrega las etiquetas de los ejes y el título.



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
figure(1);
plot(t,y)
grid on; grid minor;
yfft = abs(fft(y));
f = 0:n-1;
f = f*(fs/(n-1));
figure(2);
plot(f,yfft);
grid on; grid minor;
title('FFT'); xlabel('Hz'); ylabel('Amplitud');	
xlim([0 1000])
```



## 8. Construcciones de programación básica

### 8.1 Sentencia if

La sentencia `if` sirve para realizar toma de decisiones en nuestros códigos. Evalúa una expresión y ejecuta un grupo de declaraciones cuando la expresión es verdadera. Una expresión es verdadera cuando su resultado no está vacío y contiene solo elementos distintos de cero (lógicos o numéricos reales). De lo contrario, la expresión es falsa.

Los bloques `elseif` y `else` son opcionales. Las declaraciones se ejecutan solo si las expresiones anteriores en el bloque `if` ... `end` son falsas. Un bloque `if` puede incluir varios bloques `elseif`. La sintaxis es la siguiente:

```matlab
if expresion
    sentencias
elseif expresion
    sentencias
else
    sentencias
end


if expresion
    sentencias
end


if expresion
    sentencias
else
    sentencias
end
```



### Prog7: Diagrama de bode

El siguiente código muestra como realizar el diagrama de bode de una función de transferencia y utilizando la estructura `if-else` se controla el cambio de unidades de la frecuencia, rad/s si `Hz = 0;` y Hz si `Hz = 1;`.

```matlab
%% prog07_diagrama_de_bode
clear; close all; clc;
Hz = 1;
num = [200 0]; den = [1 12 20];
sys = tf(num,den);

w = logspace(-2,5,500);         % Vector de frecuencias 
[mag, fase, ~] = bode(sys,w);

if Hz == 1
    w = w / (2*pi); text = 'Frequency (Hz)';
else
    text = 'Frequency (rad/s)';
end

figure(1);
subplot(2,1,1); semilogx(w,20*log10(mag(:)),'DisplayName','Normal'); grid on;
title('Diagrama de Bode','interpreter','latex');
ylabel('Magnitud (dB)','interpreter','latex'); xlabel(text,'interpreter','latex');
legend('interpreter','latex','FontSize',7); set(gca,'TickLabelInterpreter','latex');
axis([min(w) max(w) -60 30]);

subplot(2,1,2); semilogx(w,fase(:),'DisplayName','Normal'); grid on;
ylabel('Fase (deg)','interpreter','latex'); xlabel(text,'interpreter','latex');
legend('interpreter','latex','FontSize',7); set(gca,'TickLabelInterpreter','latex');
axis([min(w) max(w) -100 100]);
```



### 8.2 Sentencia for

El ciclo `for` ejecuta un grupo de sentencias en un ciclo durante un número específico de veces. Cuando se conoce exactamente el número de iteraciones que un algoritmo va a ejecutar es recomendable utilizar esta estructura. La sintaxis es la siguiente:

```matlab
for indice = valores
   sentencias
end
```



### Prog8: Múltiples gráficas sobrepuestas

En el siguiente código se muestra como graficar múltiples gráficas de una función variando uno de sus parámetro para analizar el comportamiento que este produce.

```matlab
%% prog08_graficas_sobrepuestas
clear; close all; clc;

t = linspace(0,3,100);

for i = 0:3
    y = t.^2 + i;	% Transformacion rigida, desplazamiento vertical
    nombre = "$f(t) = t^{2} + $ "+ i;
    plot(t,y,'DisplayName',nombre); hold on;
end
grid on; grid minor;
title('$f(t) = t^{2} + i$','interpreter','latex');
ylabel('$f(t)$','interpreter','latex');
xlabel('$t$','interpreter','latex');
legend('interpreter','latex','FontSize',10,'Location','southeast');
set(gca,'TickLabelInterpreter','latex');
axis square;
```



### Prog9: Múltiples gráficas sobrepuestas con animación

Se modifico ligeramente el código anterior para poder animar como se presentan las graficas. 

```matlab
%% prog09_graficas_sobrepuestas_animacion
clear; close all; clc;
t = linspace(0,3,100);
iter = 0:5;
y = zeros( numel(iter), numel(t) );
nombres =  strings( 1, numel(iter) );
for i = iter
    y(i+1,:) = t.^2 + i;	
    nombres(i+1) = "$f(t) = t^{2} + $ "+ i;
end
f = figure; f.Position(1:2) = [0 50]; % [right bottom]
grid on; grid minor; axis square; hold on;
axis([0 max(t) 0 20]);
title('$f(t) = t^{2} + i$','interpreter','latex');
ylabel('$f(t)$','interpreter','latex');
xlabel('$t$','interpreter','latex');
set(gca,'TickLabelInterpreter','latex');
legend('interpreter','latex','FontSize',10,'Location','northwest');
for i = iter
    pause(1);
    plot(t,y(i+1,:),'DisplayName',nombres(i+1)); 
end
```



## 9. Manejo de tablas

Para demostrar como trabajar con tablas utilizaremos el dataset de la siguiente página [GitHub de FiveThirtyEight](https://github.com/fivethirtyeight/data/tree/master/tarantino). El nombre del dataset es `tarantino.csv` y contiene lo siguiente:

| Header       | Definition                                             |
| ------------ | ------------------------------------------------------ |
| `movie`      | Film title                                             |
| `type`       | Whether the event was a profane word or a death        |
| `word`       | The specific profane word, if the event was a word     |
| `minutes_in` | The number of minutes into the film the event occurred |

El artículo original se encuentra en el siguiente link [A Complete Catalog Of Every Time Someone Cursed Or Bled Out In A Quentin Tarantino Movie - FiveThirtyWight](https://fivethirtyeight.com/features/complete-catalog-curses-deaths-quentin-tarantino-films/). El objetivo es replicar las gráficas y tablas del artículo original con Matlab.



### Prog10: Análisis de datos con tablas

#### Parte 1

```matlab
%% prog10_analisis_de_datos_con_tablas
clear; close all; clc;
data = readtable("tarantino.csv");
temp1 = strcmp(data.type,'word');            % 1 en 'words'
temp2 = strcmp(data.movie,'Reservoir Dogs'); % 1 en 'Reservoir Dogs'
temp3 = strcmp(data.type,'death');           % 1 en 'death'
minutos = data.minutes_in( temp2 );          % minutos de Reservoir Dogs'
minutos2 = data.minutes_in( temp3 & temp2 ); % minutos con 'death' y 'Reservoir Dogs'

inicio = 0;
final = 95.45;
grupos = linspace(inicio,final,95);          % Generar grupos
y1 = zeros(1,numel(grupos)-1);    
y2 = zeros(1,numel(grupos)-1);
for i = 1:numel(grupos)-1
    y1(i) = sum( grupos(i)<=minutos & minutos<grupos(i+1) );
    y2(i) = sum( grupos(i)<=minutos2 & minutos2<grupos(i+1) );
    fprintf("%f \t %f \t %d\n",grupos(i),grupos(i+1),y1(i));
end
fprintf("Tamanio de grupo: %f\n",grupos(2)-grupos(1));
bar(grupos(2:end),y1,0.5);
hold on;
bar(grupos(2:end),y2);
ylim([0 20]); xlim([0 100]);
grid on; grid minor;
title('RESERVOIR DOGS, 1992');
xlabel("min"); ylabel('count of curses');
```



#### Parte 2

```matlab
%%
clear; close all; clc;
data = readtable("tarantino.csv");
m = {'Jackie Brown', 'Pulp Fiction','Reservoir Dogs','Kill Bill: Vol. 2','Django Unchained','Inglorious Basterds','Kill Bill: Vol. 1'};
t = {'word','death'};
R = zeros(numel(m),numel(t)+1);         % 1 extra para TOTAL

for i = 1:numel(m)
    temp1 = strcmp(data.movie,m(i));
    temp2 = strcmp(data.type,t(1));
    temp3 = strcmp(data.type,t(2));
    R(i,1) = sum(temp1 & temp2);
    R(i,2) = sum(temp1 & temp3);
    R(i,3) = R(i,1)/R(i,2);
end

t_curses = sum(R(:,1)); t_deaths = sum(R(:,2));
R = round( [R ; [t_curses, t_deaths, t_curses/t_deaths] ],1) ;

film = [m.'; 'TOTAL'];
curses = R(:,1);
deaths = R(:,2);
ratio = R(:,3);
results = table(film,curses,deaths,ratio);
format short;
disp(results);
```

Salida:

```
             film              curses    deaths    ratio
    _______________________    ______    ______    _____

    {'Jackie Brown'       }      368        4        92 
    {'Pulp Fiction'       }      469        7        67 
    {'Reservoir Dogs'     }      421       10      42.1 
    {'Kill Bill: Vol. 2'  }       69       11       6.3 
    {'Django Unchained'   }      262       47       5.6 
    {'Inglorious Basterds'}       58       48       1.2 
    {'Kill Bill: Vol. 1'  }       57       63       0.9 
    {'TOTAL'              }     1704      190         9 
```



#### Parte 3

```matlab
%%
clear; close all; clc;
data = readtable("tarantino.csv");
w = {'fucking','shit','fuck','fucks','n-word','goddamn','goddamned','motherfucker','motherfuckers','bitch','bitches','hell','damn','damned','motherfucking'};
R = zeros(numel(w),2);

n_elem = sum(strcmp(data.type,'word'));

for i = 1:numel(w) 
   R(i,1) = sum( strcmp( data.word,w(i) ) );
   R(i,2) = (R(i,1)/n_elem )*100;
end
R = round(R,1);

word = w.';
count = R(:,1);
percent = R(:,2);
results = table(word,count,percent);
format short;
disp(results);
```

Salida:

```
          word           count    percent
    _________________    _____    _______

    {'fucking'      }     407      23.9  
    {'shit'         }     221        13  
    {'fuck'         }     213      12.5  
    {'fucks'        }       3       0.2  
    {'n-word'       }     179      10.5  
    {'goddamn'      }     113       6.6  
    {'goddamned'    }       1       0.1  
    {'motherfucker' }      70       4.1  
    {'motherfuckers'}      15       0.9  
    {'bitch'        }      64       3.8  
    {'bitches'      }       9       0.5  
    {'hell'         }      45       2.6  
    {'damn'         }      37       2.2  
    {'damned'       }       3       0.2  
    {'motherfucking'}      27       1.6  
```



#### Parte 4

```matlab
%% 
clear; close all; clc;
data = readtable("tarantino.csv");
total = sum(contains(data.word,'fuck'));
w = {'fucking','fuck','motherfucker','motherfucking','fucked','motherfuckers','fucker','fucks','fuckup','fuckhead','fuckface','fuckers'};
R = zeros(numel(w),2);

for i = 1:numel(w) 
   R(i,1) = sum( strcmp( data.word,w(i) ) );
   R(i,2) = (R(i,1)/total )*100;
end

t_count = sum(R(:,1)); t_percent = sum(R(:,2));
R = round([R ; [t_count, t_percent] ],1) ;

type_of_fuck = [w.'; 'TOTAL'];
count = R(:,1);
percent = R(:,2);
results = table(type_of_fuck,count,percent);
format shortG
disp(results);
```

Salida:

```
      type_of_fuck       count    percent
    _________________    _____    _______

    {'fucking'      }     407      52.7  
    {'fuck'         }     213      27.6  
    {'motherfucker' }      70       9.1  
    {'motherfucking'}      27       3.5  
    {'fucked'       }      25       3.2  
    {'motherfuckers'}      15       1.9  
    {'fucker'       }       8         1  
    {'fucks'        }       3       0.4  
    {'fuckup'       }       1       0.1  
    {'fuckhead'     }       1       0.1  
    {'fuckface'     }       1       0.1  
    {'fuckers'      }       1       0.1  
    {'TOTAL'        }     772       100 
```



## 10. Funciones

Para crear funciones es necesario únicamente utilizar la sintaxis correcta y estructurar el código de manera que sea reutilizable y eficiente. Por regla general las funciones siempre tienen entradas y salidas. Es importante definir el tipo de dato de las entradas y de las salidas. Por ejemplo definir el número de salidas, dadas las entradas. La sintaxis es la siguiente:

```matlab
function [s1,s2,...,sn] = function_name(x1,x2,...,xn)	% funcion multiparametro
	sentencias
	s1 = sentencias;
	s2 = sentencias;
	sn = sentencias;
end


funtion salida = function_name( entrada )	% funcion simple
	salida = entrada;
end
```



Cuando definimos una función es importante que el nombre del archivo que contiene la función sea el mismo que el nombre de la función. Por ejemplo si la función se llama `tooth()` entonces el nombre del archivo es `tooth.mat`.

Cuando creamos una función nueva, el archivo de la función debe encontrarse en el mismo directorio en el que estemos trabajando, de lo contrario no será posible ejecutar la función en un llamado dentro de un script. Como recomendación siempre es buena idea tener todos los archivos de funciones dentro del directorio en el que estemos trabajando.



### Prog11: Función por partes

```matlab
%% func_partes
function R = func_partes(x)
    R = zeros(size(x));
    for i = 1:numel(x)
%         fprintf("%d\n",x(i));   % Aqui estamos utilizando sintaxis de lenguaje C
                                  % %d significa decimal y \n es salto de linea
        if x(i) < -1
            R(i) = 1;
        elseif x(i) >= -1 && x(i) < 1
            R(i) = x(i)^2;
        elseif x(i) >= 1
            R(i) = -1;
        end        
    end
end
```



```matlab
%% prog11_funcion_por_partes_test
clear; close all; clc;
x = linspace(-3,3,5e3);
y = func_partes(x);
plot(x,y);
axis([min(x) max(x) -1.5 1.5]);
grid on; grid minor;
```



## 11. Funciones extra

| Comando         | Descripción                                           |
| --------------- | ----------------------------------------------------- |
| `any()`         | Determine if any array elements are nonzero           |
| `all()`         | Determine if all array elements are nonzero or `true` |
| `find()`        | Find indices and values of nonzero elements           |
| `flip()`        | Flip order of elements                                |
| `repelem()`     | Repeat copies of array elements                       |
| `ismember(A,B)` | Array elements that are members of set array          |
| `diff()`        | Differences and approximate derivatives               |
| `repmat()`      | Repeat copies of array                                |
| `randperm(n)`   | Random permutation of integers                        |
| `numel(x)`      | Number of array elements                              |