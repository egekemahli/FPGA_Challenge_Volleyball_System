## Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK]							
    set_property IOSTANDARD LVCMOS33 [get_ports CLK]
   create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK]
## Switches
    set_property PACKAGE_PIN V17 [get_ports {swit1}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {swit1}]
    set_property PACKAGE_PIN V16 [get_ports {swit2}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {swit2}]
    set_property PACKAGE_PIN W16 [get_ports {swit3}]                    
        set_property IOSTANDARD LVCMOS33 [get_ports {swit3}]
    set_property PACKAGE_PIN W17 [get_ports {swit4}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {swit4}]
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {SEGMENTS[0]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[0]}]
set_property PACKAGE_PIN W6 [get_ports {SEGMENTS[1]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[1]}]
set_property PACKAGE_PIN U8 [get_ports {SEGMENTS[2]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[2]}]
set_property PACKAGE_PIN V8 [get_ports {SEGMENTS[3]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[3]}]
set_property PACKAGE_PIN U5 [get_ports {SEGMENTS[4]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[4]}]
set_property PACKAGE_PIN V5 [get_ports {SEGMENTS[5]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[5]}]
set_property PACKAGE_PIN U7 [get_ports {SEGMENTS[6]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENTS[6]}]
    
    
set_property PACKAGE_PIN U2 [get_ports {SEG_SEC[0]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SEC[0]}]
set_property PACKAGE_PIN U4 [get_ports {SEG_SEC[1]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SEC[1]}]
set_property PACKAGE_PIN V4 [get_ports {SEG_SEC[2]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SEC[2]}]
set_property PACKAGE_PIN W4 [get_ports {SEG_SEC[3]}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {SEG_SEC[3]}]

##Pmod Header JA
##JA1
set_property PACKAGE_PIN J1 [get_ports {LDRin}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRin}]
#JA2
set_property PACKAGE_PIN L2 [get_ports {LDRin2}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRin2}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {LDRin3}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRin3}]
##Sch name = JA4
#set_property PACKAGE_PIN G2 [get_ports {Vin1}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {Vin1}]
##Sch name = JA7
#set_property PACKAGE_PIN H1 [get_ports {JA[4]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
##Sch name = JA8
#set_property PACKAGE_PIN K2 [get_ports {JA[5]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
##Sch name = JA9
#set_property PACKAGE_PIN H2 [get_ports {JA[6]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
##Sch name = JA10
#set_property PACKAGE_PIN G3 [get_ports {JA[7]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]
    
    

##Pmod Header JB
#Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {TRIGGER}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {TRIGGER}]
#Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {ECHO}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {ECHO}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {Vin1}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {Vin1}]
##Sch name = JB4
#set_property PACKAGE_PIN B16 [get_ports {ldr2}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {ldr2}] 
##Sch name = JB7
#set_property PACKAGE_PIN A15 [get_ports {JB[4]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
##Sch name = JB8
#set_property PACKAGE_PIN A17 [get_ports {JB[5]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JB[5]}]
#Sch name = JB9
#set_property PACKAGE_PIN C15 [get_ports {Vin1}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {Vin1}]
#Sch name = JB10 
#set_property PACKAGE_PIN C16 [get_ports {VRout}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {VRout}]
    
##Pmod Header JC
#Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports {LDRres1}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRres1}]
#Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports {LDRres2}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRres2}]
#Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports {LDRres3}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {LDRres3}]
###Sch name = JC4
set_property PACKAGE_PIN P18 [get_ports {VRout1}]                    
    set_property IOSTANDARD LVCMOS33 [get_ports {VRout1}]
###Sch name = JC7
#set_property PACKAGE_PIN L17 [get_ports {LDRres}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {LDRres}]
##Sch name = JC8
#set_property PACKAGE_PIN M19 [get_ports {JC[5]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
##Sch name = JC9
#set_property PACKAGE_PIN P17 [get_ports {JC[6]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
##Sch name = JC10
#set_property PACKAGE_PIN R18 [get_ports {JC[7]}]                    
    #set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]
    
      ### LEDs
#set_property PACKAGE_PIN U16 [get_ports {LED1}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {LED1}]
#set_property PACKAGE_PIN E19 [get_ports {LED2}]                    
#    set_property IOSTANDARD LVCMOS33 [get_ports {LED2}]   
        
