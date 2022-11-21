FROM ubuntu:kinetic-20221101
RUN apt-get update
RUN apt-get install net-tools -y
RUN apt-get install netcat-traditional

COPY ./start-script.sh .

RUN chmod +x start-script.sh

ENTRYPOINT [ "./start-script.sh" ]

