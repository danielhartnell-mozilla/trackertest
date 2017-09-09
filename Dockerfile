FROM httpd:2.4

# Cleanup the existing document root
RUN rm /usr/local/apache2/htdocs/*

# Copy our site content and configuration
COPY ./trackertest.conf /usr/local/apache2/conf/
COPY . /usr/local/apache2/htdocs/

EXPOSE 80
