#!/usr/bin/env bash
sed -i.back "s/^\(master:\).*/\110.200.155.85/" /etc/salt/minion
sed -i "/^#.* master: /s/*#//" /etc/salt/minion
#sed -i.back "s/^\(hash_table:\).*/\1sha256/" /etc/salt/minion
#sed -i "/^#.* hash_type: /s/*#//" /etc/salt/minion
#systemctl start salt-minion.service
#systemctl enable salt-minion.service