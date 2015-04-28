# mission01 : hello/world Dockerfile

# Original image for the current build.
FROM debian:latest

# Author name.
MAINTAINER tdieumeg

# Update current packages plus, downloads and installs nginx.
RUN apt-get update && apt-get install -y \
    nginx

# Set nginx as one of the default services.
RUN update-rc.d nginx defaults

# Creates a new group "nginxuser" and adds the user "tdieumeg" to it.
RUN groupadd -r nginxuser && useradd -r -g nginxuser tdieumeg

# Set the working directory for this Dockerfile.
WORKDIR /nfs/zfs-student-4/users/2013_paris/tdieumeg/Rendu/Docker/mission01

# Sharing the location of the nginx default public web root
# to the subsequent containers.
VOLUME ["/usr/share/nginx/www"]

# Copies the directory "src/" from the working directory to :
# "/usr/share/nginx/www/".
COPY src "/usr/share/nginx/www/"

# Starting nginx as if through comand line.
ENTRYPOINT ["services", "nginx", "start"]

# Changes the user to "tdieumeg".
USER tdieumeg


# EXPOSE 80 443         (80 = http, 443 = https)
