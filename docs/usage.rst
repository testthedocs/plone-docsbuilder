=====
Usage
=====

Download Image
==============

Pull (download) *plone-docsbuilder*:

.. code-block:: shell

   docker pull testthedocs/plone-docsbuilder

Update Image
============

Check and update application image to a newer version:

.. code-block:: shell

   docker pull testthedocs/plone-docsbuilder

Building HTML
=============

*plone-docsbuilder* is designed to build HTML out of *rst* files in your *current working directory* (`$PWD`).

The *build output* will be saved in a directory called *_build* in your `$PWD`.

Example
-------

Change into your documentation dorectory (/docs) of your project:

.. code-block:: shell

   cd docs

Do a ``ls`` to see all the files here:

.. code-block:: shell

   index.rst

Run *plone-docsbuilder*:

.. code-block:: shell

   docker run -v `pwd`:/build/docs testthedocs/plone-docsbuilder html

After the build is finished, check the content of the directory with ``ls`` again:

.. code-block:: shell

   index.rst    _build
