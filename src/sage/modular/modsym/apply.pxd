include "sage/ext/stdsage.pxi"
include "sage/ext/cdefs.pxi"

from sage.libs.flint.flint cimport *
include "sage/libs/flint/fmpz_poly.pxi"


cdef class Apply:
    cdef fmpz_poly_t f, g, ff, gg
    cdef int apply_to_monomial_flint(self, fmpz_poly_t ans, int i, int j, int a, int b, int c, int d) except -1
