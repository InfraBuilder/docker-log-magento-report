#!/bin/bash

mkdir -p $REPORT_DIR

cat > /etc/incron.d/listen_report <<EOF
$REPORT_DIR IN_CLOSE_WRITE /usr/local/bin/display-report $REPORT_DIR \$#
EOF

exec $@
