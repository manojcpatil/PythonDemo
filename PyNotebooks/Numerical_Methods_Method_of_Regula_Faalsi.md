```python
import pandas as pd
import numpy as np
def f(x):
    return(pow(x,3)+x+1)
x0=0
x1=1
x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)
print(x2)
l=[]
l1=[x0,x1,f(x0),f(x1),x2]
l.append(l1)
e=1
while(e>0.01):
    e=abs(x1-x2)
    x0=x1
    x1=x2
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)
    l2=[x0,x1,f(x0),f(x1),x2]
    l.append(l2)
df=pd.DataFrame(l)
new=df.rename(columns={0:'x0',1:'x1',2:'f(x0)',3:'f(x1)',4:'x2'});new
```

    -0.5
    




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
      <th>x0</th>
      <th>x1</th>
      <th>f(x0)</th>
      <th>f(x1)</th>
      <th>x2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.000000</td>
      <td>1.000000</td>
      <td>1.000000</td>
      <td>3.000000</td>
      <td>-0.500000</td>
    </tr>
    <tr>
      <th>1</th>
      <td>1.000000</td>
      <td>-0.500000</td>
      <td>3.000000</td>
      <td>0.375000</td>
      <td>-0.714286</td>
    </tr>
    <tr>
      <th>2</th>
      <td>-0.500000</td>
      <td>-0.714286</td>
      <td>0.375000</td>
      <td>-0.078717</td>
      <td>-0.677108</td>
    </tr>
    <tr>
      <th>3</th>
      <td>-0.714286</td>
      <td>-0.677108</td>
      <td>-0.078717</td>
      <td>0.012454</td>
      <td>-0.682187</td>
    </tr>
    <tr>
      <th>4</th>
      <td>-0.677108</td>
      <td>-0.682187</td>
      <td>0.012454</td>
      <td>0.000338</td>
      <td>-0.682328</td>
    </tr>
  </tbody>
</table>
</div>




```python
import pandas as pd
import numpy as np
def f(x):
    return(x**3+x+1)
x0=0
x1=1
x2=x1-(x1-x0)*f(x1)/(f(x0)-f(x1))
l=[]
l1=[x0,x1,f(x0),f(x1),x2]
l.append(l1)
l
```




    [[0, 1, 1, 3, 2.5]]




```python
abs(4-5)
```




    1




```python

```
