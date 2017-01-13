class python::params {

  case $::osfamily
  {
    'redhat':
    {
      $include_epel=true
      case $::operatingsystemrelease
      {
				/^[56].*$/:
        {
          $python_pkgs= [ 'python', 'python-pip' ]
        }
        /^7.*$/:
        {
          $python_pkgs= [ 'python', 'python2-pip' ]
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    'Debian':
    {
      $include_epel=false
      case $::operatingsystem
      {
        'Ubuntu':
        {
          case $::operatingsystemrelease
          {
            /^1[46].*$/:
            {
              $python_pkgs= [ 'python', 'python-pip' ]
            }
            default: { fail("Unsupported Ubuntu version! - ${::operatingsystemrelease}")  }
          }
        }
        'Debian': { fail('Unsupported')  }
        default: { fail('Unsupported Debian flavour!')  }
      }
    }
    default: { fail('Unsupported OS!')  }
  }
}
