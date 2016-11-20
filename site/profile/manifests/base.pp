class profile::base {

  #the base profile should include component modules that will be on all nodes

  # ju ntp server
  class { '::ntp':
    servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
  }

  class { '::hosts':
    one_primary_ipv4 => false,
    one_primary_ipv6 => false,
    entries => {
      '127.0.0.1'     => ['localhost'],
      '192.168.33.20' => ['pmaster.home', 'pmaster.guest.ugent.be', 'pmaster', 'puppet'],
      '192.168.33.30' => ['pclient.home', 'pclient.guest.ugent.be', 'pclient'],
      '192.168.33.40' => ['pclient2.home', 'pclient2.guest.ugent.be', 'pclient2']
    }
}

  include '::vim'

  # apt repositories 

  # DNS lookups

  # user hpcadmin
}
