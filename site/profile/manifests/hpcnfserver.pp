class profile::hpcnfserver {
  
  class { '::ntp':
    servers => [ 'ntp1.corp.com iburst', 'ntp2.corp.com iburst' ],
  } 

  #user {'hpcadmin':
  #  ensure => 'absent',
  #  home   => '/home/hpcadmin',
  #  shell  => '/bin/bash',
  #}

  #class { '::nfs':
  #  server_enabled => true,
  #  nfs_v4	   => false,  
  #  exports_file   => '/etc/exports'
  #}

  #nfs::server::export { '/home/vagrant/software/':
  #  ensure  => 'mounted',
  #  clients => '*(rw,insecure,async,no_root_squash) localhost(rw)'
  #}
}
