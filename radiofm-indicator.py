#!/usr/bin/env python

import gobject
import gtk
import appindicator
import os
from subprocess import Popen

vlc = None
button = None

def toggleState(w, buf):
  global vlc
  global button
  if vlc == None:
    print "Lunching VLC"
    vlc = Popen(["cvlc", "rtmp://radio-rr.stv.livebox.sk:80/stv-radio/_definst_/fm_128.stream"])
    button.get_child().set_text("Stop")
  else:
    print "Terminating VLC"
    vlc.terminate()
    vlc.wait()
    vlc = None
    button.get_child().set_text("Play")

if __name__ == "__main__":
  ind = appindicator.Indicator ("radio_fm_indicator", # app id
                              "radio", # icon name, without extension
                              appindicator.CATEGORY_APPLICATION_STATUS,
                              "/usr/share/icons/gnome/48x48/apps", # path to icon
                              )
  ind.set_status (appindicator.STATUS_ACTIVE)

  global menu
  menu = gtk.Menu()

  button = gtk.MenuItem("Play")
  menu.append(button)
  button.connect("activate", toggleState, "")
  button.show()

  ind.set_menu(menu)

  gtk.main()
