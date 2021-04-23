FROM ubuntu:20.04
RUN apt-get update -y && \
    apt-get install -y python3.9 python3-pip

# We copy just the requirements.txt first to leverage Docker cache
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN chmod u+x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]