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

Sure, here's a list of some common probability distribution functions in the `scipy.stats` module along with their syntax to calculate the Probability Mass Function (PMF), Probability Density Function (PDF), and Cumulative Distribution Function (CDF):

1. **Bernoulli Distribution:**

   - Syntax:
     ```python
     from scipy.stats import bernoulli
     
     # PMF
     p = 0.3  # probability of success
     x = 0    # random variable
     pmf_value = bernoulli.pmf(x, p)
     
     # CDF
     cdf_value = bernoulli.cdf(x, p)
     ```
     
2. **Binomial Distribution:**

   - Syntax:
     ```python
     from scipy.stats import binom
     
     # PMF
     n = 10   # number of trials
     p = 0.5  # probability of success
     x = 3    # random variable
     pmf_value = binom.pmf(x, n, p)
     
     # PDF (Note: Binomial distribution is discrete, so PDF = PMF)
     pdf_value = binom.pmf(x, n, p)
     
     # CDF
     cdf_value = binom.cdf(x, n, p)
     ```

3. **Poisson Distribution:**

   - Syntax:
     ```python
     from scipy.stats import poisson
     
     # PMF
     lambda_ = 5  # rate parameter
     x = 3        # random variable
     pmf_value = poisson.pmf(x, lambda_)
     
     # PDF (Note: Poisson distribution is discrete, so PDF = PMF)
     pdf_value = poisson.pmf(x, lambda_)
     
     # CDF
     cdf_value = poisson.cdf(x, lambda_)
     ```

4. **Normal (Gaussian) Distribution:**

   - Syntax:
     ```python
     from scipy.stats import norm
     
     # PDF
     mean = 0
     std_dev = 1
     x = 1.5
     pdf_value = norm.pdf(x, mean, std_dev)
     
     # CDF
     cdf_value = norm.cdf(x, mean, std_dev)
     ```

5. **Uniform Distribution:**

   - Syntax:
     ```python
     from scipy.stats import uniform
     
     # PDF (Uniform distribution is continuous, so PDF is constant)
     a = 1   # lower bound
     b = 3   # upper bound
     x = 2   # value in the range [a, b]
     pdf_value = uniform.pdf(x, a, b-a)
     
     # CDF
     cdf_value = uniform.cdf(x, a, b-a)
     ```

6. **Exponential Distribution:**

   - Syntax:
     ```python
     from scipy.stats import expon
     
     # PDF
     scale = 2  # scale parameter
     x = 1.5    # value >= 0
     pdf_value = expon.pdf(x, scale=scale)
     
     # CDF
     cdf_value = expon.cdf(x, scale=scale)
     ```

These are some of the commonly used probability distributions in the `scipy.stats` module along with their syntax for calculating PMF, PDF, and CDF.
