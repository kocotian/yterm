# yterm
Terminal Youtube Client by Kocotian

# Installation
Go to directory with yterm files and write:
```bash
# make install
```

# Dependencies
yterm are using mplayer to work properly. If you don't have mplayer install it:

## Ubuntu:
```bash
# apt install mplayer
```

## Debian:
```bash
# apt-get install mplayer
```

## Arch:
```bash
# pacman -S mplayer
```
# Usage:
	yterm -w <id>                 Watch by id
	yterm -wq <quality> <id>      Watch by id with selected quality (h for high or l for low)
	
	yterm -s <phrase>             Watch the video searched by phrase
	yterm -sq <quality> <phrase>  Watch the video searched by phrase with selected quality

	Add 't' to the option to watch video in terminal, for example:
	yterm -st <phrase>            Watch the video by phrase in terminal
	yterm -wqt <quality> <phrase> Watch by id with selected quality in terminal
