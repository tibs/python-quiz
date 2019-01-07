=====================
A Python Quiz - Notes
=====================

:author: Tibs

Produced for the January 2019 meeting of CamPUG_.

Some of the conundrums are taken from the rather wonderful `What the f*ck Python!`_
by `Satwik Kansal`_.

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _`What the f*ck Python!`: https://github.com/satwikkansal/wtfpython
.. _`Satwik Kansal`: http://www.satwikkansal.xyz/

Note that Python 3 is assumed throughout.

**Notes for those questions that need them.**

.. contents::


Beginning with P
================

I thought of Perl, Perl6, PHP, Pascal, Prolog, ...


Offside rule
============


Apparently ISWIM is the abstract language that introduced the rule.

I knew occam, and F#, and Haskell, and should have thought of Boo.

With some caveats

* Elixir (``, do:`` blocks),
* F# (if ``#light "off"`` is not specified),
* Haskell (only for ``where``, ``let``, ``do``, or ``case ... of`` clauses when braces are omitted),
* Scheme (when using one of several Scheme Requests for Implementations),


To the...
=========

In some programming languages, the "power" operator is ``^``.


try/else/finally
================

The order matters - the ``else`` must come before the ``finally``.


Where did it go
===============

When an ``except`` clause assigns an exception to a target (as here), that
value is cleared at the end of the exception code. So it as if:

.. code:: python

    except Exception as e:
        cope_with_it

is translated into

.. code:: python

    except Exception as e:
        try:
            cope_with_it
        finally:
            del e

Basically, the ``except`` clause overwrote the value of ``e``, and then
cleared it.

We want the value to "go away" because an exception has a traceback attached
to it, which refers to the stack frame for the current function, which in turn
refers to the local variables for that function, keeping them alive.

If the exception had not been caught, then we wouldn't have set ``e``, and nor
would it have been cleared.

For more details, see https://docs.python.org/3/reference/compound_stmts.html#except


Follow through all the way
==========================

.. code:: python

  >>> a, b = a[b] = {}, 5
  >>> print(a)
  {5: ({...}, 5)}

Python defines assignment statements as::

    (target_list "=")+ (expression_list | yield_expression)

and says:

        An assignment statement evaluates the expression list (remember that
        this can be a single expression or a comma-separated list, the latter
        yielding a tuple) and assigns the single resulting object to each of
        the target lists, from left to right.

So our example is the same as doing:

.. code:: python

  >>> exp = {}, 5
  >>> print(exp)
  {} 5

  >>> a, b = {}, 5
  >>> print(a, b)
  {} 5

Now, ``a`` refers to the same dictionary as in ``exp[0]``.

.. code:: python

  >>> a[5] = exp
  >>> print(a)
  {5: ({...}, 5)}
  >>> print(exp[0])
  {5: ({...}, 5)}

and we've got a recursive datastructure - the ``...`` above indicates this.

.. code:: python

  >>> a is exp[0] is a[5][0] is a[5][0][5][0]  # and so on
  True

.. vim: set filetype=rst tabstop=8 softtabstop=2 shiftwidth=2 expandtab:
