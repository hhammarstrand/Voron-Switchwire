SET_LED LED=fysetc_mini12864 RED=0 GREEN=0 BLUE=1
G90 ; use absolute coordinates
M83 ; extruder relative mode
;M140 S[first_layer_bed_temperature] ; set bed temp
;M190 S[first_layer_bed_temperature] ; wait for bed temp
G28; home all
G1 X5 Y-22 Z10 F3000 ; go outside print area
M104 S{first_layer_temperature[initial_extruder]+extruder_temperature_offset[initial_extruder]} ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Y-3.0 Z0.5 F500.0 ; prepare for intro line
G92 E0.0
;SET_LED LED=fysetc_mini12864 RED=1 GREEN=0 BLUE=0
BLINK
G1 X10.0 E1.0 F1000.0 ; intro line
G1 X120.0 E20.0 F1000.0 ; intro line
G92 E0.0