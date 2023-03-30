FROM golang

WORKDIR /root

# python and pip
RUN apt-get update
RUN apt-get -y install python3 python3-setuptools python3-pip python3-venv

# For XSSRocket
RUN apt-get -y install ruby

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
RUN git clone https://github.com/MrH0wl/Cloudmare.git && pip install backoff
RUN git clone https://github.com/blackhatethicalhacking/XSSRocket.git && cd XSSRocket && chmod +x XSSRocket.sh
RUN git clone https://github.com/andresriancho/enumerate-iam.git && cd enumerate-iam && pip install -r requirements.txt

# For XSSRocket
RUN apt-get -y install figlet
RUN gem install lolcat

RUN pip3 install holehe
RUN pip3 install onionsearch
RUN pip3 install ignorant
RUN pip3 install one-lin3r
RUN pip3 install pywhat
RUN pip3 install coercer
RUN pip3 install crosslinked
RUN pip3 install orbitaldump
RUN pip3 install pipx
RUN pip3 install git-dumper
RUN pip3 install aws-consoler

# msprobe
RUN pipx install git+https://github.com/puzzlepeaches/msprobe.git
