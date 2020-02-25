
## Replication of Partial Least Squares Discriminant Analysis on Metabolomics NMR/MS Data

### Contributors
* [Medha Sagar](https://github.com/medha-sagar) [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-9942-9429)

* [Adrian Tullock](https://github.com/adrianmt18) [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-6378-3098)

* [Florencia Marcaccio](https://github.com/flormarcaccio) [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0003-3650-1483)

* [Faryal Usman](https://github.com/faryalusman) [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0001-8135-5919)

* [Sanjana Gupta](https://github.com/sanjanagupta16) [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/00000-0002-6985-4640)



### Contents
The purpose of this repository is to serve as the home of the replication project. All relevant files, data, and code will be made available here in order to facilitate transparency and further reproducibility of this work. In this regard, the aim will be to minimize barriers and time required to perform future analyses. 


There are a number of data processing challanges germane to metabolomics. Some notable ones tend to include specialized knowledged and software, which is why there is much value to be had in lowering the accessibility barrier for analysis. To help simplify the process for some of the more common metabolomic data analyses, MetaboAnalyst offers an accessible tool capable of handling most kinds of metabolomic data and has an edge over similar software because it provides a 'path analysis' advantage, in which the user can select which type of analysis they want to conduct. Example options for such paths are: univariate, chemometric, feature selection etc. MetaboAnalyst also has an integrated imputation system to handle missing data. At least in regards to NMR/MS spectral data, our project intends replicate the work used to support this claim by testing analyses on tutorial datasets provided by the authors.


### Data
The data we will use for replication is one of a small number of test datasets provided by MetaboAnalyst. The data for this analysis will be the Binned NMR/MS (nuclear magnetic resonance and mass spectrometry) spectra data which is used in metabolomics. The direct hyperlink to the csv file is [https://www.metaboanalyst.ca/resources/data/nmr_bins.csv](https://www.metaboanalyst.ca/resources/data/nmr_bins.csv).

### Dependencies
The OS versions that we will use for this project are:  

* macOS Sierra 10.12.6
* macOS Catalina 10.15
* Windows 10 Home, version 1903
* Windows 10 Home, version 1909

This is the list of dependencies needed for the package MetaboAnalystR 2.0:  
Rserve, RSclient, ellipse, scatterplot3d, Cairo, randomForest, caTools, e1071, som, impute, pcaMethods, RJSONIO, ROCR, globaltest, GlobalAncova, Rgraphviz, preprocessCore, genefilter, pheatmap, SSPA, sva, Rcpp, pROC, data.table, limma, car, fitdistrplus, lars, Hmisc, magrittr, methods, xtable, pls, caret, lattice, igraph, gplots, KEGGgraph, reshape, RColorBrewer, tibble, siggenes, plotly, fgsea, metap, reshape2, scales.

Some of the packages are only available from Bioconductor. To successfully install all the MetaboAnalystR package and all its dependencies, it is recommended to use the instructions in the README.md file from the [MetaboAnalystR 2.0 repository](https://github.com/xia-lab/MetaboAnalystR).

| Package        | Version | Lib source             |
|----------------|---------|------------------------|
| Cairo          | 1.5-10  | CRAN (R 3.6.0)         |
| car            | 3.0-6   | CRAN (R 3.6.0)         |
| caret          | 6.0-85  | CRAN (R 3.6.0)         |
| caTools        | 1.18.0  | CRAN (R 3.6.0)         |
| data.table     | 1.12.8  | CRAN (R 3.6.0)         |
| e1071          | 1.7-3   | CRAN (R 3.6.0)         |
| ellipse        | 0.4.1   | CRAN (R 3.6.0)         |
| fgsea          | 1.12.0  | Bioconductor           |
| fitdistrplus   | 1.0-14  | CRAN (R 3.6.0)         |
| genefilter     | 1.68.0  | Bioconductor           |
| GlobalAncova   | 4.4.0   | Bioconductor           |
| globaltest     | 5.40.0  | Bioconductor           |
| gplots         | 3.0.1.2 | CRAN (R 3.6.0)         |
| Hmisc          | 4.3-0   | CRAN (R 3.6.0)         |
| igraph         | 1.2.4.2 | CRAN (R 3.6.0)         |
| impute         | 1.60.0  | Bioconductor           |
| KEGGgraph      | 1.46.0  | Bioconductor           |
| lars           | 1.2     | CRAN (R 3.6.0)         |
| lattice        | 0.20-38 | CRAN (R 3.6.0)         |
| limma          | 3.42.0  | Bioconductor           |
| magrittr       | 1.5     | CRAN (R 3.6.0)         |
| metap          | 1.3     | CRAN (R 3.6.1)         |
| methods        |         | This is a base package |
| pcaMethods     | 1.78.0  | Bioconductor           |
| pheatmap       | 1.0.12  | CRAN (R 3.6.0)         |
| plotly         | 4.9.1   | CRAN (R 3.6.0)         |
| pls            | 2.7-2   | CRAN (R 3.6.0)         |
| preprocessCore | 1.48.0  | Bioconductor           |
| pROC           | 1.16.1  | CRAN (R 3.6.0)         |
| randomForest   | 4.6-14  | CRAN (R 3.6.0)         |
| RColorBrewer   | 1.1-2   | CRAN (R 3.6.0)         |
| Rcpp           | 1.0.3   | CRAN (R 3.6.0)         |
| reshape        | 0.8.8   | CRAN (R 3.6.0)         |
| reshape2       | 1.4.3   | CRAN (R 3.6.0)         |
| Rgraphviz      | 2.30.0  | Bioconductor           |
| RJSONIO        | 1.3-1.4 | CRAN (R 3.6.0)         |
| ROCR           | 1.0-7   | CRAN (R 3.6.0)         |
| RSclient       | 0.7-3   | CRAN (R 3.6.0)         |
| Rserve         | 1.7-3.1 | CRAN (R 3.6.0)         |
| scales         | 1.1.0   | CRAN (R 3.6.0)         |
| scatterplot3d  | 0.3-41  | CRAN (R 3.6.0)         |
| siggenes       | 1.60.0  | Bioconductor           |
| som            | 0.3-5.1 | CRAN (R 3.6.0)         |
| SSPA           | 2.26.0  | Bioconductor           |
| sva            | 3.34.0  | Bioconductor           |
| tibble         | 2.1.3   | CRAN (R 3.6.0)         |
| xtable         | 1.8-4   | CRAN (R 3.6.0)         |

### Citation
Xia, J., Psychogios, N., Young, N., & Wishart, D. S. (2009). MetaboAnalyst: a web server for metabolomic data analysis and interpretation. Nucleic acids research, 37(Web Server issue), W652–W660. doi:10.1093/nar/gkp356 . 

<sup>[1] </sup>Publication Link: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2703878/ <br/>
<sup>[2] </sup>Online Tool: https://www.metaboanalyst.ca <br/>
<sup>[3] </sup>R Package: https://github.com/xia-lab/MetaboAnalystR


### Contributing
We welcome contributions from everyone. Before you get started, please see our [contributor guidelines](CONTRIBUTING.md). Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

