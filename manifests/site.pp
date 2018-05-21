node default {
  file {'/root/README':
  ensure  => file,
  content => 'Hello, I hope this works',
  owner   => 'root',
  }
  #file {'/root/README':  Note: Duplicate Declaration doesn't work. Declaring same resource on the same machine twice generates error
  #ensure  => file,
}
