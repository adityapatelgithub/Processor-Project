@echo off
set xv_path=C:\\Users\\Brijenkumar\\Desktop\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto e2fd22c7e23b433fad5e31a7815663bc -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_behav xil_defaultlib.test xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
