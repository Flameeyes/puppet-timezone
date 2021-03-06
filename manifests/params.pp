class timezone::params {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package = 'tzdata'
      $zoneinfo_dir = '/usr/share/zoneinfo/'
      $config_file = '/etc/localtime'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
