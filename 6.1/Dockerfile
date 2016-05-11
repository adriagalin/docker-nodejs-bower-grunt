FROM node:6.1.0
MAINTAINER Adria Galin <@adriagalin>

# Define working directory.
WORKDIR /data

# Install Bower & Grunt
RUN npm install -g bower grunt-cli \
    && echo '{ "allow_root": true }' > /root/.bowerrc \
    && npm set cache /data/.npm --global

# Define default command.
CMD ["bash"]
