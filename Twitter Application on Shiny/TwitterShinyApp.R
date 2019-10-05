ui <- fluidPage(
  headerPanel("Exploratory Data Analysis of Flu Season"),
  imageOutput("heat"),
  imageOutput("twitter"),
  imageOutput("compare")
)

server <- function(input, output, session) {
  output$heat <- renderImage({
    # A temp file to save the output.
    # This file will be removed later by renderImage
    outfile <- tempfile(fileext = '.png')

    
    # Return a list containing the filename
    list(src = "ImHeat.png",
         contentType = 'image/png',
         width = 500,
         height = 400,
         alt = "This is alternate text")
  }, deleteFile = FALSE)
  
  output$twitter <- renderImage({
    # A temp file to save the output.
    # This file will be removed later by renderImage
    outfile <- tempfile(fileext = '.png')
    
    
    # Return a list containing the filename
    list(src = "ImTwitter.png",
         contentType = 'image/png',
         width = 500,
         height = 500,
         alt = "This is alternate text")
  }, deleteFile = FALSE)
  
  output$compare <- renderImage({
    # A temp file to save the output.
    # This file will be removed later by renderImage
    outfile <- tempfile(fileext = '.png')
    
    
    # Return a list containing the filename
    list(src = "compare.png",
         contentType = 'image/png',
         width = 1000,
         height = 500,
         alt = "This is alternate text")
  }, deleteFile = FALSE)
}

shinyApp(ui, server)