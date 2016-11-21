class profile::easybuildnfs {

  class { '::nfs':
    server_enabled => false,
    client_enabled => true,
    nfs_v4_client  => false,
  }

  nfs::client::mount { '/home/hpcadmin/':
      server => '192.168.33.20',
      share  => '/home/vagrant/software/',
  }
}
