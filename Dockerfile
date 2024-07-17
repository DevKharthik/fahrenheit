FROM httpd
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/DevKharthik/fahrenheit.git
RUN cp ./fahrenheit/* /usr/local/apache2/htdocs