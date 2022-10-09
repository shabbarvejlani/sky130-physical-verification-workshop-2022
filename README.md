# sky130-physical-verification-workshop-2022

## Day 1
magic 
- layout gui + console
- quit
- magic -noconsole
- magic -dnull -noconsole <test.tcl> (when running from a script)
netgen
- has a gui but its discouraged to use since it hides options and does not have a associated tcl prompt
-- /usr/local/lib/netgen/python/lvs_manager.py
- quit
- netgen -noconsole
- netgen -batch source <test.tcl>
xschem
- schematic editor + console on terminal
- exit
- xschem --tcl <test.tcl> -q
ngspice
- command line
- quit
- ngspice -b
