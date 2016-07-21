class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { 'motd': }
  class { 'ntp': }
  class { 'resolv_conf': }

  Sysctl{ensure => present}

  $sysctl_params = hiera_hash('sysctl_params')
  create_resources(sysctl, $sysctl_params)


}
