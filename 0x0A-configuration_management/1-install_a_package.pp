# Install flask from pip3
package {'python3-pip':
  ensure => installed,
}

exec { 'install-flask':
  command => '/usr/bin/pip3 install flask',
  path    => ['/usr/bin'],
  creates => '/usr/local/bin/flask',
  require => Package['python3-pip'],
}
