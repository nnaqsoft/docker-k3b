#!/bin/sh
#
# Launch gcdmaster inside the noVNC desktop provided by jlesage/baseimage-gui.
#
# gcdmaster is a GTK app that expects $HOME to be writable so it can store its
# settings. Point HOME at the persisted /config volume so preferences survive
# container restarts.
#
export HOME=/config

exec /usr/bin/gcdmaster
