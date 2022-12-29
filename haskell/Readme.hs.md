# Haskell

This Folder Contains Code used for [https://code.golf/](Code Golf), written in Haskell.

## File Outline

Each .hs file contains readable versions of the code, as well as the final submission.
Only the code between `--BEGIN--` and `--END--` in each file was submitted to the site.

## Compilation

Each file has been tested with the code.golf GHC version (9.0.2 as of the time of writing), as well as on my own system:

```sh
$ uname -r
5.15.79.1-microsoft-standard-WSL2
$ cat /etc/os-release | egrep '^(VERSION|NAME)='
NAME="Ubuntu"
VERSION="20.04 LTS (Focal Fossa)"
$ ghc --version
The Glorious Glasgow Haskell Compilation System, version 9.4.2
```
