FROM debian

MAINTAINER tdieumeg

WORKDIR /home/tdieumeg

RUN apt-get update && apt-get install -y \
    openssh-server



RUN mkdir /var/run/sshd
#RUN echo 'root:screencast' | chpasswd
#RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
#RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile



RUN rm -rf /var/lib/apt/lists/*

RUN useradd -r -s /bin/bash tdieumeg

RUN sed -i 's/^Port 22/Port 42/g' /etc/ssh/sshd_config

RUN mkdir .ssh

COPY id_boot2docker.pub /home/tdieumeg/.ssh/authorized_keys

EXPOSE 42

CMD ["/usr/sbin/sshd", "-D"]
