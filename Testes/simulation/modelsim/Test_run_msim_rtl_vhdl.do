transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/full_adder.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/adder.vhd}

