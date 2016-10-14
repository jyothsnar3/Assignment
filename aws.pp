ec2_vpc_subnet { 'projectsubnet':
  ensure            => present,
  region            => 'us-east-1',
  vpc               => 'projectvpc',
  cidr_block        => '10.0.0.0/24',
  availability_zone => 'us-east-1c',
  route_table       => 'projectroutes',
}

ec2_securitygroup { 'projectsg':
  ensure      => present,
  region      => 'us-east-1',
  vpc         => 'projectvpc',
  description => 'Security group for VPC',
  ingress     => [{
    security_group => 'projectsg',
  },{
    protocol => 'tcp',
    port     => 22,
    cidr     => '0.0.0.0/0'
  }
  {
    protocol => 'https',
    port     => 443,
    cidr     => '0.0.0.0/0'
  }
  {
    protocol => 'http',
    port     => 80,
    cidr     => '0.0.0.0/0'
  }
  ]
}
