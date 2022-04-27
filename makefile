newcontrols.ips: newcontrols.sfc
newcontrols.sfc: newcontrols.asm
patch:

clean:
	$(RM) *.sfc

%.sfc: %.asm
	bass -o "$@" "$<"

%.ips: %.sfc earthbound.sfc
	flips --create --ips "earthbound.sfc" "$<" "$@"
