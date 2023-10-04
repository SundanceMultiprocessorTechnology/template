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


