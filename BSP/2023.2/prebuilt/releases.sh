#! /bin/bash
rm ./boot/*
rm ./boot/standalone/*
rm ./firmware/*
rm ./petalinux/*
rm ./software/baremetal/*
rm ./software/baremetal_classic/*
rm ./software/linux/*
mkdir -p ./boot && cp ../boot/BOOT.bin ./boot
mkdir -p ./boot/standalone && cp ../boot/standalone/BOOT.bin ./boot/standalone
mkdir -p ./firmware && cp ../firmware/*.runs/impl_1/*.bit ./firmware
cp ../firmware/*.xsa ./firmware/
mkdir -p ./petalinux && cp ../petalinux/images/linux/*.elf ./petalinux
cp ../petalinux/images/linux/boot.scr ./petalinux
cp ../petalinux/images/linux/*.bit ./petalinux
cp ../petalinux/images/linux/image.ub ./petalinux
mkdir -p ./software/baremetal
mkdir -p ./software/baremetal_classic
mkdir -p ./software/linux
find ../software/baremetal -type f | grep -i ".*.elf$"  | xargs -I '{}' cp '{}' ./software/baremetal
find ../software/baremetal_classic -type f | grep -i ".*.elf$"  | xargs -I '{}' cp '{}' ./software/baremetal_classic
find ../software/linux -type f -executable  | xargs -I '{}' cp '{}' ./software/linux


