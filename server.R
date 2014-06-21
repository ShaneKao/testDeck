library(shiny)
require(graphics)
shinyServer(
        function(input, output) {
                
                output$myplot <- renderPlot({
                        h <- input$h
                     
                        with(cars, {
                                plot(speed, dist)
                                model=ksmooth(speed, dist, kernel="normal", bandwidth = h)
                                lines(model, col = 2)
                                
                                
                                text(5, 100, paste("h = ", h))
                                
                        })
                     
                })
        }
)




