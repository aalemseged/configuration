class profile::hpcnfserver {

  user {'hpcadmin':
    ensure => 'present',
    home   => '/home/hpcadmin',
    shell  => '/bin/bash',
  }

}
