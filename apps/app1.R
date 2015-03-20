#load shiny library
require (shiny)

# Borrowed the base script from 'Tabsets' example and updated with caption, meand and median plots

# Define server logic for random distribution application
#output$nvd3plot <- renderChart({

#shinyServer(function(input, output) {
  
  # Reactive expression to generate the requested distribution.
  # This is called whenever the inputs change. The output
  # functions defined below then all use the value computed from
  # this expression
  
  # select a random distribution using switch statement
  # use 'dist' for histogram, table and summary
  data <- reactive({
    dist <- switch(input$dist,
                   norm = rnorm,
                   unif = runif,
                   lnorm = rlnorm,
                   exp = rexp,
                   rnorm)
    
    dist(input$n)
  })
  
  # The output$caption is computed based on a reactive expression
  # that returns input$caption. When the user changes the
  # "caption" field:
  #
  #  1) This function is automatically called to recompute the 
  #     output 
  #  2) The new caption is pushed back to the browser for 
  #     re-display
  # 
  # Note that because the data-oriented reactive expressions
  # below don't depend on input$caption, those expressions are
  # NOT called when input$caption changes.

#output$nvd3plot <- renderChart({
  output$nvd3caption <- renderText({
    input$caption
  })
  
  # Generate a plot of the data. Also uses the inputs to build
  # the plot label. Note that the dependencies on both the inputs
  # and the data reactive expression are both tracked, and
  # all expressions are called in the sequence implied by the
  # dependency graph
  output$plot <- renderPlot({
    dist <- input$dist
    n <- input$n
    mu <- mean(data())
    med <- median(data())
    #get max height of histogram for plotting mean and median lines
    ht <- max(hist(data())$counts ) 
    # plot histogram with noting mean and median
    hist(data(), 
         main=paste('r', dist, '(', n, ')', sep=''),
         sub = paste('mean =',round(mu,2)),col.sub ='red',
         xlab = paste('median =',round(med,2)), col.lab='blue')
    # draw mean and median lines
    lines(c(mu, mu), c(0, ht),col="red",lwd=5)
    lines(c(med, med), c(0, ht),col="blue",lwd=5)
    
  })
  
  # Generate a summary of the data
  output$summary <- renderPrint({
    summary(data())
  })
  
  # Generate an HTML table view of the data
  output$table <- renderTable({
    data.frame(x=data())
  })
  
#})