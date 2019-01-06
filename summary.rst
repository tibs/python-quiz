=======
Summary
=======



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
* Usage: ``help(<topic>)`` at prompt - equivalent at the command line?
  (nb: if ``pydoc`` isn't installed, try ``python3 -m pydoc <topic>``)

* Given ``a, = 1,``, what is the type of a (``type(a)``)

* Knowledge: why do we need self?

* Knowledge: what is the "@" operator used for?
* Knowledge: what are the results of ``2**3`` and ``2^3`` (power versus
  bitwise exclusive or)

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

* use of asterisk in assignment: ``a, b, *rest = [1,2,3,4]`` or ``a, *middle, b =
  (1,2,3,4)``

* use of asterisk to "unpack" a sequence: ``fn(*a)`` or even ``a=(1,2,3);
  b=[*a]`` or with dictionaries to combine them:

  .. code:: python

    >>> a = {1:2, 3:4}
    >>> b = {1:10, 2: 20}
    >>> {*a, *b}
    {1, 2, 3}
    >>> {**a, **b}
    {1: 10, 3: 4, 2: 20}

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
