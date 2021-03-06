#' @title fit_models
#' @description This function analyzes the data and outputs a summary
#' @param formula PARAM_DESCRIPTION
#' @param data input the data, family = Poisson by default and it has an offset by default
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples 
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso 
#'  \code{\link[lme4]{glmer}}
#'  \code{\link[sjPlot]{tab_model}}
#' @rdname fit_models
#' @export 
#' @importFrom lme4 glmer
#' @importFrom sjPlot tab_model
fit_models <- function(formula, data) {
  tj <- NULL
  fit.glmm <- lme4::glmer(formula, 
                          data = data, 
                          family = "poisson", 
                          offset = log(tj)
                          )
  
  #sjPlot::tab_model(fit.glmm)
  
}

# example of how to use the function
# fit_models(formula = y ~ trt*post + (1|subject), data = df_epil)
