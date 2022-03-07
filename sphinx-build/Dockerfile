FROM debian:latest

RUN apt-get update && \
    apt-get install -y \
        git \
        python3-pip \
        python3-dev \
        texlive \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-base \
	latexmk \
	graphviz \
    && apt-get remove -y \
        texlive-fonts-recommended-doc \
        texlive-latex-base-doc \
        texlive-latex-extra-doc \
        texlive-latex-recommended-doc \
        texlive-pictures-doc \
        texlive-pstricks-doc \
    && apt-get clean

RUN pip3 install \
    sphinx\>=4.4.0 \
    alabaster>=0.7.12 \
    docutils>=0.17.1 \
    sphinxcontrib.httpdomain \
    recommonmark

