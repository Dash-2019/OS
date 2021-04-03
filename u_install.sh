<< COMMENTOUT
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo apt update
sudo apt -y install syncthing



#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
COMMENTOUT


sudo apt install git cmake make xorg-dev g++ libcurl4-openssl-dev \
                 libavahi-compat-libdnssd-dev libssl-dev libx11-dev \
                 libqt4-dev qtbase5-dev

git clone https://github.com/debauchee/barrier.git
cd barrier
./clean_build.sh
cd build
sudo make install




