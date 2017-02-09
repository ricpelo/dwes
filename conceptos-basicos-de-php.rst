************************
Conceptos básicos de PHP
************************

PHP como lenguaje embebido
==========================

Introducción a PHP
------------------

Instalación de PHP
^^^^^^^^^^^^^^^^^^

Página web de PHP
^^^^^^^^^^^^^^^^^

Documentación y búsqueda de información
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Funcionamiento del intérprete
-----------------------------

Modo dual de operación
^^^^^^^^^^^^^^^^^^^^^^

Etiquetas ``<?php`` y ``?>``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Sintaxis básica
---------------

SAPIs
-----

CLI: Uso en línea de comandos
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Apache
^^^^^^

Integración de PHP con Apache
"""""""""""""""""""""""""""""

Configuración básica con ``php.ini``
""""""""""""""""""""""""""""""""""""

Etiqueta ``<?=``
""""""""""""""""

CGI: PHP-FPM (FastCGI Process Manager)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Módulos de extensión
^^^^^^^^^^^^^^^^^^^^

Tipos de datos básicos
======================

Enteros (``int``, sinónimo de ``integer``)
------------------------------------------

Números en coma flotante (``float``, sinónimo de ``double``)
------------------------------------------------------------

Cadenas (``string``)
--------------------

Funciones de manejo de cadenas
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Extensión mbstring
^^^^^^^^^^^^^^^^^^

Lógicos (``bool``, sinónimo de ``boolean``)
-------------------------------------------

``NULL``
--------

``is_null()`` vs. ``=== null``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Comparaciones
-------------

Operadores de comparación
^^^^^^^^^^^^^^^^^^^^^^^^^

``==`` vs. ``===``
^^^^^^^^^^^^^^^^^^

Ternario (``?:``)
^^^^^^^^^^^^^^^^^

Fusión de null (``??``)
^^^^^^^^^^^^^^^^^^^^^^^

Reglas de comparación de tipos
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Comprobaciones
--------------

``gettype()``
^^^^^^^^^^^^^

``is_*()`` (poco útiles en formularios, ya que sólo se reciben strings)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``is_numeric()``
^^^^^^^^^^^^^^^^

``ctype_*()``
^^^^^^^^^^^^^

Conversiones
------------

Coerción, moldeado, forzado o casting
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

intval(), floatval(), strval(), boolval()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

number_format(), money_format(), setlocale()
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Variables
=========

Conceptos básicos
-----------------

Asignación por valor y por referencia
-------------------------------------

Ámbito: globales, superglobales
-------------------------------

Variables predefinidas
----------------------

Constantes
==========

Estructuras de control
======================

``require``, ``require_once``, ``include``, ``include_once``
------------------------------------------------------------

Funciones predefinidas
======================

``isset()``
-----------

``empty()``
-----------

Para evitar el problema de ``empty("0") === true``:
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: php

   function is_blank($value)
   {
       return empty($value) && !is_numeric($value);
   }

Arrays
======

Funciones de manejo de arrays
-----------------------------

``foreach``
-----------

``isset()`` vs. ``array_key_exists()``
--------------------------------------

Funciones
=========

Variables locales
-----------------

Uso de global
-------------

Argumentos por defecto
----------------------

Paso de argumentos por valor y por referencia
---------------------------------------------

Declaraciones de tipos
----------------------

Declaraciones de tipo de argumento
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Declaraciones de tipo de devolución
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Tipificación estricta: ``declare(strict_types=1);``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manejo de datos de entrada: ``$_GET`` y ``$_POST``
==================================================

