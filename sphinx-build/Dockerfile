FROM debian:latest

RUN apt-get update && \
    apt-get install -y \
        git \
        python-pip \
        python-dev \
        texlive \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-base \
	latexmk \
    && apt-get remove -y \
        texlive-fonts-recommended-doc \
        texlive-latex-base-doc \
        texlive-latex-extra-doc \
        texlive-latex-recommended-doc \
        texlive-pictures-doc \
        texlive-pstricks-doc \
    && apt-get clean

RUN pip install \
    sphinx\!=1.7.5 \
    sphinx_rtd_theme \
    git+https://github.com/leokoppel/sphinxcontrib-versioning
