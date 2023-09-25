# to install flask from pip3 using Puppet run it with 'puppet apply 1-install_a_package.pp'
exec {'install flask':
  command => '/usr/bin/pip3 install flask==2.1.0'
}
