#_*_ coding:utf-8 _*_

#import ansible.runner


def ansiblecommand(commands,host):
    results=ansible.runner.Runner(
        pattern=host,forks=10,
        module_name="command",module_args=commands,).run()
    return results
