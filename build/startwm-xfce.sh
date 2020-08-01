#!/bin/sh

if [ -r /etc/default/locale ]; then
  . /etc/default/locale
  export LANG LANGUAGE
fi

# Default
#. /etc/X11/Xsession

# XFCE
startxfce4