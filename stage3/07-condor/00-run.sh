#!/bin/bash -e


# /usr/bin
install -d "${ROOTFS_DIR}/usr/bin"
install -m 755 files/usr/bin/gpio-watch                                      "${ROOTFS_DIR}/usr/bin/gpio-watch"

# /opt/condor
install -d "${ROOTFS_DIR}/opt/condor"
install -m 755 files/opt/condor/gpio-watch-start.sh                          "${ROOTFS_DIR}/opt/condor/gpio-watch-start.sh"
install -m 755 files/opt/condor/brightness                                   "${ROOTFS_DIR}/opt/condor/brightness"

# /opt/condor/gpio-watch-dir
install -d "${ROOTFS_DIR}/opt/condor/gpio-watch-dir"
install -m 755 files/opt/condor/gpio-watch-dir/29                            "${ROOTFS_DIR}/opt/condor/gpio-watch-dir/29"

# /etc
install -d "${ROOTFS_DIR}/etc"
install -m 755 files/etc/rc.local                                            "${ROOTFS_DIR}/etc/rc.local"


# /etc
install -d "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/pigpiod.service                       "${ROOTFS_DIR}/etc/systemd/system/pigpiod.service"

