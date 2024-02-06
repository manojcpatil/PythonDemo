1. **Linear Function Plotter:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    # Get coefficients from user
    m = float(input("Enter the slope (m): "))
    b = float(input("Enter the y-intercept (b): "))

    # Generate x values
    x_values = np.linspace(-10, 10, 100)

    # Calculate corresponding y values
    y_values = m * x_values + b

    # Plot the linear function
    plt.plot(x_values, y_values, label=f'y = {m}x + {b}')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Linear Function Plot')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

2. **Quadratic Function Animation:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt
    from matplotlib.animation import FuncAnimation

    # Function to calculate quadratic values
    def quadratic_function(a, b, c, x):
        return a * x**2 + b * x + c

    # Animation function
    def animate(frame):
        a = frame / 10  # Adjust coefficients for animation
        y_values = quadratic_function(a, -2, 1, x_values)
        line.set_ydata(y_values)
        return line,

    # Set up the plot
    fig, ax = plt.subplots()
    x_values = np.linspace(-10, 10, 100)
    y_values = quadratic_function(0, -2, 1, x_values)
    line, = ax.plot(x_values, y_values, label='y = ax^2 - 2x + 1')
    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.set_title('Quadratic Function Animation')
    ax.legend()
    ax.grid(True)

    # Create animation
    animation = FuncAnimation(fig, animate, frames=range(-10, 11), interval=500)
    plt.show()
    ```

3. **Function Composition:**
    ```python
    # Combine Linear and Quadratic Functions
    combined_y_values = m * x_values + b + quadratic_function(1, -2, 1, x_values)

    # Plot the combined function
    plt.plot(x_values, combined_y_values, label=f'y = {m}x + {b} + x^2 - 2x + 1')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Combined Linear and Quadratic Function Plot')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

4. **Customized Plot Styling:**
    ```python
    # Customize Line Styles, Colors, and Markers
    plt.plot(x_values, m * x_values + b, linestyle='--', color='red', marker='o', label='Linear Function')
    plt.plot(x_values, quadratic_function(1, -2, 1, x_values), linestyle='-.', color='blue', marker='x', label='Quadratic Function')
    plt.plot(x_values, np.exp(x_values), linestyle=':', color='green', marker='s', label='Exponential Function')
    
    # Customize the plot
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Customized Plot Styling')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

5. **Multiple Function Plots:**
    ```python
    # Get multiple functions from user
    functions = int(input("Enter the number of functions: "))
    for i in range(functions):
        coefficients = input(f"Enter the coefficients for function {i+1} (space-separated): ").split()
        coefficients = [float(coeff) for coeff in coefficients]
        y_values = np.polyval(coefficients, x_values)
        plt.plot(x_values, y_values, label=f'Function {i+1}')

    # Customize the plot
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Multiple Function Plots')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

6. **Interactive Exponential Function:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt
    from ipywidgets import interact, widgets

    def plot_exponential_function(x_min, x_max):
        x_values = np.linspace(x_min, x_max, 100)
        y_values = np.exp(x_values)

        plt.plot(x_values, y_values, label='y = e^x')
        plt.xlabel('x')
        plt.ylabel('y')
        plt.title('Interactive Exponential Function Plot')
        plt.legend()
        plt.grid(True)
        plt.show()

    # Create interactive slider
    interact(plot_exponential_function, x_min=widgets.FloatSlider(min=-5, max=0, step=0.1, value=-5),
                                      x_max=widgets.FloatSlider(min=0, max=5, step=0.1, value=5))
    ```

7. **Polynomial Function Plotter:**

    ```python
    # Function to calculate polynomial values
    def polynomial_function(coefficients, x):
        return np.polyval(coefficients, x)

    # Get user input for polynomial degree
    degree = int(input("Enter the degree of the polynomial: "))
    coefficients = input(f"Enter the coefficients for the polynomial of degree {degree} (highest degree first, space-separated): ").split()
    coefficients = [float(coeff) for coeff in coefficients]

    # Generate x values
    x_values = np.linspace(-10, 10, 100)

    # Calculate corresponding y values
    y_values = polynomial_function(coefficients, x_values)

    # Plot the polynomial function
    plt.plot(x_values, y_values, label=f'Polynomial of degree {degree}')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Polynomial Function Plot')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

8. **Logarithmic Scale Plot:**
    ```python
    # Plot exponential function on logarithmic scale
    plt.semilogy(x_values, np.exp(x_values), label='y = e^x')

    # Customize the plot
    plt.xlabel('x')
    plt.ylabel('y (log scale)')
    plt.title('Exponential Function Plot on Logarithmic Scale')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

9. **Function Derivative Visualization:**
    ```python
    # Calculate derivative of linear function
    derivative_values = np.gradient(m * x_values + b, x_values)

    # Plot both the linear function and its derivative
    plt.plot(x_values, m * x_values + b, label='Linear Function')
    plt.plot(x_values, derivative_values, label='Derivative')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Linear Function and its Derivative')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

10. **Error Handling in Plotting:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    try:
        # Get coefficients from user
        m = float(input("Enter the slope (m): "))
        b = float(input("Enter the y-intercept (b): "))

        # Generate x values
        x_values = np.linspace(-10, 10, 100)

        # Calculate corresponding y values
        y_values = m * x_values + b

        # Plot the linear function
        plt.plot(x_values, y_values, label=f'y = {m}x + {b}')
        plt.xlabel('x')
        plt.ylabel('y')
        plt.title('Linear Function Plot')
        plt.legend()
        plt.grid(True)
        plt.show()

    except ValueError:
        print("Error: Invalid input. Please enter numerical coefficients.")
    ```

These scripts cover a range of interactive and customizable plotting tasks using Matplotlib.
