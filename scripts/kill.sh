#!/usr/bin/env sh

echo 'The following command terminates the "spring boot / java" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when either'
echo '"startup-dev.sh" or "startup.sh" was executed.'
set -x
kill $(cat .pidfile)

