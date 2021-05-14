# adapted from https://askubuntu.com/questions/459402/how-to-know-if-the-running-platform-is-ubuntu-or-centos-with-help-of-a-bash-scri
command_present() {
  type "$1" >/dev/null 2>&1
}
echo "[highlight] Installing docker"
if ! command_present wget && command_present yum; then
  sudo yum install wget
fi
wget -qO- https://get.docker.com/ | sh
echo "[highlight] Installing docker compose"
sudo -E curl -L https://github.com/docker/compose/releases/download/1.29.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
echo "[highlight] Giving permissions to docker binaries"
sudo chmod +x /usr/local/bin/docker-compose
echo "[highlight] Creating docker user group"
sudo groupadd docker
echo "[highlight] Adding the current user to the docker group"
sudo usermod -aG docker ${USER}
echo "[highlight] Logout of this ssh session and log back in to see these changes..."