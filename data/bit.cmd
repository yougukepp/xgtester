cp etc\fast_runtime.opt implementation\xflow.opt & cp data\system.ucf implementation\ & xflow -wd implementation -p xc6vlx240tff1156-1 -implement xflow.opt system.ngc
cp etc\bitgen.ut implementation & cd implementation & bitgen -w -f bitgen.ut system & cd ..
cp implementation\system.bit .\h