#!/bin/bash
make mrproper
make headers

cp -rv usr/include/* /tools/include
