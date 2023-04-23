transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Terminal_Count.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Registry.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/MUX2x1.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/full_adder.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/FFD.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/adder.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Counter.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/SerialReceiver.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/SerialControl.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/ShiftRegister.vhd}

