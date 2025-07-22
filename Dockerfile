FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl

COPY test.sh /app/test.sh

WORKDIR /app

RUN chmod +x test.sh

CMD ["./test.sh"]
