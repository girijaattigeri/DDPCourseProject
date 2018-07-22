library(shiny)
shinyUI(fluidPage(
  titlePanel("Add or multiply numbers"),
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric1", "How Many Random Numbers Should be Plotted?", 
                   value = 1000, min = 1, max = 1000, step = 1),
      numericInput("numeric2", "How Many Random Numbers Should be Plotted?", 
                   value = 1000, min = 1, max = 1000, step = 1),
      radioButtons("radio", label = h3("Radio buttons"),
                   choices = list("Add" = 1, "Multiply" = 2),
                   selected = 1)
    ),
    mainPanel(
      h3("Output"),
      textOutput("sum")
    )
  )
))