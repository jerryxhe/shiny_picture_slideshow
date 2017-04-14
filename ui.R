shinyUI(fluidPage(
  title = 'SlideShow',
  tabsetPanel(
    id = 'beta_',
    tabPanel('main',
     fluidRow(
        column(4, wellPanel(
          sliderInput("n", "Radius :", min = 1, max = 100,
                      value = 1, step = 1,animate=animationOptions(interval=2000, loop=T))
        )),
        column(4,
          imageOutput("image1", width=900,height = 600)
        )
     )
  )
))
)