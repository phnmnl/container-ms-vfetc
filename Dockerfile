FROM php:7.0

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

ENV TOOL_NAME="ms-vfetc"
ENV TOOL_VERSION=0.4
ENV CONTAINER_VERSION=1.3

LABEL software="${TOOL_NAME}"
LABEL software.version="${TOOL_VERSION}"
LABEL version="${CONTAINER_VERSION}"

ADD runTest1.sh /usr/local/bin/runTest1.sh

RUN apt-get update && apt-get install -y git && \
    git clone --depth 1 --single-branch --branch master https://github.com/leidenuniv-lacdr-abs/${TOOL_NAME}.git /files/ms-vfetc && \
    cd /files/${TOOL_NAME} && \
    git checkout tags/v${TOOL_VERSION} && \
    chmod +x /files/ms-vfetc/src/vfetc.php && \
    chmod +x /usr/local/bin/runTest1.sh && \
    ln -s /files/${TOOL_NAME}/src/vfetc.php /usr/local/bin/vfetc && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH=$PATH:/files/ms-vfetc/src/:/files/ms-vfetc/src/lib/

ENTRYPOINT ["vfetc"]