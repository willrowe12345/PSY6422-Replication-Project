# Custom Project Theme

# Ensure ggplot2 and ggtext is available if this script is run in isolation
library(ggplot2)
library(ggtext)

theme_custom <- theme_minimal(base_size = 15) +
  theme(
   # Text Styling
    plot.title    = element_text(face = "bold", size = 20),
    plot.title.position = "plot", 
    axis.title    = element_text(size = 18),
    axis.text     = element_text(size = 14),
    
   # Legend Styling
    legend.position = "bottom",
    legend.title    = element_text(size = 17, face = "bold"),
    legend.text     = element_text(size = 16),
    
   # Axis Line Styling
    axis.line     = element_line(linewidth = 1),
    axis.ticks    = element_line(linewidth = 0.8),
    
   # Grid Styling 
    panel.grid.minor = element_blank()
  )