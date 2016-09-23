library(shiny)
library(datasets)


shinyServer(
  function(input,output){
      formulatxt<-reactive({
        paste("mpg~",input$feature)
      })
      
      
      output$label<-renderText({
        formulatxt()
      })
      output$out<-renderPlot({
        boxplot(as.formula(formulatxt()),data = mtcars)
      })
      
  }
)
