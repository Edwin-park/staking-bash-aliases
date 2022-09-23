alias s.ver='echo \“Version - 22.09.23\"'

alias s.list="alias"
alias s.update='cd ~ && rm ~/.bash_aliases && curl -s -O https://raw.githubusercontent.com/Edwin-park/staking-bash-aliases/main/.bash_aliases \
                && source ~/.bash_aliases && echo \“단축키 업데이트 성공\"'




alias all.install='cd ~ && curl -O https://raw.githubusercontent.com/Edwin-park/Eth2staking/main/install.sh && sudo chmod 777 install.sh && sudo ./install.sh'

alias n.speed='cd ~ \
               && echo \“Writing...\" \
               && dd if=/dev/zero of=deleteme.dat bs=32M count=64 oflag=direct \
               && echo \“Reading...\" \
               && dd if=deleteme.dat of=/dev/null bs=32M count=64 iflag=direct \
               && echo \“*** Done ***\" \
               && rm deleteme.dat'

alias n.update='sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias n.reload='sudo systemctl daemon-reload'
alias n.enable='sudo systemctl enable geth && sudo systemctl enable lighthousebeacon && sudo systemctl enable lighthousevalidator && sudo systemctl enable mevboost'
alias n.disable='sudo systemctl disable geth && sudo systemctl disable lighthousebeacon && sudo systemctl disable lighthousevalidator && sudo systemctl disable mevboost'
alias n.size='sudo du -hs /var/lib/geth && sudo du -hs /var/lib/lighthouse/beacon && sudo du -hs /var/lib/lighthouse/validators && df -h --total | grep total'

alias g.start='sudo systemctl start geth'
alias g.stop='sudo systemctl stop geth'
alias lb.start='sudo systemctl start lighthousebeacon'
alias lb.stop='sudo systemctl stop lighthousebeacon'
alias lv.start='sudo systemctl start lighthousevalidator'
alias lv.stop='sudo systemctl stop lighthousevalidator'
alias mev.start='sudo systemctl start mevboost'
alias mev.stop='sudo systemctl stop mevboost'

alias g.log='sudo journalctl -f -u geth.service'
alias lb.log='sudo journalctl -f -u lighthousebeacon.service'
alias lv.log='sudo journalctl -f -u lighthousevalidator.service'
alias mev.log='sudo journalctl -f -u mevboost.service'

alias g.init='sudo systemctl start geth && sudo journalctl -f -u geth.service'
alias lb.init='sudo systemctl start lighthousebeacon && sudo journalctl -f -u lighthousebeacon.service'
alias lv.init='sudo systemctl start lighthousevalidator && sudo journalctl -f -u lighthousevalidator.service'
alias mev.init='sudo systemctl start mevboost && sudo journalctl -f -u mevboost.service'

alias g.edit='sudo nano /etc/systemd/system/geth.service'
alias lb.edit='sudo nano /etc/systemd/system/lighthousebeacon.service'
alias lv.edit='sudo nano /etc/systemd/system/lighthousevalidator.service'
alias mev.edit='sudo nano /etc/systemd/system/mevboost.service'

alias g.status='sudo systemctl status geth'
alias lb.status='sudo systemctl status lighthousebeacon'
alias lv.status='sudo systemctl status lighthousevalidator'
alias mev.status='sudo systemctl status mevboost'

alias g.peer='curl -s http://localhost:6060/debug/metrics/prometheus | grep p2p_peers'
alias g.sync="curl -s -X POST 127.0.0.1:8545 -H \"Content-Type: application/json\" --data '{\"jsonrpc\":\"2.0\",\"method\":\"eth_syncing\",\"id\":1}' | jq"

alias g.ver="geth version"
alias l.ver="cd ~ && /usr/local/bin/lighthouse --version"
alias mev.ver="cd ~ && mev-boost -version"

alias g.error="sudo journalctl -u geth | grep -e warning -e error | tail -30"
alias lb.error="sudo journalctl -u lighthousebeacon | grep -e warning -e error | tail -30"
alias lv.error="sudo journalctl -u lighthousevalidator | grep -e warning -e error | tail -30"
alias mev.error="sudo journalctl -u mevboost | grep -e warning -e error | tail -30"



