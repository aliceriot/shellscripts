#Shell scripts 

##some small scripts it might be handy to have on multiple machines:

Note: this folder (~/Dropbox/shellscripts) is added to $PATH in my .bashrc

* gmail.py:
    * this does a simple gmail unread messages notification in my dzen/conky panel
    * my .conkyrc expects this file to be in ~/scripts
    * needs acct info, so copy (no symlink) file to ~/scripts and edit

* hlwmexternaldesk.sh:
    * adds my external monitor as a second screen next to my laptop screen
    * uses xrandr and hlwmclient
    * added to $PATH in .bashrc so can just run it

* hlwmremoveexternal.sh:
    * removes external monitor with xrandr
    * does hc detect_monitors to remove the screen for hlwm

* nvpy.sh:
    * runs nvpy in the directory in which it lives (~/Code/github/nvpy/nvpy) with python2

* sysinfo.py:
    * attempted little clickable popup for dzen/conky, sort of abandoned

* btkb.sh:
    * powers up my bluetooth module
    * adds by bluetooth keyboard (already paired with bluetoothctl) using htitools
    * Note that keyboard needs to be on for it to connect
