# Missingness quantification

This repository performs missing data analysis on data at different sites and reports the results in the [`results/`](results/) folder.

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
Please be sure to replace all instances of "penn" with your specific site name to streamline the downstream aggregation step.
Once everything runs, please hit the "Knit" button on top of the `.Rmd` file to create an `.html` file that will automatically be put into [`htmls/`](htmls/).

Finally, please upload your results (in [`results/`](results/) and [`htmls/`](htmls/)) via a [pull request](https://github.com/ameliatlm/missing-data-4ce/pulls) or request @ameliatlm to add you as a contributor.

If you run into any problem adapting this code to your data, let us (@ameliatlm and @trang1618) know via Slack or [submit an issue](https://github.com/ameliatlm/missing-data-4ce/issues/new).
