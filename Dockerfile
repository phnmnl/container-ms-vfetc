FROM php:7.0

MAINTAINER Michael van Vliet (m.s.vanvliet@lacdr.leidenuniv.nl)

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/leidenuniv-lacdr-abs/ms-vfetc.git

ADD runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod +x /usr/local/bin/runTest1.sh

WORKDIR ms-vfetc
ENTRYPOINT ["php", "-f", "./src/vfetc.php"]
