FROM ubuntu:18.04

WORKDIR /opt/app

COPY . .

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

RUN npm install --only=production

EXPOSE 8888 

ENTRYPOINT ["npm"]
CMD ["start"]