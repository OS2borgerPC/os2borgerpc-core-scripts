#!/usr/bin/env sh

# Adds/Removes programs from the launcher (menu) in Ubuntu 20.04
# Author: mfm@magenta.dk
#
# Arguments:
# 1: Use a boolean. If unchecked, the script removes the given program shortcut.
# 2: The name of the program to add/remove.
# 3: The position at which to add the program. 0 means at the end.

ADD=$1
PROGRAM=$2
POSITION=${3:-0}

CONFIG="/etc/dconf/db/os2borgerpc.d/02-launcher-favorites"

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "Dette script er ikke designet til at blive anvendt på en kiosk-maskine."
  exit 1
fi

if [ -f "/var/lib/snapd/desktop/applications/${PROGRAM}_$PROGRAM.desktop" ]; then
  PROGRAM="${PROGRAM}_$PROGRAM"
fi

if [ "$ADD" = "True" ]; then

  # Remove existing copies and add the program at the specified position.
  # Position 0 or a position beyond the available entries means at the end.
  awk -v program="'$PROGRAM.desktop'" -v position="$POSITION" '
  /^favorite-apps=/ {
      line = $0

      sub(/^favorite-apps=\[/, "", line)
      sub(/\]$/, "", line)

      n = split(line, apps, ", ")

      # Remove existing copies of the program.
      count = 0
      for (i = 1; i <= n; i++) {
          if (apps[i] != program) {
              filtered[++count] = apps[i]
          }
      }

      # Position 0 or a position beyond the list means at the end.
      if (position == 0 || position > count) {
          filtered[++count] = program
      } else {
          # Make room at the requested position.
          for (i = count; i >= position; i--) {
              filtered[i + 1] = filtered[i]
          }

          filtered[position] = program
          count++
      }

      printf "favorite-apps=["
      for (i = 1; i <= count; i++) {
          printf "%s%s", (i > 1 ? ", " : ""), filtered[i]
      }
      print "]"

      next
  }

  { print }
  ' "$CONFIG" > "$CONFIG.tmp"

  mv "$CONFIG.tmp" "$CONFIG"

else

  # Remove the program specified above from the menu/launcher.
  sed --in-place \
    --expression "s/\['$PROGRAM.desktop', /\[/" \
    --expression "s/, '$PROGRAM.desktop'//g" \
    "$CONFIG"

fi

dconf update