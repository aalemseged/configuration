class profile::base {

  #the base profile should include component modules that will be on all nodes

  # ju ntp server
  class { '::ntp':
    servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
  }

  include '::vim'

  # apt repositories 

  # DNS lookups

  # user hpcadmin
}
