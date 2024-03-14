The `numpy.random` module provides various functions for generating random samples from different probability distributions. Here's a list of some of the available distributions along with their respective functions:

1. **Continuous Distributions:**
   - Normal (Gaussian) Distribution: `numpy.random.normal`
   - Uniform Distribution: `numpy.random.uniform`
   - Exponential Distribution: `numpy.random.exponential`
   - Gamma Distribution: `numpy.random.gamma`
   - Chi-Square Distribution: `numpy.random.chisquare`
   - Beta Distribution: `numpy.random.beta`
   - Cauchy Distribution: `numpy.random.cauchy`
   - Logistic Distribution: `numpy.random.logistic`
   - Laplace Distribution: `numpy.random.laplace`
   - Log-Normal Distribution: `numpy.random.lognormal`
   - Pareto Distribution: `numpy.random.pareto`
   - Weibull Distribution: `numpy.random.weibull`
   - Triangular Distribution: `numpy.random.triangular`

2. **Discrete Distributions:**
   - Poisson Distribution: `numpy.random.poisson`
   - Binomial Distribution: `numpy.random.binomial`
   - Geometric Distribution: `numpy.random.geometric`
   - Hypergeometric Distribution: `numpy.random.hypergeometric`
   - Negative Binomial Distribution: `numpy.random.negative_binomial`

These are some of the commonly used distributions available in `numpy.random`. You can refer to the NumPy documentation for more detailed information and additional distributions.

Here's the syntax for each distribution along with a brief explanation of the parameters:

1. **Continuous Distributions:**

   - Normal (Gaussian) Distribution:
     ```python
     numpy.random.normal(loc, scale, size)
     ```
     - `loc`: Mean of the distribution.
     - `scale`: Standard deviation of the distribution.
     - `size`: Output shape.

   - Uniform Distribution:
     ```python
     numpy.random.uniform(low, high, size)
     ```
     - `low`: Lower bound.
     - `high`: Upper bound.
     - `size`: Output shape.

   - Exponential Distribution:
     ```python
     numpy.random.exponential(scale, size)
     ```
     - `scale`: Inverse of the rate parameter.
     - `size`: Output shape.

   - Gamma Distribution:
     ```python
     numpy.random.gamma(shape, scale, size)
     ```
     - `shape`: Shape parameter (k).
     - `scale`: Scale parameter (θ).
     - `size`: Output shape.

   - Chi-Square Distribution:
     ```python
     numpy.random.chisquare(df, size)
     ```
     - `df`: Degrees of freedom.
     - `size`: Output shape.

   - Beta Distribution:
     ```python
     numpy.random.beta(a, b, size)
     ```
     - `a`: Shape parameter (alpha).
     - `b`: Shape parameter (beta).
     - `size`: Output shape.

   - Cauchy Distribution:
     ```python
     numpy.random.cauchy(loc, scale, size)
     ```
     - `loc`: Location parameter (median).
     - `scale`: Scale parameter.
     - `size`: Output shape.

   - Logistic Distribution:
     ```python
     numpy.random.logistic(loc, scale, size)
     ```
     - `loc`: Location parameter (mean).
     - `scale`: Scale parameter.
     - `size`: Output shape.

   - Laplace Distribution:
     ```python
     numpy.random.laplace(loc, scale, size)
     ```
     - `loc`: Location parameter (mean).
     - `scale`: Scale parameter.
     - `size`: Output shape.

   - Log-Normal Distribution:
     ```python
     numpy.random.lognormal(mean, sigma, size)
     ```
     - `mean`: Mean of the natural logarithm of the distribution.
     - `sigma`: Standard deviation of the natural logarithm of the distribution.
     - `size`: Output shape.

   - Pareto Distribution:
     ```python
     numpy.random.pareto(a, size)
     ```
     - `a`: Shape parameter (alpha).
     - `size`: Output shape.

   - Weibull Distribution:
     ```python
     numpy.random.weibull(a, size)
     ```
     - `a`: Shape parameter (k).
     - `size`: Output shape.

   - Triangular Distribution:
     ```python
     numpy.random.triangular(left, mode, right, size)
     ```
     - `left`: Lower limit.
     - `mode`: Mode (peak).
     - `right`: Upper limit.
     - `size`: Output shape.

2. **Discrete Distributions:**

   - Poisson Distribution:
     ```python
     numpy.random.poisson(lam, size)
     ```
     - `lam`: Rate parameter (mean).
     - `size`: Output shape.

   - Binomial Distribution:
     ```python
     numpy.random.binomial(n, p, size)
     ```
     - `n`: Number of trials.
     - `p`: Probability of success in each trial.
     - `size`: Output shape.

   - Geometric Distribution:
     ```python
     numpy.random.geometric(p, size)
     ```
     - `p`: Probability of success in each trial.
     - `size`: Output shape.

   - Hypergeometric Distribution:
     ```python
     numpy.random.hypergeometric(ngood, nbad, nsample, size)
     ```
     - `ngood`: Number of "good" objects.
     - `nbad`: Number of "bad" objects.
     - `nsample`: Number of sampled items.
     - `size`: Output shape.

   - Negative Binomial Distribution:
     ```python
     numpy.random.negative_binomial(n, p, size)
     ```
     - `n`: Number of successes required.
     - `p`: Probability of success in each trial.
     - `size`: Output shape.

These are the basic syntaxes for generating random samples from various probability distributions using `numpy.random`.

Certainly! Below are some common probability distribution functions available in SciPy's `scipy.stats` module along with their syntax for calculating probability mass functions (PMFs) or probability density functions (PDFs), cumulative distribution functions (CDFs), and inverse cumulative distribution functions (inverse CDFs), where applicable:

1. **Continuous Distributions:**

   - Normal (Gaussian) Distribution:
     ```python
     scipy.stats.norm.pdf(x, loc=0, scale=1)
     scipy.stats.norm.cdf(x, loc=0, scale=1)
     scipy.stats.norm.ppf(q, loc=0, scale=1)
     ```

   - Exponential Distribution:
     ```python
     scipy.stats.expon.pdf(x, scale=1)
     scipy.stats.expon.cdf(x, scale=1)
     scipy.stats.expon.ppf(q, scale=1)
     ```

   - Gamma Distribution:
     ```python
     scipy.stats.gamma.pdf(x, a, scale=1)
     scipy.stats.gamma.cdf(x, a, scale=1)
     scipy.stats.gamma.ppf(q, a, scale=1)
     ```

   - Chi-Square Distribution:
     ```python
     scipy.stats.chi2.pdf(x, df)
     scipy.stats.chi2.cdf(x, df)
     scipy.stats.chi2.ppf(q, df)
     ```

   - Beta Distribution:
     ```python
     scipy.stats.beta.pdf(x, a, b)
     scipy.stats.beta.cdf(x, a, b)
     scipy.stats.beta.ppf(q, a, b)
     ```

   - Cauchy Distribution:
     ```python
     scipy.stats.cauchy.pdf(x, loc=0, scale=1)
     scipy.stats.cauchy.cdf(x, loc=0, scale=1)
     scipy.stats.cauchy.ppf(q, loc=0, scale=1)
     ```

   - Logistic Distribution:
     ```python
     scipy.stats.logistic.pdf(x, loc=0, scale=1)
     scipy.stats.logistic.cdf(x, loc=0, scale=1)
     scipy.stats.logistic.ppf(q, loc=0, scale=1)
     ```

2. **Discrete Distributions:**

   - Poisson Distribution:
     ```python
     scipy.stats.poisson.pmf(k, mu)
     scipy.stats.poisson.cdf(k, mu)
     scipy.stats.poisson.ppf(q, mu)
     ```

   - Binomial Distribution:
     ```python
     scipy.stats.binom.pmf(k, n, p)
     scipy.stats.binom.cdf(k, n, p)
     scipy.stats.binom.ppf(q, n, p)
     ```

   - Geometric Distribution:
     ```python
     scipy.stats.geom.pmf(k, p)
     scipy.stats.geom.cdf(k, p)
     scipy.stats.geom.ppf(q, p)
     ```

   - Hypergeometric Distribution:
     ```python
     scipy.stats.hypergeom.pmf(k, M, n, N)
     scipy.stats.hypergeom.cdf(k, M, n, N)
     scipy.stats.hypergeom.ppf(q, M, n, N)
     ```

   - Negative Binomial Distribution:
     ```python
     scipy.stats.nbinom.pmf(k, n, p)
     scipy.stats.nbinom.cdf(k, n, p)
     scipy.stats.nbinom.ppf(q, n, p)
     ```

These are some of the commonly used probability distribution functions available in SciPy's `scipy.stats` module, along with their respective syntaxes for PMFs/PDFs, CDFs, and inverse CDFs. You can replace the distribution name and parameters with the specific distribution you are interested in using.
