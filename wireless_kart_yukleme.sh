#!/bin/bash
# BCM43142 üzerinde denendi ve sonuç alındı

# Debian 9 "Stretch" i repolara ekle
sudo echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" > /etc/apt/source.list

sudo apt-get update

# broadcomla alakalı paketleri ve mevcur linux header ve imageini yükle
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

# bu modülleri ekle
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
sudo modprobe wl
