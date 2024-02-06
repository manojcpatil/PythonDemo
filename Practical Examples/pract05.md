
### 1. Transpose Function

```python
def transpose_matrix(matrix):
    return [[matrix[j][i] for j in range(len(matrix))] for i in range(len(matrix[0]))]

# Example usage:
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
transposed_matrix = transpose_matrix(matrix)
print("Original Matrix:")
for row in matrix:
    print(row)
print("\nTransposed Matrix:")
for row in transposed_matrix:
    print(row)
```

### 2. Matrix Determinant Calculator

```python
def calculate_2x2_determinant(matrix):
    return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]

def calculate_3x3_determinant(matrix):
    return (
        matrix[0][0] * (matrix[1][1] * matrix[2][2] - matrix[1][2] * matrix[2][1]) -
        matrix[0][1] * (matrix[1][0] * matrix[2][2] - matrix[1][2] * matrix[2][0]) +
        matrix[0][2] * (matrix[1][0] * matrix[2][1] - matrix[1][1] * matrix[2][0])
    )

# Example usage:
matrix_2x2 = [
    [4, 7],
    [2, 6]
]
matrix_3x3 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
determinant_2x2 = calculate_2x2_determinant(matrix_2x2)
determinant_3x3 = calculate_3x3_determinant(matrix_3x3)
print(f"Determinant of 2x2 matrix: {determinant_2x2}")
print(f"Determinant of 3x3 matrix: {determinant_3x3}")
```

### 3. Matrix Inversion

```python
def calculate_2x2_inverse(matrix):
    det = calculate_2x2_determinant(matrix)
    if det == 0:
        return None  # Matrix is singular, no inverse exists
    else:
        return [[matrix[1][1] / det, -matrix[0][1] / det], [-matrix[1][0] / det, matrix[0][0] / det]]

# Example usage:
matrix_2x2 = [
    [4, 7],
    [2, 6]
]
inverse_2x2 = calculate_2x2_inverse(matrix_2x2)
print("Original Matrix:")
for row in matrix_2x2:
    print(row)
print("\nInverse Matrix:")
if inverse_2x2:
    for row in inverse_2x2:
        print(row)
else:
    print("The matrix is singular, no inverse exists.")
```

### 4. Matrix Trace Calculator

```python
def calculate_matrix_trace(matrix):
    if len(matrix) != len(matrix[0]):
        return None  # Not a square matrix, trace is undefined
    else:
        return sum(matrix[i][i] for i in range(len(matrix)))

# Example usage:
matrix_square = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
trace_result = calculate_matrix_trace(matrix_square)
print("Matrix:")
for row in matrix_square:
    print(row)
print(f"\nMatrix Trace: {trace_result}")
```

### 5. Sparse Matrix Representation

```python
from scipy.sparse import csr_matrix
import numpy as np

def perform_sparse_matrix_operations():
    matrix_a = np.array([[1, 0, 0], [0, 0, 2], [3, 0, 0]])
    matrix_b = np.array([[0, 4, 0], [0, 5, 0], [0, 0, 6]])

    sparse_matrix_a = csr_matrix(matrix_a)
    sparse_matrix_b = csr_matrix(matrix_b)

    # Addition
    addition_result = sparse_matrix_a + sparse_matrix_b
    print("Addition Result:")
    print(addition_result.todense())

    # Multiplication
    multiplication_result = sparse_matrix_a.dot(sparse_matrix_b)
    print("\nMultiplication Result:")
    print(multiplication_result.todense())

# Example usage:
perform_sparse_matrix_operations()
```

### 6. Eigenvalue and Eigenvector Solver

```python
import numpy as np

def calculate_eigenvalues_and_eigenvectors(matrix):
    eigenvalues, eigenvectors = np.linalg.eig(matrix)
    return eigenvalues, eigenvectors

# Example usage:
matrix_square = np.array([[1, 2], [2, 4]])
eigenvalues, eigenvectors = calculate_eigenvalues_and_eigenvectors(matrix_square)
print("Matrix:")
print(matrix_square)
print("\nEigenvalues:")
print(eigenvalues)
print("\nEigenvectors:")
print(eigenvectors)
```

### 7. Matrix Rotation

```python
def rotate_matrix_clockwise(matrix):
    return [[matrix[j][i] for j in range(len(matrix))] for i in range(len(matrix[0])-1, -1, -1)]

# Example usage:
user_rows = int(input("Enter the number of rows: "))
user_cols = int(input("Enter the number of columns: "))

user_matrix = []
for i in range(user_rows):
    row = [int(input(f"Enter element at position ({i+1}, {j+1}): ")) for j in range(user_cols)]
    user_matrix.append(row)

rotated_matrix = rotate_matrix_clockwise(user_matrix)
print("\nOriginal Matrix:")
for row in user_matrix:
    print(row)
print("\nRotated Matrix (90 degrees clockwise):")
for row in rotated_matrix:
    print(row)
```

### 8. Matrix Rank Calculator

```python
import numpy as np

def calculate_matrix_rank(matrix):
    return np.linalg.matrix_rank(matrix)

# Example usage:
matrix_rank_example = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
rank_result = calculate_matrix_rank(matrix_rank_example)
print("Matrix:")
print(matrix_rank_example)
print(f"\nMatrix Rank: {rank_result}")
```
