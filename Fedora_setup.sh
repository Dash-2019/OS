sudo dnf install -y openssh-server;
sudo systemctl start sshd.service;
sudo systemctl enable sshd.service;
