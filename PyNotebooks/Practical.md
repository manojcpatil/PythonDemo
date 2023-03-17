### Statistics

1. Write a function that takes a numpy array of numeric data, and returns a dictionary containing summary statistics of the data, including mean, median, mode, variance, standard deviation, skewness, and kurtosis.


```python
def fun1(x):
    import numpy as np
    from scipy.stats import skew, kurtosis
    val, freq=np.unique(x,return_counts=True)
    
    temp={'mean':np.mean(x).round(4), 
          'median':np.median(x).round(4),
          'mode':val[np.argmax(freq)].round(4), 
          'variance':np.var(x).round(4), 
          'standard_deviation':np.std(x).round(4), 
          'skewness':round(skew(x),4), 
          'kurtosis':round(kurtosis(x),4)
         }
    return temp

import numpy as np
x=np.array([1,1,1,1,2,2,3,3,3,3,4])
print(fun1(x))
```

    {'mean': 2.1818, 'median': 2.0, 'mode': 1, 'variance': 1.0579, 'standard_deviation': 1.0285, 'skewness': 0.1326, 'kurtosis': -1.3325}
    

2. Write a function that takes two numpy arrays of numeric data, and performs a t-test to determine whether the means of the two arrays are significantly different. The function should return the t-statistic and p-value of the test.


```python
def fun2(x,y,equal=True):
    t_stat=0
    n1=np.size(x)
    n2=np.size(y)
    pooled_sd=((n1-1)*np.var(x)+(n2-1)*np.var(y))/(n1+n2-2)
    if equal==True:
        t_stat=(np.mean(x)-np.mean(y))/(pooled_sd*np.sqrt(1/n1+1/n2))
    else:
        t_stat=(np.mean(x)-np.mean(y))/(np.sqrt(np.var(x)/n1+np.var(y)/n2))
    return t_stat
    
```


```python
x=np.random.normal(10,1,15)
y=np.random.normal(11,1,25)
fun2(x,y)
```




    -2.9534468519685064



3. Write a function that takes a numpy array of numeric data, and computes a confidence interval for the mean of the data with a given level of confidence. The function should return the lower and upper bounds of the confidence interval.


```python
def fun2(x,alpha=0.05):
    from scipy.stats import t
    n=np.size(x)
    Lower=np.mean(x)-t.ppf(1-alpha/2,n-1)*np.std(x)/(np.sqrt(n))
    Upper=np.mean(x)+t.ppf(1-alpha/2,n-1)*np.std(x)/(np.sqrt(n))
    return (Lower, Upper)
```


```python
x=np.random.normal(10,1,50)
fun2(x)
```




    (9.726323688646703, 10.221484992687786)



4. Write a function that takes a numpy array of numeric data, and computes the correlation matrix between all pairs of variables in the data. The function should return a numpy array containing the correlation coefficients.


```python
x=np.random.normal(10,1,(50,4))
```


```python
print(np.corrcoef(x.T))
```

    [[ 1.         -0.03242199  0.30488564  0.20100673]
     [-0.03242199  1.          0.02201316 -0.28126889]
     [ 0.30488564  0.02201316  1.          0.12795309]
     [ 0.20100673 -0.28126889  0.12795309  1.        ]]
    


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```


```python

```

5. Write a function that takes a numpy array of shape `(n,)` representing a sample of data, and fits a normal distribution to the data using maximum likelihood estimation. The function should estimate the mean and standard deviation of the distribution using the sample mean and sample standard deviation, and return a `scipy.stats.norm` object representing the fitted distribution.

6. Write a function that takes a numpy array of shape `(n,)` representing a sample of data, and fits a Poisson distribution to the data using maximum likelihood estimation. The function should estimate the parameter lambda of the distribution using the sample mean, perform goodness of fit test and return a `scipy.stats.poisson` object representing the fitted distribution.

7. Write a function that takes a numpy array of shape `(n,)` representing a sample of data, and performs a Kolmogorov-Smirnov test to test whether the data follows a given distribution. The function should allow the user to specify the distribution (e.g., normal, Poisson, etc.) and the parameters of the distribution (e.g., mean, standard deviation, lambda, etc.). The function should return the test statistic and the p-value of the test. The function should use the `scipy.stats.kstest` function to perform the test.

### Linear Algebra 

1. Write a function that takes two numpy arrays of shape (n,m) and (m,p), and returns their matrix product. The function should implement the matrix multiplication using numpy broadcasting and vectorization, without using the built-in numpy.matmul() function.

2. Write a function that takes a numpy array of shape (n,n) representing a square matrix, and returns its determinant. The function should use the LU decomposition algorithm to decompose the matrix, and then compute the determinant using the formula det(A) = prod(diag(U)), where U is the upper triangular matrix obtained from the LU decomposition.

3. Write a function that takes a numpy array of shape (n,n) representing a square matrix, and returns its eigenvalues and eigenvectors. The function should implement the power iteration algorithm to compute the largest eigenvalue and its corresponding eigenvector, and then use the inverse power iteration algorithm to compute the remaining eigenvalues and eigenvectors. The function should also check that the eigenvectors are orthonormal and the eigenvalues are valid.




```python
x=np.matrix(np.random.randint(0,10,(3,4)))
y=np.matrix(np.random.randint(7,15,(4,2)))
```


```python
x@y
```




    matrix([[303, 237],
            [209, 153],
            [187, 141]])




```python
n,m=x.shape
m,p=y.shape
temp=np.zeros((n,p))
temp

for i in range(n):
    for j in range(p):
        for k in range(m):
            temp[i,j]+=x[i,k]*y[k,j]
temp
```




    array([[303., 237.],
           [209., 153.],
           [187., 141.]])




```python

```




    3




```python

```


```python

```


```python

```
