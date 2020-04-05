#!/bin/bash

set -e

find . -type f -exec sed -i -r '/^\/\*\w{5}/,/^\/\*\w{5}/d' {} \;

####
#  This removes following pattern from files in current directory and subdirectories. For now, seen in wordpress config/index files
#
#  /*8dcf7*/
#
#  @include "\057ww\167/w\145bv\157l6\057kf\057vk\157su\166wx\1651r\1....."
#
#  /*8dcf7*/
####
