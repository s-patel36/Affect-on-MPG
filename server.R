library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  model = lm(mpg ~ cyl + disp + hp, mtcars)
  
  output$pred = reactive({
      predict(model, data.frame(disp=input$disp, hp=input$hp, cyl=input$cyl))[[1]]
  })
    
  output$plot1 <- renderPlot({
    ggplot(mtcars, aes(hp, mpg, color=cyl, size=disp)) + geom_point()
  })
})
