plot_quant <- function(n1 = 5, n2 = 6){
  rnorm_ <- function(n){
    sample <- rnorm(n)
    if(any(abs(sample) > 3))rnorm_(n)
    else return(sample)
  }
  d <- rbind(data.frame(x = rnorm_(n1), y = rnorm_(n1), pos = "left"),
             data.frame(x = rnorm_(n2), y = rnorm_(n2), pos = "right"))
  plot(ggplot2::ggplot(d, ggplot2::aes(x, y)) +
         ggplot2::facet_grid(cols = ggplot2::vars(pos)) +
         ggplot2::theme_void() +
         ggplot2::geom_point(alpha = .25) +
         ggplot2::ylim(-3, 3) +
         ggplot2::xlim(-3,3))
}

one_game <- function(n1, n2){
  plot_quant(n1, n2)
  t1 <- Sys.time()
  answer <- menu(c("left", "right", "stop"), title = "Where are more points?")
  t2 <- Sys.time()
  if(answer == 3L){
    correct <- NA
    stop <- TRUE
  } else {
    correct <- ((n1 < n2) + 1) == answer
    stop <- FALSE
  }
  data.frame(correct = correct, stop, time = as.numeric(t2 - t1))
}

generate_condition <- function(midpoint, diff){
  add <- sample(c(-1, 1), 1)
  diff1 <- floor(diff/2)
  diff2 <- ceiling(diff/2)
  list(n1 = midpoint + add * diff1,
       n2 = midpoint + -1 * add * diff2)
}

game <- function(n = 2, diff = 3:1, midpoint = 5:7, seed = 1234){
  old_seed <- .Random.seed
  on.exit(set.seed(old_seed))
  set.seed(seed)
  
  grid <- expand.grid(midpoint = midpoint, diff = diff)
  grids <- rep(list(grid), n)
  grid <- do.call(rbind, grids)
  trials <- nrow(grid)
  print(paste0(trials, " Trials"))
  grid <- grid[sample(seq_len(trials), trials), ]
  
  results <- vector("list", length = trials)
  for(i in seq_len(trials)){
    cond <- do.call(generate_condition, grid[i, ])
    result <- do.call(one_game, cond)
    result <- cbind(result, grid[i, ])
    results[[i]] <- result
    if(result$stop)break
  }
  results <- do.call(rbind, results)
  rownames(results) <- NULL
  results
}
