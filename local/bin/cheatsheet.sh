
#!/bin/bash
awk '/^[a-z]/ && last {print $0,"	",last} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc | column -t -s $'	'  | rofi -dmenu -i -no-show-icons -width 1000
