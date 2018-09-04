FROM  ubuntu
LABEL maintainer="Ramazan AYYILDIZ <rayyildiz@gmail.com>"

ENV   GRAAL_VERSION=1.0.0-rc6
ENV   GRAAL_CE_URL=https://github.com/oracle/graal/releases/download/vm-${GRAAL_VERSION}/graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz

RUN   apt-get update && \
      apt-get install -y wget tar gzip

RUN   cd /tmp && \
      wget -q $GRAAL_CE_URL -O graalvm-ce-linux-amd64.tar.gz && \
      tar -xvzf graalvm-ce-linux-amd64.tar.gz && \
      mkdir -p /usr/lib/jvm/graalvm && \
      mv graalvm-ce-${GRAAL_VERSION} /usr/lib/jvm/graalvm && \
      rm graalvm-ce-linux-amd64.tar.gz && \
      rm -rf /usr/lib/jvm/graalvm/doc && \
      rm -rf /usr/lib/jvm/graalvm/man && \
      rm -rf /usr/lib/jvm/graalvm/src.zip && \
      rm -rf /tmp/*

RUN   apt-get clean

ENV   JAVA_HOME=/usr/lib/jvm/graalvm/graalvm-ce-${GRAAL_VERSION}
ENV   PATH=$PATH:$JAVA_HOME/bin
ENV   GRAALVM_HOME=/usr/lib/jvm/graalvm/graalvm-ce-${GRAAL_VERSION}
