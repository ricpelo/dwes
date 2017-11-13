==========================
Conceptos básicos de PHP I
==========================

ricpelo's note: Programada inicialmente para empezar el 23-10-2017.

.. program-output:: php ../../p.php

.. command-output:: php ../../p.php

Introducción a PHP
------------------

Página web de PHP
~~~~~~~~~~~~~~~~~

<http://php.net>

Instalación de PHP
~~~~~~~~~~~~~~~~~~

Documentación y búsqueda de información
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configuración básica con ``php.ini``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``error_reporting = E_ALL``
^^^^^^^^^^^^^^^^^^^^^^^^^^^

``display_errors = On``
^^^^^^^^^^^^^^^^^^^^^^^

``display_startup_errors = On``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``date.timezone = 'UTC'``
^^^^^^^^^^^^^^^^^^^^^^^^^

Sintaxis básica
---------------

<http://php.net/manual/es/language.basic-syntax.php>

.. index:: datos, instrucciones

Datos e instrucciones
~~~~~~~~~~~~~~~~~~~~~

En todo lenguaje de programación existen dos elementos básicos: los **datos** y
las **instrucciones**. Los datos son las porciones de información con las que
trabajan los programas, y las instrucciones son las acciones que manipulan esos
datos para llevar a cabo la tarea para la que fue concebido el programa. Ambos
elementos, datos e instrucciones, constituyen los pilares del lenguaje y de los
programas que se escriben con él.

.. index:: sentencias, expresiones

Desde un punto de vista sintáctico, en el código fuente del programa, los datos
se codifican en forma de **expresiones**, y las instrucciones toman la forma
de **sentencias**.

La diferencia fundamental entre una expresión y una sentencia es la siguiente:

.. index::
   single: expresiones, evaluación de
   see: evaluación; expresiones

- Una expresión tiene un valor (se dice que *denota* o *representa* un valor), y
  por eso decimos que una expresión *se puede evaluar*, y al evaluarse, se
  obtiene el valor de la expresión, que no es más que un dato.

- En cambio, una sentencia no denota ningún valor, por lo que no puede
  evaluarse. El intérprete *ejecuta* la sentencia y se llevan a cabo las
  acciones que provoca dicha ejecución.

Las expresiones se evalúan. Las sentencias se ejecutan.

.. admonition:: Ejemplos de expresiones

   ::

     5 * (3 + 6)

   Es una expresión aritmética que involucra números enteros y cuyo valor es
   ``45``.

   ::

     1.6 + 2.3

   Es una expresión aritmética que involucra números reales y cuyo valor es
   ``3.9``.

   ::

     74

   Es una constante literal numérica cuyo valor es, precisamente, ``74``.

.. index:: sentencias, comandos

Sentencias y comandos
~~~~~~~~~~~~~~~~~~~~~

Las sentencias en PHP pueden ser *simples* o *compuestas*.

- Las **sentencias simples** son las instrucciones más elementales del lenguaje
  y se escriben siempre acabadas en punto y coma (``;``).
- Las **sentencias compuestas** corresponden a las **estructuras de control** y
  se estudiarán posteriormente en este capítulo.

Se puede construir una sentencia simple usando sencillamente una expresión y
acabándola en punto y coma, como por ejemplo::

    8 + 3;

Pero una sentencia así no tendría mucha utilidad, ya que el intérprete de PHP se
limitaría a evaluar la expresión pero no haría nada más con el valor calculado.

.. index:: efectos laterales

Las sentencias realmente útiles son aquellas que provocan **efectos laterales**,
es decir, acciones que provocan cambios en el estado interno del programa o que
producen resultados que se vuelcan hacia la *salida* (siendo esta cualquier
dispositivo de salida, como por ejemplo la pantalla, un archivo del disco o una
fila de una tabla de una base de datos relacional).

.. index:: comandos, palabras clave

Otra forma de construir una sentencia simple es usar **comandos**. PHP dispone
de varios comandos con los que se pueden escribir sentencias para llevar a cabo
instrucciones sencillas. Cada comando consta de una **palabra clave**, que
identifica al comando, y de una serie de *argumentos* que completan la
sentencia.

.. index:: echo

El comando ``echo``
^^^^^^^^^^^^^^^^^^^

El ejemplo clásico de comando en PHP es ``echo`` (ver `definición
<http://php.net/manual/es/function.echo.php>`_ en el manual de PHP). El comando
``echo`` vuelca a la salida el valor de las expresiones que se indican como
parámetro en la sentencia. Por ejemplo::

    echo 25 * 3;

Muestra ``75`` por la salida (normalmente la pantalla). O bien::

    echo '¡Hola a todos!';

Muestra la cadena ``¡Hola a todos!``.

Puede mostrar varios valores, separando cada uno de ellos entre sí con una
coma::

    echo 'El resultado es: ', 4 * 2;

.. index:: expresiones

Expresiones
~~~~~~~~~~~

El otro tipo de construcción sintáctica que existe en PHP junto con las
sentencias son las *expresiones*. Una expresión *denota* o *representa* un
valor. Una expresión puede ser tan simple como una constante literal (por
ejemplo, el número ``25``) o tan compleja que involucre constantes, variables,
operadores, funciones y métodos, combinados todos ellos entre sí para formar una
única expresión.

.. index:: operadores

Operadores
^^^^^^^^^^

Un **operador** es un símbolo que representa una operación que se desea realizar
sobre uno, dos o tres **operandos** (dependiendo de si el operador es *unario*,
*binario* o *ternario* [#aridad]_). Los operandos son los valores sobre los que
actúa el operador para llevar a cabo la operación deseada. Por ejemplo::

    4 + 3

Aquí, el operador ``+`` representa la operación *suma* a realizar sobre los
números ``4`` y ``3``, que son sus operandos. Como el operador actúa sobre dos
operandos, se dice que es un operador *binario*. En cambio::

    -17

Aquí se usa el operador ``-`` (*signo menos*) para convertir en negativo el
valor ``17``. Como el operador actúa sobre un único operando, se dice que es un
operador *unario*.

En PHP existe un único operador *ternario* que se estudiará posteriormente.

.. [#aridad]

   El número de operandos de un operador se denomina **aridad**. La aridad
   puede ser 1, 2 ó 3, según el operador sea *unario*, *binario* o
   *ternario*, respectivamente.

En una misma expresión pueden actuar varios operadores, como en::

    4 + 3 + 5

Que denota el valor ``12``, o con varios operadores diferentes::

    4 + 3 * 5

Que evalúa a ``19``.

.. index:: asociatividad, prioridad

Asociatividad y prioridad
'''''''''''''''''''''''''

Todas las expresiones anteriores son ejemplos de expresiones *artiméticas*,
donde se realizan las operaciones matemáticas usuales (suma, resta, producto y
división) sobre números. La evaluación de una expresión (ya sea aritmética o de
cualquier otro tipo) depende de las reglas de **asociatividad** y **prioridad**
de los operadores que participan en dicha expresión, las cuales tenemos que
conocer para entender cómo evaluará el intérprete las expresiones que formen
parte de nuestro programa. En el caso de las expresiones aritméticas, las reglas
son las habituales que aprendimos en el colegio:

- En una expresión en la que un operando está rodeado a izquierda y derecha por
  *el mismo operador*, se aplica la regla de la *asociatividad*. Por ejemplo,
  en la expresión::

    4 + 3 + 5

  el operando ``3`` tiene el mismo operador a izquierda y derecha (el ``+``), y
  como dicho operador es *asociativo por la izquierda*, la expresión se evalúa
  igual que si se hubiera escrito como::

    (4 + 3) + 5

- En una expresión en la que un operando está rodeado a izquierda y derecha por
  *distintos operadores*, se aplica la regla de la *prioridad*. Por ejemplo,
  en la expresión::

    4 + 3 * 5

  el operando ``3`` tiene el operador ``+`` a su izquierda y el ``*`` a su
  derecha, pero como el producto tiene más prioridad que la suma, la expresión
  se evalúa igual que si se hubiera escrito como::

    4 + (3 * 5)

Como se aprecia en los ejemplos anteriores, se pueden usar **paréntesis** para
agrupar sub-expresiones dentro de una expresión y así aumentar la prioridad de
los operadores que vayan entre paréntesis. Por ejemplo, en la expresión::

    (4 + 3) * 5

la suma se hace antes que el producto, aunque este último sea un operador de
mayor prioridad. El resultado de dicha expresión es el valor ``35``.

.. index:: funciones

Funciones
^^^^^^^^^

Las funciones en las expresiones cumplen el mismo papel que en las Matemáticas
de toda la vida: realizan un cálculo a partir de unos valores de entrada
indicados en sus parámetros y *devuelven* el resultado de dicho cálculo,. Por
ejemplo, la función *coseno* (abreviado como *cos*) calcula el coseno de un
ángulo. En Matemáticas (y en Programación) se representa indicando el nombre de
la función y, a continuación, la lista de sus parámetros entre paréntesis y
separados por comas. Así, para calcular el coseno de 2.4 radianes, podemos
escribir::

    cos(2.4)

Que da como resultado ``-0.73739371554125``, y ese sería el valor de dicha
expresión.

El coseno es un ejemplo de función con un único parámetro, pero hay funciones
que admiten o requieren más parámetros. Por ejemplo, la función ``max()``
devuelve el valor máximo de todos los indicados en su lista de parámetros. Por
ejemplo::

    max(5, 3, 8, 2)

Devuelve ``8``.

.. note::
   Cuando usamos una función en una expresión, decimos que estamos *llamando* o
   *invocando* a la función. La aparición de la función en la expresión es una
   *llamada* a la función.

En PHP, a diferencia de lo que ocurre en Matemáticas, existen funciones que no
devuelven ningún valor, ya que su objetivo es provocar un *efecto lateral*.

Funcionamiento del intérprete
-----------------------------

<http://php.net/manual/es/language.basic-syntax.phpmode.php>

Modo dual de operación
~~~~~~~~~~~~~~~~~~~~~~

ricpelo's note: Se llaman *modo HTML* y *modo PHP*.

Etiquetas ``<?php`` y ``?>``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Intérprete interactivo
----------------------

``php -a``
~~~~~~~~~~

PsySH
~~~~~

<http://psysh.org/>

Variables
---------

<http://php.net/manual/es/language.variables.php>

Conceptos básicos
~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.variables.basics.php>

Destrucción de variables
~~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/function.unset.php>

Operadores de asignación por valor y por referencia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.operators.assignment.php>

ricpelo's note: En ``$b =& $a;``, ``$b`` **NO** está apuntando a ``$a``
o viceversa. Ambos apuntan al mismo
lugar. <http://php.net/manual/es/language.references.whatdo.php>

Variables predefinidas
~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/reserved.variables.php>

ricpelo's note: ``$_ENV`` no funciona en la instalación actual (ver
``variables_order`` en ``php.ini``. Habría que usar ``get_env()``.

Tipos básicos de datos
----------------------

<http://php.net/manual/es/language.types.intro.php>

Lógicos (``bool``)
~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.types.boolean.php>

| ricpelo's note: Se escriben en minúscula: ``false`` y
  ``true``. <https://github.com/yiisoft/yii2/blob/master/docs/internals/core-code-style.md#51-types>
| ricpelo's note: ``boolean`` es sinónimo de ``bool``, pero debería
  usarse ``bool``.

Operadores lógicos
^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.operators.logical.php>

| ricpelo's note: *Cuidado*:
| - ``false and (true && print('hola'))`` no imprime nada y devuelve
  ``false``, por lo que **el código va en cortocircuito y se evalúa de
  izquierda a derecha** incluso aunque el ``&&`` y los paréntesis tengan
  más prioridad que el ``and``.
| - Otra forma de verlo es comprobar que
  ``print('uno') and (1 + print('dos'))`` escribe ``unodos`` (y devuelve
  ``true``), por lo que la evaluación de los operandos del ``and`` se
  hace de izquierda a derecha aunque el ``+`` tenga más prioridad (y
  encima vaya entre paréntesis).
| - En el `manual de
  PHP <http://php.net/manual/es/language.operators.precedence.php>`__ se
  dice que: *"La precedencia y asociatividad de los operadores solamente
  determinan cómo se agrupan las expresiones, no especifican un orden de
  evaluación. PHP no especifica (en general) el orden en que se evalúa
  una expresión y se debería evitar el código que se asume un orden
  específico de evaluación, ya que el comportamiento puede cambiar entre
  versiones de PHP o dependiendo de código circundante."*
| - `Pregunta que hice al respecto en
  StackOverflow <https://stackoverflow.com/questions/46861563/false-and-true-printhi>`__.

Numéricos
~~~~~~~~~

Enteros (``int``)
^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.types.integer.php>

ricpelo's note: ``integer`` es sinónimo de ``int``, pero debería usarse
``int``.

Números en coma flotante (``float``)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.types.float.php>

ricpelo's note: ``double`` es sinónimo de ``float``, pero debería usarse
``float``.

Operadores
^^^^^^^^^^

Operadores aritméticos
''''''''''''''''''''''

<http://php.net/manual/es/language.operators.arithmetic.php>

Operadores de incremento/decremento
'''''''''''''''''''''''''''''''''''

<http://php.net/manual/es/language.operators.increment.php>

Cadenas (``string``)
~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.types.string.php>

ricpelo's note: Se usa ``{$var}`` y no
``${var}`` <https://github.com/yiisoft/yii2/blob/master/docs/internals/core-code-style.md#variable-substitution>

Operadores de cadenas
^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.operators.string.php>

Concatenación
'''''''''''''

Acceso y modificación por caracteres
''''''''''''''''''''''''''''''''''''

<http://php.net/manual/es/language.types.string.php#language.types.string.substr>

| ricpelo's note: - ``echo $a[3]``
| - ``$a[3] = 'x';``

Operadores de incremento/decremento
'''''''''''''''''''''''''''''''''''

<http://php.net/manual/es/language.operators.increment.php>

Funciones de manejo de cadenas
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/ref.strings>

Extensión *mbstring*
^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/en/book.mbstring.php>

| ricpelo's note: - ``$a[3]`` equivale a ``mb_substr($a, 3, 1)``
| - ``$a[3] = 'x';`` no tiene equivalencia directa. Se podría hacer:
| ``$a = mb_substr($a, 2, 1) . 'x' . mb_substr($a, 4);``

Nulo
~~~~

<http://php.net/manual/es/language.types.null.php>

| ricpelo's note: ```is_null()`` vs.
  ``=== null`` <https://phpbestpractices.org/#checking-for-null>
| ricpelo's note: El tipo ``null`` y el valor ``null`` se escriben en
  minúscula. <https://github.com/yiisoft/yii2/blob/master/docs/internals/core-code-style.md#51-types>

Precedencia de operadores
~~~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.operators.precedence.php>

Operadores de asignación compuesta
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ricpelo's note: ``$x`` *<op>*\ ``= $y``

Comprobaciones
~~~~~~~~~~~~~~

De tipos
^^^^^^^^

``gettype()``
'''''''''''''

<http://php.net/manual/en/function.gettype.php>

``is_*()``
''''''''''

<http://php.net/manual/es/ref.var.php>

ricpelo's note: Poco útiles en formularios, ya que sólo se reciben
``string``\ s.

De valores
^^^^^^^^^^

``is_numeric()``
''''''''''''''''

<http://php.net/manual/es/function.is-numeric.php>

``ctype_*()``
'''''''''''''

<http://php.net/manual/es/book.ctype.php>

Conversiones
~~~~~~~~~~~~

<http://php.net/manual/es/language.types.type-juggling.php>

Coerción, moldeado, forzado o *casting*
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.types.type-juggling.php#language.types.typecasting>

ricpelo's note: Conversión de cadena a número

Conversión a ``bool``
'''''''''''''''''''''

<http://php.net/manual/es/language.types.boolean.php#language.types.boolean.casting>

Conversión a ``int``
''''''''''''''''''''

<http://php.net/manual/es/language.types.integer.php#language.types.integer.casting>

Conversión a ``float``
''''''''''''''''''''''

<http://php.net/manual/es/language.types.float.php#language.types.float.casting>

Conversión de ``string`` a número
'''''''''''''''''''''''''''''''''

<http://php.net/manual/es/language.types.string.php#language.types.string.conversion>

ricpelo's note: **¡Cuidado!**: La documentación dice que ``1 + "pepe"``
o ``1 + "10 pepe"`` funciona, pero en PHP7.1 da un **PHP Warning: A
non-numeric value encountered**.

Conversión a ``string``
'''''''''''''''''''''''

<http://php.net/manual/es/language.types.string.php#language.types.string.casting>

Funciones de obtención de valores
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ricpelo's note: Hacen más o menos lo mismo que los *casting* pero con
funciones en lugar de con operadores. Puede ser interesante porque las
funciones se pueden guardar, usar con *map*, *reduce*, etc.

``intval()``
''''''''''''

<http://php.net/manual/es/function.intval.php>

``floatval()``
''''''''''''''

<http://php.net/manual/es/function.floatval.php>

``strval()``
''''''''''''

<http://php.net/manual/es/function.strval.php>

``boolval()``
'''''''''''''

<http://php.net/manual/es/function.boolval.php>

Funciones de formateado numérico
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``number_format()``
'''''''''''''''''''

<http://php.net/manual/es/function.number-format.php>

``money_format()``
''''''''''''''''''

<http://php.net/manual/es/function.money-format.php>

``setlocale()``
...............

<http://php.net/manual/es/function.setlocale.php>

ricpelo's note:
``setlocale(LC_ALL, 'es_ES.UTF-8'); // Hay que poner el *locale* completo, con la codificación y todo (.UTF-8)``

Comparaciones
~~~~~~~~~~~~~

Operadores de comparación
^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.operators.comparison.php>

``==`` vs. ``===``
^^^^^^^^^^^^^^^^^^

Ternario (``?:``)
^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.operators.comparison.php#language.operators.comparison.ternary>

Fusión de null (``??``)
^^^^^^^^^^^^^^^^^^^^^^^

<https://wiki.php.net/rfc/isset_ternary>

ricpelo's note: Equivalente al ``COALESCE()`` de SQL.

Reglas de comparación de tipos
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/types.comparisons.php>

ricpelo's note: ``"250" < "27"`` devuelve ``false``

Constantes
----------

<http://php.net/manual/es/language.constants.syntax.php>

| ricpelo's note: Diferencias entre constantes y variables:
| - Las constantes no llevan el signo dólar (``$``) como prefijo.
| - Antes de PHP 5.3, las constantes solo podían ser definidas usando la
  función ``define()`` y no por simple asignación.
| - Las constantes pueden ser definidas y accedidas desde cualquier
  sitio sin importar las reglas de acceso de variables.
| - Las constantes no pueden ser redefinidas o eliminadas una vez se han
  definido.
| - Las constantes podrían evaluarse como valores escalares. A partir de
  PHP 5.6 es posible definir una constante de array con la palabra
  reservada ``const``, y, a partir de PHP 7, las constantes de array
  también se pueden definir con ``define()``. Se pueden utilizar arrays
  en expresiones escalares constantes (por ejemplo,
  ``const FOO = array(1,2,3)[0];``), aunque el resultado final debe ser
  un valor de un tipo permitido.

``define()`` y ``const``
~~~~~~~~~~~~~~~~~~~~~~~~

Constantes predefinidas
~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.constants.predefined.php>

``defined()``
~~~~~~~~~~~~~

<http://php.net/manual/es/function.defined.php>

Flujo de control
----------------

Estructuras de control
~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.control-structures.php>

Sintaxis alternativa
^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/control-structures.alternative-syntax.php>

ricpelo's note: El ``do { ... } while (...);`` **no** tiene sintaxis
alternativa.

Inclusión de archivos
~~~~~~~~~~~~~~~~~~~~~

``include``, ``require``
^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/function.include.php>

| ricpelo's note: El nombre del archivo debe aparecer con su extensión.
  No vale hacer ``require 'pepe';``.
| ricpelo's note: Cuando un archivo es incluido, el intérprete abandona
  el modo PHP e ingresa al modo HTML al comienzo del archivo objetivo y
  se reanuda de nuevo al final.
| ricpelo's note: Si el archivo incluido tiene un ``return ...;``, el
  ``include`` o el ``require`` que lo incluya devolverá el valor
  devuelto por el ``return``.

``include_once``, ``require_once``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/function.include-once.php>

Funciones predefinidas destacadas
---------------------------------

``isset()``
~~~~~~~~~~~

<http://php.net/manual/es/function.isset.php>

| ricpelo's note: Cuidado si la variable contiene ``null``.
| ricpelo's note: No da error ni advertencia si la variable no existe.

``empty()``
~~~~~~~~~~~

<http://php.net/manual/es/function.empty.php>

ricpelo's note: Para evitar el problema de ``empty("0") === true``::

    function is_blank($value) {
        return empty($value) && !is_numeric($value);
    }

ricpelo's note: No da error ni advertencia si la variable no existe.

``var_dump()``
~~~~~~~~~~~~~~

<http://php.net/manual/es/function.var-dump.php>

Arrays
------

<http://php.net/manual/es/language.types.array.php>

ricpelo's note: Las claves pueden ser enteros o cadenas.

Operadores para arrays
~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.operators.array.php>

ricpelo's note: **Comparaciones**: Un ``array`` con menos elementos es
menor. De otra forma, compara valor por valor.

Acceso, modificación y agregación
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.types.array.php#language.types.array.syntax.modifying>

Funciones de manejo de arrays]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/book.array.php>
<http://php.net/manual/es/ref.array.php>

Ordenación de arrays
^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/array.sorting.php>

``print_r()``
^^^^^^^^^^^^^

``'+'`` vs. ``array_merge()``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``isset()`` vs. ``array_key_exists()``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/function.array-key-exists.php#107786>

``foreach``
~~~~~~~~~~~

<http://php.net/manual/es/control-structures.foreach.php>

Conversión a ``array``
~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/language.types.array.php#language.types.array.casting>

*Ejemplo*: ``$argv`` en CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~~

<http://php.net/manual/es/reserved.variables.argv.php>

Funciones definidas por el usuario
----------------------------------

<http://php.net/manual/es/language.functions.php>

Argumentos
~~~~~~~~~~

<http://php.net/manual/es/functions.arguments.php>

Paso de argumentos por valor y por referencia
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/functions.arguments.php#functions.arguments.by-reference>

Argumentos por defecto
^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/functions.arguments.php#functions.arguments.default>

ricpelo's note:
``php   function prueba($opciones = []) {       extract($opciones);       // ...   }``

Ámbito de variables
~~~~~~~~~~~~~~~~~~~

<http://php.net/language.variables.scope>

Ámbito simple al archivo
^^^^^^^^^^^^^^^^^^^^^^^^

Variables locales
^^^^^^^^^^^^^^^^^

Uso de ``global``
^^^^^^^^^^^^^^^^^

ricpelo's note: Usar ``global $x;`` cuando ``$x`` no existe hace que
``$x`` empiece a existir y valga ``null``.

Variables superglobales
^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/language.variables.superglobals.php>

Declaraciones de tipos
~~~~~~~~~~~~~~~~~~~~~~

ricpelo's note: **NO** se hacen conversiones implícitas a ``array``, ni
en argumentos ni en devolución.

Declaraciones de tipo de argumento
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/functions.arguments.php#functions.arguments.type-declaration>

Declaraciones de tipo de devolución
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/functions.returning-values.php#functions.returning-values.type-declaration>

Tipos *nullable* (``?``) y ``void``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/migration71.new-features.php>

Tipificación estricta
^^^^^^^^^^^^^^^^^^^^^

<http://php.net/manual/es/functions.arguments.php#functions.arguments.type-declaration.strict>

ricpelo's note: El ``declare(strict_types=1);`` se pone en el archivo
que hace la llamada, no en el que define la función.
