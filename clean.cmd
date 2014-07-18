del *.log
del *.make
del *.opt
del *.xml
del *.elf
del *.bit
del *.his
del download.cmd
del s h
del cscope*
del tags

cd hyApp/Release & make clean & cd ..\..\

del bit.cmd soft.cmd platform.cmd
del etc\system.filters
del etc\system.gui

rd /s /q synthesis
rd /s /q implementation
rd /s /q hdl
rd /s /q bsp
rd /s /q bootloops
rd /s /q __xps
rd /s /q microblaze_0

cd pcores/top_v1_00_a/sim & rd /s /q work & del vsim.wlf & cd ../../../

cd pcores/xg_interface_v1_00_a & clean.cmd & cd ../../