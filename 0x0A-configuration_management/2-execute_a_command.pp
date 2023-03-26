# kill killmenow
exec { 'kill-process':
  command => '/usr/bin/pkill -f killmenow',
  path    => ['/usr/bin'],
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
