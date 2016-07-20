class profile::base {

  #the base profile should include component modules that will be on all nodes

  class {'dnsmasq':
    spoofed_sites => [
      {
        hostname => 'www.alice.com',
        address  => '1.2.3.4'
      },
      {
        hostname => 'www.bob.com',
        address  => '1.2.3.4'
      }
    ]
  }
}
