FROM ubuntu:16.04

RUN apt-get update -y && \
    echo "Acquire::http::No-Cache true;" >> /etc/apt/apt.conf && \
    echo "Acquire::http::Pipeline-Depth 0;" >> /etc/apt/apt.conf && \
    apt-get install python3 python3-dev python3-pip python3-setuptools curl --no-install-recommends -y && \
    pip3 install flask

WORKDIR /flaskapp

COPY api.py /flaskapp

EXPOSE 3000

CMD ["python3", "api.py"]
