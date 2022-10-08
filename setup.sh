# Create self signed certificate
CERTS_DIR=./data/nginx/certs
mkdir $CERTS_DIR
openssl req -x509 -nodes -days 1825 -newkey rsa:2048 -keyout $CERTS_DIR/cert.key -out $CERTS_DIR/cert.crt -subj '/CN=localhost'
openssl dhparam -out $CERTS_DIR/dhparam.pem 2048

# Create basic auth credentials
echo -n "Basic auth user: "
read user
sh -c "echo -n '$user:' > ./data/nginx/.htpasswd"
echo -n "Basic auth password: "
read passwd
sh -c "openssl passwd -apr1 ${passwd} >> ./data/nginx/.htpasswd"
