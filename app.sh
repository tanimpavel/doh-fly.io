#!/bin/bash

#coredns -conf /app/Corefile &
dnsdist -C /app/dnsdist.conf --supervised &
unbound -c /app/unbound.conf &
unbound -c /app/unbound2.conf &

wait -n
exit $?
