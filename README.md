# Utilities

This repository contains some utility scripts which I found useful in my workflow.

The scripts are tested and used on Linux; they might or might not work on other operating systems.

They can be run directly from the location where the repository is checked out. For convenience, there is also a
Makefile which provides an `install` target.
To install the scripts on your machine, simply call `make install` in the repository root.

## focus-or-start
Utility to either focus a program on an x-window system if it is already started, or start it otherwise.

If the program is started by the script, it runs in the background to have a similar experience to the case when the
program is not started.

### Dependencies
The script depends on [wmctrl](https://sites.google.com/site/tstyblo//wmctrl/), which need to be installed on the target system.

### Usage
    focus-or-start PROGRAM [ARGS...]
where
* `PROGRAM` is the path of the program to start
* `ARGS` are possible arguments to the program. They will only be evaluated if the program is started by `focus-or-start`; if the program is already running, they will be ignored.

## resize-images
Batch script to resize images in a directory. Puts the resized images into a sub directory.

### Usage
    resize-images [-S SOURCE] [-T TARGET] [-f FILE] [-s SIZE] [-h]

where
 * `-S SOURCE` Specifies the source folder to read from. Default is the current directory.
 * `-T TARGET`   Specifies the target directory. Default is `Publish`
 * `-f FILE`     Specifies a file to process. If not given, `<TARGET>.txt` (from the target name, see above) is used if it exists; if this file does not exist, `resize.txt` is used. If resize.txt file does
not exist either, then all files matching `*.JPG` or `*.jpg` are processed.
 * `-f` Prints this help text and exits.
 * `-s SIZE` Resizes the images to the specified size. `SIZE` must be in the form `<WIDTH>x<HEIGHT>`. Default is `2048x1536`.

### Dependencies
To resize the images, the `convert` command of [imagemagick](https://www.imagemagick.org/) is used.
