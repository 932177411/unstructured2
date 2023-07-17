library(imager)

# 加载图像数据
flower1_colored <- load.image("flower1.jpg")
flower2_greyscale <- load.image("flowers2.jpg")
scenery1_colored <- load.image("scenery1.jpg")
scenery2_greyscale <- load.image("scenery2.jpg")
person1_colored <- load.image("person1.jpg")
person2_greyscale <- load.image("person2.jpg")
building1_colored <- load.image("building1.jpg")
building2_greyscale <- load.image("building2.jpg")
other1_colored <- load.image("fruit1.jpg")
other2_greyscale <- load.image("fruit2.jpg")

# i. Edge detection
flower1_edges <- deriche(flower1_colored, 2, order = 2)
flower2_edges <- deriche(flower2_greyscale, 2, order = 2)
scenery1_edges <- deriche(scenery1_colored, 2, order = 2)
scenery2_edges <- deriche(scenery2_greyscale, 2, order = 2)
person1_edges <- deriche(person1_colored, 2, order = 2)
person2_edges <- deriche(person2_greyscale, 2, order = 2)
building1_edges <- deriche(building1_colored, 2, order = 2)
building2_edges <- deriche(building2_greyscale, 2, order = 2)
other1_edges <- deriche(other1_colored, 2, order = 2)
other2_edges <- deriche(other2_greyscale, 2, order = 2)

# ii. Splitting & concatenating image
flower1_channels <- channels(flower1_colored)
flower2_channels <- channels(flower2_greyscale)
scenery1_channels <- channels(scenery1_colored)
scenery2_channels <- channels(scenery2_greyscale)
person1_channels <- channels(person1_colored)
person2_channels <- channels(person2_greyscale)
building1_channels <- channels(building1_colored)
building2_channels <- channels(building2_greyscale)
other1_channels <- channels(other1_colored)
other2_channels <- channels(other2_greyscale)

# iii. Image transformation: resizing, rotation, scaling & cropping
thmb <- resize(flower1_colored , round(width(flower1_colored ) / 10), round(height(flower1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(flower1_colored , -10, -10)  
imrotate(flower1_colored , 30) %>% plot(main = "to rotate")  
imshift(flower1_colored , 40, 20) %>% plot(main = "translate")  
imshift(flower1_colored , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(flower2_greyscale, round(width(flower1_colored ) / 10), round(height(flower1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(flower2_greyscale , -10, -10)  
imrotate(flower2_greyscale , 30) %>% plot(main = "to rotate")  
imshift(flower2_greyscale , 40, 20) %>% plot(main = "translate")  
imshift(flower2_greyscale, 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(scenery1_colored , round(width(scenery1_colored ) / 10), round(height(scenery1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(scenery1_colored , -10, -10)  
imrotate(scenery1_colored , 30) %>% plot(main = "to rotate")  
imshift(scenery1_colored , 40, 20) %>% plot(main = "translate")  
imshift(scenery1_colored , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)") 

thmb <- resize(scenery2_greyscale , round(width(flower1_colored ) / 10), round(height(flower1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(scenery2_greyscale , -10, -10)  
imrotate(scenery2_greyscale, 30) %>% plot(main = "to rotate")  
imshift(scenery2_greyscale , 40, 20) %>% plot(main = "translate")  
imshift(scenery2_greyscale, 100, 100, boundary = 2) %>% plot(main = "pan (cycle)") 

thmb <- resize(person1_colored , round(width(person1_colored ) / 10), round(height(person1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(person1_colored , -10, -10)  
imrotate(person1_colored , 30) %>% plot(main = "to rotate")  
imshift(person1_colored , 40, 20) %>% plot(main = "translate")  
imshift(person1_colored , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(person2_greyscale , round(width(person2_greyscale ) / 10), round(height(person2_greyscale ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(person2_greyscale , -10, -10)  
imrotate(person2_greyscale , 30) %>% plot(main = "to rotate")  
imshift(person2_greyscale , 40, 20) %>% plot(main = "translate")  
imshift(person2_greyscale , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(building1_colored, round(width(building1_colored ) / 10), round(height(building1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(building1_colored, -10, -10)  
imrotate(building1_colored , 30) %>% plot(main = "to rotate")  
imshift(building1_colored , 40, 20) %>% plot(main = "translate")  
imshift(building1_colored, 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(building2_greyscale, round(width(building2_greyscale) / 10), round(height(building2_greyscale ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(building2_greyscale , -10, -10)  
imrotate(building2_greyscale , 30) %>% plot(main = "to rotate")  
imshift(building2_greyscale , 40, 20) %>% plot(main = "translate")  
imshift(building2_greyscale , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")  

thmb <- resize(other1_colored , round(width(other1_colored ) / 10), round(height(other1_colored ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(other1_colored , -10, -10)  
imrotate(other1_colored , 30) %>% plot(main = "to rotate")  
imshift(other1_colored , 40, 20) %>% plot(main = "translate")  
imshift(other1_colored , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)") 

thmb <- resize(other2_greyscale , round(width(other2_greyscale ) / 10), round(height(other2_greyscale ) / 10))  
plot(thmb, main = "thumbnail") 
thmb <- resize(other2_greyscale , -10, -10)  
imrotate(other2_greyscale , 30) %>% plot(main = "to rotate")  
imshift(other2_greyscale , 40, 20) %>% plot(main = "translate")  
imshift(other2_greyscale , 100, 100, boundary = 2) %>% plot(main = "pan (cycle)")   
#Rectangular, circular & fuzzy selection.
#####  v. Rectangular, circular & fuzzy selection
# A rectangular selection from (600,300) to (800,400)
px1 <- (Xc(flower1_colored) %inr% c(600,800)) & (Yc(flower1_colored) %inr% c(300,400))
plot(flower1_colored, main = "Rectangular selection of Flower1")
highlight(px1, col = "darkgreen", lwd = 3)

# A circular selection at center of (700,300) with radius of 150
px2 <- (Xc(flower1_colored) - 700)^2 + (Yc(flower1_colored) - 300)^2 < 150^2
plot(flower1_colored, main = "Circular selection of Flower1")
highlight(px2, col = "darkgreen", lwd = 3)

# A fuzzy selection at the point (630,200)
plot(flower1_colored, main = "Fuzzy selection of Flower1")
px.flood(flower1_colored, 630, 200, sigma = 0.5) %>% highlight(col = "darkgreen", lwd = 1)

# A rectangular selection from (600,300) to (800,400)
px1 <- (Xc(flower2_greyscale) %inr% c(600,800)) & (Yc(flower2_greyscale) %inr% c(300,400))
plot(flower2_greyscale, main = "Rectangular selection of Flower1")
highlight(px1, col = "darkgreen", lwd = 3)

# A circular selection at center of (700,300) with radius of 150
px2 <- (Xc(flower2_greyscale) - 700)^2 + (Yc(flower2_greyscale) - 300)^2 < 150^2
plot(flower2_greyscale, main = "Circular selection of Flower1")
highlight(px2, col = "darkgreen", lwd = 3)

# A fuzzy selection at the point (630,200)
plot(flower2_greyscale, main = "Fuzzy selection of Flower1")
px.flood(flower2_greyscale, 630, 200, sigma = 0.5) %>% highlight(col = "darkgreen", lwd = 1)

# A rectangular selection from (600,300) to (800,400)
px1 <- (Xc(scenery1_colored) %inr% c(600,800)) & (Yc(scenery1_colored) %inr% c(300,400))
plot(scenery1_colored, main = "Rectangular selection of Flower1")
highlight(px1, col = "darkgreen", lwd = 3)

# A circular selection at center of (700,300) with radius of 150
px2 <- (Xc(scenery1_colored) - 700)^2 + (Yc(scenery1_colored) - 300)^2 < 150^2
plot(scenery1_colored, main = "Circular selection of Flower1")
highlight(px2, col = "darkgreen", lwd = 3)

# A fuzzy selection at the point (630,200)
plot(scenery1_colored, main = "Fuzzy selection of Flower1")
px.flood(scenery1_colored, 630, 200, sigma = 0.5) %>% 
  highlight(col = "darkgreen", lwd = 1)

# A rectangular selection from (600,300) to (800,400)
px1 <- (Xc(person2_edges) %inr% c(600,800)) & (Yc(person2_edges) %inr% c(300,400))
plot(person2_edges, main = "Rectangular selection of Flower1")
highlight(px1, col = "darkgreen", lwd = 3)

# A circular selection at center of (700,300) with radius of 150
px2 <- (Xc(person2_edges) - 700)^2 + (Yc(person2_edges) - 300)^2 < 150^2
plot(person2_edges, main = "Circular selection of Flower1")
highlight(px2, col = "darkgreen", lwd = 3)

# A fuzzy selection at the point (630,200)
plot(building1_colored, main = "Fuzzy selection of Flower1")
px.flood(building1_colored, 630, 200, sigma = 0.5) %>% 
  highlight(col = "darkgreen", lwd = 1)

#  blurry & sharpen
flower1_blurred <- isoblur(flower1_colored, 10)  
flower2_edges <- deriche(flower2_greyscale, 2, order = 2, axis = "x")  
scenery1_blurred <- isoblur(scenery1_colored, 10)  
scenery2_edges <- deriche(scenery2_greyscale, 2, order = 2, axis = "y")  
person1_blurred <- isoblur(person1_colored, 10) 
person2_edges <- deriche(person2_greyscale, 2, order = 2, axis = "x")  
building1_blurred <- isoblur(building1_colored, 10)  
building2_edges <- deriche(building2_greyscale, 2, order = 2, axis = "y") 
other1_blurred <- isoblur(other1_colored, 10) 
other2_edges <- deriche(other2_greyscale, 2, order = 2, axis = "x") 

# Filtering image
plot(flower1_blurred, main = "Blurred Flower 1")
plot(flower2_edges, main = "Flower 2 Edges")
plot(scenery1_blurred, main = "Blurred Scenery 1")
plot(scenery2_edges, main = "Scenery 2 Edges")
plot(person1_blurred, main = "Blurred Person 1")
plot(person2_edges, main = "Person 2 Edges")
plot(building1_blurred, main = "Blurred Building 1")
plot(building2_edges, main = "Building 2 Edges")
plot(other1_blurred, main = "Blurred Other 1")
plot(other2_edges, main = "Other 2 Edges")
#
gray.flower1_colored <- grayscale(flower1_colored)  
plot(gray.flower1_colored)
gray.flower2_greyscale <- grayscale(flower2_greyscale)  
plot(gray.flower2_greyscale)
gray.scenery1_colored <- grayscale(scenery1_colored)  
plot(gray.scenery1_colored)
gray.scenery2_greyscale <- grayscale(scenery2_greyscale)  
plot(gray.scenery2_greyscale)
gray.parrots <- grayscale(person1_colored)  
plot(gray.parrots)
gray.parrots <- grayscale(person2_greyscale)  
plot(gray.parrots)
gray.parrots <- grayscale(building1_colored)   
plot(gray.parrots)
gray.parrots <- grayscale(other1_colored)  
plot(gray.parrots)
gray.parrots <- grayscale(other2_greyscale)   
plot(gray.parrots)
#Blurry & sharpen
parrots.blurry <- isoblur(flower1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (flower1_colored + .5 * rnorm(prod(dim(flower1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(flower2_greyscale, 10) # Blurry parrots
plot(parrots.blurry)
flower2_greyscale.noisy <- (flower2_greyscale + .5 * rnorm(prod(dim(flower2_greyscale))))
sharpened_image <- blur_anisotropic(flower2_greyscale.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(scenery1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (scenery1_colored + .5 * rnorm(prod(dim(scenery1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(scenery2_greyscale, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (scenery2_greyscale + .5 * rnorm(prod(dim(scenery2_greyscale))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(person1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (person1_colored + .5 * rnorm(prod(dim(person1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(person2_greyscale, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (person2_greyscale + .5 * rnorm(prod(dim(person2_greyscale))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(building1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (building1_colored + .5 * rnorm(prod(dim(building1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(building2_greyscale, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (building2_greyscale + .5 * rnorm(prod(dim(building2_greyscale))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(flower1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (flower1_colored + .5 * rnorm(prod(dim(flower1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(other1_colored, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (other1_colored + .5 * rnorm(prod(dim(other1_colored))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)

parrots.blurry <- isoblur(other2_greyscale, 10) # Blurry parrots
plot(parrots.blurry)
flower1_colored.noisy <- (other2_greyscale + .5 * rnorm(prod(dim(other2_greyscale))))
sharpened_image <- blur_anisotropic(flower1_colored.noisy, ampl = 1e3, sharp = 0.3) # Blurred (anisotropic)
plot(sharpened_image)
#Segmentation
parrots.xedges <- deriche(flower1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(flower1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(flower1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(flower2_greyscale,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(flower2_greyscale,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(flower2_greyscale)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(scenery1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(scenery1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(scenery1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(scenery2_greyscale,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(scenery2_greyscale,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(scenery2_greyscale)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(person1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(person1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(person1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(person2_greyscale,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(person2_greyscale,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(person2_greyscale)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(building1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(building1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(building1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(building2_greyscale,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(building2_greyscale,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(building2_greyscale)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(other1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(other1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(other1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(flower1_colored,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(flower1_colored,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(flower1_colored)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")

parrots.xedges <- deriche(other2_greyscale,2,order=2,axis="x") # Edge detector along x-axis
parrots.yedges <- deriche(other2_greyscale,2,order=2,axis="y") # Edge detector along y-axis
flower1_greyscale <- grayscale(other2_greyscale)
layout(t(1:3))
# Perform thresholding at different levels and plot the results
threshold(flower1_greyscale, "20%") %>% plot(main = "Threshold 20%")
threshold(flower1_greyscale, "15%") %>% plot(main = "Threshold 15%")
threshold(flower1_greyscale, "10%") %>% plot(main = "Threshold 10%")
library(ggplot2)
library(dplyr)
##############
# Histogram equalization
plot(flower1_colored)
grayscale(flower1_colored) %>% hist(main = "Luminance values in flower1_colored picture")
R(flower1_colored) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(flower1_colored)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(flower1_colored)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#flower2_greyscale
plot(flower2_greyscale)
grayscale(flower2_greyscale) %>% hist(main = "Luminance values in flower1_colored picture")
R(flower2_greyscale) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(flower2_greyscale)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(flower2_greyscale)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#scenery1_colored
plot(scenery1_colored)
grayscale(scenery1_colored) %>% hist(main = "Luminance values in flower1_colored picture")
R(scenery1_colored) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(scenery1_colored)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(scenery1_colored)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#scenery2_greyscale
plot(scenery2_greyscale)
grayscale(scenery2_greyscale) %>% hist(main = "Luminance values in flower1_colored picture")
R(scenery2_greyscale) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(scenery2_greyscale)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(scenery2_greyscale)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#person1_colored
plot(person1_colored)
grayscale(person1_colored) %>% hist(main = "Luminance values in flower1_colored picture")
R(person1_colored) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(person1_colored)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(person1_colored)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#person2_greyscale
plot(person2_greyscale)
grayscale(person2_greyscale) %>% hist(main = "Luminance values in flower1_colored picture")
R(person2_greyscale) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(person2_greyscale)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(person2_greyscale)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#building1_colored
plot(building1_colored)
grayscale(building1_colored) %>% hist(main = "Luminance values in flower1_colored picture")
R(building1_colored) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(building1_colored)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(building1_colored)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")


#building2_greyscale
plot(building2_greyscale)
grayscale(building2_greyscale) %>% hist(main = "Luminance values in flower1_colored picture")
R(building2_greyscale) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(building2_greyscale)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(building2_greyscale)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#other1_colored
plot(other1_colored)
grayscale(other1_colored) %>% hist(main = "Luminance values in flower1_colored picture")
R(other1_colored) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(other1_colored)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(other1_colored)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

#other2_greyscale
plot(other2_greyscale)
grayscale(other2_greyscale) %>% hist(main = "Luminance values in flower1_colored picture")
R(other2_greyscale) %>% hist(main = "Red channel values in flower1_colored picture")
bdf <- as.data.frame(other2_greyscale)
head(bdf, 3)
bdf <- mutate(bdf, channel = factor(cc, labels = c('R', 'G', 'B')))
ggplot(bdf, aes(value, col = channel)) + geom_histogram(bins = 30) + facet_wrap(~ channel)
# Normalizing
x <- rnorm(100)
layout(t(1:2))
hist(x, main = "Histogram of x")
f <- ecdf(x)
hist(f(x), main = "Histogram of ecdf(x)")
boats.g <- grayscale(other2_greyscale)
f <- ecdf(boats.g)
plot(f, main = "Empirical CDF of luminance values")
f(boats.g) %>% hist(main = "Transformed luminance values")
f(boats.g) %>% str
f(boats.g) %>% as.cimg(dim = dim(boats.g)) %>% plot(main = "With histogram equalisation")

##################################################################################################partb
# Denoising
Noise1 <- imager::load.image("Noise1.PNG")
a<-isoblur(Noise1, 5) %>% plot(main = "Blurred")
plot(Noise1, main = "Original")
b<-blur_anisotropic(Noise1, ampl = 1e3, sharp = .3) %>% plot(main = "Blurred (anisotropic)")
# Morphological operations
layout(t(1:3))
threshold(a, "20%") %>% plot
threshold(a, "15%") %>% plot
threshold(a, "10%") %>% plot

Noise2 <- imager::load.image("Noise2.PNG")
a<-isoblur(Noise2, 5) %>% plot(main = "Blurred")
plot(Noise2, main = "Original")
b<-blur_anisotropic(Noise2, ampl = 1e3, sharp = .3) %>% plot(main = "Blurred (anisotropic)")
# Morphological operations
layout(t(1:3))
threshold(a, "20%") %>% plot
threshold(a, "15%") %>% plot
threshold(a, "10%") %>% plot

Noise4 <- imager::load.image("Noise4.PNG")
a<-isoblur(Noise4, 5) %>% plot(main = "Blurred")
plot(Noise4, main = "Original")
b<-blur_anisotropic(Noise4, ampl = 1e3, sharp = .3) %>% plot(main = "Blurred (anisotropic)")
# Morphological operations
layout(t(1:3))
threshold(a, "20%") %>% plot
threshold(a, "15%") %>% plot
threshold(a, "10%") %>% plot

Noise5 <- imager::load.image("Noise5.PNG")
a<-isoblur(Noise5, 5) %>% plot(main = "Blurred")
plot(Noise5, main = "Original")
b<-blur_anisotropic(Noise5, ampl = 1e3, sharp = .3) %>% plot(main = "Blurred (anisotropic)")
# Morphological operations
layout(t(1:3))
threshold(a, "20%") %>% plot
threshold(a, "15%") %>% plot
threshold(a, "10%") %>% plot

