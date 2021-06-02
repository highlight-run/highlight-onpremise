echo "What is the domain for this Highlight deployment? (something like highlight.your-company.com)"
read company_domain
echo "[highlight] Creating ssl config file..."
sed "s/COMPANY_DOMAIN/$company_domain/g" 'nginx-conf/ssl.conf.sample' > 'nginx-conf/ssl.conf'
echo "[highlight] Uncomment the '--staging' flag in your 'docker-compose.yml' and you should be good to go!"
