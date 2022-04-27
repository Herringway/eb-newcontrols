newcontrols.ips: newcontrols.sfc
newcontrols.sfc: newcontrols.asm

clean:
	$(RM) *.sfc *.ips

%.sfc: %.asm
	bass -o "$@" "$<"

%.ips: %.sfc earthbound.sfc
	flips --create --ips "earthbound.sfc" "$<" "$@"
