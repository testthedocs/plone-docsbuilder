=================
Plone-DocsBuilder
=================

Docs for version 0.0.4

.. toctree::
   :maxdepth: 2

   install
   usage
   roadmap
   releasing

Containerized application based on `Sphinx <http://www.sphinx-doc.org/en/stable>`_ for test builds of `docs.plone.org <https://docs.plone.org>`_.

The main purpose of this application is to create test builds in an 'easy', 'fast' and 'repeatable' way.

.. note::

   *plone-docsbuilder* is not a full replacement of `Sphinx <http://www.sphinx-doc.org/en/stable>`_, it is **not** meant to be !

   It is meant for creating 'test builds' to get a *visual impression* **not** for more, no spell-check, no link-check and so on.

Limitations
===========

- *plone-docsbuilder* depends on an *index.rst* file in your root documentation directory, see our :doc:`roadmap` for more info
- *plone-docsbuilder* will report a warning, if there is no *_static* directory in your root documentation directory

