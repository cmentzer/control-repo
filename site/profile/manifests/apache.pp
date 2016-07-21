class profile::apache {

  # profile for the apache class

  class { 'apache':}
  class { 'apache::mod::alias': }
  class { 'apache::mod::perl': }
  class { 'apache::mod::php': }
  class { 'apache::mod::rewrite': }
  class { 'apache::mod::status': } 
}
