class profile::easybuildnfs {

  class { '::nfs':
    server_enabled => false,
    client_enabled => true,
    nfs_v4_client  => false,
  }

  #nfs::client::mount { '/srv/software':
  #    server => '192.168.33.20',
  #    share  => '/home/hpcadmin/software/',
  #}
}
