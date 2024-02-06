1. **Line Plot with Multiple Lines:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    # Generate x values
    x_values = np.linspace(0, 10, 100)

    # Generate y values for multiple lines
    y1_values = np.sin(x_values)
    y2_values = np.cos(x_values)

    # Plot multiple lines with different colors and styles
    plt.plot(x_values, y1_values, label='sin(x)', color='blue', linestyle='--')
    plt.plot(x_values, y2_values, label='cos(x)', color='red', linestyle='-.')
    
    # Customize the plot
    plt.xlabel('x')
    plt.ylabel('y')
    plt.title('Multiple Lines Plot')
    plt.legend()
    plt.grid(True)
    plt.show()
    ```

2. **Customizing Scatter Plot:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    # Generate random data
    np.random.seed(42)
    x_values = np.random.rand(50)
    y_values = np.random.rand(50)

    # Create scatter plot with customizations
    plt.scatter(x_values, y_values, marker='o', color='green', edgecolors='black')
    plt.title('Customized Scatter Plot')
    plt.xlabel('X-axis')
    plt.ylabel('Y-axis')
    plt.grid(True)
    plt.show()
    ```

3. **Grouped Bar Chart:**
    ```python
    import numpy as np
    import matplotlib.pyplot as plt

    # Sample data
    categories = ['Category A', 'Category B', 'Category C']
    values1 = [3, 5, 7]
    values2 = [6, 2, 8]

    # Plot grouped bar chart
    bar_width = 0.35
    index = np.arange(len(categories))
    plt.bar(index, values1, width=bar_width, label='Group 1')
    plt.bar(index + bar_width, values2, width=bar_width, label='Group 2')

    # Customize the plot
    plt.xlabel('Categories')
    plt.ylabel('Values')
    plt.title('Grouped Bar Chart')
    plt.xticks(index + bar_width / 2, categories)
    plt.legend()
    plt.show()
    ```

4. **Box Plot with Seaborn:**
    ```python
    import seaborn as sns
    import matplotlib.pyplot as plt

    # Sample dataset
    tips = sns.load_dataset("tips")

    # Create box plot using Seaborn
    sns.boxplot(x="day", y="total_bill", data=tips, palette="Set3")

    # Customize the plot
    plt.title('Box Plot with Seaborn')
    plt.xlabel('Day')
    plt.ylabel('Total Bill')
    plt.show()
    ```

5. **Kernel Density Estimation Plot:**
    ```python
    import seaborn as sns
    import matplotlib.pyplot as plt

    # Sample dataset
    iris = sns.load_dataset("iris")

    # Create distribution plot with kernel density estimation
    sns.kdeplot(data=iris, x="sepal_width", hue="species", fill=True)

    # Customize the plot
    plt.title('Kernel Density Estimation Plot')
    plt.xlabel('Sepal Width')
    plt.ylabel('Density')
    plt.show()
    ```

6. **Enhanced Pair Plot:**
    ```python
    import seaborn as sns
    import matplotlib.pyplot as plt

    # Sample dataset
    iris = sns.load_dataset("iris")

    # Create pair plot with enhancements
    sns.pairplot(iris, hue="species", markers=["o", "s", "D"], diag_kind="kde", palette="husl")

    # Customize the plot
    plt.suptitle('Enhanced Pair Plot')
    plt.show()
    ```

These examples cover a variety of plot customizations using Matplotlib and Seaborn. 
