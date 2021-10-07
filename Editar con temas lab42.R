####################
# Hecho con gusto por Luz Yolanda Rivera Álvarez(UAEH)
#V9
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# editar con temas de ggplot2

#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")

# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

# cargando datos a entorno
data("gapminder")

# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

# haciendo grafica de puntos
p1<- ggplot(data = gapminder2007,
       mapping = aes (x = gdpPercap, 
                      y = lifeExp,
                      color = continent))+
  geom_point()
p1

# temas básicos más aclarada, definida y enmarcada
p1+ theme_bw()

#Tema minimalístico

p1+theme_minimal()

# mas temas
install.packages('ggthemes')
library(ggthemes)

# temas y colores
#conforme a la revista economist
p1 + theme_economist()+ scale_color_economist()

#tema de excel

p1 +  theme_excel_new()+ scale_color_excel_new()

p1 + theme_calc() + scale_color_calc()

p1 + theme_few + scale_color_few()

p1 + theme_fivethirtyeight() + scale_color_fivethirtyeight()

p1 +  theme_gdocs() + scale_color_gdocs()

p1+ theme_grey() + scale_color_grey()

p1 + theme_hc() + scale_color_hc

p1 + theme_pander() + scale_color_pander()

p1 + theme_solarized() + scale_color_solarized()



















