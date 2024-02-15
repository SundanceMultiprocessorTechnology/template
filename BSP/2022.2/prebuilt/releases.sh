#! /bin/bash
rm ./boot/*
rm ./firmware/*
rm ./petalinux/*
rm ./software/baremetal/*
rm ./software/linux/*
cp ../boot/BOOT.bin ./boot
cp ../firmware/*.runs/impl_1/*.bit ./firmware
cp ../firmware/*.xsa ./firmware
cp ../petalinux/images/linux/* ./petalinux
find ../software/baremetal -type f | grep -i ".*.elf$"  | xargs -I '{}' cp '{}' ./software/baremetal
find ../software/linux -type f -executable  | xargs -I '{}' cp '{}' ./software/linux/


