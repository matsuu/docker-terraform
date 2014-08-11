FROM fedora

ENV GOPATH /usr

RUN \
  yum install -y cmake git go make mercurial && \
  yum clean all && \
  go get -u github.com/mitchellh/gox

RUN \
  mkdir $GOPATH/src/github.com/hashicorp && \
  cd $GOPATH/src/github.com/hashicorp && \
  git clone https://github.com/hashicorp/terraform.git && \
  cd terraform && \
  make updatedeps && \
  make && \
  make dev

WORKDIR /terraform
VOLUME /terraform

ENTRYPOINT ["terraform"]
