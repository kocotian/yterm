#        _                                         __ _       
#  _   _| |_ ___ _ __ _ __ ___     ___ ___  _ __  / _(_) __ _ 
# | | | | __/ _ \ '__| '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |
# | |_| | ||  __/ |  | | | | | | | (_| (_) | | | |  _| | (_| |
#  \__, |\__\___|_|  |_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
#  |___/                                                |___/ 

# Default shell: *changing shell can make problems with app*
#!/bin/bash

# Silence errors. Comment to get more informations.
# (louder output while command syntax is wrong)
exec 2> /dev/null

### Default video output ###

# Default player for non-terminal output:
NPLAYER="mplayer"

# Default framedropping for non-terminal output.
# Uncomment to get harder framedrop

# NFRAMEDROP="hard"

# Quiet output on non-terminal video output.
# Comment to get more informations
NQUIET="really-"

### Terminal ###

# Default player for terminal output:
TPLAYER="mplayer"

# Terminal output
TOUT="caca"

# Quiet output on terminal video output.
# Comment to get more informations
TQUIET="really-"

# Default framedropping for terminal output.
# Comment to get softer framedrop

TFRAMEDROP="hard"

### Audio-only ###

# Default audio player:
APLAYER="mplayer"

# Quiet output on audio output.
# Comment to get more informations
AQUIET="really-"

