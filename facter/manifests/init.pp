class facter {
  #notify {'Testfact':
  #  message => "$operatingsystemrelease",
  #}

  #notify {'Testfact2':
  #  message => "$operatingsystemmajorrelease",
  #}

  case $operatingsystem {
     'Debian': {
        #notify {'debianmessage':
        #  message => "you are running Debian $operatingsystemmajorrelease"
        #}
        file {'/etc/apt/preferences.d/facter':
          source => "puppet:///modules/facter/facter",
          notify => Package ['facter'],
        }
    }
  }

  package {"facter":
    ensure => latest,
  }
}
