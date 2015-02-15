#library(UsingR)

shinyServer( function(input, output) {
  output$newHist <- renderPlot({
    n <- input$n
    mu <- input$mean
    sigma <- input$sigma
    x <- rnorm(n,mu,sigma)
    hist(x, breaks=15,col='lightblue1',border='lightblue4',main='',xlab='') 
    })
  }
)