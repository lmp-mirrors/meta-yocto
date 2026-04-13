POSTFUNCS = ""
POSTFUNCS:genericarm64 = "reduce_initrd_size"

PATHS_TO_REMOVE = ""
# these kernel modules are not needed for rootfs mount from local mass storage
# and can be loaded from main rootfs by udev
PATHS_TO_REMOVE:genericarm64 = "\
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound \
"

do_rootfs[postfuncs] += "${POSTFUNCS}"
reduce_initrd_size () {
    if [ -n "${PATHS_TO_REMOVE}" ]; then
        rm -rf ${PATHS_TO_REMOVE}
    fi
}

