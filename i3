# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

# Alt key
set $mod Mod1

# No titlebars
new_window 1pixel

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
#font pango:Monospace 8
#font pango:DejaVu Sans Mono 1o
#font pango:DejaVu Sans Mono, Terminus Bold Semi-Condensed 11
#font pango:Terminus 11px
font pango:System San Francisco Display 8

# Colours
  set $base00 #101218
  set $base01 #1f222d
  set $base02 #252936
  set $base03 #7780a1
  set $base04 #C0C5CE
  set $base05 #d1d4e0
  set $base06 #C9CCDB
  set $base07 #ffffff
  set $base08 #ee829f
  set $base09 #f99170
  set $base0A #ffefcc
  set $base0B #a5ffe1
  set $base0C #97e0ff
  set $base0D #97bbf7
  set $base0E #c0b7f9
  set $base0F #fcc09e

# Widow Colours
#                         border  background text    indicator
  client.focused          $base01 $base01    $base07 $base0F
  client.focused_inactive $base02 $base02    $base03 $base0F
  client.unfocused        $base02 $base02    $base03 $base0F
  client.urgent           $base02 $base08    $base00 $base0F

# Wallpaper
exec feh --bg-scale /home/lee/bg.png

# Assign Workspace Variables
set $WS1 
set $WS2 
set $WS3 🎥
set $WS4 
set $WS5 
set $WS6 
set $WS7 
set $WS8 
set $WS9 

# Switch To Workspace
bindsym $mod+1 workspace $WS1
bindsym $mod+2 workspace $WS2
bindsym $mod+3 workspace $WS3
bindsym $mod+4 workspace $WS4
bindsym $mod+5 workspace $WS5
bindsym $mod+6 workspace $WS6
bindsym $mod+7 workspace $WS7
bindsym $mod+8 workspace $WS8
bindsym $mod+9 workspace $WS9

# Move Focused Container To Workspace
bindsym $mod+Shift+1 move container to workspace $WS1

bindsym $mod+Shift+2 move container to workspace $WS2
bindsym $mod+Shift+3 move container to workspace $WS3
bindsym $mod+Shift+4 move container to workspace $WS4
bindsym $mod+Shift+5 move container to workspace $WS5
bindsym $mod+Shift+6 move container to workspace $WS6
bindsym $mod+Shift+7 move container to workspace $WS7
bindsym $mod+Shift+8 move container to workspace $WS8
bindsym $mod+Shift+9 move container to workspace $WS9

# Assign apps to workspaces
assign [class="Firefox"] $WS2

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminator terminal
bindsym $mod+Return exec terminator

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. D$

# resize window (you can also use the mouse for that)
mode "resize" {

        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command  i3status
        position        top
        colors {
                separator $base03
                background $base01
                statusline $base05
                #                        border  background text
                focused_workspace  $base01 $base01    $base07
                active_workspace   $base01 $base02    $base03
                inactive_workspace $base01 $base01    $base03
                urgent_workspace   $base01 $base01    $base08
        }
}
