FROM golang:1.20

RUN apt-get update
RUN apt-get install -qqy zip unzip python3.9 python3-pip jq python-six && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf ./aws && \
    rm -f ./awscliv2.zip && \
    pip3 install aws-sam-cli
