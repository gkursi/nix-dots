#!/usr/bin/env sh

# This i3status wrapper allows to add custom information in any position of the statusline
# It was developed for i3bar (JSON format)

# The idea is to define "holder" modules in i3status config and then replace them

# In order to make this example work you need to add
# order += "tztime holder__hey_man"
# and 
# tztime holder__hey_man {
#        format = "holder__hey_man"
# }
# in i3staus config 

# Don't forget that i3status config should contain:
# general {
#   output_format = i3bar
# }
#
# and i3 config should contain:
# bar {
#   status_command exec /path/to/this/script.sh
# }

# Make sure jq is installed
# That's it

# You can easily add multiple custom modules using additional "holders"

# http://stempell.com/2009/08/rechnen-in-bash/
round() {
  echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
};

function update_holder {
  local instance="$1"
  local replacement="$2"
  echo "$json_array" | jq --argjson arg_j "$replacement" "(.[] | (select(.instance==\"$instance\"))) |= \$arg_j" 
}

function remove_holder {
  local instance="$1"
  echo "$json_array" | jq "del(.[] | (select(.instance==\"$instance\")))"
}

function hey_man {
  local artist title json
  artist="$(playerctl metadata artist)"
  title="$(playerctl metadata title)"
  json="$(jq -n --arg text "$artist - $title" '{full_text: $text, markup: "none"}')"
  json_array="$(update_holder holder__hey_man "$json")"
}

i3status | (read line; echo "$line"; read line ; echo "$line" ; read line ; echo "$line" ; while true
do
  read line
  json_array="$(echo $line | sed -e 's/^,//')"
  hey_man
  echo ",$json_array" 
done)
