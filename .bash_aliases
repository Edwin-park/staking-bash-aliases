# ShortCut Key for Local Maintenance (22/03/24) / change : edwin-park

alias n.update='sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias g.start='sudo systemctl start geth'
alias g.stop='sudo systemctl stop geth'
alias b.start='sudo systemctl start beacon'
alias b.stop='sudo systemctl stop beacon'
alias v.start='sudo systemctl start validator'
alias v.stop='sudo systemctl stop validator'

alias lb.start='sudo systemctl start lighthousebeacon'
alias lb.stop='sudo systemctl stop lighthousebeacon'
alias lv.start='sudo systemctl start lighthousevalidator'
alias lv.stop='sudo systemctl stop lighthousevalidator'

alias g.log='sudo journalctl -f -u geth.service'
alias b.log='sudo journalctl -f -u beacon.service'
alias v.log='sudo journalctl -f -u validator.service'

alias lb.log='sudo journalctl -f -u lighthousebeacon.service'
alias lv.log='sudo journalctl -f -u lighthousevalidator.service'

alias n.reload='sudo systemctl daemon-reload'
alias g.init='sudo systemctl start geth && sudo journalctl -f -u geth.service'
alias b.init='sudo systemctl start beacon && sudo journalctl -f -u beacon.service'
alias v.init='sudo systemctl start validator && sudo journalctl -f -u validator.service'

alias lb.init='sudo systemctl start lighthousebeacon && sudo journalctl -f -u lighthousebeacon.service'
alias lv.init='sudo systemctl start lighthousevalidator && sudo journalctl -f -u lighthousevalidator.service'

alias n.disable='sudo systemctl disable geth && sudo systemctl disable beacon && sudo systemctl disable validator'
alias n.enable='sudo systemctl enable geth && sudo systemctl enable beacon && sudo systemctl enable validator'

alias g.edit='sudo nano /etc/systemd/system/geth.service'
alias b.edit='sudo nano /etc/systemd/system/beacon.service'
alias v.edit='sudo nano /etc/systemd/system/validator.service'

alias lb.edit='sudo nano /etc/systemd/system/lighthousebeacon.service'
alias lv.edit='sudo nano /etc/systemd/system/lighthousevalidator.service'

alias g.status='sudo systemctl status geth'
alias b.status='sudo systemctl status beacon'
alias v.status='sudo systemctl status validator'

alias lb.status='sudo systemctl status lighthousebeacon'
alias lv.status='sudo systemctl status lighthousevalidator'


# ShortCut Key for Node Maintenance (20/12/01)
alias g.peer='curl -s http://localhost:6060/debug/metrics/prometheus | grep p2p_peers'
alias b.peer='curl -s "localhost:3500/eth/v1alpha1/node/peers" | jq ".peers[].address" | wc -l'

alias lb.peer='curl -X GET "http://localhost:5052/lighthouse/peers" -H  "accept: application/json" | jq'


alias g.sync="curl -s -X POST 127.0.0.1:8545 -H \"Content-Type: application/json\" --data '{\"jsonrpc\":\"2.0\",\"method\":\"eth_syncing\",\"id\":1}' | jq"
alias b.sync="curl -s -X GET \"http://127.0.0.1:3500/eth/v1alpha1/node/syncing\" -H \"accept: application/json\" | jq"

alias lb.sync="curl -X GET "http://localhost:5052/lighthouse/syncing" -H  "accept: application/json" | jq"


alias p.ver="curl -s -X GET \"http://127.0.0.1:3500/eth/v1alpha1/node/version\" -H \"accept: application/json\" | jq [.version]"

alias l.ver="cd ~ && /usr/local/bin/lighthouse --version"


alias g.ver="geth version"

alias g.error="sudo journalctl -u geth | grep -e warning -e error | tail -30"
alias b.error="sudo journalctl -u beacon | grep -e warning -e error | tail -30"
alias v.error="sudo journalctl -u validator | grep -e warning -e error | tail -30"

alias lb.error="sudo journalctl -u lighthousebeacon | grep -e warning -e error | tail -30"
alias lv.error="sudo journalctl -u lighthousevalidator | grep -e warning -e error | tail -30"
