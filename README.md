# dotfiles
Dotfiles managed through STOW

##TODO: 
install script for pacages?

## Prerequisites:
- Git
- Stow

## Install process:
- Clone this repo
- `cd` into the root of the repo; this is the Stow-root

### Install specific program dotfile:
To create sym-links for single (or multiple)
```
stow [programnames]
```
Remember this should be run in the stow root-dir.

### Install all program dotfiles:
For create sym-links for all program dotfiles
```
stow *
```
