import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.SetWMName
import XMonad.Util.Dmenu
import System.Exit
import Control.Monad

baseConfig = desktopConfig

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">"
                , ppOrder = \(ws:l:t:_)   -> [ws,l]
                }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)
 
quitWithWarning :: X()
quitWithWarning = do
    let m = "confirm quit"
    s <- dmenu [m]
    when (m == s) (io exitSuccess)

myConfig = baseConfig
    { terminal = "terminator"
    , modMask  = mod4Mask
    , startupHook = setWMName "LG3D"
    } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_q ), quitWithWarning)]
