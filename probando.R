# Instrucciones:
# 1. Instala las librerías necesarias si no las tienes:
#    install.packages(c("tidyverse", "plotly", "igraph", "ggraph", "tidygraph"))

library(tidyverse)
library(plotly)
library(igraph)
library(ggraph)
library(tidygraph)

# ------------------------------------------------------------------------------
# EJERCICIO 1: Interactividad con Plotly
# ------------------------------------------------------------------------------
# Objetivo: Convertir un gráfico de dispersión estático en uno interactivo.

p <- ggplot(mtcars, aes(x = wt, y = mpg, color = as.factor(cyl))) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Relación Peso vs Consumo",
       x = "Peso (1000 lbs)",
       y = "Millas por Galón",
       color = "Cilindros")

print(p)
# 1.2. Usa la función ggplotly() para hacerlo interactivo.
ggplotly(p)

mtcars
# ------------------------------------------------------------------------------
# EJERCICIO 2: Visualización de Redes (igraph)
# ------------------------------------------------------------------------------
# Objetivo: Crear una red básica de relaciones entre personas.

relaciones <- data.frame(
  desde = c("Ana", "Ana", "Pedro", "Maria", "Juan", "Juan"),
  hasta = c("Pedro", "Maria", "Maria", "Juan", "Ana", "Maria")
)

# 2.1. Convierte el dataframe en un objeto de tipo igraph.
red <- graph_from_data_frame(d = relaciones, directed = FALSE)

# 2.2. Dibuja la red usando plot() básico.
plot(red, edge.arrow.size = 0.5, vertex.color = "gold", vertex.label.color = "black")
