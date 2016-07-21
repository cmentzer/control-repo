class profile::archive {

  # profile for the archive class
  include archive

  archive { '/tmp/tomcat.tar.gz':
    ensure         => present,
    extract        => true,
    extract_path   => '/tmp',
    source         => 'http://mirrors.advancedhosters.com/apache/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz',
    checksum       => 'a551502b9f963e58e84d973216185e70 *apache-tomcat-7.0.70.tar.gz',
    checksum_type  => 'md5',
    creates        => '/tmp/tomcat',
    cleanup        => true
  }

}
