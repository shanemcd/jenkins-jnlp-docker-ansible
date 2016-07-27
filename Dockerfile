FROM shanemcd/docker-jnlp-slave-dind:latest

RUN apt-get update
RUN apt-get install -y \
    python-dev \
    libffi-dev \
    python-pip \
    libssl-dev

RUN pip install --upgrade cffi ansible boto docker-py

RUN curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
