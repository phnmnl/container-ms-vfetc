FROM php:7-alpine

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

ENV TOOL_NAME="ms-vfetc" \
    TOOL_VERSION=1.0 \
    CONTAINER_VERSION=1.5 \
    # TOOL_DOWNLOAD_URL="https://github.com/leidenuniv-lacdr-abs/ms-vfetc/archive/v0.5.tar.gz" \
    TOOL_DOWNLOAD_URL="https://github.com/leidenuniv-lacdr-abs/ms-vfetc/archive/master.tar.gz" \
    TOOL_TAR_GZ="ms-vfetc.tar.gz"

LABEL software="ms-vfetc"
LABEL software.version=1.0
LABEL version=1.5

ADD runTest1.sh /files/${TOOL_NAME}/runTest1.sh

# install and prepare ms-vfetc, when done run the test(s)
RUN apk update && \
    apk --no-cache add curl bash && \
    apk add --update --no-cache libintl icu icu-dev libxml2-dev && \
    docker-php-ext-install intl zip soap && \
    cd /files/${TOOL_NAME} && \
    curl -L --insecure -o $TOOL_TAR_GZ $TOOL_DOWNLOAD_URL && \
    tar -xvzf $TOOL_TAR_GZ --strip-components 1 && \
    rm -rf *.gz && \
    rm -rf /var/cache/apk/* && \
    mv runTest1.sh /usr/local/bin/runTest1.sh && \
    chmod +x /usr/local/bin/runTest1.sh

ENTRYPOINT ["php", "/files/ms-vfetc/src/vfetc.php"]