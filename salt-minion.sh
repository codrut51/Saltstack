#!/usr/bin/env bash
yes | yum -y install http://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm
yes | yum -y clean expire-cache
yes | yum -y install salt-minion
yes | yum -y install nano
cp ./minion /etc/salt/minion
systemctl start salt-minion.service
systemctl enable salt-minion.service