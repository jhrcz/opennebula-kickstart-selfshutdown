#!/bin/bash
set -x

variant="$1"

export HOME=/home/oneadmin

# opennebula dot.bashrc
# begin
export ONE_AUTH=$HOME/.one_auth
export ONE_XMLRPC=http://localhost:2633/RPC2
export PATH=$PATH:/sbin
export PATH=$PATH:/home/oneadmin/.gem/ruby/1.8/bin
# /end

id=$(onevm list | while read id rest ; do onevm show $id | grep -q ksinstaller-$variant.ks && echo $id ; done)

onevm saveas "$id" 1 scientific61-template-"$variant"-autosave-$(date +%Y%m%d-%H%M%S)
onevm shutdown "$id"
