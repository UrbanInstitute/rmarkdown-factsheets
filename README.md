# rmarkdown-factsheets

## Overview

This repository contains tools and templates for creating Urban Institute-styled, PDF factsheets in [R Markdown](https://rmarkdown.rstudio.com/). 

## Getting started

### Lato font

The Urban Institute uses the font [Lato](https://fonts.google.com/specimen/Lato). Go to `Control Panel` > `Appearance and Personalization` > `Fonts` to see if Lato is installed on your computer. Contact the IT Helpdesk if Lato isn't installed on your computer. 

### LaTeX distribution

Creating PDFs with R Markdown requires a [LaTeX](https://www.latex-project.org/about/) distribution. In the past, this too often meant installing and maintaining the large and clunky MiKTeX. Fortunately, Yihui Xie created TinTeX, a custom LaTeX distribution based on TeX Live that is lightweight and can be managed in R.

Submit the following code in R to install TinyTex ([full instructions here](https://yihui.name/tinytex/)):

```
install.packages(c("tinytex", "rmarkdown"))
tinytex::install_tinytex()
```
**Note:** If you installed MiKTeX in the past, uninstall it before installing TinyTex. 

### Fork or download this repository

Fork this respoitory or download the contents of this repository to get access to the template. 

## Contributors

### Creator

* Aaron Williams

### Contributors

* Marni Epstein
* Bhargavi Ganesh
* Irvin Mull
* Graham MacDonald 
