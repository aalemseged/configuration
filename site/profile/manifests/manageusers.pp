class profile::manageusers {

  accounts::user { 'hpcuser1': 

    sshkeys => [
      'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5Qr2p2wddam0j62fG9HgAfTcI/gjuIscibPSSjABaQMAh1hcsZL1JyrrCfzjzY8sFZXhEjJDVab8qibCo9LYzT1CURBM8pgKy1U63nnfFLTrqHg/FFzgBmXIaMemYbyJTeUGb9GDL7XjsbI1HljYL+5Uzw4CHi0NORQ1xSQ7g2zOvVBUhnGsEx61GSn4fRxeYUK0u2mqon+wa0n1mjqLDGP3nP43VOGWXZlAneCoYovBlpJp7pXFO/HDFWMe2H1c4SJgG+uqe0CtL6DmfIxp+IAh1X/bF5FG954yt0SvwEMlCl6F7nb3HtNlXw0awNCgGZ+hsxWWsjfsZAQ93PP8L hpcuser1@puppetlabs.com'
    ], 

  }

  accounts::user { 'hpcuser2': 
    
    sshkeys => [
      'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDsv3wXtx5aIHb0Qba9cKAb9Yqw/+sD8f5UZ6nViYXZhssEPdnRLnOTFKOuVEoYlEnkh7ieN72IXhqYm9hj9t6LG9MwO+pE5xFej1yLrd8X6mSuM4sL0L7PQa2ecZ6zJmKvYkTBxYnkHdqWpf6Zth3CDx6DmRxngaOe/eSKMn7xmxCYDNOW9EoB+lNuWKQBtvXE83ShX3Rl6P3pPnKnesru7wU0mU9602zhmrLxlIShbFZVZGMW8AKr69DjjqsCMJs9vy+VVfK/q0L9e/00ePFviGymCnRGHI104PDHRedAOQcsgLRUxVKRBzmthaWSgRvia+OSZ5draPOm+V8yKg4N hpcuser2@puppetlabs.com'
    ],

  }

  accounts::user { 'hpcadmin':
    ensure   => present,
    managehome => true,
    uid      => '1001',
    gid      => '1001',
    shell    => '/bin/bash',
    password => '$1$JkjdCTMH$mqtlrEouL4zpYaIOL7YbJ0',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }


}
