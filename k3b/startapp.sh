#!/bin/sh
#
# Launch K3b inside the noVNC desktop provided by jlesage/baseimage-gui.
#
# K3b is a KDE/Qt app and expects a D-Bus session bus to be present; without one
# it tends to hang or log "Could not connect to D-Bus" on startup. dbus-run-session
# starts a private session bus that lives for as long as K3b runs.
#
# HOME points at the persisted /config volume so K3b settings survive restarts.
#
export HOME=/config

exec dbus-run-session -- /usr/bin/k3b
