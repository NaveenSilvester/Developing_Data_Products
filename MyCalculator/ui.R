library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  h1(titlePanel("My Calculator")),
 
  sidebarPanel(

  # Sidebar with a Numeric input for Entering First Number
  numericInput("Num1", "Enter First Number:", 0),

  # Sidebar with a slider input for selecting the Second Number  
  sliderInput("Num2", "Slide to select the Second Number between 1-100:", min = 0, max=100, value=10),
 
  # Sidebar with a Radio Button input for selecting the appropriate Mathematical Operation
   radioButtons("math", "Mathematical Operation:",
             c("Addition" = "add",
               "Subtraction" = "sub",
               "Multiplication" = "multiply")),

  # Sidebar with a Checkbox input for priting or not to print the Citation information on the Report		   
	checkboxInput("Cite","Citation", TRUE),
	checkboxInput("Help", "Documentation/UserGuide", FALSE)
  ),
  
    mainPanel(
	h5("############################################################", align="center"),
	h2("Summary Report", align="center"),
	h5("###########################################################", align="center"),

    h4(textOutput("number1"), align="center"),
	h4(textOutput("number2"), align="center"),
	h4(strong(textOutput("result"), align="center")),
	h6(textOutput("citationtag"), align="center"),
	h5("###########################################################", align="center"),
	h6(uiOutput("help"))
	
  )
))