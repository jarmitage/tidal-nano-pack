-- Nano Pack OSC scheduler init and reset
:{
let
  npinit = once
    $ stack [
        npclock 0 # t0,
        npclock 0 # t1,
        npclock 0 # t2,
        npclock 0 # t3,
        npclock 0 # t4,
        npclock 0 # t5,
        npclock 0 # t6,
        npclock 0 # t7
      ]
:}

:{
let
  npreset =
    do
      resetCycles
      npinit
:}
