FROM centos:7

# Install any packages for development
RUN yum update -y \
    && yum upgrade -y \
    && yum install -y epel-release \
    && yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && yum install -y libpng-devel \
                      git \
                      vim \
                      httpd \
                      mod_ssl \
                      zip \
                      unzip \
                      php \
                      php-common \
                      composer \
    && yum --enablerepo=remi-php74 \
      install -y php php-cli \
        php-devel \
        php-common \
        php-mbstring \
        php-mysql \
        php-fpm \
        php-mcrypt \
        php-opcache \
        php-pdo \
        php-xml \
        php-json \
        php-ctype \
        php-zip \
        php-xdebug \
        php-pecl-imagick \
    && curl --silent --location https://rpm.nodesource.com/setup_12.x | bash - \
    && yum install -y nodejs \
    && yum install -y http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm  \
    && yum install -y mysql-community-client

# Enable httpd
RUN systemctl enable httpd

# Copy configulation file
ADD ./quiz.conf /etc/httpd/conf.d/quiz.conf
