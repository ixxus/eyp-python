#
class python inherits python::params {

  include ::epel

  package { $python_pkgs:
    ensure => 'installed',
    require => Class['epel'],
  }

  # /usr/bin/pip /usr/bin/pip-python
  file { '/usr/bin/pip-python':
    ensure => '/usr/bin/pip',
  }

}
