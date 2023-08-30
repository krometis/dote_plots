## DOT&E ggplot2 theme and custom functions 
# This R file includes some basic standards for plotting by DOT&E

require(ggplot2)


#I. Define a ggplot2 theme that defines sensible defaults. Set with:
#     theme_set(DOTE_theme)
DOTE_theme = theme(
                  #white background, black frame
                  panel.background = element_rect(fill = "white", color = 'black', linewidth = 2),
                  #gray dashed gridlines
                  panel.grid.major = element_line(color = "darkgray", linetype = "dashed"),
                  #square plot
                  aspect.ratio = 1
                  )


#II. Define specialized functions representing common DOT&E plot types.
#    The goal is to make it as easy as possible for a practitioner to generate 
#    a given plot and match DOT&E's standard way of doing things.
#    This section should be expanded as more plot types are identified.

#Example: Make a histogram
DOTE_hist <- function(data, xlab=NULL, ylab=NULL, title=NULL, breaks=NULL, fill = 'black', alpha = 0.3, bins = 30, binwidth = NULL){
  
  p = ggplot() +
    geom_histogram(aes(x=data, y=after_stat(density)), fill = fill,
                   color = 'black', breaks = breaks, alpha = alpha, bins = bins, binwidth = binwidth) +
    xlab(xlab) + ylab(ylab) + ggtitle(paste(title))
  
  return(p)
}