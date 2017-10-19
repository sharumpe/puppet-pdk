FROM centos:7

# Install the latest 
RUN rpm -Uvh 'https://pm.puppetlabs.com/cgi-bin/pdk_download.cgi?dist=el&rel=7&arch=x86_64&ver=latest'
