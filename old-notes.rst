


Which is better: '\'something\'' or "'something'"
(and why)

Which is correct: logger.info("Found %s", something) or logger.info("Found %s" % something)
(and why)

What is the "@" operator used for?

    How to distinguish this from the "@" in front of decorators? Maybe call it
    the "@" infix operator, or the "@" arithmetic operator.




Quotes
------

Which is more pythonic, the first or second, and why?

.. code:: python

  print("They said, \"Hello\"")

.. code:: python

  print('They said, "Hello"')

Quotes
------

Which is more pythonic, the first or second, and why?

.. code:: python

  print("A string")

.. code:: python

  print('A string')

.. note:: This is a trick question, neither is more pythonic.

Format strings
--------------

Which is generally more useful, the first or second, and why?

.. code:: python

  print("The value is '%s'" % value)

.. code:: python

  print("The value is %r" % value)

Format strings
--------------

What does the following print, and why?

.. code:: python

  >>> a = 1
  >>> print('%s' % a)

ANSWER
------

.. code:: python

  >>> a = 1
  >>> print('%s' % a)
  1


Format strings
--------------

What does the following print, and why?

.. code:: python

  >>> a = 1, 2
  >>> print('%s' % a)

ANSWER
------

.. code:: python

  >>> a = 1, 2
  >>> print('%s' % a)
  Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
  TypeError: not all arguments converted during string formatting

Logging
-------

Given:

.. code:: python

  import logging
  logger = logging.getLogger(__name__)
  a = 3
  b = 4

Which is correct, the first, second or third, and why?

.. code:: python

  logger.info(f'A is {a} and B is {b}')

.. code:: python

  logger.info('A is %r and B is %r' % (a, b))

.. code:: python

  logger.info('A is %r and B is %r', a, b)




Things to think about
---------------------

.. code:: python

    a = 1,    # tuple
    a = ()    # empty tuple
    a = 1     # not a tuple

    a = {}     # empty dictionary
    a = {1: 2} # dictionary
    a = {1, 2} # set

    a, *, b = 1, 2, 3, 4
    a, *    = 1, 2, 3, 4


.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
