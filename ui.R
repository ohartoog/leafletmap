shinyUI(
  # Use a fluid Bootstrap layout
  fluidPage(
    # Give the page a title
    titlePanel("28 May 2018"),
    mainPanel(leafletOutput("map"))
  )
)