FROM golang

WORKDIR /root

# pip yo
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-setuptools
RUN apt-get -y install python3-pip

RUN go install -v github.com/ndelphit/apkurlgrep@latest
RUN go install -v github.com/musana/fuzzuli@latest
RUN go install -v github.com/j3ssie/metabigor@latest
RUN go install -v github.com/riza/linx/cmd/linx@latest
RUN go install -v github.com/utkusen/urlhunter@latest
RUN go install -v github.com/tomnomnom/qsreplace@latest
RUN mkdir git && cd git && git clone https://github.com/redhuntlabs/HTTPLoot.git && cd HTTPLoot && go build

RUN pip3 install holehe
RUN pip3 install onionsearch
RUN pip3 install ignorant
