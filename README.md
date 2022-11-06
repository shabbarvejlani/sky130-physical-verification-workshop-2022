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
- 's' is to select, type 'what' in command window.
  - can also use ';' key to switch to command window directly without using mouse.
### netgen
- has a gui but its discouraged to use since it hides options and does not have a associated tcl prompt
-- /usr/local/lib/netgen/python/lvs_manager.py
- quit
- netgen -noconsole
- netgen -batch source <test.tcl>
### xschem
- schematic editor + console on terminal
- exit
- xschem --tcl test.tcl -q
- 'e' to descend schematic, ctrl + 'e' to ascend
### ngspice
- command line
- quit
- ngspice -b

## setup tools for skywater130 for a project
- mkdir project
- cd project
- mkdir xschem
  - ln -s /usr/share/pdk/sky130A/libs.tech/xschem/xschemrc
  - ln -s /usr/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
- mkdir mag
  - ln -s /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
- mkdir netgen
  - ln -s /usr/share/pdk/sky130A/libs.tech/netgen/sky130A_setup.tcl setup.tcl
  
## creating an inverter
- select pfet3, nfet3 device
- wire up
- best practice: keep tb and design separate
- for design, add iport(input), oport(output) and ioport(power)
- create a symbol from schematic
- create new schematic for tb
- add voltage sources
- add probe points for ngspice
- add code_space.sym
  - one for including the sky130 device libs
  - one for including the ngspice control code
    - in the control code, selection of transient sim is done and other solver configuration.
    - additionally signals for plotting are chosen
- click on netlist
- click on simulate

![alt text](images/Screenshot_20221011-004630_aRDP%20Free.jpg "inverter schematic")
![alt text](images/Screenshot_20221011-004718_aRDP%20Free.jpg "inverter_tb schematic")
![alt text](images/Screenshot_20221011-004559_aRDP%20Free.jpg "inverter ngspice plot")


## creating layout
- devices and ports are imported in mag from the xschem schematic
- select using "i" and then "ctrl + p" to open the parameter window
- edit the top via guard grid parameters to +40, +40 (??)
- move and place the device by selecting devices, move cross-hair to required position and then click "m"
- connect the devices using wires, which is basically by drawing rectangular boxes using metal layer.

### generate netlist for LVS
- exts2pice lvs
- ext2spice local
- ext2spice all

### generate netlist for Post Layout Simulation
- ext2spice local
- ext2spice cthresh 0
- ext2spice all

### Post-Layout Simulation
- replace the inverter in the previous inverter_tb.spice with the extracted inverter.
- to do this:
  - replace the instantiation port parameter mapping as per the extracted netlist port order
  - delete the inverter subckt definition from the schematic
  - include the extract netlist inverter definition using .include statement pointing to the required file.
- run simulation using: ngspice inverter_tb.spice

## Day 2
- git clone https://github.com/RtimothyEdwards/vsd_drc_lab.git
- cd vsd_drc_lab
- ./run_magic
- open exercise1.mag
- 'z' to zoom-in and 'shift + z' to zoom-out 
- left mouse click to position the bottom left of the selection box. 
- right mouse click to select the top right co-ordinate of the selection box.
- once the selection box is done, press '?' to see the DRC error related info in the magic console
- mouse scroll to move up-down
- shift + mouse scroll to move right-left
- hover the mouse pointer on the object to be selected and press 's' to select it.
- typing 'box' command after selection, shows the dimension of the selection or press the 'b' key
- to move selected region to right, press '6'
- '>' key to descend, '<' key to ascend.
-  'load <cellname>' to directly load cell in console prompt.


## Day3
|Rule| Context | Way to fix | Command|
|----|---------|------------|--------|
|Width Rule| met should have particular width| select and paint extra width| paint met2|
|Spacing Rule| Two metal lines should have mixing spacing between them | select and move| move e 1|
|Wide Spacing Rule| Big metal near small metal should have particular spacing| select and move| move e 2|
|Notch Spacing Rule| The two edges of the notch should have minimum spacing| stretch and move| a <br> move n 2 <br> shift+keypad arrow keys <br> stret e 1.6um |
|Via Size| mnimum area of metal should be around the via|||
|Multiple Vias||to see contact cuts| select the via <br> cif see "MCON" <br> feedback why <br> feedback clear|
|Via Overlap||||
|Autogenerate Vias||||

  
  
