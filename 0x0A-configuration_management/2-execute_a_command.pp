#  kills a process named killmenow using Puppet by creating a manifest
exec {'killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin';
}
