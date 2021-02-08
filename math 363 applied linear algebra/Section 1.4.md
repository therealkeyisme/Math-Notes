# Section 1.4

Given a matrix $A=\big[\begin{smallmatrix}1&2\\-1&3\end{smallmatrix}\big]$, what would $A^2$ equal?
$$ {equation}
A^2=\begin{bmatrix}
1&2\\-1&3
\end{bmatrix}
\cdot
\begin{bmatrix}
1&2\\-1&3
\end{bmatrix}
$$

$$ {equation}
A^2=
\begin{bmatrix}
1(1)+2(-1) && 1(2)+2(3)\\
-1(1 )+3(-1) && -1(2)+3(3)\\
\end{bmatrix}
=
\begin{bmatrix}
-1&8\\-4&7
\end{bmatrix}
$$



Our current method of solving does not work for the following system of equations:
$$ {equation}
\begin{align}
2y-z&=1\\
x+y+z&=2\\
2x-6y+4z&=8
\end{align}
\rightarrow
\begin{pmatrix}
0&2&-1&\vdots&1\\
1&1&1&\vdots&2\\
2&-6&4&\vdots&8
\end{pmatrix}
$$

## Elementary Row Operation 2

Elementary row operation two is switching multiple rows in order to find the L or U composition of the matrix. 

**Example**:
$$ {equation}
R_1\leftrightarrow R_2 = 
\begin{pmatrix} 
1&1&1&\vdots&1\\
0&2&-1&\vdots&1\\
2&-6&4&\vdots&8\\
\end{pmatrix}
\rightarrow R_3=R_3+(-2)R_1 = 
\begin{pmatrix}1&1&1&\vdots&2\\ 
0&2&-1&\vdots&1\\
0&-8&2&\vdots&4
\end{pmatrix}
$$

$$ {equation}
R_3=R_3+4R_2 \rightarrow
\begin{pmatrix}
1&1&1&\vdots&2\\
0&2&-1&\vdots&1\\
0&0&-2&\vdots&8\\
\end{pmatrix}
$$

An I matrix is a matrix that is made up of all zeros and has ones in the pivot points: $\big(\begin{smallmatrix}1&0\\0&1\end{smallmatrix}\big)$. Using this identity matrix, we can invert switch the rows of a matrix. 
$$ {equation}
\begin{pmatrix}
1&0&0\\0&1&0\\0&0&1\\
\end{pmatrix}
\begin{pmatrix}
a&b&c\\d&e&f\\g&h&i\\
\end{pmatrix}
=
\begin{pmatrix}
a&b&c\\d&e&f\\g&h&i\\
\end{pmatrix}
$$

$$ {equation}
\begin{pmatrix}
0&0&1\\0&1&0\\1&0&0\\
\end{pmatrix}
\begin{pmatrix}
a&b&c\\d&e&f\\g&h&i\\
\end{pmatrix}
=
\begin{pmatrix}
g&h&i\\d&e&f\\a&b&c\\
\end{pmatrix}
$$



**Definition**: A matrix is non-singular if it can be reduced to upper triangular form with non-zero entries in the diagonal.

**Theorem**: $A\vec{x} = \vec{b}$ has a unique solution for every choice of b if and only if A is square and non-singular