FROM wordpress:4.3-fpm

ENV TERM=xterm

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash
RUN source ~/.nvm/nvm.sh && echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc && nvm install 4.1.1 && nvm use 4.1.1 && nvm alias default 4.1.1

ENV NVM_DIR   /root/.nvm/versions/node/v4.1.1
ENV NODE_PATH $NVM_DIR/lib/node_modules
ENV PATH      $NVM_DIR/bin:$PATH

RUN npm i -g npm && npm i -g gulp bower

