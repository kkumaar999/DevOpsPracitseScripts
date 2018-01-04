class ssh {
 	   $pack1=$osfamily? {
            'RedHat' => 'openssh',
            'Debion' => 'ssh',
            'Solaris' => 'opensssh',
           }
      package { 'openssh':
# 	   	name => $pack1, 
                ensure => present,
              }
      file { '/etc/ssh/sshd_config':
              source => 'puppet:///modules/ssh/sshd_config',
           }


      service { 'sshd':
                 ensure => running,
	         subscribe => File['/etc/ssh/sshd_config'],
             }
} 
