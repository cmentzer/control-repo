class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { 'motd': }
  class { 'ntp': }

  Sysctl{ensure => present}

  $sysctl_params = hiera_hash('sysctl')
  create_resources(sysctl, $sysctl_params)


}
