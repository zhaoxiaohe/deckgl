## @knitr screen-grid-layer
sample_data <- paste0(
  "https://raw.githubusercontent.com/uber-common/",
  "deck.gl-data/master/",
  "website/sf-bike-parking.json"
)

color_to_rgb <- function(color) col2rgb(color) %>% as.vector()
color_range <- c("#0198BD", "#49E3CE", "#D8FEB5", "#FEEDB1", "#FEAD54", "#D1374E") %>%
  lapply(color_to_rgb)

properties <- list(
  pickable = FALSE,
  opacity = 0.8,
  cellSizePixels = 50,
  colorRange = color_range,
  getPosition = get_property("COORDINATES"),
  getWeight = get_property("SPACES")
)

deck <- deckgl() %>%
  add_screen_grid_layer(data = sample_data, properties = properties) %>%
  add_mapbox_basemap()

if (interactive()) deck
