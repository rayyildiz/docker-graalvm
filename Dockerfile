FROM alpine

ENV GRAAL_CE_URL=https://github.com/oracle/graal/releases/download/vm-1.0.0-rc1/graalvm-ce-1.0.0-rc1-linux-amd64.tar.gz \
    JAVA_HOME=/usr/lib/jvm/graalvm-current

RUN apk add wget tar gunzip

RUN wget $GRAAL_CE_URL -O graalvm-ce-linux-amd64.tar.gz

RUN tar -xvzf graalvm-ce-linux-amd64.tar.gz

RUN mv graalvm-1.0.0-rc1 /usr/lib/jvm/graalvm-current

RUN export JAVA_HOME=/usr/lib/jvm/graalvm-current && \
    export PATH=$PATH:$JAVA_HOME/bin
