'''
import numpy as np

#x = np.linspace(0, 5, 6)
#print(x)

from random import sample
#print(sample(list(x), 3))
#print(sample([1,2,3,4,5,6,7],5))
#print(np.random.rand(2,3))
#print(np.random.randn(4))
#print(np.random.randint(10, 40, 5))
#print(np.random.random(3))
#print(np.random.choice([1,2,3,4],5,p=[0.2,0.3,0.4,0.1]))
#print(np.random.permutation([1,2,3,4]))
##??print(np.random.shuffle((1,2,3,4)))


import numpy as np

print(np.random.rand(2, 3, 2, 3, 4))
print(np.random.randn(4))
print(np.random.randint(0, 4, 1))
print(np.random.random(3))

print(np.random.choice(np.linspace(1, 6, 6), 8, replace=True))
print(np.random.shuffle(np.linspace(1, 6, 6)))
print(np.random.permutation(np.linspace(1, 6, 6)))

print(np.random.binomial(3, 0.5, 6))
print(np.random.poisson(2, 5))
print(np.random.geometric(0.6, 5))
print(np.random.hypergeometric(12, 10, 5, 4))

print(np.random.uniform(0, 5, 6))
print(np.random.normal(3, 1, 5))
print(np.random.standard_t(25, 6))
print(np.random.exponential(1 / 2, 5))
print(np.random.f(2, 3, 5))
print(np.random.chisquare(3, 5))
print(np.random.gamma(2, 3, 5))
# print(np.random.beta(0, 1, 5))
print(np.random.pareto(1, 5))
print(np.random.weibull(2, 5))
'''

from scipy import stats

print("------------------------------------------------")
print("Uniform:")
print(stats.uniform.cdf(0.5, 0, 1))
print(stats.uniform.mean(0, 3), stats.uniform.std(0, 3), stats.uniform.var(0, 3))
print(stats.uniform.ppf(0.5, 0.3, 1))
print(stats.uniform.rvs(size=2))
print(stats.uniform.rvs(0,2,size=5))

from scipy.stats import norm

print("------------------------------------------------")
print("Normal Distribution")
print("F(1)=%1.3f"%norm.cdf(0, 1, 1))
print("Mean=%1.3f,SD=%1.3f,Var=%1.3f"%(norm.mean(), norm.std(), norm.var()))
print("F(%1.3f)=0.65"% norm.ppf(0.65, 0.3, 1))
print(norm.rvs(size=2))
print(norm.rvs(10, 2, size=2))

from scipy.stats import expon

print("------------------------------------------------")
print('Exponential:')
print("F(1)=%1.3f"%expon.cdf(1))
print("Mean=%1.3f,SD=%1.3f,Var=%1.3f"%(expon.mean(), expon.std(), expon.var()))
print("F(%1.3f)=0.5"% expon.ppf(0.5, 1))
print(expon.rvs(size=2))
print(expon.rvs(2,size=6))
