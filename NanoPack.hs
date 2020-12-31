-- Nano Pack Targets
:{
oPorts = [ 10000, 10001, 10002, 10003, 10004, 10005, 10006, 10007 ]
npTarget0 = Target {oName     = "Nano Pack t0",
                    oAddress  = "127.0.0.1",
                    oPort     = oPorts!!0,
                    oLatency  = 0.5,
                    oWindow   = Nothing,
                    oSchedule = Pre BundleStamp
                   }
npTarget1 = npTarget0 { oName = "Nano Pack t1", oPort = oPorts!!1 }
npTarget2 = npTarget0 { oName = "Nano Pack t2", oPort = oPorts!!2 }
npTarget3 = npTarget0 { oName = "Nano Pack t3", oPort = oPorts!!3 }
npTarget4 = npTarget0 { oName = "Nano Pack t4", oPort = oPorts!!4 }
npTarget5 = npTarget0 { oName = "Nano Pack t5", oPort = oPorts!!5 }
npTarget6 = npTarget0 { oName = "Nano Pack t6", oPort = oPorts!!6 }
npTarget7 = npTarget0 { oName = "Nano Pack t7", oPort = oPorts!!7 }
:}

-- Nano Pack Target parameters and shortcut
:{
let _npT0 = [("target0", Nothing), ("ignore", Just $ VF 0)]
    _npT1 = [("target1", Nothing), ("ignore", Just $ VF 0)]
    _npT2 = [("target2", Nothing), ("ignore", Just $ VF 0)]
    _npT3 = [("target3", Nothing), ("ignore", Just $ VF 0)]
    _npT4 = [("target4", Nothing), ("ignore", Just $ VF 0)]
    _npT5 = [("target5", Nothing), ("ignore", Just $ VF 0)]
    _npT6 = [("target6", Nothing), ("ignore", Just $ VF 0)]
    _npT7 = [("target7", Nothing), ("ignore", Just $ VF 0)]
    _target0 = pF "target0"
    _target1 = pF "target1"
    _target2 = pF "target2"
    _target3 = pF "target3"
    _target4 = pF "target4"
    _target5 = pF "target5"
    _target6 = pF "target6"
    _target7 = pF "target7"
    t0 = _target0 1
    t1 = _target1 1
    t2 = _target2 1
    t3 = _target3 1
    t4 = _target4 1
    t5 = _target5 1
    t6 = _target6 1
    t7 = _target7 1
:}

-- OSC Specs, block mappings, control & misc
:script src/Specs.hs
:script src/Blocks/Blocks.hs

-- Nano Pack OSC Map
:{
npOscMap = [(npTarget0, npOSCSpec0),
            (npTarget1, npOSCSpec1),
            (npTarget2, npOSCSpec2),
            (npTarget3, npOSCSpec3),
            (npTarget4, npOSCSpec4),
            (npTarget5, npOSCSpec5),
            (npTarget6, npOSCSpec6),
            (npTarget7, npOSCSpec7)]
:}

-- Nano Pack + SuperDirt OSC Map
:{
npSDOscMap = npOscMap++[(superdirtTarget, [superdirtShape])]
:}
