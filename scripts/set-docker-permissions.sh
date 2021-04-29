echo "Creating docker user group"
sudo groupadd docker
echo "Adding the current user to the docker group"
sudo usermod -aG docker ${USER}
