node puppetagent 1 {

include apache, aws

    file { '/template.erb':
    ensure  => file,
    content => template('/template.erb'),
    destination => "/var/www/html/",
 
}

}
