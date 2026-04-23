COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
COMPATIBLE_MACHINE:genericx86 = "genericx86"
COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"

KMACHINE:beaglebone-yocto ?= "beaglebone"
KMACHINE:genericx86 ?= "common-pc"
KMACHINE:genericx86-64 ?= "common-pc-64"

KBRANCH:genericarm64 ?= "v6.18/standard/genericarm64"
SRCREV_machine:genericarm64 ?= "ab52f02d7b75097a1517e65897b379b1d47d316c"
