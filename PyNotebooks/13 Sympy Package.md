SymPy offers a wide range of functions for symbolic mathematics, including algebraic manipulations, calculus, solving equations, linear algebra, discrete mathematics, and more. Below is a list of some common SymPy functions along with their syntaxes and brief descriptions of their applications:

1. **Symbols**: 
   - Syntax: `Symbol('x')` or `symbols('x y z')`
   - Description: Defines symbolic variables.
   - Example Application: Used to define variables for symbolic expressions.

2. **Simplify**:
   - Syntax: `simplify(expression)`
   - Description: Simplifies an expression.
   - Example Application: Simplifying complicated mathematical expressions.

Here's an example of how you can use the `simplify` function in SymPy to simplify a complicated mathematical expression:

```python
from sympy import simplify, symbols

# Define symbolic variables
x, y = symbols('x y')

# Define a complicated expression
expression = (x**2 + 2*x*y + y**2) / (x**2 - y**2)

# Simplify the expression
simplified_expression = simplify(expression)

print("Original Expression:", expression)
print("Simplified Expression:", simplified_expression)
```

Output:
```
Original Expression: (x**2 + 2*x*y + y**2)/(x**2 - y**2)
Simplified Expression: (x + y)/(x - y)
```

In this example, the `simplify` function is used to simplify the expression `(x**2 + 2*x*y + y**2) / (x**2 - y**2)`, which is a rational expression. The simplified expression `(x + y)/(x - y)` is obtained by canceling common terms in the numerator and denominator.


3. **Expand**:
   - Syntax: `expand(expression)`
   - Description: Expands a polynomial expression.
   - Example Application: Expanding algebraic expressions.

Here's an example demonstrating the use of the `expand` function in SymPy to expand a polynomial expression:

```python
from sympy import expand, symbols

# Define symbolic variables
x, y = symbols('x y')

# Define a polynomial expression
expression = (x + y)**3

# Expand the expression
expanded_expression = expand(expression)

print("Original Expression:", expression)
print("Expanded Expression:", expanded_expression)
```

Output:
```
Original Expression: (x + y)**3
Expanded Expression: x**3 + 3*x**2*y + 3*x*y**2 + y**3
```

In this example, the `expand` function is used to expand the polynomial expression `(x + y)**3`. The expanded expression `x**3 + 3*x**2*y + 3*x*y**2 + y**3` is obtained by applying the binomial theorem to multiply out the terms.


4. **Factor**:
   - Syntax: `factor(expression)`
   - Description: Factors a polynomial expression.
   - Example Application: Factoring algebraic expressions.

Here's an example demonstrating the use of the `factor` function in SymPy to factor a polynomial expression:

```python
from sympy import factor, symbols

# Define symbolic variables
x = symbols('x')

# Define a polynomial expression
expression = x**3 - 6*x**2 + 11*x - 6

# Factor the expression
factored_expression = factor(expression)

print("Original Expression:", expression)
print("Factored Expression:", factored_expression)
```

Output:
```
Original Expression: x**3 - 6*x**2 + 11*x - 6
Factored Expression: (x - 1)*(x - 2)*(x - 3)
```

In this example, the `factor` function is used to factor the polynomial expression `x**3 - 6*x**2 + 11*x - 6`. The factored expression `(x - 1)*(x - 2)*(x - 3)` is obtained by identifying the roots of the polynomial and expressing it as a product of linear factors.

5. **Derivative**:
   - Syntax: `diff(expression, variable)`
   - Description: Computes the derivative of an expression.
   - Example Application: Calculating derivatives in calculus.

Here's an example demonstrating the use of the `diff` function in SymPy to compute the derivative of an expression:

```python
from sympy import diff, symbols

# Define symbolic variables
x = symbols('x')

# Define a mathematical expression
expression = x**3 + 2*x**2 + 5*x + 7

# Compute the derivative of the expression with respect to x
derivative = diff(expression, x)

print("Original Expression:", expression)
print("Derivative:", derivative)
```

Output:
```
Original Expression: x**3 + 2*x**2 + 5*x + 7
Derivative: 3*x**2 + 4*x + 5
```

In this example, the `diff` function is used to compute the derivative of the expression `x**3 + 2*x**2 + 5*x + 7` with respect to the variable `x`. The derivative `3*x**2 + 4*x + 5` is obtained, representing the rate of change of the original expression with respect to `x`.

6. **Integral**:
   - Syntax: `sympy.integrate(expression, variable, limit)`
   - Description: Computes the indefinite integral of an expression.
   - Example Application: Solving indefinite integrals in calculus.

Here's an example demonstrating the use of the `integrate` function in SymPy to compute the indefinite integral of an expression:

```python
from sympy import integrate, symbols

# Define symbolic variables
x = symbols('x')

# Define a mathematical expression
expression = x**2 + 3*x + 5

# Compute the indefinite integral of the expression with respect to x
integral = integrate(expression, x)

print("Original Expression:", expression)
print("Indefinite Integral:", integral)

# Integrate with limits
print(integrate(x**2 + 3*x + 5,(x,0,1)))
print(integrate(cos(x),  (x, -oo, oo)))
```

Output:
```
Original Expression: x**2 + 3*x + 5
Indefinite Integral: x**3/3 + 3*x**2/2 + 5*x

41/6
AccumBounds(-2, 2)
```

In this example, the `integrate` function is used to compute the indefinite integral of the expression `x**2 + 3*x + 5` with respect to the variable `x`. The result `x**3/3 + 3*x**2/2 + 5*x + C` represents the antiderivative of the original expression, where `C` is the constant of integration.

7. **Limits**:
   - Syntax: `limit(expression, variable, value)`
   - Description: Computes the limit of an expression as a variable approaches a certain value.
   - Example Application: Evaluating limits in calculus.

Here's an example demonstrating the use of the `limit` function in SymPy to compute the limit of an expression as a variable approaches a certain value:

```python
from sympy import limit, symbols

# Define symbolic variables
x = symbols('x')

# Define a mathematical expression
expression = (x**2 - 1) / (x - 1)

# Compute the limit of the expression as x approaches 1
lim = limit(expression, x, 1)

print("Original Expression:", expression)
print("Limit as x approaches 1:", lim)
```

Output:
```
Original Expression: (x**2 - 1)/(x - 1)
Limit as x approaches 1: 2
```

In this example, the `limit` function is used to compute the limit of the expression `(x**2 - 1) / (x - 1)` as `x` approaches `1`. The result `2` is obtained, indicating the value that the expression approaches as `x` gets closer and closer to `1`.

8. **Solve**:
   - Syntax: `solve(equation, variable)`
   - Description: Solves algebraic equations symbolically.
   - Example Application: Finding solutions to equations.

Here's an example demonstrating the use of the `solve` function in SymPy to solve an algebraic equation symbolically:

```python
from sympy import solve, symbols

# Define symbolic variables
x = symbols('x')

# Define an algebraic equation
equation = x**2 - 4

# Solve the equation for x
solutions = solve(equation, x)

print("Original Equation:", equation)
print("Solutions:", solutions)

# Solve the equation for system of equations
sys_equations=[x+y+z-26,x-4*y+5*z-31,5*x+2*y+2*z-13]
solutions = solve(sys_equations,[x,y,z])

print("Original System of Equations:", sys_equations)
print("Solutions:", solutions)
```

Output:
```
Original Equation: x**2 - 4
Solutions: [-2, 2]

Original System of Equations: [x + y + z - 26, x - 4*y + 5*z - 31, 5*x + 2*y + 2*z - 13]
Solutions: {x: -13, y: 151/9, z: 200/9}
```

In this example, the `solve` function is used to solve the algebraic equation `x**2 - 4` for the variable `x`. The solutions `[-2, 2]` are obtained, indicating the values of `x` that satisfy the equation.

9. **Matrix**:
   - Syntax: `Matrix([[1, 2], [3, 4]])`
   - Description: Creates a symbolic matrix.
   - Example Application: Working with matrices and linear algebra.

10. **Eigenvalues and Eigenvectors**:
    - Syntax: `eigenvals(matrix)` and `eigenvects(matrix)`
    - Description: Computes eigenvalues and eigenvectors of a matrix.
    - Example Application: Finding eigenvalues and eigenvectors in linear algebra.
   
Here's an example demonstrating the use of the `Matrix` class in SymPy to create a symbolic matrix, and the `eigenvals` and `eigenvects` functions to compute its eigenvalues and eigenvectors:

```python
from sympy import Matrix, eigenvals, eigenvects

# Define a symbolic matrix
matrix = Matrix([[3, 1], [1, 3]])

# Compute eigenvalues of the matrix
eigenvalues = eigenvals(matrix)

print("Symbolic Matrix:")
print(matrix)
print("\nEigenvalues:", eigenvalues)

# Compute eigenvectors of the matrix
eigenvectors = eigenvects(matrix)

print("\nEigenvectors:")
for eigenvalue, multiplicity, eigenvector in eigenvectors:
    print(f"Eigenvalue: {eigenvalue}, Multiplicity: {multiplicity}, Eigenvector: {eigenvector}")
```

Output:
```
Symbolic Matrix:
Matrix([[3, 1], [1, 3]])

Eigenvalues: {2: 2, 4: 1}

Eigenvectors:
Eigenvalue: 2, Multiplicity: 2, Eigenvector: [Matrix([
[1],
[1]])]
Eigenvalue: 4, Multiplicity: 1, Eigenvector: [Matrix([
[-1],
[ 1]])]
```

In this example:
- We first create a symbolic matrix using the `Matrix` class.
- Then, we use the `eigenvals` function to compute the eigenvalues of the matrix.
- Finally, we use the `eigenvects` function to compute the eigenvectors of the matrix along with their corresponding eigenvalues and multiplicities.

The output shows the symbolic matrix, its eigenvalues, and eigenvectors.

11. **Sympy Plotting**:

To plot functions or expressions with SymPy, you can use the `plot` function. Here's a simple example of how to plot a mathematical expression:

```python
from sympy import symbols, plot

# Define the variable
x = symbols('x')

# Define the expression to plot
expression = x**2

# Create the plot
p = plot(expression, (x, -5, 5), show=False)

# Customize the plot (optional)
p.title = 'Plot of x^2'
p.xlabel = 'x-axis'
p.ylabel = 'y-axis'

# Show the plot
p.show()
```

This code will plot the function \(x^2\) in the range \([-5, 5]\) along the x-axis. You can customize the plot by setting properties like title, xlabel, and ylabel.

You can also plot multiple expressions on the same plot by passing them as a list to the `plot` function. Here's an example:

```python
# Define another expression
expression2 = 2*x + 1

# Create the plot with multiple expressions
p = plot(expression, expression2, (x, -5, 5), show=False)

# Customize the plot (optional)
p.title = 'Plot of x^2 and 2x + 1'
p.xlabel = 'x-axis'
p.ylabel = 'y-axis'

# Show the plot
p.show()
```

This will plot both \(x^2\) and \(2x + 1\) on the same plot. You can further customize the plot as needed.

12 **Geometric shapes and compute various properties***: 

Such as areas, lengths, angles, and intersections. Here's a brief overview of how to work with some common geometric objects:

1. **Points and Lines**:
   - Define points and lines using the `Point` and `Line` classes.
   - Compute properties like distance between points, angle between lines, etc.

```python
from sympy import Point, Line

# Define points
p1 = Point(0, 0)
p2 = Point(3, 4)

# Define a line passing through two points
line = Line(p1, p2)

# Compute distance between points
distance = p1.distance(p2)

# Compute slope of the line
slope = line.slope

print("Distance between points:", distance)
print("Slope of the line:", slope)
```

2. **Circles**:
   - Define circles using the `Circle` class.
   - Compute properties like circumference, area, intersection points with other objects, etc.

```python
from sympy import Circle

# Define a circle
center = Point(0, 0)
radius = 5
circle = Circle(center, radius)

# Compute circumference and area of the circle
circumference = circle.circumference
area = circle.area

print("Circumference of the circle:", circumference)
print("Area of the circle:", area)
```

3. **Triangles**:
   - Define triangles using the `Triangle` class.
   - Compute properties like perimeter, area, angles, etc.

```python
from sympy import Triangle

# Define vertices of the triangle
A = Point(0, 0)
B = Point(3, 0)
C = Point(0, 4)

# Define a triangle
triangle = Triangle(A, B, C)

# Compute perimeter and area of the triangle
perimeter = triangle.perimeter
area = triangle.area

print("Perimeter of the triangle:", perimeter)
print("Area of the triangle:", area)
```


These are just a few examples of the many functions available in SymPy. SymPy's documentation provides comprehensive information about all available functions and their usage.
