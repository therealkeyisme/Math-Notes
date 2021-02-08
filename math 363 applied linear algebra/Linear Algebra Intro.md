# Linear Algebra

A linear system has the form $a_1x_1+...+a_nx_n=b_1$. We are going to solve this using Gaussian Elimination.

## Gaussian Elimination

We can use Gaussian Elimination to compress matrices into their upper and lower triangle forms. These take the form of $\big[\begin{smallmatrix}a&b&c\\0&e&f\\0&0&g\end{smallmatrix}\big]$. There are three different types of elementary row operations

### Elementary Row Operation 1

Elementary row operation 1 is adding a multiple of one row to another row. The original matrix is equivalent to an upper triangular matrix w/ non-zero pivots. When this is possible, the original matrix is regular. When w system is regular, the original system can be solved.

**Definition:** An elementary matrix is a matrix obtained by performing one elementary row operation to the identity matrix.



**Example**:
$$
\begin{align}
x+2y+2z&=5\\
2x+6y+5z&=12\\
-x+0y+3z&=5\\
\end{align}
$$
We can change this set of equations into a matrix that looks like this:
$$
\begin{pmatrix}
1&2&2&\vdots&5\\
2&6&5&\vdots&12\\
-1&0&3&\vdots&5
\end{pmatrix}
$$
Once we get this matrix, we can do $-2R_1+R_2$ to zero out the number in the left-most position in the second row. This operation will result in our matrix looking like this:
$$
\begin{pmatrix}
1&2&2&\vdots&5\\
0&2&1&\vdots&2\\
-1&0&3&\vdots&5
\end{pmatrix}
$$
After that we will perform $R_1+R_3$ and then finish up by doing $-R_2+R_3$. Our final matrix will look like the following, which will allow us to solve the systems of equations from before.
$$
\begin{pmatrix}
1&2&2&\vdots&5\\
0&2&1&\vdots&2\\
0&0&4&\vdots&8
\end{pmatrix}
$$
We can transform this matrix into the form:
$$
\begin{align}
x+2y+2z&=5\\
2y+z&=2\\
4z&=8\\
\end{align}
$$
And then we can solve for $z$ and use the $z$ value to solve for both $x$ and $y$.

## Matrix Arithmetic

1. Add 2 matrices of the same size. Add corresponding entries

2. Multiply by a constant. This multiplies each entry.

3. $A-B=A+(-1)B$ 

### Multiplying two matrices together:

If $A$ is an $i\times j$ matrix, and $B$ is a $j\times k$ matrix, then $AB$ is the $i\times k$ matrix with $(n, m)$ entry equal to the dot product of the $n^{th}$ row of $A$ and the $n^{th}$ column of B.

**Example**:
$$ {equation}
\begin{pmatrix}
1&0\\
0&1\\
\end{pmatrix}
\begin{pmatrix}
0&1\\
0&0\\
\end{pmatrix}
= 
\begin{pmatrix}
0&1\\
0&0\\
\end{pmatrix}
$$

$$ {equation}
\begin{pmatrix}
0&1\\0&0\\
\end{pmatrix}
\begin{pmatrix}
1&0\\0&1\\
\end{pmatrix}
=
\begin{pmatrix}
0&0\\0&0\\
\end{pmatrix}
$$

Multiplication with matrixes is not commutative. In the first example above, we multiplied $A\times B$ but in the second example, we multiplied $B\times A$ and got a different answer.



   

