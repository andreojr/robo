import os
import platform
rm = "del" if platform.system() == "Windows" else "rm"
os.system(f'iverilog -o output ./testbench.v && vvp output > output.csv && {rm} output && py accuracy.py')
