# radio_fm-indicator

Unity indicator for Radio_FM stream

## Requisites
* Python
* VLC media player

## Installation
Run ./install.sh as root.

## Uninstallation
Run ./uninstall.sh as root.

## Usage
You will have a new icon in notification area that looks like radio. Click on it and click start or stop. It's really that easy.

## How it works
Official Flash-based [player](http://fm.rtvs.sk/player/) uses RTMP audio streaming. You can find URL in variable named videoID under &lt;object id="radioPlayer"&gt; tag. The script then just starts vlc in console mode with this URL. You can also use this method with other internet radios.

## Copyright
* Used indicator template by [Neil Jagdish Patel](mailto:neil.patel@canonical.com) and [Jono Bacon](mailto:jono@ubuntu.com) from [wiki.ubuntu.com](https://wiki.ubuntu.com/DesktopExperienceTeam/ApplicationIndicators#Python_version).
* Radio icon is U+1F4FB character from [Symbola](http://users.teilar.gr/~g1951d/) font by [George Douros](mailto:g1951d@teilar.gr).
* The rest is mine: Copyright (c) 2014 Matej Krajčovič
