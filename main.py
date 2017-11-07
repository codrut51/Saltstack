# import salt.config as conf
# import salt.loader
#
# __opts__ = conf.minion_config("/etc/salt/minion")
# __grains__ = salt.loader.grains(__opts__)
# __opts__['grains'] = __grains__
# __utils__ = salt.loader.utils(__opts__)
# __salt__ = salt.loader.minion_mods(__opts__, utils=__utils__)
# print(__salt__["test.ping"]());

import salt.client as client

local = client.LocalClient();
cmd = "yes | yum -y install nano;";
cmd += "yes | yum -y install curl;";
cmd += "yes | curl https://sdk.cloud.google.com | bash;";
cmd += "exec -l $SHELL;";
cmd += "yes | gcloud components install kubectl";
print(local.cmd("*","cmd.run",[cmd]));