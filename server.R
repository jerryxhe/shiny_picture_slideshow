library(png)

ptime <- function(t) {
    t = as.numeric(t)
    fraction = t%%1000000000;
    t = trunc(t/1000000000);
    hour = trunc(t/3600); 
    minute = (t%%3600);
    second = minute %% 60; 
    minute = trunc(minute/60);
    sprintf("%02d:%02d:%02d.%09d",hour,minute,second,fraction);
}

pics = list.files(".",pattern = "*.png")


shinyServer(function(input, output, session) {
  output$image1 <- renderImage({
      width  <- session$clientData$output_image1_width
      height <- session$clientData$output_image1_height
      
      list(src = pics[input$n %% length(pics)],
             contentType = "image/png",
             width = width,
             height = height,
             alt = "This is alternate text")
  }, deleteFile=F)

})