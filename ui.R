library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Illustrating inputs"),
  sidebarPanel(
  numericInput('n', 'Please, enter the sample size', 50, min = 10, max = 10000, step = 10),
  numericInput('mean', 'Please enter the mean (0-100)', 0, min = 0, max = 100, step = 1),
  numericInput('sigma', 'Please, enter the standard deviation (1-10)', 1, min = 1, max = 10, step = 1)
  ),
  mainPanel(
    p('This shiny app is for illustrating the law of large numbers. The distribution of the random draws from a normal 
       distribution are depicted in a histogram. The sample size, the mean and the standard
       deviations are user-supplied.'),
    plotOutput('newHist'),
    verbatimTextOutput('sampleMean')
    
  ) 
  ))