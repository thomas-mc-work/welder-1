#!/usr/bin/env bash
# Launcher script to prepare all environment variables on the remote side.
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

module="$1"

. .welder/config-variables

export W=".welder/modules/${module}/files"

exec ".welder/${module}.sh"
