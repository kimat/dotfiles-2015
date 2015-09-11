# Finally use xcape to cause the space bar to generate a space when tapped.
pkill xcape
xcape -e "#65=space;Control_L=Escape"
#xcape -e "#65=space;#61=ISO_Level3_Shift|2;Control_L=Escape"
#xcape -t 1000 -d -e "Control_R=Escape;Shift_R=ISO_Level3_Shift|equal"
#xcape -e "#65=space;#61=equal;Control_R=Escape"
#xcape -e "#65=space;Shift_R=ISO_Level3_Shift|equal;Control_R=Escape"
#xcape -d -e "Control_R=Escape;=equal"

# if capslock still get triggered 
# setxkbmap -option ctrl:nocaps
