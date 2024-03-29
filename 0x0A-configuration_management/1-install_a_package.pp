# This Puppet manifest installs Flask version 2.1.0 using pip3.

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | /bin/grep -q "Version: 2.1.0"',
}
