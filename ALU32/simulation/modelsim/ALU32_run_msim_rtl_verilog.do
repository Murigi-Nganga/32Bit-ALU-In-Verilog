transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/andmodule.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/ormodule.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/xormodule.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/notmodule.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/mux4x1module.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/mux2x1module.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/ALU1_Bit.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/ALU32.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.0sp1/ALU32 {C:/altera/13.0sp1/ALU32/ALU1_Bit_MSB.v}

