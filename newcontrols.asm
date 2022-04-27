arch snes.cpu
origin $000000; insert "earthbound.sfc"
origin $00B8E3;
	and #$0040
origin $00B907
	and #$4000
origin $00B915
	and #$00A0
origin $013199
	nop
	nop
	nop
	nop
	nop
	nop
origin $013493
	cmp #$0005
origin $01324D
	jsl $C04279
	lda $5D62
	bne +
	jmp $3394
+;
	lda $5D62
	cmp #$FFFF
	bne +
	jmp $3394
+;
	lda $5D62
	cmp #$FFFE
	bne +
	lda $5DDE
	sta $0A
	lda $5DE0
	sta $0C
	jmp $3394
+;
	lda #$8985
	sta $06
	lda #$00CF
	sta $08
	lda $06
	sta $14
	lda $08
	sta $16
	lda $5D62
	sta $04
	asl
	asl
	asl
	asl
	adc $04
	sta $12
	clc
	adc $06
	sta $06
	lda [$06]
	and #$00FF
	cmp #$0001
	bne +
	jmp $3394
+;
	cmp #$0002
	beq ++
	cmp #$0003
	bne +
	jmp $3375
+;
	jmp $3394
+;
	lda #$0001
	jsr $04EE

origin $0134E1
	nop
	nop
	nop
	nop
	nop
	cmp #$01
origin $0134F3
	cmp #$02
origin $0134FB
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	cmp #$04
origin $013C3E
	nop
	nop
	nop
	nop
	nop
	nop
	nop
origin $013C5D
	db $D0, $13
origin $013C6E
	db  $03, $4C, $8F, $3C, $A9, $01, $00, $20, $EE, $04, $EA
origin $03E254
	dw 14, 6
origin $055D25
	db $89
origin $07333E
	db $89
origin $073375
	db $89
origin $2FA37A
	db $77, $9F, $9F, $94, $A3, $00, $00, $00, $00, $00, $75, $A1, $A5, $99, $A0
origin $2FA398
	db $83, $A4, $91, $A4, $A5, $A3
origin $2FA3A2
	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
