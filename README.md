# WPDOCKER
## By : MOCHAMAD IDRIS

Powerfull Wordpress (WP) + DOCKER stack include :
- mysql database
- openlitespeed webserver
- redis object cache
- adminer


Steps :
1. prepare your .env file
2. run : ./prepare.sh (root if needed)
3. run : docker compose up -d --build
4. run : ./wpinstall.sh
5. open browser to start wp installation
6. after installation you may run : ./wpsecure.sh
