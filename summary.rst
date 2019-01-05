=======
Summary
=======


* Silly: Is first year using Python a prime
* Silly: how many programming languages starting with P
* Silly: some interesting PEP numbers (8, 4000, ...)

  * 8 - Style Guide for Python Code
  * 20 - The Zen of Python
  * 404 - Python 2.8 Un-release Schedule
  * 628 - Add math.tau
  * 666 -- Reject Foolish Indentation

* Knowledge: what is a PEP (Python Enhancement Proposal)

* Pythonic: ``'\'...\''`` versus ``"'...'"``
* Pythonic: '...' versus "..." (nb: Python doesn't care)
* Pythonic: generally, "... %s" or "... %r"
* Pythonic: use of ``;`` to join statements (maybe...)

* Usage: the tuple trap for print (``a = 1,2; print('%s' % a)``)

* Correct usage: ``logger.info("... %s", ...)`` versus ``logger.info("... %s" % ...)``
* Correct usage: ``%`` operator, format strings, or comma separated arg list.

* Usage: comma makes a tuple
* Usage: how to specify an empty tuple
* Usage: dictionary versus set
* Usage: how to specify an empty dictionary
* Usage: how to specify an empty set

* Knowledge: why do we need self?


* Maybe: Python datastructures corresponding to:

  * Array
  * List (singly linked)
  * List (doubly linked)
  * Set
  * Bag
  * Dictionary

* Knowledge: what is the "@" operator used for?

* Prompt: 1+2
* Prompt: 'string' versus "string"
* Prompt: None
* Prompt: a versus print(a) (for a string, a = 'fred')
* Prompt: 1 + '2'
* Prompt: "naming" a function versus calling it (``()`` as an operator!)
* Prompt: ``quit``
* Prompt: how to quit/exit the Python REPL
* Prompt: try/except/finally
* Prompt: function with try and finally both doing ``return``
* Prompt: try/except/else/finally (note that the order matters)
* Prompt: for/else

* still to write: something about zip over the same iterator, and use of
  iter() to make it work - is the following interesting enough?

  .. code:: python

    >>> def f():
    ...     for a in (1,2,3,4):
    ...         yield a
    ...
    >>> list(f())
    [1, 2, 3, 4]
    >>> a = f()
    >>> list(zip(a,a))
    [(1, 2), (3, 4)]
    >>> list(zip(a,a))
    []
    >>> a = iter([1,2,3,4])
    >>> a
    <list_iterator object at 0x10b935390>
    >>> list(zip(a,a))
    [(1, 2), (3, 4)]

* still to write: sort method versus sorted function, reverse method versus
  reversed function - maybe something like "give ``a = '1234'`` what is
  ``print(a.sorted())`` and what is ``print(sorted(a))``.

* still to write: if I do ``open("filename", "r").read()``, when does the file
  get closed?

* Usage: ``in`` and ``not in``
* Usage: ``1 in [1,2,3]`` versus ``"a" in "abc"`` versus ``"ab" in "abc"``

* wtf: 5 == 5.0 => be careful of dictionary keys

* wtf puzzler: "For what"
* wtf puzzler (HARD): Evaluation time discrepancy
* wtf: ``is not`` versus ``is (not`` -- or perhaps ``in`` and ``not in``
* wtf: backslash at end of raw string
* wtf: half triple-quoted strings
* booleans are actually integers
* wtf: disappearing variable (when ``except ... as e`` throws it away)
* wtf (HARD): ``a, b = a[b] = {}, 5``
* wtf: deleting from a list while iterating over it
* wtf: default mutable arguments
* wtf: ``+`` versus ``+=``

* wtf: why is ``join()`` a string method, and not a list method?
* wtf: ``[] = ()``
* wtf:  ``'a'[0][0][0][0][0]``
* wtf: ``++5`` and ``--5``
* wtf: list slicing - index too large, index negative
* wtf: unicode characters working as digits


.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
