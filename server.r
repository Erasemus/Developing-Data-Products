require(caret)
require(randomForest)
require(e1071)
#require('RccpEigen')
data(iris)
mf<-train(Species~., data=iris,method="rf")
invalues<<-iris[1,]

shinyServer(
  
  function(input, output) {
    output$Species<-renderText({
      #browser()
      input$goButton 
      isolate(as.character(packit(input$Sepal.Length,input$Sepal.Width,input$Petal.Length,input$Petal.Width)))})
    packit<- function(s.length,s.width,p.length,p.width) {
      invalues[1,1]<<-s.length
      invalues[1,2]<<-s.width
      invalues[1,3]<<-p.length
      invalues[1,4]<<-p.width
      foo<<-as.character(predict(mf,newdata=invalues))}
  }
)