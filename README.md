# dote_plots
Standardized `ggplot2` plotting styles for DOT&amp;E. This script sets:
1. A theme to set sensible defaults.
2. A set of functions for more advanced, standardized functionality. These need to be expanded.

## Use
Load the package with:
```
source("DOTE_plots.r")
```
Then set the default `ggplot2` theme to DOT&E specifications:
```
theme_set(DOTE_theme)
```

## Example
Example usage with the `iris` dataset is shown in `iris.rmd` (outputs shown in `iris.html`).
