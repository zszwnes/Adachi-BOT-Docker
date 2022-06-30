FROM centos:centos7
#FROM test5
ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive \
    PUPPETEER_EXECUTABLE_PATH="/usr/lib64/chromium-browser/chromium-browser" \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

ADD . /app

RUN cd /app && sh init.sh

WORKDIR /app/Adachi-BOT/

#CMD /bin/sh -c "npm run init"

#CMD /bin/sh -c "npm run start"