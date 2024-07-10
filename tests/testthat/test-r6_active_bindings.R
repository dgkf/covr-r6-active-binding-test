test_that("covr can record active binding call stacks", {
  f <- tempfile("mtcars", fileext = ".parquet")
  if (!dir.exists(dirname(f))) dir.create(dirname(f), recursive = TRUE)

  arrow::write_parquet(mtcars, f)
  data <- arrow::read_parquet(f)

  obj <- test$new(data)
  expect_identical(nrow(obj$raw_data), 32)
})
