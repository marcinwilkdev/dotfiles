import XMonad

import XMonad.Util.EZConfig
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Magnifier
import XMonad.Layout.Spacing
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Util.Loggers

myLayout = spacingRaw True (Border 3 3 3 3) True (Border 3 3 3 3) True 
    $ tiled ||| Mirror tiled ||| Full ||| threeCol
	where
		threeCol = magnifiercz' 2 $ ThreeColMid nmaster delta ratio
		tiled =    Tall nmaster delta ratio
		nmaster =  1
		ratio =    1/2
		delta =    3/100

myConfig = def
	{ terminal = "kitty"
	, modMask = mod4Mask
	, borderWidth = 2
	, focusedBorderColor = "#5293e2"
	, layoutHook = myLayout
	}
	`additionalKeysP`
	[ ("M-]", spawn "firefox")
    , ("M-r", spawn "xmonad --restart")
    , ("M-q", kill )
	]

myXmobarPP :: PP
myXmobarPP = def
    { ppSep = magenta " • "
    , ppTitleSanitize = xmobarStrip
    , ppCurrent = wrap (blue "[") (blue "]")
    , ppHidden = white . wrap " " ""
    , ppHiddenNoWindows = lowWhite . wrap " " ""
    , ppUrgent = red . wrap (yellow "!") (yellow "!")
    , ppOrder = \[ws, l, _] -> [ws, l]
    }
    where
    formatFocused = wrap (white "[") (white "]") . magenta . ppWindow
    formatUnfocused = wrap (lowWhite "[") (lowWhite "]") . blue . ppWindow

    ppWindow :: String -> String
    ppWindow = xmobarRaw . (\w -> if null w then "untitled" else w) . shorten 30

    blue, lowWhite, magenta, red, white, yellow :: String -> String
    magenta = xmobarColor "#ff79c6" ""
    blue = xmobarColor "#bd93f9" ""
    white = xmobarColor "#f8f8f2" ""
    yellow = xmobarColor "#f1fa8c" ""
    red = xmobarColor "#ff5555" ""
    lowWhite = xmobarColor "#bbbbbb" ""

main :: IO()
main = xmonad
	. ewmh
	=<< statusBar "xmobar ~/.config/xmobar/xmobarrc" myXmobarPP toggleStrutsKey myConfig
	where
	toggleStrutsKey :: XConfig Layout -> (KeyMask, KeySym)
	toggleStrutsKey XConfig{ modMask = m } = (m, xK_b)
