library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Kernel Regression Smoother"),
        sidebarPanel(
                h4('The bandwidth of the kernel is a free parameter which exhibits a strong influence on the resulting estimate. 
                   The red curve is the Nadaraya–Watson kernel regression line using a bandwidth h'),
        
                sliderInput('h', 'bandwidth',value = 2, min = 1, max = 3, step = 0.05,)
        ),
        mainPanel(
                plotOutput('myplot')
        )
))


