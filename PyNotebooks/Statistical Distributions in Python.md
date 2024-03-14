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
