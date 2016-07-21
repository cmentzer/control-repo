class profile::apache {

  # profile for the apache class

  class { 'apache': }
  include apache::mod::alias
  include apache::mod::perl
  include apache::mod::php
  include apache::mod::rewrite
  include apache::mod::status
}
