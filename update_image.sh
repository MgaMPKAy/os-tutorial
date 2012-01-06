#!/bin/bash

sudo mount floppy.img floppy
sudo cp kernel floppy
sudo umount floppy
