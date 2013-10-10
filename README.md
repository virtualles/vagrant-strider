### Strider OSCI & CD on Ubuntu 12.04 64-bit Vagrant box

Setup a Strider Continuous Integration & Deployment Server on Ubuntu 12.04 64-bit Vagrant VM instance.

- Requirements: vagrant, virtualbox, git, node, npm, mongodb.

- Useful commands:

```bash
$ vagrant up
$ vagrant provision
$ vagrant reload
$ vagrant ssh
$ vagrant destroy
```

- TODO:
 * use Chef or Puppet to provision the box
 * use Vagrant lxc provider instead of VirtualBox
 * use docker linux container runtime

### Credits:

- [Strider](http://stridercd.com): Open Source Continuous Integration & Deployment Server
- [Vagrant](http://www.vagrantup.com): Create and configure lightweight, reproducible, and portable development environments
- [VirtualBox](http://www.virtualbox.org): Virtualization software



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/gdumitrescu/vagrant-strider/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

