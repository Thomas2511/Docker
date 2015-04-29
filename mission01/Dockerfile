# mission01 : hello/world Dockerfile

# Original image for the current build.
FROM debian:latest

# Author name.
MAINTAINER tdieumeg

# Update current packages plus, downloads and installs nginx.
RUN apt-get update && apt-get install -y \
    nginx

# Cleans the apt-get cache.
RUN rm -rf /var/lib/apt/lists/*

# Set nginx as one of the default services.
RUN update-rc.d nginx defaults

# Creates a new group "nginxuser" and adds the user "tdieumeg" to it.
RUN useradd -r -m -s /bin/bash tdieumeg

# Copies the directory "src/" from the working directory to :
# "/usr/share/nginx/www/".
COPY src "/usr/share/nginx/www/"

# Starting nginx as if through comand line.
ENTRYPOINT service nginx start; su tdieumeg

# Listen on the ports 80 and 443. (80 = http, 443 = https)
EXPOSE 80 443
