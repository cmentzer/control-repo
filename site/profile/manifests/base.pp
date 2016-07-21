class profile::base {

  #the base profile should include component modules that will be on all nodes

  class { 'motd': }
  class { 'ntp': }
  class { 'augeasproviders_sysctl': }
}
