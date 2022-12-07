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
#RUN go install -v github.com/utkusen/urlhunter@latest
RUN go install -v github.com/tomnomnom/qsreplace@latest
RUN go install -v github.com/hahwul/jwt-hack@latest
RUN go install -v github.com/dhn/spk@latest
RUN go install -v github.com/sw33tLie/sns@latest
RUN go install -v github.com/tomnomnom/qsreplace@latest
RUN go install -v github.com/tomnomnom/gf@latest
RUN go install -v github.com/projectdiscovery/katana/cmd/katana@latest
RUN go install -v github.com/aquasecurity/tfsec/cmd/tfsec@latest
RUN go install -v github.com/hahwul/dalfox/v2@latest
RUN go install -v github.com/tomnomnom/assetfinder@latest

RUN go install -v github.com/tomnomnom/waybackurls@latest
RUN go install -v github.com/tomnomnom/gf@latest
RUN mkdir /root/.gf
RUN find /go/pkg/mod/github.com/tomnomnom -type f -name "*.json" -exec cp {} /root/.gf \;
RUN git clone https://github.com/1ndianl33t/Gf-Patterns && mv /root/Gf-Patterns/*.json /root/.gf

RUN mkdir git && cd git && git clone https://github.com/redhuntlabs/HTTPLoot.git && cd HTTPLoot && go build

RUN git clone https://www.github.com/thenurhabib/collector && cd collector && pip install -r requirements.txt
RUN git clone https://github.com/ticarpi/jwt_tool && cd jwt_tool && pip install termcolor cprint pycryptodomex requests

RUN git clone https://github.com/BishopFox/cloudfox.git && cd ./cloudfox && go build .

RUN pip3 install holehe
RUN pip3 install onionsearch
RUN pip3 install ignorant
RUN pip3 install one-lin3r
RUN pip3 install pywhat
RUN pip3 install coercer
RUN pip3 install crosslinked
