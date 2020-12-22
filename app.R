#Loading Packages........................
library(shiny)



#UI.............................
UI<- fluidPage(
    
    
    #App title
    titlePanel("Sum of two numbers"),
    
    sidebarLayout(
        sidebarPanel(
            
            #Taking input1
            
            numericInput("Input1","Pls enter the first number here",value=0),
            
            #Taking input2
            
            numericInput("Input2","Pls enter the second number here",value=0),
            
            #Submit Button
            
            submitButton("Sum"),
            
        ),
        
        mainPanel(
            h2("Sum Calculated is"),
            textOutput("output1"),
        )
    )
    
    
)

##End UI................................


##Start Server
Server<-function(input,output){
    
    
    output$output1 <- renderText({input$Input2+input$Input1})
    
}

##End Server

# Run the application 
shinyApp(ui = UI, server = Server)
