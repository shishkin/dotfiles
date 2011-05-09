# dot-files

My collection of configuration files for Windows and Linux.

## Installation

The goal of this procedure is deploying configuration files between different 
machines while keeping settings in sync.

### Windows

Running the install.ps1 powershell script will create hard links for all files 
(or junction points for directories) found in the current directory. Existing 
links will be removed. NTFS is obviously required.

### Linux

TODO