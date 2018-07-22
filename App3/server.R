library(shiny)
shinyServer(function(input, output) {
x <- reactive({ input$radio})
output$sum<-renderText({
    if (x()==1) {
      ({input$numeric1+input$numeric2})
    } else {
     ({input$numeric1*input$numeric2})
    }
  })  
})