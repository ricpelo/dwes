************************
Conceptos básicos de PHP
************************

Introducción a PHP
==================

Página web de PHP
-----------------

Instalación de PHP
------------------

Documentación y búsqueda de información
---------------------------------------

Sintaxis básica
===============

Comando ``echo``
----------------

Funcionamiento del intérprete
=============================

Modo dual de operación
----------------------

Etiquetas ``<?php`` y ``?>``
----------------------------

Intérprete interactivo
======================

``php -a``
----------

PsySH
-----

Variables
=========

Conceptos básicos
-----------------

Operadores de asignación por valor y por referencia
---------------------------------------------------

Variables predefinidas
----------------------

Tipos de datos básicos
======================

Lógicos (``bool``)
------------------

Operadores lógicos
~~~~~~~~~~~~~~~~~~

Numéricos
---------

Enteros (``int``)
~~~~~~~~~~~~~~~~~

Números en coma flotante (``float``)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Operadores
~~~~~~~~~~

Operadores aritméticos
......................

Operadores de incremento/decremento
...................................

Cadenas (``string``)
--------------------

Operadores de cadenas
~~~~~~~~~~~~~~~~~~~~~

Concatenación
.............

Acceso y modificación por caracteres
....................................

Operadores de incremento/decremento
...................................

Funciones de manejo de cadenas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Extensión mbstring
~~~~~~~~~~~~~~~~~~

Nulo
----

Operadores de asignación compuesta
----------------------------------

Comparaciones
-------------

Operadores de comparación
~~~~~~~~~~~~~~~~~~~~~~~~~

``==`` vs. ``===``
~~~~~~~~~~~~~~~~~~

Ternario (``?:``)
~~~~~~~~~~~~~~~~~

Fusión de null (``??``)
~~~~~~~~~~~~~~~~~~~~~~~

Reglas de comparación de tipos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Comprobaciones
--------------

De tipos
~~~~~~~~

``gettype()``
.............

``is_*()`` (poco útiles en formularios, ya que sólo se reciben strings)
.......................................................................

De valores
~~~~~~~~~~

``is_numeric()``
................

``ctype_*()``
.............

Conversiones
------------

Coerción, moldeado, forzado o casting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Funciones de obtención de valores
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

intval(), floatval(), strval(), boolval()
.........................................

Funciones de formateado numérico
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

number_format(), money_format(), setlocale()
............................................

Constantes
==========

Constantes predefinidas
-----------------------

Estructuras de control
======================

``include``, ``require``
------------------------

``include_once``, ``require_once``
----------------------------------

Funciones predefinidas
======================

``isset()``
-----------

``empty()``
-----------

Para evitar el problema de ``empty("0") === true``:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: php

   function is_blank($value)
   {
       return empty($value) && !is_numeric($value);
   }

``var_dump()``
--------------

Arrays
======

Operadores para arrays
----------------------

Funciones de manejo de arrays
-----------------------------

``foreach``
-----------

``isset()`` vs. ``array_key_exists()``
--------------------------------------

Funciones
=========

Ámbito de variables
-------------------

Ámbito simple al archivo
~~~~~~~~~~~~~~~~~~~~~~~~

Variables locales
~~~~~~~~~~~~~~~~~

Uso de global
~~~~~~~~~~~~~

Variables superglobales
~~~~~~~~~~~~~~~~~~~~~~~

Argumentos
----------

Argumentos por defecto
~~~~~~~~~~~~~~~~~~~~~~

Paso de argumentos por valor y por referencia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Declaraciones de tipos
----------------------

Declaraciones de tipo de argumento
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Declaraciones de tipo de devolución
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Tipificación estricta
~~~~~~~~~~~~~~~~~~~~~
