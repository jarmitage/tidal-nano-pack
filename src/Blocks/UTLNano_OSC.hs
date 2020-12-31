-- UTL-Nano OSC Note
:{
let notechannel = notechan
    notech      = notechan
    notec       = notechan
    notedel     = notedelay
    noted       = notedelay
    notex       = noteexp
:}

-- UTL-Nano OSC Control
:{
let ctl c ch = control c # controlchannel ch
    ctl' c (#) ch = control c # controlchannel ch
:}

-- UTL-Nano OSC Clock (?)
:{
let clock = npclock 1
:}

-- UTL-Note channels
:{
let ch0 = notechan 0
    ch1 = notechan 1
    ch2 = notechan 2
    ch3 = notechan 3
    ch4 = notechan 4
    ch5 = notechan 5
    ch6 = notechan 6
    ch7 = notechan 7
    ch8 = notechan 8
    ch n = notechan n
:}

-- UTL-Note channels
:{
let ctl0 v = control v # controlchannel 0
    ctl1 v = control v # controlchannel 1
    ctl2 v = control v # controlchannel 2
    ctl3 v = control v # controlchannel 3
    ctl4 v = control v # controlchannel 4
    ctl5 v = control v # controlchannel 5
    ctl6 v = control v # controlchannel 6
    ctl7 v = control v # controlchannel 7
    ctl8 v = control v # controlchannel 8
:}
