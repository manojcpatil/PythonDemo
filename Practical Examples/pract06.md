### 1. Determinant Calculation (2x2) with NumPy

```python
import numpy as np

# Example usage:
matrix_2x2 = np.array([[4, 7], [2, 6]])
determinant_2x2 = np.linalg.det(matrix_2x2)
print(f"Determinant of 2x2 matrix: {determinant_2x2}")
```

### 2. Determinant Calculation (3x3) with NumPy

```python
import numpy as np

def calculate_3x3_determinant(matrix):
    return np.linalg.det(matrix)

# Example usage:
matrix_3x3 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
determinant_3x3 = calculate_3x3_determinant(matrix_3x3)
print(f"Determinant of 3x3 matrix: {determinant_3x3}")
```

### 3. Matrix Invertibility Check with NumPy

```python
import numpy as np

def is_matrix_invertible(matrix):
    determinant = np.linalg.det(matrix)
    return not np.isclose(determinant, 0)

# Example usage:
matrix_square = np.array([[2, 1], [4, 3]])
invertible_check = is_matrix_invertible(matrix_square)
print(f"The matrix is invertible: {invertible_check}")
```

### 4. Matrix Inverse Calculation with NumPy

```python
import numpy as np

def calculate_matrix_inverse(matrix):
    try:
        inverse_matrix = np.linalg.inv(matrix)
        return inverse_matrix
    except np.linalg.LinAlgError:
        print("Matrix is not invertible.")

# Example usage:
matrix_invertible = np.array([[2, 1], [4, 3]])
inverse_result = calculate_matrix_inverse(matrix_invertible)
if inverse_result is not None:
    print("Original Matrix:")
    print(matrix_invertible)
    print("\nInverse Matrix:")
    print(inverse_result)
```

### 5. Solving Linear Equations (2x2 System) with NumPy

```python
import numpy as np

def solve_linear_equations_2x2(coeff_matrix, constants_vector):
    determinant = np.linalg.det(coeff_matrix)
    if not np.isclose(determinant, 0):
        solution_vector = np.linalg.solve(coeff_matrix, constants_vector)
        return solution_vector
    else:
        print("The system may not have a unique solution.")

# Example usage:
coeff_matrix_2x2 = np.array([[2, -1], [1, 3]])
constants_vector_2x2 = np.array([1, 7])
solution_2x2 = solve_linear_equations_2x2(coeff_matrix_2x2, constants_vector_2x2)
print(f"Solution to the 2x2 system: {solution_2x2}")
```

### 6. Solving Linear Equations (3x3 System) with NumPy

```python
import numpy as np

def solve_linear_equations_3x3(coeff_matrix, constants_vector):
    determinant = np.linalg.det(coeff_matrix)
    if not np.isclose(determinant, 0):
        solution_vector = np.linalg.solve(coeff_matrix, constants_vector)
        return solution_vector
    else:
        print("The system may not have a unique solution.")

# Example usage:
coeff_matrix_3x3 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
constants_vector_3x3 = np.array([10, 11, 12])
solution_3x3 = solve_linear_equations_3x3(coeff_matrix_3x3, constants_vector_3x3)
print(f"Solution to the 3x3 system: {solution_3x3}")
```

### 7. Application in Geometry with NumPy

```python
import numpy as np

def geometry_transformation(matrix):
    determinant = np.linalg.det(matrix)
    if np.isclose(determinant, 1):
        print("The transformation is a rotation.")
    elif np.isclose(determinant, -1):
        print("The transformation is a reflection.")
    else:
        print("The transformation is a combination of scaling and/or shearing.")

# Example usage:
transformation_matrix = np.array([[0, -1], [1, 0]])
geometry_transformation(transformation_matrix)
```

### 8. Laplace Expansion for Larger Matrices with NumPy

```python
import numpy as np

def calculate_4x4_determinant(matrix):
    determinant = 0
    for i in range(4):
        determinant += (-1) ** i * matrix[0][i] * np.linalg.det(np.delete(np.delete(matrix, 0, axis=0), i, axis=1))
    return determinant

# Example usage:
matrix_4x4 = np.array([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]])
determinant_4x4 = calculate_4x4_determinant(matrix_4x4)
print(f"Determinant of 4x4 matrix using Laplace Expansion: {determinant_4x4}")
```

### 9. Random Matrix System Solver with NumPy

```python
import numpy as np

def solve_random_matrix_system():
    random_matrix = np.random.randint(1, 10, size=(3, 3))
    constants_vector = np.random.randint(1, 10, size=3)
    
    print("Random Matrix:")
    print(random_matrix)
    print("\nConstants Vector:")
    print(constants_vector)
    
    solution = np.linalg.solve(random_matrix, constants_vector)
    print("\nSolution to the system:")
    print(solution)

# Example usage:
solve_random_matrix_system()
```
