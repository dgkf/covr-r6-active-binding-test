test <- R6::R6Class(
  "test_r6_class",
  private = list(
    data = NULL
  ),
  public = list(
    initialize = function(data, ...) {
      private$data <- data
    }
  ),
  active = list(
    raw_data = function(value) {
      if (missing(value)) {
        return(private$data)
      } else {
        private$data <- value
      }
    }
  )
)
