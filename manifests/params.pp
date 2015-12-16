class python::params {

	case $::osfamily
	{
		'redhat':
		{
			case $::operatingsystemrelease
			{
				/^6.*$/:
				{
          $python_pkgs= [ 'python', 'python-pip' ]
				}
				default: { fail("Unsupported RHEL/CentOS version! - $::operatingsystemrelease")  }
			}
		}
		default: { fail("Unsupported OS!")  }
	}
}
