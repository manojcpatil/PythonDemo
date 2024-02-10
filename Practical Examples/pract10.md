1. **\(g(x) = \sin(x)\) over \([0, \pi]\):**
    ```python
    import numpy as np
    from scipy import integrate
    import matplotlib.pyplot as plt

    # Function definition
    g = np.sin

    # Integration interval
    a, b = 0, np.pi

    # Analytical solution
    analytical_solution = 2.0

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(g, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, g(x_values), label='sin(x)')
    plt.fill_between(x_values, g(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of sin(x) over [0, π]')
    plt.xlabel('x')
    plt.ylabel('sin(x)')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

2. **\(h(x) = \frac{1}{1+x^2}\) over \([0, 5]\):**
    ```python
    # Function definition
    h = lambda x: 1 / (1 + x**2)

    # Integration interval
    a, b = 0, 5

    # Analytical solution
    analytical_solution = np.arctan(5) - np.arctan(0)

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(h, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, h(x_values), label='1 / (1 + x^2)')
    plt.fill_between(x_values, h(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of 1 / (1 + x^2) over [0, 5]')
    plt.xlabel('x')
    plt.ylabel('1 / (1 + x^2)')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

3. **\(k(x) = \sqrt{1 - x^2}\) over \([-1, 1]\):**
    ```python
    # Function definition
    k = lambda x: np.sqrt(1 - x**2)

    # Integration interval
    a, b = -1, 1

    # Analytical solution
    analytical_solution = np.pi / 2

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(k, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, k(x_values), label='sqrt(1 - x^2)')
    plt.fill_between(x_values, k(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of sqrt(1 - x^2) over [-1, 1]')
    plt.xlabel('x')
    plt.ylabel('sqrt(1 - x^2)')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

4. **\(p(x) = x^3 - 2x^2 + x\) over \([0, 2]\):**
    ```python
    # Function definition
    p = lambda x: x**3 - 2*x**2 + x

    # Integration interval
    a, b = 0, 2

    # Analytical solution
    analytical_solution = 2.0 / 3.0

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(p, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, p(x_values), label='x^3 - 2x^2 + x')
    plt.fill_between(x_values, p(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of x^3 - 2x^2 + x over [0, 2]')
    plt.xlabel('x')
    plt.ylabel('x^3 - 2x^2 + x')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

5. **\(q(x) = \ln(x)\) over \([1, 2]\):**
    ```python
    # Function definition
    q = np.log

    # Integration interval
    a, b = 1, 2

    # Analytical solution
    analytical_solution = 2.0 * (np.log(2) - 1)

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(q, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, q(x_values), label='ln(x)')
    plt.fill_between(x_values, q(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of ln(x) over [1, 2]')
    plt.xlabel('x')
    plt.ylabel('ln(x)')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

6. **\(r(x) = \cos(x)\) over \([0, \frac{\pi}{2}]\):**
    ```python
    # Function definition
    r = np.cos

    # Integration interval
    a, b = 0, np.pi / 2

    # Analytical solution
    analytical_solution = 1.0

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(r, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, r(x_values), label='cos(x)')
    plt.fill_between(x_values, r(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of cos(x) over [0, π/2]')
    plt.xlabel('x')
    plt.ylabel('cos(x)')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

7. **\(s(x) = x^2 + 2x\) over \([-1, 1]\):**
    ```python
    # Function definition
    s = lambda x: x**2 + 2*x

    # Integration interval
    a, b = -1, 1

    # Analytical solution
    analytical_solution = 2.0 / 3.0

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(s, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, s(x_values), label='x^2 + 2x')
    plt.fill_between(x_values, s(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of x^2 + 2x over [-1, 1]')
    plt.xlabel('x')
    plt.ylabel('x^2 + 2x')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

8. **\(t(x) = e^x\) over \([0, 1]\):**
    ```python
    # Function definition
    t = np.exp

    # Integration interval
    a, b = 0, 1

    # Analytical solution
    analytical_solution = np.exp(1) - 1

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(t, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, t(x_values), label='e^x')
    plt.fill_between(x_values, t(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of e^x over [0, 1]')
    plt.xlabel('x')
    plt.ylabel('e^x')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

9. **\(u(x) = \frac{\sin(x)}{x}\) over \([0, \pi]\):**
    ```python
    # Function definition
    u = lambda x: np.sin(x) / x

    # Integration interval
    a, b = 0, np.pi

    # Analytical solution (Dirichlet Integral)
    analytical_solution = np.pi / 2

    # Numerical integration using quad
    numerical_result, error_estimate = integrate.quad(u, a, b)

    # Plot the function for visualization
    x_values = np.linspace(a, b, 100)
    plt.plot(x_values, u(x_values), label='sin(x)/x')
    plt.fill_between(x_values, u(x_values), alpha=0.2, label='Area under curve')

    plt.title('Numerical Integration of sin(x)/x over [0, π]')
    plt.xlabel('x')
    plt.ylabel('sin(x)/x')
    plt.legend()
    plt.show()

    print("Analytical Solution:", analytical_solution)
    print("Numerical Result:", numerical_result)
    print("Error Estimate:", error_estimate)
    ```

These scripts provide numerical integration using `integrate.quad` for different functions and intervals, comparing results with analytical solutions and visualizing the integration process. Feel free to experiment with different integration methods and analyze the accuracy for the given functions.
