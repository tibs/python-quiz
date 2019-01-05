CamPUG quiz ideas
=================

Note that I am only interested in Python 3, and at that ideally in Python 3.7.

Silly: first year you used Python. Score a point if it was prime.

  Prime years between 1990 and 2019 are:

      1993,
      1997,
      1999,
      2003,
      2011,
      2017

Silly: the only anagrams of Python appear to be:

* phyton -  (Botany) botany a unit of plant structure, usually considered as
  the smallest part of the plant that is capable of growth when detached from
  the parent plant
* typhon -  (Classical Myth & Legend) Greek myth a monster and one of the
  whirlwinds: later confused with his father Typhoeus

so that isn't much use.

Which is better: '\'something\'' or "'something'"
(and why)

Which is correct: logger.info("Found %s", something) or logger.info("Found %s" % something)
(and why)

In the late 1980s, I had to research the most commonly useful sorts of
collection, so we could implement them in a C library. From smalltalk I
got (more or less): Array, List, Set, Bag and Dictionary. What are the nearest
Python equivalents (if any). One point for each, or if there isn't a standard
answer and you say so:

Array - elements are retrieve by index

    To this purpose, Python arrays. Actually, smalltalk arrays were also
    defined as being fixed size. Anyone who said numpy arrays would also
    get a point, as it's not an unreasonable assumption that real
    N-dimensional arrays might be meant.

Dictionary - maps keys to values

    Dictionaries

Set - each element is unique

    Sets

Bag - each element is unique, but has an associated integer

    collections.Counter - one of the most overlooked classes in the standard
    library, but actually quite useful.

Linked List - each element "points to" the next element

    Single and double linked list - there is no example in the standard
    library.

What is the Python operator for exponentiation? - i.e. for typing x<something>2
to means "x squared".

What is the "@" operator used for?

    How to distinguish this from the "@" in front of decorators? Maybe call it
    the "@" infix operator, or the "@" arithmetic operator.

(Other) programming languages starting with P: Perl, Perl6, PHP, Pascal,
Prolog, ...

    https://en.wikipedia.org/wiki/List_of_programming_languages has
    P,
    P'',
    P4,
    PARI/GP,
    PCASTL,
    PCF,
    PDL,
    PEARL,
    PHP,
    PIKT,
    PILOT,
    PL-11,
    PL/0,
    PL/B,
    PL/C,
    PL/I,
    PL/M,
    PL/P,
    PL/SQL,
    PL360,
    PLANC,
    PLEX,
    PLEXIL,
    POP-11,
    POP-2,
    PPL,
    PROIV,
    PROMAL,
    PROSE modeling language,
    PROTEL,
    ParaSail,
    Pascal,
    PeopleCode,
    Perl,
    Perl 6,
    Pharo,
    Pico,
    Picolisp,
    Pict,
    Pig (programming tool),
    Pike,
    Pipelines,
    Pizza,
    Plankalkül,
    Planner,
    Plus,
    PortablE,
    PostScript,
    PowerBuilder,
    PowerShell,
    Powerhouse,
    Pro*C,
    Processing,
    Processing.js,
    Prograph,
    Prolog,
    Promela,
    ProvideX,
    Pure,
    Pure Data,
    PureBasic,
    and Python itself

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> 1 + 2

ANSWER
------

.. code:: python

  >>> 1 + 2
  3

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> 'string'

ANSWER
------

.. code:: python

  >>> 'string'
  'string'

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> None

ANSWER
------

.. code:: python

  >>> None

.. note:: That is, it doesn't print anything

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> "string"

ANSWER
------

.. code:: python

  >>> "string"
  'string'

The prompt
----------

What do the following do, and why?

.. code:: python

  >>> a = "Fred"
  >>> a
  >>> print(a)

ANSWER
------

.. code:: python

  >>> a = "Fred"
  >>> a
  'Fred'
  >>> print(a)
  Fred

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> 1 + '2'

ANSWER
------

.. code:: python

  >>> 1 + '2'
  Traceback (most recent call last):
    File "<stdin>", line 1, in <module>
  TypeError: unsupported operand type(s) for +: 'int' and 'str

.. ' to make vim coloriser happy

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> def fun():
  ...     print('hello')
  ...
  >>> fun()

ANSWER
------

.. code:: python

  >>> def fun():
  ...     print('hello')
  ...
  >>> fun()
  hello

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> def fun():
  ...     print('hello')
  ...
  >>> fun

ANSWER
------

.. code:: python

  >>> def fun():
  ...     print('hello')
  ...
  >>> fun
  <function fun at 0x10fbd7048>

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> quit

ANSWER
------

.. code:: python

  >>> quit
  Use quit() or Ctrl-D (i.e. EOF) to exit

The prompt
----------

So how do you exist the Python prompt? (one point for each obvious mechanism).

ANSWER
------

.. code:: python

  >>> quit()

  >>> exit()

  >>> import sys; sys.exit()

On Windows, the end-of-file character:

.. code:: python

  >>> <CTRL-Z>

On Unix, the endo-of-transmission character:

.. code:: python

  >>> <CTRL-D>

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> try:
  ...     1/0
  ... except Exception as e:
  ...     print(e)
  ... finally:
  ...     print('Finally')
  ...

ANSWER
------

.. code:: python

  >>> try:
  ...     1/0
  ... except Exception as e:
  ...     print(e)
  ... finally:
  ...     print('Finally')
  ...
  division by zero
  Finally

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> def fun():
  ...     try:
  ...         return 1
  ...     finally:
  ...         return 2
  ...
  >>> fun()

ANSWER
------

.. code:: python

  >>> def fun():
  ...     try:
  ...         return 1
  ...     finally:
  ...         return 2
  ...
  >>> fun()
  2

The prompt
----------

What does the following do, and why?

.. code:: python

  >>> try:
  ...     print('1')
  ... except Exception:
  ...     print('2')
  ... else:
  ...     print('3')
  ... finally:
  ...     print('4')
  ...

ANSWER
------

.. code:: python

  >>> try:
  ...     print('1')
  ... except Exception:
  ...     print('2')
  ... else:
  ...     print('3')
  ... finally:
  ...     print('4')
  ...
  1
  3
  4

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


----

Why do we need `self`?
----------------------

#. We need it as a method argument because it doesn't have to be called
   "self" - i.e., the programmer has to say what name to use.

   Also, if we want to be able to pass it in (so we can call a method as
   ``<class_name>.<method_name>(<instance>, ...)``) then it helps to have
   an explicit place in the argument list for it. Although this is an edge
   case, and one could argue that it doesn't of itself *require* having `self`
   explicitly mentioned in the arguments.

#. We need it in a method body to differentiate between:

   .. code:: python

      <class_name>.a = 3
      self.a = 3
      a = 3

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
