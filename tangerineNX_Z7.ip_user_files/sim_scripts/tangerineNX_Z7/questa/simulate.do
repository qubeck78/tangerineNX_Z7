onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib tangerineNX_Z7_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {tangerineNX_Z7.udo}

run 1000ns

quit -force
