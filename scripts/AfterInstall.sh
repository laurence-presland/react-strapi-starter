sudo -s
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
[ -s "/root/.nvm/nvm.sh" ] && . "/root/.nvm/nvm.sh"
nvm install 10.2.1
npm install -g forever
npm install -g strapi@beta
cd /v2food
forever stopall
forever start -c /bin/bash ./start.sh