#!/bin/sh

#maildomain=localhost.localdomain

cat > /etc/supervisor/conf.d/supervisord.conf <<EOF
[supervisord]
nodaemon= true

[program:apache2]
command=apache2-foreground

EOF

[ -x /usr/local/sbin/extra/startup ] && /usr/local/sbin/extra/startup

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
