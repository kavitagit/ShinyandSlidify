library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("Motor Trend Car Road Test Analysis"),
                sidebarPanel(
                        h4('Motor Trend, an automobile trend magazine is interested in exploring the 
                            relationship between a set of variables and miles per gallon (MPG) outcome.
                            The data used in this exercise is from mtcars dataset that was used in 
                            Regression Analysis Course Project. This data includes relationship between 
                            fuel consumption (miles per gallon) and 32 different automobile design and performance.')),
                mainPanel(h4('Select Number of Cylinders and/or the maximum Horse Power and it will give you the corresponding average  Miles/Gallon'),
                          h3("Enter Data Here..."),
                          radioButtons("cyl", "Select Number of Cylinders:",
                                       c("4" = "4",
                                         "6" = "6",
                                         "8" = "8")),
                          numericInput('horse', 'Select Horse Power: ', 140, min = 70, max = 250, step = 10),
                        h4("Miles/Gallon"),
                        verbatimTextOutput("mpgId")
                )
        ))