;==============Change CapsLock=======================


;======================================= ` = CapsLock
SetCapsLockState, AlwaysOff
CapsLock & `::
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, ``
Return

;======================================= u = PageUp
CapsLock & u::
    if GetKeyState("alt") = 0
        Send, {PgUp}
    else
        Send, +{PgUp}
Return

;======================================= i = Home
CapsLock & i::
    if GetKeyState("alt") = 0
        Send, {Home}
    else
        Send, +{Home}
Return

;======================================= o = End
CapsLock & o::
    if GetKeyState("alt") = 0
        Send, {End}
    else
        Send, +{End}
Return

;======================================= p = PageDown
CapsLock & p::
    if GetKeyState("alt") = 0
        Send, {PgDn}
    else
        Send, +{PgDn}
Return

;======================================= k = Up
CapsLock & k::
    if GetKeyState("alt") = 0
        Send, {Up}
    else
        Send, +{Up}
Return

;======================================= j = Down
CapsLock & j::
    if GetKeyState("alt") = 0
        Send, {Down}
    else
        Send, +{Down}
Return

;======================================= h = Left
CapsLock & h::
    if GetKeyState("alt") = 0
        Send, {Left}
    else
        Send, +{Left}
Return

;======================================= l = Right
CapsLock & l::
    if GetKeyState("alt") = 0
        Send, {Right}
    else
        Send, +{Right}
Return

;======================================= n = BackSpace
CapsLock & n::
    if GetKeyState("alt") = 0
        Send, {BS}
    else
        Send, ^{BS}
Return

;======================================= m = Delete
CapsLock & m::
    if GetKeyState("alt") = 0
        Send, {Del}
    else
        Send, ^{Del}
Return


;==================Special Char=====================
CapsLock & `;:: Send, +-              ; ; = _
CapsLock & ':: Send, =                ; ' = =
CapsLock & {:: Send, +9               ; { = (
CapsLock & }:: Send, +0               ; } = )

;==================Editor===========================
CapsLock & z:: Send, ^z               ; Z = Cancel
CapsLock & x:: Send, ^x               ; X = Cut
CapsLock & c:: Send, ^c               ; C = Copy
CapsLock & v:: Send, ^v               ; V = Paste
CapsLock & a:: Send, ^a               ; A = Select All
CapsLock & y:: Send, ^y               ; Y = Redo

;======================================= CapsLock = ESC
CapsLock::
    Send, {ESC}
Return
