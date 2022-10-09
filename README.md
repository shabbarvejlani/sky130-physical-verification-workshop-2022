# sky130-physical-verification-workshop-2022

## Day 1
### magic 
- layout gui + console
- quit
- magic -noconsole
- magic -dnull -noconsole <test.tcl> (when running from a script)
- magic -d XR (chirographics package)
- magic -d OGL (opengl package)
- shift+z to zoom out
- 'p' key when pointer over the layer pallete will fill the box. can also use middle click and hove mouse on empty space in layout
- 'e' key when pointer over the box , will erase the layer. can also use middle click and hove mouse on empty space in layout
- disable/re-enable toolbar if the layer pallete is not showing all layers.
### netgen
- has a gui but its discouraged to use since it hides options and does not have a associated tcl prompt
-- /usr/local/lib/netgen/python/lvs_manager.py
- quit
- netgen -noconsole
- netgen -batch source <test.tcl>
### xschem
- schematic editor + console on terminal
- exit
- xschem --tcl <test.tcl> -q
- 'e' to descend schematic, ctrl + 'e' to ascend
### ngspice
- command line
- quit
- ngspice -b

## setup tools for skywater130 for a project
- mkdir <project>
- cd <project>
- mkdir xschem
  - ln -s /usr/share/pdk/sky130A/libs.tech/xschem/xschemrc
  - ln -s /usr/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
- mkdir mag
  - ln -s /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
- mkdir netgen
  - ln -s /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl
