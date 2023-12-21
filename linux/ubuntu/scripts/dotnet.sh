#!/bin/bash -e
################################################################################
##  File:  dotnet.sh
##  Desc:  Installs dotnet CLI
##         Must be run as non-root user after homebrew
################################################################################

# Install dotnet CLI
. /imagegeneration/installers/helpers/etc-environment.sh

printf "\n\t🐋 Installing .NET 🐋\t\n"
#apt-get install -y dotnet-sdk-7.0 dotnet-sdk-6.0 dotnet-runtime-7.0 dotnet-runtime-6.0
curl -LO https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh
cat ./dotnet-install.sh
bash ./dotnet-install.sh --install-dir /opt/hostedtoolcache/dotnet --no-path --channel STS  # net 7.0
bash ./dotnet-install.sh --install-dir /opt/hostedtoolcache/dotnet --no-path --channel LTS  # net 6.0
rm ./dotnet-install.sh
export DOTNET_ROOT=/opt/hostedtoolcache/dotnet
export PATH=$PATH:$DOTNET_ROOT
{
  echo "DOTNET_ROOT=${DOTNET_ROOT}"
} | tee -a /etc/environment

prependEtcEnvironmentPath "${DOTNET_ROOT}"

which dotnet
dotnet --version
dotnet --info
#dotnet --list-sdks
#dotnet --list-runtimes
printf "\n\t🐋 Installed .NET 🐋\t\n"


printf "\n\t🐋 Installing .NET Tools 🐋\t\n"
dotnet tool install -g csharpier

export DOTNET_TOOLS_ROOT=/root/.dotnet/tools

cat << \EOF >> ~/.bash_profile
# Add .NET Core SDK tools
export DOTNET_TOOLS_ROOT=/root/.dotnet/tools
export PATH="$PATH:${DOTNET_TOOLS_ROOT}"
EOF

{
  echo "DOTNET_TOOLS_ROOT=${DOTNET_TOOLS_ROOT}"
  echo "PATH=\$PATH:\$DOTNET_TOOLS_ROOT"
} | tee -a /etc/environment

printf "\n\t🐋 Installed .NET Tools 🐋\t\n"
