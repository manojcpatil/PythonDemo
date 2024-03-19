List of commonly used functions in `scipy.stats` that allow you to conduct various types of hypothesis tests:

1. **One-sample tests:**
   - One-sample t-test: `scipy.stats.ttest_1samp`
     ```python
     scipy.stats.ttest_1samp(data, popmean, alternative='two-sided')
     ```
     - `data`: 1D array of sample observations.
     - `popmean`: Expected value in null hypothesis (mean of the population).
     - `alternative`: Specifies the alternative hypothesis. Options are 'two-sided' (default), 'less', or 'greater'.

   - One-sample z-test: `scipy.stats.zscore`
     ```python
     scipy.stats.zscore(a, axis=0, ddof=0)
     ```
     - `a`: Array_like data.
     - `axis`: Axis along which to compute the z-scores.
     - `ddof`: Delta degrees of freedom correction in calculation of the standard deviation.

2. **Two-sample tests:**
   - Independent samples t-test: `scipy.stats.ttest_ind`
     ```python
     scipy.stats.ttest_ind(a, b, equal_var=True, alternative='two-sided')
     ```
     - `a`, `b`: Arrays of sample observations from two independent samples.
     - `equal_var`: Whether to assume equal population variances. Default is `True`.
     - `alternative`: Specifies the alternative hypothesis. Options are 'two-sided' (default), 'less', or 'greater'.

   - Welch's t-test (unequal variances): `scipy.stats.ttest_ind`
     ```python
     scipy.stats.ttest_ind(a, b, equal_var=False, alternative='two-sided')
     ```
     - Parameters same as independent samples t-test, with `equal_var` set to `False`.

   - Paired samples t-test: `scipy.stats.ttest_rel`
     ```python
     scipy.stats.ttest_rel(a, b, alternative='two-sided')
     ```
     - `a`, `b`: Arrays of sample observations from two related samples.
     - `alternative`: Specifies the alternative hypothesis. Options are 'two-sided' (default), 'less', or 'greater'.

   - Mann-Whitney U test (non-parametric alternative to t-test): `scipy.stats.mannwhitneyu`
     ```python
     scipy.stats.mannwhitneyu(x, y, use_continuity=True, alternative='two-sided')
     ```
     - `x`, `y`: Arrays of sample observations from two independent samples.
     - `use_continuity`: Whether to apply continuity correction.
     - `alternative`: Specifies the alternative hypothesis. Options are 'two-sided' (default), 'less', or 'greater'.

3. **Non-parametric tests:**
   - Wilcoxon signed-rank test (paired samples): `scipy.stats.wilcoxon`
     ```python
     scipy.stats.wilcoxon(x, y=None, alternative='two-sided')
     ```
     - `x`, `y`: Arrays of sample observations from two related samples.
     - `alternative`: Specifies the alternative hypothesis. Options are 'two-sided' (default), 'less', or 'greater'.

   - Kruskal-Wallis H test (non-parametric ANOVA): `scipy.stats.kruskal`
     ```python
     scipy.stats.kruskal(*args)
     ```
     - `args`: Arrays of sample observations from multiple groups.

   - Friedman test (non-parametric ANOVA for repeated measures): `scipy.stats.friedmanchisquare`
     ```python
     scipy.stats.friedmanchisquare(*args)
     ```
     - `args`: Arrays of sample observations from multiple related samples.

4. **ANOVA (Analysis of Variance) tests:**
   - One-way ANOVA: `scipy.stats.f_oneway`
     ```python
     scipy.stats.f_oneway(*args)
     ```
     - `args`: Arrays of sample observations from multiple groups.

   - Two-way ANOVA and MANOVA: Syntax can vary based on the specific implementation. Refer to the documentation for detailed syntax.

5. **Chi-square tests:**
   - Chi-square test of independence: `scipy.stats.chi2_contingency`
     ```python
     scipy.stats.chi2_contingency(observed, correction=True)
     ```
     - `observed`: Contingency table of observed frequencies.
     - `correction`: Whether to apply Yates' correction for continuity.

   - Chi-square goodness of fit test: `scipy.stats.chisquare`
     ```python
     scipy.stats.chisquare(f_obs, f_exp=None, ddof=0)
     ```
     - `f_obs`: Observed frequencies.
     - `f_exp`: Expected frequencies. If not provided, assumes frequencies are uniformly distributed.

6. **Correlation tests:**
   - Pearson correlation coefficient: `scipy.stats.pearsonr`
     ```python
     scipy.stats.pearsonr(x, y)
     ```
     - `x`, `y`: Arrays of sample observations.

   - Spearman rank correlation coefficient: `scipy.stats.spearmanr`
     ```python
     scipy.stats.spearmanr(a, b=None, axis=0, nan_policy='propagate')
     ```
     - `a`, `b`: Arrays of sample observations.

   - Kendall's tau correlation coefficient: `scipy.stats.kendalltau`
     ```python
     scipy.stats.kendalltau(x, y, initial_lexsort=None, nan_policy='propagate')
     ```
     - `x`, `y`: Arrays of sample observations.

7. **Normality tests:**
   - Shapiro-Wilk test for normality: `scipy.stats.shapiro`
     ```python
     scipy.stats.shapiro(x)
     ```
     - `x`: Array of sample observations.

   - D'Agostino's K^2 test for normality: `scipy.stats.normaltest`
     ```python
     scipy.stats.normaltest(x, axis=0)
     ```
     - `x`: Array of sample observations.

   - Anderson-Darling test for normality: `scipy.stats.anderson`
     ```python
     scipy.stats.anderson(x, dist='norm')
     ```
     - `x`: Array of sample observations.
     - `dist`: Theoretical distribution to compare against. Default is `'norm'` for normal distribution.

