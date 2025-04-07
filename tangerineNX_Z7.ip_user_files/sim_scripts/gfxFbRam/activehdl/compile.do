transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/qubeck/Documents/Development/ProjektyVHDL/Zynq7020CoreBoard/tangerineNX_Z7/tangerineNX_Z7.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_6
vlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx2023.1/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_6  -v2k5 "+incdir+D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Xilinx2023.1/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l blk_mem_gen_v8_4_6 -l xil_defaultlib \
"../../../../tangerineNX_Z7.gen/sources_1/ip/gfxFbRam/sim/gfxFbRam.v" \

vlog -work xil_defaultlib \
"glbl.v"

