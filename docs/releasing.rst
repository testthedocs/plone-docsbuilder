=========
Releasing
=========

.. admonition:: About

This document explains the release process of plone-docsbuilder versions.

Overview
========

Development of plone-docsbuilder follows `semantic versioning <http://semver.org/>`_.

The ``master`` branch will always point to the most up to date development code.

For each release we have a own branch.

Workflow
========

1. Clone the repository

.. code-block:: shell

   git clone git@githublcom:testthedocs/plone-docsbuilder

2. Create a branch, based on the ``master`` branch, for working in.

.. code-block:: shell

   cd plone-docsbuilder
   git checkout -b $COOL-AND-LOGICAL-NAME

3. Work in this branch, create builds and **test** them and update the docs!

4. Create a *Pull Request* against the master branch
  - Explain what you did
  - Why you did it

5. Merge $BRANCH into master
6. Create a *release branch* of the master

.. code-block:: shell

   git checkout -b 0.0.4

7. Update version in the VERSION file
8. Update Changes.md
9. Make a release

.. code-block:: shell

   make release
