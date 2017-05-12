This is a simple bash script that would control the screen brightness. 
Tested on Arch Linux with intel card which manages the brightness.
See https://wiki.archlinux.org/index.php/Backlight for more details.

Before you can use it, execute: (this config enables to use the script without to always enter the password)

```
sudo visudo
```
and add this line:

```
#sudo   ALL=(ALL) NOPASSWD: /ABSOLUTE_PATH/backlight.sh
```

Basic usage:
```
	backlight.sh 100	increase brightness
	backlight.sh -100 	decrease brightness
```
