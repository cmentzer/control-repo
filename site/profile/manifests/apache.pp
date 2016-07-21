class profile::apache {

  # profile for the apache class

  class { 'apache':
    server_signature => 'off'
  }
  include apache::mod::alias
  #include apache::mod::perl
  include apache::mod::php
  include apache::mod::rewrite
  include apache::mod::status
}
