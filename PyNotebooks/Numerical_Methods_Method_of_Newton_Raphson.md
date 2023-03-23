```python
import numpy as np 
import pandas as pd
import sympy as sym
def f(x):
    return(x**2-4*x-7)
def f1(x):
    return(2*x-4)

x1=5
e=1
x2=x1-(f(x1)/f1(x1))
l=[]
l1=[x1,f(x1),f1(x1),x2]
l.append(l1)

while(e>0.01):
    e=abs(x1-x2)
    x1=x2
    x2=x1-(f(x1)/f1(x1))
    l2=[x1,f(x1),f1(x1),x2]
    l.append(l2)
df=pd.DataFrame(l)
new=df.rename(columns={0:'x1',1:'f(x1)',2:'f1(x1)',3:'x2'});new

```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>x1</th>
      <th>f(x1)</th>
      <th>f1(x1)</th>
      <th>x2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>5.000000</td>
      <td>-2.000000e+00</td>
      <td>6.000000</td>
      <td>5.333333</td>
    </tr>
    <tr>
      <th>1</th>
      <td>5.333333</td>
      <td>1.111111e-01</td>
      <td>6.666667</td>
      <td>5.316667</td>
    </tr>
    <tr>
      <th>2</th>
      <td>5.316667</td>
      <td>2.777778e-04</td>
      <td>6.633333</td>
      <td>5.316625</td>
    </tr>
    <tr>
      <th>3</th>
      <td>5.316625</td>
      <td>1.753602e-09</td>
      <td>6.633250</td>
      <td>5.316625</td>
    </tr>
  </tbody>
</table>
</div>




```python

```


```python

```
