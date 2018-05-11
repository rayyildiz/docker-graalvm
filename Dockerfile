FROM  alpine
LABEL maintainer="Ramazan AYYILDIZ <rayyildiz@gmail.com>"

ENV   GRAAL_VERSION=1.0.0-rc1
ENV   GRAAL_CE_URL=https://github.com/oracle/graal/releases/download/vm-${GRAAL_VERSION}/graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz

RUN   apk add --update wget && apk add --update tar && apk add --update gzip

RUN   wget $GRAAL_CE_URL -O graalvm-ce-linux-amd64.tar.gz
RUN   tar -xvzf graalvm-ce-linux-amd64.tar.gz && \
      mkdir -p /usr/lib/jvm/graalvm && \
      mv graalvm-${GRAAL_VERSION} /usr/lib/jvm/graalvm && \
      rm graalvm-ce-linux-amd64.tar.gz

RUN   rm -rf /usr/lib/jvm/graalvm/doc && \
      rm -rf /usr/lib/jvm/graalvm/man && \
      rm -rf /usr/lib/jvm/graalvm/src.zip

RUN   apk del wget && apk del tar && apk del gzip

ENV   JAVA_HOME=/usr/lib/jvm/graalvm/graalvm-${GRAAL_VERSION}
ENV   PATH=$PATH:$JAVA_HOME/bin

RUN  export JAVA_HOME='/usr/lib/jvm/graalvm/graalvm-${GRAAL_VERSION}' && \
     export GRAALVM_HOME='/usr/lib/jvm/graalvm/graalvm-${GRAAL_VERSION}' && \
     export PATH=$PATH:$JAVA_HOME/bin

RUN  ln -s $JAVA_HOME/bin/java /usr/bin/java && \
     ln -s $JAVA_HOME/bin/javac /usr/bin/javac && \
     ln -s $JAVA_HOME/bin/native-image /usr/bin/native-image
