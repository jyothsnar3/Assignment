node puppetagent 1 {

include apache, aws

    file { '/template.erb':
    ensure  => file,
    content => template('/template.erb'),
    destination => "/var/www/html/",
    #Added new line to this file to see if the push works 
}

}
