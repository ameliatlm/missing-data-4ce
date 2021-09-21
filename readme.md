# Missingness quantification

This repository performs missing data analysis on data at different sites and reports the results in the [`results/`](results/) folder.

Please run quantify-missingness.Rmd, predict-TE.Rmd, and table-one.Rmd and send us your results!

## Repository structure

### Rmd files

- [quantify-missingness.Rmd](quantify-missingness.Rmd) uses the {naniar} package to quickly generate figures of missing data information (avg proportion missing, demographic stratification, temporal analyses).
- [predict-te.Rmd](predict-te.Rmd) performs LDA on matrix of number of valid lab values for each patient for the first 10 days of hospitalization and identifies correlation between each topic's value with the outcome (TE, AKI, Severity, Neuro).
- [table-one.Rmd](table-one.Rmd) will likely be used for descriptive papers for generating Table 1 of demographic statistics of patients with and without thrombotic events.

### Other files

- [`htmls/`](htmls/) contains rendered html reports.
- [`old/`](old/) contains old exploratory scripts.
- [`R/`](R/) contains utility scripts such as for processing, mapping ICD codes to comorbidity, summary statatistics and other utility functions.

## Which script should I run?

The best way to run this analysis is to clone this repository on your local machine
(please ensure you're in a directory where you want the repository to be downloaded):

```git clone https://github.com/ameliatlm/missing-data-4ce.git```

Then, go inside the repository:

```cd missing-data-4ce```

and make a copy of `quantify-missingness.Rmd`, name it with your site name, for example:

```cp quantify-missingness.Rmd quantify-missingness-penn.Rmd```

and open the R project

```open missing-data-4ce.Rproj```

and navigate to the newly created file (e.g. `quantify-missingness-penn.Rmd`) to modify the code to run on the data at your specific site.

All you must do is change the params at the beginning of the .Rmd file. data_dir refers to the directory where your site's data is located, package_dir refers to the directory where the missing-data-4ce folder is located from cloning the package, dateFormat refers to the date format that your site uses, results_file should contain the name of your site instead of "penn", and site should be changed to the name of your site instead of "penn". 

Once everything runs, please hit the "Knit" button on top of the `.Rmd` file to create an `.html` file that will automatically be put into [`htmls/`](htmls/).

Finally, please upload your results (in [`results/`](results/) and [`htmls/`](htmls/)) via a [pull request](https://github.com/ameliatlm/missing-data-4ce/pulls) or request @ameliatlm to add you as a contributor.

Please also repeat these instructions for predict-TE.Rmd and table-one.Rmd! Starting with making a copy of the .Rmd file. 

If you run into any problem adapting this code to your data, let us @ameliatlm know via Slack or [submit an issue](https://github.com/ameliatlm/missing-data-4ce/issues/new).
