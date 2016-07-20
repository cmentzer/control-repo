class profile::apache {

  #the base profile should include component modules that will be on all nodes

  class { 'apache': }

}
