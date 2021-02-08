# ODE Section 2.3

### Mixing Problems:

Let $x(t) = $ amount of something, this could be sugar, salt, contaminants. Here's the idea, start with a tank with some amount of a substance in it (this could be zero). Continually dumb more fluid into the tank and assume that the tank is well mixed and the fluid leaves at some rate. Amount is typically the dependent variable
$$ {equation}
\frac{dx}{dt}=(ratein)-(rateout)
$$
The concentration is the amount divided by the volume. For example you can have $\frac{g}{L}$ or $\frac{lb}{yd^3}$.

**Example**: Suppose a tank initially contains 500 gallons of pure water and we start dumping in salt water (brine) at a rate of 2 gallons per hour, with a concentration of 10 pounds per gallon. We allow the well mixed solution to leave at 5 gallons per hour. Find the amount and concentration of salt in the water.

**Solution:** Let $A(t) =$ amount of salt [pounds] in tank at time t [hours]. 
$$ {equation}
\frac{dA}{dt}=ratein-rateout
$$

$$ {equation}
\frac{dA}{dt}=\left(2\frac{gal}{hr}\times 10\frac{lb}{gal}\right)-\left(5\frac{gal}{hr}\right)\left(
\frac{A(t)lb}{}\right)
$$

We know that $A(t)$ is our unknown. We need to figure out what goes on on the bottom of the right side of the equation. We can do this by setting $\frac{dV}{dt}=2-5=3$. From this we can deduce the following:
$$
\begin{align}
V(t)&=-3t+c\\
v(0)=c=500\\
v(t)=-3t+500
\end{align}
$$
Now we can plug in the $500-3t$ into the equation above to get:
$$ {equation}
\frac{dA}{dt}=\left(2\frac{gal}{hr}\times 10\frac{lb}{gal}\right)-\left(5\frac{gal}{hr}\right)\left(
\frac{A(t)lb}{500-3t}\right)
$$
We know that $A(0)=0$ so we can plug that into the equation and we get:
$$ {equation}
\frac{dA}{dt}=20-\frac{5}{500-3t}A
$$
 Once we find this we need to find the general solution.
$$
\begin{equation}
\frac{dA}{dt}+\frac{5}{500-3t}A=20\\
\mu(t)=e^{\int\frac{5}{500-3t}dt}=e^{\frac{-5}{3}\int{\frac{1}{u}}du}=e^{\frac{-5}{3}ln(500-3t)} = (500-3t)^{-\frac{5}{3}}\\
(500-3t)^{-\frac{5}{3}}\frac{dA}{dt}+5(500-3t)^{-\frac{5}{3}}A=20(500-3t)^{-\frac{5}{3}}\\
\frac{d}{dt}((500-3t)^\frac{-5}{3}A)=20(500-3t)^{-\frac{5}{3}}\\
\end{equation}
$$

$$
\begin{align}
(500-3t)^{-\frac{5}{3}}A&=\int{20(500-3t)^{-\frac{5}{3}}dt}\\
&=\int{\frac{-20}{3}u^{-\frac{5}{3}}du}\\
&=\frac{-20}{3}\frac{u^{\frac{-2}{3}}}{\frac{-2}{3}}+c\\
\end{align}
$$

$$
\begin{equation}
A(t)=10(500-3t)+c(500-3t)^{\frac{5}{3}}\\
A(0)=0=5000+500^{\frac{5}{3}}c\\
c=\frac{-5000}{500^{\frac{5}{3}}}=\frac{-10}{500^\frac{2}{3}}=\frac{1}{25000(2^\frac{1}{3})}\\
A(t)=10(500-3t)-\frac{10}{500^\frac{2}{3}}(500)^\frac{2}{3}\\
A(t)=10(500-3t)\left[1-\frac{3t}{5}\right]
\end{equation}
$$

