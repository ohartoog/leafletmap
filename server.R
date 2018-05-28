shinyServer(function (input, output) {
  output$map <- renderLeaflet({
    
    df <- data.frame(lat = 46.352750,lng = 14.145604)
    
    campingicon <- makeIcon(
      iconUrl = "https://cdn3.iconfinder.com/data/icons/camping-icons/434/Camping-512.png",
      iconWidth = 31*512/397, iconHeight = 31,
      iconAnchorX = 31*512/397/2, iconAnchorY = 16
    )
    
    df %>%
      leaflet() %>%
      addTiles() %>%
      addMarkers(popup = "Camping Sobec in Slovenia", icon=campingicon)
    
  })
})