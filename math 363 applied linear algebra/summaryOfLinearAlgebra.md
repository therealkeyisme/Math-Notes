::: {align="CENTER"}
****A Summary of Linear Algebra****\
[John Mitchell](../..)
:::

This document is a list of some material in linear algebra that you
should be familiar with. Throughout, we will take *A* to be the 3 x 4
matrix\

::: {align="CENTER"}
![\\begin{displaymath} A = \\left\[ \\begin{array}{rrrr} 1 & 2 & 3 & 4
\\\\ -2 & 3 & -1 & 5 \\\\ 3 & -1 & 4 & -1 \\end{array} \\right\]
\\end{displaymath}](img1.gif){width="214" height="76"}
:::

\

I assume you are familiar with matrix and vector addition and
multiplication.

-   All vectors will be **column** vectors.
-   Given a vector *v*, if we say that ![\$v\\neq
    0\$](img2.gif){width="48" height="34"}, we mean that *v* has at
    least one nonzero component.
-   The **transpose** of a vector or matrix is denoted by a
    superscript *T*. For example,\
    ::: {align="CENTER"}
    ![\\begin{displaymath} A\^T = \\left\[ \\begin{array}{rrr} 1 & -2 &
    3 \\\\ 2 & 3 & -1 \\\\ 3 & -1 & 4 \\\\ 4 & 5 & -1 \\end{array}
    \\right\] \\end{displaymath}](img3.gif){width="170" height="99"}
    :::

    \
-   The **inner product** or **dot product** of two vectors *u* and *v*
    in ![\$I \\! \\! R\^n\$](img4.gif){width="31" height="17"} can be
    written *u*^*T*^*v*; this denotes ![\$\\sum\_{i=1}\^n
    u_iv_i\$](img5.gif){width="77" height="34"}. If *u*^*T*^*v*=0 then
    *u* and *v* are **orthogonal**.
-   The **null space** of *A* is the set of all solutions *x* to the
    matrix-vector equation *Ax*=0.
-   To solve a system of equations *Ax*=*b*, use Gaussian elimination.
    For example, if ![\$b=\[4,\\: -3,\\: 7\]\^T\$](img6.gif){width="126"
    height="39"}, then we solve *Ax*=*b* as follows: (We set up the
    augmented matrix and row reduce (or pivot) to upper triangular
    form.)\
    ::: {align="CENTER"}
    ![\\begin{displaymath} \\begin{tabular}{\\vert rrrr\\vert r\\vert}
    \\hline 1 & 2 & 3 \... \... & 7 & 5 & 13 & 5 \\\\ 0 & 0 & 0 & 0 & 0
    \\\\ \\hline \\end{tabular}\\end{displaymath}](img7.gif){width="556"
    height="77"}
    :::

    \
    Thus, the solutions are all vectors *x* of the form\
    ::: {align="CENTER"}
    ![\\begin{displaymath} x=\\left\[\\begin{array}{r}1\\\\ 0\\\\ 1\\\\
    0\\end{array}\\right\]+ s\... \...ht\]+
    t\\left\[\\begin{array}{r}2\\\\ 13\\\\ 0\\\\ -7\\end{array}\\right\]
    \\end{displaymath}](img8.gif){width="266" height="99"}
    :::

    \
    for any numbers *s* and *t*.
-   The **span** of a set of vectors is the set of all linear
    combinations of the vectors. For example, if ![\$v\^1=\[11,\\: 5,\\:
    -7,\\: 0\]\^T\$](img9.gif){width="167" height="39"} and
    ![\$v\^2=\[2,\\: 13,\\: 0,\\: -7\]\^T\$](img10.gif){width="167"
    height="39"} then the span of *v*^1^ and *v*^2^ is the set of all
    vectors of the form *sv*^1^+*tv*^2^ for some scalars *s* and *t*.
-   The span of a set of vectors in ![\$I \\! \\!
    R\^n\$](img4.gif){width="31" height="17"} gives a **subspace** of
    ![\$I \\! \\! R\^n\$](img4.gif){width="31" height="17"}. Any
    nontrivial subspace can be written as the span of any one of
    uncountably many sets of vectors.
-   A set of vectors
    ![\$\\{v\^1,\\ldots,v\^m\\}\$](img11.gif){width="105" height="38"}
    is **linearly independent** if the only solution to the vector
    equation
    ![\$\\lambda_1v\^1+\\ldots+\\lambda_mv\^m=0\$](img12.gif){width="188"
    height="38"} is ![\$\\lambda_i=0\$](img13.gif){width="55"
    height="34"} for all *i*. If a set of vectors is not linearly
    independent, then it is **linearly dependent**. For example, the
    rows of *A* are *not* linearly independent, since\
    ::: {align="CENTER"}
    ![\\begin{displaymath} - \\left\[ \\begin{array}{r}1\\\\ 2\\\\ 3\\\\
    4\\end{array} \\right\] \... \...t\] = \\left\[
    \\begin{array}{r}0\\\\ 0\\\\ 0\\\\ 0\\end{array} \\right\].
    \\end{displaymath}](img14.gif){width="311" height="99"}
    :::

    \
    To determine whether a set of vectors is linearly independent, write
    the vectors as columns of a matrix *C*, say, and solve *Cx*=0. If
    there are any nontrivial solutions then the vectors are linearly
    dependent; otherwise, they are linearly independent.
-   If a linearly independent set of vectors spans a subspace then the
    vectors form a **basis** for that subspace. For example, *v*^1^ and
    *v*^2^ form a basis for the span of the rows of *A*. Given a
    subspace *S*, every basis of *S* contains the same number of
    vectors; this number is the **dimension** of the subspace. To find a
    basis for the span of a set of vectors, write the vectors as rows of
    a matrix and then row reduce the matrix.
-   The span of the rows of a matrix is called the **row space** of the
    matrix. The dimension of the row space is the **rank** of the
    matrix.
-   The span of the columns of a matrix is called the **range** or the
    **column space** of the matrix. The row space and the column space
    always have the same dimension.
-   If *M* is an *m* x *n* matrix then the null space and the row space
    of M are subspaces of ![\$I \\! \\! R\^n\$](img4.gif){width="31"
    height="17"} and the range of M is a subspace of ![\$I \\! \\!
    R\^m\$](img15.gif){width="35" height="17"}.
-   If *u* is in the row space of a matrix *M* and *v* is in the null
    space of *M* then the vectors are orthogonal. The dimension of the
    null space of a matrix is the **nullity** of the matrix. If *M* has
    *n* columns then rank(*M*)+nullity(*M*)=*n*. Any basis for the row
    space together with any basis for the null space gives a basis
    for ![\$I \\! \\! R\^n\$](img4.gif){width="31" height="17"}.
-   If *M* is a square matrix, ![\$\\lambda\$](img16.gif){width="15"
    height="18"} is a scalar, and *x* is a vector satisfying
    ![\$Mx=\\lambda x\$](img17.gif){width="81" height="18"} then *x* is
    an **eigenvector** of *M* with corresponding
    **eigenvalue** ![\$\\lambda\$](img16.gif){width="15" height="18"}.
    For example, the vector ![\$x=\[1,\\:
    2\]\^T\$](img18.gif){width="92" height="39"} is an eigenvector of
    the matrix\
    ::: {align="CENTER"}
    ![\\begin{displaymath} M = \\left\[ \\begin{array}{rr}3&2\\\\
    2&6\\end{array}\\right\] \\end{displaymath}](img19.gif){width="109"
    height="55"}
    :::

    \
    with eigenvalue ![\$\\lambda=7\$](img20.gif){width="49"
    height="18"}.
-   The eigenvalues of a symmetric matrix are always real. A
    nonsymmetric matrix may have complex eigenvalues.
-   Given a symmetric matrix *M*, the following are equivalent:

    1\.
    :   All the eigenvalues of *M* are positive.

    2\.
    :   *x*^*T*^*Mx*\>0 for any ![\$x \\neq 0\$](img21.gif){width="49"
        height="34"}.

    3\.
    :   M is **positive definite**.
-   Given a symmetric matrix *M*, the following are equivalent:

    1\.
    :   All the eigenvalues of *M* are nonnegative.

    2\.
    :   ![\$x\^TMx \\geq 0\$](img22.gif){width="90" height="39"} for any
        *x*.

    3\.
    :   M is **positive semidefinite**.

\

------------------------------------------------------------------------

[ ]{#CHILD_LINKS}

-   [About this document \...](node1.html){#tex2html3}

------------------------------------------------------------------------

[John E. Mitchell](../..)\
*2004-08-31*
