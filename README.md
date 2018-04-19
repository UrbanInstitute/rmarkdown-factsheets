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

## Use

`preamble.tex` and `template.Rmd` contain settings and code to put R Markdown PDFs into the Urban Institute factsheet style. Many of the changes are automated. 

### Macros

Some of the changes require using custom LaTeX macros:

* `\contactinfo{}` Adds the Urban Institute contact information to the end of the page. 
* `\urbantitle{}` Adds formatted title. **Argument:** text of title
* `\urbansubtitle{}` Adds formatted subtitle. **Argument:** text of subtitle
* `\urbanauthors{}` Adds formatted byline. **Argument:** text of byline
* `\urbansubhead{}` Adds formatted subhead. **Argument:** text of subhead
* `\urbanfigurenumber{}` Adds formatted figure label. **Argument:** number of figure
* `\urbanfiguretitle{}` Adds formatted figure title. **Argument:** title of figure
* `\urbansource{}` Adds formatted figure source. **Argument:** source of figure
* `\urbannote{}` Adds formatted figure note. **Argument:** note of figure
* `\urbanboilerplate{}{}{}` Adds Urban Institute boilerplate to end of current page. **Arguments:** funder name, month, year

### Environments

Some of the changes require using custom LaTeX environments:

* `\urbanbullets{}` Creates an environment for styled bullets. Use:

```
\begin{urbanbullets}
  \item bullet text
  \item bullet text
  \item bullet text
\end{urbanbullets}
```

* `\urbanenumerate{}` Creates an environment for styled bullets. Use:

```
\begin{urbanenumerate}
  \item list text
  \item list text
  \item list text
\end{urbanenumerate}
```

## General guidelines

* No text smaller than 9 point.
* All headings and body text (including bullets, table text, etc.) should be flush left.
* First-level headings should be the second-most-prominent text on the page and should include a visual break (i.e., blank space). 12 pt Lato, bold, 12 points of space before the paragraph.
* Titles, subtitles, and author names should be centered at the top of page one.
* The title should be the most prominent text on page 1. Titles should be 15 pt Lato, bold, black.
* Subtitles should be 12 pt Lato, regular, Urban blue.
* Author name(s) should appear on page 1 under the title (and subtitle, if applicable). Author name(s) should be 11 pt Lato, italic, black, 12 points of space after the paragraph.
* Make heavy use of the [Urban Institute Data Visualization Style Guide](http://urbaninstitute.github.io/graphics-styleguide/)

## Contributors

### Creator

* Aaron Williams

### Contributors

* Marni Epstein
* Bhargavi Ganesh
* Irvin Mull
* Graham MacDonald 
