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

alias rn.start='sudo systemctl start rp-node'
alias rn.stop='sudo systemctl stop rp-node'

alias g.log='sudo journalctl -f -u geth.service'
alias b.log='sudo journalctl -f -u beacon.service'
alias v.log='sudo journalctl -f -u validator.service'

alias lb.log='sudo journalctl -f -u lighthousebeacon.service'
alias lv.log='sudo journalctl -f -u lighthousevalidator.service'

alias rn.log='sudo journalctl -f -u rp-node.service'

alias n.reload='sudo systemctl daemon-reload'

alias g.init='sudo systemctl start geth && sudo journalctl -f -u geth.service'

alias lb.init='sudo systemctl start lighthousebeacon && sudo journalctl -f -u lighthousebeacon.service'
alias lv.init='sudo systemctl start lighthousevalidator && sudo journalctl -f -u lighthousevalidator.service'
alias rn.init='sudo systemctl start rp-node && sudo journalctl -f -u rp-node.service'



alias g.edit='sudo nano /etc/systemd/system/geth.service'
alias b.edit='sudo nano /etc/systemd/system/beacon.service'
alias v.edit='sudo nano /etc/systemd/system/validator.service'

alias lb.edit='sudo nano /etc/systemd/system/lighthousebeacon.service'
alias lv.edit='sudo nano /etc/systemd/system/lighthousevalidator.service'

alias rn.edit='sudo nano /etc/systemd/system/rp-node.service'

alias g.status='sudo systemctl status geth'
alias b.status='sudo systemctl status beacon'
alias v.status='sudo systemctl status validator'

alias lb.status='sudo systemctl status lighthousebeacon'
alias lv.status='sudo systemctl status lighthousevalidator'
alias rn.status='sudo systemctl status rp-node'


alias g.peer='curl -s http://localhost:6060/debug/metrics/prometheus | grep p2p_peers'
alias g.sync="curl -s -X POST 127.0.0.1:8545 -H \"Content-Type: application/json\" --data '{\"jsonrpc\":\"2.0\",\"method\":\"eth_syncing\",\"id\":1}' | jq"

alias g.ver="geth version"
alias p.ver="curl -s -X GET \"http://127.0.0.1:3500/eth/v1alpha1/node/version\" -H \"accept: application/json\" | jq [.version]"

alias l.ver="cd ~ && /usr/local/bin/lighthouse --version"

alias g.error="sudo journalctl -u geth | grep -e warning -e error | tail -30"
alias b.error="sudo journalctl -u beacon | grep -e warning -e error | tail -30"
alias v.error="sudo journalctl -u validator | grep -e warning -e error | tail -30"

alias lb.error="sudo journalctl -u lighthousebeacon | grep -e warning -e error | tail -30"
alias lv.error="sudo journalctl -u lighthousevalidator | grep -e warning -e error | tail -30"

alias rn.error="sudo journalctl -u rp-node | grep -e warning -e error | tail -30"


alias rp="rocketpool -d /usr/local/bin/rocketpoold -c /srv/rocketpool"



