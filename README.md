# Utilities

This repository contains some utility scripts which I found useful in my workflow.

The scripts are tested and used on Linux; they might or might not work on other operating systems.

They can be run directly from the location where the repository is checked out. For convenience, there is also a
Makefile which provides an `install` target.
To install the scripts on your machine, simply call `make install` in the repository root.

## focus-or-start
Utility to either focus a program on an x-window system if it is already started, or start it otherwise.

The script depends on `wmctrl`, which need to be installed on the target system.

If the program is started by the script, it runs in the background to have a similar experience to the case when the
program is not started.

### Usage
    focus-or-start PROGRAM [ARGS...]
Where
* `PROGRAM` is the path of the program to start
* `ARGS` are possible arguments to the program. They will only be evaluated if the program is started by
  `focus-or-start`; if the program is already running, they will be ignored.
