transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/clkDIV.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/Terminal_Count.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/Registry.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/MUX2x1.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/full_adder.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/FFD.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/adder.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/MUX4x1.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/Counter.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/Decoder.vhd}
vcom -93 -work work {C:/Users/ammit/Desktop/ISEL/2223/LEIC/s2/LIC/LIC/Testes/KeyScan.vhd}

