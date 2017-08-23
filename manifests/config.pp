# == Class: munge::config
#
# Private class
#
class munge::config {

  include '::munge'

  file { '/etc/munge/munge.key':
    ensure  => 'file',
    path    => $::munge::munge_key_path,
    owner   => 'munge',
    group   => 'munge',
    mode    => '0400',
    content => $::munge::munge_key_file_content,
  }

}
