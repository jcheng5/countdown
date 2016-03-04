#' Countdown Timer
#' Inserts a countdown timer into R Markdown documents
#'
#' @param seconds The number of seconds to count down
#' @import htmltools lubridate
#' @export
countdown_timer <- function(seconds) {
  td <- seconds_to_period(seconds)
  timeString <- sprintf('%02d:%02d:%02d:%02d', day(td), td@hour, minute(td), second(td))
  timeString <- sub("^(00:){0,2}0?", "", timeString, perl = TRUE)

  deps <- list(
    htmlDependency("jquery", "1.12.0",
      src = system.file("jquery", package="countdown"),
      script = "jquery-1.12.0.min.js"
    ),
    htmlDependency("countdown_timer", packageVersion("countdown"),
      src = system.file("assets", package="countdown"),
      script = "countdown.js",
      stylesheet = "countdown.css"
    )
  )
  attachDependencies(
    withTags(
      div(class="countdown-timer", `data-timespan`=as.character(seconds),
        span(class="countdown-timer-time", timeString),
        br(),
        button(class="countdown-timer-start", type="button", "   "),
        button(class="countdown-timer-stop", type="button", "   "),
        button(class="countdown-timer-reset", type="button", "   ")
      )
    ),
    deps
  )
}
