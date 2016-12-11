library(shiny)
shinyUI(fluidPage(
    titlePanel("Carbon Dioxide Uptake in Grass Plants"),
    sidebarLayout(
        sidebarPanel(
            h2("Regions"),
            checkboxInput("chkQuebec", "Quebec", value = TRUE),
            checkboxInput("chkMississippi", "Mississippi", value = TRUE),
            h2("Treatment"),
            checkboxInput("chkChilled", "Chilled", value = TRUE),
            checkboxInput("chkNonChilled", "Non Chilled", value = TRUE)
            ),
        mainPanel(
            p("In the CO2 dataset uptake of six plants from Quebec and six plants from Mississippi was measured at several levels of ambient \
              CO2 concentration. Half the plants of each type were chilled overnight before the experiment was conducted."),
            p("This Shiny Application allows the user to view all the data or to filter both by Region and/or Treatment \
              (chilled or not chilled)."),
            p("Simply use the checkboxes to include or exclude the appropriate categories. For each combination a regression line is plotted."),
            plotOutput("plot1")
        )
    )
))
