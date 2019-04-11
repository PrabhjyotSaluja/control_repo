class profile::base {
  user {'admin':
    ensure => present,
    }
    user {'ldm':
    ensure => present,
    home   => '/opt/ldm',
    shell  => '/bin/bash',
    uid    => '1002',
    }
    include profile::ssh_server
   }
