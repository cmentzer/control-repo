class profile::swap_file {

  # profile for the swap_file class
  swap_file::files { 'file1':
    ensure       => present,
    swapfile     => '/mnt/swap.1',
    swapfilesize => '2 GB',
  } 
}
