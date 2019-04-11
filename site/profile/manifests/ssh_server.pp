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
                key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQ7MbMvjsTABCUwMg/lIRw/T/w9CXLlTjamtdKcVj+1F1iBwuHz+pmP74CKDWoCTrgbj1JdfY1xI8gajW8gIp8NP+IcGoG8/+eQcelucSRjB2ermsigOwOn7zVef4zNylN3sY64xvS8VDiN8G5n7ZZhrRscGKgizx+LxA4t9pHuVX5wqktmAyjffAUMcfadyDNi++gzajvmQ7mZDYyurIlsaHUocorxBVEX8dVJ2OfWSRjibpuaKioj0GM9AvwxF5iDgakcv8hgq4VjbiARlFYW6m/6pPjxCMKZzke3iAZc/MIVWeBgmaFh0uIBnmuIdr2kl6RxVnj69m8a7xqdF1L',
                }
              }
                
