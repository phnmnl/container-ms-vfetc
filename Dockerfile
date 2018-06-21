FROM php:7-alpine

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

ENV TOOL_NAME="ms-vfetc" \
    TOOL_VERSION=0.5 \
    CONTAINER_VERSION=1.4 \
    TOOL_DOWNLOAD_URL="https://github.com/leidenuniv-lacdr-abs/ms-vfetc/archive/v0.5.tar.gz" \
    TOOL_TAR_GZ="ms-vfetc.tar.gz"

LABEL software="${TOOL_NAME}"
LABEL software.version="${TOOL_VERSION}"
LABEL version="${CONTAINER_VERSION}"

ADD runTest1.sh /files/${TOOL_NAME}/runTest1.sh

# install and prepare ms-vfetc, when done run the tests
RUN apk update && \
    apk --no-cache add curl bash && \
    cd /files/${TOOL_NAME} && \
    curl -L --insecure -o $TOOL_TAR_GZ $TOOL_DOWNLOAD_URL && \
    tar -xvzf $TOOL_TAR_GZ --strip-components 1 && \
    rm -rf *.gz && \
    rm -rf /var/cache/apk/* && \
    mv runTest1.sh /usr/local/bin/runTest1.sh && \
    chmod +x /usr/local/bin/runTest1.sh

ENTRYPOINT ["php", "/files/ms-vfetc/src/vfetc.php"]
