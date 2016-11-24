class profile::base {

  #the base profile should include component modules that will be on all nodes

  # ju ntp server
  class { '::ntp':
    servers => [ 'pmaster', 'pmaster.home', 'pmaster.wireless.ugent.be' ],
  }

  class { '::hosts':

    dynamic_mode => true,

  }

  include '::vim'

  # apt repositories 

  include '::apt'

  # DNS lookups
  

  # User hpcadmin
  #user {'hpcadmin':
  #  ensure => 'absent',
  #  home   => '/home/hpcadmin',
  #  shell  => '/bin/bash',
  #}

}
