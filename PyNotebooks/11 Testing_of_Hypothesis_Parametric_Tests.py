import pandas as pd
import numpy as np
import scipy.stats as ss
import statsmodels.stats.weightstats as sw

alpha = 0.05

# One Sample t-test
x = ss.norm.rvs(160, 12, size=20)
results = ss.ttest_1samp(x, 135, alternative='greater')
print(results.statistic)
print(results.pvalue)

Ho = "The mean height of the school students is 135 cms"
H1 = "The mean height of the school students is greater than 135 cms"

print('Conclusion - ', end='')
print('Reject Ho: Therefore', H1) if results.pvalue < alpha else print('Fail to reject Ho: Therefore', Ho)

# Two Sample t-test (Independent)
Ho = "Ho"
H1 = "H1"
x = ss.norm.rvs(10, 2, 52)
y = ss.norm.rvs(8, 2, 23)
results = ss.ttest_ind(x, y, alternative="two-sided", equal_var=True)
print(results)
print('Conclusion - ', end='')
print('Reject Ho: Therefore', H1) if results.pvalue < alpha else print('Fail to reject Ho: Therefore', Ho)

# Two Sample t-test (Dependent)
Data = pd.DataFrame(ss.multivariate_normal.rvs([10, 9], [[10, 2], [2, 4]], size=10))
x = Data[0]
y = Data[1]
results = ss.ttest_rel(x, y, alternative="two-sided")
print(results)
print('Conclusion - ', end='')
print('Reject Ho: Therefore', H1) if results.pvalue < alpha else print('Fail to reject Ho: Therefore', Ho)

# Z tests
Treat1 = ss.norm.rvs(10, 1, 40)
statistics, pvalue = sw.ztest(Treat1, value=10)
print((statistics, pvalue))
print('Conclusion - ', end='')
print('Reject Ho: Therefore', H1) if pvalue < alpha else print('Fail to reject Ho: Therefore', Ho)

# Shapiro Test
x = ss.norm.rvs(160, 12, size=20)
results = ss.shapiro(x)
print(results)

# Anderson Darling Test
x = ss.norm.rvs(160, 12, size=20)
results = ss.anderson(x, 'expon')
print(results)

# Correlation Test
Data = pd.DataFrame(ss.multivariate_normal.rvs([10, 9], [[10, 2], [2, 4]], size=10))
x = Data[0]
y = Data[1]
statistics, pvalue = ss.pearsonr(x, y)
print(statistics, pvalue)

Data = pd.DataFrame(ss.multivariate_normal.rvs([10, 9], [[10, 2], [3, 4]], size=10))
x = Data[0]
y = Data[1]
statistics, pvalue = ss.spearmanr(x, y)
print(statistics, pvalue)

Data = pd.DataFrame(ss.multivariate_normal.rvs([10, 9], [[10, 2], [3, 4]], size=10))
x = Data[0]
y = Data[1]
statistics, pvalue = ss.kendalltau(x, y)
print(statistics, pvalue)

# One way Anova
Treat1 = ss.norm.rvs(10, 1, 12)
Treat2 = ss.expon.rvs(10, size=12)
Treat3 = ss.norm.rvs(15, 1, 12)

statistics, pvalue = ss.f_oneway(Treat1, Treat2, Treat3)
print(statistics, pvalue)
