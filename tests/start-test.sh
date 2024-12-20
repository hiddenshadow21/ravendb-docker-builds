#!/bin/bash -ex

export _DEB_DEBUG=debug
package=$(find /deb -iname 'ravendb_*')
apt-get update
source /ravendb/test.sh
test_package_local "$package" || exit 1