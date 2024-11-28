# dotfiles
Dotfiles managed through STOW

##TODO: 
install script for pacages?

## Prerequisites:
- Git
- Stow

## Install process:
- Clone this repo
  Note that this repo should be cloned into the home folder to work properly. 
  Otherwise the target dir (the direct parent) will not be correct
  after the first stow the .stowrc containing `target=~` will have been added as well as a dotfile, making it safe to move the dotfiles dir to another location. 
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
