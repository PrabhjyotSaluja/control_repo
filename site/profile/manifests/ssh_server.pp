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
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDOgjDFhuZa712ffSr2+zdlxWF5ssfzCBxe816djBVvOiglRmxD22pTSjrfhmaCLTZH6ccEUUyYesqxwaY2PjxtB1fcCOYkphoEUStqUmnierXliG2gBAqxJJfpmfdH8LvYEYn5P4MTe5jCsHT2etiM4BRx6IJRO8yntztwunnpWjTXWMACxRYa1i0bILT15T7v/cvu2Qz3Tb5ZI85NIbnjXCtaeQZY79rS7El4Z2l/IJF27b78kIq/CR4BCEya31Pfc41/PoLaWdEIE+Y2xfxQjjhzczPPrISC8WqFyEAfVJcvPBX8WxLpyRfWj9/0HwS5b+iKW9K2hoCKins2lh21',
                }
              }
                
