#!/bin/bash

cp -rf yum /opt/
cat>>/etc/yum.repos.d/local.repo<<EOF
[local]
name=local for centos7
baseurl=file:///opt/yum
enable=1
gpgcheck=0
priority=1
EOF

yum clean all
yum makecache
