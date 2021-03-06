sudo apt-get install zsh ruby -y
chsh -s /bin/zsh

cd $HOME

sudo apt-get install git vim openjdk-11-jdk -y
git clone https://github.com/radareorg/radare2
cd radare2
chmod +x sys/install.sh
sh sys/install.sh

cd $HOME
curl -fsSL https://test.docker.com -o test-docker.sh
sh test-docker.sh
rm test-docker.sh

sudo apt-get update
sudo apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade pwntools

cd $HOME

mkdir bin
cd bin
wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x64
mv rp-lin-x64 rp
chmod +x rp
cd $HOME
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
./setup.sh

cd $HOME
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y

sudo apt-get install openjdk-11-jre -y

cd $HOME
wget https://ghidra-sre.org/ghidra_10.0-BETA_PUBLIC_20210521.zip
unzip ghidra_10.0-BETA_PUBLIC_20210521.zip
rm ghidra_10.0-BETA_PUBLIC_20210521.zip

sudo apt-get install python3-dev libffi-dev build-essential virtualenvwrapper -y
python3 -m pip install angr

sudo gem install one_gadget
