FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y && apt-get install -y lsb-release wget software-properties-common wget build-essential make
RUN bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
RUN ln -s /usr/bin/clang-11 /usr/bin/clang && ln -s /usr/bin/clang++-11 /usr/bin/clang++