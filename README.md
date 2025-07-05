# learningtower: an R package for Exploring Standardised Test Scores Across the Globe

# Rendering instruction

While the `learningtower.Rmd` file can be rendered in the regular way. Here is the explicit rendering command.

```
# To render the paper requires using command line
pandoc::pandoc_activate(version = '3.7.0.2') # Or version 3.1.6
rmarkdown::render('learningtower.Rmd', output_format = 'all')
```

# Initiaal check results

All the checks are passing except two: 

1. `ERROR: There are nested subdirectories.` This occurs when there are cached js/css packages in the `learningtower_files` directory which enabled the correct display of the `learningtower.html` file locally. 
2. `ERROR: Article title not in title case!` The only non-title case refers to the name of the package, i.e. "l" instead of "L". This cannot be easily changed due to the case-sensitive nature of the R ecosystem. We believe the R Journal has previously accepted [an article](https://journal.r-project.org/articles/RJ-2024-024/) with similar title before.
