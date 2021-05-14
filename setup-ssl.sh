echo "[highlight] Creating diffie=helman key for ssl..."
mkdir $(pwd)/dhparam && sudo openssl dhparam -out $(pwd)/dhparam/dhparam-2048.pem 2048
echo "What is the domain for this Highlight deployment? (something like highlight.your-company.com)"
read company_domain
echo "[highlight] Creating nginx config file..."
sed "s/COMPANY_DOMAIN/$company_domain/g" 'nginx-conf/sample-nginx.conf' > 'nginx-conf/nginx.conf'
echo "What is your email for ssl validation? (something like xyz@your-company.com)"
read company_email
echo "[highlight] Templating docker compose file..."
sed -e "s/COMPANY_DOMAIN/$company_domain/g" -e "s/COMPANY_EMAIL/$company_email/g" 'sample-docker-compose.yml' > 'docker-compose.yml'
echo "[highlight] Done!"


