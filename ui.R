library(shiny)

shinyUI(fluidPage(
    titlePanel("Affects on MPG"),
  
    sidebarLayout(
        sidebarPanel(
            h3("Configurations:"),
            
            sliderInput("disp",
                        "Displacement:",
                        min = 50,
                        max = 500,
                        value = 225),
            
            sliderInput("hp",
                         "Horsepower:",
                         min = 50,
                         max = 350,
                         value = 150,
                         step = 1),
            
            numericInput("cyl", 
                        "Cylenders:",
                        min = 4,
                        max = 8,
                        value = 4,
                        step = 2)
       
        ),
    
        mainPanel(
            h4("Configure the Displacement, Horsepower and Cylenders on the left"),
            br(),
            h4("Predicted MPG: "),
            textOutput("pred"),
            br(),
            br(),
            br(),
            br(),
            plotOutput("plot1")
        )
    )
))
