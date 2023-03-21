[![CRAN](https://img.shields.io/cran/v/jfa?color=yellow&label=CRAN&logo=r)](https://cran.r-project.org/package=jfa)
[![R_build_status](https://github.com/koenderks/jfa/workflows/Build/badge.svg)](https://github.com/koenderks/jfa/actions)
[![Codecov](https://codecov.io/gh/koenderks/jfa/branch/development/graph/badge.svg?token=ZoxIB8p8PW)](https://app.codecov.io/gh/koenderks/jfa)
[![Bugs](https://img.shields.io/github/issues/koenderks/jfa/bug?label=Bugs&logo=github&logoColor=%23FFF&color=brightgreen)](https://github.com/koenderks/jfa/issues?q=is%3Aopen+is%3Aissue+label%3Abug)
[![Total](https://cranlogs.r-pkg.org/badges/grand-total/jfa?color=blue)](https://cranlogs.r-pkg.org)
[![Licence](https://img.shields.io/badge/licence-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)

# jfa: Statistical Methods for Auditing <img src='https://github.com/koenderks/jfa/raw/development/man/figures/logo.png' width='149' height='173' align='right'/>

**jfa** is an R package that provides statistical methods for auditing. The package includes functions for planning, performing, evaluating, and reporting audit samples compliant with international auditing standards, as well as functions for auditing data, such as testing the distribution of leading digits against Benford's law. In addition to offering classical frequentist methods, **jfa** also provides a straightforward implementation of their Bayesian counterparts.

- [Audit sampling: Get started](https://koenderks.github.io/jfa/articles/audit-sampling.html)
- [Data auditing: Get started](https://koenderks.github.io/jfa/articles/data-auditing.html)

The functionality of the **jfa** package and its intended workflow are implemented with a graphical user interface in the [Audit](https://github.com/jasp-stats/jaspAudit) module of [JASP](https://jasp-stats.org), a free and open-source software program for statistical analyses.

---

### Resources

- [Package website](https://koenderks.github.io/jfa/) (online documentation, vignettes)
- [Textbook](https://koenderks.github.io/sasr/) (detailed information, code examples)
- [Ask a question](https://github.com/koenderks/jfa/discussions) (discussion forum)
- [Open an issue](https://github.com/koenderks/jfa/issues) (bug reports, feature requests)

### Installation

#### Latest Release

The most recent **jfa** release can be installed from [CRAN](https://cran.r-project.org/package=jfa) via:

```r
install.packages("jfa")
```

#### Development Version

To install the development version from GitHub, first make sure that you can install the **rstan** package and C++ toolchain by following these [instructions](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started). Once **rstan** is successfully installed, you can install **jfa** from GitHub using the **remotes** package by executing the following in R:

```r
# install.packages("remotes")
remotes::install_github("koenderks/jfa", INSTALL_opts = "--no-multiarch")
```

### Contributing

The **jfa** project is an open-source initiative with the objective of providing value to the audit community. Therefore, the collaboration and support of the community in benchmarking and expanding the package is greatly appreciated. Participating in this endeavor does not require extensive time or expertise, as comprehensive information can be found on the repository's [Wiki](https://github.com/koenderks/jfa/wiki) page.

Individuals who are interested in contributing to the validation of the package through the addition of a benchmark are encouraged to consult the Wiki page on [how to contribute a benchmark to jfa](https://github.com/koenderks/jfa/wiki/Benchmarks). Similarly, individuals who wish to contribute to the improvement of the package by incorporating a statistical method are advised to review the Wiki page on [how to contribute a method to jfa](https://github.com/koenderks/jfa/wiki/Methods).

### Citation

To obtain the preferred citation for **jfa**, run the following code in the R console:

```
citation("jfa")

#>  To cite jfa in publications, please use:
#>
#>    Derks, K. (2023). jfa: Statistical methods for auditing. R package version 0.6.5.
#>
#>  A BibTeX entry for LaTeX users is
#>
#>    @Manual{jfa,
#>      title = {jfa: Statistical methods for auditing},
#>      author = {Koen Derks},
#>      year = {2023},
#>      note = {R package version 0.6.5},
#>      url = {https://CRAN.R-project.org/package=jfa},
#>    }
```
