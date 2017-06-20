=====
Usage
=====

.. note::

   All commands in the documentation refrer to the installation according to the official
   ` Docker installation guide <https://docs.docker.com/engine/installation/>`_.

   If you installed Docker via the package manager of your Operating System you may have to adjust the commands.

   Meaning if you installed Docker on Ubuntu from the Ubuntu repositories the syntax would be ``docker.io`` in place of ``docker``.


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

Change into your documentation directory (/docs) of your project:

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


Serve Mode
==========

Serve the documentation and rebuild when a change is detected.

.. warning::

   This uses *--network="host"* which gives the container full access to local system services
   such as D-bus and is therefore considered **insecure !**

   **Be sure that you know what you are doing !**

.. note::

   This feature is *experimental* and only tested on Linux.

   Consider it **early alpha**

.. code-block:: shell

   docker run -it --net=host -v `pwd`:/build/docs testthedocs/plone-docsbuilder serve

Point your browser to  http://127.0.0.1:8000.

Each time a change to the documentation source is detected, the HTML is rebuilt and the browser automatically reloaded.

To stop the server press `` Ctrl C``.

