node default {
  file {'/root/README':
  ensure  => file,
  content => 'Hello, I hope this works',
  owner   => 'root',
  }
}
