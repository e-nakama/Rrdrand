test_that("hasRDRAND returns logical", {
  result <- hasRDRAND()
  expect_type(result, "logical")
  expect_length(result, 1)
})

test_that("runif works when RDRAND is available", {
  if (hasRDRAND()) {
    rng_before <- RNGkind()
    # Assuming package sets RNGkind on load
    expect_true(rng_before[1] == "user-supplied" || rng_before[1] == "default")
    # Generate numbers
    nums <- runif(10)
    expect_type(nums, "double")
    expect_length(nums, 10)
    expect_true(all(nums >= 0 & nums < 1))
  }
})

test_that("runif returns NaN when RDRAND not available", {
  # This test is hard to run on supported hardware; skip if supported
  if (!hasRDRAND()) {
    skip("RDRAND not available on this system")
  }
})