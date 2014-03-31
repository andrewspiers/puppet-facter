class facter {
  notify {'Test':
    message => 'test message',
  }

  notify {'Testfact':
    message => "$operatingsystemrelease",
  }

  notify {'Testfact2':
    message => "$operatingsystemmajorrelease",
  }

}
