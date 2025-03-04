    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

/*credits*/
    THUMB_FUNC_START sub_8000224
sub_8000224: @ 0x08000224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	bl sub_8000724
_08000230:
	ldr r1, _08000248
	ldr r0, [r1]
	ldr r0, [r0]
	adds r5, r1, #0
	cmp r0, #9
	bls _0800023E
	b _08000708
_0800023E:
	lsls r0, r0, #2
	ldr r1, _0800024C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000248: .4byte g8DF758C
_0800024C: .4byte _08000250
_08000250: @ jump table
	.4byte _08000278 @ case 0
	.4byte _080002B0 @ case 1
	.4byte _080002D0 @ case 2
	.4byte _0800040C @ case 3
	.4byte _0800044C @ case 4
	.4byte _08000708 @ case 5
	.4byte _08000708 @ case 6
	.4byte _08000580 @ case 7
	.4byte _080005D4 @ case 8
	.4byte _0800070E @ case 9
_08000278:
	ldr r1, [r5]
	ldrh r0, [r1, #6]
	adds r0, #1
	movs r2, #0
	movs r4, #0
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bhi _0800028E
	b _0800070E
_0800028E:
	strb r2, [r1, #0xa]
	ldr r2, _080002AC
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl LoadBlendingRegs
	ldr r1, [r5]
	strh r4, [r1, #6]
	movs r0, #1
	b _0800070C
	.align 2, 0
_080002AC: .4byte gBLDALPHA
_080002B0:
	ldr r1, _080002C8
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r0, _080002CC
	ldr r1, [r0]
	movs r0, #2
	b _0800070C
	.align 2, 0
_080002C8: .4byte gBG0VOFS
_080002CC: .4byte g8DF758C
_080002D0:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080002F0
	ldr r1, _0800033C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08000340
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl LoadBgOffsets
_080002F0:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0xf
	bhi _0800031A
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800031A
	adds r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _08000344
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl LoadBlendingRegs
_0800031A:
	ldr r0, _0800033C
	ldrh r3, [r0]
	ldr r0, _08000348
	ands r3, r0
	cmp r3, #0
	beq _08000328
	b _0800070E
_08000328:
	ldr r0, _0800034C
	ldr r2, [r0]
	ldrh r1, [r2, #8]
	adds r5, r0, #0
	cmp r1, #0xf
	bhi _08000350
	adds r0, r1, #1
	strh r0, [r2, #8]
	b _08000352
	.align 2, 0
_0800033C: .4byte gBG0VOFS
_08000340: .4byte gBG1VOFS
_08000344: .4byte gBLDALPHA
_08000348: .4byte 0x000001FF
_0800034C: .4byte g8DF758C
_08000350:
	strh r3, [r2, #8]
_08000352:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #0xe
	bhi _080003F2
	movs r0, #0
	str r0, [sp]
	ldr r1, _080003D0
	ldr r2, _080003D4
	mov r0, sp
	bl CpuFastSet
	movs r4, #0
	ldr r2, _080003D8
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080003C0
	ldr r3, _080003DC
	adds r7, r2, #0
	adds r6, r1, #0
_08000382:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r3
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _080003D0
	adds r1, r1, r2
	movs r2, #0x1f
	str r3, [sp, #0xc]
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r3, [sp, #0xc]
	ldrb r0, [r0]
	cmp r4, r0
	blo _08000382
_080003C0:
	ldr r0, _080003E0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _080003E4
	cmp r0, #0xc
	beq _080003EC
	b _080003F2
	.align 2, 0
_080003D0: .4byte 0x0200F400
_080003D4: .4byte 0x01000200
_080003D8: .4byte gUnk_8063FA0
_080003DC: .4byte gCreditsTilemaps
_080003E0: .4byte g8DF758C
_080003E4:
	movs r0, #2
	bl sub_80008EC
	b _080003F2
_080003EC:
	movs r0, #0
	bl sub_80008EC
_080003F2:
	bl LoadBgVRAM
	ldr r1, _08000404
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000408
	ldr r1, [r0]
	movs r0, #3
	b _0800070C
	.align 2, 0
_08000404: .4byte gBG0VOFS
_08000408: .4byte g8DF758C
_0800040C:
	bl LoadBgOffsets
	ldr r0, _08000444
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	movs r1, #0x87
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08000426
	b _0800070E
_08000426:
	ldrh r0, [r2, #8]
	cmp r0, #0xf
	bls _0800042E
	b _080005C0
_0800042E:
	movs r0, #4
	str r0, [r2]
	ldr r1, _08000448
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	b _080005C4
	.align 2, 0
_08000444: .4byte g8DF758C
_08000448: .4byte gBG1VOFS
_0800044C:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800046C
	ldr r1, _080004B4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _080004B8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl LoadBgOffsets
_0800046C:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0
	beq _08000496
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08000496
	subs r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _080004BC
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl LoadBlendingRegs
_08000496:
	ldr r0, _080004B8
	ldrh r2, [r0]
	ldr r0, _080004C0
	ands r2, r0
	cmp r2, #0
	beq _080004A4
	b _0800070E
_080004A4:
	ldr r0, _080004C4
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	cmp r0, #0xf
	bhi _080004C8
	adds r0, #1
	strh r0, [r1, #8]
	b _080004CA
	.align 2, 0
_080004B4: .4byte gBG0VOFS
_080004B8: .4byte gBG1VOFS
_080004BC: .4byte gBLDALPHA
_080004C0: .4byte 0x000001FF
_080004C4: .4byte g8DF758C
_080004C8:
	strh r2, [r1, #8]
_080004CA:
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r1, _08000544
	ldr r2, _08000548
	bl CpuFastSet
	movs r4, #0
	ldr r3, _0800054C
	ldr r2, _08000550
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08000532
	ldr r0, _08000554
	mov r8, r0
	adds r5, r2, #0
	adds r7, r3, #0
	adds r6, r1, #0
_080004F8:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	add r0, r8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _08000544
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r4, r0
	blo _080004F8
_08000532:
	ldr r0, _08000550
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _08000558
	cmp r0, #0xc
	beq _08000560
	b _08000566
	.align 2, 0
_08000544: .4byte 0x0200FC00
_08000548: .4byte 0x01000200
_0800054C: .4byte gUnk_8063FA0
_08000550: .4byte g8DF758C
_08000554: .4byte gCreditsTilemaps
_08000558:
	movs r0, #1
	bl sub_80008EC
	b _08000566
_08000560:
	movs r0, #0
	bl sub_80008EC
_08000566:
	bl LoadBgVRAM
	ldr r1, _08000578
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800057C
	ldr r1, [r0]
	movs r0, #7
	b _0800070C
	.align 2, 0
_08000578: .4byte gBG1VOFS
_0800057C: .4byte g8DF758C
_08000580:
	bl LoadBgOffsets
	ldr r4, _080005B8
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	lsls r0, r0, #0x10
	movs r1, #0x87
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0800059A
	b _0800070E
_0800059A:
	ldrh r0, [r2, #8]
	cmp r0, #0xf
	bhi _080005C0
	ldr r1, _080005BC
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r1, [r4]
	movs r0, #8
	str r0, [r1]
	b _080005C4
	.align 2, 0
_080005B8: .4byte g8DF758C
_080005BC: .4byte gBG0VOFS
_080005C0:
	movs r0, #9
	str r0, [r2]
_080005C4:
	ldr r0, _080005D0
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #6]
	b _0800070E
	.align 2, 0
_080005D0: .4byte g8DF758C
_080005D4:
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080005F4
	ldr r1, _0800063C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08000640
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl LoadBgOffsets
_080005F4:
	ldr r2, [r5]
	ldrb r3, [r2, #0xa]
	cmp r3, #0xf
	bhi _0800061E
	ldrh r0, [r2, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0800061E
	adds r0, r3, #1
	strb r0, [r2, #0xa]
	ldr r2, _08000644
	ldr r0, [r5]
	ldrb r1, [r0, #0xa]
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
	bl LoadBlendingRegs
_0800061E:
	ldr r0, _0800063C
	ldrh r2, [r0]
	ldr r0, _08000648
	ands r2, r0
	cmp r2, #0
	bne _0800070E
	ldr r0, _0800064C
	ldr r1, [r0]
	ldrh r0, [r1, #8]
	cmp r0, #0xf
	bhi _08000650
	adds r0, #1
	strh r0, [r1, #8]
	b _08000652
	.align 2, 0
_0800063C: .4byte gBG0VOFS
_08000640: .4byte gBG1VOFS
_08000644: .4byte gBLDALPHA
_08000648: .4byte 0x000001FF
_0800064C: .4byte g8DF758C
_08000650:
	strh r2, [r1, #8]
_08000652:
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r1, _080006CC
	ldr r2, _080006D0
	bl CpuFastSet
	movs r4, #0
	ldr r3, _080006D4
	ldr r2, _080006D8
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r1, r3, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080006BA
	ldr r0, _080006DC
	mov r8, r0
	adds r5, r2, #0
	adds r7, r3, #0
	adds r6, r1, #0
_08000680:
	ldr r0, [r5]
	ldrh r2, [r0, #8]
	lsls r0, r2, #2
	add r0, r8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _080006CC
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r4, r0
	blo _08000680
_080006BA:
	ldr r0, _080006D8
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	cmp r0, #0xa
	beq _080006E0
	cmp r0, #0xc
	beq _080006E8
	b _080006EE
	.align 2, 0
_080006CC: .4byte 0x0200F400
_080006D0: .4byte 0x01000200
_080006D4: .4byte gUnk_8063FA0
_080006D8: .4byte g8DF758C
_080006DC: .4byte gCreditsTilemaps
_080006E0:
	movs r0, #2
	bl sub_80008EC
	b _080006EE
_080006E8:
	movs r0, #0
	bl sub_80008EC
_080006EE:
	bl LoadBgVRAM
	ldr r1, _08000700
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08000704
	ldr r1, [r0]
	movs r0, #3
	b _0800070C
	.align 2, 0
_08000700: .4byte gBG0VOFS
_08000704: .4byte g8DF758C
_08000708:
	ldr r1, [r5]
	movs r0, #0
_0800070C:
	str r0, [r1]
_0800070E:
	bl sub_8008220
	ldr r0, _08000720
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	b _08000230
	.align 2, 0
_08000720: .4byte g8DF758C

	THUMB_FUNC_START sub_8000724
sub_8000724: @ 0x08000724
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _080007E4
	ldr r1, _080007E8
	bl bzero
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	movs r0, #0x31
	bl PlayMusic
	ldr r0, _080007EC
	ldr r1, _080007F0
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	ldr r0, _080007F4
	ldr r4, _080007F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r1, r4, r0
	ldr r6, _080007FC
	mov r0, sp
	adds r2, r6, #0
	bl CpuFastSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r1, #0xf8
	lsls r1, r1, #8
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	movs r4, #0
	ldr r1, _08000800
	ldrb r0, [r1, #1]
	cmp r4, r0
	bhs _080007C8
	ldr r7, _08000804
	adds r6, r1, #0
	adds r5, r0, #0
_080007A4:
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
	ldrb r1, [r6]
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _08000808
	adds r1, r1, r2
	movs r2, #0x1f
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _080007A4
_080007C8:
	bl LoadBgVRAM
	bl LoadPalettes
	ldr r0, _0800080C
	bl sub_80081DC
	bl sub_8008220
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080007E4: .4byte 0x02018800
_080007E8: .4byte 0x00004314
_080007EC: .4byte gCreditsPalette
_080007F0: .4byte 0x02000000
_080007F4: .4byte gCreditsTileset
_080007F8: .4byte 0x02000400
_080007FC: .4byte 0x01000200
_08000800: .4byte gUnk_8063FA0
_08000804: .4byte gCreditsTilemaps
_08000808: .4byte 0x0200FC00
_0800080C: .4byte sub_8000810

	THUMB_FUNC_START sub_8000810
sub_8000810: @ 0x08000810
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _080008C0
	ldr r0, _080008C4
	mov ip, r0
	ldr r1, _080008C8
	mov r8, r1
	ldr r2, _080008CC
	mov sb, r2
	ldr r4, _080008D0
	movs r6, #0
	movs r5, #0xa0
_0800082E:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _0800082E
	ldr r1, _080008D4
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xff
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080008D8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _080008DC
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	strh r4, [r7]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r1, #0
	mov r2, ip
	strh r0, [r2]
	mov r0, r8
	strh r4, [r0]
	mov r1, sb
	strh r4, [r1]
	bl LoadBgOffsets
	ldr r1, _080008E0
	ldr r2, _080008E4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080008E8
	strh r4, [r0]
	bl LoadBlendingRegs
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080008C0: .4byte gBG0HOFS
_080008C4: .4byte gBG0VOFS
_080008C8: .4byte gBG1HOFS
_080008CC: .4byte gBG1VOFS
_080008D0: .4byte gOamBuffer
_080008D4: .4byte 0x04000008
_080008D8: .4byte 0x04000208
_080008DC: .4byte 0x04000004
_080008E0: .4byte gBLDCNT
_080008E4: .4byte 0x00000241
_080008E8: .4byte gBLDALPHA

	THUMB_FUNC_START sub_80008EC
sub_80008EC: @ 0x080008EC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0800090C
	cmp r0, #2
	beq _08000928
	ldr r1, _08000908
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xff
	b _08000936
	.align 2, 0
_08000908: .4byte 0x04000008
_0800090C:
	ldr r1, _0800091C
	ldr r2, _08000920
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08000924
	b _08000936
	.align 2, 0
_0800091C: .4byte 0x04000008
_08000920: .4byte 0x00001F08
_08000924: .4byte 0x00001E01
_08000928:
	ldr r1, _0800093C
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	subs r2, #0xf7
_08000936:
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0800093C: .4byte 0x04000008

	THUMB_FUNC_START StartCutscene @various cutscenes
StartCutscene: @ 0x08000940
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _080009B0
	lsls r0, r0, #2
	ldr r1, _08000954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08000954: .4byte _08000958
_08000958: @ jump table
	.4byte _0800097C @ case 0
	.4byte _08000982 @ case 1
	.4byte _08000988 @ case 2
	.4byte _0800098E @ case 3
	.4byte _08000994 @ case 4
	.4byte _0800099A @ case 5
	.4byte _080009A0 @ case 6
	.4byte _080009A6 @ case 7
	.4byte _080009AC @ case 8
_0800097C:
	bl sub_80009BC
	b _080009B0
_08000982:
	bl sub_8001C70
	b _080009B0
_08000988: @credits
	bl sub_8000224
	b _080009B0
_0800098E:
	bl sub_8001B88
	b _080009B0
_08000994:
	bl sub_8001BFC
	b _080009B0
_0800099A:
	bl sub_8001CE4
	b _080009B0
_080009A0:
	bl sub_8001DD4
	b _080009B0
_080009A6:
	bl sub_8001D58
	b _080009B0
_080009AC:
	bl sub_8001AD8
_080009B0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80009BC
sub_80009BC: @ 0x080009BC
	push {r4, r5, r6, r7, lr}
	movs r6, #0x10
	movs r7, #0x10
	movs r0, #0x96
	lsls r0, r0, #2
	bl PlayMusic
	ldr r0, _080009EC
	bl PlayMusic
	bl sub_8000D74
_080009D4:
	ldr r0, _080009F0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #7
	bls _080009E0
	b _08000BF2
_080009E0:
	lsls r0, r0, #2
	ldr r1, _080009F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080009EC: .4byte 0x00000161
_080009F0: .4byte gUnk_8DF7590
_080009F4: .4byte _080009F8
_080009F8: @ jump table
	.4byte _08000A18 @ case 0
	.4byte _08000A34 @ case 1
	.4byte _08000A84 @ case 2
	.4byte _08000AF8 @ case 3
	.4byte _08000B30 @ case 4
	.4byte _08000B70 @ case 5
	.4byte _08000BB4 @ case 6
	.4byte _08000BF2 @ case 7
_08000A18:
	ldr r4, _08000A30
	ldr r0, [r4]
	adds r0, #0x3e
	movs r1, #0x80
	strb r1, [r0]
	bl sub_8001110
	bl LoadPalettes
	movs r5, #0
	ldr r1, [r4]
	b _08000A78
	.align 2, 0
_08000A30: .4byte gUnk_8DF7590
_08000A34:
	lsls r4, r5, #0x10
	asrs r0, r4, #0x10
	movs r1, #3
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000A5E
	ldr r0, _08000A80
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000A56
	subs r0, #2
	strb r0, [r1]
_08000A56:
	bl sub_8001110
	bl LoadPalettes
_08000A5E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r0, _08000A80
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08000A76
	b _08000BF2
_08000A76:
	movs r5, #0
_08000A78:
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	b _08000BF2
	.align 2, 0
_08000A80: .4byte gUnk_8DF7590
_08000A84:
	bl sub_8001360
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x10
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	bne _08000AB8
	ldr r0, _08000AB4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000AAC
	adds r0, r2, #2
	strb r0, [r1]
_08000AAC:
	bl sub_8001110
	b _08000ACE
	.align 2, 0
_08000AB4: .4byte gUnk_8DF7590
_08000AB8:
	ldr r0, _08000AF4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000ACA
	subs r0, #2
	strb r0, [r1]
_08000ACA:
	bl sub_8001110
_08000ACE:
	bl LoadPalettes
	ldr r0, _08000AF4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08000AEA
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08000AEA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	b _08000BF2
	.align 2, 0
_08000AF4: .4byte gUnk_8DF7590
_08000AF8:
	bl sub_80013E0
	ldr r3, _08000B2C
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000B12
	adds r0, r2, #2
	strb r0, [r1]
_08000B12:
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r0, #5
	bne _08000B22
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000B22:
	bl sub_8001110
	bl LoadPalettes
	b _08000BF2
	.align 2, 0
_08000B2C: .4byte gUnk_8DF7590
_08000B30:
	ldr r4, _08000B6C
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x3e
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _08000B46
	adds r0, r2, #2
	strb r0, [r1]
_08000B46:
	bl sub_8001110
	bl LoadPalettes
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08000B60
	ldr r1, [r4]
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000B60:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	b _08000BF2
	.align 2, 0
_08000B6C: .4byte gUnk_8DF7590
_08000B70:
	lsls r4, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	bne _08000B90
	ldr r0, _08000BB0
	ldr r1, [r0]
	adds r1, #0x3f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80011B4
	bl LoadPalettes
_08000B90:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r4, _08000BB0
	ldr r0, [r4]
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08000BF2
	movs r0, #8
	bl sub_8035038
	ldr r1, [r4]
	b _08000BEA
	.align 2, 0
_08000BB0: .4byte gUnk_8DF7590
_08000BB4:
	lsls r4, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	bne _08000BD4
	ldr r0, _08000CB0
	ldr r1, [r0]
	adds r1, #0x40
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80012B4
	bl LoadPalettes
_08000BD4:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r5, r0, #0x10
	ldr r0, _08000CB0
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0x2f
	bls _08000BF2
_08000BEA:
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	movs r5, #0
_08000BF2:
	movs r3, #0
	ldr r4, _08000CB0
_08000BF6:
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x48
	adds r2, r2, r3
	adds r0, #0x64
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x56
	adds r2, r2, r3
	adds r0, #0x72
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r0, [r0]
	subs r1, r1, r0
	strb r1, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bls _08000BF6
	ldr r4, _08000CB0
	ldr r1, [r4]
	adds r1, #0x41
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bl sub_80018E8
	bl sub_80015A4
	bl LoadOam
	ldr r4, [r4]
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000C60
	adds r4, #0x42
	ldrb r0, [r4]
	cmp r0, #0
	beq _08000C60
	subs r0, #1
	strb r0, [r4]
_08000C60:
	ldr r2, _08000CB0
	ldr r0, [r2]
	adds r0, #0x80
	ldrh r1, [r0]
	movs r0, #7
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	bne _08000C7E
	ldr r1, _08000CB4
	ldrh r0, [r1]
	cmp r0, #0
	beq _08000C7E
	subs r0, #1
	strh r0, [r1]
_08000C7E:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #7
	beq _08000CC0
	bl LoadBgOffsets
	ldr r1, _08000CB8
	lsls r0, r7, #8
	orrs r0, r6
	strh r0, [r1]
	bl LoadBlendingRegs
	bl sub_80082E8
	ldr r1, [r4]
	adds r1, #0x80
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _08000CBC
	bl sub_80081DC
	bl sub_8008220
	b _080009D4
	.align 2, 0
_08000CB0: .4byte gUnk_8DF7590
_08000CB4: .4byte gBG0HOFS
_08000CB8: .4byte gBLDALPHA
_08000CBC: .4byte LoadAffineRegs
_08000CC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8000CC8
sub_8000CC8: @ 0x08000CC8
	push {r4, r5, lr}
	ldr r2, _08000D6C
	ldr r0, [r2]
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0]
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	strh r4, [r1]
	strb r3, [r0, #0xa]
	ldr r0, [r2]
	strb r3, [r0, #0xb]
	ldr r0, [r2]
	adds r0, #0x42
	movs r1, #0x40
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x3f
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0x40
	strb r3, [r0]
	ldr r0, [r2]
	mov ip, r0
	mov r1, ip
	adds r1, #0x44
	ldr r0, _08000D70
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x46
	strh r4, [r0]
	subs r0, #5
	strb r3, [r0]
	ldr r0, [r2]
	adds r3, r0, #0
	adds r3, #0x82
	movs r1, #0x80
	strh r1, [r3]
	adds r0, #0x84
	strh r1, [r0]
	adds r5, r2, #0
_08000D1C:
	movs r0, #0
	movs r1, #0xf0
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x48
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #0
	movs r1, #0xa0
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x56
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #4
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x64
	adds r1, r1, r4
	strb r0, [r1]
	movs r0, #1
	movs r1, #4
	bl sub_8056258
	ldr r1, [r5]
	adds r1, #0x72
	adds r1, r1, r4
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xd
	bls _08000D1C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000D6C: .4byte gUnk_8DF7590
_08000D70: .4byte 0x0000FF4C

	THUMB_FUNC_START sub_8000D74
sub_8000D74: @ 0x08000D74
	push {r4, r5, r6, r7, lr}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	bl sub_8000CC8
	movs r1, #0
	ldr r4, _08000F44
	ldr r3, _08000F48
_08000D94:
	lsls r0, r1, #1
	adds r2, r0, r4
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _08000DA4
	adds r0, #3
_08000DA4:
	asrs r0, r0, #2
	strh r0, [r2]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xe3
	bls _08000D94
	ldr r0, _08000F4C
	ldr r4, _08000F50
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08000F54
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08000F58
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r4, r5
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08000F5C
	ldr r5, _08000F60
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _08000F64
_08000DE2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08000DE2
	movs r1, #0
	ldr r2, _08000F68
	mov ip, r2
	ldr r7, _08000F6C
	ldr r2, _08000F5C
	ldr r5, _08000F70
	ldr r4, _08000F74
	ldr r3, _08000F64
_08000E10:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E10
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F78
	ldr r4, _08000F7C
	ldr r3, _08000F80
_08000E3C:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E3C
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F84
	ldr r4, _08000F88
	ldr r3, _08000F8C
_08000E66:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E66
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F90
	ldr r4, _08000F94
	ldr r3, _08000F80
_08000E90:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000E90
	movs r1, #0
	ldr r2, _08000F5C
	movs r6, #0x5a
	ldr r5, _08000F98
	ldr r4, _08000F9C
	ldr r3, _08000F8C
_08000EBA:
	adds r0, r1, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08000EBA
	movs r1, #0
	ldr r2, _08000F5C
	ldr r5, _08000FA0
	ldr r4, _08000F94
	ldr r3, _08000FA4
_08000EE2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #0
	adds r0, #0x11
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _08000EE2
	mov r0, ip
	adds r1, r7, #0
	movs r2, #0x30
	bl CpuSet
	ldr r0, _08000FA8
	movs r5, #0xf0
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0x10
	bl CpuSet
	bl sub_8001788
	ldr r0, _08000FAC
	bl sub_80081DC
	bl sub_8001068
	bl LoadOam
	bl LoadVRAM
	bl LoadPalettes
	bl LoadAffineRegs
	bl sub_8008220
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000F44: .4byte 0x02020C00
_08000F48: .4byte gUnk_8088ED4
_08000F4C: .4byte gUnk_8A47010
_08000F50: .4byte 0x02000400
_08000F54: .4byte gUnk_8A481C8
_08000F58: .4byte gUnk_8A45DE4
_08000F5C: .4byte 0x040000D4
_08000F60: .4byte gUnk_8A45880
_08000F64: .4byte 0x8000000F
_08000F68: .4byte gUnk_8A4A430
_08000F6C: .4byte 0x02000000
_08000F70: .4byte gUnk_8A45AD8
_08000F74: .4byte 0x02007C00
_08000F78: .4byte gUnk_8A44F5C
_08000F7C: .4byte 0x0200E400
_08000F80: .4byte 0x80000020
_08000F84: .4byte gUnk_8A44F9C
_08000F88: .4byte 0x0200EC00
_08000F8C: .4byte 0x8000000D
_08000F90: .4byte gUnk_8A453EE
_08000F94: .4byte 0x0200F400
_08000F98: .4byte gUnk_8A4542E
_08000F9C: .4byte 0x0200FC00
_08000FA0: .4byte gUnk_8063FC0
_08000FA4: .4byte 0x8000001E
_08000FA8: .4byte gUnk_8064038
_08000FAC: .4byte sub_80019C4

	THUMB_FUNC_START sub_8000FB0
sub_8000FB0: @ 0x08000FB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	ldr r2, _08001020
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08001024
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08001028
	mov r8, r0
	ldr r7, _0800102C
_08000FD2:
	ldr r0, _08001030
	ldrb r0, [r0]
	adds r5, r0, #0
	ldr r0, _08001034
	ldr r0, [r0]
	adds r0, #0x80
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r5, r0
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r6, #0
	movs r1, #0x19
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #8
	subs r1, r1, r0
	adds r0, r4, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800100A
	adds r0, #0xff
_0800100A:
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	bl sub_8008288
	cmp r5, #0xc8
	beq _08001038
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08000FD2
	.align 2, 0
_08001020: .4byte 0x04000200
_08001024: .4byte 0x04000004
_08001028: .4byte 0x04000014
_0800102C: .4byte gUnk_8088ED4
_08001030: .4byte 0x04000006
_08001034: .4byte gUnk_8DF7590
_08001038:
	ldr r2, _08001058
	ldrh r1, [r2]
	ldr r0, _0800105C
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08001060
	ldrh r1, [r2]
	ldr r0, _08001064
	ands r0, r1
	strh r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001058: .4byte 0x04000200
_0800105C: .4byte 0x0000FFFD
_08001060: .4byte 0x04000004
_08001064: .4byte 0x0000FFEF

	THUMB_FUNC_START sub_8001068
sub_8001068: @ 0x08001068
	push {r4, r5, r6, r7, lr}
	ldr r1, _080010F4
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _080010F8
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _080010FC
	movs r0, #3
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08001100
	ldr r4, _08001104
	adds r1, r4, #0
	movs r2, #0x30
	bl CpuSet
	movs r5, #0
	ldr r6, _08001108
	ldr r0, _0800110C
	adds r7, r4, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r4, #0xf8
	lsls r4, r4, #7
_080010AA:
	ldr r1, [r6]
	adds r1, #0xe
	adds r1, r1, r5
	movs r0, #0x88
	lsls r0, r0, #1
	adds r3, r5, r0
	lsls r3, r3, #1
	adds r3, r3, r7
	ldrb r2, [r3]
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x1e
	adds r1, r1, r5
	ldrh r2, [r3]
	mov r0, ip
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x2e
	adds r1, r1, r5
	ldrh r2, [r3]
	adds r0, r4, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080010AA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080010F4: .4byte gUnk_8A4A490
_080010F8: .4byte gUnk_8A4E490
_080010FC: .4byte gUnk_8A50490
_08001100: .4byte gUnk_8A52490
_08001104: .4byte 0x02000200
_08001108: .4byte gUnk_8DF7590
_0800110C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8001110
sub_8001110: @ 0x08001110
	push {r4, r5, r6, r7, lr}
	ldr r1, _08001128
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _0800112C
	movs r0, #0
	b _08001132
	.align 2, 0
_08001128: .4byte gUnk_8DF7590
_0800112C:
	cmp r0, #0x80
	bls _08001134
	movs r0, #0x80
_08001132:
	strb r0, [r2]
_08001134:
	movs r5, #0
	ldr r7, _080011B0
_08001138:
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r5, r1
	lsls r0, r0, #1
	adds r6, r0, r7
	mov r0, ip
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0xe
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001160
	adds r0, #0x7f
_08001160:
	asrs r0, r0, #7
	subs r4, r2, r0
	adds r0, r3, #0
	adds r0, #0x1e
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001178
	adds r0, #0x7f
_08001178:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r3, #0
	adds r0, #0x2e
	adds r0, r0, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08001194
	adds r0, #0x7f
_08001194:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08001138
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080011B0: .4byte 0x02000000

	THUMB_FUNC_START sub_80011B4
sub_80011B4: @ 0x080011B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080011D4
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x3f
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0xbf
	bls _080011D8
	movs r0, #0
	b _080011DE
	.align 2, 0
_080011D4: .4byte gUnk_8DF7590
_080011D8:
	cmp r0, #0x80
	bls _080011E0
	movs r0, #0x80
_080011DE:
	strb r0, [r2]
_080011E0:
	movs r6, #0
	ldr r0, _080012B0
	mov ip, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sl, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
_080011F2:
	lsls r0, r6, #1
	mov r1, ip
	adds r7, r0, r1
	ldrh r1, [r7]
	movs r2, #0x1f
	ands r2, r1
	mov r0, sl
	ands r0, r1
	lsrs r4, r0, #5
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x3f
	ldrb r3, [r0]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r1, r2, r0
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r4, r0
	lsls r2, r0, #5
	orrs r2, r1
	adds r0, r5, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r5, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x2f
	bls _080011F2
	movs r6, #0
	mov sl, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
_0800124E:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #1
	mov r1, sl
	adds r7, r0, r1
	ldrh r1, [r7]
	movs r2, #0x1f
	ands r2, r1
	mov r0, ip
	ands r0, r1
	lsrs r4, r0, #5
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x3f
	ldrb r3, [r0]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r1, r2, r0
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r4, r0
	lsls r2, r0, #5
	orrs r2, r1
	adds r0, r5, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r5, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _0800124E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080012B0: .4byte 0x02000000

	THUMB_FUNC_START sub_80012B4
sub_80012B4: @ 0x080012B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080012D0
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0xbf
	bls _080012D4
	movs r0, #0
	b _080012DA
	.align 2, 0
_080012D0: .4byte gUnk_8DF7590
_080012D4:
	cmp r0, #0x80
	bls _080012DC
	movs r0, #0x80
_080012DA:
	strb r0, [r2]
_080012DC:
	movs r0, #0
	mov r8, r0
	ldr r1, _08001358
	mov sl, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
_080012EA:
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #1
	add r0, sl
	mov ip, r0
	ldrh r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	adds r3, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r4, r0, #5
	adds r6, r4, #0
	mov r0, sb
	ands r0, r1
	lsrs r5, r0, #0xa
	adds r7, r5, #0
	ldr r1, _0800135C
	ldr r0, [r1]
	adds r0, #0x40
	ldrb r2, [r0]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r3, r3, r0
	adds r0, r4, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r0, r6, r0
	lsls r1, r0, #5
	orrs r1, r3
	adds r0, r5, #0
	muls r0, r2, r0
	asrs r0, r0, #7
	subs r0, r7, r0
	lsls r0, r0, #0xa
	orrs r1, r0
	mov r0, ip
	strh r1, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xf
	bls _080012EA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001358: .4byte 0x02000000
_0800135C: .4byte gUnk_8DF7590

	THUMB_FUNC_START sub_8001360
sub_8001360: @ 0x08001360
	push {lr}
	ldr r2, _080013C0
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	bne _08001386
	adds r2, r3, #0
	adds r2, #0x44
	ldrh r3, [r2]
	ldr r0, _080013C4
	cmp r3, r0
	bhi _08001386
	adds r0, r3, #1
	strh r0, [r2]
_08001386:
	ldr r1, [r1]
	mov ip, r1
	mov r0, ip
	adds r0, #0x44
	ldrh r1, [r0]
	ldr r0, _080013C8
	cmp r1, r0
	bls _080013D8
	mov r2, ip
	adds r2, #0x82
	ldrh r1, [r2]
	cmp r1, #0xff
	bhi _080013CC
	mov r3, ip
	adds r3, #0x46
	ldrh r0, [r3]
	adds r0, r1, r0
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x84
	ldrh r0, [r3]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _080013D8
	.align 2, 0
_080013C0: .4byte gUnk_8DF7590
_080013C4: .4byte 0x0000FFEF
_080013C8: .4byte 0x0000FFE8
_080013CC:
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x84
	strh r1, [r0]
_080013D8:
	bl sub_8001788
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80013E0
sub_80013E0: @ 0x080013E0
	push {lr}
	ldr r1, _080013F8
	ldr r0, [r1]
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #5
	bhi _0800144E
	lsls r0, r0, #2
	ldr r1, _080013FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080013F8: .4byte gUnk_8DF7590
_080013FC: .4byte _08001400
_08001400: @ jump table
	.4byte _08001418 @ case 0
	.4byte _08001420 @ case 1
	.4byte _0800141C @ case 2
	.4byte _08001420 @ case 3
	.4byte _0800143A @ case 4
	.4byte _0800144E @ case 5
_08001418:
	movs r0, #0
	b _0800143C
_0800141C:
	movs r0, #1
	b _0800143C
_08001420:
	ldr r2, [r2]
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	ldrh r0, [r2, #8]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800144E
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	b _0800144E
_0800143A:
	movs r0, #2
_0800143C:
	bl sub_8001458
	ldr r0, _08001454
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0800144E:
	pop {r0}
	bx r0
	.align 2, 0
_08001454: .4byte gUnk_8DF7590

	THUMB_FUNC_START sub_8001458
sub_8001458: @ 0x08001458
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _080014DC
	cmp r0, #1
	bgt _0800146E
	cmp r0, #0
	beq _08001478
	b _08001582
_0800146E:
	cmp r1, #2
	beq _08001478
	cmp r1, #3
	beq _08001540
	b _08001582
_08001478:
	ldr r1, _080014C0
	ldr r2, _080014C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080014C8
	ldr r4, _080014CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _080014D0
	ldr r5, _080014D4
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _080014D8
_08001498:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08001498
	bl LoadCharblock1
	b _08001582
	.align 2, 0
_080014C0: .4byte 0x0400000C
_080014C4: .4byte 0x00004781
_080014C8: .4byte gUnk_8A481C8
_080014CC: .4byte 0x02004400
_080014D0: .4byte 0x040000D4
_080014D4: .4byte gUnk_8A45AD8
_080014D8: .4byte 0x8000000F
_080014DC:
	ldr r1, _08001524
	ldr r2, _08001528
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800152C
	ldr r4, _08001530
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08001534
	ldr r5, _08001538
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _0800153C
_080014FC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080014FC
	bl LoadCharblock0
	b _08001582
	.align 2, 0
_08001524: .4byte 0x0400000C
_08001528: .4byte 0x00004F85
_0800152C: .4byte gUnk_8A492D8
_08001530: .4byte 0x02000400
_08001534: .4byte 0x040000D4
_08001538: .4byte gUnk_8A45C5E
_0800153C: .4byte 0x8000000F
_08001540:
	ldr r1, _08001588
	ldr r2, _0800158C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08001590
	ldr r4, _08001594
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08001598
	ldr r5, _0800159C
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _080015A0
_08001560:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #5
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x13
	bls _08001560
	bl LoadCharblock0
_08001582:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001588: .4byte 0x0400000C
_0800158C: .4byte 0x00004F85
_08001590: .4byte gUnk_8A47010
_08001594: .4byte 0x02000400
_08001598: .4byte 0x040000D4
_0800159C: .4byte gUnk_8A45880
_080015A0: .4byte 0x8000000F

	THUMB_FUNC_START sub_80015A4
sub_80015A4: @ 0x080015A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080015D8
	ldr r5, [r3]
	ldr r2, _080015DC
	ldrb r0, [r5, #0xb]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080015E0
	movs r0, #0
	strb r0, [r5, #0xa]
	adds r0, r3, #0
	ldr r1, [r0]
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	b _080015E4
	.align 2, 0
_080015D8: .4byte gUnk_8DF7590
_080015DC: .4byte gUnk_8FA3630
_080015E0:
	adds r0, r1, #1
	strb r0, [r5, #0xa]
_080015E4:
	ldr r1, _0800176C
	ldr r3, [r1]
	ldrb r0, [r3, #0xb]
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080015F8
	strb r0, [r3, #0xb]
_080015F8:
	movs r0, #0
	ldr r4, _08001770
	mov sb, r4
	ldr r2, [r2]
	mov ip, r2
_08001602:
	movs r6, #0
	lsls r5, r0, #5
	mov sl, r5
	adds r7, r0, #1
	str r7, [sp]
	lsls r7, r0, #3
_0800160E:
	lsls r3, r6, #3
	add r3, sl
	mov r0, sb
	adds r5, r3, r0
	ldr r1, _0800176C
	ldr r4, [r1]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r0
	adds r0, #0x50
	movs r2, #0xff
	ands r0, r2
	orrs r1, r0
	strh r1, [r5]
	movs r2, #2
	add r2, sb
	mov r8, r2
	adds r2, r3, r2
	str r2, [sp, #4]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	lsls r1, r6, #6
	adds r0, r0, r1
	ldr r5, _08001774
	adds r1, r5, #0
	ands r0, r1
	orrs r2, r0
	ldr r0, [sp, #4]
	strh r2, [r0]
	ldr r1, _08001778
	adds r3, r3, r1
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #3
	add r0, ip
	ldr r0, [r0, #4]
	adds r0, r7, r0
	ldrh r0, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800160E
	ldr r4, [sp]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08001602
	movs r6, #0
	movs r5, #0x5e
	add r5, r8
	mov ip, r5
	ldr r0, _0800177C
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r7, #0xff
	lsls r7, r7, #8
	mov sl, r7
	movs r0, #0x62
	add r8, r0
_080016AA:
	lsls r3, r6, #3
	mov r1, ip
	adds r5, r3, r1
	mov r2, sb
	adds r4, r3, r2
	ldrh r1, [r4]
	mov r2, sl
	ands r2, r1
	ldr r7, _0800176C
	ldr r0, [r7]
	adds r0, #0x42
	ldrb r0, [r0]
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	orrs r2, r1
	strh r2, [r5]
	mov r2, ip
	adds r2, #2
	adds r1, r3, r2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	add r3, r8
	ldrh r0, [r4, #4]
	movs r4, #0xc1
	lsls r4, r4, #4
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x26
	bls _080016AA
	movs r6, #0
	ldr r5, _08001780
	mov sl, r5
	movs r7, #0xff
	lsls r7, r7, #8
	mov ip, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	mov sb, r0
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r8, r1
_08001708:
	lsls r4, r6, #3
	ldr r2, _08001784
	adds r3, r4, r2
	lsls r0, r6, #2
	add r0, sl
	ldr r0, [r0]
	ldr r5, [r0, #4]
	ldrh r0, [r5]
	mov r1, ip
	ands r1, r0
	ldr r7, _0800176C
	ldr r2, [r7]
	adds r0, r2, #0
	adds r0, #0x56
	adds r0, r0, r6
	ldrb r0, [r0]
	orrs r0, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r3, _08001784
	adds r3, #2
	adds r3, r4, r3
	ldrh r0, [r5, #2]
	mov r1, sb
	ands r1, r0
	adds r2, #0x48
	adds r2, r2, r6
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r3]
	add r4, r8
	ldrh r0, [r5, #4]
	strh r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xd
	bls _08001708
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800176C: .4byte gUnk_8DF7590
_08001770: .4byte gOamBuffer
_08001774: .4byte 0x000001FF
_08001778: .4byte gOamBuffer+4
_0800177C: .4byte gUnk_8FA3770
_08001780: .4byte gUnk_8FA37E8
_08001784: .4byte 0x02018598

	THUMB_FUNC_START sub_8001788
sub_8001788: @ 0x08001788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r6, _080018B8
	ldr r1, [r6]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _080018BC
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r7, [r0, r2]
	adds r1, #0x82
	movs r3, #0
	ldrsh r0, [r1, r3]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	ldrsh r5, [r4, r0]
	ldr r0, [r6]
	adds r0, #0x82
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	mov sl, r0
	mov r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldrh r4, [r4]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [r6]
	adds r0, #0x84
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov sb, r0
	mov r4, sb
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	ldr r0, [r6]
	adds r0, #0x84
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_8008144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	movs r3, #0x78
	rsbs r3, r3, #0
	add r8, r3
	ldr r4, [sp]
	mov r3, r8
	muls r3, r4, r3
	movs r1, #0
	movs r2, #0x50
	subs r4, r1, r2
	mov r1, sl
	muls r1, r4, r1
	adds r3, r3, r1
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r3, r3, r1
	asrs r5, r3, #0x10
	ldr r2, _080018C0
	adds r6, r2, #0
	ands r5, r6
	mov r1, r8
	mov r2, sb
	muls r2, r1, r2
	adds r1, r0, #0
	muls r1, r4, r1
	adds r2, r2, r1
	movs r4, #0x50
	lsls r1, r4, #8
	adds r2, r2, r1
	asrs r4, r2, #0x10
	ands r4, r6
	ldr r6, _080018C4
	movs r1, #0
	strh r1, [r6]
	ldr r1, _080018C8
	strh r3, [r1]
	ldr r1, _080018CC
	strh r5, [r1]
	ldr r1, _080018D0
	strh r2, [r1]
	ldr r1, _080018D4
	strh r4, [r1]
	ldr r1, _080018D8
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r1]
	ldr r1, _080018DC
	mov r3, sl
	strh r3, [r1]
	ldr r1, _080018E0
	mov r4, sb
	strh r4, [r1]
	ldr r1, _080018E4
	strh r0, [r1]
	movs r0, #1
	strh r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080018B8: .4byte gUnk_8DF7590
_080018BC: .4byte gUnk_8088ED4
_080018C0: .4byte 0x00000FFF
_080018C4: .4byte 0x04000208
_080018C8: .4byte gBG2X_L
_080018CC: .4byte gBG2X_H
_080018D0: .4byte gBG2Y_L
_080018D4: .4byte gBG2Y_H
_080018D8: .4byte gBG2PA
_080018DC: .4byte gBG2PB
_080018E0: .4byte gBG2PC
_080018E4: .4byte gBG2PD

	THUMB_FUNC_START sub_80018E8
sub_80018E8: @ 0x080018E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _080019B8
	mov sl, r0
	ldr r5, _080019BC
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	mov r8, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	ldrh r4, [r0]
	rsbs r4, r4, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r5]
	adds r0, #0x41
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r5, [r0, r2]
	mov r0, sb
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_8008144
	ldr r1, _080019C0
	mov r2, r8
	strh r2, [r1]
	strh r6, [r1, #8]
	strh r4, [r1, #0x10]
	strh r0, [r1, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080019B8: .4byte gUnk_8088ED4
_080019BC: .4byte gUnk_8DF7590
_080019C0: .4byte gOamBuffer+6

	THUMB_FUNC_START sub_80019C4
sub_80019C4: @ 0x080019C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _08001A94
	ldr r0, _08001A98
	mov ip, r0
	ldr r1, _08001A9C
	mov r8, r1
	ldr r2, _08001AA0
	mov sb, r2
	ldr r4, _08001AA4
	movs r6, #0
	movs r5, #0xa0
_080019E2:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _080019E2
	ldr r1, _08001AA8
	ldr r2, _08001AAC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08001AB0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08001AB4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08001AB8
	movs r1, #1
	strh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	ldr r1, _08001ABC
	movs r0, #8
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08001AC0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08001AC4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	adds r1, #2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r7]
	movs r0, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	mov r1, sb
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r1, _08001AC8
	ldr r2, _08001ACC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08001AD0
	ldr r2, _08001AD4
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001A94: .4byte gBG0HOFS
_08001A98: .4byte gBG0VOFS
_08001A9C: .4byte gBG1HOFS
_08001AA0: .4byte gBG1VOFS
_08001AA4: .4byte gOamBuffer
_08001AA8: .4byte 0x04000008
_08001AAC: .4byte 0x00005C0A
_08001AB0: .4byte 0x00005E0B
_08001AB4: .4byte 0x00004781
_08001AB8: .4byte 0x04000208
_08001ABC: .4byte 0x04000004
_08001AC0: .4byte 0x00003701
_08001AC4: .4byte 0x00001078
_08001AC8: .4byte gBLDCNT
_08001ACC: .4byte 0x00003F50
_08001AD0: .4byte gBLDALPHA
_08001AD4: .4byte 0x00001010

	THUMB_FUNC_START sub_8001AD8
sub_8001AD8: @ 0x08001AD8
	push {lr}
	bl sub_8002E98
	ldr r0, _08001B00
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1]
_08001AE6:
	bl sub_80043D0
	ldr r0, _08001B00
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #5
	bhi _08001B58
	lsls r0, r0, #2
	ldr r1, _08001B04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001B00: .4byte gUnk_8DF7594
_08001B04: .4byte _08001B08
_08001B08: @ jump table
	.4byte _08001B20 @ case 0
	.4byte _08001B2C @ case 1
	.4byte _08001B32 @ case 2
	.4byte _08001B38 @ case 3
	.4byte _08001B3E @ case 4
	.4byte _08001B44 @ case 5
_08001B20:
	ldr r0, _08001B28
	ldr r1, [r0]
	movs r0, #1
	b _08001B5A
	.align 2, 0
_08001B28: .4byte gUnk_8DF7594
_08001B2C:
	bl sub_8001E8C
	b _08001B5C
_08001B32:
	bl sub_80020D8
	b _08001B5C
_08001B38:
	bl sub_80029D4
	b _08001B5C
_08001B3E:
	bl sub_80027F0
	b _08001B5C
_08001B44:
	ldr r0, _08001B54
	ldr r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08001B5C
	.align 2, 0
_08001B54: .4byte gUnk_8DF7594
_08001B58:
	movs r0, #0
_08001B5A:
	str r0, [r1]
_08001B5C:
	ldr r0, _08001B80
	ldr r1, [r0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001B84
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001AE6
	.align 2, 0
_08001B80: .4byte gUnk_8DF7594
_08001B84:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8001B88
sub_8001B88: @ 0x08001B88
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001BB8
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001B9A:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001BC0
	cmp r0, #1
	blo _08001BBC
	cmp r0, #2
	beq _08001BC6
	cmp r0, #5
	beq _08001BCC
	movs r0, #0
	str r0, [r1]
	b _08001BD4
	.align 2, 0
_08001BB8: .4byte gUnk_8DF7594
_08001BBC:
	str r4, [r1]
	b _08001BD4
_08001BC0:
	bl sub_8001E8C
	b _08001BD4
_08001BC6:
	movs r0, #5
	str r0, [r1]
	b _08001BD4
_08001BCC:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001BD4:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001BF4
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001B9A
_08001BF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001BFC
sub_8001BFC: @ 0x08001BFC
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001C2C
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001C0E:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001C34
	cmp r0, #1
	blo _08001C30
	cmp r0, #2
	beq _08001C3A
	cmp r0, #5
	beq _08001C40
	movs r0, #0
	str r0, [r1]
	b _08001C48
	.align 2, 0
_08001C2C: .4byte gUnk_8DF7594
_08001C30:
	str r4, [r1]
	b _08001C48
_08001C34:
	bl sub_80020D8
	b _08001C48
_08001C3A:
	movs r0, #5
	str r0, [r1]
	b _08001C48
_08001C40:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001C48:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001C68
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001C0E
_08001C68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001C70
sub_8001C70: @ 0x08001C70
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001CA0
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001C82:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001CA8
	cmp r0, #1
	blo _08001CA4
	cmp r0, #2
	beq _08001CAE
	cmp r0, #5
	beq _08001CB4
	movs r0, #0
	str r0, [r1]
	b _08001CBC
	.align 2, 0
_08001CA0: .4byte gUnk_8DF7594
_08001CA4:
	str r4, [r1]
	b _08001CBC
_08001CA8:
	bl sub_80027F0
	b _08001CBC
_08001CAE:
	movs r0, #5
	str r0, [r1]
	b _08001CBC
_08001CB4:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001CBC:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001CDC
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001C82
_08001CDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001CE4
sub_8001CE4: @ 0x08001CE4
	push {r4, r5, lr}
	bl sub_8002E98
	ldr r2, _08001D14
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001CF6:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001D1C
	cmp r0, #1
	blo _08001D18
	cmp r0, #2
	beq _08001D22
	cmp r0, #5
	beq _08001D28
	movs r0, #0
	str r0, [r1]
	b _08001D30
	.align 2, 0
_08001D14: .4byte gUnk_8DF7594
_08001D18:
	str r4, [r1]
	b _08001D30
_08001D1C:
	bl sub_80029D4
	b _08001D30
_08001D22:
	movs r0, #5
	str r0, [r1]
	b _08001D30
_08001D28:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001D30:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001D50
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001CF6
_08001D50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001D58
sub_8001D58: @ 0x08001D58
	push {r4, r5, lr}
	movs r0, #0
	bl PlayMusic
	bl sub_8002E98
	ldr r2, _08001D90
	ldr r1, [r2]
	movs r0, #0
	str r0, [r1]
	adds r5, r2, #0
	movs r4, #1
_08001D70:
	bl sub_80043D0
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #1
	beq _08001D98
	cmp r0, #1
	blo _08001D94
	cmp r0, #2
	beq _08001D9E
	cmp r0, #5
	beq _08001DA4
	movs r0, #0
	str r0, [r1]
	b _08001DAC
	.align 2, 0
_08001D90: .4byte gUnk_8DF7594
_08001D94:
	str r4, [r1]
	b _08001DAC
_08001D98:
	bl sub_8002D10
	b _08001DAC
_08001D9E:
	movs r0, #5
	str r0, [r1]
	b _08001DAC
_08001DA4:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	strb r4, [r0]
_08001DAC:
	ldr r1, [r5]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001DCC
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001D70
_08001DCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8001DD4
sub_8001DD4: @ 0x08001DD4
	push {lr}
	bl sub_8002E98
	ldr r0, _08001DFC
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1]
_08001DE2:
	bl sub_80043D0
	ldr r0, _08001DFC
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #5
	bhi _08001E5C
	lsls r0, r0, #2
	ldr r1, _08001E00
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001DFC: .4byte gUnk_8DF7594
_08001E00: .4byte _08001E04
_08001E04: @ jump table
	.4byte _08001E1C @ case 0
	.4byte _08001E28 @ case 1
	.4byte _08001E2E @ case 2
	.4byte _08001E34 @ case 3
	.4byte _08001E3A @ case 4
	.4byte _08001E48 @ case 5
_08001E1C:
	ldr r0, _08001E24
	ldr r1, [r0]
	movs r0, #1
	b _08001E5E
	.align 2, 0
_08001E24: .4byte gUnk_8DF7594
_08001E28:
	bl sub_8001E8C
	b _08001E60
_08001E2E:
	bl sub_80020D8
	b _08001E60
_08001E34:
	bl sub_80029D4
	b _08001E60
_08001E3A:
	ldr r0, _08001E44
	ldr r1, [r0]
	movs r0, #5
	b _08001E5E
	.align 2, 0
_08001E44: .4byte gUnk_8DF7594
_08001E48:
	ldr r0, _08001E58
	ldr r0, [r0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08001E60
	.align 2, 0
_08001E58: .4byte gUnk_8DF7594
_08001E5C:
	movs r0, #0
_08001E5E:
	str r0, [r1]
_08001E60:
	ldr r0, _08001E84
	ldr r1, [r0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08001E88
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_8008220
	b _08001DE2
	.align 2, 0
_08001E84: .4byte gUnk_8DF7594
_08001E88:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8001E8C
sub_8001E8C: @ 0x08001E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #2
	movs r6, #1
	mov r8, r6
	ldr r1, _08001EB0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #8
	bls _08001EA6
	b _080020CA
_08001EA6:
	lsls r0, r0, #2
	ldr r1, _08001EB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001EB0: .4byte gUnk_8DF7594
_08001EB4: .4byte _08001EB8
_08001EB8: @ jump table
	.4byte _08001EDC @ case 0
	.4byte _08001F2C @ case 1
	.4byte _08001F88 @ case 2
	.4byte _08001F9C @ case 3
	.4byte _08001FD8 @ case 4
	.4byte _08001FF6 @ case 5
	.4byte _08002050 @ case 6
	.4byte _0800207C @ case 7
	.4byte _0800209A @ case 8
_08001EDC:
	movs r0, #0xb1
	lsls r0, r0, #1
	bl PlayMusic
	bl sub_8002E98
	ldr r4, _08001F28
	ldr r0, [r4]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r5, #0
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r5, [r0]
	bl sub_8003B78
	bl sub_8004D7C
	bl sub_80045D4
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	ldr r1, [r4]
	strh r5, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _080020CA
	.align 2, 0
_08001F28: .4byte gUnk_8DF7594
_08001F2C:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r6, _08001F7C
	ldrh r0, [r1, #0xa]
	adds r1, r7, #0
	bl __divsi3
	strh r0, [r6]
	bl LoadBlendingRegs
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r7, #0
	bl __divsi3
	cmp r0, #0xf
	bgt _08001F54
	b _080020CA
_08001F54:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r1, _08001F80
	ldr r2, _08001F84
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r6]
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	b _080020CA
	.align 2, 0
_08001F7C: .4byte gBLDALPHA
_08001F80: .4byte gBLDCNT
_08001F84: .4byte 0x00003F54
_08001F88:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _08001F9A
	b _080020CA
_08001F9A:
	b _08001FE8
_08001F9C:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _08001FD4
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl LoadBlendingRegs
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl __divsi3
	cmp r0, #0xf
	bgt _08001FCC
	b _080020CA
_08001FCC:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _080020CA
	.align 2, 0
_08001FD4: .4byte gBLDALPHA
_08001FD8:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080020CA
_08001FE8:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _080020CA
_08001FF6:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r6, _08002048
	ldrh r0, [r1, #0xa]
	mov r1, r8
	bl __divsi3
	movs r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r6]
	bl LoadBlendingRegs
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	mov r1, r8
	bl __divsi3
	cmp r0, #0xf
	ble _080020CA
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800204C
	adds r0, r1, #0
	strh r0, [r6]
	bl LoadBlendingRegs
	b _080020CA
	.align 2, 0
_08002048: .4byte gBLDALPHA
_0800204C: .4byte 0x00001010
_08002050:
	ldr r0, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	bl sub_80045D4
	bl LoadPalettes
	ldr r1, [r5]
	adds r4, r1, r4
	ldrb r2, [r4]
	cmp r2, #0
	bne _080020CA
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r5]
	strh r2, [r0, #0xa]
	b _080020CA
_0800207C:
	ldr r2, [r5]
	ldrh r0, [r2, #0xa]
	cmp r0, #0xa
	bls _08002090
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #8]
	ldr r0, [r5]
	strh r1, [r0, #0xa]
_08002090:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _080020CA
_0800209A:
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #2
	movs r6, #0
	strb r0, [r1]
	bl sub_8004730
	bl LoadPalettes
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080020CA
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_080020CA:
	bl sub_800373C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80020D8
sub_80020D8: @ 0x080020D8
	push {r4, r5, r6, r7, lr}
	ldr r1, _080020F4
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #7
	bls _080020E8
	b _080027CC
_080020E8:
	lsls r0, r0, #2
	ldr r1, _080020F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080020F4: .4byte gUnk_8DF7594
_080020F8: .4byte _080020FC
_080020FC: @ jump table
	.4byte _0800211C @ case 0
	.4byte _08002134 @ case 1
	.4byte _080021C8 @ case 2
	.4byte _08002388 @ case 3
	.4byte _080023FC @ case 4
	.4byte _08002518 @ case 5
	.4byte _08002640 @ case 6
	.4byte _08002760 @ case 7
_0800211C:
	ldr r0, _0800212C
	bl PlayMusic
	bl sub_8003020
	ldr r0, _08002130
	ldr r1, [r0]
	b _0800274A
	.align 2, 0
_0800212C: .4byte 0x00000163
_08002130: .4byte gUnk_8DF7594
_08002134:
	ldr r4, _080021B0
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r2, _080021B4
	ldrh r1, [r1, #0xa]
	lsrs r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl LoadBlendingRegs
	ldr r1, _080021B8
	ldrh r0, [r1]
	subs r0, #0x14
	strh r0, [r1]
	bl LoadBgOffsets
	bl sub_8003D10
	bl LoadOam
	ldr r0, [r4]
	ldrh r0, [r0, #0xa]
	lsrs r0, r0, #1
	cmp r0, #0xf
	bhi _0800216E
	b _080027CC
_0800216E:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xf8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080021BC
	movs r3, #0xfd
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080021C0
	ldr r2, _080021C4
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBlendingRegs
	movs r3, #0
	movs r2, #1
_08002194:
	ldr r0, [r4]
	lsls r1, r3, #1
	adds r0, #0xc
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _08002194
	ldr r0, _080021B0
	ldr r1, [r0]
	b _0800274A
	.align 2, 0
_080021B0: .4byte gUnk_8DF7594
_080021B4: .4byte gBLDY
_080021B8: .4byte gBG3VOFS
_080021BC: .4byte gBLDCNT
_080021C0: .4byte gBLDALPHA
_080021C4: .4byte 0x00000808
_080021C8:
	ldr r3, [r6]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0x30
	bls _080021F8
	ldr r1, _080021F0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _080021F4
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #4
	b _0800232C
	.align 2, 0
_080021F0: .4byte gBG1VOFS
_080021F4: .4byte 0x0000018B
_080021F8:
	cmp r0, #0x18
	bls _08002238
	ldr r1, _0800222C
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r0, [r6]
	ldr r3, _08002230
	adds r1, r0, r3
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	ldr r1, _08002234
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #4
	b _0800232C
	.align 2, 0
_0800222C: .4byte gBG1VOFS
_08002230: .4byte 0x0000018B
_08002234: .4byte gBG2VOFS
_08002238:
	cmp r0, #0xc
	bls _08002278
	ldr r1, _0800226C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _08002270
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r1, _08002274
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldr r1, [r6]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrb r0, [r1]
	subs r0, #2
	b _0800232C
	.align 2, 0
_0800226C: .4byte gBG1VOFS
_08002270: .4byte 0x0000018B
_08002274: .4byte gBG2VOFS
_08002278:
	cmp r0, #6
	bls _080022C0
	ldrh r0, [r3, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080022A0
	ldr r1, _080022B4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _080022B8
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080022A0:
	ldr r1, _080022BC
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, [r6]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r1, r3
	b _08002328
	.align 2, 0
_080022B4: .4byte gBG1VOFS
_080022B8: .4byte 0x0000018B
_080022BC: .4byte gBG2VOFS
_080022C0:
	cmp r0, #0
	beq _08002310
	ldrh r0, [r3, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080022E8
	ldr r1, _08002304
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r6]
	ldr r2, _08002308
	adds r1, r0, r2
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080022E8:
	ldr r2, [r6]
	ldrh r0, [r2, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800232E
	ldr r1, _0800230C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r1, r2, r3
	b _08002328
	.align 2, 0
_08002304: .4byte gBG1VOFS
_08002308: .4byte 0x0000018B
_0800230C: .4byte gBG2VOFS
_08002310:
	ldrh r0, [r3, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800232E
	ldr r1, _08002378
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r3, r0
_08002328:
	ldrb r0, [r1]
	subs r0, #1
_0800232C:
	strb r0, [r1]
_0800232E:
	ldr r5, _0800237C
	ldr r1, _08002380
	adds r4, r1, #0
	ldrh r2, [r5]
	adds r4, r4, r2
	ldr r6, _08002384
	ldr r0, [r6]
	ldrh r0, [r0, #0xa]
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r4, r0
	strh r4, [r5]
	bl LoadBgOffsets
	bl sub_8003D10
	bl LoadOam
	ldr r1, [r6]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r2, [r0]
	cmp r2, #0
	beq _0800236A
	b _080027CC
_0800236A:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r6]
	strh r2, [r0, #0xa]
	b _080027CC
	.align 2, 0
_08002378: .4byte gBG2VOFS
_0800237C: .4byte gBG3VOFS
_08002380: .4byte 0x0000FFEC
_08002384: .4byte gUnk_8DF7594
_08002388:
	ldr r5, _080023B0
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r2, r0, #1
	movs r4, #0
	strh r2, [r1, #0xa]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _080023C0
	ldr r0, _080023B4
	ldr r3, _080023B8
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _080023BC
	strh r2, [r0]
	bl LoadBlendingRegs
	b _080023E6
	.align 2, 0
_080023B0: .4byte gUnk_8DF7594
_080023B4: .4byte gBLDCNT
_080023B8: .4byte 0x00003FC8
_080023BC: .4byte gBLDY
_080023C0:
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xd8
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080023F0
	ldr r3, _080023F4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080023F8
	strh r4, [r0]
	bl LoadBlendingRegs
	ldr r1, [r5]
	strh r4, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_080023E6:
	bl sub_8003D10
	bl LoadOam
	b _080027CC
	.align 2, 0
_080023F0: .4byte gBLDCNT
_080023F4: .4byte 0x00003FBF
_080023F8: .4byte gBLDY
_080023FC:
	adds r4, r6, #0
	ldr r1, [r4]
	ldrh r2, [r1, #0xa]
	adds r0, r2, #0
	cmp r0, #0x10
	bhi _08002428
	ldr r1, _0800241C
	ldr r3, _08002420
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08002424
	strh r2, [r0]
	bl LoadBlendingRegs
	ldr r1, [r4]
	b _080024CE
	.align 2, 0
_0800241C: .4byte gBLDCNT
_08002420: .4byte 0x00003FBF
_08002424: .4byte gBLDY
_08002428:
	cmp r0, #0x11
	bne _080024B4
	movs r3, #0
	ldr r7, _080024AC
_08002430:
	adds r0, r3, #0
	adds r0, #0x30
	lsls r0, r0, #1
	adds r5, r0, r7
	ldr r4, [r6]
	adds r0, r4, #0
	adds r0, #0x36
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x4d
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x96
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0x97
	muls r0, r1, r0
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xf6
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _08002474
	adds r0, #0xff
_08002474:
	asrs r0, r0, #8
	lsls r1, r0, #5
	orrs r1, r0
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r5]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x5f
	bls _08002430
	movs r1, #0xf3
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	ldr r2, _080024B0
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0]
	bl LoadPalettes
	b _080024CC
	.align 2, 0
_080024AC: .4byte 0x02000000
_080024B0: .4byte 0x000001E7
_080024B4:
	cmp r0, #0x22
	bhi _080024E4
	ldr r1, _080024D8
	ldr r3, _080024DC
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080024E0
	movs r0, #0x22
	subs r0, r0, r2
	strh r0, [r1]
	bl LoadBlendingRegs
_080024CC:
	ldr r1, [r6]
_080024CE:
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0800261A
	.align 2, 0
_080024D8: .4byte gBLDCNT
_080024DC: .4byte 0x00003FBF
_080024E0: .4byte gBLDY
_080024E4:
	movs r0, #0
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, _08002510
	movs r2, #0xfd
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002514
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xd8
	lsls r3, r3, #6
	adds r0, r3, #0
	b _08002618
	.align 2, 0
_08002510: .4byte gBLDCNT
_08002514: .4byte gBLDY
_08002518:
	ldr r4, _080025BC
	ldr r2, [r4]
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	movs r0, #0xf5
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r3, #0xf9
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xf7
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	subs r3, #0x9a
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r2, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r5, [r4]
	ldrh r0, [r5, #0xa]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bhi _080025CC
	ldr r1, _080025C0
	ldr r2, _080025C4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _080025C8
	ldrh r0, [r5, #0xa]
	movs r1, #5
	bl __udivsi3
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r4]
	bl LoadBlendingRegs
	b _0800261A
	.align 2, 0
_080025BC: .4byte gUnk_8DF7594
_080025C0: .4byte gBLDCNT
_080025C4: .4byte 0x00003F50
_080025C8: .4byte gBLDALPHA
_080025CC:
	movs r3, #0xf3
	lsls r3, r3, #1
	adds r0, r5, r3
	movs r1, #3
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002628
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r3, #2
	adds r0, r0, r3
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _0800262C
	ldr r2, _08002630
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002634
	ldr r3, _08002638
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0800263C
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xb8
	lsls r2, r2, #6
	adds r0, r2, #0
_08002618:
	strh r0, [r1]
_0800261A:
	bl sub_8003D10
	bl sub_80043D0
	bl LoadOam
	b _080027CC
	.align 2, 0
_08002628: .4byte 0x000001E7
_0800262C: .4byte gBLDCNT
_08002630: .4byte 0x00003FC8
_08002634: .4byte gBLDALPHA
_08002638: .4byte 0x00000808
_0800263C: .4byte gBLDY
_08002640:
	ldr r6, _08002690
	ldr r0, [r6]
	ldrh r2, [r0, #0xa]
	cmp r2, #0x10
	bhi _0800265E
	ldr r1, _08002694
	ldr r3, _08002698
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0800269C
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1]
	bl LoadBlendingRegs
_0800265E:
	ldr r5, _080026A0
	ldrh r4, [r5]
	adds r4, #1
	ldr r6, [r6]
	ldrh r0, [r6, #0xa]
	movs r1, #0xa
	bl __udivsi3
	adds r4, r4, r0
	strh r4, [r5]
	ldr r3, _080026A4
	ldrh r1, [r3]
	subs r2, r1, #1
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf9
	bls _080026A8
	ldrh r0, [r6, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002720
	strh r2, [r3]
	b _08002720
	.align 2, 0
_08002690: .4byte gUnk_8DF7594
_08002694: .4byte gBLDCNT
_08002698: .4byte 0x00003FC8
_0800269C: .4byte gBLDY
_080026A0: .4byte gBG3VOFS
_080026A4: .4byte gBG1VOFS
_080026A8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf4
	bls _080026D4
	ldrh r0, [r6, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080026BC
	strh r2, [r3]
_080026BC:
	ldrh r0, [r6, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002720
	ldr r1, _080026D0
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_080026D0: .4byte gBG2VOFS
_080026D4:
	cmp r0, #0xe8
	bls _080026F0
	strh r2, [r3]
	ldrh r0, [r6, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08002720
	ldr r1, _080026EC
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_080026EC: .4byte gBG2VOFS
_080026F0:
	cmp r0, #0xd0
	bls _08002704
	subs r0, r1, #2
	strh r0, [r3]
	ldr r1, _08002700
	ldrh r0, [r1]
	subs r0, #1
	b _0800271E
	.align 2, 0
_08002700: .4byte gBG2VOFS
_08002704:
	cmp r0, #0xa0
	bls _08002718
	subs r0, r1, #4
	strh r0, [r3]
	ldr r1, _08002714
	ldrh r0, [r1]
	subs r0, #2
	b _0800271E
	.align 2, 0
_08002714: .4byte gBG2VOFS
_08002718:
	ldr r1, _08002758
	ldrh r0, [r1]
	subs r0, #4
_0800271E:
	strh r0, [r1]
_08002720:
	bl LoadBgOffsets
	bl sub_8003D10
	bl sub_80043D0
	bl LoadOam
	ldr r0, _0800275C
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	adds r2, r0, #1
	strh r2, [r1, #0xa]
	ldr r0, _08002758
	ldrh r0, [r0]
	cmp r0, #0xa0
	bhi _080027CC
	movs r3, #0xd5
	lsls r3, r3, #1
	adds r0, r1, r3
	strh r2, [r0]
_0800274A:
	movs r0, #0
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	b _080027CC
	.align 2, 0
_08002758: .4byte gBG2VOFS
_0800275C: .4byte gUnk_8DF7594
_08002760:
	ldr r6, _080027A8
	ldr r0, [r6]
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r5, _080027AC
	ldrh r4, [r5]
	adds r4, #1
	ldrh r0, [r1]
	movs r1, #0xa
	bl __udivsi3
	adds r4, r4, r0
	strh r4, [r5]
	bl LoadBgOffsets
	ldr r1, [r6]
	ldrh r2, [r1, #0xa]
	cmp r2, #0x10
	bhi _080027BC
	ldr r1, _080027B0
	ldr r3, _080027B4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080027B8
	strh r2, [r0]
	bl LoadBlendingRegs
	ldr r1, [r6]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	b _080027CA
	.align 2, 0
_080027A8: .4byte gUnk_8DF7594
_080027AC: .4byte gBG3VOFS
_080027B0: .4byte gBLDCNT
_080027B4: .4byte 0x00003FFF
_080027B8: .4byte gBLDY
_080027BC:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r1, #8]
	ldr r1, [r6]
	movs r0, #0
_080027CA:
	strh r0, [r1, #0xa]
_080027CC:
	ldr r0, _080027EC
	ldr r2, [r0]
	movs r0, #0xd3
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x18
	strh r0, [r1]
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrb r0, [r1]
	adds r0, #0xa
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080027EC: .4byte gUnk_8DF7594

	THUMB_FUNC_START sub_80027F0
sub_80027F0: @ 0x080027F0
	push {r4, r5, r6, lr}
	movs r6, #1
	ldr r1, _0800280C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #6
	bls _08002802
	b _080029C8
_08002802:
	lsls r0, r0, #2
	ldr r1, _08002810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800280C: .4byte gUnk_8DF7594
_08002810: .4byte _08002814
_08002814: @ jump table
	.4byte _08002830 @ case 0
	.4byte _08002894 @ case 1
	.4byte _080028D0 @ case 2
	.4byte _080028FA @ case 3
	.4byte _08002926 @ case 4
	.4byte _08002962 @ case 5
	.4byte _08002998 @ case 6
_08002830:
	ldr r0, _08002888
	bl PlayMusic
	bl sub_8003268
	ldr r4, _0800288C
	ldr r0, [r4]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002890
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r5, [r0]
	bl sub_8003C10
	bl sub_8004DE0
	bl sub_80045D4
	bl sub_8004678
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	b _080029C8
	.align 2, 0
_08002888: .4byte 0x00000165
_0800288C: .4byte gUnk_8DF7594
_08002890: .4byte 0x00000157
_08002894:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _080028CC
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl LoadBlendingRegs
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl __divsi3
	cmp r0, #0xf
	bgt _080028C4
	b _080029C8
_080028C4:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _0800295A
	.align 2, 0
_080028CC: .4byte gBLDALPHA
_080028D0:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080029C8
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xd0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	b _080029C8
_080028FA:
	ldr r0, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	bl sub_80045D4
	bl LoadPalettes
	ldr r1, [r5]
	adds r4, r1, r4
	ldrb r2, [r4]
	cmp r2, #0
	bne _080029C8
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r5]
	strh r2, [r0, #0xa]
	b _080029C8
_08002926:
	ldr r1, [r5]
	movs r4, #0xab
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	bl sub_80045D4
	bl LoadPalettes
	ldr r2, [r5]
	adds r4, r2, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080029C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r3, #0xb0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	ldrb r0, [r2, #8]
	adds r0, #1
	strb r0, [r2, #8]
_0800295A:
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _080029C8
_08002962:
	ldr r1, [r5]
	ldr r4, _08002994
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_8004678
	bl LoadPalettes
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _080029C8
	movs r0, #8
	bl sub_8035038
	ldr r0, [r5]
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r0, [r5]
	strh r4, [r0, #0xa]
	b _080029C8
	.align 2, 0
_08002994: .4byte 0x00000157
_08002998:
	ldr r1, [r5]
	movs r4, #0xac
	lsls r4, r4, #1
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #2
	movs r6, #0
	strb r0, [r1]
	bl sub_8004730
	bl LoadPalettes
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080029C8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_080029C8:
	bl sub_80037B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80029D4
sub_80029D4: @ 0x080029D4
	push {r4, r5, lr}
	ldr r1, _080029F0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #7
	bls _080029E4
	b _08002CFC
_080029E4:
	lsls r0, r0, #2
	ldr r1, _080029F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080029F0: .4byte gUnk_8DF7594
_080029F4: .4byte _080029F8
_080029F8: @ jump table
	.4byte _08002A18 @ case 0
	.4byte _08002A3C @ case 1
	.4byte _08002B30 @ case 2
	.4byte _08002BEC @ case 3
	.4byte _08002C34 @ case 4
	.4byte _08002C60 @ case 5
	.4byte _08002CAC @ case 6
	.4byte _08002CC8 @ case 7
_08002A18:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl PlayMusic
	bl sub_8003444
	ldr r3, _08002A38
	ldr r1, [r3]
	ldrb r0, [r1, #8]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #8]
	ldr r0, [r3]
	strh r2, [r0, #0xa]
	b _08002CFC
	.align 2, 0
_08002A38: .4byte gUnk_8DF7594
_08002A3C:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	ldr r2, _08002A78
	ldr r3, _08002A7C
	adds r0, r3, #0
	strh r0, [r2]
	ldr r2, _08002A80
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl LoadBlendingRegs
	ldr r0, [r4]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r1, r1, r0
	mov ip, r1
	ldrb r3, [r1]
	adds r2, r3, #0
	cmp r2, #0x30
	bls _08002A88
	subs r0, r3, #3
	strb r0, [r1]
	ldr r1, _08002A84
	ldrh r0, [r1]
	adds r0, #3
	b _08002AE6
	.align 2, 0
_08002A78: .4byte gBLDCNT
_08002A7C: .4byte 0x00003FD8
_08002A80: .4byte gBLDY
_08002A84: .4byte gBG3VOFS
_08002A88:
	cmp r2, #0x18
	bls _08002AA0
	subs r0, r3, #2
	mov r2, ip
	strb r0, [r2]
	ldr r1, _08002A9C
	ldrh r0, [r1]
	adds r0, #2
	b _08002AE6
	.align 2, 0
_08002A9C: .4byte gBG3VOFS
_08002AA0:
	cmp r2, #0xc
	bhi _08002ADA
	cmp r2, #6
	bls _08002ABA
	ldrh r0, [r0, #0xa]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
	subs r0, r3, #1
	mov r1, ip
	strb r0, [r1]
	b _08002AE0
_08002ABA:
	cmp r2, #3
	bls _08002AD0
	ldrh r0, [r0, #0xa]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
	subs r0, r3, #1
	mov r2, ip
	strb r0, [r2]
	b _08002AE0
_08002AD0:
	ldrh r0, [r0, #0xa]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08002AE8
_08002ADA:
	subs r0, r3, #1
	mov r3, ip
	strb r0, [r3]
_08002AE0:
	ldr r1, _08002B18
	ldrh r0, [r1]
	adds r0, #1
_08002AE6:
	strh r0, [r1]
_08002AE8:
	bl sub_8004E54
	bl LoadOam
	bl LoadBgOffsets
	ldr r0, _08002B1C
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x10
	beq _08002B00
	b _08002CFC
_08002B00:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, _08002B20
	ldr r2, _08002B24
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08002B28
	ldr r3, _08002B2C
	adds r0, r3, #0
	b _08002BCE
	.align 2, 0
_08002B18: .4byte gBG3VOFS
_08002B1C: .4byte gUnk_8DF7594
_08002B20: .4byte gBLDCNT
_08002B24: .4byte 0x00003F50
_08002B28: .4byte gBLDALPHA
_08002B2C: .4byte 0x00001010
_08002B30:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	movs r0, #0xc5
	lsls r0, r0, #1
	adds r3, r1, r0
	ldrb r2, [r3]
	adds r0, r2, #0
	cmp r0, #0x30
	bls _08002B58
	subs r0, r2, #3
	strb r0, [r3]
	ldr r1, _08002B54
	ldrh r0, [r1]
	adds r0, #3
	b _08002B98
	.align 2, 0
_08002B54: .4byte gBG3VOFS
_08002B58:
	cmp r0, #0x18
	bls _08002B6C
	subs r0, r2, #2
	strb r0, [r3]
	ldr r1, _08002B68
	ldrh r0, [r1]
	adds r0, #2
	b _08002B98
	.align 2, 0
_08002B68: .4byte gBG3VOFS
_08002B6C:
	cmp r0, #0xc
	bhi _08002B8E
	cmp r0, #6
	bls _08002B7A
	ldrh r0, [r1, #0xa]
	movs r1, #1
	b _08002B88
_08002B7A:
	cmp r0, #3
	bls _08002B84
	ldrh r0, [r1, #0xa]
	movs r1, #3
	b _08002B88
_08002B84:
	ldrh r0, [r1, #0xa]
	movs r1, #7
_08002B88:
	ands r0, r1
	cmp r0, #0
	bne _08002B9A
_08002B8E:
	subs r0, r2, #1
	strb r0, [r3]
	ldr r1, _08002BD8
	ldrh r0, [r1]
	adds r0, #1
_08002B98:
	strh r0, [r1]
_08002B9A:
	bl sub_8004E54
	bl LoadOam
	bl LoadBgOffsets
	ldr r3, _08002BDC
	ldr r1, [r3]
	movs r2, #0xc5
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r2, [r0]
	cmp r2, #0
	beq _08002BB8
	b _08002CFC
_08002BB8:
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r3]
	strh r2, [r0, #0xa]
	ldr r1, _08002BE0
	ldr r3, _08002BE4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08002BE8
	movs r0, #0x10
_08002BCE:
	strh r0, [r1]
	bl LoadBlendingRegs
	b _08002CFC
	.align 2, 0
_08002BD8: .4byte gBG3VOFS
_08002BDC: .4byte gUnk_8DF7594
_08002BE0: .4byte gBLDCNT
_08002BE4: .4byte 0x00003FBF
_08002BE8: .4byte gBLDY
_08002BEC:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	bl sub_8003820
	ldr r1, _08002C28
	ldr r2, _08002C2C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08002C30
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	bl LoadBlendingRegs
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #7
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08002C56
	.align 2, 0
_08002C28: .4byte gBLDCNT
_08002C2C: .4byte 0x00003FBF
_08002C30: .4byte gBLDY
_08002C34:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	strh r1, [r0, #0xa]
	bl sub_8003820
	bl sub_8004894
	bl LoadPalettes
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #9
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08002C56:
	bl sub_8004318
	bl LoadOam
	b _08002CFC
_08002C60:
	ldr r0, [r4]
	ldrh r1, [r0, #0xa]
	adds r1, #1
	movs r5, #0
	strh r1, [r0, #0xa]
	bl sub_8004894
	bl LoadPalettes
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x1f
	bls _08002CFC
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	ldr r1, _08002CA0
	ldr r3, _08002CA4
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08002CA8
	strh r5, [r0]
	bl LoadBlendingRegs
	bl sub_8004260
	bl LoadOam
	b _08002CFC
	.align 2, 0
_08002CA0: .4byte gBLDCNT
_08002CA4: .4byte 0x00003FFF
_08002CA8: .4byte gBLDY
_08002CAC:
	ldr r2, [r4]
	ldrh r0, [r2, #0xa]
	cmp r0, #0x1d
	bls _08002CC0
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #0
	strb r0, [r2, #8]
	ldr r0, [r4]
	strh r1, [r0, #0xa]
_08002CC0:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	b _08002CFA
_08002CC8:
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r2, _08002D04
	ldr r3, _08002D08
	adds r0, r3, #0
	strh r0, [r2]
	ldr r2, _08002D0C
	ldrh r0, [r1, #0xa]
	lsrs r0, r0, #2
	strh r0, [r2]
	bl LoadBlendingRegs
	ldr r1, [r4]
	ldrh r0, [r1, #0xa]
	cmp r0, #0x3f
	bls _08002CFC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	strb r0, [r1, #8]
	ldr r1, [r4]
	movs r0, #0
_08002CFA:
	strh r0, [r1, #0xa]
_08002CFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002D04: .4byte gBLDCNT
_08002D08: .4byte 0x00003FFF
_08002D0C: .4byte gBLDY

	THUMB_FUNC_START sub_8002D10
sub_8002D10: @ 0x08002D10
	push {r4, r5, r6, lr}
	movs r6, #1
	ldr r1, _08002D2C
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	adds r5, r1, #0
	cmp r0, #5
	bls _08002D22
	b _08002E8C
_08002D22:
	lsls r0, r0, #2
	ldr r1, _08002D30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002D2C: .4byte gUnk_8DF7594
_08002D30: .4byte _08002D34
_08002D34: @ jump table
	.4byte _08002D4C @ case 0
	.4byte _08002DA4 @ case 1
	.4byte _08002DE0 @ case 2
	.4byte _08002E0A @ case 3
	.4byte _08002E40 @ case 4
	.4byte _08002E5E @ case 5
_08002D4C:
	bl sub_8003560
	ldr r4, _08002D9C
	ldr r0, [r4]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, [r4]
	ldr r2, _08002DA0
	adds r0, r0, r2
	strb r1, [r0]
	ldr r0, [r4]
	adds r1, #0xd8
	adds r0, r0, r1
	strb r5, [r0]
	bl sub_8003C10
	bl sub_8004DE0
	bl sub_80045D4
	bl sub_8004678
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	b _08002E8C
	.align 2, 0
_08002D9C: .4byte gUnk_8DF7594
_08002DA0: .4byte 0x00000157
_08002DA4:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	ldr r4, _08002DDC
	ldrh r0, [r1, #0xa]
	adds r1, r6, #0
	bl __divsi3
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	bl LoadBlendingRegs
	ldr r4, [r5]
	ldrh r0, [r4, #0xa]
	adds r1, r6, #0
	bl __divsi3
	cmp r0, #0xf
	ble _08002E8C
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08002E56
	.align 2, 0
_08002DDC: .4byte gBLDALPHA
_08002DE0:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08002E8C
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	b _08002E8C
_08002E0A:
	ldr r1, [r5]
	ldr r4, _08002E3C
	adds r1, r1, r4
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	bl sub_8004678
	bl LoadPalettes
	ldr r0, [r5]
	adds r0, r0, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _08002E8C
	movs r0, #8
	bl sub_8035038
	ldr r0, [r5]
	ldrb r1, [r0, #8]
	adds r1, #1
	strb r1, [r0, #8]
	ldr r0, [r5]
	strh r4, [r0, #0xa]
	b _08002E8C
	.align 2, 0
_08002E3C: .4byte 0x00000157
_08002E40:
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08002E8C
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08002E56:
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0xa]
	b _08002E8C
_08002E5E:
	ldr r1, [r5]
	ldr r4, _08002E94
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	bl sub_8004678
	bl LoadPalettes
	ldr r1, [r5]
	adds r4, r1, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08002E8C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	strb r6, [r1, #8]
	ldr r0, [r5]
	strh r6, [r0, #0xa]
_08002E8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002E94: .4byte 0x00000157

	THUMB_FUNC_START sub_8002E98
sub_8002E98: @ 0x08002E98
	push {r4, r5, r6, lr}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08002FD0
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08002FD4
	movs r3, #0
	ldr r2, _08002FD8
_08002EBC:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08002EBC
	ldr r0, _08002FD0
	ldr r0, [r0]
	str r5, [r0]
	ldr r0, _08002FDC
	ldr r4, _08002FE0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08002FE4
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08002FE8
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08002FEC
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08002FF4
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r3, _08002FF8
_08002F0C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F0C
	movs r1, #0
	ldr r6, _08002FFC
	ldr r2, _08002FF0
	ldr r5, _08003000
	ldr r4, _08003004
	ldr r3, _08002FF8
_08002F38:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F38
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08003008
	ldr r4, _0800300C
	ldr r3, _08002FF8
_08002F62:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F62
	movs r1, #0
	ldr r2, _08002FF0
	ldr r5, _08003010
	ldr r4, _08003014
	ldr r3, _08002FF8
_08002F8C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08002F8C
	adds r0, r6, #0
	bl sub_80081DC
	bl LoadVRAM
	ldr r0, _08003018
	ldr r1, _0800301C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	bl LoadPalettes
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002FD0: .4byte gUnk_8DF7594
_08002FD4: .4byte 0x02018800
_08002FD8: .4byte 0x00004313
_08002FDC: .4byte gUnk_8A52618
_08002FE0: .4byte 0x02000400
_08002FE4: .4byte gUnk_8A536F4
_08002FE8: .4byte gUnk_8A5E54C
_08002FEC: .4byte gUnk_8A5F8E8
_08002FF0: .4byte 0x040000D4
_08002FF4: .4byte gUnk_8AA6958
_08002FF8: .4byte 0x8000001E
_08002FFC: .4byte sub_80048F8
_08003000: .4byte gUnk_8AA6C64
_08003004: .4byte 0x02007C00
_08003008: .4byte gUnk_8AA8DE8
_0800300C: .4byte 0x0200BC00
_08003010: .4byte gUnk_8AA90F4
_08003014: .4byte 0x0200FC00
_08003018: .4byte gUnk_8AA6358
_0800301C: .4byte 0x02000000

	THUMB_FUNC_START sub_8003020
sub_8003020: @ 0x08003020
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08003224
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08003228
	movs r3, #0
	ldr r2, _0800322C
_0800304A:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0800304A
	ldr r2, _08003224
	ldr r4, [r2]
	str r5, [r4]
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	movs r5, #0xae
	lsls r5, r5, #1
	adds r0, r4, r5
	strh r1, [r0]
	adds r5, #2
	adds r0, r4, r5
	strh r1, [r0]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x60
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08003230
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r1, #0xd1
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r3, [r0]
	ldr r0, [r2]
	adds r4, #0x18
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #0x18
	adds r0, r0, r5
	strb r3, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _08003234
	mov sb, r4
	ldr r6, _08003238
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	subs r3, #0x56
	movs r4, #0xf9
	lsls r4, r4, #1
_080030CE:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r3, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080030CE
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sb
	adds r1, r6, #0
	bl LZ77UnCompWram
	ldr r0, _0800323C
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r6, r5
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _08003240
	ldr r4, _08003244
	movs r0, #0xc0
	lsls r0, r0, #7
	adds r1, r6, r0
	ldr r3, _08003248
_08003124:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _08003124
	movs r5, #0
	ldr r6, _0800324C
	ldr r1, _08003240
	ldr r4, _08003250
	ldr r3, _08003254
	ldr r2, _08003248
_0800314E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r1]
	adds r0, r5, #2
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bls _0800314E
	movs r5, #0
	ldr r1, _08003240
	ldr r4, _08003258
	ldr r3, _0800325C
	ldr r2, _08003248
_08003178:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r1]
	adds r0, r5, #2
	lsls r0, r0, #6
	adds r0, r0, r3
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xc
	bls _08003178
	adds r0, r6, #0
	bl sub_80081DC
	bl sub_8003D10
	bl sub_8004D34
	bl sub_80043D0
	bl LoadOam
	bl LoadVRAM
	ldr r0, _08003260
	ldr r4, _08003264
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	bl LoadPalettes
	movs r5, #0
	ldr r6, _08003224
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	movs r7, #0xf8
	lsls r7, r7, #7
_080031D2:
	ldr r1, [r6]
	adds r1, #0x36
	adds r1, r1, r5
	adds r3, r5, #0
	adds r3, #0x30
	lsls r3, r3, #1
	adds r3, r3, r4
	ldrb r2, [r3]
	movs r0, #0x1f
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r5
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x5f
	bls _080031D2
	bl sub_8008220
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003224: .4byte gUnk_8DF7594
_08003228: .4byte 0x02018800
_0800322C: .4byte 0x00004313
_08003230: .4byte 0x0000018B
_08003234: .4byte gUnk_8A6F6F4
_08003238: .4byte 0x02000400
_0800323C: .4byte gUnk_8A71A60
_08003240: .4byte 0x040000D4
_08003244: .4byte gUnk_8AAB278
_08003248: .4byte 0x8000001E
_0800324C: .4byte sub_8004A18
_08003250: .4byte gUnk_8AAB9F8
_08003254: .4byte 0x0200A400
_08003258: .4byte gUnk_8AABD04
_0800325C: .4byte 0x0200AC00
_08003260: .4byte gUnk_8AA6358
_08003264: .4byte 0x02000000

	THUMB_FUNC_START sub_8003268
sub_8003268: @ 0x08003268
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08003410
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _08003414
	movs r3, #0
	ldr r2, _08003418
_08003294:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08003294
	ldr r2, _08003410
	ldr r4, [r2]
	str r5, [r4]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0xa0
	strh r0, [r1]
	movs r5, #0xaf
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r3, #0x60
	movs r0, #0x60
	strh r0, [r1]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x90
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _0800341C
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x16
	adds r4, r0, r5
	movs r0, #0x30
	strb r0, [r4]
	ldr r0, [r2]
	ldr r4, _08003420
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #2
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _08003424
	mov sl, r4
	ldr r0, _08003428
	mov sb, r0
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	movs r6, #0x80
	lsls r6, r6, #2
	movs r4, #0xf9
	lsls r4, r4, #1
	subs r3, #0x56
_08003324:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r6, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08003324
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sl
	mov r1, sb
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _0800342C
	ldr r4, _08003430
	movs r1, #0xf0
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _08003434
_0800336E:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _0800336E
	ldr r0, _08003438
	bl sub_80081DC
	bl LoadVRAM
	ldr r0, _0800343C
	ldr r4, _08003440
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r5, #0
	ldr r6, _08003410
	mov r8, r4
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080033B4:
	ldr r2, [r6]
	adds r4, r5, #0
	adds r4, #0x20
	adds r2, #0x36
	adds r2, r2, r4
	adds r3, r5, #0
	adds r3, #0x90
	lsls r3, r3, #1
	add r3, r8
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080033B4
	bl LoadPalettes
	bl sub_8008220
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003410: .4byte gUnk_8DF7594
_08003414: .4byte 0x02018800
_08003418: .4byte 0x00004313
_0800341C: .4byte 0x0000018B
_08003420: .4byte 0x000001A3
_08003424: .4byte gUnk_8A950D4
_08003428: .4byte 0x02008400
_0800342C: .4byte 0x040000D4
_08003430: .4byte gUnk_8AADBF4
_08003434: .4byte 0x8000001E
_08003438: .4byte sub_8004B44
_0800343C: .4byte gUnk_8AA6358
_08003440: .4byte 0x02000000

	THUMB_FUNC_START sub_8003444
sub_8003444: @ 0x08003444
	push {r4, r5, r6, lr}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08003528
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _0800352C
	movs r3, #0
	ldr r2, _08003530
_08003468:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _08003468
	ldr r0, _08003528
	ldr r0, [r0]
	str r5, [r0]
	ldr r0, _08003534
	ldr r4, _08003538
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800353C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r4, r2
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003540
	ldr r5, _08003544
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r4, r4, r0
	ldr r3, _08003548
_080034A0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xe
	bls _080034A0
	movs r1, #0
	ldr r6, _0800354C
	ldr r2, _08003540
	ldr r5, _08003550
	ldr r4, _08003554
	ldr r3, _08003548
_080034CA:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r4
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080034CA
	adds r0, r6, #0
	bl sub_80081DC
	ldr r0, _08003528
	ldr r0, [r0]
	movs r2, #0xc5
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0x60
	strb r0, [r1]
	bl sub_8003CA8
	bl sub_8004E54
	bl LoadOam
	bl LoadVRAM
	ldr r0, _08003558
	ldr r1, _0800355C
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	bl LoadPalettes
	bl sub_8008220
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003528: .4byte gUnk_8DF7594
_0800352C: .4byte 0x02018800
_08003530: .4byte 0x00004313
_08003534: .4byte gUnk_8A72DFC
_08003538: .4byte 0x02000400
_0800353C: .4byte gUnk_8A75548
_08003540: .4byte 0x040000D4
_08003544: .4byte gUnk_8AAC010
_08003548: .4byte 0x8000001E
_0800354C: .4byte sub_8004C30
_08003550: .4byte gUnk_8AAC394
_08003554: .4byte 0x0200FC00
_08003558: .4byte gUnk_8AA6558
_0800355C: .4byte 0x02000000

	THUMB_FUNC_START sub_8003560
sub_8003560: @ 0x08003560
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_803ED78
	bl LoadOam
	bl LoadPalettes
	bl LoadVRAM
	bl sub_8045718
	ldr r0, _08003708
	ldr r0, [r0]
	ldr r5, [r0]
	movs r1, #0
	ldr r4, _0800370C
	movs r3, #0
	ldr r2, _08003710
_0800358C:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	bls _0800358C
	ldr r2, _08003708
	ldr r4, [r2]
	str r5, [r4]
	movs r0, #0xad
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r3, #0xae
	lsls r3, r3, #1
	adds r1, r4, r3
	movs r0, #0xa0
	strh r0, [r1]
	movs r5, #0xaf
	lsls r5, r5, #1
	adds r1, r4, r5
	movs r3, #0x60
	movs r0, #0x60
	strh r0, [r1]
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x90
	strb r1, [r0]
	ldr r0, [r2]
	ldr r4, _08003714
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x2e
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	adds r5, #0x16
	adds r4, r0, r5
	movs r0, #0x30
	strb r0, [r4]
	ldr r0, [r2]
	ldr r4, _08003718
	adds r0, r0, r4
	strb r3, [r0]
	ldr r0, [r2]
	adds r5, #2
	adds r0, r0, r5
	strb r1, [r0]
	ldr r0, [r2]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0x80
	strb r0, [r1]
	movs r5, #0
	mov r8, r2
	ldr r4, _0800371C
	mov sl, r4
	ldr r0, _08003720
	mov sb, r0
	mov ip, r8
	movs r7, #0xf5
	lsls r7, r7, #1
	movs r6, #0x80
	lsls r6, r6, #2
	movs r4, #0xf9
	lsls r4, r4, #1
	subs r3, #0x56
_0800361C:
	mov r0, ip
	ldr r1, [r0]
	lsls r2, r5, #1
	adds r0, r1, r7
	adds r0, r0, r2
	strh r6, [r0]
	adds r1, r1, r4
	adds r1, r1, r2
	strh r3, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0800361C
	mov r1, r8
	ldr r2, [r1]
	movs r3, #0xf8
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r0, r2, r4
	strh r1, [r0]
	mov r0, sl
	mov r1, sb
	bl LZ77UnCompWram
	movs r5, #0
	ldr r2, _08003724
	ldr r4, _08003728
	movs r1, #0xf0
	lsls r1, r1, #7
	add r1, sb
	ldr r3, _0800372C
_08003666:
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r4
	str r0, [r2]
	lsls r0, r5, #6
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _08003666
	ldr r0, _08003730
	bl sub_80081DC
	bl LoadVRAM
	ldr r0, _08003734
	ldr r4, _08003738
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuSet
	movs r5, #0
	ldr r6, _08003708
	mov r8, r4
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080036AC:
	ldr r2, [r6]
	adds r4, r5, #0
	adds r4, #0x20
	adds r2, #0x36
	adds r2, r2, r4
	adds r3, r5, #0
	adds r3, #0xa0
	lsls r3, r3, #1
	add r3, r8
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r2, [r3]
	mov r0, sb
	ands r0, r2
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r3]
	adds r0, r7, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080036AC
	bl LoadPalettes
	bl sub_8008220
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003708: .4byte gUnk_8DF7594
_0800370C: .4byte 0x02018800
_08003710: .4byte 0x00004313
_08003714: .4byte 0x0000018B
_08003718: .4byte 0x000001A3
_0800371C: .4byte gUnk_8A950D4
_08003720: .4byte 0x02008400
_08003724: .4byte 0x040000D4
_08003728: .4byte gUnk_8AADBF4
_0800372C: .4byte 0x8000001E
_08003730: .4byte sub_8004B44
_08003734: .4byte gUnk_8AA6358
_08003738: .4byte 0x02000000

	THUMB_FUNC_START sub_800373C
sub_800373C: @ 0x0800373C
	push {r4, r5, lr}
	ldr r0, _08003754
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _08003776
	cmp r2, #1
	blo _08003758
	cmp r2, #2
	beq _08003782
	b _080037AC
	.align 2, 0
_08003754: .4byte gUnk_8DF7594
_08003758:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003980
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _080037AA
_08003776:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _080037AC
_08003782:
	ldrb r0, [r3, #0x14]
	cmp r0, #0xa
	bhi _0800378C
	adds r0, #1
	b _0800378E
_0800378C:
	movs r0, #0
_0800378E:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003980
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_080037AA:
	str r0, [r1, #4]
_080037AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80037B4
sub_80037B4: @ 0x080037B4
	push {r4, r5, lr}
	ldr r0, _080037CC
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _080037E6
	cmp r2, #1
	blo _080037D0
	cmp r2, #2
	beq _080037F2
	b _08003814
	.align 2, 0
_080037CC: .4byte gUnk_8DF7594
_080037D0:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _08003812
_080037E6:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _08003814
_080037F2:
	ldrb r0, [r3, #0x14]
	cmp r0, #0xa
	bhi _080037FC
	adds r0, #1
	b _080037FE
_080037FC:
	movs r0, #0
_080037FE:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003888
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_08003812:
	str r0, [r1, #4]
_08003814:
	bl sub_8008220
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003820
sub_8003820: @ 0x08003820
	push {r4, r5, lr}
	ldr r0, _08003838
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r5, r0, #0
	cmp r2, #1
	beq _08003852
	cmp r2, #1
	blo _0800383C
	cmp r2, #2
	beq _0800385E
	b _08003880
	.align 2, 0
_08003838: .4byte gUnk_8DF7594
_0800383C:
	movs r4, #0
	strb r4, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003A78
	ldr r1, [r5]
	strh r4, [r1, #0x12]
	ldr r0, [r1, #4]
	adds r0, #1
	b _0800387E
_08003852:
	ldrh r0, [r3, #0x12]
	adds r0, #1
	strh r0, [r3, #0x12]
	movs r0, #2
	str r0, [r3, #4]
	b _08003880
_0800385E:
	ldrb r0, [r3, #0x14]
	cmp r0, #7
	bhi _08003868
	adds r0, #1
	b _0800386A
_08003868:
	movs r0, #0
_0800386A:
	strb r0, [r3, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x14]
	bl sub_8003A78
	ldr r1, [r5]
	movs r0, #0
	strh r0, [r1, #0x12]
	ldr r0, [r1, #4]
	subs r0, #1
_0800387E:
	str r0, [r1, #4]
_08003880:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8003888
sub_8003888: @ 0x08003888
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800389C
	cmp r0, #1
	beq _0800390C
	b _0800395C
_0800389C:
	ldr r1, _080038F0
	ldr r2, _080038F4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080038F8
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _080038FC
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003900
	ldr r0, _08003904
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003908
_080038C8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080038C8
	bl LoadCharblock1
	b _0800395C
	.align 2, 0
_080038F0: .4byte 0x0400000C
_080038F4: .4byte 0x00000702
_080038F8: .4byte gUnk_8FA3A4C
_080038FC: .4byte 0x02004400
_08003900: .4byte 0x040000D4
_08003904: .4byte gUnk_8FA3ADC
_08003908: .4byte 0x8000001E
_0800390C:
	ldr r1, _08003964
	ldr r2, _08003968
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0800396C
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003970
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003974
	ldr r0, _08003978
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _0800397C
_08003938:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003938
	bl LoadCharblock0
_0800395C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003964: .4byte 0x0400000C
_08003968: .4byte 0x00000F06
_0800396C: .4byte gUnk_8FA3A4C
_08003970: .4byte 0x02000400
_08003974: .4byte 0x040000D4
_08003978: .4byte gUnk_8FA3ADC
_0800397C: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003980
sub_8003980: @ 0x08003980
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003994
	cmp r0, #1
	beq _08003A04
	b _08003A54
_08003994:
	ldr r1, _080039E8
	ldr r2, _080039EC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080039F0
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _080039F4
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _080039F8
	ldr r0, _080039FC
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003A00
_080039C0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _080039C0
	bl LoadCharblock3
	b _08003A54
	.align 2, 0
_080039E8: .4byte 0x0400000E
_080039EC: .4byte 0x0000170B
_080039F0: .4byte gUnk_8FA3A80
_080039F4: .4byte 0x0200C400
_080039F8: .4byte 0x040000D4
_080039FC: .4byte gUnk_8FA3B10
_08003A00: .4byte 0x8000001E
_08003A04:
	ldr r1, _08003A5C
	ldr r2, _08003A60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003A64
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003A68
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003A6C
	ldr r0, _08003A70
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xe0
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r3, _08003A74
_08003A30:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003A30
	bl LoadCharblock2
_08003A54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003A5C: .4byte 0x0400000E
_08003A60: .4byte 0x00001F0F
_08003A64: .4byte gUnk_8FA3A80
_08003A68: .4byte 0x02008400
_08003A6C: .4byte 0x040000D4
_08003A70: .4byte gUnk_8FA3B10
_08003A74: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003A78
sub_8003A78: @ 0x08003A78
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08003A8C
	cmp r0, #1
	beq _08003B00
	b _08003B54
_08003A8C:
	ldr r1, _08003AE4
	ldr r2, _08003AE8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003AEC
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003AF0
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003AF4
	ldr r0, _08003AF8
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r3, _08003AFC
_08003AB8:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003AB8
	bl LoadCharblock2
	bl LoadCharblock3
	b _08003B54
	.align 2, 0
_08003AE4: .4byte 0x0400000E
_08003AE8: .4byte 0x00000F83
_08003AEC: .4byte gUnk_8FA3AB4
_08003AF0: .4byte 0x02008400
_08003AF4: .4byte 0x040000D4
_08003AF8: .4byte gUnk_8FA3B44
_08003AFC: .4byte 0x8000001E
_08003B00:
	ldr r1, _08003B5C
	ldr r2, _08003B60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08003B64
	adds r4, #1
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	ldr r5, _08003B68
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r2, _08003B6C
	ldr r0, _08003B70
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0xf0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r3, _08003B74
_08003B2C:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [r2]
	adds r0, r1, #2
	lsls r0, r0, #6
	adds r0, r0, r5
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xc
	bls _08003B2C
	bl LoadCharblock0
	bl LoadCharblock1
_08003B54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003B5C: .4byte 0x0400000E
_08003B60: .4byte 0x00001F8B
_08003B64: .4byte gUnk_8FA3AB4
_08003B68: .4byte 0x02000400
_08003B6C: .4byte 0x040000D4
_08003B70: .4byte gUnk_8FA3B44
_08003B74: .4byte 0x8000001E

	THUMB_FUNC_START sub_8003B78
sub_8003B78: @ 0x08003B78
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003BF8
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08003BFC
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08003C00
	ldr r5, _08003C04
	adds r1, r5, #0
	adds r2, r4, #0
	bl CpuSet
	movs r4, #0
	ldr r6, _08003C08
	ldr r0, _08003C0C
	adds r7, r5, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r5, #0xf8
	lsls r5, r5, #7
_08003BB0:
	ldr r3, [r6]
	adds r3, #0x36
	adds r3, r3, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r3, [r2]
	mov r0, ip
	ands r0, r3
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r2]
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08003BB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003BF8: .4byte gUnk_8A96358
_08003BFC: .4byte gUnk_8A98358
_08003C00: .4byte gUnk_8AA6758
_08003C04: .4byte 0x02000200
_08003C08: .4byte gUnk_8DF7594
_08003C0C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003C10
sub_8003C10: @ 0x08003C10
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003C90
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08003C94
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08003C98
	ldr r5, _08003C9C
	adds r1, r5, #0
	adds r2, r4, #0
	bl CpuSet
	movs r4, #0
	ldr r6, _08003CA0
	ldr r0, _08003CA4
	adds r7, r5, r0
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r5, #0xf8
	lsls r5, r5, #7
_08003C48:
	ldr r3, [r6]
	adds r3, #0x36
	adds r3, r3, r4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r4, r2
	lsls r2, r2, #1
	adds r2, r2, r7
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	ldr r1, [r6]
	adds r1, #0x96
	adds r1, r1, r4
	ldrh r3, [r2]
	mov r0, ip
	ands r0, r3
	lsrs r0, r0, #5
	strb r0, [r1]
	ldr r1, [r6]
	adds r1, #0xf6
	adds r1, r1, r4
	ldrh r2, [r2]
	adds r0, r5, #0
	ands r0, r2
	lsrs r0, r0, #0xa
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _08003C48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003C90: .4byte gUnk_8A4E490
_08003C94: .4byte gUnk_8A50490
_08003C98: .4byte gUnk_8AA6758
_08003C9C: .4byte 0x02000200
_08003CA0: .4byte gUnk_8DF7594
_08003CA4: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003CA8
sub_8003CA8: @ 0x08003CA8
	push {r4, r5, r6, r7, lr}
	ldr r1, _08003CFC
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #1
	adds r2, r5, #0
	bl sub_803EEFC
	ldr r0, _08003D00
	ldr r4, _08003D04
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	movs r3, #0
	ldr r7, _08003D08
	ldr r0, _08003D0C
	adds r4, r4, r0
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r6, r4, r0
	adds r5, #0x60
_08003CD4:
	ldr r2, [r7]
	lsls r0, r3, #1
	adds r2, #0x16
	adds r2, r2, r0
	adds r1, r3, r5
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r6]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bls _08003CD4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003CFC: .4byte gUnk_8AA4358
_08003D00: .4byte gUnk_8AA6758
_08003D04: .4byte 0x02000200
_08003D08: .4byte gUnk_8DF7594
_08003D0C: .4byte 0xFFFFFE00

	THUMB_FUNC_START sub_8003D10
sub_8003D10: @ 0x08003D10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08004100
	mov sl, r0
	ldr r7, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	ldrh r0, [r1]
	movs r1, #0x30
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x13
	str r0, [sp]
	ldr r5, _08004104
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r1, r0
	movs r3, #0xc5
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrb r2, [r2]
	adds r0, r0, r2
	subs r0, #0x10
	movs r6, #0xff
	ands r0, r6
	orrs r1, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	movs r2, #0xd5
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	orrs r1, r3
	strh r1, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	adds r2, r3, #0
	ands r2, r0
	adds r6, #0x5b
	ldrh r1, [r6, r7]
	mov ip, r1
	add r0, ip
	subs r0, #0x20
	adds r6, #0xa5
	ands r0, r6
	orrs r2, r0
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r2, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	movs r2, #0xd7
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	ldr r5, _08004108
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	adds r1, r4, #0
	ands r1, r0
	subs r6, #0x74
	ldrb r2, [r6, r7]
	mov ip, r2
	add r0, ip
	subs r0, #0x10
	movs r6, #0xff
	ands r0, r6
	orrs r1, r0
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r6, r8
	orrs r1, r6
	strh r1, [r0]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	adds r1, r3, #0
	ands r1, r0
	subs r2, #0x60
	ldrh r6, [r2, r7]
	mov ip, r6
	add r0, ip
	subs r0, #0x20
	adds r2, #0xa3
	ands r0, r2
	orrs r1, r0
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r0, r6, #0
	subs r2, #0x41
	orrs r1, r0
	strh r1, [r2, r7]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	ldrh r1, [r0, #4]
	movs r5, #0xe0
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r1, [r0]
	ldr r2, _0800410C
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	ands r4, r0
	movs r6, #0xc6
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrb r1, [r1]
	adds r0, r0, r1
	subs r0, #0x10
	movs r1, #0xff
	ands r0, r1
	orrs r4, r0
	adds r5, #0xe
	adds r0, r7, r5
	mov r6, r8
	orrs r4, r6
	strh r4, [r0]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #2]
	ands r3, r0
	movs r4, #0xaf
	lsls r4, r4, #1
	adds r1, r7, r4
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x20
	adds r5, #0x31
	ands r0, r5
	orrs r3, r0
	movs r6, #0xc0
	lsls r6, r6, #4
	adds r0, r6, #0
	adds r4, #0x72
	adds r1, r7, r4
	orrs r3, r0
	strh r3, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	subs r5, #0x2d
	adds r1, r7, r5
	strh r0, [r1]
	mov r6, sb
	ldrh r0, [r6]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08003E64
	b _08003FC0
_08003E64:
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r0, sl
	ldr r4, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r3, #0xd5
	lsls r3, r3, #1
	adds r1, r4, r3
	ldrb r1, [r1]
	adds r5, r5, r1
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r6, sl
	ldr r5, [r6]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #6
	lsls r0, r0, #1
	movs r2, #0xad
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r0
	movs r3, #0xd6
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r2, [r0]
	ldr r6, _08004110
	adds r0, r6, #0
	ands r0, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r0
	strh r4, [r1]
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r0, sl
	ldr r4, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r2, #0xcb
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r3, #0xde
	lsls r3, r3, #1
	adds r4, r4, r3
	ldrb r4, [r4]
	adds r5, r5, r4
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r0, sl
	ldr r5, [r0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #0xc
	lsls r0, r0, #1
	movs r3, #0xad
	lsls r3, r3, #1
	adds r2, r5, r3
	adds r2, r2, r0
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r0
	strh r4, [r2]
	movs r0, #0x40
	movs r1, #0x50
	bl sub_8056258
	adds r5, r0, #0
	mov r2, sl
	ldr r4, [r2]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, r4, r0
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r5, r5, r1
	strb r5, [r0]
	movs r0, #0x28
	movs r1, #0x50
	bl sub_8056258
	adds r4, r0, #0
	mov r3, sl
	ldr r5, [r3]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x12
	adds r0, #0x12
	lsls r0, r0, #1
	movs r2, #0xad
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r0
	movs r3, #0xe8
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrh r0, [r0]
	ands r6, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r4, r4, r6
	strh r4, [r1]
_08003FC0:
	movs r4, #0
	mov sb, r4
_08003FC4:
	ldr r5, _08004100
	ldr r0, [r5]
	movs r6, #0xf3
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08003FD8
	b _08004144
_08003FD8:
	movs r7, #0
	mov r0, sb
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sb
	adds r1, #1
	str r1, [sp, #4]
_08003FE6:
	mov r4, sl
	add r4, sb
	lsls r4, r4, #1
	adds r4, r4, r7
	lsls r5, r4, #3
	ldr r2, _08004114
	adds r2, r2, r5
	mov r8, r2
	ldr r3, [sp]
	adds r0, r3, r4
	movs r1, #6
	bl __modsi3
	ldr r6, _08004118
	ldr r1, [r6]
	lsls r0, r0, #3
	adds r1, r0, r1
	ldr r6, [r1, #4]
	ldr r1, _08004100
	ldr r2, [r1]
	adds r4, #6
	movs r3, #0xc5
	lsls r3, r3, #1
	adds r2, r2, r3
	adds r2, r2, r4
	ldrb r1, [r2]
	adds r3, r1, #1
	strb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r6]
	orrs r1, r2
	mov r6, r8
	strh r1, [r6]
	ldr r6, _08004114
	adds r6, #2
	adds r3, r5, r6
	ldr r2, _08004118
	ldr r1, [r2]
	adds r0, r0, r1
	ldr r2, [r0, #4]
	ldr r1, _08004100
	ldr r0, [r1]
	lsls r4, r4, #1
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r4, _08004110
	adds r1, r4, #0
	ands r0, r1
	ldrh r1, [r2, #2]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0800411C
	adds r5, r5, r0
	ldrh r0, [r2, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r2, r0, #0
	ands r2, r1
	adds r0, #0x10
	ldr r3, _08004120
	adds r1, r3, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r5]
	adds r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _08003FE6
	movs r7, #1
_0800407C:
	mov r4, sl
	add r4, sb
	lsls r4, r4, #1
	adds r4, r4, r7
	lsls r5, r4, #3
	ldr r6, _08004114
	adds r6, r6, r5
	mov r8, r6
	ldr r1, [sp]
	adds r0, r1, r4
	movs r1, #6
	bl __modsi3
	ldr r2, _08004124
	ldr r1, [r2]
	lsls r0, r0, #3
	adds r1, r0, r1
	ldr r6, [r1, #4]
	ldr r3, _08004100
	ldr r2, [r3]
	adds r4, #6
	movs r1, #0xc5
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r2, r2, r4
	ldrb r1, [r2]
	adds r3, r1, #1
	strb r3, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r6]
	orrs r1, r2
	mov r2, r8
	strh r1, [r2]
	ldr r2, _08004114
	adds r2, #2
	adds r2, r5, r2
	ldr r3, _08004124
	ldr r1, [r3]
	adds r0, r0, r1
	ldr r3, [r0, #4]
	ldr r6, _08004100
	ldr r0, [r6]
	lsls r4, r4, #1
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r4, _08004110
	adds r1, r4, #0
	ands r0, r1
	ldrh r1, [r3, #2]
	orrs r0, r1
	strh r0, [r2]
	ldr r6, _0800411C
	adds r5, r5, r6
	ldrh r0, [r3, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	adds r1, r2, #0
	adds r2, r0, #0
	ands r2, r1
	adds r0, #0x10
	b _08004128
	.align 2, 0
_08004100: .4byte gUnk_8DF7594
_08004104: .4byte gUnk_8FA38AC
_08004108: .4byte gUnk_8FA38BC
_0800410C: .4byte gUnk_8FA38CC
_08004110: .4byte 0x000001FF
_08004114: .4byte gOamBuffer+0x10
_08004118: .4byte gUnk_8FA3904
_0800411C: .4byte gOamBuffer+0x14
_08004120: .4byte 0x000003FF
_08004124: .4byte gUnk_8FA3950
_08004128:
	ldr r3, _08004140
	adds r1, r3, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r5]
	adds r0, r7, #2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800407C
	b _0800418C
	.align 2, 0
_08004140: .4byte 0x000003FF
_08004144:
	movs r7, #0
	mov r4, sb
	lsls r4, r4, #1
	mov sl, r4
	mov r5, sb
	adds r5, #1
	str r5, [sp, #4]
	mov r0, sl
	add r0, sb
	lsls r4, r0, #1
	ldr r2, _08004254
	adds r6, r2, #4
	mov sb, r6
	movs r0, #0xa0
	mov r8, r0
	adds r1, r2, #2
	mov sl, r1
	movs r5, #0xf0
	movs r6, #0xc0
	lsls r6, r6, #4
	adds r3, r6, #0
_0800416E:
	adds r0, r4, r7
	lsls r0, r0, #3
	adds r1, r0, r2
	mov r6, r8
	strh r6, [r1]
	mov r6, sl
	adds r1, r0, r6
	strh r5, [r1]
	add r0, sb
	strh r3, [r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0800416E
_0800418C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #2
	bhi _0800419A
	b _08003FC4
_0800419A:
	movs r7, #0
	ldr r2, _08004258
	mov r8, r2
	movs r3, #0x34
	add r3, r8
	mov sb, r3
_080041A6:
	lsls r3, r7, #3
	mov r4, r8
	adds r1, r3, r4
	ldr r5, _0800425C
	ldr r4, [r5]
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r2, r2, #1
	movs r0, #0xd5
	lsls r0, r0, #1
	adds r6, r4, r0
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #2
	adds r1, r3, r1
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r5, r4, r0
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #4
	adds r1, r3, r1
	movs r0, #0xd7
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r2, r4, r2
	ldrh r0, [r2]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x18
	adds r1, r3, r1
	adds r0, r7, #3
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x1a
	adds r1, r3, r1
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x1c
	adds r1, r3, r1
	adds r2, r4, r2
	ldrh r0, [r2]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x30
	adds r1, r3, r1
	adds r0, r7, #6
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r6, r6, r2
	ldrh r0, [r6]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x32
	adds r1, r3, r1
	adds r5, r5, r2
	ldrh r0, [r5]
	strh r0, [r1]
	add r3, sb
	adds r4, r4, r2
	ldrh r0, [r4]
	strh r0, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #2
	bls _080041A6
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004254: .4byte gOamBuffer+0x10
_08004258: .4byte gOamBuffer+0xA0
_0800425C: .4byte gUnk_8DF7594

	THUMB_FUNC_START sub_8004260
sub_8004260: @ 0x08004260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08004304
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _08004308
	adds r2, #4
	mov sl, r2
_08004280:
	lsls r4, r6, #3
	ldr r7, _08004308
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _0800430C
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _08004308
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _08004310
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _08004314
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004280
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004304: .4byte gUnk_8FA3A44
_08004308: .4byte gOamBuffer
_0800430C: .4byte gUnk_8DF7594
_08004310: .4byte 0x000001FF
_08004314: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004318
sub_8004318: @ 0x08004318
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080043BC
	ldr r0, [r0]
	ldr r0, [r0, #4]
	mov sb, r0
	movs r0, #0xff
	lsls r0, r0, #8
	mov r8, r0
	ldr r2, _080043C0
	adds r2, #4
	mov sl, r2
_08004338:
	lsls r4, r6, #3
	ldr r7, _080043C0
	adds r3, r4, r7
	mov r0, sb
	adds r5, r4, r0
	ldrh r2, [r5]
	mov r1, r8
	ands r1, r2
	ldr r7, _080043C4
	ldr r7, [r7]
	mov ip, r7
	movs r0, #0xc5
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	ldr r3, _080043C0
	adds r3, #2
	adds r3, r4, r3
	ldrh r1, [r5, #2]
	mov r2, r8
	ands r2, r1
	movs r0, #0xad
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r7, _080043C8
	adds r0, r7, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r3]
	add r4, sl
	ldrh r1, [r5, #4]
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _080043CC
	adds r0, r3, #0
	ands r1, r0
	orrs r2, r1
	strh r2, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bls _08004338
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080043BC: .4byte gUnk_8FA3A44
_080043C0: .4byte gOamBuffer
_080043C4: .4byte gUnk_8DF7594
_080043C8: .4byte 0x000001FF
_080043CC: .4byte 0x000003FF

	THUMB_FUNC_START sub_80043D0
sub_80043D0: @ 0x080043D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080045C8
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r5, #0xf5
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	str r0, [sp]
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrh r4, [r4]
	mov sb, r4
	mov r2, sb
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xf9
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	ldr r7, _080045D0
	strh r6, [r7]
	strh r5, [r7, #8]
	strh r4, [r7, #0x10]
	strh r0, [r7, #0x18]
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	movs r1, #0xfa
	lsls r1, r1, #1
	mov sl, r1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0x60
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r4, #0xf7
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp]
	bl sub_8008144
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _080045CC
	ldr r0, [r1]
	movs r2, #0xfb
	lsls r2, r2, #1
	mov sl, r2
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_8008144
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080045CC
	ldr r0, [r2]
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_8008174
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	bl sub_8008144
	adds r1, r7, #0
	adds r1, #0xc0
	strh r6, [r1]
	adds r1, #8
	strh r5, [r1]
	adds r1, #8
	strh r4, [r1]
	adds r1, #8
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C8: .4byte gUnk_8088ED4
_080045CC: .4byte gUnk_8DF7594
_080045D0: .4byte gOamBuffer+6

	THUMB_FUNC_START sub_80045D4
sub_80045D4: @ 0x080045D4
	push {r4, r5, r6, r7, lr}
	ldr r1, _080045EC
	ldr r0, [r1]
	movs r3, #0xab
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _080045F0
	movs r0, #0
	b _080045F6
	.align 2, 0
_080045EC: .4byte gUnk_8DF7594
_080045F0:
	cmp r0, #0x80
	bls _080045F8
	movs r0, #0x80
_080045F6:
	strb r0, [r2]
_080045F8:
	movs r5, #0
	ldr r7, _08004674
_080045FC:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	adds r6, r0, r7
	mov r0, ip
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08004626
	adds r0, #0x7f
_08004626:
	asrs r0, r0, #7
	subs r4, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r5
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800463E
	adds r0, #0x7f
_0800463E:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r5
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800465A
	adds r0, #0x7f
_0800465A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080045FC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004674: .4byte 0x02000000

	THUMB_FUNC_START sub_8004678
sub_8004678: @ 0x08004678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08004694
	ldr r0, [r1]
	ldr r3, _08004698
	adds r2, r0, r3
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0xbf
	bls _0800469C
	movs r0, #0
	b _080046A2
	.align 2, 0
_08004694: .4byte gUnk_8DF7594
_08004698: .4byte 0x00000157
_0800469C:
	cmp r0, #0x80
	bls _080046A4
	movs r0, #0x80
_080046A2:
	strb r0, [r2]
_080046A4:
	movs r6, #0
	ldr r0, _08004728
	mov ip, r0
_080046AA:
	adds r0, r6, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, ip
	adds r7, r0, r1
	mov r0, r8
	ldr r3, [r0]
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r3, #0
	adds r0, #0x36
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r1, _0800472C
	adds r0, r3, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046D6
	adds r0, #0x7f
_080046D6:
	asrs r0, r0, #7
	subs r5, r2, r0
	adds r0, r3, #0
	adds r0, #0x96
	adds r0, r0, r4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080046EE
	adds r0, #0x7f
_080046EE:
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r5
	adds r0, r3, #0
	adds r0, #0xf6
	adds r0, r0, r4
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r3, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0800470A
	adds r0, #0x7f
_0800470A:
	asrs r0, r0, #7
	subs r0, r3, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r7]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _080046AA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004728: .4byte 0x02000000
_0800472C: .4byte 0x00000157

	THUMB_FUNC_START sub_8004730
sub_8004730: @ 0x08004730
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08004750
	ldr r0, [r1]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrb r0, [r2]
	mov ip, r1
	cmp r0, #0xbf
	bls _08004754
	movs r0, #0
	b _0800475A
	.align 2, 0
_08004750: .4byte gUnk_8DF7594
_08004754:
	cmp r0, #0x80
	bls _0800475C
	movs r0, #0x80
_0800475A:
	strb r0, [r2]
_0800475C:
	movs r5, #0
	ldr r7, _08004890
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_0800476C:
	lsls r0, r5, #1
	adds r6, r0, r7
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	mov r0, r8
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _0800476C
	movs r5, #0
	mov r8, r7
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080047C8:
	adds r0, r5, #0
	adds r0, #0x90
	lsls r0, r0, #1
	mov r1, r8
	adds r6, r0, r1
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080047C8
	movs r5, #0
	ldr r0, _08004890
	mov r8, r0
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sb, r1
	movs r7, #0xf8
	lsls r7, r7, #7
_0800482C:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #1
	mov r3, r8
	adds r6, r0, r3
	ldrh r1, [r6]
	movs r4, #0x1f
	ands r4, r1
	mov r0, sb
	ands r0, r1
	lsrs r2, r0, #5
	adds r0, r7, #0
	ands r0, r1
	lsrs r1, r0, #0xa
	mov r3, ip
	ldr r0, [r3]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r2, r0
	lsls r2, r0, #5
	orrs r2, r4
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #7
	subs r0, r1, r0
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _0800482C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004890: .4byte 0x02000000

	THUMB_FUNC_START sub_8004894
sub_8004894: @ 0x08004894
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r6, _080048DC
	ldr r7, _080048E0
	adds r3, r6, #0
	ldr r5, _080048E4
	movs r4, #0xb7
	lsls r4, r4, #1
_080048A4:
	subs r1, r5, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	subs r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xe
	bls _080048A4
	ldr r2, [r7]
	ldrh r3, [r2, #0xa]
	movs r0, #0x1f
	ands r0, r3
	cmp r0, #0xf
	bhi _080048E8
	movs r1, #0xf
	bics r1, r3
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r1, [r0]
	b _080048EA
	.align 2, 0
_080048DC: .4byte 0x02000000
_080048E0: .4byte gUnk_8DF7594
_080048E4: .4byte 0x0000016F
_080048E8:
	ldrh r1, [r2, #0x16]
_080048EA:
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80048F8
sub_80048F8: @ 0x080048F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r7, _080049D0
	ldr r0, _080049D4
	mov ip, r0
	ldr r2, _080049D8
	mov r8, r2
	ldr r3, _080049DC
	mov sb, r3
	ldr r0, _080049E0
	mov sl, r0
	ldr r3, _080049E4
	movs r6, #0
	movs r5, #0xa0
_0800491C:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _0800491C
	ldr r0, _080049E8
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _080049EC
	movs r0, #8
	strh r0, [r1]
	adds r1, #8
	ldr r3, _080049F0
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _080049F4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _080049F8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _080049FC
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	mov r0, sl
	strh r4, [r0]
	ldr r2, _08004A00
	strh r4, [r2]
	ldr r3, _08004A04
	strh r4, [r3]
	ldr r0, _08004A08
	strh r4, [r0]
	bl LoadBgOffsets
	ldr r1, _08004A0C
	ldr r2, _08004A10
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004A14
	strh r4, [r0]
	bl LoadBlendingRegs
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080049D0: .4byte gBG0HOFS
_080049D4: .4byte gBG0VOFS
_080049D8: .4byte gBG1HOFS
_080049DC: .4byte gBG1VOFS
_080049E0: .4byte gBG2HOFS
_080049E4: .4byte gOamBuffer
_080049E8: .4byte 0x04000208
_080049EC: .4byte 0x04000004
_080049F0: .4byte 0x00000702
_080049F4: .4byte 0x0000170B
_080049F8: .4byte 0x00001078
_080049FC: .4byte 0x0400004A
_08004A00: .4byte gBG2VOFS
_08004A04: .4byte gBG3HOFS
_08004A08: .4byte gBG3VOFS
_08004A0C: .4byte gBLDCNT
_08004A10: .4byte 0x00003F48
_08004A14: .4byte gBLDALPHA

	THUMB_FUNC_START sub_8004A18
sub_8004A18: @ 0x08004A18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r0, _08004AFC
	mov r8, r0
	ldr r7, _08004B00
	ldr r1, _08004B04
	mov ip, r1
	ldr r2, _08004B08
	mov sb, r2
	ldr r3, _08004B0C
	mov sl, r3
	ldr r3, _08004B10
	movs r6, #0
	movs r5, #0xa0
_08004A3C:
	lsls r0, r4, #3
	adds r0, r0, r3
	strh r5, [r0]
	lsls r2, r4, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	strh r6, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x7f
	bls _08004A3C
	ldr r0, _08004B14
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004B18
	movs r0, #8
	strh r0, [r1]
	adds r1, #6
	ldr r3, _08004B1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B20
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, _08004B24
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xb8
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004B28
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004B2C
	strb r2, [r0]
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	strh r0, [r7]
	mov r2, ip
	strh r0, [r2]
	movs r1, #0xa0
	mov r3, sb
	strh r1, [r3]
	mov r2, sl
	strh r0, [r2]
	ldr r3, _08004B30
	strh r1, [r3]
	ldr r1, _08004B34
	strh r0, [r1]
	ldr r2, _08004B38
	strh r0, [r2]
	bl LoadBgOffsets
	ldr r1, _08004B3C
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08004B40
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004AFC: .4byte gBG0HOFS
_08004B00: .4byte gBG0VOFS
_08004B04: .4byte gBG1HOFS
_08004B08: .4byte gBG1VOFS
_08004B0C: .4byte gBG2HOFS
_08004B10: .4byte gOamBuffer
_08004B14: .4byte 0x04000208
_08004B18: .4byte 0x04000004
_08004B1C: .4byte 0x0000140A
_08004B20: .4byte 0x0000150A
_08004B24: .4byte 0x00000C03
_08004B28: .4byte 0x00001078
_08004B2C: .4byte 0x0400004A
_08004B30: .4byte gBG2VOFS
_08004B34: .4byte gBG3HOFS
_08004B38: .4byte gBG3VOFS
_08004B3C: .4byte gBLDCNT
_08004B40: .4byte gBLDY

	THUMB_FUNC_START sub_8004B44
sub_8004B44: @ 0x08004B44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r7, _08004BFC
	ldr r0, _08004C00
	mov ip, r0
	ldr r2, _08004C04
	mov r8, r2
	ldr r0, _08004C08
	mov sb, r0
	ldr r4, _08004C0C
	movs r6, #0
	movs r5, #0xa0
_08004B62:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _08004B62
	ldr r0, _08004C10
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004C14
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004C18
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0x90
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004C1C
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004C20
	strb r2, [r0]
	movs r4, #0
	strh r4, [r7]
	mov r0, ip
	strh r4, [r0]
	mov r2, r8
	strh r4, [r2]
	mov r3, sb
	strh r4, [r3]
	bl LoadBgOffsets
	ldr r1, _08004C24
	ldr r2, _08004C28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08004C2C
	strh r4, [r0]
	bl LoadBlendingRegs
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004BFC: .4byte gBG2HOFS
_08004C00: .4byte gBG2VOFS
_08004C04: .4byte gBG3HOFS
_08004C08: .4byte gBG3VOFS
_08004C0C: .4byte gOamBuffer
_08004C10: .4byte 0x04000208
_08004C14: .4byte 0x04000004
_08004C18: .4byte 0x00001F0B
_08004C1C: .4byte 0x00001078
_08004C20: .4byte 0x0400004A
_08004C24: .4byte gBLDCNT
_08004C28: .4byte 0x00003F4C
_08004C2C: .4byte gBLDALPHA

	THUMB_FUNC_START sub_8004C30
sub_8004C30: @ 0x08004C30
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _08004CD0
	ldr r0, _08004CD4
	mov ip, r0
	ldr r4, _08004CD8
	movs r6, #0
	movs r5, #0xa0
_08004C40:
	lsls r0, r3, #3
	adds r0, r0, r4
	strh r5, [r0]
	lsls r2, r3, #2
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, r2, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0]
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r4
	strh r6, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x7f
	bls _08004C40
	ldr r0, _08004CDC
	movs r2, #1
	strh r2, [r0]
	subs r0, #8
	strh r2, [r0]
	ldr r1, _08004CE0
	movs r0, #8
	strh r0, [r1]
	adds r1, #0xa
	ldr r3, _08004CE4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r3, #0xe0
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r3, _08004CE8
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strb r0, [r1]
	ldr r0, _08004CEC
	strb r2, [r0]
	movs r0, #0
	strh r0, [r7]
	movs r0, #0xa0
	mov r1, ip
	strh r0, [r1]
	bl LoadBgOffsets
	ldr r1, _08004CF0
	ldr r2, _08004CF4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08004CF8
	movs r0, #0x10
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CD0: .4byte gBG3HOFS
_08004CD4: .4byte gBG3VOFS
_08004CD8: .4byte gOamBuffer
_08004CDC: .4byte 0x04000208
_08004CE0: .4byte 0x04000004
_08004CE4: .4byte 0x00000F83
_08004CE8: .4byte 0x00001078
_08004CEC: .4byte 0x0400004A
_08004CF0: .4byte gBLDCNT
_08004CF4: .4byte 0x00003FD8
_08004CF8: .4byte gBLDY

	THUMB_FUNC_START sub_8004CFC
sub_8004CFC: @ 0x08004CFC
	push {r4, r5, r6, lr}
	ldr r1, _08004D28
	ldr r0, [r1]
	ldr r5, [r0]
	movs r2, #0
	adds r6, r1, #0
	ldr r4, _08004D2C
	movs r1, #0
	ldr r3, _08004D30
_08004D0E:
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _08004D0E
	ldr r0, [r6]
	str r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004D28: .4byte gUnk_8DF7594
_08004D2C: .4byte 0x02018800
_08004D30: .4byte 0x00004313

	THUMB_FUNC_START sub_8004D34
sub_8004D34: @ 0x08004D34
	push {r4, lr}
	ldr r1, _08004D68
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #0
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D6C
	movs r0, #1
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r1, _08004D70
	movs r0, #2
	adds r2, r4, #0
	bl sub_803EEFC
	ldr r0, _08004D74
	ldr r1, _08004D78
	adds r2, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004D68: .4byte gUnk_8A9A358
_08004D6C: .4byte gUnk_8A9C358
_08004D70: .4byte gUnk_8A9E358
_08004D74: .4byte gUnk_8AA6758
_08004D78: .4byte 0x02000200

	THUMB_FUNC_START sub_8004D7C
sub_8004D7C: @ 0x08004D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	ldr r5, _08004DD8
	ldr r0, _08004DDC
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	movs r3, #0x80
	lsls r3, r3, #3
	mov ip, r3
	adds r7, r5, #2
	mov sb, r7
_08004D9C:
	lsls r2, r4, #3
	adds r1, r2, r5
	adds r3, r2, r6
	ldrh r0, [r3]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sb
	adds r1, r2, r0
	ldrh r0, [r3, #2]
	strh r0, [r1]
	add r2, r8
	ldrh r0, [r3, #4]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _08004D9C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DD8: .4byte gOamBuffer
_08004DDC: .4byte gUnk_8FA389C

	THUMB_FUNC_START sub_8004DE0
sub_8004DE0: @ 0x08004DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r4, #0
	ldr r5, _08004E48
	ldr r0, _08004E4C
	ldr r0, [r0]
	ldr r6, [r0, #4]
	adds r0, r5, #4
	mov r8, r0
	ldr r2, _08004E50
	mov sb, r2
	movs r7, #0x80
	lsls r7, r7, #3
	mov ip, r7
	adds r0, r5, #2
	mov sl, r0
_08004E06:
	lsls r3, r4, #3
	adds r1, r3, r5
	adds r2, r3, r6
	ldrh r0, [r2]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r1, r3, r0
	ldrh r0, [r2, #2]
	strh r0, [r1]
	add r3, r8
	ldrh r1, [r2, #4]
	mov r0, sb
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x26
	bls _08004E06
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004E48: .4byte gOamBuffer
_08004E4C: .4byte gUnk_8FA3770
_08004E50: .4byte 0x000003FF

	THUMB_FUNC_START sub_8004E54
sub_8004E54: @ 0x08004E54
	push {lr}
	bl sub_8004260
	pop {r0}
	bx r0
	.byte 0x00, 0x00


.align 2, 0
