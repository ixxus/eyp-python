class python::params {

	$python_pkgs= [ 'python', 'python-pip' ]

	case $::osfamily
	{
		'redhat':
		{
			$include_epel=true
			case $::operatingsystemrelease
			{
				/^[67].*$/:
				{
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
