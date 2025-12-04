#!/bin/sh

### BEGIN INIT INFO
# Provides:          web-service-files-axum
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Web service files axum
# Description:       Web service example that provides a files function that is implemented via Rust Axum
### END INIT INFO

case "$1" in
  start)
    echo "Start web-service-files-axum"
    PORT=10003 /opt/web-service-files-axum/target/release/web-service-files-axum
    ;;
  stop)
    echo "Stop web-service-files-axum"
    pgrep '[w]eb-service-files-axum' | xargs kill
    ;;
  *)
    echo "Usage: /etc/init.d/web-service-files-axum {start|stop}"
    exit 1
    ;;
esac

exit 0
