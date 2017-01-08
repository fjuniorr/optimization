library(ggplot2); library(data.table); library(lazyeval)

x <- list(x1 = 0:2, x2 = 0:2)
c <- 2

cobb_douglas(feasible_set(list(x1 = 0:3, x2 = 0:3), 3))

feasible_set <- function(x, c, p1 = 1, p2 = 1, ) {
    DT <- data.table(expand.grid(x))
    DT <- DT[p1*x1 + p2*x2 == c]
    DT
}

lg <- ~ p1*x1 + p2*x2 == c

f_lhs(lg)
f_rhs(lg)

f_eval_rhs(lg, )

cobb_douglas <- function(x, alpha = 0.3) {
    x$x1^alpha*x$x2^(1-alpha)
}

linear <- function(x) {
    2*x
}

quadratic <- function(x, a = -2, b = 1200, c = 0) {
    a*x^2 + b*x + c
}

quadratic <- function(a = 1, b = 0, c = 0) {
    function(x) {
        a*x^2 + b*x + c
    }
}
quadratic(251) - quadratic(250) ## this is the value of the lagrange multiplier

## use taylor expansion around the optimal value to see changes in the objective function when you change the optimal value itself

quadratic(300)

graph(0:600, quadratic)



ggplot(data.frame(x = c(-3, 3)), aes(x = x)) +
    stat_function(fun = dnorm, colour = "red") +
    stat_function(fun = dt, args = list(df = 10))

