echo "[highlight] Creating docker user group"
sudo groupadd docker
echo "[highlight] Adding the current user to the docker group"
sudo usermod -aG docker ${USER}
echo "[highlight] Logout of this ssh session and log back in to see these changes..."
