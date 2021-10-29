sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
cd /tmp
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
sudo ./msfinstall
msfconsole
msfdb init

git clone https://github.com/oddcod3/Phantom-Evasion.git
chmod +x ./phantom-evasion.py
./phantom-evasion.py --setup
