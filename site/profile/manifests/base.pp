class profile::base {
  user {'admin':
    ensure => present,
    }
    user {'ldm':
    ensure => present,
    }
   }
