class python::params {

	case $::osfamily
	{
		'redhat':
		{
			$include_epel=true
			case $::operatingsystemrelease
			{
				/^[67].*$/:
				{
					$python_pkgs= [ 'python2', 'python2-pip' ]
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
						/^14.*$/:
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
