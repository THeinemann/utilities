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
The script depends on `wmctrl`, which need to be installed on the target system.

### Usage
    focus-or-start PROGRAM [ARGS...]
Where
* `PROGRAM` is the path of the program to start
* `ARGS` are possible arguments to the program. They will only be evaluated if the program is started by
  `focus-or-start`; if the program is already running, they will be ignored.

## resize-images
Batch script to resize images in a directory. Puts the resized images into a sub directory.

The script will read image filenames to process from a file, or process all image files in the current directory if
none is specified.

### Usage
    resize-images [SOURCE [TARGET]]

The script will process image files in the `SOURCE` directory; if `SOURCE` is not given, the current working directory
is used. Resized images will be put into the `TARGET` directory. If `TARGET` is not specified, `Publish` is used as
default target.

`resize-images` will process all images, unless either `TARGET.txt` (using the `TARGET` specified in the command line)
or `resize.txt` exists. In this case, the respective file is processed, where each line is interpreted as a file name
in the `SOURCE` directory.

Images are always resized to the format `2048x1536`. Currently, it is not possible to specify other formats.

### Dependencies
To resize the images, the `convert` command of [imagemagick](https://www.imagemagick.org/) is used.
