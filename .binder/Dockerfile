FROM rocker/binder:3.6.0
LABEL maintainer='Sanjana Gupta'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/UW-MSDS-DATA-598-Reproducibility-WI20/gupta-marcaccio-sagar-tullock-usman-replication-project/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2020-03-02/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
