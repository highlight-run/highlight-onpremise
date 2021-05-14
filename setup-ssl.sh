echo "[highlight] Creating diffie=helman key for ssl..."
mkdir $(pwd)/dhparam && sudo openssl dhparam -out $(pwd)/dhparam/dhparam-2048.pem 2048
echo "What is your Highlight Company Domain? (something like xyz.your-company.com)"
read company_domain
echo $company_domain
sed "s/COMPANY_DOMAIN/$company_domain/g" 'nginx-conf/sample-nginx.conf' > 'nginx-conf/nginx.conf'


