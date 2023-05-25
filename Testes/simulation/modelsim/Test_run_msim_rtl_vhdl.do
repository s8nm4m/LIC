transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/MemoryAddressControl.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/full_add.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/KeyboardReader.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/clkDIV.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Terminal_Count.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Registry.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/MUX2x1.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/FFD.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/adder.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/MUX4x1.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Counter.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/Decoder.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/KeyScan.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/KeyControl.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/KeyDecode.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/RAM.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/RingBufferControl.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/RingBuffer.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/BufferControl.vhd}
vcom -93 -work work {D:/ISEL/2223/LEIC/s2/LIC/Testes/OutputBuffer.vhd}

