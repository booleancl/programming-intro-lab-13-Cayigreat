## Repaso SQL

SQL es un lenguaje de programacion para base de datos. Su traduccion literal sería Lenguaje Estructurado de Consulta(Structured Query Language).

SQL es un lenguaje insensible a mayúsculas y minúsculas. "select" == SELECT, pero para mejor comprensión del programador se utiliza las palabras del lenguaje en mayúsculas.

En SQL las tablas tienen columnas que tendrán información de cierto **tipo**

Como buena práctica los nombres de las tablas deben ser en **plural**

Llave primaria: debe ser con valor único y no nulo(requisitos para ser llave primaria)

CSV : Es un formato de archivo muy popular en los negocios. A partir de XLS se pueden exportar datos en CSV y también importar. "Valores separados por comas"

HEADER: encabezado

SELECT <column>
FROM <table>;

La sentencia **Where** es para filtrar informacion

'''sql
SELECT <column>
FROM <table>;
WHERE <column> <condition> ;
'''
Ejemplo usando **AND**

'''sql
SELECT name, country, area
FROM cities
WHERE area < 1100 
AND country = 'Japan';

Ejemplo usando **OR**

'''sql
SELECT name, country, area
FROM cities
WHERE area < 1100
OR country = 'Japan';
'''
## Ejemplo ordenando los resultados en forma ascendente

''' sql
SELECT name, country, area
FROM cities
ORDER BY area;

## Ejemplo con WHERE, OR y ORDER

'''sql
SELECT name, country, area
FROM cities
WHERE area < 1100
OR country = 'Japan'
ORDER by area;
'''
## Ejemplo descendente

'''sql
SELECT name, country, area
FROM cities
WHERE area < 1100
OR country != 'Japan'
ORDER by area DESC;
'''

>Nota distinto puede ser != O <>

## Campos o columna calculadas con  AS (como)

'''sql
SELECT name, population/area AS density (se pueden hacer más de 1 operación matemática, colocándola entre paréntesis)
FROM cities
ORDER BY density DESC;
'''
'''sql
SELECT name, population/area AS density
FROM cities
ORDER by density ASC;
