#!/usr/bin/env bash

set -x

CHROME_DEFAULTS_POLICY="/etc/opt/chrome/policies/managed/os2borgerpc-defaults.json"
SEARCH_POLICY="/etc/opt/chrome/policies/managed/os2borgerpc-search-provider.json"

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "This computer is an OS2borgerPC Kiosk. Exiting without doing anything."
  exit 0
fi

if [ -f "$CHROME_DEFAULTS_POLICY" ]; then
  cat > "$SEARCH_POLICY" <<- END
{
    "DefaultSearchProviderEnabled": true,
    "DefaultSearchProviderSearchURL": ""
}
END
  echo "Set default search provider for Chrome to Google (the previous default for Chrome)."
else
  echo "Chrome is not installed. Exiting without doing anything."
  exit 0
fi