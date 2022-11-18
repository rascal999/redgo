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
RUN go install -v github.com/hahwul/jwt-hack@latest
RUN go install -v github.com/dhn/spk@latest
RUN go install -v github.com/sw33tLie/sns@latest
RUN go install -v github.com/tomnomnom/qsreplace@latest
RUN go install -v github.com/tomnomnom/gf@latest
RUN go install -v github.com/projectdiscovery/katana/cmd/katana@latest
RUN go install -v github.com/aquasecurity/tfsec/cmd/tfsec@latest

RUN mkdir git && cd git && git clone https://github.com/redhuntlabs/HTTPLoot.git && cd HTTPLoot && go build

RUN pip3 install holehe
RUN pip3 install onionsearch
RUN pip3 install ignorant
RUN pip3 install one-lin3r
RUN pip3 install pywhat
