FROM centos:7

# Install a puppet agent
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm && yum install -y puppet-agent

# Install the latest PDK
RUN rpm -Uvh 'https://pm.puppetlabs.com/cgi-bin/pdk_download.cgi?dist=el&rel=7&arch=x86_64&ver=latest'

# Also want the linter, so we need to be able to use the path to puppet's bins
ADD puppet-agent-bins.sh /etc/profile.d/puppet-agent-bins.sh

# Install the linter 
RUN /opt/puppetlabs/puppet/bin/gem install puppet-lint yaml-lint