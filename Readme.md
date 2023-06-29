# Solución de ecuaciones cuadráticas usando la fórmula general

El programa calcula la solución de una ecuación cuadrática usando la fórmula general para soluciones que solo continen números reales. 

De forma que para una ecuación del tipo:

$ax^2 + bx + c$

$x^2 + m x + n \Rightarrow x_2 + m x = - n$

donde $m = {b \over a}$ y $n ={ c \over a}$

Al completar el cuadrado obtenemos que 

$x^2 + m x + {m^2 \over 4}= - n + {m^2 \over 4} \Rightarrow \left ({x + {m \over 2}} \right) ^ 2= - n + {m^2 \over 4} \Rightarrow {x + {m \over 2}}= \pm \sqrt{{m^2 \over 4}- n} \Rightarrow {x = - {m \over 2}} \pm \sqrt{{m^2 \over 4}- n} $

devolviendo los valores originales obtenemos que la forma de solucionar la ecuación es: 

$x = {{- b} \pm \sqrt{{b^2 }- 4ac} \over 2a }$

### Caso 1: Ecuación con solucion real
```Matlab
Ecuación de segundo grado.
--> 7x^2 + 6x

...
7x^2 + 6x + 0

x_1 = -0.8571429	x_2 = 0
```
### Caso 2: Ecuación con solucion indefinida
```Matlab
Ecuación de segundo grado.
--> 12x - 34

...
0x^2 + 12x + -34

x_1 = -Inf	x_2 = Nan
```
### Caso 2: Ecuación con solucion con parte imaginaria
```Matlab
Ecuación de segundo grado.
--> 12.42x^2-16/30x+34

...
12.42x^2 + -0.5333333x + 34

La ecuación no tiene raíces reales.
```

### Referencias
- Scilab. (2023). length - Number of characters of a string. Number of elements of an array or list. *Scilab Online Help*. https://help.scilab.org/docs/2023.1.0/en_US/length.html
- Scilab. (2023). size - Size of objects. *Scilab Online Help*. https://help.scilab.org/size
- Scilab. (2023). split - Split a single string at some given positions or patterns. *Scilab Online Help*. https://help.scilab.org/docs/2023.1.0/en_US/strsplit.html
- Scilab. (2023). strtod - Parse and convert literal numbers STRings TO Decimal numbers. *Scilab Online Help*. https://help.scilab.org/docs/2023.1.0/en_US/strtod.html
- Wikipedia. (2023). Deducción de la solución . *Ecuación de segundo grado*. https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_segundo_grado
