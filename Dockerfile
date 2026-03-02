FROM mambaorg/micromamba:2.5.0

ARG MACS3_REVISION=master
ARG MAMBA_DOCKERFILE_ACTIVATE=1

RUN micromamba install --yes \
      -n base \
      -c conda-forge \
      python \
      pip \
      git \
      compilers \
      zlib \
 && micromamba clean --all --yes

RUN python -m pip install \
      git+https://github.com/macs3-project/MACS.git@${MACS3_REVISION} \
      --no-cache-dir

RUN micromamba remove --yes -n base git compilers \
 && micromamba clean --all --yes
