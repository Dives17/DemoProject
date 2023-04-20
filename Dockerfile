FROM golang:1.19.3-buster

WORKDIR /home
COPY ./pkg /home/

RUN cd /home && go build -o library

CMD ["/home/library"]
