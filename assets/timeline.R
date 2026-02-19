# Functions for creating timelines. Modified from {cronologia} package
# (https://github.com/feddelegrand7/cronologia) package in accordance with
# GNU Affero General Public License 3.0.
# Created 2024-07-19

#' An internal function used to manage the CSS file dependency
#' @noRd
cronologia_dependency <- function() {
  htmltools::htmlDependency(
    name = "cronologia",
    version = "0.1.0",
    package = "cronologia",
    src = c(file = "cronologia"),
    stylesheet = "cronologia.min.css",
    all_files = FALSE
  )
}

#' An internal function used to generate HTML tags for the timeline function
#' @noRd
timeline <- function(
  df,
  smr,
  dsc,
  smr_col,
  smr_bgcol,
  dsc_col,
  dsc_bgcol,
  dsc_size,
  open
) {
  func <- function(i, j) {
    det <- htmltools::tags$details(
      htmltools::tags$summary(
        i,
        style = glue::glue(
          "color: {smr_col}; background: {smr_bgcol};"
        )
      ),
      htmltools::tags$p(
        j,
        style = glue::glue(
          "color: {dsc_col}; background: {dsc_bgcol}; font-size: {dsc_size};"
        )
      )
    )
    details <- if (open) {
      htmltools::tagAppendAttributes(det, "open" = NA)
    } else {
      det
    }
    htmltools::tagList(
      htmltools::div(
        class = "chronologia-detail-wrapper",
        details
      )
    )
  }
  r <- mapply(func, df[[smr]], df[[dsc]], SIMPLIFY = FALSE)
  return(
    htmltools::tagList(
      htmltools::div(class = "chronologia-wrapper", r)
    )
  )
}

create_tml_split <- function(
  df,
  smr,
  dsc,
  split,
  complete = TRUE,
  smr_col = "white",
  smr_bgcol = "#28679C",
  smr2_col = "#132E53",
  smr2_bgcol = "#FDBC4D",
  dsc_col = "#1D1D1D",
  dsc_bgcol = "#FFFFFF",
  dsc_size = "14px",
  dsc2_col = dsc_col,
  dsc2_bgcol = dsc_bgcol,
  open = FALSE
) {
  if (
    any(
      !is.character(smr),
      !is.character(dsc),
      !is.character(smr_col),
      !is.character(smr_bgcol),
      !is.character(smr2_col),
      !is.character(smr2_bgcol),
      !is.character(dsc_col),
      !is.character(dsc_bgcol),
      !is.character(dsc_size),
      !is.character(dsc2_col),
      !is.character(dsc2_bgcol)
    )
  ) {
    stop(
      "All parameters except 'df' must be provided as a character string ! you're not in Tidyverse !!!"
    )
  }

  if (any(!c(smr, dsc) %in% names(df))) {
    stop(glue::glue(
      "Please check the columns' names.
      Note that they need to be provided as a character string in this form:
      (df = mtcars, smr = 'mpg', dsc = 'wt')
      "
    ))
  }

  if (split == 0) {
    htmltools::tagList(
      cronologia_dependency(),
      timeline(
        df[(split + 1):nrow(df), ],
        smr,
        dsc,
        smr2_col,
        smr2_bgcol,
        dsc2_col,
        dsc2_bgcol,
        dsc_size,
        open
      )
    )
  } else if (split == 1) {
    htmltools::tagList(
      cronologia_dependency(),
      # htmltools::tags$p(
      #   "Completed",
      #   style = "text-align: center; font-size: 25px; font-weight: bold;"
      # ),
      # timeline(
      #   df[1:split, ],
      #   smr,
      #   dsc,
      #   smr_col,
      #   smr_bgcol,
      #   dsc_col,
      #   dsc_bgcol,
      #   dsc_size,
      #   open
      # ),
      htmltools::tags$p(
        "Currently",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[1:nrow(df), ],
        smr,
        dsc,
        smr2_col,
        smr2_bgcol,
        dsc2_col,
        dsc2_bgcol,
        dsc_size,
        open
      )
    )
  } else if (split < nrow(df) & complete) {
    htmltools::tagList(
      cronologia_dependency(),
      htmltools::tags$p(
        "Completed",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[1:split, ],
        smr,
        dsc,
        smr_col,
        smr_bgcol,
        dsc_col,
        dsc_bgcol,
        dsc_size,
        open
      ),
      htmltools::tags$p(
        "Currently",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[(split + 1):nrow(df), ],
        smr,
        dsc,
        smr2_col,
        smr2_bgcol,
        dsc2_col,
        dsc2_bgcol,
        dsc_size,
        open
      )
    )
  } else if (split < nrow(df) & !complete) {
    htmltools::tagList(
      cronologia_dependency(),
      htmltools::tags$p(
        " ",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[1:split, ],
        smr,
        dsc,
        smr_col,
        smr_bgcol,
        dsc_col,
        dsc_bgcol,
        dsc_size,
        open
      ),
      htmltools::tags$p(
        "Currently",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[(split + 1):nrow(df), ],
        smr,
        dsc,
        smr2_col,
        smr2_bgcol,
        dsc2_col,
        dsc2_bgcol,
        dsc_size,
        open
      )
    )
  } else {
    htmltools::tagList(
      cronologia_dependency(),
      htmltools::tags$p(
        "Completed",
        style = "text-align: center; font-size: 25px; font-weight: bold;"
      ),
      timeline(
        df[1:nrow(df), ],
        smr,
        dsc,
        smr_col,
        smr_bgcol,
        dsc_col,
        dsc_bgcol,
        dsc_size,
        open
      )
    )
  }
}
