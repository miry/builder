#!/bin/sh

exec 2> /var/log/rc.local.log # send stderr from rc.local to a log file
exec 1>&2

# Install K3S
curl -sfL https://get.k3s.io | K3S_CLUSTER_SECRET="%K3S_CLUSTER_SECRET%" sh -

rm -- "$0"

echo "Deleted current script"
