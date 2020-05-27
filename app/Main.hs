{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

h = -8
l = 8

points = map p2 $ [(h,h),(h+3,h),(h+8,h),(h+16,h)
                         ,(h,l-3),(h,l-8)
                         ,(l,l-3),(l,l-8)
                   ,(h,l),(h+3,l),(h+8,l),(h+16,l) ]

segments = [p ~~ q | p <- points, q <- points, p /= q]
example :: Diagram B
example = mconcat $ segments # lw 0.1 # fc grey 


main = mainWith example
