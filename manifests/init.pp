#
class python inherits python::params {

  if($python::params::include_epel)
  {
    include ::epel

    Package[$python::params::python_pkgs] {
      require => Class['epel'],
    }
  }

  package { $python::params::python_pkgs:
    ensure => 'installed',
  }

  # /usr/bin/pip /usr/bin/pip-python
  file { '/usr/bin/pip-python':
    ensure  => 'link',
    target  => '/usr/bin/pip',
    require => Package[$python::params::python_pkgs],
  }

}
