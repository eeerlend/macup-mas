#!/bin/bash

function install_or_upgrade_brew_package {
  local package=$1
	if brew ls --versions "$package" >/dev/null; then
		if (brew outdated | grep "$package" > /dev/null); then 
      brew upgrade "$package"; 
    else 
      report_from_package " $package is already up to date"; 
    fi
  else
    report_from_package "$package being installed"
    HOMEBREW_NO_AUTO_UPDATE=1 brew install "$package"
  fi
}

# Install mas-cli (Mac App Store Cli)
install_or_upgrade_brew_package "mas"

# Upgrade outdated packages
mas upgrade

# Install mas-cli (Mac App Store Cli)
# todo: check if array is declared up front!
# shellcheck disable=SC2154
for ((i=0; i<${#macup_mas_apps[@]}; ++i)); do
	mas install "${macup_mas_apps[i]}"
done
