library(shiny)
library(ggplot2)
shinyServer(function(input, output) {

    output$plot1 <- renderPlot({

        x <- CO2
        if (input$chkQuebec == FALSE) {
            x <- subset(x, Type != 'Quebec')
        }
        if (input$chkMississippi == FALSE) {
            x <- subset(x, Type != 'Mississippi')
        }
        if (input$chkChilled == FALSE) {
            x <- subset(x, Treatment != 'chilled')
        }
        if (input$chkNonChilled == FALSE) {
            x <- subset(x, Treatment != 'nonchilled')
        }
        if (dim(x)[1] > 0) {
            ggplot(x, aes(conc, uptake, color=Type, shape=Treatment)) + geom_point(size=4) + geom_smooth(method = "lm", se = FALSE)
        }
    })

})
