class role::on_site_machines {

  #This role would be made of all the profiles that need to be included to make a webserver work
  #All roles should include the base profile
  include profile::base
  include profile::dnsmasq
  include profile::apache
  include profile::swap_file
  include profile::archive
}
