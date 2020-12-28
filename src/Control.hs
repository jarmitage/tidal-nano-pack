-- UTL-Nano OSC output blocks
:{
let m0 = cF 0 "m0"
    m1 = cF 0 "m1"
    m2 = cF 0 "m2"
    m3 = cF 0 "m3"
    m4 = cF 0 "m4"
    m5 = cF 0 "m5"
    m6 = cF 0 "m6"
    m7 = cF 0 "m7"
    m8 = cF 0 "m8"
    m9 = cF 0 "m9"
    m10 = cF 0 "m10"
    m11 = cF 0 "m11"
    m12 = cF 0 "m12"
:}

:{
let patt0 = (cP "patt0")
    patt1 = (cP "patt1")
    patt2 = (cP "patt2")
    patt3 = (cP "patt3")
    patt4 = (cP "patt4")
    patt5 = (cP "patt5")
    patt6 = (cP "patt6")
    patt7 = (cP "patt7")
    patt8 = (cP "patt8")
    patt9 = (cP "patt9")
    patt10 = (cP "patt10")
    patt11 = (cP "patt11")
    patt12 = (cP "patt12")
:}

-- OSC triggering functions

-- import qualified Data.Vector as V

:{
capply condpat effectpat = every
    (fmap (\x -> if x > 0 then 1 else 0)
    (discretise 1 condpat)) (effectpat) -- Btw. you can remove discretise

capply' name effectpat = capply (cF 0 name) (const $ effectpat)

capply'' condpat pvector = condpat >>= \ i -> pvector V.! (mod i (V.length pvector)) -- use this: let pvector = V.fromList [intro1, intro2, intro3, intro4], see https://club.tidalcycles.org/t/trigger-tidal-code-with-midi/2168/9

capply0 patt = capply (cF 0 "m0") patt
capply1 patt = capply (cF 0 "m1") patt
capply2 patt = capply (cF 0 "m2") patt
capply3 patt = capply (cF 0 "m3") patt
capply4 patt = capply (cF 0 "m4") patt
capply5 patt = capply (cF 0 "m5") patt
capply6 patt = capply (cF 0 "m6") patt
capply7 patt = capply (cF 0 "m7") patt
capply8 patt = capply (cF 0 "m8") patt

play0 patt = capply m0 (const $ patt) $ silence
play1 patt = capply m1 (const $ patt) $ silence
play2 patt = capply m2 (const $ patt) $ silence
play3 patt = capply m3 (const $ patt) $ silence
play4 patt = capply m4 (const $ patt) $ silence
play5 patt = capply m5 (const $ patt) $ silence
play6 patt = capply m6 (const $ patt) $ silence
play7 patt = capply m7 (const $ patt) $ silence
play8 patt = capply m8 (const $ patt) $ silence

-- stream via OSC controllers
l1 patt = p 1 $ play1 patt
l2 patt = p 2 $ play2 patt
l3 patt = p 3 $ play3 patt
l4 patt = p 4 $ play4 patt
l5 patt = p 5 $ play5 patt
l6 patt = p 6 $ play6 patt
l7 patt = p 7 $ play7 patt
l8 patt = p 8 $ play8 patt

-- multiple patterns selected by OSC controllers, eg: p1 $ (c0' $ note 0) $ (c1' $ note 1) $ silence
l0' patt = capply' "m0" patt
l1' patt = capply' "m1" patt
l2' patt = capply' "m2" patt
l3' patt = capply' "m3" patt
l4' patt = capply' "m4" patt
l5' patt = capply' "m5" patt
l6' patt = capply' "m6" patt
l7' patt = capply' "m7" patt
l8' patt = capply' "m8" patt
:}
