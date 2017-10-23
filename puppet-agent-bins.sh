# Add /opt/puppetlabs/puppet/bin to the path for sh compatible users

if ! echo $PATH | grep -q /opt/puppetlabs/puppet/bin ; then
  export PATH=$PATH:/opt/puppetlabs/puppet/bin
fi