FROM alpine

#MAINTAINER Advantech

RUN apk update && apk add --no-cache git nodejs && \
    apk add ca-certificates curl && \
    curl --silent \
    --location https://github.com/sgerrand/alpine-pkg-R/releases/download/v3.2.3-r0/R-3.2.3-r0.apk --output /var/cache/apk/R-3.2.3-r0.apk \
    --location https://github.com/sgerrand/alpine-pkg-R/releases/download/v3.2.3-r0/R-dev-3.2.3-r0.apk --output /var/cache/apk/R-dev-3.2.3-r0.apk \
    --location https://github.com/sgerrand/alpine-pkg-R/releases/download/v3.2.3-r0/R-doc-3.2.3-r0.apk --output /var/cache/apk/R-doc-3.2.3-r0.apk && \
    apk add --allow-untrusted \
    /var/cache/apk/R-3.2.3-r0.apk \
    /var/cache/apk/R-dev-3.2.3-r0.apk \
    /var/cache/apk/R-doc-3.2.3-r0.apk && \
    useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo && echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    git clone https://github.com/ADVANTECH-Corp/hdd_failure_predict_service.git /home/adv/hdd_failure_predict && \
    chmod a+w hdd_failure_predict/Feature.data && cp hdd_failure_predict/run_service.sh /usr/local/bin/. && \
    apk del git curl && rm -rf /tmp/* /var/cache/apk/*

# adv account
#RUN useradd -m -k /home/adv adv -p adv -s /bin/bash -G sudo

# set up adv as sudo
#RUN echo "adv ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
WORKDIR /home/adv

# install HDD failure prediction service
#RUN git clone https://github.com/ADVANTECH-Corp/hdd_failure_predict_service.git /home/adv/hdd_failure_predict
#RUN sudo chmod a+w hdd_failure_predict/Feature.data
#RUN sudo cp hdd_failure_predict/run_service.sh /usr/local/bin/.

USER adv

# Run hdd failure prediction servcie
#ENTRYPOINT ["run_service.sh"]
