class profile::dnsmasq {


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
