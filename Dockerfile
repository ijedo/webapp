FROM golang:alpine
MAINTAINER Lobin Alexander <agl@aglnn.ru>
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
EXPOSE 8080
