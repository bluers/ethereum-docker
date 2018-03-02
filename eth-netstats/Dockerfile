FROM node:8-alpine

RUN apk add --update git

#RUN git clone https://github.com/cubedro/eth-netstats
COPY eth-netstats /eth-netstats
WORKDIR /eth-netstats
#RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN sh -c 'echo '\n#alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"' >> ~/.bashrc && source ~/.bashrc'
RUN npm install
RUN npm install -g grunt-cli
RUN grunt

EXPOSE 3000

CMD ["npm", "start"]
