
library(maptools)
library(rgdal)
library (sp)
library(raster)
library(ggplot2)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)
library(rgbif)
library(mapr)
library(marmap)
library(leaflet)
library(dplyr)
library(rjson)
library(jsonlite)
library(RCurl)
library(tidyverse)

Phl<- fromJSON(file="/Users/shinjean/Documents/ClassR/gadm41_PHL_1.json")
Phl
PHL<- rgdal::readOGR("/Users/shinjean/Documents/ClassR/R/gadm41_PHL_1.json")
PHL
HOME<- paste(sep = "</br>", 
             "<b><p> No place like HOME &#128151;</p></b>")

leaflet(PHL)%>%
  setView(lng=120.5909532, lat=16.3863067, zoom=7)%>%
  addPopups(120.5909532,16.3863067, HOME, options= popupOptions 
            (closeButton=FALSE, keepInView = TRUE, closeOnClick = NULL))%>%
  addPolygons(stroke= TRUE, color="#2d551b", smoothFactor= 1, opacity= 0.3 )%>%
  addTiles() %>% 
  addRectangles (
    lng1= 120.58871, lat1= 16.38797,
    lng2= 120.59317, lat2= 16.38483,
    color= "#ffa500",
    fillColor= "#ffa500",
    fillOpacity = 0.2)%>%
  addScaleBar(
    position = "bottomright",
    options = scaleBarOptions())%>%
  scaleBarOptions()
maxWidth = 100,
metric = TRUE,
imperial = TRUE)



















