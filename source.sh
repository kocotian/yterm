#        _                                                     
#  _   _| |_ ___ _ __ _ __ ___    ___  ___  _   _ _ __ ___ ___ 
# | | | | __/ _ \ '__| '_ ` _ \  / __|/ _ \| | | | '__/ __/ _ \
# | |_| | ||  __/ |  | | | | | | \__ \ (_) | |_| | | | (_|  __/
#  \__, |\__\___|_|  |_| |_| |_| |___/\___/ \__,_|_|  \___\___|
#  |___/                                                       

export CACA_DRIVER=ncurses
echo "YTerm 1.1 by Kocotian"

# watch by id

if [ $1 == '-w' ]
then
	echo "Playing from: https://alphayt.pl/yterm/watch?v=$2&q=h"
	$NPLAYER -${NQUIET}quiet -framedrop "https://alphayt.pl/yterm/watch?v=$2&q=h"
elif [ $1 == '-wq' ]
then
	if [ $2 == 'l' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/watch?v=$3&q=l"
		$NPLAYER -${NQUIET}quiet -framedrop "https://alphayt.pl/yterm/watch?v=$3&q=l"
	elif [ $2 == 'h' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/watch?v=$3&q=h"
		$NPLAYER -${NQUIET}quiet -framedrop "https://alphayt.pl/yterm/watch?v=$3&q=h"
	fi
elif [ $1 == '-wt' ]
then
	echo "Playing from: https://alphayt.pl/yterm/watch?v=$2&q=l"
	$TPLAYER -${TQUIET}quiet -hardframedrop -vo $TOUT "https://alphayt.pl/yterm/watch?v=$2&q=l"
elif [ $1 == '-wqt' ]
then
	if [ $2 == 'l' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/watch?v=$3&q=l"
		$TPLAYER -${TQUIET}quiet -hardframedrop -vo $TOUT "https://alphayt.pl/yterm/watch?v=$3&q=l"
	elif [ $2 == 'h' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/watch?v=$3&q=h"
		$TPLAYER -${TQUIET}quiet -hardframedrop -vo $TOUT "https://alphayt.pl/yterm/watch?v=$3&q=h"
	fi

# search

elif [ $1 == '-s' ]
then
	echo "Playing from: https://alphayt.pl/yterm/search?s=${2//\ /%20}&q=h"
	$NPLAYER -${NQUIET}quiet -${NFRAMEDROP}framedrop "https://alphayt.pl/yterm/search?s=${2//\ /%20}&q=h"
elif [ $1 == '-sq' ]
then
	if [ $2 == 'l' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=l"
		$NPLAYER -${NQUIET}quiet -${NFRAMEDROP}framedrop "https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=l"
	elif [ $2 == 'h' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=h"
		$NPLAYER -${NQUIET}quiet -${NFRAMEDROP}framedrop "https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=h"
	fi
elif [ $1 == '-st' ]
then
	echo "Playing from: https://alphayt.pl/yterm/search?s=${2//\ /%20}&q=l"
	$TPLAYER -${TQUIET}quiet -${TFRAMEDROP}framedrop -vo $TOUT "https://alphayt.pl/yterm/search?s=${2//\ /%20}&q=l"
elif [ $1 == '-sqt' ]
then
	if [ $2 == 'l' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=l"
		$TPLAYER -${TQUIET}quiet -${TFRAMEDROP}framedrop -vo $TOUT "https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=l"
	elif [ $2 == 'h' ]
	then
		echo "Playing from: https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=h"
		$TPLAYER -${TQUIET}quiet -${TFRAMEDROP}framedrop -vo $TOUT "https://alphayt.pl/yterm/search?s=${3//\ /%20}&q=h"
	fi
else
	echo "Usage:
	-w <id>                 Watch by id
	-wq <quality> <id>      Watch by id with selected quality (h for high or l for low)
	
	-s <phrase>             Watch the video searched by phrase
	-sq <quality> <phrase>  Watch the video searched by phrase with selected quality

	Add 't' to the option to watch video in terminal, for example:
	-st <phrase>            Watch the video by phrase in terminal
	-wqt <quality> <phrase> Watch by id with selected quality in terminal"

fi

#  _   _                           _ 
# | |_| |__   ___    ___ _ __   __| |
# | __| '_ \ / _ \  / _ \ '_ \ / _` |
# | |_| | | |  __/ |  __/ | | | (_| |
#  \__|_| |_|\___|  \___|_| |_|\__,_|
#
