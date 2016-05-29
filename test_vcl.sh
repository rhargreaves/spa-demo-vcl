#!/bin/bash
VTC_FILE=$1
VCL_FILE=$2
CURRENT_DIR=$(pwd)

sed -e '/# INSERT_VCL_HERE/ r ${VCL_FILE}' -e 's/# INSERT_VCL_HERE//' ${VTC_FILE} > test.vtc.tmp

docker run -i -v ${CURRENT_DIR}:/opt/varnish/tests roberthargreaves/varnishtest varnishtest /opt/varnish/tests/test.vtc.tmp