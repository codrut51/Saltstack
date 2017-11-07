#!/usr/bin/env bash
yes | yum install http://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm
yes | yum clear expire-cache
yes | yum install salt-minion
yes | yum install nano
sed -i.back "s/^\(master:\).*/\110.200.155.85/" /etc/salt/minion
sed -i "/^#.* master: /s/*#//" /etc/salt/minion
sed -i.back "s/^\(hash_table:\).*/\1sha256/" /etc/salt/minion
sed -i "/^#.* hash_type: /s/*#//" /etc/salt/minion
systemctl start salt-minion.service
systemctl enable salt-minion.service