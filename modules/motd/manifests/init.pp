class motd {
      file { '/etc/modtd':
              source => 'puppet:///modules/motd/motd',
           }
}
