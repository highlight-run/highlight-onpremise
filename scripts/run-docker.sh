
echo "[highlight] Starting the docker daemon..."
sudo systemctl start docker
echo "[highlight] Building the Highlight docker image."
docker build -t highlight-onprem .

