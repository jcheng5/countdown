# countdown

Countdown timer for R Markdown to time portions of a talk or presentation such 
as exercises and break times.

## Installation

    # install.packages("devtools")
    devtools::install_github("jcheng5/countdown")

## Usage

Install the `countdown` package, and include it in your presentation Rmd file
like so:

    ---
    title: "Minimal countdown example"
    output: html_document
    ---
    
    ```{r setup, include=FALSE}
    require(countdown)
    ```
    
    ## R Markdown
    
    This is an R Markdown presentation with a a 30 second countdown counter.
    
    ```{r }
    countdown_timer(30)
    ```
    
You can add `countdown_timer()` as many times as you want in your presentation. 
Time is included as seconds in the function `countdown_timer()`, but will show
as minutes:seconds in your presentation.
