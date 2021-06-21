# Using ubutnu latest image 
FROM ubuntu:latest

# apt update 
RUN apt update && apt install software-properties-common -y 

# add php Repo 
RUN add-apt-repository ppa:ondrej/php 

# Install Apache2
RUN apt update && apt-get install apache2 -y

# Install PHP7.3
RUN apt install php7.3 php7.3-cli -y

# Copy info.php 
COPY info.php /var/www/html/

# Run apache command in background 
CMD ["/usr/sbin/apache2ctl","-DFOREGROUND"]

# Define Working Directory 
WORKDIR /var/www/html

# Expose port
EXPOSE 80
