yum update -y
yum upgrade -y
yum install perl cpan -y
cpan force install IO::Socket
cpan force install IO::Select 
cpan force install Parallel::ForkManager
cpan force install Net::SSH2
yum install screen -y
yum install gcc* -y --skip-broken
yum install cpan -y
yum install gcc php-devel php-pear libssh2 libssh2-devel -y --skip-broken
pecl install -f ssh2
touch /etc/php.d/ssh2.ini
echo extension=ssh2.so > /etc/php.d/ssh2.ini
/etc/init.d/httpd restart
php -m | grep ssh2
cpan -fi Net::SSH2
cpan -fi Parallel::ForkManager
yum groupinstall 'Development Tools' -y --skip-broken