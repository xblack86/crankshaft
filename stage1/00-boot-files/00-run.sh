#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/dt-blob.bin "${ROOTFS_DIR}/boot/overlays"
install -m 644 files/goodix-7-acme.dtbo "${ROOTFS_DIR}/boot/overlays"
