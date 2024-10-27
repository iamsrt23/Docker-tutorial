FROM ubuntu:latest 

LABEL name="raviteja"

ENV AWS_ACCESS_KEY_ID=kjdnvjnjksnajvn\
    AWS_SECRET_KEY_ID=kcnsdmkkjs\
    AWS_DEFAULT_REGION=US-EAST-1A

ARG T_VERSION='1.7.5' \
    P_VERSION='1.10.1'

RUN apt update && apt install -y jq net-tools curl wget unzip \
    && apt install -y nginx iputils-ping

#CMD ["/usr/bin/ping","-c4","www.google.com"]
ENTRYPOINT ["/usr/bin/ping","-c4","www.google.com"]




