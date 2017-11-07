import salt.config as conf
import salt.loader

__opts__ = conf.minion_config("/etc/salt/minion")
__grains__ = salt.loader.grains(__opts__)
__opts__['grains'] = __grains__
__utils__ = salt.loader.utils(__opts__)
__salt__ = salt.loader.minion_mods(__opts__, utils=__utils__)
__salt__["test.ping"](); 