FROM ubuntu

RUN apt update
RUN apt install -y build-essential libssl-dev git
RUN git clone https://github.com/josephburnett/wrk.git
RUN cd wrk ; make

ENTRYPOINT ["/wrk/wrk"]
