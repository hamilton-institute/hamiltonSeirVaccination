#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      mod_original_v2_ui("original_v2_ui_1")
      # mod_original_version_ui("original_version_ui_1")
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  add_resource_path(
    'distill', system.file("distill", package = "hamiltonThemes")
  )
 
  tags$head(
    favicon(ext = 'png'),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'hamiltonSeirVaccination'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
  tags$head(
    favicon(),
    bundle_resources(
      path = system.file("distill", package = "hamiltonThemes"),
      app_title = 'hamiltonSeirVaccination'
    )
  )
}

