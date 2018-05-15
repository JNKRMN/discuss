FROM alpine:3.6

ENV HOME=/app ERM=xterm
WORKDIR ${HOME} 

RUN \
  apk update && \
  apk --no-cache --update add -f \
    libgcc \
    libstdc++ \
    ncurses-dev \
    bash \
    openssl \
    openssh-client && \
  rm -rf /var/cache/apk/* \
  && adduser -s /bin/sh -u 1001 -G root -h ${HOME} -S -D default \ 
  && chown -R 1001:0 ${HOME}

USER default

ADD release/platform/ /platform/
ADD docker/elixir/scripts/start.sh /platform/bin/start.sh

CMD bin/platform foreground
