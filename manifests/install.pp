# == Class: munge::install
#
# Private class
#
class munge::install {

  include '::munge'

  package { 'munge':
    ensure  => $::munge::package_ensure,
    name    => $::munge::package_name,
    require => $::munge::package_require,
  }

  if $::munge::install_dev {
    package { 'munge-devel':
      ensure  => $::munge::package_ensure,
      name    => $::munge::dev_package_name,
      require => $::munge::package_require,
    }
  }

}
