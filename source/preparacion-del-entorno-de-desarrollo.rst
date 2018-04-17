*************************************
Preparación del entorno de desarrollo
*************************************

.. tikz:: An Example Directive with Caption

  % Commit DAG
  \gitDAG[grow right sep = 2em]{
    A -- B -- { 
      C,
      D -- E,
    }
  };
  % Tag reference
  \gittag
    [v0p1]       % node name
    {v0.1}       % node text
    {above=of A} % node placement
    {A}          % target
  % Remote branch
  \gitremotebranch
    [origmaster]    % node name
    {origin/master} % node text
    {above=of C}    % node placement
    {C}             % target
  % Branch
  \gitbranch
    {master}     % node name and text 
    {above=of E} % node placement
    {E}          % target
  % HEAD reference
  \gitHEAD
    {above=of master} % node placement
    {master}          % target

Instalación automatizada
========================

Acciones previas
----------------

Instalar ``git``
~~~~~~~~~~~~~~~~

Crear cuenta en GitHub
~~~~~~~~~~~~~~~~~~~~~~

Usar https://github.com/ricpelo/conf y seguir las instrucciones del README.md
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Terminal
========

Zsh
---

Oh My Zsh
---------

Navegador
=========

Herramientas de desarrollador
-----------------------------

Editores de texto
=================

Vim y less
----------

Atom
----
