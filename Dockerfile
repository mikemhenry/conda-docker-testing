FROM continuumio/miniconda3:4.9.2

WORKDIR /opt/app

COPY environment.yml ./

RUN conda env create -f environment.yml && \
    conda clean --all --yes

ENTRYPOINT ["conda", "run", "-n", "test"]
