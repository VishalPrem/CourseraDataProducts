library(shiny)
shinyUI(pageWithSidebar(
   headerPanel("Base App"),
   sidebarPanel(
     selectInput(inputId = "feature",label = "Select Feature",choices = c("No of Gears"="gear","Cylinders"="cyl","Horse Power"="hp"))
   ),
   mainPanel(
    verbatimTextOutput("label"),
    plotOutput("out")
   )
  )
)