FROM alpine:3.3
#MAINTAINER Advantech

RUN apk update \
  && apk add ca-certificates curl \
  && curl --silent \
    --location https://github.com/sgerrand/alpine-pkg-R/releases/download/v3.2.3-r0/R-3.2.3-r0.apk --output /var/cache/apk/R-3.2.3-r0.apk \
  && apk add --allow-untrusted \
    /var/cache/apk/R-3.2.3-r0.apk \
  && apk add --no-cache git nodejs && \
  git clone https://github.com/ADVANTECH-Corp/hdd_failure_predict_service.git /home/adv/hdd_failure_predict && \
  /bin/chmod a+w /home/adv/hdd_failure_predict/Feature.data && /bin/cp /home/adv/hdd_failure_predict/run_service.sh /usr/local/bin/. && \
  /bin/chmod a+rwx -R /home/adv/hdd_failure_predict/ && \
  apk del git curl && /bin/rm -rf /tmp/* /var/cache/apk/*
  
WORKDIR /home/adv
ENTRYPOINT ["start.sh"]
