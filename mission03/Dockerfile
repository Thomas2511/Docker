FROM debian

MAINTAINER tdieumeg

WORKDIR /home/tdieumeg

RUN rm -rf /var/lib/apt/lists/*

RUN useradd -r -s /bin/bash tdieumeg

VOLUME ["/tmp"]

CMD ["/bin/bash"]
