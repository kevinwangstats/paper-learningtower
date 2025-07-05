# learningtower: an R package for Exploring Standardised Test Scores Across the Globe


Abstract: Reproducibility enables a key aspect of data analysis. Furthermore, it adds context to scientific results, increasing public confidence and laying the groundwork for future study. The Programme for International Student Assessment (PISA) is a well-known open data set that is freely available. This data has the ability to provide meaningful results and insights that can help with various decisions in the fields of education and research. This experiment has a direct influence on society for the benefit of people’s lives. In this R journal article, we introduce the `learningtower` package, which provides a user-friendly easy accessibility to a subset of variables from PISA data gathered by the Organization for Economic Cooperation and Development (OECD) from 2000 to 2018. This is an excellent dataset for data exploration and visualisation. This dataset can also be utilised for various analytically and statistical analysis. In addition, we present a few example anlaysis utilizing this dataset addressing some research questions regarding the gender gap noticed in these students’, the effect of different socioeconomic factors on the students’ performance, and we go further to study the Australia’s PISA scores.

# Rendering instruction

While the `learningtower.Rmd` file can be rendered in the regular way. Here is the explicit rendering command.

```
# To render the paper requires using command line
pandoc::pandoc_activate(version = '3.7.0.2') # Or version 3.1.6
rmarkdown::render('learningtower.Rmd', output_format = 'all')
```
