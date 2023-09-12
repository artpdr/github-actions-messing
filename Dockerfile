FROM ubuntu:22.04

COPY hello.c .

RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential \
 && gcc -o hello.o hello.c \
 && mkdir mountpoint

ENTRYPOINT ["/bin/bash", "-c", "uname -a && ./hello.o && cp hello.o mountpoint"]
