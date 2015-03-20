---
title       : Slidify Presentation
subtitle    : Cousera project
author      : Chris Myers
job         : R hacker in training
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets    : [bootstrap, quiz, shiny, interactive]
ext_widgets: {rCharts: [libraries/nvd3]}
mode        : selfcontained # {standalone, draft}
github:
  user:  Ccmyers
  repo:  slidifydeck
---

## Introducing my first Shiny App

Started with the cool tabbed panels shiny app from

http://shiny.rstudio.com/tutorial/lesson1/

    runExample("06_tabsets") # tabbed panels

Then added:

1. interactive caption
2. mean and median calculated for the distibution
3. colored plot lines for mean and median on the histogram 
4. Adding text for mean and median values on the histogram


--- .class #id 

## Shiny any deployed on Shinyapps.io

Hosting shiny app here

https://ccmyers.shinyapps.io/myap/

Next slide is the partially working Shiny app in Slidifiy

Could not get Shiny slider input, main panel, or plots to work (yet) in Slidify 

Changed sliderinput to textinput as a temp fix

Only reactive part working is the text caption

(also tried to get my shiny ap working in R presentation but no success there either)

--- .class #id 

## Partially working Shiny app


R version 3.1.3 (2015-03-09)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 8 x64 (build 9200)

locale:
[1] LC_COLLATE=English_United States.1252 
[2] LC_CTYPE=English_United States.1252   
[3] LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                          
[5] LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] rmarkdown_0.5.1        XML_3.98-1.1           slidifyLibraries_0.3.1
[4] slidify_0.3.52         shinyapps_0.3.63       shiny_0.11.1          

loaded via a namespace (and not attached):
 [1] bitops_1.0-6    digest_0.6.8    evaluate_0.5.5  formatR_1.0    
 [5] htmltools_0.2.6 httpuv_1.3.2    knitr_1.9       markdown_0.7.4 
 [9] mime_0.2        R6_2.0.1        Rcpp_0.11.5     RCurl_1.95-4.5 
[13] RJSONIO_1.3-0   stringr_0.6.2   tools_3.1.3     whisker_0.3-2  
[17] xtable_1.7-4    yaml_2.1.13    
<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label for="caption">Caption:</label>
<input id="caption" type="text" class="form-control" value="Data Distributions"/>
</div>
<div id="dist" class="form-group shiny-input-radiogroup shiny-input-container">
<label class="control-label" for="dist">Distribution type:</label>
<div class="shiny-options-group">
<div class="radio">
<label>
<input type="radio" name="dist" id="dist1" value="norm" checked="checked"/>
<span>Normal</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="dist" id="dist2" value="unif"/>
<span>Uniform</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="dist" id="dist3" value="lnorm"/>
<span>Log-normal</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="dist" id="dist4" value="exp"/>
<span>Exponential</span>
</label>
</div>
</div>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="n">Choose values</label>
<div>
<select id="n"><option value="500" selected>500</option>
<option value="1000">1000</option></select>
<script type="application/json" data-for="n" data-nonempty="">{}</script>
</div>
</div>
</form>
</div>
<div class="col-sm-8">
<div id="nvd3caption" class="shiny-html-output nvd3 rChart">
<h3>
<span id="caption" class="shiny-text-output"></span>
</h3>
</div>
</div>
</div>
</div><!--/html_preserve-->



--- .class #id 

## Summary

Shiny apps are pretty cool, and easy to update given the examples and tutorials!

Slidify looks promising, but needs more time before I can learn how to get all shiny widgets working.

Noticed that sometimes only Google Chrome displayed presentation correctly instead of Internet Explorer

Or I may have to learn html :-)

Or next time do a more simple shiny ap for my presentation example ??


