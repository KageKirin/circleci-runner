#!/bin/bash
# shellcheck disable=SC1091,SC2174,SC2016

set -Eeuo pipefail

. /etc/environment

printf "\n\t🐋 Installing Metagen 🐋\t\n"
npm install -g https://github.com/kagekirin/metagen-js/tarball/main
which metagen
metagen --version
metagen --help
