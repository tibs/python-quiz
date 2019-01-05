===========
Python quiz
===========

A Python "quiz".

Produced for the January 2019 meeting of CamPUG_.

The intent is to form small teams, preferably of mixed levels of Python
knowledge. Each question is then presented, and the teams try to figure out
the answer (if necessary) and also understand *why* Python does what it does.

Some of the conundrums are taken from the rather wonderful `What the f*ck Python! 🐍`_
by `Satwik Kansal`_.

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _`What the f*ck Python! 🐍`: https://github.com/satwikkansal/wtfpython
.. _`Satwik Kansal`: http://www.satwikkansal.xyz/
.. _pandoc: https://pandoc.org/
.. _docutils: http://docutils.sourceforge.net/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _TeX: https://www.ctan.org/starter

Making the PDF and HTML files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
For convenience, you can use the Makefile to create the PDF slides, create the
HTML version of the extended notes, and so on. For instance::

  $ make pdf

will make the PDF files.

For what the Makefile can do, use::

  $ make help

Requirements to build the documents:

* pandoc_ and TeX_ (on mac, BasicTeX should be enough)
* docutils_ (for reStructuredText_)

and an appropriate ``make`` program if you want to use the Makefile.


--------

The slideshow and all associated matters are released under a CC0_ `1.0
Universal`_ "No Rights Reserved" Creative Commons license:

  To the extent possible under law, Tibs/Tony Ibbs has waived all copyright
  and related or neighboring rights to this "Python quiz".
  This work is published from the United Kingdom.

.. _CC0: https://creativecommons.org/share-your-work/public-domain/cc0/
.. _`1.0 Universal`: https://creativecommons.org/publicdomain/zero/1.0/legalcode

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
