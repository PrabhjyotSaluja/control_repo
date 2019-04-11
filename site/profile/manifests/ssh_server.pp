class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service { 'sshd':
                ensure => 'running',
                enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
                ensure  => present,
                user    => 'root',
                type    => 'ssh-rsa',
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYdab5YlNTW1j019uW5o0GviTl2xkGAmghfFFxlCXMR3a+2uCiWhsdIyl5omHfaU80ohnL6TtqGlIMsxVVyln33lPwv1rtz+MFtuLe7OCq9t3N7i3wXmpWw3eG0SnZA3EvRDpYeDMJYNLtr1pPHBBFUlSgBSsiXHP1DdaBkkYt8FZRVTyubMxQbPq7+63TtIzxQTDWrTqgZkAEBDtWM/G81BJUPA1W4i9dfocIgiEVkMg/mW4XqT1j+uovLZ1Uwdt1h4CJzxUdFTNYisqv7KORcSfuUX0xYpFjEJMH5DrR9Z2hdTqEsh65XNSYdKcl6sBh/N4YM0kXt+/tW8pOm8Yh',
                }
              }
                
