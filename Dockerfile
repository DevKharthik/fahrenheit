FROM httpd:latest

# Update package list and install Git
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone https://github.com/DevKharthik/fahrenheit-convertor.git

# Remove the default index.html page
RUN rm /usr/local/apache2/htdocs/index.html

# Copy the content of the repository to the Apache web server directory
COPY fahrenheit-convertor/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
