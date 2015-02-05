library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Identification"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("Sepal.Length",
                  "Sepal.Length:",
                  min = 1,
                  max = 8,
                  value = 5),
      sliderInput('Sepal.Width',
                  "Sepal.Width:",
                  min = 1,
                  max = 8,
                  value = 5),
      sliderInput("Petal.Length",
                  "Petal.Length:",
                  min = 1,
                  max = 9,
                  value = 5),
      sliderInput("Petal.Width",
                  "Petal.Width:",
                  min = .1,
                  max = 2,
                  value = .2),
      actionButton("goButton","Go!")
    ),
    
    # Show the result
    mainPanel(
           helpText("To predict the species of an iris specimen based on the measured parameters, move the sliders then press GO"),
           h4("Species = "),
   uiOutput("Species")
    )
  )
))