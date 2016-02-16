# countdown

Countdown timer for R Markdown. Used by the author Joe Cheng to smash your hopes
of finishing the assignment he just put on screen within the time given :)

Can be used by anyone to time portions of a talk or presentation such as exercises
and break times.

## Installation

    library(devtools)
    install_github("jcheng5/countdown")
    library(countdown)

## Usage

Install the `countdown` package, and include it in your presentation like so:

    ```{r setup, include=FALSE}
    knitr::opts_chunk$set(echo = FALSE)
    require(countdown)
    ```

    ## R Markdown

    This is an R Markdown presentation. Markdown is a simple formatting syntax for authoring 
    HTML, PDF, and MS Word documents. For more details on using R Markdown see 
    <http://rmarkdown.rstudio.com>.

    Now consider for the next 30 seconds why you are happy to be here now.

    ```{r }
    countdown_timer(30)
    ```

You can add `countdown_timer() as many times as you want in your presentation.
