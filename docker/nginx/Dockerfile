FROM nginx:1.13.5-alpine

MAINTAINER Weedmaps

# Copy custom configuration file from the current directory
COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /bin/start.sh
RUN chmod 755 /bin/start.sh

# Define default command
CMD /bin/start.sh 