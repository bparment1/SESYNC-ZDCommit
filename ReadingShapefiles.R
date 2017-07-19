#Read data
setwd('/nfs/supplychaincommitments-data/SESYNC GIS Database/')

dat=read.csv('/Admin/BRA_adm3')

#Read data
biome_sf <- st_read(dsn="Biomes","Brazil_Biomes")
names(biome_sf)
biome_sf
plot(biome_sf$geometry) #plotting spatial data
plot(biome_sf,add=T,col="red")
BRadmin_sf <- st_read(dsn='Admin','BRA_adm3')

#Check projections
st_crs(biome_sf)
st_crs(BRadmin_sf)

#How to change projection for shapefile if necessary
st_transform(BRadmin_sf,crs="+proj=longlat +datum=WGS84 +no_defs")
