; Configuration file for RepRap Ormerod 1
; RepRapPro Ltd
;
; Copy this file to config.g if you have an Ormerod 1
; If you are updating a config.g that you already have you
; may wish to go through it and this file checking what you
; want to keep from your old file.
; 
M111 S0                             ; Debug off
M550 POmerod Jason                  ; Machine name (can be anything you like)
M551 Preprap                        ; Machine password (currently not used)
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xED ; MAC Address
M552 P192.168.178.130               ; IP address
M553 P255.255.255.0                 ; Netmask
M554 P192.168.178.1                 ; Gateway
M555 P2                             ; Set output to look like 2=Marlin 1=reprap
G21                                 ; Work in millimetres
G90                                 ; Send absolute corrdinates...
M83                                 ; ...but relative extruder moves
M906 X800 Y1000 Z800 E800           ; Set motor currents (mA)
;M305 P0 R4700                      ; Set the heated bed thermistor series resistor to 4K7
;M305 P1 R4700                      ; Set the hot end thermistor series resistor to 4K7
M92 E420                            ; Set extruder steps per mm
M558 P1                             ; Use an unmodulated Z probe
G31 Z2.3 P660                       ; Set the probe height and threshold
M556 S78 X0 Y0 Z0                   ; Put your axis compensation here
M201 X500 Y500 Z15 E500             ; Accelerations (mm/s^2)
M203 X15000 Y15000 Z100 E3600       ; Maximum speeds (mm/min)
M566 X200 Y200 Z30 E20              ; Minimum speeds mm/minute
M563 P0 D0 H1                       ; Define tool 0
G10 P0 S-273 R-273                  ; Set tool 0 operating and standby temperatures
;M563 P1 D1 H2                          ; Define tool 1 Uncomment if you have a dual colour upgrade
;G10 P1 S-273 R-273                ; Set tool 1 operating and standby temperatures  Uncomment if you have a dual colour upgrade

