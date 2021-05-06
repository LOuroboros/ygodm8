    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

.section .start

	THUMB_FUNC_START sub_8022C54
sub_8022C54: @ 0x08022C54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	ldr r0, _08022C74
	ldrb r0, [r0]
	cmp r0, #2
	bne _08022C6A
	b _08022E38
_08022C6A:
	cmp r0, #2
	bgt _08022C78
	cmp r0, #1
	beq _08022C86
	b _08023348
	.align 2, 0
_08022C74: .4byte gLanguage
_08022C78:
	cmp r0, #3
	bne _08022C7E
	b _08022FE8
_08022C7E:
	cmp r0, #4
	bne _08022C84
	b _08023198
_08022C84:
	b _08023348
_08022C86:
	ldr r0, _08022DDC
	ldr r5, _08022DE0
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08022DE4
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp]
	movs r0, #0xe0
	lsls r0, r0, #7
	adds r1, r5, r0
	ldr r6, _08022DE8
	mov r0, sp
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DEC
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #4]
	add r0, sp, #4
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #8]
	add r0, sp, #8
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF4
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DF8
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022DFC
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x14]
	add r0, sp, #0x14
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08022E00
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08022E04
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08022E08
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08022D3E:
	ldr r0, _08022E0C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022E10
	adds r0, r0, r1
	ldr r4, _08022E14
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08022E18
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08022D3E
	movs r7, #0
	ldr r1, _08022E1C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08022E20
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08022E24
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_08022D98:
	ldr r0, _08022E28
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022E2C
	adds r0, r0, r1
	ldr r1, _08022E30
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08022E34
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _08022D98
	b _08023478
	.align 2, 0
_08022DDC: .4byte gDE8C1C
_08022DE0: .4byte 0x02008400
_08022DE4: .4byte gDEDE60
_08022DE8: .4byte 0x01000200
_08022DEC: .4byte gDEDF50
_08022DF0: .4byte gDEE0B8
_08022DF4: .4byte gDEE220
_08022DF8: .4byte gDEE388
_08022DFC: .4byte gDEE478
_08022E00: .4byte 0x00007012
_08022E04: .4byte 0x00004216
_08022E08: .4byte 0x00007212
_08022E0C: .4byte gDEE568
_08022E10: .4byte gDEE970
_08022E14: .4byte 0xFFFFDFF2
_08022E18: .4byte gDEEA40
_08022E1C: .4byte 0x000017FE
_08022E20: .4byte 0x000009C2
_08022E24: .4byte 0x000019BE
_08022E28: .4byte gDEE5C8
_08022E2C: .4byte gDEE718
_08022E30: .4byte 0xFFFFF802
_08022E34: .4byte gDEE850
_08022E38:
	ldr r0, _08022F8C
	ldr r5, _08022F90
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08022F94
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _08022F98
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022F9C
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x1c]
	add r0, sp, #0x1c
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA0
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA4
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x24]
	add r0, sp, #0x24
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FA8
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08022FAC
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x2c]
	add r0, sp, #0x2c
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08022FB0
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08022FB4
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08022FB8
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08022EF0:
	ldr r0, _08022FBC
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022FC0
	adds r0, r0, r1
	ldr r4, _08022FC4
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08022FC8
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08022EF0
	movs r7, #0
	ldr r1, _08022FCC
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08022FD0
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08022FD4
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_08022F4A:
	ldr r0, _08022FD8
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08022FDC
	adds r0, r0, r1
	ldr r1, _08022FE0
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08022FE4
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _08022F4A
	b _08023478
	.align 2, 0
_08022F8C: .4byte gDE9FD8
_08022F90: .4byte 0x02008400
_08022F94: .4byte gDEDE60
_08022F98: .4byte 0x01000200
_08022F9C: .4byte gDEDF50
_08022FA0: .4byte gDEE0B8
_08022FA4: .4byte gDEE220
_08022FA8: .4byte gDEE388
_08022FAC: .4byte gDEE478
_08022FB0: .4byte 0x00007012
_08022FB4: .4byte 0x00004216
_08022FB8: .4byte 0x00007212
_08022FBC: .4byte gDEEA80
_08022FC0: .4byte gDEEE88
_08022FC4: .4byte 0xFFFFDFF2
_08022FC8: .4byte gDEEF58
_08022FCC: .4byte 0x000017FE
_08022FD0: .4byte 0x000009C2
_08022FD4: .4byte 0x000019BE
_08022FD8: .4byte gDEEAE0
_08022FDC: .4byte gDEEC30
_08022FE0: .4byte 0xFFFFF802
_08022FE4: .4byte gDEED68
_08022FE8:
	ldr r0, _0802313C
	ldr r5, _08023140
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08023144
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x30
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _08023148
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802314C
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x34]
	add r0, sp, #0x34
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023150
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x38]
	add r0, sp, #0x38
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023154
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x3c]
	add r0, sp, #0x3c
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023158
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802315C
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x44]
	add r0, sp, #0x44
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08023160
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08023164
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08023168
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_080230A0:
	ldr r0, _0802316C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08023170
	adds r0, r0, r1
	ldr r4, _08023174
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08023178
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _080230A0
	movs r7, #0
	ldr r1, _0802317C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08023180
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08023184
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_080230FA:
	ldr r0, _08023188
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _0802318C
	adds r0, r0, r1
	ldr r1, _08023190
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08023194
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _080230FA
	b _08023478
	.align 2, 0
_0802313C: .4byte gDEB77C
_08023140: .4byte 0x02008400
_08023144: .4byte gDEDE60
_08023148: .4byte 0x01000200
_0802314C: .4byte gDEDF50
_08023150: .4byte gDEE0B8
_08023154: .4byte gDEE220
_08023158: .4byte gDEE388
_0802315C: .4byte gDEE478
_08023160: .4byte 0x00007012
_08023164: .4byte 0x00004216
_08023168: .4byte 0x00007212
_0802316C: .4byte gDEEF98
_08023170: .4byte gDEFB40
_08023174: .4byte 0xFFFFDFF2
_08023178: .4byte gDEFC10
_0802317C: .4byte 0x000017FE
_08023180: .4byte 0x000009C2
_08023184: .4byte 0x000019BE
_08023188: .4byte gDEF798
_0802318C: .4byte gDEF8E8
_08023190: .4byte 0xFFFFF802
_08023194: .4byte gDEFA20
_08023198:
	ldr r0, _080232EC
	ldr r5, _080232F0
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, _080232F4
	ldrh r1, [r0]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x48]
	add r0, sp, #0x48
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r1, r5, r2
	ldr r6, _080232F8
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _080232FC
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x4c]
	add r0, sp, #0x4c
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023300
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x50]
	add r0, sp, #0x50
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023304
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x54]
	add r0, sp, #0x54
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08023308
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	str r0, [sp, #0x58]
	add r0, sp, #0x58
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0802330C
	ldrh r0, [r0]
	ands r4, r0
	str r4, [sp, #0x5c]
	add r0, sp, #0x5c
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r5, r2
	adds r2, r6, #0
	bl CpuFastSet
	movs r7, #0
	ldr r0, _08023310
	adds r0, r0, r5
	mov sl, r0
	ldr r1, _08023314
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08023318
	adds r2, r2, r5
	mov r8, r2
	movs r5, #0x80
	lsls r5, r5, #2
	movs r6, #0
_08023250:
	ldr r0, _0802331C
	adds r0, r6, r0
	mov r1, r8
	movs r2, #0xc
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _08023320
	adds r0, r0, r1
	ldr r4, _08023324
	add r4, sl
	adds r1, r5, r4
	movs r2, #0x1a
	bl CpuSet
	lsls r0, r7, #4
	ldr r1, _08023328
	adds r0, r0, r1
	mov r1, sb
	movs r2, #8
	bl CpuSet
	movs r0, #0x40
	add sb, r0
	add r8, r0
	adds r5, #0x40
	adds r6, #0x18
	adds r7, #1
	cmp r7, #3
	bls _08023250
	movs r7, #0
	ldr r1, _0802332C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _08023330
	adds r5, r4, r2
	movs r0, #0
	mov sb, r0
	ldr r1, _08023334
	adds r4, r4, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	mov r8, r2
	movs r6, #0
_080232AA:
	ldr r0, _08023338
	adds r0, r6, r0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	movs r0, #0x34
	muls r0, r7, r0
	ldr r1, _0802333C
	adds r0, r0, r1
	ldr r1, _08023340
	add r1, sl
	add r1, r8
	movs r2, #0x1a
	bl CpuSet
	ldr r0, _08023344
	add r0, sb
	adds r1, r5, #0
	movs r2, #0x18
	bl CpuSet
	adds r5, #0x40
	movs r0, #0x30
	add sb, r0
	adds r4, #0x40
	movs r1, #0x40
	add r8, r1
	adds r6, #0x38
	adds r7, #1
	cmp r7, #5
	bls _080232AA
	b _08023478
	.align 2, 0
_080232EC: .4byte gDECAAC
_080232F0: .4byte 0x02008400
_080232F4: .4byte gDEDE60
_080232F8: .4byte 0x01000200
_080232FC: .4byte gDEDF50
_08023300: .4byte gDEE0B8
_08023304: .4byte gDEE220
_08023308: .4byte gDEE388
_0802330C: .4byte gDEE478
_08023310: .4byte 0x00007012
_08023314: .4byte 0x00004216
_08023318: .4byte 0x00007212
_0802331C: .4byte gDEFC50
_08023320: .4byte gDF07F8
_08023324: .4byte 0xFFFFDFF2
_08023328: .4byte gDF08C8
_0802332C: .4byte 0x000017FE
_08023330: .4byte 0x000009C2
_08023334: .4byte 0x000019BE
_08023338: .4byte gDF0450
_0802333C: .4byte gDF05A0
_08023340: .4byte 0xFFFFF802
_08023344: .4byte gDF06D8
_08023348:
	ldr r0, _08023494
	ldr r4, _08023498
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0802349C
	ldrh r0, [r0]
	str r0, [sp, #0x60]
	add r0, sp, #0x60
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r6, r4, r2
	ldr r5, _080234A0
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234A4
	ldrh r0, [r0]
	str r0, [sp, #0x64]
	add r0, sp, #0x64
	movs r2, #0xd0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234A8
	ldrh r0, [r0]
	str r0, [sp, #0x68]
	add r0, sp, #0x68
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234AC
	ldrh r0, [r0]
	str r0, [sp, #0x6c]
	add r0, sp, #0x6c
	movs r2, #0xb0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234B0
	ldrh r0, [r0]
	str r0, [sp, #0x70]
	add r0, sp, #0x70
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	ldr r0, _080234B4
	ldrh r0, [r0]
	str r0, [sp, #0x74]
	add r0, sp, #0x74
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	adds r2, r5, #0
	bl CpuFastSet
	movs r7, #0
	mov sl, r6
	movs r0, #0x84
	lsls r0, r0, #7
	adds r6, r4, r0
	movs r1, #0xe4
	lsls r1, r1, #7
	adds r4, r4, r1
	movs r2, #0x80
	lsls r2, r2, #2
	mov sb, r2
	movs r5, #0
_080233E6:
	ldr r0, _0802349C
	adds r0, r5, r0
	adds r1, r4, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234B0
	adds r0, r5, r0
	ldr r1, _080234B8
	add r1, sl
	mov r8, r1
	mov r1, sb
	add r1, r8
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234B4
	adds r0, r5, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	adds r6, #0x40
	adds r4, #0x40
	movs r2, #0x40
	add sb, r2
	adds r5, #0x3c
	adds r7, #1
	cmp r7, #3
	bls _080233E6
	movs r7, #0
	movs r0, #0xc0
	lsls r0, r0, #5
	add r0, r8
	mov sb, r0
	movs r6, #0x9c
	lsls r6, r6, #4
	add r6, r8
	movs r5, #0xce
	lsls r5, r5, #5
	add r5, r8
	movs r1, #0xe0
	lsls r1, r1, #1
	mov r8, r1
	movs r4, #0
_08023440:
	ldr r0, _080234A4
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234A8
	adds r0, r4, r0
	ldr r1, _080234BC
	add r1, sb
	add r1, r8
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _080234AC
	adds r0, r4, r0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	adds r6, #0x40
	adds r5, #0x40
	movs r2, #0x40
	add r8, r2
	adds r4, #0x3c
	adds r7, #1
	cmp r7, #5
	bls _08023440
_08023478:
	ldr r0, _080234C0
	ldr r1, _080234C4
	movs r2, #0x10
	bl CpuSet
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023494: .4byte gDE7888
_08023498: .4byte 0x02008400
_0802349C: .4byte gDEDE60
_080234A0: .4byte 0x01000200
_080234A4: .4byte gDEDF50
_080234A8: .4byte gDEE0B8
_080234AC: .4byte gDEE220
_080234B0: .4byte gDEE388
_080234B4: .4byte gDEE478
_080234B8: .4byte 0xFFFFE000
_080234BC: .4byte 0xFFFFF800
_080234C0: .4byte gDF0908
_080234C4: .4byte 0x020000A0

	THUMB_FUNC_START sub_80234C8
sub_80234C8: @ 0x080234C8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0802352C
	ldr r1, _08023530
	ldr r2, _08023534
	adds r0, r5, #0
	bl sub_8020A3C
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	movs r0, #0xd0
	lsls r0, r0, #7
	adds r5, r5, r0
	ldr r2, _08023538
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r2, _0802353C
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	strh r1, [r0]
	movs r0, #0xe1
	lsls r0, r0, #1
	adds r3, r2, r0
	ldr r0, _08023540
	strh r0, [r3]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	adds r3, #0x1c
	adds r0, r2, r3
	strh r1, [r0]
	movs r0, #0xf1
	lsls r0, r0, #1
	adds r3, r2, r0
	movs r0, #0x1f
	strh r0, [r3]
	movs r3, #0xf2
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802352C: .4byte 0x02006400
_08023530: .4byte gC18BC
_08023534: .4byte 0x00001801
_08023538: .4byte 0x01000400
_0802353C: .4byte 0x02000000
_08023540: .4byte 0x00007FFF

	THUMB_FUNC_START sub_8023544
sub_8023544: @ 0x08023544
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080235B0
	mov sb, r0
	movs r1, #0
	ldr r2, _080235B4
	mov sl, r2
_08023558:
	ldr r0, _080235B8
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080235C4
	ldr r2, _080235BC
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _080235C0
	ldr r2, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
_08023584:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023584
	b _0802360C
	.align 2, 0
_080235B0: .4byte 0x02018450
_080235B4: .4byte gFC4A8C
_080235B8: .4byte 0x02021DA0
_080235BC: .4byte 0x080C184B
_080235C0: .4byte 0xFFFFF3FF
_080235C4:
	ldr r2, _0802362C
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _0802360C
	ldr r6, _08023630
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080235E8:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080235E8
_0802360C:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023558
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802362C: .4byte 0x080C1844
_08023630: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023634
sub_8023634: @ 0x08023634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802369C
	mov sb, r0
	movs r1, #0
	ldr r2, _080236A0
	mov sl, r2
_08023648:
	ldr r0, _080236A4
	ldrb r0, [r0, #0xa]
	cmp r1, r0
	bne _080236B0
	ldr r2, _080236A8
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _080236AC
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_08023674:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _08023674
	b _080236F8
	.align 2, 0
_0802369C: .4byte 0x02018450
_080236A0: .4byte gFC4A8C
_080236A4: .4byte 0x02021DA0
_080236A8: .4byte 0x080C184B
_080236AC: .4byte 0xFFFFF3FF
_080236B0:
	ldr r2, _08023718
	adds r0, r1, r2
	ldrb r7, [r0]
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	mov r3, sb
	movs r5, #0
	adds r1, #1
	mov r8, r1
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _080236F8
	ldr r6, _0802371C
	ldr r2, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #4
	mov ip, r1
_080236D4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	mov r1, ip
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r5, #1
	ldrb r0, [r4, #1]
	cmp r5, r0
	blo _080236D4
_080236F8:
	lsls r0, r7, #2
	add r0, sl
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #3
	add sb, r0
	mov r1, r8
	cmp r1, #6
	bls _08023648
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023718: .4byte 0x080C1844
_0802371C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023720
sub_8023720: @ 0x08023720
	push {r4, r5, r6, r7, lr}
	ldr r1, _08023774
	ldr r2, _08023778
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _0802377C
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r5, r0, r1
	ldr r3, _08023780
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _0802376E
	ldr r6, _08023784
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802374C:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802374C
_0802376E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023774: .4byte 0x080C1852
_08023778: .4byte 0x02021DA0
_0802377C: .4byte gFC4A8C
_08023780: .4byte 0x02018408
_08023784: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023788
sub_8023788: @ 0x08023788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08023820
	ldr r0, _08023824
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080237D6
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237AE:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237AE
_080237D6:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023814
	ldr r6, _08023828
	ldr r2, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #3
_080237EC:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080237EC
_08023814:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023820: .4byte 0x02018418
_08023824: .4byte gFC4A8C
_08023828: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_802382C
sub_802382C: @ 0x0802382C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080238B8
	ldr r0, _080238BC
	ldr r5, [r0, #0x40]
	adds r3, r1, #0
	movs r4, #0
	mov r8, r0
	movs r0, #8
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023874
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_08023852:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023852
_08023874:
	mov r0, r8
	ldr r5, [r0, #0x44]
	mov r3, ip
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080238AC
	ldr r6, _080238C0
	ldr r2, [r5, #4]
	movs r7, #0xc0
	lsls r7, r7, #4
_0802388A:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r6
	str r0, [r3]
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r6
	str r0, [r3]
	orrs r0, r7
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _0802388A
_080238AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080238B8: .4byte 0x02018418
_080238BC: .4byte gFC4A8C
_080238C0: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_80238C4
sub_80238C4: @ 0x080238C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _0802390C
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _08023910
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_080238E4:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _08023914
	mov ip, r0
_080238EC:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023918
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _08023920
	.align 2, 0
_0802390C: .4byte 0x02000000
_08023910: .4byte 0xFFFFFC1F
_08023914: .4byte 0x000001FF
_08023918:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_08023920:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0802393E
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _08023944
_0802393E:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_08023944:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _08023962
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0802396A
_08023962:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0802396A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _080238EC
	ldr r0, _08023994
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _080238E4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023994: .4byte LoadPalettes

	THUMB_FUNC_START sub_8023998
sub_8023998: @ 0x08023998
	push {lr}
	bl sub_8022C54
	bl sub_80234C8
	bl sub_8023DD8
	bl sub_8023E28
	bl sub_8023EDC
	bl sub_8023F4C
	bl sub_8023F90
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl sub_8045718
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r0, _08023A04
	bl sub_80081DC
	bl sub_8008220
	ldr r1, _08023A08
	ldr r2, _08023A0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08023A10
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08023A04: .4byte LoadOam
_08023A08: .4byte 0x0400000C
_08023A0C: .4byte 0x00001902
_08023A10: .4byte 0x00001F03

	THUMB_FUNC_START sub_8023A14
sub_8023A14: @ 0x08023A14
	push {lr}
	bl sub_8023C58
	bl sub_8023720
	bl sub_8023544
	bl sub_8023788
	bl sub_8023FD4
	ldr r0, _08023A40
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock3
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08023A40: .4byte LoadOam

	THUMB_FUNC_START sub_8023A44
sub_8023A44: @ 0x08023A44
	push {r4, r5, lr}
	bl sub_8023544
	bl sub_8023788
	ldr r4, _08023A88
	ldr r5, _08023A8C
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	subs r4, #0x10
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl sub_8023EB8
	bl sub_8023FD4
	ldr r0, _08023A90
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08023A94
	ands r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023A88: .4byte 0x02018410
_08023A8C: .4byte gFC4A8C
_08023A90: .4byte LoadOam
_08023A94: .4byte 0x0000FDFF

	THUMB_FUNC_START sub_8023A98
sub_8023A98: @ 0x08023A98
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x16
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023AD8
	ldr r2, _08023ADC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023AE0
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023AD8: .4byte 0x0400000A
_08023ADC: .4byte 0x00001A09
_08023AE0: .4byte LoadOam

	THUMB_FUNC_START sub_8023AE4
sub_8023AE4: @ 0x08023AE4
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x14
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B24
	ldr r2, _08023B28
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B2C
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B24: .4byte 0x0400000A
_08023B28: .4byte 0x00001C09
_08023B2C: .4byte LoadOam

	THUMB_FUNC_START sub_8023B30
sub_8023B30: @ 0x08023B30
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x13
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023B70
	ldr r2, _08023B74
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023B78
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023B70: .4byte 0x0400000A
_08023B74: .4byte 0x00001D09
_08023B78: .4byte LoadOam

	THUMB_FUNC_START sub_8023B7C
sub_8023B7C: @ 0x08023B7C
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x15
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023BBC
	ldr r2, _08023BC0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023BC4
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023BBC: .4byte 0x0400000A
_08023BC0: .4byte 0x00001B09
_08023BC4: .4byte LoadOam

	THUMB_FUNC_START sub_8023BC8
sub_8023BC8: @ 0x08023BC8
	push {lr}
	bl sub_8023634
	bl sub_802382C
	movs r0, #0x12
	bl sub_8023EF8
	bl sub_8024018
	ldr r1, _08023C08
	ldr r2, _08023C0C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C10
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C08: .4byte 0x0400000A
_08023C0C: .4byte 0x00001E09
_08023C10: .4byte LoadOam

	THUMB_FUNC_START sub_8023C14
sub_8023C14: @ 0x08023C14
	push {lr}
	bl sub_8023634
	bl sub_802382C
	bl sub_8024018
	ldr r1, _08023C4C
	ldr r2, _08023C50
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08023C54
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08023C4C: .4byte 0x0400000A
_08023C50: .4byte 0x00001809
_08023C54: .4byte LoadOam

	THUMB_FUNC_START sub_8023C58
sub_8023C58: @ 0x08023C58
	push {lr}
	ldr r1, _08023C6C
	ldrb r0, [r1, #8]
	cmp r0, #0x28
	bne _08023C70
	movs r1, #0xe
	bl sub_8023CC0
	b _08023C78
	.align 2, 0
_08023C6C: .4byte 0x02021DA0
_08023C70:
	ldrb r0, [r1, #8]
	movs r1, #0xf
	bl sub_8023CC0
_08023C78:
	ldr r0, _08023C8C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r1, r0
	blo _08023C90
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D7C
	b _08023C98
	.align 2, 0
_08023C8C: .4byte 0x02021DA0
_08023C90:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D7C
_08023C98:
	bl GetDeckCapacity
	ldr r1, _08023CB0
	ldr r1, [r1, #4]
	cmp r0, r1
	blo _08023CB4
	adds r0, r1, #0
	movs r1, #0xe
	bl sub_8023D20
	b _08023CBC
	.align 2, 0
_08023CB0: .4byte 0x02021DA0
_08023CB4:
	adds r0, r1, #0
	movs r1, #0xf
	bl sub_8023D20
_08023CBC:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8023CC0
sub_8023CC0: @ 0x08023CC0
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023D0C
	lsls r4, r4, #0xc
	ldr r3, _08023D10
	ldr r0, _08023D14
	adds r2, r0, #0
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1]
	adds r1, #2
	ldr r2, _08023D18
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, _08023D1C
	adds r0, r5, #0
	strh r0, [r1]
	subs r2, #0xb
	adds r0, r2, #0
	strh r0, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D0C: .4byte 0x0200CE30
_08023D10: .4byte 0x02021BD0
_08023D14: .4byte 0x00000301
_08023D18: .4byte 0x0000E30C
_08023D1C: .4byte 0x0000E305

	THUMB_FUNC_START sub_8023D20
sub_8023D20: @ 0x08023D20
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023D70
	lsls r4, r4, #0xc
	ldr r3, _08023D74
	ldr r0, _08023D78
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023D70: .4byte 0x0200CF70
_08023D74: .4byte 0x02021BD0
_08023D78: .4byte 0x00000301

	THUMB_FUNC_START sub_8023D7C
sub_8023D7C: @ 0x08023D7C
	push {r4, r5, lr}
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _08023DCC
	lsls r4, r4, #0xc
	ldr r3, _08023DD0
	ldr r0, _08023DD4
	adds r2, r0, #0
	ldrb r5, [r3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #1]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #2]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	adds r1, #2
	ldrb r5, [r3, #3]
	adds r0, r2, r5
	orrs r0, r4
	strh r0, [r1]
	ldrb r3, [r3, #4]
	adds r2, r2, r3
	orrs r4, r2
	strh r4, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023DCC: .4byte 0x0200CEF0
_08023DD0: .4byte 0x02021BD0
_08023DD4: .4byte 0x00000301

	THUMB_FUNC_START sub_8023DD8
sub_8023DD8: @ 0x08023DD8
	push {r4, r5, lr}
	ldr r0, _08023E10
	ldr r1, _08023E14
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_08023DE6:
	ldr r0, _08023E18
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _08023E1C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08023DE6
	ldr r0, _08023E20
	ldr r1, _08023E24
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023E10: .4byte 0x08DE2F08
_08023E14: .4byte 0x02000400
_08023E18: .4byte 0x08DE7358
_08023E1C: .4byte 0x0200FC00
_08023E20: .4byte 0x08DE7808
_08023E24: .4byte 0x02000000

	THUMB_FUNC_START sub_8023E28
sub_8023E28: @ 0x08023E28
	push {r4, lr}
	ldr r0, _08023E50
	ldr r4, _08023E54
	ldr r1, [r4]
	bl LZ77UnCompWram
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _08023E58
	ldr r1, _08023E5C
	movs r2, #0x50
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08023E50: .4byte 0x08DF0928
_08023E54: .4byte gUnk_8E010A0
_08023E58: .4byte 0x08DF1430
_08023E5C: .4byte 0x02000200
	.byte 0xF0, 0xB5, 0x07, 0x1C, 0x0C, 0x1C, 0x12, 0x06, 0x12, 0x0E, 0x1B, 0x06, 0x1B, 0x0E, 0x00, 0x26
	.byte 0x79, 0x78, 0x8E, 0x42, 0x1B, 0xD2, 0x0F, 0x48, 0x84, 0x46, 0x9D, 0x02, 0xC0, 0x20, 0x00, 0x01
	.byte 0x05, 0x40, 0x93, 0x02, 0x03, 0x40, 0x7A, 0x68, 0x0F, 0x1C, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88
	.byte 0x08, 0x43, 0x61, 0x46, 0x08, 0x40, 0x20, 0x60, 0x28, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x08, 0x40
	.byte 0x20, 0x60, 0x18, 0x43, 0x01, 0xC4, 0x08, 0x32, 0x01, 0x36, 0xBE, 0x42, 0xED, 0xD3, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xF3, 0xFF, 0xFF

	THUMB_FUNC_START sub_8023EB8
sub_8023EB8: @ 0x08023EB8
	push {r4, lr}
	movs r2, #0
	ldrb r0, [r0, #1]
	cmp r2, r0
	bhs _08023ED4
	movs r4, #0x80
	lsls r4, r4, #2
	movs r3, #0x80
	lsls r3, r3, #0x11
_08023ECA:
	stm r1!, {r4}
	stm r1!, {r3}
	adds r2, #1
	cmp r2, r0
	blo _08023ECA
_08023ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8023EDC
sub_8023EDC: @ 0x08023EDC
	ldr r1, _08023EF4
	movs r0, #0
	movs r3, #0x80
	lsls r3, r3, #2
	movs r2, #0x80
	lsls r2, r2, #0x11
_08023EE8:
	stm r1!, {r3}
	stm r1!, {r2}
	adds r0, #1
	cmp r0, #0x7f
	bls _08023EE8
	bx lr
	.align 2, 0
_08023EF4: .4byte gOamBuffer

	THUMB_FUNC_START sub_8023EF8
sub_8023EF8: @ 0x08023EF8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r1, _08023F40
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r3, _08023F44
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _08023F3A
	ldr r7, _08023F48
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r2, [r5, #4]
_08023F16:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r7
	str r0, [r3]
	orrs r0, r6
	stm r3!, {r0}
	adds r2, #8
	adds r4, #1
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _08023F16
_08023F3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023F40: .4byte gFC4A8C
_08023F44: .4byte 0x02018410
_08023F48: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_8023F4C
sub_8023F4C: @ 0x08023F4C
	ldr r0, _08023F70
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08023F74
	strh r1, [r0]
	ldr r0, _08023F78
	strh r1, [r0]
	ldr r0, _08023F7C
	strh r1, [r0]
	ldr r0, _08023F80
	strh r1, [r0]
	ldr r0, _08023F84
	strh r1, [r0]
	ldr r0, _08023F88
	strh r1, [r0]
	ldr r0, _08023F8C
	strh r1, [r0]
	bx lr
	.align 2, 0
_08023F70: .4byte gBG0VOFS
_08023F74: .4byte gBG0HOFS
_08023F78: .4byte gBG1VOFS
_08023F7C: .4byte gBG1HOFS
_08023F80: .4byte gBG2VOFS
_08023F84: .4byte gBG2HOFS
_08023F88: .4byte gBG3VOFS
_08023F8C: .4byte gBG3HOFS

	THUMB_FUNC_START sub_8023F90
sub_8023F90: @ 0x08023F90
	ldr r1, _08023FB8
	ldr r2, _08023FBC
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08023FC0
	ldr r2, _08023FC4
	ldr r1, _08023FC8
	ldr r0, _08023FCC
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08023FD0
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FB8: .4byte gBLDCNT
_08023FBC: .4byte 0x00000CD8
_08023FC0: .4byte gBLDALPHA
_08023FC4: .4byte 0x080C1868
_08023FC8: .4byte 0x080C185F
_08023FCC: .4byte 0x02021DA0
_08023FD0: .4byte gBLDY

	THUMB_FUNC_START sub_8023FD4
sub_8023FD4: @ 0x08023FD4
	ldr r1, _08023FFC
	ldr r2, _08024000
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024004
	ldr r2, _08024008
	ldr r1, _0802400C
	ldr r0, _08024010
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024014
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08023FFC: .4byte gBLDCNT
_08024000: .4byte 0x00000CD8
_08024004: .4byte gBLDALPHA
_08024008: .4byte 0x080C1868
_0802400C: .4byte 0x080C185F
_08024010: .4byte 0x02021DA0
_08024014: .4byte gBLDY

	THUMB_FUNC_START sub_8024018
sub_8024018: @ 0x08024018
	ldr r1, _08024040
	ldr r2, _08024044
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08024048
	ldr r2, _0802404C
	ldr r1, _08024050
	ldr r0, _08024054
	ldrb r0, [r0, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _08024058
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08024040: .4byte gBLDCNT
_08024044: .4byte 0x00000EDC
_08024048: .4byte gBLDALPHA
_0802404C: .4byte 0x080C1882
_08024050: .4byte 0x080C187A
_08024054: .4byte 0x02021DA0
_08024058: .4byte gBLDY

	THUMB_FUNC_START sub_802405C
sub_802405C: @ 0x0802405C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _0802407E
	ldr r1, _08024088
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_8041C94
_0802407E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024088: .4byte g8FA2BAC

	THUMB_FUNC_START sub_802408C
sub_802408C: @ 0x0802408C
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	cmp r0, #0xff
	beq _080240AE
	ldr r1, _080240B8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	movs r4, #0
	str r4, [sp]
	bl sub_80419EC
_080240AE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080240B8: .4byte g8FA2BAC

	THUMB_FUNC_START sub_80240BC
sub_80240BC: @ 0x080240BC
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #8]
	bx lr

	THUMB_FUNC_START sub_80240CC
sub_80240CC: @ 0x080240CC
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	ldr r4, _08024168
	movs r3, #0
	ldr r5, _0802416C
	ldr r0, [r5]
	cmp r0, #0
	beq _0802410A
	adds r7, r5, #0
	adds r6, r5, #4
_080240E2:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024100
_080240F2:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080240F2
_08024100:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080240E2
_0802410A:
	ldr r4, _08024170
	ldr r0, _08024168
	str r0, [r4, #0xc]
	ldr r5, _08024174
	str r5, [r4, #0x10]
	movs r1, #0x67
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08024162
	adds r2, r5, #0
	movs r3, #0
	ldr r5, _08024178
	ldr r0, [r5]
	cmp r0, #0
	beq _08024162
	adds r7, r5, #0
	adds r6, r5, #4
_0802413A:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r4, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024158
_0802414A:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _0802414A
_08024158:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802413A
_08024162:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024168: .4byte 0x03000C78
_0802416C: .4byte 0x080C18D8
_08024170: .4byte 0x03000C38
_08024174: .4byte 0x03001078
_08024178: .4byte 0x080C1910

	THUMB_FUNC_START sub_802417C
sub_802417C: @ 0x0802417C
	push {r4, r5, r6, r7, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	ldr r4, _080241E4
	strb r0, [r4]
	ldr r1, _080241E8
	ldrb r0, [r1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #1]
	strb r0, [r4, #2]
	ldrb r0, [r1, #2]
	strb r0, [r4, #3]
	ldrb r0, [r1, #3]
	strb r0, [r4, #4]
	ldrb r0, [r1, #4]
	strb r0, [r4, #5]
	ldrb r0, [r1, #5]
	strb r0, [r4, #6]
	ldr r5, _080241EC
	str r4, [r5, #0xc]
	ldr r6, _080241F0
	str r6, [r5, #0x10]
	movs r0, #7
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #7
	bl sub_8032644
	movs r7, #0
	strh r0, [r5, #0x28]
	bl sub_8030EF0
	adds r0, r5, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024210
	ldrb r0, [r4]
	ldrb r6, [r6]
	cmp r0, r6
	bne _080241F4
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802420C
	b _080241FE
	.align 2, 0
_080241E4: .4byte 0x03000C78
_080241E8: .4byte gUnk_8E01098
_080241EC: .4byte 0x03000C38
_080241F0: .4byte 0x03001078
_080241F4:
	adds r0, r5, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802420C
_080241FE:
	ldr r1, _08024208
	movs r0, #1
	strb r0, [r1]
	b _08024210
	.align 2, 0
_08024208: .4byte gWhoseTurn
_0802420C:
	ldr r0, _08024218
	strb r7, [r0]
_08024210:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024218: .4byte gWhoseTurn


		thumb_func_start sub_802421C
sub_802421C: @ 0x0802421C
	push {r4, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	adds r1, r0, #0
	ldr r0, _0802427C @ =0x03000C78
	strb r1, [r0]
	ldr r2, _08024280 @ =0x08E01098
	ldrb r1, [r2]
	strb r1, [r0, #1]
	ldrb r1, [r2, #1]
	strb r1, [r0, #2]
	ldrb r1, [r2, #2]
	strb r1, [r0, #3]
	ldrb r1, [r2, #3]
	strb r1, [r0, #4]
	ldrb r1, [r2, #4]
	strb r1, [r0, #5]
	ldrb r1, [r2, #5]
	strb r1, [r0, #6]
	ldr r4, _08024284 @ =0x03000C38
	str r0, [r4, #0xc]
	ldr r1, _08024288 @ =0x03001078
	str r1, [r4, #0x10]
	movs r1, #7
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024296
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024290
	ldr r1, _0802428C @ =0x020245A8
	movs r0, #0
	b _08024294
	.align 2, 0
_0802427C: .4byte 0x03000C78
_08024280: .4byte 0x08E01098
_08024284: .4byte 0x03000C38
_08024288: .4byte 0x03001078
_0802428C: .4byte 0x020245A8
_08024290:
	ldr r1, _0802429C @ =0x020245A8
	movs r0, #1
_08024294:
	strb r0, [r1]
_08024296:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802429C: .4byte 0x020245A8

	thumb_func_start sub_80242A0
sub_80242A0: @ 0x080242A0
	push {r4, lr}
	bl sub_80325D4
	movs r0, #0
	movs r1, #1
	bl sub_8056258
	adds r1, r0, #0
	ldr r0, _08024300 @ =0x03000C78
	strb r1, [r0]
	ldr r2, _08024304 @ =0x08E01098
	ldrb r1, [r2]
	strb r1, [r0, #1]
	ldrb r1, [r2, #1]
	strb r1, [r0, #2]
	ldrb r1, [r2, #2]
	strb r1, [r0, #3]
	ldrb r1, [r2, #3]
	strb r1, [r0, #4]
	ldrb r1, [r2, #4]
	strb r1, [r0, #5]
	ldrb r1, [r2, #5]
	strb r1, [r0, #6]
	ldr r4, _08024308 @ =0x03000C38
	str r0, [r4, #0xc]
	ldr r1, _0802430C @ =0x03001078
	str r1, [r4, #0x10]
	movs r1, #7
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030EF0
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802431A
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024314
	ldr r1, _08024310 @ =0x020245A8
	movs r0, #1
	b _08024318
	.align 2, 0
_08024300: .4byte 0x03000C78
_08024304: .4byte 0x08E01098
_08024308: .4byte 0x03000C38
_0802430C: .4byte 0x03001078
_08024310: .4byte 0x020245A8
_08024314:
	ldr r1, _08024320 @ =0x020245A8
	movs r0, #0
_08024318:
	strb r0, [r1]
_0802431A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024320: .4byte 0x020245A8

	thumb_func_start sub_8024324
sub_8024324: @ 0x08024324
	bx lr

	thumb_func_start sub_8024328
sub_8024328: @ 0x08024324
	bx lr

	THUMB_FUNC_START sub_802432C
sub_802432C: @ 0x0802432C
	push {lr}
	bl sub_80325D4
	ldr r1, _08024348
	ldr r0, _0802434C
	str r0, [r1, #0xc]
	ldr r0, _08024350
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1]
	bl sub_80324C4
	pop {r0}
	bx r0
	.align 2, 0
_08024348: .4byte 0x03000C38
_0802434C: .4byte 0x03000C78
_08024350: .4byte 0x03001078

	THUMB_FUNC_START sub_8024354
sub_8024354: @ 0x08024354
	push {r4, lr}
	ldr r4, _08024378
	ldr r0, _0802437C
	str r0, [r4, #0xc]
	ldr r1, _08024380
	str r1, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	str r1, [r4]
	bl sub_8032644
	strh r0, [r4, #0x28]
	bl sub_8030F90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024378: .4byte 0x03000C38
_0802437C: .4byte 0x03000C78
_08024380: .4byte 0x03001078

	THUMB_FUNC_START sub_8024384
sub_8024384: @ 0x08024384
	push {r4, r5, r6, r7, lr}
	ldr r4, _080243C4
	movs r3, #0
	ldr r5, _080243C8
	ldr r0, [r5]
	cmp r0, #0
	beq _080243BE
	adds r7, r5, #0
	adds r6, r5, #4
_08024396:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243B4
_080243A6:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080243A6
_080243B4:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024396
_080243BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080243C4: .4byte 0x03000C78
_080243C8: .4byte 0x080C1948

	THUMB_FUNC_START sub_80243CC
sub_80243CC: @ 0x080243CC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802440C
	movs r3, #0
	ldr r5, _08024410
	ldr r0, [r5]
	cmp r0, #0
	beq _08024406
	adds r7, r5, #0
	adds r6, r5, #4
_080243DE:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080243FC
_080243EE:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _080243EE
_080243FC:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080243DE
_08024406:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802440C: .4byte 0x03001078
_08024410: .4byte 0x080C19D8

	THUMB_FUNC_START sub_8024414
sub_8024414: @ 0x08024414
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024454
	movs r3, #0
	ldr r5, _08024458
	ldr r0, [r5]
	cmp r0, #0
	beq _0802444E
	adds r7, r5, #0
	adds r6, r5, #4
_08024426:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024444
_08024436:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _08024436
_08024444:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024426
_0802444E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024454: .4byte 0x03000C78
_08024458: .4byte 0x080C1A68

	THUMB_FUNC_START sub_802445C
sub_802445C: @ 0x0802445C
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244AC
	movs r3, #0
	ldr r5, _080244B0
	ldr r0, [r5]
	cmp r0, #0
	beq _08024496
	adds r7, r5, #0
	adds r6, r5, #4
_0802446E:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _0802448C
_0802447E:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0802447E
_0802448C:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0802446E
_08024496:
	bl sub_803FD48
	bl sub_8043EF4
	ldr r0, _080244B4
	ldrb r0, [r0, #0x18]
	bl sub_8044160
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244AC: .4byte 0x03001078
_080244B0: .4byte 0x080C1B18
_080244B4: .4byte 0x02023EA0

	THUMB_FUNC_START sub_80244B8
sub_80244B8: @ 0x080244B8
	push {r4, r5, r6, r7, lr}
	ldr r4, _080244F8
	movs r3, #0
	ldr r5, _080244FC
	ldr r0, [r5]
	cmp r0, #0
	beq _080244F2
	adds r7, r5, #0
	adds r6, r5, #4
_080244CA:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080244E8
_080244DA:
	ldrb r0, [r2]
	strb r0, [r4]
	adds r2, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _080244DA
_080244E8:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080244CA
_080244F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244F8: .4byte 0x03000C78
_080244FC: .4byte 0x080C1BC8

	THUMB_FUNC_START sub_8024500
sub_8024500: @ 0x08024500
	push {r4, r5, r6, r7, lr}
	ldr r4, _08024540
	movs r3, #0
	ldr r5, _08024544
	ldr r0, [r5]
	cmp r0, #0
	beq _0802453A
	adds r7, r5, #0
	adds r6, r5, #4
_08024512:
	lsls r1, r3, #3
	adds r0, r1, r7
	ldr r2, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _08024530
_08024522:
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _08024522
_08024530:
	lsls r0, r3, #3
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08024512
_0802453A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024540: .4byte 0x03001078
_08024544: .4byte 0x080C1C60

	THUMB_FUNC_START sub_8024548
sub_8024548: @ 0x08024548
	push {lr}
	ldr r1, _08024560
	ldr r0, _08024564
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08024560: .4byte gUnk_8E010A4
_08024564: .4byte g2021D98

	THUMB_FUNC_START sub_8024568
sub_8024568: @ 0x08024568
	push {lr}
	ldr r1, _08024580
	ldr r0, _08024584
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_08024580: .4byte 0x08E010CC
_08024584: .4byte 0x03001078



.section .Split_2


	THUMB_FUNC_START sub_802612C
sub_802612C: @ 0x0802612C
	push {r4, lr}
	ldr r0, _08026148
	ldrh r2, [r0]
	ldr r1, _0802614C
	ands r1, r2
	cmp r1, #0
	beq _08026158
	ldr r0, _08026150
	strh r2, [r0]
	ldr r1, _08026154
	movs r0, #0x14
	strb r0, [r1]
	b _0802617E
	.align 2, 0
_08026148: .4byte gUnk2020DFC
_0802614C: .4byte 0x000003FF
_08026150: .4byte gUnk2021DCC
_08026154: .4byte gUnk2021DC8
_08026158:
	ldr r4, _0802616C
	ldrb r2, [r4]
	adds r3, r2, #0
	cmp r3, #0
	beq _08026174
	ldr r0, _08026170
	strh r1, [r0]
	subs r0, r2, #1
	strb r0, [r4]
	b _0802617E
	.align 2, 0
_0802616C: .4byte gUnk2021DC8
_08026170: .4byte gUnk2021DCC
_08026174:
	ldr r0, _08026184
	ldr r1, _08026188
	ldrh r1, [r1]
	strh r1, [r0]
	strb r3, [r4]
_0802617E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026184: .4byte gUnk2021DCC
_08026188: .4byte gKeyState

	THUMB_FUNC_START sub_802618C
sub_802618C: @ 0x0802618C
	ldr r0, _080261A4
	ldrh r2, [r0]
	ldr r1, _080261A8
	ands r1, r2
	cmp r1, #0
	beq _080261B4
	ldr r0, _080261AC
	strh r2, [r0]
	ldr r1, _080261B0
	movs r0, #0x14
	strb r0, [r1]
	b _080261D8
	.align 2, 0
_080261A4: .4byte gUnk2020DFC
_080261A8: .4byte 0x000003FF
_080261AC: .4byte gUnk2021DCC
_080261B0: .4byte gUnk2021DC8
_080261B4:
	ldr r3, _080261C4
	ldrb r2, [r3]
	cmp r2, #0
	beq _080261CC
	ldr r0, _080261C8
	strh r1, [r0]
	subs r0, r2, #1
	b _080261D6
	.align 2, 0
_080261C4: .4byte gUnk2021DC8
_080261C8: .4byte gUnk2021DCC
_080261CC:
	ldr r1, _080261DC
	ldr r0, _080261E0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #3
_080261D6:
	strb r0, [r3]
_080261D8:
	bx lr
	.align 2, 0
_080261DC: .4byte gUnk2021DCC
_080261E0: .4byte gKeyState

.section .text


	THUMB_FUNC_START sub_802703C
sub_802703C: @ 0x0802703C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	movs r6, #0
	ldr r0, _080270A4
	mov r8, r0
	ldr r7, _080270A8
_0802704C:
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	bl sub_80270B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0802708C
	ldr r1, [r4]
	ldr r5, _080270AC
	lsls r4, r0, #1
	adds r5, r4, r5
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801D1A8
	movs r0, #0xa
	bl sub_801D188
	movs r0, #0xe
	strh r0, [r7, #8]
	ldr r0, _080270B0
	adds r4, r4, r0
	ldrh r0, [r4]
	strh r0, [r7]
	ldrh r0, [r5]
	strh r0, [r7, #2]
	bl sub_801CEBC
_0802708C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0802704C
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080270A4: .4byte gZones+0x28
_080270A8: .4byte gUnk_02021C10
_080270AC: .4byte 0x08E0C6B8
_080270B0: .4byte 0x08E0C6B0

	THUMB_FUNC_START sub_80270B4
sub_80270B4: @ 0x080270B4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080270DC
	ldrh r3, [r0]
	cmp r2, r3
	beq _080270D8
	adds r3, r0, #0
_080270C4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080270D8
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r2, r0
	bne _080270C4
_080270D8:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_080270DC: .4byte 0x08E0C6B0
	.byte 0x00, 0x06, 0x00, 0x0E, 0x03, 0x4A, 0x3F, 0x21, 0x08, 0x40, 0x11, 0x78, 0x08, 0x43, 0x10, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0xD8, 0x1D, 0x02, 0x02, 0x10, 0xB5, 0x0B, 0x48, 0x01, 0x78, 0x00, 0x23
	.byte 0x00, 0x22, 0x01, 0x24, 0x08, 0x1C, 0x20, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x58, 0x1C, 0x00, 0x06
	.byte 0x03, 0x0E, 0x49, 0x08, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x05, 0x2A, 0xF2, 0xD9, 0x18, 0x1C
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xD8, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_802712C
sub_802712C: @ 0x0802712C
	ldr r1, _08027134
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08027134: .4byte 0x02021DD8

	THUMB_FUNC_START sub_8027138
sub_8027138: @ 0x08027138
	push {r4, r5, r6, r7, lr}
	ldr r1, _08027290
	movs r0, #4
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r6, _08027294
_08027146:
	strb r4, [r5, #3]
	ldr r1, _08027298
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08027160
	bl sub_802ACC0
_08027160:
	bl sub_802A478
	cmp r0, #1
	bne _0802717E
	ldr r0, _0802729C
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802717E
	ldr r0, _0802729C
	bl PlayMusic
_0802717E:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027146
	ldr r1, _08027290
	movs r0, #5
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _080272A0
	ldr r6, _08027294
_080271A2:
	strb r4, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080271BA
	bl sub_802ADF4
_080271BA:
	bl sub_802A478
	cmp r0, #1
	bne _080271D8
	ldr r0, _0802729C
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080271D8
	ldr r0, _0802729C
	bl PlayMusic
_080271D8:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080271A2
	ldr r5, _08027294
	ldrb r0, [r5]
	cmp r0, #0
	bne _080271FC
	ldr r0, _0802729C
	bl PlayMusic
_080271FC:
	ldr r1, _08027290
	movs r2, #0
	movs r0, #6
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	ldr r0, _080272A4
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08027218
	bl sub_802ADF4
_08027218:
	bl sub_802A478
	cmp r0, #1
	bne _08027238
	ldr r4, _0802729C
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r5]
	cmp r0, #0
	bne _08027238
	adds r0, r4, #0
	bl PlayMusic
_08027238:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	ldr r5, _08027290
	movs r1, #0
	movs r0, #7
	strb r0, [r5, #2]
	strb r1, [r5, #3]
	ldr r0, _080272A4
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r6, _08027294
	ldrb r0, [r6]
	cmp r0, #0
	bne _08027262
	bl sub_802ADF4
_08027262:
	bl sub_802A478
	cmp r0, #1
	bne _0802727C
	ldr r4, _0802729C
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_8029864
	adds r0, r4, #0
	bl PlayMusic
_0802727C:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080272A8
_08027288:
	ldr r0, _0802729C
	bl sub_8034FEC
	b _0802742C
	.align 2, 0
_08027290: .4byte 0x02021DE0
_08027294: .4byte gUnk_02021C08
_08027298: .4byte gHands
_0802729C: .4byte 0x00000177
_080272A0: .4byte gHands+0x14
_080272A4: .4byte gNotSure
_080272A8:
	movs r0, #2
	strb r0, [r5, #2]
	movs r4, #0
	ldr r7, _08027434
_080272B0:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080272CE
	bl sub_802ACC0
_080272CE:
	bl sub_802A478
	cmp r0, #1
	bne _080272EC
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080272EC
	ldr r0, _08027438
	bl PlayMusic
_080272EC:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080272B0
	ldr r1, _0802743C
	movs r0, #1
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_08027310:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802732E
	bl sub_802ACC0
_0802732E:
	bl sub_802A478
	cmp r0, #1
	bne _0802734C
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802734C
	ldr r0, _08027438
	bl PlayMusic
_0802734C:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08027288
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027310
	ldr r1, _0802743C
	movs r0, #3
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_08027370:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802738E
	bl sub_802ACC0
_0802738E:
	bl sub_802A478
	cmp r0, #1
	bne _080273AC
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _080273AC
	ldr r0, _08027438
	bl PlayMusic
_080273AC:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080273BA
	b _08027288
_080273BA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08027370
	ldr r1, _0802743C
	movs r0, #0
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _08027434
	ldr r6, _08027440
_080273D2:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080273F0
	bl sub_802ACC0
_080273F0:
	bl sub_802A478
	cmp r0, #1
	bne _0802740E
	ldr r0, _08027438
	bl sub_8034FEC
	bl sub_8029864
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802740E
	ldr r0, _08027438
	bl PlayMusic
_0802740E:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802741C
	b _08027288
_0802741C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080273D2
	ldr r0, _08027438
	bl sub_8034FEC
_0802742C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027434: .4byte gZones
_08027438: .4byte 0x00000177
_0802743C: .4byte 0x02021DE0
_08027440: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8027444
sub_8027444: @ 0x08027444
	push {r4, r5, r6, lr}
	ldr r1, _080274A4
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _080274B8
	ldr r4, _080274A8
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x3c
_08027466:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080274AC
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08027482
	ldr r0, [r4]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
_08027482:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027466
	ldr r0, _080274B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802750C
	ldr r1, _080274B4
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
	b _0802750C
	.align 2, 0
_080274A4: .4byte 0x02021DE0
_080274A8: .4byte gZones
_080274AC: .4byte gCardInfo
_080274B0: .4byte gUnk_02021C08
_080274B4: .4byte gUnk_02021C10
_080274B8:
	cmp r0, #2
	bne _0802750C
	ldr r4, _08027514
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_080274D2:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08027518
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _080274EE
	ldr r0, [r4]
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
_080274EE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080274D2
	ldr r0, _0802751C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802750C
	ldr r1, _08027520
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r1]
	bl sub_801CEBC
_0802750C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027514: .4byte gZones
_08027518: .4byte gCardInfo
_0802751C: .4byte gUnk_02021C08
_08027520: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8027524
sub_8027524: @ 0x08027524
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080275BC
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080275D0
	ldr r4, _080275C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	ldr r0, _080275C4
	mov r8, r0
	adds r7, r4, #0
	adds r4, r6, #0
_08027552:
	lsls r0, r5, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802759A
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
_0802759A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027552
	ldr r0, _080275C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027658
	ldr r0, _080275CC
	ldr r1, _080275BC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08027658
	.align 2, 0
_080275BC: .4byte 0x02021DE0
_080275C0: .4byte gZones
_080275C4: .4byte gHands+0x14
_080275C8: .4byte gUnk_02021C08
_080275CC: .4byte gUnk_02021C10
_080275D0:
	cmp r0, #2
	bne _08027658
	ldr r4, _08027664
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r7, r4, #0
	adds r4, r6, #0
_080275F0:
	ldr r1, _08027668
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802763A
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
_0802763A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080275F0
	ldr r0, _0802766C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027658
	ldr r0, _08027670
	ldr r1, _08027674
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027658:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027664: .4byte gZones
_08027668: .4byte gHands
_0802766C: .4byte gUnk_02021C08
_08027670: .4byte gUnk_02021C10
_08027674: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027678
sub_8027678: @ 0x08027678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080276F0
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08027708
	ldr r4, _080276F4
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r6, #0
	adds r7, r4, #0
	movs r0, #0x28
	adds r0, r0, r7
	mov r8, r0
_0802769E:
	lsls r5, r6, #2
	adds r4, r5, r7
	ldr r0, [r4]
	bl IsCardLocked
	cmp r0, #1
	beq _080276D2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _080276D2
	mov r0, r8
	adds r4, r5, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080276F8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080276D2
	ldr r0, [r4]
	bl LockCard
_080276D2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _0802769E
	ldr r0, _080276FC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802777E
	ldr r1, _08027700
	ldr r0, _08027704
	strh r0, [r1]
	bl sub_801CEBC
	b _0802777E
	.align 2, 0
_080276F0: .4byte 0x02021DE0
_080276F4: .4byte gZones
_080276F8: .4byte gCardInfo
_080276FC: .4byte gUnk_02021C08
_08027700: .4byte gUnk_02021C10
_08027704: .4byte 0x00000149
_08027708:
	cmp r0, #3
	bne _0802777E
	ldr r4, _08027788
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r6, #0
	adds r5, r4, #0
	adds r7, r5, #0
	adds r7, #0x14
_08027726:
	lsls r4, r6, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r4, r0
	ldr r0, [r0]
	bl IsCardLocked
	cmp r0, #1
	beq _08027762
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	bl IsGodCard
	cmp r0, #1
	beq _08027762
	adds r4, r4, r7
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0802778C
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08027762
	ldr r0, [r4]
	bl LockCard
_08027762:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bls _08027726
	ldr r0, _08027790
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802777E
	ldr r1, _08027794
	ldr r0, _08027798
	strh r0, [r1]
	bl sub_801CEBC
_0802777E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027788: .4byte gZones
_0802778C: .4byte gCardInfo
_08027790: .4byte gUnk_02021C08
_08027794: .4byte gUnk_02021C10
_08027798: .4byte 0x00000149

	THUMB_FUNC_START sub_802779C
sub_802779C: @ 0x0802779C
	push {r4, r5, lr}
	ldr r1, _080277D0
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027824
	ldr r4, _080277D4
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_080277B8:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x60
	beq _080277C8
	cmp r1, #0x61
	bne _080277D8
_080277C8:
	bl sub_80403F0
	b _080277E0
	.align 2, 0
_080277D0: .4byte 0x02021DE0
_080277D4: .4byte gZones
_080277D8:
	cmp r1, #0x62
	bne _080277E0
	bl sub_80403F0
_080277E0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080277B8
	ldr r0, _08027814
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802788C
	ldr r4, _08027818
	ldr r3, _0802781C
	ldr r2, _08027820
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802788C
	.align 2, 0
_08027814: .4byte gUnk_02021C08
_08027818: .4byte gUnk_02021C10
_0802781C: .4byte gZones
_08027820: .4byte 0x02021DE0
_08027824:
	cmp r0, #2
	bne _0802788C
	ldr r4, _08027850
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_0802783A:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x60
	beq _0802784A
	cmp r1, #0x61
	bne _08027854
_0802784A:
	bl sub_80403F0
	b _0802785C
	.align 2, 0
_08027850: .4byte gZones
_08027854:
	cmp r1, #0x62
	bne _0802785C
	bl sub_80403F0
_0802785C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802783A
	ldr r0, _08027894
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802788C
	ldr r4, _08027898
	ldr r3, _0802789C
	ldr r2, _080278A0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802788C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027894: .4byte gUnk_02021C08
_08027898: .4byte gUnk_02021C10
_0802789C: .4byte gZones
_080278A0: .4byte 0x02021DE0

	THUMB_FUNC_START sub_80278A4
sub_80278A4: @ 0x080278A4
	push {r4, r5, r6, lr}
	ldr r1, _0802790C
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _0802791C
	ldr r4, _08027910
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	movs r4, #0xc1
	lsls r4, r4, #1
_080278C6:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _080278D8
	adds r0, r1, #0
	bl sub_80403F0
_080278D8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080278C6
	ldr r0, _08027914
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802797A
	ldr r4, _08027918
	ldr r3, _08027910
	ldr r2, _0802790C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802797A
	.align 2, 0
_0802790C: .4byte 0x02021DE0
_08027910: .4byte gZones
_08027914: .4byte gUnk_02021C08
_08027918: .4byte gUnk_02021C10
_0802791C:
	cmp r0, #2
	bne _0802797A
	ldr r4, _08027980
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	movs r4, #0xc1
	lsls r4, r4, #1
_08027938:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _0802794A
	adds r0, r1, #0
	bl sub_80403F0
_0802794A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027938
	ldr r0, _08027984
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802797A
	ldr r4, _08027988
	ldr r3, _08027980
	ldr r2, _0802798C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802797A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027980: .4byte gZones
_08027984: .4byte gUnk_02021C08
_08027988: .4byte gUnk_02021C10
_0802798C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027990
sub_8027990: @ 0x08027990
	push {r4, r5, r6, r7, lr}
	ldr r1, _080279FC
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027A0C
	ldr r4, _08027A00
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r7, r4, #0
	movs r6, #0xc1
	lsls r6, r6, #1
_080279B2:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, r6
	bne _080279CA
	adds r0, r1, #0
	bl sub_80403F0
	ldr r0, [r4]
	bl sub_80403F0
_080279CA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080279B2
	ldr r0, _08027A04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027A70
	ldr r4, _08027A08
	ldr r3, _08027A00
	ldr r2, _080279FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027A70
	.align 2, 0
_080279FC: .4byte 0x02021DE0
_08027A00: .4byte gZones
_08027A04: .4byte gUnk_02021C08
_08027A08: .4byte gUnk_02021C10
_08027A0C:
	cmp r0, #2
	bne _08027A70
	ldr r4, _08027A78
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r7, r4, #0
	movs r6, #0xc1
	lsls r6, r6, #1
_08027A28:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, r6
	bne _08027A40
	adds r0, r1, #0
	bl sub_80403F0
	ldr r0, [r4]
	bl sub_80403F0
_08027A40:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027A28
	ldr r0, _08027A7C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027A70
	ldr r4, _08027A80
	ldr r3, _08027A78
	ldr r2, _08027A84
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027A70:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027A78: .4byte gZones
_08027A7C: .4byte gUnk_02021C08
_08027A80: .4byte gUnk_02021C10
_08027A84: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027A88
sub_8027A88: @ 0x08027A88
	push {r4, r5, lr}
	ldr r1, _08027AE8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027AF8
	ldr r4, _08027AEC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_08027AA4:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	bne _08027AB6
	adds r0, r1, #0
	bl sub_80403F0
_08027AB6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027AA4
	ldr r0, _08027AF0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B3E
	ldr r4, _08027AF4
	ldr r3, _08027AEC
	ldr r2, _08027AE8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027B3E
	.align 2, 0
_08027AE8: .4byte 0x02021DE0
_08027AEC: .4byte gZones
_08027AF0: .4byte gUnk_02021C08
_08027AF4: .4byte gUnk_02021C10
_08027AF8:
	cmp r0, #2
	bne _08027B3E
	ldr r4, _08027B44
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_08027B0E:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	bne _08027B20
	adds r0, r1, #0
	bl sub_80403F0
_08027B20:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027B0E
	ldr r0, _08027B48
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027B3E
	ldr r0, _08027B4C
	ldr r1, _08027B50
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027B3E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027B44: .4byte gZones
_08027B48: .4byte gUnk_02021C08
_08027B4C: .4byte gUnk_02021C10
_08027B50: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027B54
sub_8027B54: @ 0x08027B54
	push {r4, r5, r6, lr}
	ldr r1, _08027BB8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027BCC
	ldr r4, _08027BBC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	ldr r4, _08027BC0
_08027B74:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _08027B86
	adds r0, r1, #0
	bl sub_80403F0
_08027B86:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027B74
	ldr r0, _08027BC4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C28
	ldr r4, _08027BC8
	ldr r3, _08027BBC
	ldr r2, _08027BB8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027C28
	.align 2, 0
_08027BB8: .4byte 0x02021DE0
_08027BBC: .4byte gZones
_08027BC0: .4byte 0x00000177
_08027BC4: .4byte gUnk_02021C08
_08027BC8: .4byte gUnk_02021C10
_08027BCC:
	cmp r0, #2
	bne _08027C28
	ldr r4, _08027C30
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	ldr r4, _08027C34
_08027BE6:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, r4
	bne _08027BF8
	adds r0, r1, #0
	bl sub_80403F0
_08027BF8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027BE6
	ldr r0, _08027C38
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027C28
	ldr r4, _08027C3C
	ldr r3, _08027C30
	ldr r2, _08027C40
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027C28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027C30: .4byte gZones
_08027C34: .4byte 0x00000177
_08027C38: .4byte gUnk_02021C08
_08027C3C: .4byte gUnk_02021C10
_08027C40: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027C44
sub_8027C44: @ 0x08027C44
	push {r4, r5, lr}
	ldr r1, _08027CA8
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08027CB8
	ldr r4, _08027CAC
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x28
_08027C64:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027C76
	adds r0, r1, #0
	bl sub_8040404
_08027C76:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027C64
	ldr r0, _08027CB0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027D14
	ldr r4, _08027CB4
	ldr r3, _08027CAC
	ldr r2, _08027CA8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027D14
	.align 2, 0
_08027CA8: .4byte 0x02021DE0
_08027CAC: .4byte gZones
_08027CB0: .4byte gUnk_02021C08
_08027CB4: .4byte gUnk_02021C10
_08027CB8:
	cmp r0, #2
	bne _08027D14
	ldr r4, _08027D1C
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x14
_08027CD2:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027CE4
	adds r0, r1, #0
	bl sub_8040404
_08027CE4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027CD2
	ldr r0, _08027D20
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027D14
	ldr r4, _08027D24
	ldr r3, _08027D1C
	ldr r2, _08027D28
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027D1C: .4byte gZones
_08027D20: .4byte gUnk_02021C08
_08027D24: .4byte gUnk_02021C10
_08027D28: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8027D2C
sub_8027D2C: @ 0x08027D2C
	push {r4, r5, lr}
	ldr r4, _08027D60
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08027DF0
	ldr r1, _08027D64
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r5, r1, #0
	adds r5, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldr r0, _08027D68
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027D6C
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
	b _08027D7E
	.align 2, 0
_08027D60: .4byte 0x02021DE0
_08027D64: .4byte gZones
_08027D68: .4byte gNotSure
_08027D6C:
	ldr r0, _08027D9C
	cmp r1, r0
	bne _08027D7E
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
_08027D7E:
	ldr r0, _08027DA0
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027DAC
	ldr r1, _08027DA4
	ldr r0, _08027DA8
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
	b _08027DC4
	.align 2, 0
_08027D9C: .4byte 0x000002D1
_08027DA0: .4byte gNotSure
_08027DA4: .4byte gZones
_08027DA8: .4byte 0x02021DE0
_08027DAC:
	ldr r0, _08027DDC
	cmp r1, r0
	bne _08027DC4
	ldr r1, _08027DE0
	ldr r0, _08027DE4
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
_08027DC4:
	ldr r0, _08027DE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E94
	ldr r0, _08027DEC
	ldr r1, _08027DE4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08027E94
	.align 2, 0
_08027DDC: .4byte 0x000002D1
_08027DE0: .4byte gZones
_08027DE4: .4byte 0x02021DE0
_08027DE8: .4byte gUnk_02021C08
_08027DEC: .4byte gUnk_02021C10
_08027DF0:
	cmp r0, #2
	bne _08027E94
	ldr r1, _08027E20
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r5, r1, #0
	adds r5, #0x28
	adds r0, r0, r5
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldr r0, _08027E24
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027E28
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
	b _08027E3A
	.align 2, 0
_08027E20: .4byte gZones
_08027E24: .4byte gNotSure
_08027E28:
	ldr r0, _08027E58
	cmp r1, r0
	bne _08027E3A
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80403F0
_08027E3A:
	ldr r0, _08027E5C
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0x23
	bne _08027E68
	ldr r1, _08027E60
	ldr r0, _08027E64
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
	b _08027E80
	.align 2, 0
_08027E58: .4byte 0x000002D1
_08027E5C: .4byte gNotSure
_08027E60: .4byte gZones
_08027E64: .4byte 0x02021DE0
_08027E68:
	ldr r0, _08027E9C
	cmp r1, r0
	bne _08027E80
	ldr r1, _08027EA0
	ldr r0, _08027EA4
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80403F0
_08027E80:
	ldr r0, _08027EA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027E94
	ldr r0, _08027EAC
	ldr r1, _08027EA4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08027E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027E9C: .4byte 0x000002D1
_08027EA0: .4byte gZones
_08027EA4: .4byte 0x02021DE0
_08027EA8: .4byte gUnk_02021C08
_08027EAC: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8027EB0
sub_8027EB0: @ 0x08027EB0
	push {r4, r5, r6, lr}
	ldr r2, _08027F48
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08027F5C
	ldr r4, _08027F4C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_08027ED4:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027F16
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027F16
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08027F50
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	bne _08027F16
	ldr r2, _08027F48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08027F16:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027ED4
	ldr r0, _08027F54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027FEC
	ldr r4, _08027F58
	ldr r3, _08027F4C
	ldr r2, _08027F48
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08027FEC
	.align 2, 0
_08027F48: .4byte 0x02021DE0
_08027F4C: .4byte gZones
_08027F50: .4byte gCardInfo
_08027F54: .4byte gUnk_02021C08
_08027F58: .4byte gUnk_02021C10
_08027F5C:
	cmp r0, #2
	bne _08027FEC
	ldr r4, _08027FF4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_08027F7A:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08027FBC
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027FBC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08027FF8
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	bne _08027FBC
	ldr r2, _08027FFC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08027FBC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08027F7A
	ldr r0, _08028000
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027FEC
	ldr r4, _08028004
	ldr r3, _08027FF4
	ldr r2, _08027FFC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08027FEC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027FF4: .4byte gZones
_08027FF8: .4byte gCardInfo
_08027FFC: .4byte 0x02021DE0
_08028000: .4byte gUnk_02021C08
_08028004: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028008
sub_8028008: @ 0x08028008
	push {r4, r5, r6, r7, lr}
	ldr r6, _08028088
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _0802809C
	ldr r4, _0802808C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	ldr r7, _08028090
_0802802C:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028054
	cmp r0, r7
	bne _08028054
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_08028054:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802802C
	ldr r0, _08028094
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028112
	ldr r4, _08028098
	ldr r3, _0802808C
	ldr r2, _08028088
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028112
	.align 2, 0
_08028088: .4byte 0x02021DE0
_0802808C: .4byte gZones
_08028090: .4byte 0x0000022A
_08028094: .4byte gUnk_02021C08
_08028098: .4byte gUnk_02021C10
_0802809C:
	cmp r0, #2
	bne _08028112
	ldr r4, _08028118
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	ldr r7, _0802811C
_080280BA:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080280E2
	cmp r0, r7
	bne _080280E2
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_080280E2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080280BA
	ldr r0, _08028120
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028112
	ldr r4, _08028124
	ldr r3, _08028118
	ldr r2, _08028128
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028112:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028118: .4byte gZones
_0802811C: .4byte 0x0000022A
_08028120: .4byte gUnk_02021C08
_08028124: .4byte gUnk_02021C10
_08028128: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802812C
sub_802812C: @ 0x0802812C
	push {r4, r5, r6, lr}
	ldr r6, _080281A8
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _080281B8
	ldr r4, _080281AC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_0802814E:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028176
	cmp r0, #0xc
	bne _08028176
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_08028176:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802814E
	ldr r0, _080281B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802822C
	ldr r4, _080281B4
	ldr r3, _080281AC
	ldr r2, _080281A8
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802822C
	.align 2, 0
_080281A8: .4byte 0x02021DE0
_080281AC: .4byte gZones
_080281B0: .4byte gUnk_02021C08
_080281B4: .4byte gUnk_02021C10
_080281B8:
	cmp r0, #2
	bne _0802822C
	ldr r4, _08028234
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_080281D4:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080281FC
	cmp r0, #0xc
	bne _080281FC
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_080281FC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080281D4
	ldr r0, _08028238
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802822C
	ldr r4, _0802823C
	ldr r3, _08028234
	ldr r2, _08028240
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802822C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028234: .4byte gZones
_08028238: .4byte gUnk_02021C08
_0802823C: .4byte gUnk_02021C10
_08028240: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028244
sub_8028244: @ 0x08028244
	push {r4, r5, lr}
	ldr r2, _080282B0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080282C0
	ldr r4, _080282B4
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x14
_08028268:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _0802827C
	cmp r1, #0xa1
	bne _0802827C
	bl sub_80403F0
_0802827C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028268
	ldr r0, _080282B8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028322
	ldr r4, _080282BC
	ldr r3, _080282B4
	ldr r2, _080282B0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028322
	.align 2, 0
_080282B0: .4byte 0x02021DE0
_080282B4: .4byte gZones
_080282B8: .4byte gUnk_02021C08
_080282BC: .4byte gUnk_02021C10
_080282C0:
	cmp r0, #2
	bne _08028322
	ldr r4, _08028328
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x28
_080282DE:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _080282F2
	cmp r1, #0xa1
	bne _080282F2
	bl sub_80403F0
_080282F2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080282DE
	ldr r0, _0802832C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028322
	ldr r4, _08028330
	ldr r3, _08028328
	ldr r2, _08028334
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028322:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028328: .4byte gZones
_0802832C: .4byte gUnk_02021C08
_08028330: .4byte gUnk_02021C10
_08028334: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028338
sub_8028338: @ 0x08028338
	push {r4, r5, lr}
	ldr r2, _080283A4
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080283B4
	ldr r4, _080283A8
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x14
_0802835C:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _08028370
	cmp r1, #0xa0
	bne _08028370
	bl sub_80403F0
_08028370:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802835C
	ldr r0, _080283AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028416
	ldr r4, _080283B0
	ldr r3, _080283A8
	ldr r2, _080283A4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08028416
	.align 2, 0
_080283A4: .4byte 0x02021DE0
_080283A8: .4byte gZones
_080283AC: .4byte gUnk_02021C08
_080283B0: .4byte gUnk_02021C10
_080283B4:
	cmp r0, #2
	bne _08028416
	ldr r4, _0802841C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x28
_080283D2:
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r1, [r0]
	cmp r1, #0
	beq _080283E6
	cmp r1, #0xa0
	bne _080283E6
	bl sub_80403F0
_080283E6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080283D2
	ldr r0, _08028420
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028416
	ldr r4, _08028424
	ldr r3, _0802841C
	ldr r2, _08028428
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028416:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802841C: .4byte gZones
_08028420: .4byte gUnk_02021C08
_08028424: .4byte gUnk_02021C10
_08028428: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802842C
sub_802842C: @ 0x0802842C
	push {r4, r5, r6, r7, lr}
	ldr r2, _080284C0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _080284D0
	ldr r4, _080284C4
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0xb7
	lsls r7, r7, #1
_08028454:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802848E
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802848E
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r7
	bne _0802848E
	ldr r2, _080284C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802848E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028454
	ldr r0, _080284C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802855C
	ldr r4, _080284CC
	ldr r3, _080284C4
	ldr r2, _080284C0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802855C
	.align 2, 0
_080284C0: .4byte 0x02021DE0
_080284C4: .4byte gZones
_080284C8: .4byte gUnk_02021C08
_080284CC: .4byte gUnk_02021C10
_080284D0:
	cmp r0, #2
	bne _0802855C
	ldr r4, _08028564
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0xb7
	lsls r7, r7, #1
_080284F2:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802852C
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802852C
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r7
	bne _0802852C
	ldr r2, _08028568
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802852C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080284F2
	ldr r0, _0802856C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802855C
	ldr r4, _08028570
	ldr r3, _08028564
	ldr r2, _08028568
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802855C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028564: .4byte gZones
_08028568: .4byte 0x02021DE0
_0802856C: .4byte gUnk_02021C08
_08028570: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028574
sub_8028574: @ 0x08028574
	push {r4, r5, r6, lr}
	ldr r2, _080285C0
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08028646
	ldr r4, _080285C4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_080285A0:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080285D6
	bl SetCardInfo
	ldr r0, _080285C8
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080285CC
	ldr r0, [r4]
	bl sub_8040404
	b _080285D6
	.align 2, 0
_080285C0: .4byte 0x02021DE0
_080285C4: .4byte gZones
_080285C8: .4byte gCardInfo
_080285CC:
	cmp r0, #2
	bne _080285D6
	ldr r0, [r4]
	bl sub_80403F0
_080285D6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080285A0
	movs r5, #0
	ldr r6, _08028604
_080285E4:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028616
	bl SetCardInfo
	ldr r0, _08028608
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _0802860C
	ldr r0, [r4]
	bl sub_8040404
	b _08028616
	.align 2, 0
_08028604: .4byte gZones+0x28
_08028608: .4byte gCardInfo
_0802860C:
	cmp r0, #2
	bne _08028616
	ldr r0, [r4]
	bl sub_80403F0
_08028616:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080285E4
	ldr r0, _0802864C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028646
	ldr r4, _08028650
	ldr r3, _08028654
	ldr r2, _08028658
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028646:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802864C: .4byte gUnk_02021C08
_08028650: .4byte gUnk_02021C10
_08028654: .4byte gZones
_08028658: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802865C
sub_802865C: @ 0x0802865C
	push {r4, r5, r6, lr}
	ldr r2, _080286A8
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802872E
	ldr r4, _080286AC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x14
_08028688:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080286BE
	bl SetCardInfo
	ldr r0, _080286B0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080286B4
	ldr r0, [r4]
	bl sub_80403F0
	b _080286BE
	.align 2, 0
_080286A8: .4byte 0x02021DE0
_080286AC: .4byte gZones
_080286B0: .4byte gCardInfo
_080286B4:
	cmp r0, #2
	bne _080286BE
	ldr r0, [r4]
	bl sub_8040404
_080286BE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028688
	movs r5, #0
	ldr r6, _080286EC
_080286CC:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080286FE
	bl SetCardInfo
	ldr r0, _080286F0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	bne _080286F4
	ldr r0, [r4]
	bl sub_80403F0
	b _080286FE
	.align 2, 0
_080286EC: .4byte gZones+0x28
_080286F0: .4byte gCardInfo
_080286F4:
	cmp r0, #2
	bne _080286FE
	ldr r0, [r4]
	bl sub_8040404
_080286FE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080286CC
	ldr r0, _08028734
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802872E
	ldr r4, _08028738
	ldr r3, _0802873C
	ldr r2, _08028740
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802872E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028734: .4byte gUnk_02021C08
_08028738: .4byte gUnk_02021C10
_0802873C: .4byte gZones
_08028740: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028744
sub_8028744: @ 0x08028744
	push {r4, r5, r6, lr}
	ldr r2, _08028838
	ldrb r0, [r2, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08028830
	ldr r4, _0802883C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_0802876E:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080287B0
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080287B0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028840
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _080287B0
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_080287B0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802876E
	movs r5, #0
	ldr r6, _0802883C
_080287BE:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028800
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028800
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028840
	ldrb r0, [r0, #0x16]
	cmp r0, #0xa
	bne _08028800
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028800:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080287BE
	ldr r0, _08028844
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028830
	ldr r4, _08028848
	ldr r3, _0802883C
	ldr r2, _08028838
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028830:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028838: .4byte 0x02021DE0
_0802883C: .4byte gZones
_08028840: .4byte gCardInfo
_08028844: .4byte gUnk_02021C08
_08028848: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802884C
sub_802884C: @ 0x0802884C
	push {r4, r5, r6, lr}
	ldr r2, _080288FC
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08028914
	ldr r4, _08028900
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_08028870:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080288B2
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080288B2
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028904
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080288B2
	ldr r2, _080288FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_080288B2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028870
	ldr r0, _08028908
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028904
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080288E6
	ldr r3, _08028900
	ldr r2, _080288FC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_080288E6:
	ldr r0, _0802890C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080289BC
	ldr r0, _08028910
	ldr r1, _080288FC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _080289BC
	.align 2, 0
_080288FC: .4byte 0x02021DE0
_08028900: .4byte gZones
_08028904: .4byte gCardInfo
_08028908: .4byte gNotSure
_0802890C: .4byte gUnk_02021C08
_08028910: .4byte gUnk_02021C10
_08028914:
	cmp r0, #2
	bne _080289BC
	ldr r4, _080289C4
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_08028932:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028974
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028974
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080289C8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028974
	ldr r2, _080289CC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028974:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028932
	ldr r0, _080289D0
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _080289C8
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _080289A8
	ldr r3, _080289C4
	ldr r2, _080289CC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_080289A8:
	ldr r0, _080289D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080289BC
	ldr r0, _080289D8
	ldr r1, _080289CC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_080289BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080289C4: .4byte gZones
_080289C8: .4byte gCardInfo
_080289CC: .4byte 0x02021DE0
_080289D0: .4byte gNotSure
_080289D4: .4byte gUnk_02021C08
_080289D8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80289DC
sub_80289DC: @ 0x080289DC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08028A64
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne _08028A78
	ldr r4, _08028A68
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_08028A00:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028A42
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028A42
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028A6C
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028A42
	ldr r2, _08028A64
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08028A42:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028A00
	ldr r0, _08028A70
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028AF4
	ldr r0, _08028A74
	ldr r1, _08028A64
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _08028AF4
	.align 2, 0
_08028A64: .4byte 0x02021DE0
_08028A68: .4byte gZones
_08028A6C: .4byte gCardInfo
_08028A70: .4byte gUnk_02021C08
_08028A74: .4byte gUnk_02021C10
_08028A78:
	cmp r0, #2
	bne _08028AF4
	movs r5, #0
	ldr r7, _08028AFC
	adds r6, r2, #0
_08028A82:
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl FlipCardFaceUp
	lsls r1, r5, #2
	adds r0, r7, #0
	adds r0, #0x28
	adds r4, r1, r0
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08028AD6
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028AD6
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028B00
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028AD6
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_80403F0
_08028AD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028A82
	ldr r0, _08028B04
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028AF4
	ldr r0, _08028B08
	ldr r1, _08028B0C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08028AF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028AFC: .4byte gZones
_08028B00: .4byte gCardInfo
_08028B04: .4byte gUnk_02021C08
_08028B08: .4byte gUnk_02021C10
_08028B0C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8028B10
sub_8028B10: @ 0x08028B10
	push {r4, lr}
	ldr r4, _08028B48
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08028B58
	ldr r2, _08028B4C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, _08028B50
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028B86
	ldr r1, _08028B54
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
	b _08028B86
	.align 2, 0
_08028B48: .4byte 0x02021DE0
_08028B4C: .4byte gZones
_08028B50: .4byte gUnk_02021C08
_08028B54: .4byte gUnk_02021C10
_08028B58:
	cmp r0, #2
	bne _08028B86
	ldr r2, _08028B8C
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, _08028B90
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028B86
	ldr r1, _08028B94
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_08028B86:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08028B8C: .4byte gZones
_08028B90: .4byte gUnk_02021C08
_08028B94: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028B98
sub_8028B98: @ 0x08028B98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08028C88
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08028BAC
	cmp r0, #3
	bne _08028C7C
_08028BAC:
	ldr r4, _08028C8C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r4, #0x14
	mov sb, r4
	ldr r6, _08028C90
	ldr r0, _08028C94
	mov r8, r0
	ldr r7, _08028C98
_08028BD0:
	lsls r0, r5, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028C02
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _08028C9C
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _08028C02
	ldr r0, [r4]
	bl LockCard
_08028C02:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028BD0
	movs r5, #0
	ldr r0, _08028CA0
	mov sb, r0
	ldr r6, _08028C90
	ldr r1, _08028C94
	mov r8, r1
	ldr r7, _08028C98
_08028C1A:
	lsls r0, r5, #2
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08028C4C
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _08028C9C
	ldrh r0, [r0, #0x12]
	cmp r0, r7
	bls _08028C4C
	ldr r0, [r4]
	bl LockCard
_08028C4C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028C1A
	ldr r0, _08028CA4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028C7C
	ldr r4, _08028CA8
	ldr r3, _08028C8C
	ldr r2, _08028C88
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08028C7C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028C88: .4byte 0x02021DE0
_08028C8C: .4byte gZones
_08028C90: .4byte gStatMod
_08028C94: .4byte gDuel+0xF0
_08028C98: .4byte 0x000005DB
_08028C9C: .4byte gCardInfo
_08028CA0: .4byte gZones+0x28
_08028CA4: .4byte gUnk_02021C08
_08028CA8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028CAC
sub_8028CAC: @ 0x08028CAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08028D60
	ldrb r0, [r0, #2]
	cmp r0, #4
	bne _08028D54
	movs r7, #0
	movs r6, #0
	ldr r0, _08028D64
	mov sb, r0
	ldr r1, _08028D68
	mov r8, r1
_08028CC8:
	lsls r0, r6, #2
	mov r2, sb
	adds r5, r0, r2
	ldr r0, [r5]
	ldrh r4, [r0]
	cmp r4, #0
	beq _08028CEE
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	beq _08028CEE
	cmp r4, r8
	beq _08028CEE
	ldr r0, [r5]
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
	adds r7, #1
_08028CEE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bhi _08028CFC
	cmp r7, #1
	bls _08028CC8
_08028CFC:
	ldr r4, _08028D64
	adds r0, r4, #0
	bl EmptyZoneInRow
	adds r5, r0, #0
	lsls r5, r5, #0x18
	adds r6, r4, #0
	subs r6, #0x14
	lsrs r5, r5, #0x16
	adds r5, r5, r4
	ldr r0, [r5]
	ldr r4, _08028D60
	ldrb r2, [r4, #2]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r2, [r4, #3]
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r1, [r1]
	bl CopyCard
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl ClearZone
	ldr r0, [r5]
	bl FlipCardFaceUp
	ldr r0, _08028D6C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028D54
	ldr r1, _08028D70
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_08028D54:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028D60: .4byte 0x02021DE0
_08028D64: .4byte gZones+0x14
_08028D68: .4byte 0x0000025D
_08028D6C: .4byte gUnk_02021C08
_08028D70: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028D74
sub_8028D74: @ 0x08028D74
	push {r4, r5, lr}
	ldr r5, _08028DB8
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _08028DC8
	ldr r4, _08028DBC
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	adds r4, #0x28
	adds r0, r4, #0
	bl HighestAtkMonInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040404
	ldr r0, _08028DC0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028E04
	ldr r1, _08028DC4
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
	b _08028E04
	.align 2, 0
_08028DB8: .4byte 0x02021DE0
_08028DBC: .4byte gZones
_08028DC0: .4byte gUnk_02021C08
_08028DC4: .4byte gUnk_02021C10
_08028DC8:
	cmp r0, #2
	bne _08028E04
	ldr r4, _08028E0C
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	adds r4, #0x14
	adds r0, r4, #0
	bl HighestAtkMonInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_8040404
	ldr r0, _08028E10
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028E04
	ldr r1, _08028E14
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_08028E04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028E0C: .4byte gZones
_08028E10: .4byte gUnk_02021C08
_08028E14: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028E18
sub_8028E18: @ 0x08028E18
	push {r4, r5, lr}
	ldr r5, _08028E68
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _08028E7C
	ldr r0, _08028E6C
	bl NumEmptyZonesInRow
	cmp r0, #3
	ble _08028EC2
	ldr r4, _08028E70
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80403F0
	ldr r0, _08028E74
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028EC2
	ldr r1, _08028E78
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
	b _08028EC2
	.align 2, 0
_08028E68: .4byte 0x02021DE0
_08028E6C: .4byte gHands+0x14
_08028E70: .4byte gZones
_08028E74: .4byte gUnk_02021C08
_08028E78: .4byte gUnk_02021C10
_08028E7C:
	cmp r0, #2
	bne _08028EC2
	ldr r0, _08028EC8
	bl NumEmptyZonesInRow
	cmp r0, #3
	ble _08028EC2
	ldr r4, _08028ECC
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_80403F0
	ldr r0, _08028ED0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028EC2
	ldr r1, _08028ED4
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_08028EC2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028EC8: .4byte gHands
_08028ECC: .4byte gZones
_08028ED0: .4byte gUnk_02021C08
_08028ED4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8028ED8
sub_8028ED8: @ 0x08028ED8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _08028FEC
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08028FE2
	ldr r4, _08028FF0
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r7, r4, #0
	adds r4, r6, #0
_08028F08:
	lsls r0, r5, #2
	adds r6, r7, #0
	adds r6, #0x14
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08028FF4
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08028F34
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_80403F0
_08028F34:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028F08
	movs r5, #0
	subs r6, #0x14
	ldr r4, _08028FEC
_08028F44:
	lsls r0, r5, #2
	movs r1, #0x28
	adds r1, r1, r6
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r7, _08028FF4
	ldrb r0, [r7, #0x16]
	cmp r0, #1
	bne _08028F72
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	bl sub_80403F0
_08028F72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08028F44
	ldr r4, _08028FF8
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldrb r0, [r7, #0x16]
	cmp r0, #1
	bne _08028FA6
	mov r3, r8
	subs r3, #0x28
	ldr r2, _08028FEC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_08028FA6:
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldrb r0, [r7, #0x16]
	cmp r0, #1
	bne _08028FCE
	mov r3, r8
	subs r3, #0x28
	ldr r2, _08028FEC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_80403F0
_08028FCE:
	ldr r0, _08028FFC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028FE2
	ldr r0, _08029000
	ldr r1, _08028FEC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_08028FE2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028FEC: .4byte 0x02021DE0
_08028FF0: .4byte gZones
_08028FF4: .4byte gCardInfo
_08028FF8: .4byte gNotSure
_08028FFC: .4byte gUnk_02021C08
_08029000: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8029004
sub_8029004: @ 0x08029004
	push {r4, r5, r6, lr}
	ldr r6, _080290A0
	ldrb r0, [r6, #2]
	cmp r0, #7
	bne _080290B4
	ldr r0, _080290A4
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802901E
	b _08029142
_0802901E:
	ldr r5, _080290A8
	adds r0, r5, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	bne _0802902C
	b _08029142
_0802902C:
	movs r0, #1
	bl sub_804535C
	adds r0, r5, #0
	bl EmptyZoneInRow
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	adds r4, r4, r5
	ldr r1, [r4]
	movs r0, #0xf0
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	subs r0, #0xf2
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	subs r0, #0x23
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	bl FlipCardFaceDown
	ldr r0, [r4]
	bl ResetPermStage
	ldr r0, [r4]
	bl ResetTempStage
	ldr r0, _080290AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029142
	ldr r1, _080290B0
	ldrh r0, [r6]
	strh r0, [r1]
	bl sub_801CEBC
	b _08029142
	.align 2, 0
_080290A0: .4byte 0x02021DE0
_080290A4: .4byte gNotSure
_080290A8: .4byte gZones+0x14
_080290AC: .4byte gUnk_02021C08
_080290B0: .4byte gUnk_02021C10
_080290B4:
	cmp r0, #6
	bne _08029142
	ldr r0, _08029148
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r1, r0
	bne _08029142
	ldr r5, _0802914C
	adds r0, r5, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _08029142
	movs r0, #0
	bl sub_804535C
	adds r0, r5, #0
	bl EmptyZoneInRow
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x16
	adds r4, r4, r5
	ldr r1, [r4]
	movs r0, #0xf0
	strh r0, [r1]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	subs r0, #0xf2
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #5]
	ldr r1, [r4]
	movs r0, #2
	strb r0, [r1, #4]
	ldr r2, [r4]
	ldrb r1, [r2, #5]
	subs r0, #0x23
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, [r4]
	bl FlipCardFaceDown
	ldr r0, [r4]
	bl ResetPermStage
	ldr r0, [r4]
	bl ResetTempStage
	ldr r0, _08029150
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029142
	ldr r1, _08029154
	ldrh r0, [r6]
	strh r0, [r1]
	bl sub_801CEBC
_08029142:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029148: .4byte gNotSure
_0802914C: .4byte gZones+0x28
_08029150: .4byte gUnk_02021C08
_08029154: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8029158
sub_8029158: @ 0x08029158
	push {r4, r5, r6, lr}
	ldr r6, _08029228
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08029220
	ldr r4, _0802922C
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
_08029180:
	lsls r0, r5, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080291B0
	bl SetCardInfo
	ldr r0, _08029230
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _080291B0
	ldrb r0, [r6, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	bl sub_80403F0
_080291B0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029180
	movs r5, #0
	ldr r6, _0802922C
	ldr r4, _08029228
_080291C0:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080291F0
	bl SetCardInfo
	ldr r0, _08029230
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _080291F0
	ldrb r0, [r4, #2]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r0, [r1]
	bl sub_80403F0
_080291F0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080291C0
	ldr r0, _08029234
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029220
	ldr r4, _08029238
	ldr r3, _0802922C
	ldr r2, _08029228
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08029220:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029228: .4byte 0x02021DE0
_0802922C: .4byte gZones
_08029230: .4byte gCardInfo
_08029234: .4byte gUnk_02021C08
_08029238: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802923C
sub_802923C: @ 0x0802923C
	push {r4, r5, r6, r7, lr}
	ldr r6, _08029338
	ldrb r0, [r6, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08029330
	ldr r4, _0802933C
	ldrb r1, [r6, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r6, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r7, r4, #0
	adds r4, r6, #0
_08029268:
	lsls r0, r5, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080292AC
	bl SetCardInfo
	ldr r0, _08029340
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _080292AC
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl sub_80403F0
_080292AC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029268
	movs r5, #0
	ldr r6, _0802933C
	ldr r4, _08029338
_080292BC:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029300
	bl SetCardInfo
	ldr r0, _08029340
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bne _08029300
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80403F0
_08029300:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080292BC
	ldr r0, _08029344
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029330
	ldr r4, _08029348
	ldr r3, _0802933C
	ldr r2, _08029338
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08029330:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029338: .4byte 0x02021DE0
_0802933C: .4byte gZones
_08029340: .4byte gCardInfo
_08029344: .4byte gUnk_02021C08
_08029348: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802934C
sub_802934C: @ 0x0802934C
	push {r4, r5, r6, lr}
	ldr r1, _080293BC
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _080293D0
	ldr r4, _080293C0
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_0802936A:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029388
	bl SetCardInfo
	ldr r0, _080293C4
	ldrb r0, [r0, #0x16]
	cmp r0, #9
	bne _08029388
	ldr r0, [r4]
	bl sub_80403F0
_08029388:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802936A
	ldr r0, _080293C8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029436
	ldr r4, _080293CC
	ldr r3, _080293C0
	ldr r2, _080293BC
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _08029436
	.align 2, 0
_080293BC: .4byte 0x02021DE0
_080293C0: .4byte gZones
_080293C4: .4byte gCardInfo
_080293C8: .4byte gUnk_02021C08
_080293CC: .4byte gUnk_02021C10
_080293D0:
	cmp r0, #2
	bne _08029436
	ldr r4, _0802943C
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_080293E8:
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029406
	bl SetCardInfo
	ldr r0, _08029440
	ldrb r0, [r0, #0x16]
	cmp r0, #9
	bne _08029406
	ldr r0, [r4]
	bl sub_80403F0
_08029406:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080293E8
	ldr r0, _08029444
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029436
	ldr r4, _08029448
	ldr r3, _0802943C
	ldr r2, _0802944C
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_08029436:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802943C: .4byte gZones
_08029440: .4byte gCardInfo
_08029444: .4byte gUnk_02021C08
_08029448: .4byte gUnk_02021C10
_0802944C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8029450
sub_8029450: @ 0x08029450
	push {r4, r5, r6, lr}
	ldr r1, _080294D0
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _080294E4
	ldr r4, _080294D4
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x14
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_0802946E:
	lsls r0, r5, #2
	adds r1, r0, r6
	ldr r2, [r1]
	ldrh r1, [r2]
	adds r4, r0, #0
	cmp r1, #0
	beq _0802949E
	adds r0, r1, #0
	bl SetCardInfo
	ldr r0, _080294D8
	ldrb r0, [r0, #0x16]
	cmp r0, #0xe
	beq _08029496
	cmp r0, #0xc
	beq _08029496
	cmp r0, #0x11
	beq _08029496
	cmp r0, #0xd
	bne _0802949E
_08029496:
	adds r0, r4, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802949E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802946E
	ldr r0, _080294DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802955C
	ldr r4, _080294E0
	ldr r3, _080294D4
	ldr r2, _080294D0
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
	b _0802955C
	.align 2, 0
_080294D0: .4byte 0x02021DE0
_080294D4: .4byte gZones
_080294D8: .4byte gCardInfo
_080294DC: .4byte gUnk_02021C08
_080294E0: .4byte gUnk_02021C10
_080294E4:
	cmp r0, #2
	bne _0802955C
	ldr r4, _08029564
	ldrb r0, [r1, #3]
	lsls r0, r0, #2
	adds r4, #0x28
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r5, #0
	adds r6, r4, #0
_080294FC:
	lsls r0, r5, #2
	adds r1, r0, r6
	ldr r2, [r1]
	ldrh r1, [r2]
	adds r4, r0, #0
	cmp r1, #0
	beq _0802952C
	adds r0, r1, #0
	bl SetCardInfo
	ldr r0, _08029568
	ldrb r0, [r0, #0x16]
	cmp r0, #0xe
	beq _08029524
	cmp r0, #0xc
	beq _08029524
	cmp r0, #0x11
	beq _08029524
	cmp r0, #0xd
	bne _0802952C
_08029524:
	adds r0, r4, r6
	ldr r0, [r0]
	bl sub_80403F0
_0802952C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080294FC
	ldr r0, _0802956C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802955C
	ldr r4, _08029570
	ldr r3, _08029564
	ldr r2, _08029574
	ldrb r1, [r2, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r4]
	bl sub_801CEBC
_0802955C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029564: .4byte gZones
_08029568: .4byte gCardInfo
_0802956C: .4byte gUnk_02021C08
_08029570: .4byte gUnk_02021C10
_08029574: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8029578
sub_8029578: @ 0x08029578
	push {r4, r5, r6, lr}
	ldr r0, _08029600
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _0802961C
	ldr r0, _08029604
	ldr r0, [r0, #4]
	ldrh r6, [r0]
	ldr r0, _08029608
	cmp r6, r0
	beq _08029590
	b _0802969A
_08029590:
	ldr r4, _0802960C
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _080295EE
	movs r0, #1
	bl sub_804535C
	adds r0, r4, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r5, [r0]
	movs r4, #0
	ldr r0, _08029610
	strh r0, [r5]
	adds r0, r5, #0
	bl ResetPermStage
	adds r0, r5, #0
	bl ResetTempStage
	strb r4, [r5, #4]
	adds r0, r5, #0
	bl UnlockCard
	ldrb r1, [r5, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r5, #5]
	adds r0, r5, #0
	bl FlipCardFaceUp
	ldrb r1, [r5, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #5]
_080295EE:
	ldr r0, _08029614
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802969A
	ldr r0, _08029618
	strh r6, [r0]
	bl sub_801CEBC
	b _0802969A
	.align 2, 0
_08029600: .4byte 0x02021DE0
_08029604: .4byte gNotSure
_08029608: .4byte 0x00000285
_0802960C: .4byte gZones+0x14
_08029610: .4byte 0x00000286
_08029614: .4byte gUnk_02021C08
_08029618: .4byte gUnk_02021C10
_0802961C:
	cmp r0, #6
	bne _0802969A
	ldr r0, _080296A0
	ldr r0, [r0]
	ldrh r6, [r0]
	ldr r0, _080296A4
	cmp r6, r0
	bne _0802969A
	ldr r4, _080296A8
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _0802968A
	movs r0, #0
	bl sub_804535C
	adds r0, r4, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r5, [r0]
	movs r4, #0
	ldr r0, _080296AC
	strh r0, [r5]
	adds r0, r5, #0
	bl ResetPermStage
	adds r0, r5, #0
	bl ResetTempStage
	strb r4, [r5, #4]
	adds r0, r5, #0
	bl UnlockCard
	ldrb r1, [r5, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r5, #5]
	adds r0, r5, #0
	bl FlipCardFaceUp
	ldrb r1, [r5, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #5]
_0802968A:
	ldr r0, _080296B0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802969A
	ldr r0, _080296B4
	strh r6, [r0]
	bl sub_801CEBC
_0802969A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080296A0: .4byte gNotSure
_080296A4: .4byte 0x00000285
_080296A8: .4byte gZones+0x28
_080296AC: .4byte 0x00000286
_080296B0: .4byte gUnk_02021C08
_080296B4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_80296B8
sub_80296B8: @ 0x080296B8
	push {r4, lr}
	ldr r4, _080296FC
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08029710
	ldr r0, _08029700
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	bne _080296E8
	ldr r2, _08029704
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
_080296E8:
	ldr r0, _08029708
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802974C
	ldr r1, _0802970C
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
	b _0802974C
	.align 2, 0
_080296FC: .4byte 0x02021DE0
_08029700: .4byte gNotSure
_08029704: .4byte gZones
_08029708: .4byte gUnk_02021C08
_0802970C: .4byte gUnk_02021C10
_08029710:
	cmp r0, #2
	bne _0802974C
	ldr r0, _08029754
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	bne _0802973A
	ldr r2, _08029758
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
_0802973A:
	ldr r0, _0802975C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802974C
	ldr r1, _08029760
	ldrh r0, [r4]
	strh r0, [r1]
	bl sub_801CEBC
_0802974C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029754: .4byte gNotSure
_08029758: .4byte gZones
_0802975C: .4byte gUnk_02021C08
_08029760: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_8029764
sub_8029764: @ 0x08029764
	push {r4, r5, r6, lr}
	ldr r0, _080297B4
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _080297C4
	movs r5, #0
	ldr r6, _080297B8
_08029772:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _08029792
	bl sub_803EFAC
	movs r1, #0x1e
	ands r1, r0
	cmp r1, #0
	beq _08029792
	adds r0, r4, #0
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
_08029792:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029772
	ldr r0, _080297BC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802980A
	ldr r0, _080297C0
	ldr r1, _080297B4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
	b _0802980A
	.align 2, 0
_080297B4: .4byte 0x02021DE0
_080297B8: .4byte gZones
_080297BC: .4byte gUnk_02021C08
_080297C0: .4byte gUnk_02021C10
_080297C4:
	cmp r0, #3
	bne _0802980A
	movs r5, #0
	ldr r6, _08029810
_080297CC:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _080297EC
	bl sub_803EFAC
	movs r1, #0x1e
	ands r1, r0
	cmp r1, #0
	beq _080297EC
	adds r0, r4, #0
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
_080297EC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080297CC
	ldr r0, _08029814
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802980A
	ldr r0, _08029818
	ldr r1, _0802981C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0802980A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029810: .4byte gZones+0x3C
_08029814: .4byte gUnk_02021C08
_08029818: .4byte gUnk_02021C10
_0802981C: .4byte 0x02021DE0

	THUMB_FUNC_START sub_8029820 @board scanning (perm effects etc)
sub_8029820: @ 0x08029820
	push {r4, lr}
	bl WhoseTurn
	ldr r1, _0802985C
	strb r0, [r1, #4]
	ldr r4, _08029860
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802983A
	bl sub_80408BC
	bl sub_802ADA4
_0802983A:
	bl sub_8040258
	ldrb r0, [r4]
	cmp r0, #0
	bne _08029848
	bl sub_8041104
_08029848:
	bl sub_8027138
	ldrb r0, [r4]
	cmp r0, #0
	bne _08029856
	bl sub_802AE44
_08029856:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802985C: .4byte 0x02021DE0
_08029860: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_8029864
sub_8029864: @ 0x08029864
	push {lr}
	bl sub_801D1A8
	movs r0, #8
	bl sub_801D188
	ldr r0, _0802988C
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _08029890
	ldr r0, _08029894
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0802988C: .4byte 0x02021DE0
_08029890: .4byte 0x08E0C6C0
_08029894: .4byte gCardInfo
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80298A0
sub_80298A0: @ 0x080298A0
	push {lr}
	bl sub_80278A4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80298AC
sub_80298AC: @ 0x080298AC
	push {lr}
	bl sub_8027D2C
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80298C0
sub_80298C0: @ 0x080298C0
	push {r4, r5, lr}
	ldr r5, _08029918
	ldrb r0, [r5, #2]
	cmp r0, #3
	bne _08029912
	ldr r4, _0802991C
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	movs r0, #0
	bl sub_80404F0
	movs r0, #4
	bl sub_8040540
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldr r0, _08029920
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029912
	ldr r1, _08029924
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_08029912:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029918: .4byte 0x02021DE0
_0802991C: .4byte gZones
_08029920: .4byte gUnk_02021C08
_08029924: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8029940
sub_8029940: @ 0x08029940
	push {lr}
	bl sub_8029764
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802994C
sub_802994C: @ 0x0802994C
	push {lr}
	bl sub_8029764
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8029958
sub_8029958: @ 0x08029958
	push {lr}
	bl sub_8029764
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80299D8
sub_80299D8: @ 0x080299D8
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r1, _08029A20
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08029A2C
	ldrb r4, [r1, #3]
	ldr r5, _08029A24
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8043694
	cmp r4, r0
	bne _08029A70
	movs r4, #0
	adds r5, #0x28
_080299FA:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029A12
	bl SetCardInfo
	ldr r0, _08029A28
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _08029A6E
_08029A12:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080299FA
	b _08029A70
	.align 2, 0
_08029A20: .4byte 0x02021DE0
_08029A24: .4byte gZones+0x14
_08029A28: .4byte gCardInfo
_08029A2C:
	cmp r0, #2
	bne _08029A70
	ldrb r4, [r1, #3]
	ldr r5, _08029A48
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r5, #0
	bl sub_8043694
	cmp r4, r0
	bne _08029A70
	movs r4, #0
	subs r5, #0x28
	b _08029A52
	.align 2, 0
_08029A48: .4byte gZones+0x28
_08029A4C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08029A52:
	cmp r4, #4
	bhi _08029A70
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029A4C
	bl SetCardInfo
	ldr r0, _08029A78
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08029A4C
_08029A6E:
	movs r6, #1
_08029A70:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029A78: .4byte gCardInfo
	.byte 0x00, 0x22, 0x0E, 0x48
	.byte 0x80, 0x78, 0x01, 0x28, 0x1C, 0xD1, 0x00, 0x21, 0x0C, 0x4B, 0x18, 0x68, 0x00, 0x88, 0x60, 0x28
	.byte 0x2D, 0xD0, 0x61, 0x28, 0x2B, 0xD0, 0x62, 0x28, 0x29, 0xD0, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E
	.byte 0x04, 0x29, 0x25, 0xD8, 0x88, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x60, 0x28, 0x1E, 0xD0
	.byte 0x61, 0x28, 0xF0, 0xD1, 0x1B, 0xE0, 0x00, 0x00, 0xE0, 0x1D, 0x02, 0x02, 0xE4, 0x3F, 0x02, 0x02
	.byte 0x02, 0x28, 0x15, 0xD1, 0x00, 0x21, 0x01, 0x4B, 0x18, 0x68, 0x0B, 0xE0, 0xF8, 0x3F, 0x02, 0x02
	.byte 0x62, 0x28, 0x0C, 0xD0, 0x48, 0x1C, 0x00, 0x06, 0x01, 0x0E, 0x04, 0x29, 0x08, 0xD8, 0x88, 0x00
	.byte 0xC0, 0x18, 0x00, 0x68, 0x00, 0x88, 0x60, 0x28, 0x01, 0xD0, 0x61, 0x28, 0xF0, 0xD1, 0x01, 0x22
	.byte 0x10, 0x1C, 0x70, 0x47

	THUMB_FUNC_START sub_8029AF4
sub_8029AF4: @ 0x08029AF4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08029B38
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029B48
	movs r5, #0
	ldr r7, _08029B3C
_08029B04:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029B2C
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029B2C
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08029B40
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	beq _08029B44
_08029B2C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029B04
	b _08029B82
	.align 2, 0
_08029B38: .4byte 0x02021DE0
_08029B3C: .4byte gZones+0x14
_08029B40: .4byte gCardInfo
_08029B44:
	movs r6, #1
	b _08029B82
_08029B48:
	cmp r0, #2
	bne _08029B82
	movs r5, #0
	ldr r7, _08029B8C
_08029B50:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029B78
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029B78
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08029B90
	ldrb r0, [r0, #0x16]
	cmp r0, #0x14
	beq _08029B44
_08029B78:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029B50
_08029B82:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029B8C: .4byte gZones+0x28
_08029B90: .4byte gCardInfo

	THUMB_FUNC_START sub_8029B94
sub_8029B94: @ 0x08029B94
	push {r4, lr}
	movs r4, #0
	ldr r0, _08029BC4
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029BD4
	movs r1, #0
	ldr r3, _08029BC8
	ldr r2, _08029BCC
_08029BA6:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029BB6
	cmp r0, r2
	beq _08029BD0
_08029BB6:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08029BA6
	b _08029BF8
	.align 2, 0
_08029BC4: .4byte 0x02021DE0
_08029BC8: .4byte gZones+0x14
_08029BCC: .4byte 0x0000022A
_08029BD0:
	movs r4, #1
	b _08029BF8
_08029BD4:
	cmp r0, #2
	bne _08029BF8
	movs r1, #0
	ldr r3, _08029C00
	ldr r2, _08029C04
_08029BDE:
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029BEE
	cmp r0, r2
	beq _08029BD0
_08029BEE:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08029BDE
_08029BF8:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08029C00: .4byte gZones+0x28
_08029C04: .4byte 0x0000022A

	THUMB_FUNC_START sub_8029C08
sub_8029C08: @ 0x08029C08
	push {r4, lr}
	movs r4, #0
	ldr r0, _08029C48
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029C50
	movs r2, #0
	ldr r1, _08029C4C
	ldr r0, [r1, #0x14]
	ldrh r0, [r0]
	adds r3, r1, #0
	cmp r0, #0
	beq _08029C26
	cmp r0, #0xc
	beq _08029C82
_08029C26:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029C84
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029C26
	cmp r0, #0xc
	bne _08029C26
	b _08029C82
	.align 2, 0
_08029C48: .4byte 0x02021DE0
_08029C4C: .4byte gZones
_08029C50:
	cmp r0, #2
	bne _08029C84
	movs r2, #0
	ldr r1, _08029C60
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	adds r3, r1, #0
	b _08029C7A
	.align 2, 0
_08029C60: .4byte gZones
_08029C64:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029C84
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
_08029C7A:
	cmp r0, #0
	beq _08029C64
	cmp r0, #0xc
	bne _08029C64
_08029C82:
	movs r4, #1
_08029C84:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8029C8C
sub_8029C8C: @ 0x08029C8C
	push {r4, lr}
	movs r4, #0
	ldr r0, _08029CCC
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029CD4
	movs r2, #0
	ldr r1, _08029CD0
	ldr r0, [r1, #0x14]
	ldrh r0, [r0]
	adds r3, r1, #0
	cmp r0, #0
	beq _08029CAA
	cmp r0, #0xa1
	beq _08029D06
_08029CAA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029D08
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029CAA
	cmp r0, #0xa1
	bne _08029CAA
	b _08029D06
	.align 2, 0
_08029CCC: .4byte 0x02021DE0
_08029CD0: .4byte gZones
_08029CD4:
	cmp r0, #2
	bne _08029D08
	movs r2, #0
	ldr r1, _08029CE4
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	adds r3, r1, #0
	b _08029CFE
	.align 2, 0
_08029CE4: .4byte gZones
_08029CE8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029D08
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
_08029CFE:
	cmp r0, #0
	beq _08029CE8
	cmp r0, #0xa1
	bne _08029CE8
_08029D06:
	movs r4, #1
_08029D08:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8029D10
sub_8029D10: @ 0x08029D10
	push {r4, lr}
	movs r4, #0
	ldr r0, _08029D50
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029D58
	movs r2, #0
	ldr r1, _08029D54
	ldr r0, [r1, #0x14]
	ldrh r0, [r0]
	adds r3, r1, #0
	cmp r0, #0
	beq _08029D2E
	cmp r0, #0xa0
	beq _08029D8A
_08029D2E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029D8C
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029D2E
	cmp r0, #0xa0
	bne _08029D2E
	b _08029D8A
	.align 2, 0
_08029D50: .4byte 0x02021DE0
_08029D54: .4byte gZones
_08029D58:
	cmp r0, #2
	bne _08029D8C
	movs r2, #0
	ldr r1, _08029D68
	ldr r0, [r1, #0x28]
	ldrh r0, [r0]
	adds r3, r1, #0
	b _08029D82
	.align 2, 0
_08029D68: .4byte gZones
_08029D6C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bhi _08029D8C
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
_08029D82:
	cmp r0, #0
	beq _08029D6C
	cmp r0, #0xa0
	bne _08029D6C
_08029D8A:
	movs r4, #1
_08029D8C:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8029D94
sub_8029D94: @ 0x08029D94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r0, _08029DDC
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029DE8
	movs r5, #0
	ldr r0, _08029DE0
	mov r8, r0
	movs r6, #0xb7
	lsls r6, r6, #1
_08029DAE:
	lsls r0, r5, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029DD0
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029DD0
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r6
	beq _08029DE4
_08029DD0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029DAE
	b _08029E22
	.align 2, 0
_08029DDC: .4byte 0x02021DE0
_08029DE0: .4byte gZones+0x14
_08029DE4:
	movs r7, #1
	b _08029E22
_08029DE8:
	cmp r0, #2
	bne _08029E22
	movs r5, #0
	ldr r0, _08029E30
	mov r8, r0
	movs r6, #0xb7
	lsls r6, r6, #1
_08029DF6:
	lsls r0, r5, #2
	mov r1, r8
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029E18
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029E18
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, r6
	beq _08029DE4
_08029E18:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029DF6
_08029E22:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029E30: .4byte gZones+0x28

	THUMB_FUNC_START sub_8029E34
sub_8029E34: @ 0x08029E34
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08029E98
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08029EB2
	movs r4, #0
	ldr r6, _08029E9C
_08029E4A:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029E66
	bl SetCardInfo
	ldr r0, _08029EA0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	beq _08029E94
	cmp r0, #2
	beq _08029E94
_08029E66:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08029E4A
	cmp r5, #0
	bne _08029EB2
	movs r4, #0
	ldr r6, _08029EA4
_08029E78:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029EA8
	bl SetCardInfo
	ldr r0, _08029EA0
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	beq _08029E94
	cmp r0, #2
	bne _08029EA8
_08029E94:
	movs r5, #1
	b _08029EB2
	.align 2, 0
_08029E98: .4byte 0x02021DE0
_08029E9C: .4byte gZones+0x14
_08029EA0: .4byte gCardInfo
_08029EA4: .4byte gZones+0x28
_08029EA8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08029E78
_08029EB2:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8029EBC
sub_8029EBC: @ 0x08029EBC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08029F20
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08029F3A
	movs r4, #0
	ldr r6, _08029F24
_08029ED2:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029EEE
	bl SetCardInfo
	ldr r0, _08029F28
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	beq _08029F1C
	cmp r0, #2
	beq _08029F1C
_08029EEE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08029ED2
	cmp r5, #0
	bne _08029F3A
	movs r4, #0
	ldr r6, _08029F2C
_08029F00:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029F30
	bl SetCardInfo
	ldr r0, _08029F28
	ldrb r0, [r0, #0x17]
	cmp r0, #1
	beq _08029F1C
	cmp r0, #2
	bne _08029F30
_08029F1C:
	movs r5, #1
	b _08029F3A
	.align 2, 0
_08029F20: .4byte 0x02021DE0
_08029F24: .4byte gZones+0x14
_08029F28: .4byte gCardInfo
_08029F2C: .4byte gZones+0x28
_08029F30:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08029F00
_08029F3A:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8029F44
sub_8029F44: @ 0x08029F44
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _08029F90
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08029FA0
	movs r5, #0
	ldr r7, _08029F94
_08029F54:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029F7C
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029F7C
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _08029F98
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	beq _08029FF0
_08029F7C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029F54
	cmp r6, #0
	bne _08029FF2
	ldr r0, _08029F9C
	ldr r0, [r0]
	b _08029FE2
	.align 2, 0
_08029F90: .4byte 0x02021DE0
_08029F94: .4byte gZones+0x28
_08029F98: .4byte gCardInfo
_08029F9C: .4byte gNotSure
_08029FA0:
	cmp r0, #2
	bne _08029FF2
	movs r5, #0
	ldr r7, _08029FFC
_08029FA8:
	lsls r0, r5, #2
	adds r4, r0, r7
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _08029FD0
	adds r0, r1, #0
	bl IsCardFaceUp
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029FD0
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0802A000
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	beq _08029FF0
_08029FD0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08029FA8
	cmp r6, #0
	bne _08029FF2
	ldr r0, _0802A004
	ldr r0, [r0, #4]
_08029FE2:
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0802A000
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _08029FF2
_08029FF0:
	movs r6, #1
_08029FF2:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029FFC: .4byte gZones+0x14
_0802A000: .4byte gCardInfo
_0802A004: .4byte gNotSure

	THUMB_FUNC_START sub_802A008
sub_802A008: @ 0x0802A008
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r0, _0802A03C
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A04C
	movs r4, #0
	ldr r5, _0802A040
_0802A018:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A030
	bl SetCardInfo
	ldr r0, _0802A044
	ldrb r0, [r0, #0x17]
	cmp r0, #2
	bne _0802A048
_0802A030:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A018
	b _0802A076
	.align 2, 0
_0802A03C: .4byte 0x02021DE0
_0802A040: .4byte gZones+0x14
_0802A044: .4byte gCardInfo
_0802A048:
	movs r6, #1
	b _0802A076
_0802A04C:
	cmp r0, #2
	bne _0802A076
	movs r4, #0
	ldr r5, _0802A080
_0802A054:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A06C
	bl SetCardInfo
	ldr r0, _0802A084
	ldrb r0, [r0, #0x17]
	cmp r0, #2
	bne _0802A048
_0802A06C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A054
_0802A076:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802A080: .4byte gZones+0x28
_0802A084: .4byte gCardInfo

	THUMB_FUNC_START sub_802A088
sub_802A088: @ 0x0802A088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r1, _0802A160
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0802A180
	ldrb r4, [r1, #3]
	ldr r6, _0802A164
	ldrh r1, [r1]
	adds r0, r6, #0
	bl sub_8043694
	cmp r4, r0
	beq _0802A0AE
	b _0802A240
_0802A0AE:
	movs r5, #0
	adds r6, #0x14
	mov sl, r6
	ldr r6, _0802A168
	ldr r0, _0802A16C
	mov sb, r0
	ldr r1, _0802A170
	mov r8, r1
_0802A0BE:
	lsls r0, r5, #2
	mov r1, sl
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A0F8
	adds r0, r1, #0
	bl IsCardLocked
	cmp r0, #1
	beq _0802A0F8
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _0802A174
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bhi _0802A17C
_0802A0F8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802A0BE
	cmp r7, #0
	beq _0802A108
	b _0802A240
_0802A108:
	movs r5, #0
	ldr r0, _0802A178
	mov sl, r0
	ldr r6, _0802A168
	ldr r1, _0802A16C
	mov sb, r1
	ldr r0, _0802A170
	mov r8, r0
_0802A118:
	lsls r0, r5, #2
	mov r1, sl
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A152
	adds r0, r1, #0
	bl IsCardLocked
	cmp r0, #1
	beq _0802A152
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _0802A174
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bhi _0802A17C
_0802A152:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802A118
	b _0802A240
	.align 2, 0
_0802A160: .4byte 0x02021DE0
_0802A164: .4byte gZones
_0802A168: .4byte gStatMod
_0802A16C: .4byte gDuel+0xF0
_0802A170: .4byte 0x000005DB
_0802A174: .4byte gCardInfo
_0802A178: .4byte gZones+0x28
_0802A17C:
	movs r7, #1
	b _0802A240
_0802A180:
	cmp r0, #3
	bne _0802A240
	ldrb r4, [r1, #3]
	ldr r6, _0802A250
	ldrh r1, [r1]
	adds r0, r6, #0
	bl sub_8043694
	cmp r4, r0
	bne _0802A240
	movs r5, #0
	subs r6, #0x28
	mov sl, r6
	ldr r6, _0802A254
	ldr r0, _0802A258
	mov sb, r0
	ldr r1, _0802A25C
	mov r8, r1
_0802A1A4:
	lsls r0, r5, #2
	mov r1, sl
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A1DE
	adds r0, r1, #0
	bl IsCardLocked
	cmp r0, #1
	beq _0802A1DE
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _0802A260
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bhi _0802A17C
_0802A1DE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802A1A4
	cmp r7, #0
	bne _0802A240
	movs r5, #0
	ldr r0, _0802A264
	mov sl, r0
	ldr r6, _0802A254
	ldr r1, _0802A258
	mov sb, r1
	ldr r0, _0802A25C
	mov r8, r0
_0802A1FC:
	lsls r0, r5, #2
	mov r1, sl
	adds r4, r0, r1
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A236
	adds r0, r1, #0
	bl IsCardLocked
	cmp r0, #1
	beq _0802A236
	ldr r0, [r4]
	ldrh r0, [r0]
	strh r0, [r6]
	mov r1, sb
	ldrb r0, [r1]
	strb r0, [r6, #2]
	ldr r0, [r4]
	bl sub_804069C
	strb r0, [r6, #3]
	adds r0, r6, #0
	bl SetFinalStat
	ldr r0, _0802A260
	ldrh r0, [r0, #0x12]
	cmp r0, r8
	bhi _0802A17C
_0802A236:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802A1FC
_0802A240:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A250: .4byte gZones+0x3C
_0802A254: .4byte gStatMod
_0802A258: .4byte gDuel+0xF0
_0802A25C: .4byte 0x000005DB
_0802A260: .4byte gCardInfo
_0802A264: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A268
sub_802A268: @ 0x0802A268
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802A2EC
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802A300
	movs r5, #0
	movs r4, #0
	ldr r6, _0802A2F0
_0802A27E:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0802A2F4
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _0802A294
	adds r5, #1
_0802A294:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A27E
	movs r4, #0
	ldr r7, _0802A2F8
_0802A2A2:
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r6, _0802A2F4
	ldrb r0, [r6, #0x16]
	cmp r0, #1
	bne _0802A2B8
	adds r5, #1
_0802A2B8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A2A2
	ldr r4, _0802A2FC
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldrb r0, [r6, #0x16]
	cmp r0, #1
	bne _0802A2D4
	adds r5, #1
_0802A2D4:
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldrb r0, [r6, #0x16]
	cmp r0, #1
	bne _0802A2E4
	adds r5, #1
_0802A2E4:
	cmp r5, #0
	beq _0802A300
	movs r0, #1
	b _0802A302
	.align 2, 0
_0802A2EC: .4byte 0x02021DE0
_0802A2F0: .4byte gZones+0x14
_0802A2F4: .4byte gCardInfo
_0802A2F8: .4byte gZones+0x28
_0802A2FC: .4byte gNotSure
_0802A300:
	movs r0, #0
_0802A302:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_802A308
sub_802A308: @ 0x0802A308
	push {lr}
	ldr r0, _0802A324
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _0802A330
	ldr r0, _0802A328
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802A358
	ldr r0, _0802A32C
	b _0802A344
	.align 2, 0
_0802A324: .4byte 0x02021DE0
_0802A328: .4byte gNotSure
_0802A32C: .4byte gZones+0x14
_0802A330:
	cmp r0, #6
	bne _0802A358
	ldr r0, _0802A350
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, #0xce
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802A358
	ldr r0, _0802A354
_0802A344:
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _0802A358
	movs r0, #1
	b _0802A35A
	.align 2, 0
_0802A350: .4byte gNotSure
_0802A354: .4byte gZones+0x28
_0802A358:
	movs r0, #0
_0802A35A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A360
sub_802A360: @ 0x0802A360
	push {r4, r5, lr}
	ldr r0, _0802A394
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A3A4
	movs r4, #0
	ldr r5, _0802A398
_0802A36E:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A386
	bl SetCardInfo
	ldr r0, _0802A39C
	ldrb r0, [r0, #0x16]
	cmp r0, #9
	beq _0802A3A0
_0802A386:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A36E
	b _0802A3CE
	.align 2, 0
_0802A394: .4byte 0x02021DE0
_0802A398: .4byte gZones+0x14
_0802A39C: .4byte gCardInfo
_0802A3A0:
	movs r0, #1
	b _0802A3D0
_0802A3A4:
	cmp r0, #2
	bne _0802A3CE
	movs r4, #0
	ldr r5, _0802A3D8
_0802A3AC:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A3C4
	bl SetCardInfo
	ldr r0, _0802A3DC
	ldrb r0, [r0, #0x16]
	cmp r0, #9
	beq _0802A3A0
_0802A3C4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A3AC
_0802A3CE:
	movs r0, #0
_0802A3D0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A3D8: .4byte gZones+0x28
_0802A3DC: .4byte gCardInfo

	THUMB_FUNC_START sub_802A3E0
sub_802A3E0: @ 0x0802A3E0
	push {r4, r5, lr}
	ldr r0, _0802A420
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A42C
	movs r4, #0
	ldr r5, _0802A424
_0802A3EE:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A412
	bl SetCardInfo
	ldr r0, _0802A428
	ldrb r0, [r0, #0x16]
	cmp r0, #0xe
	beq _0802A458
	cmp r0, #0xc
	beq _0802A458
	cmp r0, #0x11
	beq _0802A458
	cmp r0, #0xd
	beq _0802A458
_0802A412:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A3EE
	b _0802A46E
	.align 2, 0
_0802A420: .4byte 0x02021DE0
_0802A424: .4byte gZones+0x14
_0802A428: .4byte gCardInfo
_0802A42C:
	cmp r0, #2
	bne _0802A46E
	movs r4, #0
	ldr r5, _0802A45C
_0802A434:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802A464
	bl SetCardInfo
	ldr r0, _0802A460
	ldrb r0, [r0, #0x16]
	cmp r0, #0xe
	beq _0802A458
	cmp r0, #0xc
	beq _0802A458
	cmp r0, #0x11
	beq _0802A458
	cmp r0, #0xd
	bne _0802A464
_0802A458:
	movs r0, #1
	b _0802A470
	.align 2, 0
_0802A45C: .4byte gZones+0x28
_0802A460: .4byte gCardInfo
_0802A464:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802A434
_0802A46E:
	movs r0, #0
_0802A470:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A478
sub_802A478: @ 0x0802A478
	push {lr}
	ldr r0, _0802A49C
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0802A4A0
	ldr r0, _0802A4A4
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0802A49C: .4byte 0x02021DE0
_0802A4A0: .4byte 0x08E0C800
_0802A4A4: .4byte gCardInfo
	.byte 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_802A4AC
sub_802A4AC: @ 0x0802A4AC
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A4BC
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A4C4
	ldr r0, _0802A4C0
	b _0802A4CA
	.align 2, 0
_0802A4BC: .4byte 0x02021DE0
_0802A4C0: .4byte gHands+0x14
_0802A4C4:
	cmp r0, #2
	bne _0802A4D4
	ldr r0, _0802A4DC
_0802A4CA:
	bl NumCardInRow
	cmp r0, #4
	bgt _0802A4D4
	movs r4, #1
_0802A4D4:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A4DC: .4byte gHands

	THUMB_FUNC_START sub_802A4E0
sub_802A4E0: @ 0x0802A4E0
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r1, _0802A504
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0802A53A
	ldrb r4, [r1, #3]
	ldr r6, _0802A508
	ldr r1, _0802A50C
	adds r0, r6, #0
	bl sub_8043694
	cmp r4, r0
	bne _0802A53A
	movs r5, #0
	adds r6, #0x28
	b _0802A516
	.align 2, 0
_0802A504: .4byte 0x02021DE0
_0802A508: .4byte gZones
_0802A50C: .4byte 0x00000149
_0802A510:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802A516:
	cmp r5, #4
	bhi _0802A53A
	lsls r0, r5, #2
	adds r4, r0, r6
	ldr r0, [r4]
	bl IsCardLocked
	cmp r0, #1
	beq _0802A510
	ldr r0, [r4]
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r0, _0802A544
	ldrb r0, [r0, #0x16]
	cmp r0, #1
	bne _0802A510
	movs r7, #1
_0802A53A:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A544: .4byte gCardInfo
	.byte 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_802A54C
sub_802A54C: @ 0x0802A54C
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A588
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A568
	ldr r0, _0802A58C
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A568
	movs r4, #1
_0802A568:
	ldr r0, _0802A588
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802A580
	ldr r0, _0802A590
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A580
	movs r4, #1
_0802A580:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A588: .4byte 0x02021DE0
_0802A58C: .4byte gZones+0x14
_0802A590: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A594
sub_802A594: @ 0x0802A594
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A5D0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A5B0
	ldr r0, _0802A5D4
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A5B0
	movs r4, #1
_0802A5B0:
	ldr r0, _0802A5D0
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802A5C8
	ldr r0, _0802A5D8
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A5C8
	movs r4, #1
_0802A5C8:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A5D0: .4byte 0x02021DE0
_0802A5D4: .4byte gZones+0x14
_0802A5D8: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A5DC
sub_802A5DC: @ 0x0802A5DC
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A618
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A5F8
	ldr r0, _0802A61C
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A5F8
	movs r4, #1
_0802A5F8:
	ldr r0, _0802A618
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802A610
	ldr r0, _0802A620
	movs r1, #0xc1
	lsls r1, r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A610
	movs r4, #1
_0802A610:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A618: .4byte 0x02021DE0
_0802A61C: .4byte gZones+0x14
_0802A620: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A624
sub_802A624: @ 0x0802A624
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A634
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A63C
	ldr r0, _0802A638
	b _0802A642
	.align 2, 0
_0802A634: .4byte 0x02021DE0
_0802A638: .4byte gZones+0x14
_0802A63C:
	cmp r0, #2
	bne _0802A64E
	ldr r0, _0802A658
_0802A642:
	movs r1, #1
	bl NumCardInRow
	cmp r0, #0
	ble _0802A64E
	movs r4, #1
_0802A64E:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A658: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A65C
sub_802A65C: @ 0x0802A65C
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A694
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A676
	ldr r0, _0802A698
	ldr r1, _0802A69C
	bl NumCardInRow
	cmp r0, #0
	ble _0802A676
	movs r4, #1
_0802A676:
	ldr r0, _0802A694
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802A68C
	ldr r0, _0802A6A0
	ldr r1, _0802A69C
	bl NumCardInRow
	cmp r0, #0
	ble _0802A68C
	movs r4, #1
_0802A68C:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A694: .4byte 0x02021DE0
_0802A698: .4byte gZones+0x14
_0802A69C: .4byte 0x00000177
_0802A6A0: .4byte gZones+0x28

	THUMB_FUNC_START sub_802A6A4
sub_802A6A4: @ 0x0802A6A4
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A6B4
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A6BC
	ldr r0, _0802A6B8
	b _0802A6C2
	.align 2, 0
_0802A6B4: .4byte 0x02021DE0
_0802A6B8: .4byte gZones+0x28
_0802A6BC:
	cmp r0, #2
	bne _0802A6CC
	ldr r0, _0802A6D4
_0802A6C2:
	bl NumEmptyZonesInRow
	cmp r0, #4
	bgt _0802A6CC
	movs r4, #1
_0802A6CC:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A6D4: .4byte gZones+0x14
	.byte 0x00, 0x21, 0x08, 0x4B, 0x58, 0x68, 0x00, 0x88
	.byte 0x23, 0x28, 0x08, 0xD0, 0x06, 0x4A, 0x90, 0x42, 0x05, 0xD0, 0x18, 0x68, 0x00, 0x88, 0x23, 0x28
	.byte 0x01, 0xD0, 0x90, 0x42, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x70, 0x47, 0xC0, 0x3F, 0x02, 0x02
	.byte 0xD1, 0x02, 0x00, 0x00, 0x00, 0x21, 0x08, 0x4B, 0x58, 0x68, 0x00, 0x88, 0x23, 0x28, 0x08, 0xD0
	.byte 0x06, 0x4A, 0x90, 0x42, 0x05, 0xD0, 0x18, 0x68, 0x00, 0x88, 0x23, 0x28, 0x01, 0xD0, 0x90, 0x42
	.byte 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x70, 0x47, 0xC0, 0x3F, 0x02, 0x02, 0xD1, 0x02, 0x00, 0x00
	.byte 0x00, 0x21, 0x05, 0x48, 0x80, 0x78, 0x01, 0x38, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x00, 0xD8
	.byte 0x01, 0x21, 0x08, 0x1C, 0x70, 0x47, 0x00, 0x00, 0xE0, 0x1D, 0x02, 0x02, 0x00, 0x21, 0x04, 0x48
	.byte 0x80, 0x78, 0x01, 0x28, 0x01, 0xD0, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x70, 0x47
	.byte 0xE0, 0x1D, 0x02, 0x02, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_802A76C
sub_802A76C: @ 0x0802A76C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov sb, r0
	ldr r0, _0802A7C8
	ldrb r0, [r0, #2]
	cmp r0, #4
	bne _0802A7B8
	movs r6, #0
	movs r5, #0
	ldr r0, _0802A7CC
	mov r8, r0
	ldr r7, _0802A7D0
_0802A78A:
	lsls r0, r5, #2
	add r0, r8
	ldr r0, [r0]
	ldrh r4, [r0]
	cmp r4, #0
	beq _0802A7A6
	adds r0, r4, #0
	bl IsGodCard
	cmp r0, #1
	beq _0802A7A6
	cmp r4, r7
	beq _0802A7A6
	adds r6, #1
_0802A7A6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802A78A
	cmp r6, #1
	bls _0802A7B8
	movs r0, #1
	mov sb, r0
_0802A7B8:
	mov r0, sb
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A7C8: .4byte 0x02021DE0
_0802A7CC: .4byte gZones+0x14
_0802A7D0: .4byte 0x0000025D

	THUMB_FUNC_START sub_802A7D4
sub_802A7D4: @ 0x0802A7D4
	push {r4, lr}
	movs r4, #0
	ldr r0, _0802A7E4
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A7EC
	ldr r0, _0802A7E8
	b _0802A7F2
	.align 2, 0
_0802A7E4: .4byte 0x02021DE0
_0802A7E8: .4byte gZones+0x28
_0802A7EC:
	cmp r0, #2
	bne _0802A7FC
	ldr r0, _0802A804
_0802A7F2:
	bl NumEmptyZonesInRow
	cmp r0, #4
	bgt _0802A7FC
	movs r4, #1
_0802A7FC:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802A804: .4byte gZones+0x14

	THUMB_FUNC_START sub_802A808
sub_802A808: @ 0x0802A808
	push {lr}
	ldr r0, _0802A818
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802A820
	ldr r0, _0802A81C
	b _0802A826
	.align 2, 0
_0802A818: .4byte 0x02021DE0
_0802A81C: .4byte gHands
_0802A820:
	cmp r0, #1
	bne _0802A838
	ldr r0, _0802A834
_0802A826:
	bl NumEmptyZonesInRow
	cmp r0, #3
	ble _0802A838
	movs r0, #1
	b _0802A83A
	.align 2, 0
_0802A834: .4byte gHands+0x14
_0802A838:
	movs r0, #0
_0802A83A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A840
sub_802A840: @ 0x0802A840
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r1, _0802A864
	ldrb r0, [r1, #2]
	cmp r0, #3
	bne _0802A896
	ldrb r4, [r1, #3]
	ldr r6, _0802A868
	adds r0, r6, #0
	movs r1, #0xe9
	bl sub_8043694
	cmp r4, r0
	bne _0802A896
	movs r5, #0
	adds r6, #0x14
	b _0802A872
	.align 2, 0
_0802A864: .4byte 0x02021DE0
_0802A868: .4byte gZones+0x3C
_0802A86C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802A872:
	cmp r5, #4
	bhi _0802A896
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0802A86C
	bl sub_803FCBC
	cmp r0, #1
	bne _0802A86C
	adds r0, r4, #0
	bl IsCardLocked
	cmp r0, #1
	beq _0802A86C
	movs r7, #1
_0802A896:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A8A0
sub_802A8A0: @ 0x0802A8A0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802A8A4
sub_802A8A4: @ 0x0802A8A4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802A8A8
sub_802A8A8: @ 0x0802A8A8
	movs r1, #0
	ldr r0, _0802A8C0
	ldrb r0, [r0, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802A8BA
	movs r1, #1
_0802A8BA:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0802A8C0: .4byte 0x02021DE0
	.byte 0x00, 0x21, 0x05, 0x48, 0x80, 0x78, 0x01, 0x38, 0x00, 0x06, 0x00, 0x0E
	.byte 0x01, 0x28, 0x00, 0xD8, 0x01, 0x21, 0x08, 0x1C, 0x70, 0x47, 0x00, 0x00, 0xE0, 0x1D, 0x02, 0x02
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_802A8E8
sub_802A8E8: @ 0x0802A8E8
	push {lr}
	ldr r0, _0802A904
	ldrb r0, [r0, #2]
	cmp r0, #7
	bne _0802A914
	ldr r0, _0802A908
	ldr r0, [r0, #4]
	ldrh r1, [r0]
	ldr r0, _0802A90C
	cmp r1, r0
	bne _0802A940
	ldr r0, _0802A910
	b _0802A926
	.align 2, 0
_0802A904: .4byte 0x02021DE0
_0802A908: .4byte gNotSure
_0802A90C: .4byte 0x00000285
_0802A910: .4byte gZones+0x14
_0802A914:
	cmp r0, #6
	bne _0802A940
	ldr r0, _0802A934
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _0802A938
	cmp r1, r0
	bne _0802A940
	ldr r0, _0802A93C
_0802A926:
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _0802A940
	movs r0, #1
	b _0802A942
	.align 2, 0
_0802A934: .4byte gNotSure
_0802A938: .4byte 0x00000285
_0802A93C: .4byte gZones+0x28
_0802A940:
	movs r0, #0
_0802A942:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A948
sub_802A948: @ 0x0802A948
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802A94C
sub_802A94C: @ 0x0802A94C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802A950
sub_802A950: @ 0x0802A950
	push {lr}
	ldr r0, _0802A960
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802A968
	ldr r0, _0802A964
	ldr r0, [r0, #4]
	b _0802A970
	.align 2, 0
_0802A960: .4byte 0x02021DE0
_0802A964: .4byte gNotSure
_0802A968:
	cmp r0, #2
	bne _0802A984
	ldr r0, _0802A980
	ldr r0, [r0]
_0802A970:
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	bne _0802A984
	movs r0, #1
	b _0802A986
	.align 2, 0
_0802A980: .4byte gNotSure
_0802A984:
	movs r0, #0
_0802A986:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A98C
sub_802A98C: @ 0x0802A98C
	push {lr}
	ldr r0, _0802A99C
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802A9A4
	ldr r0, _0802A9A0
	b _0802A9AA
	.align 2, 0
_0802A99C: .4byte 0x02021DE0
_0802A9A0: .4byte gZones
_0802A9A4:
	cmp r0, #3
	bne _0802A9C0
	ldr r0, _0802A9B8
_0802A9AA:
	ldr r1, _0802A9BC
	bl NumCardInRow
	cmp r0, #0
	bne _0802A9C0
	movs r0, #1
	b _0802A9C2
	.align 2, 0
_0802A9B8: .4byte gZones+0x3C
_0802A9BC: .4byte 0x00000247
_0802A9C0:
	movs r0, #0
_0802A9C2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802A9C8
sub_802A9C8: @ 0x0802A9C8
	push {lr}
	ldr r0, _0802A9D8
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802A9E0
	ldr r0, _0802A9DC
	b _0802A9E6
	.align 2, 0
_0802A9D8: .4byte 0x02021DE0
_0802A9DC: .4byte gZones
_0802A9E0:
	cmp r0, #3
	bne _0802A9FC
	ldr r0, _0802A9F4
_0802A9E6:
	ldr r1, _0802A9F8
	bl NumCardInRow
	cmp r0, #0
	bne _0802A9FC
	movs r0, #1
	b _0802A9FE
	.align 2, 0
_0802A9F4: .4byte gZones+0x3C
_0802A9F8: .4byte 0x00000247
_0802A9FC:
	movs r0, #0
_0802A9FE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802AA04
sub_802AA04: @ 0x0802AA04
	push {lr}
	ldr r0, _0802AA14
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802AA1C
	ldr r0, _0802AA18
	b _0802AA22
	.align 2, 0
_0802AA14: .4byte 0x02021DE0
_0802AA18: .4byte gZones
_0802AA1C:
	cmp r0, #3
	bne _0802AA38
	ldr r0, _0802AA30
_0802AA22:
	ldr r1, _0802AA34
	bl NumCardInRow
	cmp r0, #0
	bne _0802AA38
	movs r0, #1
	b _0802AA3A
	.align 2, 0
_0802AA30: .4byte gZones+0x3C
_0802AA34: .4byte 0x00000247
_0802AA38:
	movs r0, #0
_0802AA3A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802AA40
sub_802AA40: @ 0x0802AA40
	push {lr}
	ldr r0, _0802AA50
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0802AA58
	ldr r0, _0802AA54
	b _0802AA5E
	.align 2, 0
_0802AA50: .4byte 0x02021DE0
_0802AA54: .4byte gZones
_0802AA58:
	cmp r0, #3
	bne _0802AA74
	ldr r0, _0802AA6C
_0802AA5E:
	ldr r1, _0802AA70
	bl NumCardInRow
	cmp r0, #0
	bne _0802AA74
	movs r0, #1
	b _0802AA76
	.align 2, 0
_0802AA6C: .4byte gZones+0x3C
_0802AA70: .4byte 0x00000247
_0802AA74:
	movs r0, #0
_0802AA76:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802AA7C
sub_802AA7C: @ 0x0802AA7C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA80
sub_802AA80: @ 0x0802AA80
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA84
sub_802AA84: @ 0x0802AA84
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA88
sub_802AA88: @ 0x0802AA88
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA8C
sub_802AA8C: @ 0x0802AA8C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA90
sub_802AA90: @ 0x0802AA90
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA94
sub_802AA94: @ 0x0802AA94
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA98
sub_802AA98: @ 0x0802AA98
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AA9C
sub_802AA9C: @ 0x0802AA9C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAA0
sub_802AAA0: @ 0x0802AAA0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAA4
sub_802AAA4: @ 0x0802AAA4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAA8
sub_802AAA8: @ 0x0802AAA8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAAC
sub_802AAAC: @ 0x0802AAAC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAB0
sub_802AAB0: @ 0x0802AAB0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAB4
sub_802AAB4: @ 0x0802AAB4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAB8
sub_802AAB8: @ 0x0802AAB8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AABC
sub_802AABC: @ 0x0802AABC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAC0
sub_802AAC0: @ 0x0802AAC0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAC4
sub_802AAC4: @ 0x0802AAC4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAC8
sub_802AAC8: @ 0x0802AAC8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AACC
sub_802AACC: @ 0x0802AACC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAD0
sub_802AAD0: @ 0x0802AAD0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAD4
sub_802AAD4: @ 0x0802AAD4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAD8
sub_802AAD8: @ 0x0802AAD8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AADC
sub_802AADC: @ 0x0802AADC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAE0
sub_802AAE0: @ 0x0802AAE0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAE4
sub_802AAE4: @ 0x0802AAE4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAE8
sub_802AAE8: @ 0x0802AAE8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAEC
sub_802AAEC: @ 0x0802AAEC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802AAF0
sub_802AAF0: @ 0x0802AAF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802ACA4
	ldrb r2, [r0, #1]
	lsls r1, r2, #2
	adds r1, r1, r2
	ldrb r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	mov sb, r1
	ldr r0, _0802ACA8
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrb r2, [r2]
	mov r8, r2
	ldr r0, _0802ACAC
	ldrb r0, [r0]
	mov r1, r8
	subs r0, r1, r0
	mov r8, r0
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0802ACB0
	mov r7, r8
	adds r7, #0xf3
	strb r7, [r1]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r0, #0
	strb r0, [r1, #1]
	subs r0, #0x10
	add r0, sb
	ldr r2, _0802ACB4
	mov ip, r2
	mov r2, ip
	ands r0, r2
	mov sl, r0
	ldrh r2, [r1, #2]
	ldr r6, _0802ACB8
	adds r0, r6, #0
	ands r0, r2
	mov r2, sl
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r3, #0xf
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #0x10
	ands r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	ldr r5, _0802ACBC
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	strb r7, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	movs r0, #0x11
	add sb, r0
	mov r2, sb
	mov r0, ip
	ands r2, r0
	mov sb, r2
	ldrh r2, [r1, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r2, sb
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	adds r0, r3, #0
	ands r0, r2
	movs r7, #0x10
	orrs r0, r7
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	movs r0, #0xe
	add r8, r0
	mov r2, r8
	strb r2, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r6, #0
	ands r0, r2
	mov r2, sl
	orrs r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	adds r0, r3, #0
	ands r0, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x20
	mov sl, r2
	mov r2, sl
	orrs r0, r2
	movs r2, #0x3f
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1, #4]
	ldrb r2, [r1, #5]
	adds r0, r4, #0
	ands r0, r2
	movs r2, #8
	orrs r0, r2
	movs r2, #0xf
	ands r0, r2
	movs r2, #0xa0
	orrs r0, r2
	strb r0, [r1, #5]
	adds r1, #8
	mov r0, r8
	strb r0, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	ldrh r0, [r1, #2]
	ands r6, r0
	mov r2, sb
	orrs r6, r2
	strh r6, [r1, #2]
	ldrb r0, [r1, #3]
	ands r3, r0
	orrs r3, r7
	mov r0, sl
	orrs r3, r0
	movs r2, #0x3f
	ands r3, r2
	movs r0, #0x80
	orrs r3, r0
	strb r3, [r1, #3]
	ldrh r0, [r1, #4]
	ands r5, r0
	movs r2, #0xc2
	lsls r2, r2, #1
	orrs r5, r2
	strh r5, [r1, #4]
	ldrb r0, [r1, #5]
	ands r4, r0
	movs r0, #8
	orrs r4, r0
	movs r2, #0xf
	ands r4, r2
	movs r0, #0xa0
	orrs r4, r0
	strb r4, [r1, #5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACA4: .4byte 0x080C7FDC
_0802ACA8: .4byte 0x080C800E
_0802ACAC: .4byte gBG2VOFS
_0802ACB0: .4byte 0x02018710
_0802ACB4: .4byte 0x000001FF
_0802ACB8: .4byte 0xFFFFFE00
_0802ACBC: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_802ACC0
sub_802ACC0: @ 0x0802ACC0
	push {lr}
	sub sp, #4
	ldr r0, _0802ACF8
	ldrb r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	bne _0802AD18
	ldrb r0, [r3, #2]
	cmp r0, #0
	blt _0802AD9E
	cmp r0, #1
	bgt _0802AD04
	ldrb r0, [r3, #3]
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802ACFC
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	ldrb r1, [r3, #2]
	lsls r1, r1, #8
	ldr r2, _0802AD00
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	b _0802AD6E
	.align 2, 0
_0802ACF8: .4byte 0x02021DE0
_0802ACFC: .4byte 0xFFFFFF00
_0802AD00: .4byte 0xFFFF00FF
_0802AD04:
	cmp r0, #4
	bgt _0802AD9E
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	ldrb r1, [r3, #2]
	strb r1, [r0, #1]
	bl sub_802ADCC
	b _0802AD9E
_0802AD18:
	cmp r1, #1
	bne _0802AD9E
	ldrb r0, [r3, #2]
	cmp r0, #5
	bhi _0802AD9E
	lsls r0, r0, #2
	ldr r1, _0802AD2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AD2C: .4byte _0802AD30
_0802AD30: @ jump table
	.4byte _0802AD48 @ case 0
	.4byte _0802AD54 @ case 1
	.4byte _0802AD60 @ case 2
	.4byte _0802AD76 @ case 3
	.4byte _0802AD9E @ case 4
	.4byte _0802AD8C @ case 5
_0802AD48:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #3
	b _0802AD6C
_0802AD54:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #2
	b _0802AD6C
_0802AD60:
	ldrb r1, [r3, #3]
	movs r0, #4
	subs r0, r0, r1
	mov r1, sp
	strb r0, [r1]
	movs r0, #1
_0802AD6C:
	strb r0, [r1, #1]
_0802AD6E:
	mov r0, sp
	bl sub_802ADCC
	b _0802AD9E
_0802AD76:
	ldrb r1, [r3, #3]
	movs r0, #4
	subs r0, r0, r1
	movs r2, #0
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	strb r2, [r0, #1]
	bl sub_802ADCC
	b _0802AD9E
_0802AD8C:
	ldrb r1, [r3, #3]
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	movs r0, #4
	strb r0, [r1, #1]
	mov r0, sp
	bl sub_802ADCC
_0802AD9E:
	add sp, #4
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802ADA4
sub_802ADA4: @ 0x0802ADA4
	push {lr}
	sub sp, #4
	ldr r0, _0802ADC4
	ldr r1, [sp]
	ands r1, r0
	ldr r0, _0802ADC8
	ands r1, r0
	str r1, [sp]
	bl sub_802AE98
	mov r0, sp
	bl sub_802AEB4
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0802ADC4: .4byte 0xFFFFFF00
_0802ADC8: .4byte 0xFFFF00FF

	THUMB_FUNC_START sub_802ADCC
sub_802ADCC: @ 0x0802ADCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80408BC
	adds r0, r4, #0
	bl sub_802AAF0
	ldr r0, _0802ADF0
	bl sub_80081DC
	bl LoadCharblock4
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802ADF0: .4byte LoadOam

	THUMB_FUNC_START sub_802ADF4
sub_802ADF4: @ 0x0802ADF4
	push {lr}
	ldr r0, _0802AE3C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0802AE40
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0802AE3C: .4byte 0x02018710
_0802AE40: .4byte LoadOam

	THUMB_FUNC_START sub_802AE44
sub_802AE44: @ 0x0802AE44
	push {lr}
	ldr r0, _0802AE90
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl sub_804078C
	ldr r0, _0802AE94
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0802AE90: .4byte 0x02018710
_0802AE94: .4byte LoadOam

	THUMB_FUNC_START sub_802AE98
sub_802AE98: @ 0x0802AE98
	push {lr}
	ldr r0, _0802AEAC
	ldr r1, _0802AEB0
	bl sub_8040880 @copy tiles
	bl sub_8040868 @copy palette
	pop {r0}
	bx r0
	.align 2, 0
_0802AEAC: .4byte 0x02013480
_0802AEB0: .4byte 0x080C7DDC @sweeping cursor tiles

	THUMB_FUNC_START sub_802AEB4
sub_802AEB4: @ 0x0802AEB4
	ldr r0, _0802AEF0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802AEF0: .4byte 0x02018710

	THUMB_FUNC_START sub_802AEF4
sub_802AEF4: @ 0x0802AEF4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0802B054
	movs r0, #4
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r6, _0802B058
_0802AF02:
	strb r4, [r5, #3]
	ldr r1, _0802B05C
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802AF1C
	bl sub_802ACC0
_0802AF1C:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802AF3A
	ldr r0, _0802B060
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802AF3A
	ldr r0, _0802B060
	bl PlayMusic
_0802AF3A:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802AF48
	b _0802B04C
_0802AF48:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802AF02
	ldr r1, _0802B054
	movs r0, #5
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _0802B064
	ldr r6, _0802B058
_0802AF60:
	strb r4, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802AF78
	bl sub_802ADF4
_0802AF78:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802AF96
	ldr r0, _0802B060
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802AF96
	ldr r0, _0802B060
	bl PlayMusic
_0802AF96:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802B04C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802AF60


	ldr r5, _0802B058
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802AFBA
	ldr r0, _0802B060
	bl PlayMusic
_0802AFBA:
	ldr r1, _0802B054
	movs r2, #0
	movs r0, #6
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	ldr r0, _0802B068
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802AFD6
	bl sub_802ADF4
_0802AFD6:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802AFF6
	ldr r4, _0802B060
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802AFF6
	adds r0, r4, #0
	bl PlayMusic
_0802AFF6:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802B04C
	ldr r1, _0802B054
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #2]
	strb r2, [r1, #3]
	ldr r0, _0802B068
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r5, _0802B058
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802B020
	bl sub_802ADF4
_0802B020:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802B040
	ldr r4, _0802B060
	adds r0, r4, #0
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r5]
	cmp r0, #0
	bne _0802B040
	adds r0, r4, #0
	bl PlayMusic
_0802B040:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802B06C
_0802B04C:
	ldr r0, _0802B060
	bl sub_8034FEC
	b _0802B1FA
	.align 2, 0
_0802B054: .4byte 0x02021DE0
_0802B058: .4byte gUnk_02021C08
_0802B05C: .4byte gHands
_0802B060: .4byte 0x00000177
_0802B064: .4byte gHands+0x14
_0802B068: .4byte gNotSure
_0802B06C:
	ldr r1, _0802B200
	movs r0, #2
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _0802B204
	ldr r6, _0802B208
_0802B07A:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B098
	bl sub_802ACC0
_0802B098:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802B0B6
	ldr r0, _0802B20C
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B0B6
	ldr r0, _0802B20C
	bl PlayMusic
_0802B0B6:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802B04C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B07A
	ldr r1, _0802B200
	movs r0, #1
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _0802B204
	ldr r6, _0802B208
_0802B0DA:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B0F8
	bl sub_802ACC0
_0802B0F8:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802B116
	ldr r0, _0802B20C
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B116
	ldr r0, _0802B20C
	bl PlayMusic
_0802B116:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802B04C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B0DA
	ldr r1, _0802B200
	movs r0, #3
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _0802B204
	ldr r6, _0802B208
_0802B13A:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B158
	bl sub_802ACC0
_0802B158:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802B17A
	ldr r0, _0802B20C
	bl sub_8034FEC
	bl sub_802B6D8
	bl WinConditionFINAL
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B17A
	ldr r0, _0802B20C
	bl PlayMusic
_0802B17A:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802B188
	b _0802B04C
_0802B188:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B13A
	ldr r1, _0802B200
	movs r0, #0
	strb r0, [r1, #2]
	movs r4, #0
	adds r5, r1, #0
	ldr r7, _0802B204
	ldr r6, _0802B208
_0802B1A0:
	strb r4, [r5, #3]
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r5]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B1BE
	bl sub_802ACC0
_0802B1BE:
	bl sub_802BBF0
	cmp r0, #1
	bne _0802B1DC
	ldr r0, _0802B20C
	bl sub_8034FEC
	bl sub_802B6D8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802B1DC
	ldr r0, _0802B20C
	bl PlayMusic
_0802B1DC:
	bl IsDuelOver
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802B1EA
	b _0802B04C
_0802B1EA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B1A0
	ldr r0, _0802B20C
	bl sub_8034FEC
_0802B1FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B200: .4byte 0x02021DE0
_0802B204: .4byte gZones
_0802B208: .4byte gUnk_02021C08
_0802B20C: .4byte 0x00000177

	THUMB_FUNC_START sub_802B210
sub_802B210: @ 0x0802B210
	push {r4, r5, lr}
	ldr r0, _0802B274
	adds r0, #0xf0
	movs r1, #6
	strb r1, [r0]
	ldr r0, _0802B278
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0802B28C
	movs r4, #0
	ldr r5, _0802B27C
_0802B226:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B238
	adds r0, r1, #0
	bl FlipCardFaceDown
_0802B238:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B226
	ldr r1, _0802B280
	ldr r0, _0802B278
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldr r0, _0802B284
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B2DE
	ldr r0, _0802B274
	adds r0, #0xf0
	ldrb r0, [r0]
	bl sub_8041140
	ldr r1, _0802B288
	movs r0, #0x53
	strh r0, [r1]
	bl sub_801CEBC
	b _0802B2DE
	.align 2, 0
_0802B274: .4byte gDuel
_0802B278: .4byte 0x02021DE0
_0802B27C: .4byte gZones+0x14
_0802B280: .4byte gZones
_0802B284: .4byte gUnk_02021C08
_0802B288: .4byte gUnk_02021C10
_0802B28C:
	cmp r0, #2
	bne _0802B2DE
	movs r4, #0
	ldr r5, _0802B2E4
_0802B294:
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0802B2A6
	adds r0, r1, #0
	bl FlipCardFaceDown
_0802B2A6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802B294
	ldr r1, _0802B2E8
	ldr r0, _0802B2EC
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldr r0, _0802B2F0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B2DE
	ldr r0, _0802B2F4
	adds r0, #0xf0
	ldrb r0, [r0]
	bl sub_8041140
	ldr r1, _0802B2F8
	movs r0, #0x53
	strh r0, [r1]
	bl sub_801CEBC
_0802B2DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B2E4: .4byte gZones+0x28
_0802B2E8: .4byte gZones
_0802B2EC: .4byte 0x02021DE0
_0802B2F0: .4byte gUnk_02021C08
_0802B2F4: .4byte gDuel
_0802B2F8: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802B2FC
sub_802B2FC: @ 0x0802B2FC
	push {r4, r5, r6, lr}
	ldr r0, _0802B344
	ldrb r0, [r0, #2]
	cmp r0, #3
	bne _0802B3C6
	ldr r4, _0802B348
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #4
	bgt _0802B3C6
	adds r0, r4, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl sub_803EF7C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B3C6
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802B34C
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x92
	lsls r0, r0, #2
	b _0802B38C
	.align 2, 0
_0802B344: .4byte 0x02021DE0
_0802B348: .4byte gZones+0x3C
_0802B34C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0802B364
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0802B360
	b _0802B38C
	.align 2, 0
_0802B360: .4byte 0x00000249
_0802B364:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802B37C
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0802B378
	b _0802B38C
	.align 2, 0
_0802B378: .4byte 0x0000024A
_0802B37C:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0802B3C6
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0802B3CC
_0802B38C:
	strh r0, [r1]
	movs r5, #0
	ldr r6, _0802B3D0
_0802B392:
	lsls r0, r5, #2
	adds r0, r0, r6
	ldr r4, [r0]
	ldrh r0, [r4]
	bl sub_803EFAC
	cmp r0, #0
	beq _0802B3A8
	adds r0, r4, #0
	bl FlipCardFaceUp
_0802B3A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0802B392
	ldr r0, _0802B3D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B3C6
	ldr r0, _0802B3D8
	ldr r1, _0802B3DC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0802B3C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B3CC: .4byte 0x0000024B
_0802B3D0: .4byte gZones+0x3C
_0802B3D4: .4byte gUnk_02021C08
_0802B3D8: .4byte gUnk_02021C10
_0802B3DC: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802B3E0
sub_802B3E0: @ 0x0802B3E0
	push {r4, r5, r6, lr}
	ldr r5, _0802B45C
	ldrb r0, [r5, #2]
	cmp r0, #3
	bne _0802B454
	ldr r6, _0802B460
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r5, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl FlipCardFaceUp
	adds r4, r6, #0
	adds r4, #0x28
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _0802B432
	adds r0, r4, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r1, _0802B464
	strh r1, [r2]
	ldr r3, [r0]
	ldrb r2, [r3, #5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3, #5]
	ldr r0, [r0]
	bl FlipCardFaceUp
_0802B432:
	ldr r0, _0802B468
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B454
	ldr r2, _0802B46C
	ldrb r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r5, [r5, #3]
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_801CEBC
_0802B454:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B45C: .4byte 0x02021DE0
_0802B460: .4byte gZones
_0802B464: .4byte 0x00000121
_0802B468: .4byte gUnk_02021C08
_0802B46C: .4byte gUnk_02021C10
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x34, 0x4A, 0x90, 0x78, 0x01, 0x28
	.byte 0x5C, 0xD1, 0x33, 0x4C, 0x01, 0x1C, 0x88, 0x00, 0x40, 0x18, 0xD2, 0x78, 0x80, 0x18, 0x80, 0x00
	.byte 0x00, 0x19, 0x05, 0x68, 0x00, 0x26, 0x23, 0x20, 0x28, 0x80, 0x28, 0x1C, 0x14, 0xF0, 0x60, 0xFF
	.byte 0x28, 0x1C, 0x14, 0xF0, 0xA1, 0xFF, 0x2E, 0x71, 0x28, 0x1C, 0x15, 0xF0, 0x0F, 0xF9, 0x69, 0x79
	.byte 0x03, 0x20, 0x40, 0x42, 0x82, 0x46, 0x08, 0x40, 0x05, 0x21, 0x49, 0x42, 0x89, 0x46, 0x08, 0x40
	.byte 0x04, 0x39, 0x88, 0x46, 0x08, 0x40, 0x68, 0x71, 0x28, 0x1C, 0x14, 0xF0, 0x39, 0xFF, 0x69, 0x79
	.byte 0x21, 0x27, 0x7F, 0x42, 0x38, 0x1C, 0x08, 0x40, 0x68, 0x71, 0x14, 0x34, 0x20, 0x1C, 0x18, 0xF0
	.byte 0x23, 0xF8, 0x00, 0x28, 0x21, 0xDD, 0x20, 0x1C, 0x18, 0xF0, 0x6E, 0xF8, 0x00, 0x06, 0x80, 0x0D
	.byte 0x00, 0x19, 0x05, 0x68, 0x0F, 0x20, 0x28, 0x80, 0x28, 0x1C, 0x14, 0xF0, 0x31, 0xFF, 0x28, 0x1C
	.byte 0x14, 0xF0, 0x72, 0xFF, 0x2E, 0x71, 0x28, 0x1C, 0x15, 0xF0, 0xE0, 0xF8, 0x69, 0x79, 0x50, 0x46
	.byte 0x08, 0x40, 0x49, 0x46, 0x08, 0x40, 0x41, 0x46, 0x08, 0x40, 0x68, 0x71, 0x28, 0x1C, 0x14, 0xF0
	.byte 0x0F, 0xFF, 0x69, 0x79, 0x38, 0x1C, 0x08, 0x40, 0x68, 0x71, 0x0A, 0x48, 0x00, 0x78, 0x00, 0x28
	.byte 0x04, 0xD1, 0x09, 0x49, 0x09, 0x48, 0x08, 0x80, 0xF1, 0xF7, 0xC0, 0xFC, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xE0, 0x1D, 0x02, 0x02
	.byte 0xD0, 0x3F, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02, 0x10, 0x1C, 0x02, 0x02, 0x86, 0x02, 0x00, 0x00
	.byte 0xF0, 0xB5, 0x23, 0x4F, 0xB8, 0x78, 0x06, 0x28, 0x3F, 0xD1, 0x22, 0x48, 0x00, 0x68, 0x00, 0x88
	.byte 0x39, 0x88, 0x88, 0x42, 0x39, 0xD1, 0x20, 0x4C, 0x20, 0x1C, 0x17, 0xF0, 0xD5, 0xFF, 0x00, 0x28
	.byte 0x33, 0xD0, 0x00, 0x20, 0x19, 0xF0, 0xEA, 0xFE, 0x05, 0x1C, 0x2D, 0x04, 0x2D, 0x0C, 0x20, 0x1C
	.byte 0x18, 0xF0, 0x1A, 0xF8, 0x00, 0x06, 0x80, 0x0D, 0x00, 0x19, 0x04, 0x68, 0x00, 0x26, 0x25, 0x80
	.byte 0x20, 0x1C, 0x14, 0xF0, 0xDD, 0xFE, 0x20, 0x1C, 0x14, 0xF0, 0x1E, 0xFF, 0x26, 0x71, 0x20, 0x1C
	.byte 0x15, 0xF0, 0x8C, 0xF8, 0x61, 0x79, 0x03, 0x20, 0x40, 0x42, 0x08, 0x40, 0x05, 0x21, 0x49, 0x42
	.byte 0x08, 0x40, 0x04, 0x39, 0x08, 0x40, 0x60, 0x71, 0x20, 0x1C, 0x14, 0xF0, 0xB9, 0xFE, 0x61, 0x79
	.byte 0x21, 0x20, 0x40, 0x42, 0x08, 0x40, 0x60, 0x71, 0x08, 0x48, 0x00, 0x78, 0x00, 0x28, 0x04, 0xD1
	.byte 0x07, 0x49, 0x38, 0x88, 0x08, 0x80, 0xF1, 0xF7, 0x69, 0xFC, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xE0, 0x1D, 0x02, 0x02, 0xC0, 0x3F, 0x02, 0x02, 0xF8, 0x3F, 0x02, 0x02, 0x08, 0x1C, 0x02, 0x02
	.byte 0x10, 0x1C, 0x02, 0x02

	THUMB_FUNC_START sub_802B604
sub_802B604: @ 0x0802B604
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802B694
	ldrb r0, [r7, #2]
	cmp r0, #6
	bne _0802B68E
	ldr r0, _0802B698
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _0802B68E
	ldr r4, _0802B69C
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #0
	beq _0802B68E
	movs r0, #0
	bl sub_804535C
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	bl EmptyZoneInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r4, [r0]
	movs r6, #0
	strh r5, [r4]
	adds r0, r4, #0
	bl ResetPermStage
	adds r0, r4, #0
	bl ResetTempStage
	strb r6, [r4, #4]
	adds r0, r4, #0
	bl UnlockCard
	ldrb r1, [r4, #5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl FlipCardFaceUp
	ldrb r1, [r4, #5]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #5]
	ldr r0, _0802B6A0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B68E
	ldr r1, _0802B6A4
	ldrh r0, [r7]
	strh r0, [r1]
	bl sub_801CEBC
_0802B68E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B694: .4byte 0x02021DE0
_0802B698: .4byte gNotSure
_0802B69C: .4byte gZones+0x28
_0802B6A0: .4byte gUnk_02021C08
_0802B6A4: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802B6A8
sub_802B6A8: @ 0x0802B6A8
	push {lr}
	bl WhoseTurn
	ldr r1, _0802B6D0
	strb r0, [r1, #4]
	ldr r0, _0802B6D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B6C2
	bl sub_80408BC
	bl sub_802ADA4
_0802B6C2:
	bl sub_8040258
	bl sub_802AEF4
	pop {r0}
	bx r0
	.align 2, 0
_0802B6D0: .4byte 0x02021DE0
_0802B6D4: .4byte gUnk_02021C08

	THUMB_FUNC_START sub_802B6D8
sub_802B6D8: @ 0x0802B6D8
	push {lr}
	bl sub_801D1A8
	movs r0, #9
	bl sub_801D188
	ldr r0, _0802B700
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0802B704
	ldr r0, _0802B708
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	pop {r0}
	bx r0
	.align 2, 0
_0802B700: .4byte 0x02021DE0
_0802B704: .4byte 0x08E0C940
_0802B708: .4byte gCardInfo
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802B770
sub_802B770: @ 0x0802B770
	push {r4, lr}
	ldr r4, _0802B7A8
	ldrb r0, [r4, #2]
	cmp r0, #3
	bne _0802B7D4
	ldr r2, _0802B7AC
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0802B7B0
	movs r0, #0xfa
	lsls r0, r0, #2
	bl SubtractPlayerLifePoints
	bl sub_803F29C
	bl sub_803F4C0
	b _0802B7C0
	.align 2, 0
_0802B7A8: .4byte 0x02021DE0
_0802B7AC: .4byte gZones
_0802B7B0:
	movs r0, #0xfa
	lsls r0, r0, #2
	bl SubtractOpponentLifePoints
	bl sub_803F29C
	bl sub_803F4C0
_0802B7C0:
	ldr r0, _0802B7DC
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B7D4
	ldr r0, _0802B7E0
	ldr r1, _0802B7E4
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0802B7D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B7DC: .4byte gUnk_02021C08
_0802B7E0: .4byte gUnk_02021C10
_0802B7E4: .4byte 0x02021DE0

	THUMB_FUNC_START sub_802B7E8
sub_802B7E8: @ 0x0802B7E8
	push {r4, r5, lr}
	ldr r5, _0802B82C
	ldrb r0, [r5, #2]
	cmp r0, #7
	bne _0802B824
	ldr r4, _0802B830
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #5
	beq _0802B824
	adds r0, r4, #0
	bl sub_8043468
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0
	bl ClearZoneAndSendMonToGraveyard
	ldr r0, _0802B834
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B824
	ldr r1, _0802B838
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_0802B824:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B82C: .4byte 0x02021DE0
_0802B830: .4byte gHands
_0802B834: .4byte gUnk_02021C08
_0802B838: .4byte gUnk_02021C10

	THUMB_FUNC_START sub_802B83C
sub_802B83C: @ 0x0802B83C
	push {r4, lr}
	ldr r4, _0802B870
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _0802B89C
	ldr r1, _0802B874
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0802B878
	movs r0, #0xaf
	lsls r0, r0, #2
	bl SubtractPlayerLifePoints
	bl sub_803F29C
	bl sub_803F4C0
	b _0802B888
	.align 2, 0
_0802B870: .4byte 0x02021DE0
_0802B874: .4byte gZones
_0802B878:
	movs r0, #0xaf
	lsls r0, r0, #2
	bl SubtractOpponentLifePoints
	bl sub_803F29C
	bl sub_803F4C0
_0802B888:
	ldr r0, _0802B8A4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B89C
	ldr r0, _0802B8A8
	ldr r1, _0802B8AC
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0802B89C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B8A4: .4byte gUnk_02021C08
_0802B8A8: .4byte gUnk_02021C10
_0802B8AC: .4byte 0x02021DE0
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802B8BC
sub_802B8BC: @ 0x0802B8BC
	push {r4, r5, lr}
	ldr r5, _0802B90C
	ldrb r0, [r5, #2]
	cmp r0, #2
	bne _0802B906
	ldr r4, _0802B910
	adds r0, r4, #0
	bl NumEmptyZonesInRow
	cmp r0, #5
	beq _0802B906
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	adds r0, r4, #0
	bl HighestAtkMonInRow
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_804037C
	ldr r0, _0802B914
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B906
	ldr r1, _0802B918
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_0802B906:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B90C: .4byte 0x02021DE0
_0802B910: .4byte gZones+0x14
_0802B914: .4byte gUnk_02021C08
_0802B918: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802B920
sub_802B920: @ 0x0802B920
	push {r4, r5, lr}
	ldr r5, _0802B968
	ldrb r0, [r5, #2]
	cmp r0, #6
	bne _0802B962
	ldr r4, _0802B96C
	adds r0, r4, #0
	bl NumEmptyZonesAndGodCardsInRow
	cmp r0, #5
	beq _0802B962
	adds r0, r4, #0
	bl HighestAtkMonInRowExceptGodCards
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	bl ClearZoneAndSendMonToGraveyard
	movs r0, #0
	bl sub_804535C
	ldr r0, _0802B970
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B962
	ldr r1, _0802B974
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_0802B962:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B968: .4byte 0x02021DE0
_0802B96C: .4byte gZones+0x14
_0802B970: .4byte gUnk_02021C08
_0802B974: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802B988
sub_802B988: @ 0x0802B988
	push {r4, r5, lr}
	ldr r4, _0802B9E0
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _0802B9DA
	ldr r5, _0802B9E4
	ldrb r0, [r4, #3]
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl FlipCardFaceUp
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_804037C
	ldr r0, _0802B9E8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B9DA
	ldr r2, _0802B9EC
	ldrb r1, [r4, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r4, #3]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_801CEBC
_0802B9DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802B9E0: .4byte 0x02021DE0
_0802B9E4: .4byte gZones
_0802B9E8: .4byte gUnk_02021C08
_0802B9EC: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802B9F4
sub_802B9F4: @ 0x0802B9F4
	push {r4, r5, lr}
	ldr r5, _0802BA30
	ldrb r0, [r5, #2]
	cmp r0, #2
	bne _0802BA28
	ldr r1, _0802BA34
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl FlipCardFaceUp
	adds r0, r4, #0
	bl sub_8040368
	ldr r0, _0802BA38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BA28
	ldr r1, _0802BA3C
	ldrh r0, [r5]
	strh r0, [r1]
	bl sub_801CEBC
_0802BA28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA30: .4byte 0x02021DE0
_0802BA34: .4byte gZones
_0802BA38: .4byte gUnk_02021C08
_0802BA3C: .4byte gUnk_02021C10
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802BA50
sub_802BA50: @ 0x0802BA50
	push {r4, r5, lr}
	ldr r2, _0802BA70
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _0802BAA2
	ldr r1, _0802BA74
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl FlipCardFaceUp
	movs r5, #2
	b _0802BA84
	.align 2, 0
_0802BA70: .4byte 0x02021DE0
_0802BA74: .4byte gZones
_0802BA78:
	adds r0, r4, #0
	bl sub_8040368
	subs r5, #1
	cmp r5, #0
	beq _0802BA8E
_0802BA84:
	adds r0, r4, #0
	bl sub_804069C
	cmp r0, #5
	ble _0802BA78
_0802BA8E:
	ldr r0, _0802BAA8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BAA2
	ldr r0, _0802BAAC
	ldr r1, _0802BAB0
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_801CEBC
_0802BAA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BAA8: .4byte gUnk_02021C08
_0802BAAC: .4byte gUnk_02021C10
_0802BAB0: .4byte 0x02021DE0
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0xB5, 0x00, 0x26, 0x14, 0x49, 0x88, 0x78, 0x01, 0x28, 0x2B, 0xD1
	.byte 0x13, 0x48, 0xF0, 0x30, 0x00, 0x78, 0x06, 0x28, 0x2D, 0xD1, 0xCC, 0x78, 0x11, 0x4D, 0x28, 0x1C
	.byte 0x53, 0x21, 0x17, 0xF0, 0xA7, 0xFD, 0x84, 0x42, 0x49, 0xD1, 0x00, 0x24, 0xA0, 0x00, 0x40, 0x19
	.byte 0x01, 0x68, 0x08, 0x88, 0x00, 0x28, 0x0A, 0xD0, 0x08, 0x48, 0xC0, 0x78, 0x84, 0x42, 0x06, 0xD0
	.byte 0x08, 0x1C, 0x14, 0xF0, 0xF9, 0xFB, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28, 0x13, 0xD0, 0x60, 0x1C
	.byte 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE9, 0xD9, 0x31, 0xE0, 0x00, 0x00, 0xE0, 0x1D, 0x02, 0x02
	.byte 0xC0, 0x3E, 0x02, 0x02, 0xE4, 0x3F, 0x02, 0x02, 0x02, 0x28, 0x28, 0xD1, 0x03, 0x48, 0xF0, 0x30
	.byte 0x00, 0x78, 0x06, 0x28, 0x04, 0xD0, 0x01, 0x26, 0x21, 0xE0, 0x00, 0x00, 0xC0, 0x3E, 0x02, 0x02
	.byte 0xCC, 0x78, 0x11, 0x4D, 0x28, 0x1C, 0x53, 0x21, 0x17, 0xF0, 0x74, 0xFD, 0x84, 0x42, 0x16, 0xD1
	.byte 0x00, 0x24, 0xA0, 0x00, 0x40, 0x19, 0x01, 0x68, 0x08, 0x88, 0x00, 0x28, 0x0A, 0xD0, 0x0B, 0x48
	.byte 0xC0, 0x78, 0x84, 0x42, 0x06, 0xD0, 0x08, 0x1C, 0x14, 0xF0, 0xC6, 0xFB, 0x00, 0x06, 0x00, 0x0E
	.byte 0x01, 0x28, 0xE0, 0xD0, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE9, 0xD9, 0x30, 0x1C
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF8, 0x3F, 0x02, 0x02, 0xE0, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_802BBF0 @castle of dark illusion, mirage knight etc effects
sub_802BBF0: @ 0x0802BBF0
	push {lr}
	ldr r0, _0802BC14
	ldrh r0, [r0]
	bl SetCardInfo
	ldr r1, _0802BC18
	ldr r0, _0802BC1C
	ldrb r0, [r0, #0x1e]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_0802BC14: .4byte 0x02021DE0
_0802BC18: .4byte 0x08E0CA80
_0802BC1C: .4byte gCardInfo
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x30, 0xB5, 0x00, 0x25, 0x07, 0x49, 0x88, 0x78, 0x03, 0x28, 0x07, 0xD1
	.byte 0xCC, 0x78, 0x06, 0x48, 0x09, 0x88, 0x17, 0xF0, 0xFD, 0xFC, 0x84, 0x42, 0x00, 0xD1, 0x01, 0x25
	.byte 0x28, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xE0, 0x1D, 0x02, 0x02, 0x0C, 0x40, 0x02, 0x02
	.byte 0x70, 0xB5, 0x00, 0x26, 0x0A, 0x49, 0x88, 0x78, 0x03, 0x28, 0x0D, 0xD1, 0xCC, 0x78, 0x09, 0x4D
	.byte 0x09, 0x49, 0x28, 0x1C, 0x17, 0xF0, 0xE6, 0xFC, 0x84, 0x42, 0x05, 0xD1, 0x28, 0x1C, 0x17, 0xF0
	.byte 0x2B, 0xFC, 0x00, 0x28, 0x00, 0xDD, 0x01, 0x26, 0x30, 0x1C, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xE0, 0x1D, 0x02, 0x02, 0x0C, 0x40, 0x02, 0x02, 0x47, 0x02, 0x00, 0x00, 0x10, 0xB5, 0x00, 0x24
	.byte 0x06, 0x48, 0x80, 0x78, 0x07, 0x28, 0x05, 0xD1, 0x05, 0x48, 0x17, 0xF0, 0x15, 0xFC, 0x02, 0x28
	.byte 0x00, 0xDC, 0x01, 0x24, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xE0, 0x1D, 0x02, 0x02
	.byte 0xB0, 0x40, 0x02, 0x02, 0x00, 0x21, 0x03, 0x48, 0x80, 0x78, 0x02, 0x28, 0x00, 0xD1, 0x01, 0x21
	.byte 0x08, 0x1C, 0x70, 0x47, 0xE0, 0x1D, 0x02, 0x02, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x30, 0xB5, 0x0A, 0x4C, 0xA0, 0x78, 0x03, 0x28, 0x14, 0xD1, 0x09, 0x4D
	.byte 0x28, 0x1C, 0x17, 0xF0, 0xF1, 0xFB, 0x00, 0x28, 0x0E, 0xD0, 0xE4, 0x78, 0x28, 0x1C, 0x14, 0x30
	.byte 0xE9, 0x21, 0x17, 0xF0, 0x9F, 0xFC, 0x84, 0x42, 0x06, 0xD1, 0x01, 0x20, 0x05, 0xE0, 0x00, 0x00
	.byte 0xE0, 0x1D, 0x02, 0x02, 0xF8, 0x3F, 0x02, 0x02, 0x00, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0xB5, 0x05, 0x48, 0x80, 0x78, 0x02, 0x28, 0x0A, 0xD1, 0x04, 0x48, 0x17, 0xF0, 0xD4, 0xFB
	.byte 0x04, 0x28, 0x05, 0xDC, 0x01, 0x20, 0x04, 0xE0, 0xE0, 0x1D, 0x02, 0x02, 0xE4, 0x3F, 0x02, 0x02
	.byte 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x00, 0xB5, 0x05, 0x48
	.byte 0x80, 0x78, 0x06, 0x28, 0x0A, 0xD1, 0x04, 0x48, 0x17, 0xF0, 0xC6, 0xFB, 0x05, 0x28, 0x05, 0xD0
	.byte 0x01, 0x20, 0x04, 0xE0, 0xE0, 0x1D, 0x02, 0x02, 0xE4, 0x3F, 0x02, 0x02, 0x00, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47, 0x02, 0x48, 0x80, 0x78, 0x01, 0x28, 0x03, 0xD0, 0x00, 0x20, 0x02, 0xE0
	.byte 0xE0, 0x1D, 0x02, 0x02, 0x01, 0x20, 0x70, 0x47, 0x02, 0x48, 0x80, 0x78, 0x01, 0x28, 0x03, 0xD0
	.byte 0x00, 0x20, 0x02, 0xE0, 0xE0, 0x1D, 0x02, 0x02, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_802BE00
sub_802BE00: @ 0x0802BE00
	push {lr}
	ldr r1, _0802BE24
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _0802BE30
	ldr r0, _0802BE28
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802BE30
	ldr r0, _0802BE2C
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _0802BE30
	movs r0, #1
	b _0802BE32
	.align 2, 0
_0802BE24: .4byte 0x02021DE0
_0802BE28: .4byte gNotSure
_0802BE2C: .4byte gZones+0x28
_0802BE30:
	movs r0, #0
_0802BE32:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802BE38
sub_802BE38: @ 0x0802BE38
	push {lr}
	ldr r1, _0802BE5C
	ldrb r0, [r1, #2]
	cmp r0, #6
	bne _0802BE68
	ldr r0, _0802BE60
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802BE68
	ldr r0, _0802BE64
	bl NumEmptyZonesInRow
	cmp r0, #0
	ble _0802BE68
	movs r0, #1
	b _0802BE6A
	.align 2, 0
_0802BE5C: .4byte 0x02021DE0
_0802BE60: .4byte gNotSure
_0802BE64: .4byte gZones+0x28
_0802BE68:
	movs r0, #0
_0802BE6A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802BE70
sub_802BE70: @ 0x0802BE70
	push {lr}
	ldr r0, _0802BE8C
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _0802BE94
	ldr r0, _0802BE90
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802061C
	cmp r0, #0
	beq _0802BE94
	movs r0, #1
	b _0802BE96
	.align 2, 0
_0802BE8C: .4byte 0x02021DE0
_0802BE90: .4byte gNotSure
_0802BE94:
	movs r0, #0
_0802BE96:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802BE9C
sub_802BE9C: @ 0x0802BE9C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEA0
sub_802BEA0: @ 0x0802BEA0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEA4
sub_802BEA4: @ 0x0802BEA4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEA8
sub_802BEA8: @ 0x0802BEA8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEAC
sub_802BEAC: @ 0x0802BEAC
	push {lr}
	ldr r2, _0802BED0
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _0802BED8
	ldr r1, _0802BED4
	ldrb r0, [r2, #3]
	lsls r0, r0, #2
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_804069C
	cmp r0, #5
	bgt _0802BED8
	movs r0, #1
	b _0802BEDA
	.align 2, 0
_0802BED0: .4byte 0x02021DE0
_0802BED4: .4byte gZones
_0802BED8:
	movs r0, #0
_0802BEDA:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802BEE0
sub_802BEE0: @ 0x0802BEE0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEE4
sub_802BEE4: @ 0x0802BEE4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEE8
sub_802BEE8: @ 0x0802BEE8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEEC
sub_802BEEC: @ 0x0802BEEC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEF0
sub_802BEF0: @ 0x0802BEF0
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEF4
sub_802BEF4: @ 0x0802BEF4
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEF8
sub_802BEF8: @ 0x0802BEF8
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BEFC
sub_802BEFC: @ 0x0802BEFC
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF00
sub_802BF00: @ 0x0802BF00
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF04
sub_802BF04: @ 0x0802BF04
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF08
sub_802BF08: @ 0x0802BF08
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF0C
sub_802BF0C: @ 0x0802BF0C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF10
sub_802BF10: @ 0x0802BF10
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF14
sub_802BF14: @ 0x0802BF14
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF18
sub_802BF18: @ 0x0802BF18
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF1C
sub_802BF1C: @ 0x0802BF1C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF20
sub_802BF20: @ 0x0802BF20
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF24
sub_802BF24: @ 0x0802BF24
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF28
sub_802BF28: @ 0x0802BF28
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF2C
sub_802BF2C: @ 0x0802BF2C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF30
sub_802BF30: @ 0x0802BF30
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF34
sub_802BF34: @ 0x0802BF34
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF38
sub_802BF38: @ 0x0802BF38
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF3C
sub_802BF3C: @ 0x0802BF3C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF40
sub_802BF40: @ 0x0802BF40
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF44
sub_802BF44: @ 0x0802BF44
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF48
sub_802BF48: @ 0x0802BF48
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF4C
sub_802BF4C: @ 0x0802BF4C
	movs r0, #0
	bx lr

	THUMB_FUNC_START sub_802BF50
sub_802BF50: @ 0x0802BF50
	lsls r0, r0, #0x18
	ldr r1, _0802BF5C
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0802BF5C: .4byte 0x08E0CBC0
	.byte 0x00, 0x06, 0x02, 0x49, 0x80, 0x0D, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0xF0, 0xCB, 0xE0, 0x08



@split? card_shop.s?
	THUMB_FUNC_START sub_802BF70
sub_802BF70: @ 0x0802BF70
	push {r4, lr}
	bl sub_802C1D4
	bl sub_802DC0C
	ldr r2, _0802C004
	ldr r1, _0802C008
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C00C
	strh r4, [r1, #0x10]
	ldr r0, _0802C010
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802E1D8
	bl sub_802E868
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FE00
	bl sub_8030090
	bl sub_802F9E8
	bl sub_8030068
	ldr r0, _0802C014
	bl sub_80081DC
	bl sub_8008220
	bl sub_802FBF4
	ldr r0, _0802C018
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030760
	movs r4, #1
_0802BFE6:
	bl sub_802C0BC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x10
	beq _0802C05A
	cmp r1, #0x10
	bgt _0802C026
	cmp r1, #2
	beq _0802C086
	cmp r1, #2
	bgt _0802C01C
	cmp r1, #1
	beq _0802C072
	b _0802C0A6
	.align 2, 0
_0802C004: .4byte 0x02022450
_0802C008: .4byte 0x00000722
_0802C00C: .4byte 0x02021AF0
_0802C010: .4byte 0x02022120
_0802C014: .4byte 0x0803060D
_0802C018: .4byte 0x08030655
_0802C01C:
	cmp r1, #4
	beq _0802C09A
	cmp r1, #8
	beq _0802C094
	b _0802C0A6
_0802C026:
	cmp r1, #0x80
	beq _0802C04E
	cmp r1, #0x80
	bgt _0802C038
	cmp r1, #0x20
	beq _0802C054
	cmp r1, #0x40
	beq _0802C048
	b _0802C0A6
_0802C038:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802C060
	adds r0, #0x40
	cmp r1, r0
	beq _0802C066
	b _0802C0A6
_0802C048:
	bl sub_802C2A0
	b _0802C06A
_0802C04E:
	bl sub_802C318
	b _0802C06A
_0802C054:
	bl sub_802C390
	b _0802C06A
_0802C05A:
	bl sub_802C408
	b _0802C06A
_0802C060:
	bl sub_802C480
	b _0802C06A
_0802C066:
	bl sub_802C4F8
_0802C06A:
	movs r0, #0x36
	bl PlayMusic
	b _0802C0AA
_0802C072:
	bl sub_802C570
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C082
	bl sub_802D5D4
	b _0802C0AA
_0802C082:
	movs r0, #0x39
	b _0802C08A
_0802C086:
	movs r4, #0
	movs r0, #0x38
_0802C08A:
	bl PlayMusic
	bl sub_8008220
	b _0802C0AA
_0802C094:
	bl sub_803030C
	b _0802C0AA
_0802C09A:
	bl sub_802C14C
	movs r0, #0x37
	bl PlayMusic
	b _0802C0AA
_0802C0A6:
	bl sub_8008220
_0802C0AA:
	cmp r4, #0
	bne _0802BFE6
	bl sub_802DD98
	bl sub_802C1D4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802C0BC
sub_802C0BC: @ 0x0802C0BC
	push {r4, lr}
	ldr r2, _0802C144
	ldrh r4, [r2]
	movs r1, #0x20
	adds r0, r1, #0
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r3, r0, #0x1f
	ands r3, r1
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0802C0DC
	movs r3, #0x10
_0802C0DC:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802C0F4
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	movs r3, #0x40
	cmp r0, #0
	beq _0802C0F4
	movs r3, #0xa0
	lsls r3, r3, #1
_0802C0F4:
	ldrh r2, [r2]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0802C10E
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	movs r3, #0x80
	cmp r0, #0
	beq _0802C10E
	movs r3, #0xc0
	lsls r3, r3, #1
_0802C10E:
	ldr r0, _0802C148
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802C11C
	movs r3, #1
_0802C11C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802C126
	movs r3, #2
_0802C126:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802C130
	movs r3, #4
_0802C130:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802C13A
	movs r3, #8
_0802C13A:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802C144: .4byte g2020DF4
_0802C148: .4byte gUnk2020DFC

	THUMB_FUNC_START sub_802C14C
sub_802C14C: @ 0x0802C14C
	push {r4, r5, lr}
	bl sub_802DBA8
	bl sub_802DF1C
	bl sub_802DF88
	ldr r4, _0802C1BC
	ldr r1, _0802C1C0
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r5, [r0]
	ldr r1, _0802C1C4
	strh r5, [r1, #0x10]
	ldr r0, _0802C1C8
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	ldr r0, _0802C1CC
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_802FCF0
	adds r0, r5, #0
	bl sub_802FD48
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	ldr r0, _0802C1D0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C1BC: .4byte 0x02022450
_0802C1C0: .4byte 0x00000722
_0802C1C4: .4byte 0x02021AF0
_0802C1C8: .4byte 0x02022120
_0802C1CC: .4byte 0x00000725
_0802C1D0: .4byte 0x08030685

	THUMB_FUNC_START sub_802C1D4
sub_802C1D4: @ 0x0802C1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	ldr r1, _0802C290
	mov sl, r1
	movs r6, #0x1f
	movs r7, #0x1f
	movs r5, #0x20
	rsbs r5, r5, #0
	mov sb, r5
	ldr r1, _0802C294
	mov r8, r1
_0802C1F4:
	movs r4, #0
	adds r0, #1
	str r0, [sp]
_0802C1FA:
	lsls r0, r4, #1
	mov r5, sl
	adds r2, r0, r5
	ldrb r3, [r2]
	adds r0, r7, #0
	ands r0, r3
	cmp r0, #0
	beq _0802C21C
	ldr r1, [r2]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	subs r1, #1
	ands r1, r6
	mov r0, sb
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
_0802C21C:
	ldrh r3, [r2]
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0802C240
	ldr r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r7
	lsls r0, r0, #5
	ldr r5, _0802C298
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
_0802C240:
	ldrb r3, [r2, #1]
	movs r0, #0x7c
	ands r0, r3
	cmp r0, #0
	beq _0802C262
	ldr r0, [r2]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	subs r0, #1
	ands r0, r6
	lsls r0, r0, #2
	movs r5, #0x7d
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #1]
_0802C262:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _0802C1FA
	ldr r0, _0802C29C
	bl sub_80081DC
	bl sub_8008220
	ldr r1, [sp]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0802C1F4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C290: .4byte 0x02000000
_0802C294: .4byte 0x000001FF
_0802C298: .4byte 0xFFFFFC1F
_0802C29C: .4byte LoadPalettes

	THUMB_FUNC_START sub_802C2A0
sub_802C2A0: @ 0x0802C2A0
	push {r4, lr}
	bl sub_802DDD8
	ldr r2, _0802C304
	ldr r1, _0802C308
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C30C
	strh r4, [r1, #0x10]
	ldr r0, _0802C310
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C314
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	bl sub_802DE84
	bl sub_80307E4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C304: .4byte 0x02022450
_0802C308: .4byte 0x00000722
_0802C30C: .4byte 0x02021AF0
_0802C310: .4byte 0x02022120
_0802C314: .4byte 0x08030679

	THUMB_FUNC_START sub_802C318
sub_802C318: @ 0x0802C318
	push {r4, lr}
	bl sub_802DE1C
	ldr r2, _0802C37C
	ldr r1, _0802C380
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C384
	strh r4, [r1, #0x10]
	ldr r0, _0802C388
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C38C
	bl sub_80081DC
	bl sub_8008220
	movs r0, #4
	bl sub_802DE84
	bl sub_803083C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C37C: .4byte 0x02022450
_0802C380: .4byte 0x00000722
_0802C384: .4byte 0x02021AF0
_0802C388: .4byte 0x02022120
_0802C38C: .4byte 0x08030679

	THUMB_FUNC_START sub_802C390
sub_802C390: @ 0x0802C390
	push {r4, lr}
	bl sub_802DA1C
	ldr r2, _0802C3F4
	ldr r1, _0802C3F8
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C3FC
	strh r4, [r1, #0x10]
	ldr r0, _0802C400
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C404
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	bl sub_802DE84
	bl sub_80307E4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C3F4: .4byte 0x02022450
_0802C3F8: .4byte 0x00000722
_0802C3FC: .4byte 0x02021AF0
_0802C400: .4byte 0x02022120
_0802C404: .4byte 0x08030679

	THUMB_FUNC_START sub_802C408
sub_802C408: @ 0x0802C408
	push {r4, lr}
	bl sub_802DA8C
	ldr r2, _0802C46C
	ldr r1, _0802C470
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C474
	strh r4, [r1, #0x10]
	ldr r0, _0802C478
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C47C
	bl sub_80081DC
	bl sub_8008220
	movs r0, #4
	bl sub_802DE84
	bl sub_80307E4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C46C: .4byte 0x02022450
_0802C470: .4byte 0x00000722
_0802C474: .4byte 0x02021AF0
_0802C478: .4byte 0x02022120
_0802C47C: .4byte 0x08030679

	THUMB_FUNC_START sub_802C480
sub_802C480: @ 0x0802C480
	push {r4, lr}
	bl sub_802DE60
	bl sub_802DF1C
	bl sub_802DF88
	ldr r2, _0802C4E4
	ldr r1, _0802C4E8
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C4EC
	strh r4, [r1, #0x10]
	ldr r0, _0802C4F0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	ldr r0, _0802C4F4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C4E4: .4byte 0x02022450
_0802C4E8: .4byte 0x00000722
_0802C4EC: .4byte 0x02021AF0
_0802C4F0: .4byte 0x02022120
_0802C4F4: .4byte 0x08030685

	THUMB_FUNC_START sub_802C4F8
sub_802C4F8: @ 0x0802C4F8
	push {r4, lr}
	bl sub_802DE74
	bl sub_802DF1C
	bl sub_802DF88
	ldr r2, _0802C55C
	ldr r1, _0802C560
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C564
	strh r4, [r1, #0x10]
	ldr r0, _0802C568
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	ldr r0, _0802C56C
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C55C: .4byte 0x02022450
_0802C560: .4byte 0x00000722
_0802C564: .4byte 0x02021AF0
_0802C568: .4byte 0x02022120
_0802C56C: .4byte 0x08030685

	THUMB_FUNC_START sub_802C570
sub_802C570: @ 0x0802C570
	push {lr}
	ldr r2, _0802C5A4
	ldr r1, _0802C5A8
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802C5AC
	bl IsGodCard
	cmp r0, #1
	beq _0802C5AC
	movs r0, #0
	b _0802C5AE
	.align 2, 0
_0802C5A4: .4byte 0x02022450
_0802C5A8: .4byte 0x00000722
_0802C5AC:
	movs r0, #1
_0802C5AE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802C5B4
sub_802C5B4: @ 0x0802C5B4
	push {r4, lr}
	bl sub_802C1D4
	bl sub_802CFB4
	ldr r2, _0802C64C
	ldr r1, _0802C650
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C654
	strh r4, [r1, #0x10]
	ldr r0, _0802C658
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802E1D8
	bl sub_802E868
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FE00
	bl sub_8030090
	bl sub_802F9E8
	bl sub_8030068
	ldr r0, _0802C65C
	bl sub_80081DC
	bl sub_8008220
	bl sub_802FBF4
	ldr r0, _0802C660
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030760
	movs r4, #1
_0802C62A:
	bl sub_802C0BC
	adds r1, r0, #0
	cmp r1, #0x20
	beq _0802C6A0
	cmp r1, #0x20
	bgt _0802C66E
	cmp r1, #4
	beq _0802C6E0
	cmp r1, #4
	bgt _0802C664
	cmp r1, #1
	beq _0802C6B8
	cmp r1, #2
	beq _0802C6CC
	b _0802C6E6
	.align 2, 0
_0802C64C: .4byte 0x02022450
_0802C650: .4byte 0x00000722
_0802C654: .4byte 0x02021AF0
_0802C658: .4byte 0x02022120
_0802C65C: .4byte 0x0803060D
_0802C660: .4byte 0x08030655
_0802C664:
	cmp r1, #8
	beq _0802C6DA
	cmp r1, #0x10
	beq _0802C6A6
	b _0802C6E6
_0802C66E:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802C6AC
	cmp r1, r0
	bgt _0802C684
	cmp r1, #0x40
	beq _0802C694
	cmp r1, #0x80
	beq _0802C69A
	b _0802C6E6
_0802C684:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802C6B2
	adds r0, #0x80
	cmp r1, r0
	beq _0802C6D4
	b _0802C6E6
_0802C694:
	bl sub_802C788
	b _0802C6EA
_0802C69A:
	bl sub_802C804
	b _0802C6EA
_0802C6A0:
	bl sub_802C880
	b _0802C6EA
_0802C6A6:
	bl sub_802C8FC
	b _0802C6EA
_0802C6AC:
	bl sub_802C978
	b _0802C6EA
_0802C6B2:
	bl sub_802C9F8
	b _0802C6EA
_0802C6B8:
	bl sub_802CA78
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C6C8
	bl sub_802CABC
	b _0802C6EA
_0802C6C8:
	movs r0, #0x39
	b _0802C6D0
_0802C6CC:
	movs r4, #0
	movs r0, #0x38
_0802C6D0:
	bl PlayMusic
_0802C6D4:
	bl sub_8008220
	b _0802C6EA
_0802C6DA:
	bl sub_802D2D4
	b _0802C6EA
_0802C6E0:
	bl sub_802C6FC
	b _0802C6EA
_0802C6E6:
	bl sub_8008220
_0802C6EA:
	cmp r4, #0
	bne _0802C62A
	bl sub_802D294
	bl sub_802C1D4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802C6FC
sub_802C6FC: @ 0x0802C6FC
	push {r4, r5, lr}
	bl sub_802CF58
	bl sub_802DF1C
	bl sub_802D174
	ldr r4, _0802C770
	ldr r1, _0802C774
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r5, [r0]
	ldr r1, _0802C778
	strh r5, [r1, #0x10]
	ldr r0, _0802C77C
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	ldr r0, _0802C780
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_802FCF0
	adds r0, r5, #0
	bl sub_802FD84
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	movs r0, #0x37
	bl PlayMusic
	ldr r0, _0802C784
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C770: .4byte 0x02022450
_0802C774: .4byte 0x00000722
_0802C778: .4byte 0x02021AF0
_0802C77C: .4byte 0x02022120
_0802C780: .4byte 0x00000725
_0802C784: .4byte 0x08030685

	THUMB_FUNC_START sub_802C788
sub_802C788: @ 0x0802C788
	push {r4, lr}
	bl sub_802D0EC
	ldr r2, _0802C7F0
	ldr r1, _0802C7F4
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C7F8
	strh r4, [r1, #0x10]
	ldr r0, _0802C7FC
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C800
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	bl sub_802DE84
	bl sub_80307E4
	movs r0, #0x36
	bl PlayMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C7F0: .4byte 0x02022450
_0802C7F4: .4byte 0x00000722
_0802C7F8: .4byte 0x02021AF0
_0802C7FC: .4byte 0x02022120
_0802C800: .4byte 0x08030679

	THUMB_FUNC_START sub_802C804
sub_802C804: @ 0x0802C804
	push {r4, lr}
	bl sub_802D130
	ldr r2, _0802C86C
	ldr r1, _0802C870
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C874
	strh r4, [r1, #0x10]
	ldr r0, _0802C878
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C87C
	bl sub_80081DC
	bl sub_8008220
	movs r0, #4
	bl sub_802DE84
	bl sub_803083C
	movs r0, #0x36
	bl PlayMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C86C: .4byte 0x02022450
_0802C870: .4byte 0x00000722
_0802C874: .4byte 0x02021AF0
_0802C878: .4byte 0x02022120
_0802C87C: .4byte 0x08030679

	THUMB_FUNC_START sub_802C880
sub_802C880: @ 0x0802C880
	push {r4, lr}
	bl sub_802CE04
	ldr r2, _0802C8E8
	ldr r1, _0802C8EC
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C8F0
	strh r4, [r1, #0x10]
	ldr r0, _0802C8F4
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C8F8
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	bl sub_802DE84
	bl sub_80307E4
	movs r0, #0x36
	bl PlayMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C8E8: .4byte 0x02022450
_0802C8EC: .4byte 0x00000722
_0802C8F0: .4byte 0x02021AF0
_0802C8F4: .4byte 0x02022120
_0802C8F8: .4byte 0x08030679

	THUMB_FUNC_START sub_802C8FC
sub_802C8FC: @ 0x0802C8FC
	push {r4, lr}
	bl sub_802CE74
	ldr r2, _0802C964
	ldr r1, _0802C968
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C96C
	strh r4, [r1, #0x10]
	ldr r0, _0802C970
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FB08
	bl sub_80300F8
	bl sub_803028C
	ldr r0, _0802C974
	bl sub_80081DC
	bl sub_8008220
	movs r0, #4
	bl sub_802DE84
	bl sub_80307E4
	movs r0, #0x36
	bl PlayMusic
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C964: .4byte 0x02022450
_0802C968: .4byte 0x00000722
_0802C96C: .4byte 0x02021AF0
_0802C970: .4byte 0x02022120
_0802C974: .4byte 0x08030679

	THUMB_FUNC_START sub_802C978
sub_802C978: @ 0x0802C978
	push {r4, lr}
	bl sub_802DE60
	bl sub_802DF1C
	bl sub_802D174
	ldr r2, _0802C9E4
	ldr r1, _0802C9E8
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802C9EC
	strh r4, [r1, #0x10]
	ldr r0, _0802C9F0
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0802C9F4
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C9E4: .4byte 0x02022450
_0802C9E8: .4byte 0x00000722
_0802C9EC: .4byte 0x02021AF0
_0802C9F0: .4byte 0x02022120
_0802C9F4: .4byte 0x08030685

	THUMB_FUNC_START sub_802C9F8
sub_802C9F8: @ 0x0802C9F8
	push {r4, lr}
	bl sub_802DE74
	bl sub_802DF1C
	bl sub_802D174
	ldr r2, _0802CA64
	ldr r1, _0802CA68
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802CA6C
	strh r4, [r1, #0x10]
	ldr r0, _0802CA70
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	movs r0, #0x36
	bl PlayMusic
	ldr r0, _0802CA74
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA64: .4byte 0x02022450
_0802CA68: .4byte 0x00000722
_0802CA6C: .4byte 0x02021AF0
_0802CA70: .4byte 0x02022120
_0802CA74: .4byte 0x08030685

	THUMB_FUNC_START sub_802CA78
sub_802CA78: @ 0x0802CA78
	push {lr}
	ldr r2, _0802CAAC
	ldr r1, _0802CAB0
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802CAB4
	bl IsGodCard
	cmp r0, #1
	beq _0802CAB4
	movs r0, #0
	b _0802CAB6
	.align 2, 0
_0802CAAC: .4byte 0x02022450
_0802CAB0: .4byte 0x00000722
_0802CAB4:
	movs r0, #1
_0802CAB6:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802CABC
sub_802CABC: @ 0x0802CABC
	push {r4, lr}
	bl sub_802E080
	bl sub_802FC14
	bl sub_802FC50
	bl sub_803015C
	bl sub_80301A8
	bl sub_8030934
	ldr r0, _0802CAFC
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl PlayMusic
	movs r4, #1
_0802CAE8:
	bl sub_802C0BC
	cmp r0, #2
	beq _0802CB58
	cmp r0, #2
	bgt _0802CB00
	cmp r0, #1
	beq _0802CB16
	b _0802CB60
	.align 2, 0
_0802CAFC: .4byte 0x08030691
_0802CB00:
	cmp r0, #0x40
	beq _0802CB0A
	cmp r0, #0x80
	beq _0802CB10
	b _0802CB60
_0802CB0A:
	bl sub_802CD7C
	b _0802CB64
_0802CB10:
	bl sub_802CDA4
	b _0802CB64
_0802CB16:
	bl sub_802CDCC
	ldr r3, _0802CB4C
	ldr r1, _0802CB50
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802CB28
	movs r4, #0
_0802CB28:
	ldr r1, _0802CB54
	adds r0, r3, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r3, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802CB64
	b _0802CB68
	.align 2, 0
_0802CB4C: .4byte 0x02022450
_0802CB50: .4byte 0x00000726
_0802CB54: .4byte 0x00000722
_0802CB58:
	movs r0, #0x38
	bl PlayMusic
	b _0802CB68
_0802CB60:
	bl sub_8008220
_0802CB64:
	cmp r4, #0
	bne _0802CAE8
_0802CB68:
	bl sub_802FBF4
	bl sub_802EA74
	ldr r2, _0802CBAC
	ldr r1, _0802CBB0
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802FD84
	bl sub_802FC6C
	bl sub_80300F8
	ldr r0, _0802CBB4
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CBAC: .4byte 0x02022450
_0802CBB0: .4byte 0x00000722
_0802CBB4: .4byte 0x080306C1

	THUMB_FUNC_START sub_802CBB8
sub_802CBB8: @ 0x0802CBB8
	push {r4, r5, r6, lr}
	ldr r2, _0802CC0C
	ldr r1, _0802CC10
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r6, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_802D274
	cmp r0, #1
	bne _0802CC18
	ldr r0, _0802CC14
	ldr r4, [r0, #8]
	ldr r5, [r0, #0xc]
	adds r0, r6, #0
	movs r1, #1
	bl sub_802D210
	adds r1, r5, #0
	adds r0, r4, #0
	bl AddMoney
	adds r0, r6, #0
	movs r1, #1
	bl sub_802E114
	movs r0, #0x37
	bl PlayMusic
	b _0802CC4A
	.align 2, 0
_0802CC0C: .4byte 0x02022450
_0802CC10: .4byte 0x00000722
_0802CC14: .4byte 0x02021AF0
_0802CC18:
	movs r0, #0x39
	bl PlayMusic
	bl sub_802E270
	ldr r2, _0802CCB4
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802CC40
	adds r4, r2, #0
	movs r5, #3
_0802CC32:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0802CC32
_0802CC40:
	movs r0, #0x38
	bl PlayMusic
	bl sub_802FC88
_0802CC4A:
	ldr r1, _0802CCB8
	strh r6, [r1, #0x10]
	ldr r0, _0802CCBC
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802D174
	ldr r4, _0802CCC0
	ldr r0, _0802CCC4
	adds r5, r4, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802CEE0
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802FE84
	bl sub_802EA74
	ldr r1, _0802CCC8
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802FD84
	ldr r0, _0802CCCC
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802DE84
	bl sub_803096C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802CCB4: .4byte gUnk2020DFC
_0802CCB8: .4byte 0x02021AF0
_0802CCBC: .4byte 0x02022120
_0802CCC0: .4byte 0x02022450
_0802CCC4: .4byte 0x00000723
_0802CCC8: .4byte 0x00000722
_0802CCCC: .4byte 0x08030691

	THUMB_FUNC_START sub_802CCD0
sub_802CCD0: @ 0x0802CCD0
	push {r4, lr}
	ldr r2, _0802CD64
	ldr r1, _0802CD68
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardInfo
	movs r0, #0x37
	bl PlayMusic
	bl sub_801F6B0
	ldr r1, _0802CD6C
	strh r4, [r1, #0x10]
	ldr r0, _0802CD70
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802FC14
	bl sub_802E1D8
	bl sub_802E868
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FE00
	bl sub_8030090
	bl sub_802F9E8
	bl sub_8030068
	bl sub_802FB08
	bl sub_802FC50
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802CD74
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0802CD78
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030784
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CD64: .4byte 0x02022450
_0802CD68: .4byte 0x00000722
_0802CD6C: .4byte 0x02021AF0
_0802CD70: .4byte 0x02022120
_0802CD74: .4byte 0x0803060D
_0802CD78: .4byte 0x08030661

	THUMB_FUNC_START sub_802CD7C
sub_802CD7C: @ 0x0802CD7C
	push {lr}
	bl sub_802E040
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802CDA0
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x36
	bl PlayMusic
	pop {r0}
	bx r0
	.align 2, 0
_0802CDA0: .4byte 0x08030691

	THUMB_FUNC_START sub_802CDA4
sub_802CDA4: @ 0x0802CDA4
	push {lr}
	bl sub_802E060
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802CDC8
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x36
	bl PlayMusic
	pop {r0}
	bx r0
	.align 2, 0
_0802CDC8: .4byte 0x08030691

	THUMB_FUNC_START sub_802CDCC
sub_802CDCC: @ 0x0802CDCC
	push {lr}
	ldr r0, _0802CDEC
	ldr r1, _0802CDF0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CDF4
	cmp r0, #1
	beq _0802CDFA
	movs r0, #0x37
	bl PlayMusic
	bl sub_8008220
	b _0802CDFE
	.align 2, 0
_0802CDEC: .4byte 0x02022450
_0802CDF0: .4byte 0x00000726
_0802CDF4:
	bl sub_802CBB8
	b _0802CDFE
_0802CDFA:
	bl sub_802CCD0
_0802CDFE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802CE04
sub_802CE04: @ 0x0802CE04
	push {lr}
	ldr r3, _0802CE1C
	ldr r0, _0802CE20
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0802CE24
	subs r0, r2, #1
	strb r0, [r1]
	b _0802CE66
	.align 2, 0
_0802CE1C: .4byte 0x02022450
_0802CE20: .4byte 0x00000722
_0802CE24:
	ldr r0, _0802CE38
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	ble _0802CE3C
	subs r0, r2, #1
	strb r0, [r1]
	b _0802CE5C
	.align 2, 0
_0802CE38: .4byte 0x00000723
_0802CE3C:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_802DEAC
	bl sub_802DFA4
	bl sub_802DF1C
	movs r0, #0
	bl sub_802CEE0
	movs r0, #0
	bl sub_802FE84
	bl sub_8030068
_0802CE5C:
	ldr r0, _0802CE6C
	ldr r1, _0802CE70
	adds r0, r0, r1
	movs r1, #6
	strb r1, [r0]
_0802CE66:
	pop {r0}
	bx r0
	.align 2, 0
_0802CE6C: .4byte 0x02022450
_0802CE70: .4byte 0x00000722

	THUMB_FUNC_START sub_802CE74
sub_802CE74: @ 0x0802CE74
	push {lr}
	ldr r3, _0802CE8C
	ldr r0, _0802CE90
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bgt _0802CE94
	adds r0, r2, #1
	strb r0, [r1]
	b _0802CED4
	.align 2, 0
_0802CE8C: .4byte 0x02022450
_0802CE90: .4byte 0x00000722
_0802CE94:
	ldr r0, _0802CEA8
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bgt _0802CEAC
	adds r0, r2, #1
	strb r0, [r1]
	b _0802CECA
	.align 2, 0
_0802CEA8: .4byte 0x00000723
_0802CEAC:
	movs r0, #1
	bl sub_802DEAC
	bl sub_802DFC4
	bl sub_802DF1C
	movs r0, #4
	bl sub_802CEE0
	movs r0, #4
	bl sub_802FE84
	bl sub_8030068
_0802CECA:
	ldr r0, _0802CED8
	ldr r1, _0802CEDC
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0802CED4:
	pop {r0}
	bx r0
	.align 2, 0
_0802CED8: .4byte 0x02022450
_0802CEDC: .4byte 0x00000722

	THUMB_FUNC_START sub_802CEE0
sub_802CEE0: @ 0x0802CEE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0802CF30
	ldr r1, _0802CF34
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r0, r4
	bl sub_802DED4
	movs r3, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r6, r1, r0
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r4, r0, #2
_0802CF08:
	adds r0, r6, r3
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xd2
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _0802CF3C
	ldr r0, _0802CF38
	adds r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _0802CF3C
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r0, [r0]
	strh r2, [r0]
	b _0802CF46
	.align 2, 0
_0802CF30: .4byte 0x02022450
_0802CF34: .4byte 0x0000071E
_0802CF38: .4byte 0x02022B80
_0802CF3C:
	lsls r0, r3, #2
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r0, [r0]
	strh r1, [r0]
_0802CF46:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _0802CF08
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802CF58
sub_802CF58: @ 0x0802CF58
	push {r4, lr}
	ldr r4, _0802CFA0
	ldr r0, _0802CFA4
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0802CF72
	movs r0, #0
	strb r0, [r1]
_0802CF72:
	ldrb r1, [r1]
	ldr r2, _0802CFA8
	adds r0, r4, #0
	adds r0, #0xd4
	str r0, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r2, #8]
	ldr r0, _0802CFAC
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	bl sub_802DFE4
	ldr r0, _0802CFB0
	adds r1, r4, r0
	movs r0, #0x72
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CFA0: .4byte 0x02022450
_0802CFA4: .4byte 0x00000725
_0802CFA8: .4byte gUnk2022EB0
_0802CFAC: .4byte 0x080C9D84
_0802CFB0: .4byte 0x0000071E

	THUMB_FUNC_START sub_802CFB4
sub_802CFB4: @ 0x0802CFB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r2, #0
	ldr r4, _0802D0B4
	ldr r0, _0802D0B8
	mov r8, r0
	movs r1, #0xd4
	adds r1, r1, r4
	mov sb, r1
	ldr r0, _0802D0BC
	mov sl, r0
	adds r5, r4, #0
	adds r5, #0xd2
	movs r3, #0
	ldr r1, _0802D0C0
_0802CFD8:
	lsls r0, r2, #1
	adds r0, r0, r5
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	bls _0802CFD8
	movs r2, #0
	ldr r1, _0802D0C4
	mov ip, r1
	ldr r7, _0802D0C8
	ldr r6, _0802D0CC
	movs r5, #0xc8
	lsls r5, r5, #2
	ldr r3, _0802D0D0
_0802CFF8:
	mov r0, ip
	adds r1, r2, r0
	adds r0, r2, r7
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r2, r6
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0802CFF8
	ldr r1, _0802D0D4
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0802D0D8
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0x72
	strh r0, [r1]
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0x73
	strh r0, [r1]
	ldr r0, _0802D0DC
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0802D0E0
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0802D0E4
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd2
	strh r3, [r0]
	movs r2, #1
	adds r1, r0, #0
	movs r3, #0xc8
	lsls r3, r3, #2
_0802D05A:
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _0802D05A
	mov r1, sb
	mov r0, r8
	str r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	mov r1, r8
	strh r0, [r1, #8]
	mov r1, sl
	ldrb r0, [r1]
	mov r1, r8
	strb r0, [r1, #0xa]
	bl sub_8034A38
	bl sub_802DFE4
	ldr r1, _0802D0E8
	add r1, sb
	movs r0, #0x72
	strh r0, [r1]
	bl sub_802DF1C
	movs r4, #0
_0802D096:
	adds r0, r4, #0
	bl sub_802CEE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802D096
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D0B4: .4byte 0x02022450
_0802D0B8: .4byte gUnk2022EB0
_0802D0BC: .4byte 0x080C9D84
_0802D0C0: .4byte 0x00000325
_0802D0C4: .4byte 0x02022120
_0802D0C8: .4byte 0x02021DF0
_0802D0CC: .4byte 0x02022B80
_0802D0D0: .4byte gTrunkCardQty
_0802D0D4: .4byte 0x00000726
_0802D0D8: .4byte 0x0000071E
_0802D0DC: .4byte 0x00000724
_0802D0E0: .4byte 0x00000725
_0802D0E4: .4byte 0x00000723
_0802D0E8: .4byte 0x0000064A

	THUMB_FUNC_START sub_802D0EC
sub_802D0EC: @ 0x0802D0EC
	push {lr}
	ldr r0, _0802D104
	ldr r2, _0802D108
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	ble _0802D10C
	subs r0, r2, #1
	strb r0, [r1]
	b _0802D12C
	.align 2, 0
_0802D104: .4byte 0x02022450
_0802D108: .4byte 0x00000723
_0802D10C:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_802DEAC
	bl sub_802DFA4
	bl sub_802DF1C
	movs r0, #0
	bl sub_802CEE0
	movs r0, #0
	bl sub_802FE84
	bl sub_8030068
_0802D12C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802D130
sub_802D130: @ 0x0802D130
	push {lr}
	ldr r0, _0802D148
	ldr r2, _0802D14C
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bgt _0802D150
	adds r0, r2, #1
	strb r0, [r1]
	b _0802D16E
	.align 2, 0
_0802D148: .4byte 0x02022450
_0802D14C: .4byte 0x00000723
_0802D150:
	movs r0, #1
	bl sub_802DEAC
	bl sub_802DFC4
	bl sub_802DF1C
	movs r0, #4
	bl sub_802CEE0
	movs r0, #4
	bl sub_802FE84
	bl sub_8030068
_0802D16E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802D174
sub_802D174: @ 0x0802D174
	push {r4, lr}
	movs r4, #0
_0802D178:
	adds r0, r4, #0
	bl sub_802CEE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802D178
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802D190
sub_802D190: @ 0x0802D190
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0802D1C0
	ldr r4, _0802D1C4
	str r4, [r2]
	movs r1, #0xc8
	lsls r1, r1, #2
	strh r1, [r2, #8]
	ldr r1, _0802D1C8
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	bl sub_802DFE4
	ldr r0, _0802D1CC
	adds r4, r4, r0
	movs r0, #0x72
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D1C0: .4byte gUnk2022EB0
_0802D1C4: .4byte 0x02022524
_0802D1C8: .4byte 0x080C9D84
_0802D1CC: .4byte 0x0000064A

	THUMB_FUNC_START sub_802D1D0
sub_802D1D0: @ 0x0802D1D0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	cmp r4, #0
	beq _0802D206
	adds r0, r4, #0
	bl sub_802D250
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D1FC
	ldr r0, _0802D1F8
	adds r0, r4, r0
	movs r1, #0xfa
	strb r1, [r0]
	b _0802D206
	.align 2, 0
_0802D1F8: .4byte 0x02022B80
_0802D1FC:
	ldr r1, _0802D20C
	adds r1, r6, r1
	ldrb r0, [r1]
	adds r0, r5, r0
	strb r0, [r1]
_0802D206:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D20C: .4byte 0x02022B80

	THUMB_FUNC_START sub_802D210
sub_802D210: @ 0x0802D210
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	cmp r4, #0
	beq _0802D246
	adds r0, r4, #0
	bl sub_802D274
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802D23C
	ldr r0, _0802D238
	adds r0, r4, r0
	strb r1, [r0]
	b _0802D246
	.align 2, 0
_0802D238: .4byte 0x02022B80
_0802D23C:
	ldr r1, _0802D24C
	adds r1, r6, r1
	ldrb r0, [r1]
	subs r0, r0, r5
	strb r0, [r1]
_0802D246:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D24C: .4byte 0x02022B80

	THUMB_FUNC_START sub_802D250
sub_802D250: @ 0x0802D250
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802D26C
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r2
	cmp r1, r0
	bgt _0802D270
	movs r0, #1
	b _0802D272
	.align 2, 0
_0802D26C: .4byte 0x02022B80
_0802D270:
	movs r0, #0
_0802D272:
	bx lr

	THUMB_FUNC_START sub_802D274
sub_802D274: @ 0x0802D274
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802D28C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhi _0802D290
	movs r0, #1
	b _0802D292
	.align 2, 0
_0802D28C: .4byte 0x02022B80
_0802D290:
	movs r0, #0
_0802D292:
	bx lr

	THUMB_FUNC_START sub_802D294
sub_802D294: @ 0x0802D294
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _0802D2C4
	ldr r6, _0802D2C8
	ldr r5, _0802D2CC
	movs r4, #0xc8
	lsls r4, r4, #2
	ldr r3, _0802D2D0
_0802D2A4:
	adds r1, r2, r7
	adds r0, r2, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _0802D2A4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D2C4: .4byte 0x02021DF0
_0802D2C8: .4byte 0x02022120
_0802D2CC: .4byte gTrunkCardQty
_0802D2D0: .4byte 0x02022B80

	THUMB_FUNC_START sub_802D2D4
sub_802D2D4: @ 0x0802D2D4
	push {r4, lr}
	ldr r0, _0802D324
	ldr r2, _0802D328
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r3, _0802D32C
	adds r0, r0, r3
	strb r1, [r0]
	bl sub_802FC14
	bl sub_80302F0
	bl sub_80301F4
	bl sub_8030240
	bl sub_80309D8
	ldr r0, _0802D330
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl PlayMusic
	movs r4, #1
_0802D30A:
	bl sub_802C0BC
	cmp r0, #0x10
	beq _0802D360
	cmp r0, #0x10
	bgt _0802D33A
	cmp r0, #2
	beq _0802D39C
	cmp r0, #2
	bgt _0802D334
	cmp r0, #1
	beq _0802D36C
	b _0802D3A8
	.align 2, 0
_0802D324: .4byte 0x02022450
_0802D328: .4byte 0x00000725
_0802D32C: .4byte 0x00000726
_0802D330: .4byte 0x080306E1
_0802D334:
	cmp r0, #8
	beq _0802D39C
	b _0802D3A8
_0802D33A:
	cmp r0, #0x40
	beq _0802D34E
	cmp r0, #0x40
	bgt _0802D348
	cmp r0, #0x20
	beq _0802D35A
	b _0802D3A8
_0802D348:
	cmp r0, #0x80
	beq _0802D354
	b _0802D3A8
_0802D34E:
	bl sub_802D45C
	b _0802D364
_0802D354:
	bl sub_802D4AC
	b _0802D364
_0802D35A:
	bl sub_802D4FC
	b _0802D364
_0802D360:
	bl sub_802D54C
_0802D364:
	movs r0, #0x36
	bl PlayMusic
	b _0802D3AC
_0802D36C:
	ldr r2, _0802D384
	ldr r1, _0802D388
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #0xa
	bne _0802D38C
	bl sub_802D59C
	movs r0, #0x37
	bl PlayMusic
	b _0802D3B0
	.align 2, 0
_0802D384: .4byte 0x02022450
_0802D388: .4byte 0x00000726
_0802D38C:
	ldr r3, _0802D398
	adds r0, r2, r3
	strb r1, [r0]
	bl sub_802D3B8
	b _0802D3B0
	.align 2, 0
_0802D398: .4byte 0x00000725
_0802D39C:
	bl sub_802D59C
	movs r0, #0x38
	bl PlayMusic
	b _0802D3B0
_0802D3A8:
	bl sub_8008220
_0802D3AC:
	cmp r4, #0
	bne _0802D30A
_0802D3B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802D3B8
sub_802D3B8: @ 0x0802D3B8
	push {r4, r5, lr}
	ldr r4, _0802D444
	ldr r1, _0802D448
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r1, #1
	adds r5, r4, r1
	strb r0, [r5]
	ldrb r0, [r5]
	bl sub_802D190
	bl sub_802DF1C
	bl sub_802D174
	ldr r1, _0802D44C
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _0802D450
	strh r4, [r1, #0x10]
	ldr r0, _0802D454
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	movs r0, #0x37
	bl PlayMusic
	bl sub_802FBF4
	ldrb r0, [r5]
	bl sub_802FCF0
	adds r0, r4, #0
	bl sub_802FD84
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	bl sub_80300F8
	bl sub_802FC6C
	ldr r0, _0802D458
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D444: .4byte 0x02022450
_0802D448: .4byte 0x00000726
_0802D44C: .4byte 0x00000722
_0802D450: .4byte 0x02021AF0
_0802D454: .4byte 0x02022120
_0802D458: .4byte 0x0803071D

	THUMB_FUNC_START sub_802D45C
sub_802D45C: @ 0x0802D45C
	push {lr}
	bl sub_802E094
	ldr r2, _0802D47C
	ldr r0, _0802D480
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802D488
	ldr r1, _0802D484
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _0802D48E
	.align 2, 0
_0802D47C: .4byte 0x02022450
_0802D480: .4byte 0x00000726
_0802D484: .4byte 0x00000725
_0802D488:
	ldrb r0, [r1]
	bl sub_802FCF0
_0802D48E:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _0802D4A8
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_0802D4A8: .4byte 0x08030711

	THUMB_FUNC_START sub_802D4AC
sub_802D4AC: @ 0x0802D4AC
	push {lr}
	bl sub_802E0B4
	ldr r2, _0802D4CC
	ldr r0, _0802D4D0
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802D4D8
	ldr r1, _0802D4D4
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _0802D4DE
	.align 2, 0
_0802D4CC: .4byte 0x02022450
_0802D4D0: .4byte 0x00000726
_0802D4D4: .4byte 0x00000725
_0802D4D8:
	ldrb r0, [r1]
	bl sub_802FCF0
_0802D4DE:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _0802D4F8
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F8: .4byte 0x08030711

	THUMB_FUNC_START sub_802D4FC
sub_802D4FC: @ 0x0802D4FC
	push {lr}
	bl sub_802E0D4
	ldr r2, _0802D51C
	ldr r0, _0802D520
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802D528
	ldr r1, _0802D524
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _0802D52E
	.align 2, 0
_0802D51C: .4byte 0x02022450
_0802D520: .4byte 0x00000726
_0802D524: .4byte 0x00000725
_0802D528:
	ldrb r0, [r1]
	bl sub_802FCF0
_0802D52E:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _0802D548
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_0802D548: .4byte 0x08030711

	THUMB_FUNC_START sub_802D54C
sub_802D54C: @ 0x0802D54C
	push {lr}
	bl sub_802E0F4
	ldr r2, _0802D56C
	ldr r0, _0802D570
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802D578
	ldr r1, _0802D574
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _0802D57E
	.align 2, 0
_0802D56C: .4byte 0x02022450
_0802D570: .4byte 0x00000726
_0802D574: .4byte 0x00000725
_0802D578:
	ldrb r0, [r1]
	bl sub_802FCF0
_0802D57E:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _0802D598
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_0802D598: .4byte 0x08030711

	THUMB_FUNC_START sub_802D59C
sub_802D59C: @ 0x0802D59C
	push {lr}
	ldr r0, _0802D5C8
	ldr r1, _0802D5CC
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	bl sub_80300F8
	bl sub_802FBF4
	bl sub_802FC6C
	ldr r0, _0802D5D0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030AF8
	pop {r0}
	bx r0
	.align 2, 0
_0802D5C8: .4byte 0x02022450
_0802D5CC: .4byte 0x00000725
_0802D5D0: .4byte 0x0803073D

	THUMB_FUNC_START sub_802D5D4
sub_802D5D4: @ 0x0802D5D4
	push {r4, lr}
	bl sub_802E080
	bl sub_802FC14
	bl sub_802FC34
	bl sub_803015C
	bl sub_80301A8
	bl sub_8030934
	ldr r0, _0802D614
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl PlayMusic
	movs r4, #1
_0802D600:
	bl sub_802C0BC
	cmp r0, #2
	beq _0802D670
	cmp r0, #2
	bgt _0802D618
	cmp r0, #1
	beq _0802D62E
	b _0802D678
	.align 2, 0
_0802D614: .4byte 0x08030691
_0802D618:
	cmp r0, #0x40
	beq _0802D622
	cmp r0, #0x80
	beq _0802D628
	b _0802D678
_0802D622:
	bl sub_802D884
	b _0802D67C
_0802D628:
	bl sub_802D8AC
	b _0802D67C
_0802D62E:
	bl sub_802D8D4
	ldr r3, _0802D664
	ldr r1, _0802D668
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802D640
	movs r4, #0
_0802D640:
	ldr r1, _0802D66C
	adds r0, r3, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r3, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802D67C
	b _0802D680
	.align 2, 0
_0802D664: .4byte 0x02022450
_0802D668: .4byte 0x00000726
_0802D66C: .4byte 0x00000722
_0802D670:
	movs r0, #0x38
	bl PlayMusic
	b _0802D680
_0802D678:
	bl sub_8008220
_0802D67C:
	cmp r4, #0
	bne _0802D600
_0802D680:
	bl sub_802FBF4
	bl sub_802EA74
	ldr r2, _0802D6C4
	ldr r1, _0802D6C8
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802FD48
	bl sub_802FC6C
	bl sub_80300F8
	ldr r0, _0802D6CC
	bl sub_80081DC
	bl sub_8008220
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D6C4: .4byte 0x02022450
_0802D6C8: .4byte 0x00000722
_0802D6CC: .4byte 0x080306C1

	THUMB_FUNC_START sub_802D6D0
sub_802D6D0: @ 0x0802D6D0
	push {r4, r5, r6, lr}
	ldr r2, _0802D73C
	ldr r1, _0802D740
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r6, [r0]
	adds r0, r6, #0
	movs r1, #1
	bl sub_802E1B8
	cmp r0, #1
	bne _0802D750
	adds r0, r6, #0
	movs r1, #1
	bl sub_802D250
	cmp r0, #1
	bne _0802D748
	ldr r0, _0802D744
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_8027018
	cmp r0, #1
	bne _0802D748
	adds r0, r6, #0
	movs r1, #1
	bl sub_802E154
	adds r1, r5, #0
	adds r0, r4, #0
	bl RemoveMoney
	adds r0, r6, #0
	movs r1, #1
	bl sub_802D1D0
	movs r0, #0x37
	bl PlayMusic
	b _0802D756
	.align 2, 0
_0802D73C: .4byte 0x02022450
_0802D740: .4byte 0x00000722
_0802D744: .4byte 0x02021AF0
_0802D748:
	movs r0, #0x39
	bl PlayMusic
	b _0802D756
_0802D750:
	movs r0, #0x39
	bl PlayMusic
_0802D756:
	ldr r1, _0802D7C0
	strh r6, [r1, #0x10]
	ldr r0, _0802D7C4
	adds r0, r6, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802DF88
	ldr r4, _0802D7C8
	ldr r0, _0802D7CC
	adds r5, r4, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802DAF8
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802FE84
	bl sub_802EA74
	ldr r1, _0802D7D0
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0]
	bl sub_802FD48
	ldr r0, _0802D7D4
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_802DE84
	bl sub_803096C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D7C0: .4byte 0x02021AF0
_0802D7C4: .4byte 0x02022120
_0802D7C8: .4byte 0x02022450
_0802D7CC: .4byte 0x00000723
_0802D7D0: .4byte 0x00000722
_0802D7D4: .4byte 0x08030691

	THUMB_FUNC_START sub_802D7D8
sub_802D7D8: @ 0x0802D7D8
	push {r4, lr}
	ldr r2, _0802D86C
	ldr r1, _0802D870
	adds r0, r2, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, #1
	adds r0, r2, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0]
	adds r0, r4, #0
	bl SetCardInfo
	movs r0, #0x37
	bl PlayMusic
	bl sub_801F6B0
	ldr r1, _0802D874
	strh r4, [r1, #0x10]
	ldr r0, _0802D878
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	bl sub_802FC14
	bl sub_802E1D8
	bl sub_802E868
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FE00
	bl sub_8030090
	bl sub_802F9E8
	bl sub_8030068
	bl sub_802FB08
	bl sub_802FC34
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802D87C
	bl sub_80081DC
	bl sub_8008220
	ldr r0, _0802D880
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030784
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D86C: .4byte 0x02022450
_0802D870: .4byte 0x00000722
_0802D874: .4byte 0x02021AF0
_0802D878: .4byte 0x02022120
_0802D87C: .4byte 0x0803060D
_0802D880: .4byte 0x08030661

	THUMB_FUNC_START sub_802D884
sub_802D884: @ 0x0802D884
	push {lr}
	bl sub_802E040
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802D8A8
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x36
	bl PlayMusic
	pop {r0}
	bx r0
	.align 2, 0
_0802D8A8: .4byte 0x08030691

	THUMB_FUNC_START sub_802D8AC
sub_802D8AC: @ 0x0802D8AC
	push {lr}
	bl sub_802E060
	bl sub_803015C
	bl sub_80301A8
	ldr r0, _0802D8D0
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x36
	bl PlayMusic
	pop {r0}
	bx r0
	.align 2, 0
_0802D8D0: .4byte 0x08030691

	THUMB_FUNC_START sub_802D8D4
sub_802D8D4: @ 0x0802D8D4
	push {lr}
	ldr r0, _0802D8F4
	ldr r1, _0802D8F8
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D8FC
	cmp r0, #1
	beq _0802D902
	movs r0, #0x37
	bl PlayMusic
	bl sub_8008220
	b _0802D906
	.align 2, 0
_0802D8F4: .4byte 0x02022450
_0802D8F8: .4byte 0x00000726
_0802D8FC:
	bl sub_802D6D0
	b _0802D906
_0802D902:
	bl sub_802D7D8
_0802D906:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802D90C
sub_802D90C: @ 0x0802D90C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	subs r0, r4, #1
	lsls r0, r0, #0x10
	ldr r1, _0802D940
	cmp r0, r1
	bhi _0802D950
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802D9AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802D948
	ldr r1, _0802D944
	adds r1, r4, r1
	ldrb r0, [r1]
	adds r0, r5, r0
	strb r0, [r1]
	b _0802D950
	.align 2, 0
_0802D940: .4byte 0x031F0000
_0802D944: .4byte 0x02021DF0
_0802D948:
	ldr r0, _0802D958
	adds r0, r6, r0
	movs r1, #0xfa
	strb r1, [r0]
_0802D950:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D958: .4byte 0x02021DF0
	.byte 0x70, 0xB5, 0x00, 0x04
	.byte 0x04, 0x0C, 0x26, 0x1C, 0x09, 0x06, 0x0D, 0x0E, 0x60, 0x1E, 0x00, 0x04, 0x08, 0x49, 0x88, 0x42
	.byte 0x16, 0xD8, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0xF0, 0x2B, 0xF8, 0x00, 0x06, 0x00, 0x0E, 0x01, 0x28
	.byte 0x0A, 0xD1, 0x04, 0x49, 0x61, 0x18, 0x08, 0x78, 0x40, 0x1B, 0x08, 0x70, 0x08, 0xE0, 0x00, 0x00
	.byte 0x00, 0x00, 0x1F, 0x03, 0xF0, 0x1D, 0x02, 0x02, 0x03, 0x48, 0x30, 0x18, 0x00, 0x21, 0x01, 0x70
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xF0, 0x1D, 0x02, 0x02

	THUMB_FUNC_START sub_802D9AC
sub_802D9AC: @ 0x0802D9AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802D9C8
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r2
	cmp r1, r0
	bgt _0802D9CC
	movs r0, #1
	b _0802D9CE
	.align 2, 0
_0802D9C8: .4byte 0x02021DF0
_0802D9CC:
	movs r0, #0
_0802D9CE:
	bx lr

	THUMB_FUNC_START sub_802D9D0
sub_802D9D0: @ 0x0802D9D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802D9E8
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhi _0802D9EC
	movs r0, #1
	b _0802D9EE
	.align 2, 0
_0802D9E8: .4byte 0x02021DF0
_0802D9EC:
	movs r0, #0
_0802D9EE:
	bx lr

	THUMB_FUNC_START sub_802D9F0
sub_802D9F0: @ 0x0802D9F0
	push {r4, r5, lr}
	movs r2, #0
	ldr r5, _0802DA14
	ldr r4, _0802DA18
	movs r3, #0xc8
	lsls r3, r3, #2
_0802D9FC:
	adds r1, r2, r5
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _0802D9FC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA14: .4byte 0x02021DF0
_0802DA18: .4byte 0x080C9D90

	THUMB_FUNC_START sub_802DA1C
sub_802DA1C: @ 0x0802DA1C
	push {lr}
	ldr r3, _0802DA34
	ldr r0, _0802DA38
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0802DA3C
	subs r0, r2, #1
	strb r0, [r1]
	b _0802DA7E
	.align 2, 0
_0802DA34: .4byte 0x02022450
_0802DA38: .4byte 0x00000722
_0802DA3C:
	ldr r0, _0802DA50
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	ble _0802DA54
	subs r0, r2, #1
	strb r0, [r1]
	b _0802DA74
	.align 2, 0
_0802DA50: .4byte 0x00000723
_0802DA54:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_802DEAC
	bl sub_802DFA4
	bl sub_802DF1C
	movs r0, #0
	bl sub_802DAF8
	movs r0, #0
	bl sub_802FE84
	bl sub_8030068
_0802DA74:
	ldr r0, _0802DA84
	ldr r1, _0802DA88
	adds r0, r0, r1
	movs r1, #6
	strb r1, [r0]
_0802DA7E:
	pop {r0}
	bx r0
	.align 2, 0
_0802DA84: .4byte 0x02022450
_0802DA88: .4byte 0x00000722

	THUMB_FUNC_START sub_802DA8C
sub_802DA8C: @ 0x0802DA8C
	push {lr}
	ldr r3, _0802DAA4
	ldr r0, _0802DAA8
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bgt _0802DAAC
	adds r0, r2, #1
	strb r0, [r1]
	b _0802DAEC
	.align 2, 0
_0802DAA4: .4byte 0x02022450
_0802DAA8: .4byte 0x00000722
_0802DAAC:
	ldr r0, _0802DAC0
	adds r1, r3, r0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bgt _0802DAC4
	adds r0, r2, #1
	strb r0, [r1]
	b _0802DAE2
	.align 2, 0
_0802DAC0: .4byte 0x00000723
_0802DAC4:
	movs r0, #1
	bl sub_802DEAC
	bl sub_802DFC4
	bl sub_802DF1C
	movs r0, #4
	bl sub_802DAF8
	movs r0, #4
	bl sub_802FE84
	bl sub_8030068
_0802DAE2:
	ldr r0, _0802DAF0
	ldr r1, _0802DAF4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0802DAEC:
	pop {r0}
	bx r0
	.align 2, 0
_0802DAF0: .4byte 0x02022450
_0802DAF4: .4byte 0x00000722

	THUMB_FUNC_START sub_802DAF8
sub_802DAF8: @ 0x0802DAF8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0802DB20
	ldr r2, _0802DB24
	adds r0, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r2, r3, #0
	adds r7, r1, #0
	cmp r2, #0
	bge _0802DB28
	movs r4, #0xe4
	lsls r4, r4, #3
	adds r0, r7, r4
	ldrh r0, [r0]
	adds r0, r2, r0
	b _0802DB3A
	.align 2, 0
_0802DB20: .4byte 0x02022450
_0802DB24: .4byte 0x0000071E
_0802DB28:
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r2, r0
	blt _0802DB3E
	subs r0, r2, r1
_0802DB3A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0802DB3E:
	movs r4, #0
	lsls r0, r5, #3
	ldr r6, _0802DB7C
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	mov ip, r2
	subs r0, r0, r5
	lsls r2, r0, #2
_0802DB52:
	mov r1, ip
	adds r0, r1, r4
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r6, #0
	adds r1, #0xd2
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _0802DB8C
	ldr r0, _0802DB80
	adds r0, r1, r0
	ldrb r3, [r0]
	cmp r3, #0
	bne _0802DB84
	lsls r0, r4, #2
	adds r0, r0, r2
	adds r0, r0, r6
	ldr r0, [r0]
	strh r3, [r0]
	b _0802DB96
	.align 2, 0
_0802DB7C: .4byte 0x02022450
_0802DB80: .4byte 0x02022120
_0802DB84:
	lsls r0, r4, #2
	adds r0, r0, r2
	adds r0, r0, r6
	b _0802DB92
_0802DB8C:
	lsls r0, r4, #2
	adds r0, r0, r2
	adds r0, r0, r7
_0802DB92:
	ldr r0, [r0]
	strh r1, [r0]
_0802DB96:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0802DB52
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802DBA8
sub_802DBA8: @ 0x0802DBA8
	push {r4, lr}
	ldr r4, _0802DBF4
	ldr r0, _0802DBF8
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0802DBC2
	movs r0, #0
	strb r0, [r1]
_0802DBC2:
	ldrb r1, [r1]
	ldr r2, _0802DBFC
	adds r0, r4, #0
	adds r0, #0xd4
	str r0, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r2, #8]
	ldr r0, _0802DC00
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	ldr r0, _0802DC04
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0802DC08
	adds r1, r4, r0
	movs r0, #0x72
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DBF4: .4byte 0x02022450
_0802DBF8: .4byte 0x00000725
_0802DBFC: .4byte gUnk2022EB0
_0802DC00: .4byte 0x080CA0D7
_0802DC04: .4byte 0x00000724
_0802DC08: .4byte 0x0000071E

	THUMB_FUNC_START sub_802DC0C
sub_802DC0C: @ 0x0802DC0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r2, #0
	ldr r4, _0802DD5C
	ldr r0, _0802DD60
	mov sb, r0
	movs r1, #0xd4
	adds r1, r1, r4
	mov r8, r1
	ldr r0, _0802DD64
	mov sl, r0
	adds r5, r4, #0
	adds r5, #0xd2
	movs r3, #0
	ldr r1, _0802DD68
_0802DC30:
	lsls r0, r2, #1
	adds r0, r0, r5
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	bls _0802DC30
	movs r2, #0
	ldr r1, _0802DD6C
	mov ip, r1
	ldr r7, _0802DD70
	ldr r6, _0802DD74
	movs r5, #0xc8
	lsls r5, r5, #2
	ldr r3, _0802DD78
_0802DC50:
	mov r0, ip
	adds r1, r2, r0
	adds r0, r2, r7
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r2, r6
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0802DC50
	ldr r1, _0802DD7C
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0802DD80
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0x72
	strh r0, [r1]
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0x73
	strh r0, [r1]
	ldr r0, _0802DD84
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r1, _0802DD88
	adds r0, r4, r1
	strb r2, [r0]
	subs r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, _0802DD8C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd2
	strh r3, [r0]
	movs r2, #1
	adds r1, r0, #0
	movs r3, #0xc8
	lsls r3, r3, #2
_0802DCB2:
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r2, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bls _0802DCB2
	mov r1, r8
	mov r0, sb
	str r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	mov r1, sb
	strh r0, [r1, #8]
	mov r1, sl
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1, #0xa]
	bl sub_8034A38
	movs r2, #0xca
	lsls r2, r2, #3
	add r2, r8
	movs r0, #4
	strb r0, [r2]
	ldr r1, _0802DD90
	add r1, r8
	movs r0, #0x72
	strh r0, [r1]
	movs r4, #0
	ldr r0, _0802DD94
	mov sb, r0
	mov r6, r8
	subs r6, #0xd4
	mov r8, r2
	adds r7, r6, #0
	adds r7, #0x8c
_0802DCFE:
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r4, r0
	add r0, sb
	ldrb r1, [r0]
	movs r3, #0
	lsls r0, r4, #3
	adds r5, r4, #1
	subs r0, r0, r4
	lsls r2, r0, #2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r4, r0, #1
_0802DD1C:
	lsls r0, r3, #2
	adds r0, r0, r2
	adds r0, r0, r6
	lsls r1, r3, #1
	adds r1, r1, r7
	adds r1, r4, r1
	str r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #6
	bls _0802DD1C
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802DCFE
	movs r4, #0
_0802DD3E:
	adds r0, r4, #0
	bl sub_802DAF8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802DD3E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DD5C: .4byte 0x02022450
_0802DD60: .4byte gUnk2022EB0
_0802DD64: .4byte 0x080CA0D7
_0802DD68: .4byte 0x00000325
_0802DD6C: .4byte 0x02022120
_0802DD70: .4byte 0x02021DF0
_0802DD74: .4byte 0x02022B80
_0802DD78: .4byte gTrunkCardQty
_0802DD7C: .4byte 0x00000726
_0802DD80: .4byte 0x0000071E
_0802DD84: .4byte 0x00000724
_0802DD88: .4byte 0x00000725
_0802DD8C: .4byte 0x00000723
_0802DD90: .4byte 0x0000064A
_0802DD94: .4byte 0x080CA0B4

	THUMB_FUNC_START sub_802DD98
sub_802DD98: @ 0x0802DD98
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _0802DDC8
	ldr r6, _0802DDCC
	ldr r5, _0802DDD0
	movs r4, #0xc8
	lsls r4, r4, #2
	ldr r3, _0802DDD4
_0802DDA8:
	adds r1, r2, r7
	adds r0, r2, r6
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, r2, r5
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	bls _0802DDA8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DDC8: .4byte 0x02021DF0
_0802DDCC: .4byte 0x02022120
_0802DDD0: .4byte gTrunkCardQty
_0802DDD4: .4byte 0x02022B80

	THUMB_FUNC_START sub_802DDD8
sub_802DDD8: @ 0x0802DDD8
	push {lr}
	ldr r0, _0802DDF0
	ldr r2, _0802DDF4
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	ble _0802DDF8
	subs r0, r2, #1
	strb r0, [r1]
	b _0802DE18
	.align 2, 0
_0802DDF0: .4byte 0x02022450
_0802DDF4: .4byte 0x00000723
_0802DDF8:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_802DEAC
	bl sub_802DFA4
	bl sub_802DF1C
	movs r0, #0
	bl sub_802DAF8
	movs r0, #0
	bl sub_802FE84
	bl sub_8030068
_0802DE18:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802DE1C
sub_802DE1C: @ 0x0802DE1C
	push {lr}
	ldr r0, _0802DE34
	ldr r2, _0802DE38
	adds r1, r0, r2
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bgt _0802DE3C
	adds r0, r2, #1
	strb r0, [r1]
	b _0802DE5A
	.align 2, 0
_0802DE34: .4byte 0x02022450
_0802DE38: .4byte 0x00000723
_0802DE3C:
	movs r0, #1
	bl sub_802DEAC
	bl sub_802DFC4
	bl sub_802DF1C
	movs r0, #4
	bl sub_802DAF8
	movs r0, #4
	bl sub_802FE84
	bl sub_8030068
_0802DE5A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802DE60
sub_802DE60: @ 0x0802DE60
	push {lr}
	movs r0, #0xa
	rsbs r0, r0, #0
	bl sub_802DEAC
	bl sub_802DFE4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802DE74
sub_802DE74: @ 0x0802DE74
	push {lr}
	movs r0, #0xa
	bl sub_802DEAC
	bl sub_802DFE4
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_802DE84
sub_802DE84: @ 0x0802DE84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _0802DEA0
	ldr r1, _0802DEA4
	ldr r2, _0802DEA8
	adds r1, r1, r2
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0802DEA0: .4byte 0x080CA0B4
_0802DEA4: .4byte 0x02022450
_0802DEA8: .4byte 0x00000724

	THUMB_FUNC_START sub_802DEAC
sub_802DEAC: @ 0x0802DEAC
	push {r4, lr}
	ldr r4, _0802DECC
	ldr r1, _0802DED0
	adds r4, r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802DED4
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DECC: .4byte 0x02022450
_0802DED0: .4byte 0x0000071E

	THUMB_FUNC_START sub_802DED4
sub_802DED4: @ 0x0802DED4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0802DEF4
	ldr r0, _0802DEF0
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r1, r0
	b _0802DF08
	.align 2, 0
_0802DEF0: .4byte 0x02022450
_0802DEF4:
	ldr r0, _0802DF18
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _0802DF0C
	subs r0, r1, r3
_0802DF08:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802DF0C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802DF18: .4byte 0x02022450

	THUMB_FUNC_START sub_802DF1C
sub_802DF1C: @ 0x0802DF1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r3, #0
	ldr r0, _0802DF7C
	mov r8, r0
	ldr r6, _0802DF80
	ldr r0, _0802DF84
	adds r0, r0, r6
	mov ip, r0
	adds r7, r6, #0
	adds r7, #0x8c
_0802DF34:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r3, r0
	add r0, r8
	ldrb r1, [r0]
	movs r2, #0
	lsls r0, r3, #3
	adds r5, r3, #1
	subs r0, r0, r3
	lsls r4, r0, #2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r3, r0, #1
_0802DF52:
	lsls r0, r2, #2
	adds r0, r0, r4
	adds r0, r0, r6
	lsls r1, r2, #1
	adds r1, r1, r7
	adds r1, r3, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0802DF52
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0802DF34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DF7C: .4byte 0x080CA0B4
_0802DF80: .4byte 0x02022450
_0802DF84: .4byte 0x00000724

	THUMB_FUNC_START sub_802DF88
sub_802DF88: @ 0x0802DF88
	push {r4, lr}
	movs r4, #0
_0802DF8C:
	adds r0, r4, #0
	bl sub_802DAF8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802DF8C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802DFA4
sub_802DFA4: @ 0x0802DFA4
	ldr r1, _0802DFB8
	ldr r2, _0802DFBC
	ldr r0, _0802DFC0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802DFB8: .4byte 0x02022450
_0802DFBC: .4byte 0x080CA0CD
_0802DFC0: .4byte 0x00000724

	THUMB_FUNC_START sub_802DFC4
sub_802DFC4: @ 0x0802DFC4
	ldr r1, _0802DFD8
	ldr r2, _0802DFDC
	ldr r0, _0802DFE0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802DFD8: .4byte 0x02022450
_0802DFDC: .4byte 0x080CA0D2
_0802DFE0: .4byte 0x00000724

	THUMB_FUNC_START sub_802DFE4
sub_802DFE4: @ 0x0802DFE4
	ldr r0, _0802DFF0
	ldr r1, _0802DFF4
	adds r0, r0, r1
	movs r1, #4
	strb r1, [r0]
	bx lr
	.align 2, 0
_0802DFF0: .4byte 0x02022450
_0802DFF4: .4byte 0x00000724

	THUMB_FUNC_START sub_802DFF8
sub_802DFF8: @ 0x0802DFF8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0802E030
	ldr r4, _0802E034
	str r4, [r2]
	movs r1, #0xc8
	lsls r1, r1, #2
	strh r1, [r2, #8]
	ldr r1, _0802E038
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	bl sub_8034A38
	movs r0, #0xca
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	ldr r0, _0802E03C
	adds r4, r4, r0
	movs r0, #0x72
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E030: .4byte gUnk2022EB0
_0802E034: .4byte 0x02022524
_0802E038: .4byte 0x080CA0D7
_0802E03C: .4byte 0x0000064A

	THUMB_FUNC_START sub_802E040
sub_802E040: @ 0x0802E040
	ldr r1, _0802E054
	ldr r2, _0802E058
	ldr r0, _0802E05C
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E054: .4byte 0x02022450
_0802E058: .4byte 0x080CA0E1
_0802E05C: .4byte 0x00000726

	THUMB_FUNC_START sub_802E060
sub_802E060: @ 0x0802E060
	ldr r1, _0802E074
	ldr r2, _0802E078
	ldr r0, _0802E07C
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E074: .4byte 0x02022450
_0802E078: .4byte 0x080CA0E4
_0802E07C: .4byte 0x00000726

	THUMB_FUNC_START sub_802E080
sub_802E080: @ 0x0802E080
	ldr r0, _0802E08C
	ldr r1, _0802E090
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0802E08C: .4byte 0x02022450
_0802E090: .4byte 0x00000726

	THUMB_FUNC_START sub_802E094
sub_802E094: @ 0x0802E094
	ldr r1, _0802E0A8
	ldr r2, _0802E0AC
	ldr r0, _0802E0B0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E0A8: .4byte 0x02022450
_0802E0AC: .4byte 0x080CA0E7
_0802E0B0: .4byte 0x00000726

	THUMB_FUNC_START sub_802E0B4
sub_802E0B4: @ 0x0802E0B4
	ldr r1, _0802E0C8
	ldr r2, _0802E0CC
	ldr r0, _0802E0D0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E0C8: .4byte 0x02022450
_0802E0CC: .4byte 0x080CA0F2
_0802E0D0: .4byte 0x00000726

	THUMB_FUNC_START sub_802E0D4
sub_802E0D4: @ 0x0802E0D4
	ldr r1, _0802E0E8
	ldr r2, _0802E0EC
	ldr r0, _0802E0F0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E0E8: .4byte 0x02022450
_0802E0EC: .4byte 0x080CA0FD
_0802E0F0: .4byte 0x00000726

	THUMB_FUNC_START sub_802E0F4
sub_802E0F4: @ 0x0802E0F4
	ldr r1, _0802E108
	ldr r2, _0802E10C
	ldr r0, _0802E110
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802E108: .4byte 0x02022450
_0802E10C: .4byte 0x080CA108
_0802E110: .4byte 0x00000726

	THUMB_FUNC_START sub_802E114
sub_802E114: @ 0x0802E114
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	cmp r4, #0
	beq _0802E14A
	adds r0, r4, #0
	bl sub_802E194
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E140
	ldr r0, _0802E13C
	adds r0, r4, r0
	movs r1, #0xfa
	strb r1, [r0]
	b _0802E14A
	.align 2, 0
_0802E13C: .4byte 0x02022120
_0802E140:
	ldr r1, _0802E150
	adds r1, r6, r1
	ldrb r0, [r1]
	adds r0, r5, r0
	strb r0, [r1]
_0802E14A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E150: .4byte 0x02022120

	THUMB_FUNC_START sub_802E154
sub_802E154: @ 0x0802E154
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	cmp r4, #0
	beq _0802E18A
	adds r0, r4, #0
	bl sub_802E1B8
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802E180
	ldr r0, _0802E17C
	adds r0, r4, r0
	strb r1, [r0]
	b _0802E18A
	.align 2, 0
_0802E17C: .4byte 0x02022120
_0802E180:
	ldr r1, _0802E190
	adds r1, r6, r1
	ldrb r0, [r1]
	subs r0, r0, r5
	strb r0, [r1]
_0802E18A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802E190: .4byte 0x02022120

	THUMB_FUNC_START sub_802E194
sub_802E194: @ 0x0802E194
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802E1B0
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r2
	cmp r1, r0
	bgt _0802E1B4
	movs r0, #1
	b _0802E1B6
	.align 2, 0
_0802E1B0: .4byte 0x02022120
_0802E1B4:
	movs r0, #0
_0802E1B6:
	bx lr

	THUMB_FUNC_START sub_802E1B8
sub_802E1B8: @ 0x0802E1B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0802E1D0
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bhi _0802E1D4
	movs r0, #1
	b _0802E1D6
	.align 2, 0
_0802E1D0: .4byte 0x02022120
_0802E1D4:
	movs r0, #0
_0802E1D6:
	bx lr

	THUMB_FUNC_START sub_802E1D8
sub_802E1D8: @ 0x0802E1D8
	push {r4, lr}
	ldr r0, _0802E250
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0802E254
	strh r1, [r0]
	movs r4, #0
_0802E1E6:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0802E258
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0802E25C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0802E1E6
	movs r4, #0
_0802E208:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0802E260
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0802E264
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0802E208
	movs r4, #0
_0802E22A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0802E268
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0802E26C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _0802E22A
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E250: .4byte gBG0VOFS
_0802E254: .4byte gBG0HOFS
_0802E258: .4byte 0x080CA114
_0802E25C: .4byte 0x0200A400
_0802E260: .4byte 0x080CA5C4
_0802E264: .4byte 0x0200AC00
_0802E268: .4byte 0x080CAA74
_0802E26C: .4byte 0x0200B400

	THUMB_FUNC_START sub_802E270
sub_802E270: @ 0x0802E270
	push {r4, r5, lr}
	ldr r0, _0802E2EC
	movs r4, #0
	movs r3, #0xa0
	strh r3, [r0, #0x20]
	movs r2, #0xf0
	strh r2, [r0, #0x22]
	movs r1, #0xc0
	lsls r1, r1, #4
	strh r1, [r0, #0x24]
	strh r4, [r0, #0x26]
	strh r3, [r0, #0x28]
	strh r2, [r0, #0x2a]
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	ldr r0, _0802E2F0
	ldr r1, _0802E2F4
	ldr r2, _0802E2F8
	bl sub_8020A3C
	movs r5, #0
_0802E29A:
	ldr r0, _0802E2FC
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0802E300
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0802E29A
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _0802E304
	ands r0, r1
	strh r0, [r4]
	ldr r0, _0802E308
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	bl LoadCharblock3
	ldr r1, _0802E30C
	ldr r2, _0802E310
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802E2EC: .4byte gOamBuffer
_0802E2F0: .4byte 0x0200D400
_0802E2F4: .4byte 0x080CDA60
_0802E2F8: .4byte 0x00000901
_0802E2FC: .4byte 0x080CAF24
_0802E300: .4byte 0x0200B400
_0802E304: .4byte 0x0000FEFF
_0802E308: .4byte LoadOam
_0802E30C: .4byte 0x04000008
_0802E310: .4byte 0x0000160C
	.byte 0xF0, 0xB5, 0x30, 0x48, 0x41, 0x68, 0x00, 0x68, 0x00, 0x22, 0xDF, 0xF7
	.byte 0xC5, 0xFD, 0x2E, 0x4A, 0x00, 0x23, 0x2E, 0x49, 0x88, 0x7C, 0x0A, 0x28, 0x1A, 0xD0, 0xF0, 0x27
	.byte 0x3F, 0x02, 0x0D, 0x1C, 0x12, 0x24, 0x2B, 0x48, 0x06, 0x1C, 0x10, 0x88, 0x39, 0x1C, 0x01, 0x40
	.byte 0x11, 0x80, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78, 0x30, 0x18, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x0F, 0x2B, 0x04, 0xD8, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78
	.byte 0x0A, 0x28, 0xEA, 0xD1, 0x11, 0x88, 0xF0, 0x24, 0x24, 0x02, 0x20, 0x1C, 0x08, 0x40, 0x10, 0x80
	.byte 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0xCA, 0x25, 0x6D, 0x00, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0xD8, 0x1D, 0x0D, 0xE0, 0xD0, 0x1D, 0x02, 0x02, 0x36, 0xA7, 0x00, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x10, 0x88, 0x21, 0x1C, 0x01, 0x40, 0x11, 0x80
	.byte 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x13, 0x2B, 0xF5, 0xD9, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x30, 0x48, 0x41, 0x68, 0x00, 0x68, 0x00, 0x22, 0xDF, 0xF7
	.byte 0x4D, 0xFD, 0x2E, 0x4A, 0x00, 0x23, 0x2E, 0x49, 0x88, 0x7C, 0x0A, 0x28, 0x1A, 0xD0, 0xF0, 0x27
	.byte 0x3F, 0x02, 0x0D, 0x1C, 0x12, 0x24, 0x2B, 0x48, 0x06, 0x1C, 0x10, 0x88, 0x39, 0x1C, 0x01, 0x40
	.byte 0x11, 0x80, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78, 0x30, 0x18, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x0F, 0x2B, 0x04, 0xD8, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78
	.byte 0x0A, 0x28, 0xEA, 0xD1, 0x11, 0x88, 0xF0, 0x24, 0x24, 0x02, 0x20, 0x1C, 0x08, 0x40, 0x10, 0x80
	.byte 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0xC7, 0x25, 0x6D, 0x00, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0xD8, 0x1D, 0x0D, 0xE0, 0xF0, 0x1A, 0x02, 0x02, 0xB6, 0xA4, 0x00, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x10, 0x88, 0x21, 0x1C, 0x01, 0x40, 0x11, 0x80
	.byte 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x13, 0x2B, 0xF5, 0xD9, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x30, 0x48, 0xC1, 0x68, 0x80, 0x68, 0x00, 0x22, 0xDF, 0xF7
	.byte 0xD5, 0xFC, 0x2E, 0x4A, 0x00, 0x23, 0x2E, 0x49, 0x88, 0x7C, 0x0A, 0x28, 0x1A, 0xD0, 0xF0, 0x27
	.byte 0x3F, 0x02, 0x0D, 0x1C, 0x12, 0x24, 0x2B, 0x48, 0x06, 0x1C, 0x10, 0x88, 0x39, 0x1C, 0x01, 0x40
	.byte 0x11, 0x80, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78, 0x30, 0x18, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x0F, 0x2B, 0x04, 0xD8, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78
	.byte 0x0A, 0x28, 0xEA, 0xD1, 0x11, 0x88, 0xF0, 0x24, 0x24, 0x02, 0x20, 0x1C, 0x08, 0x40, 0x10, 0x80
	.byte 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0xC7, 0x25, 0x6D, 0x00, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0xD8, 0x1D, 0x0D, 0xE0, 0xF0, 0x1A, 0x02, 0x02, 0xB6, 0xA4, 0x00, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x10, 0x88, 0x21, 0x1C, 0x01, 0x40, 0x11, 0x80
	.byte 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x13, 0x2B, 0xF5, 0xD9, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x08, 0x48, 0x02, 0x68, 0x43, 0x68
	.byte 0x07, 0x48, 0x41, 0x68, 0x00, 0x68, 0x99, 0x42, 0x03, 0xD8, 0x99, 0x42, 0x0A, 0xD1, 0x90, 0x42
	.byte 0x08, 0xD9, 0x01, 0x24, 0xA0, 0x46, 0x80, 0x1A, 0x99, 0x41, 0x09, 0xE0, 0xD0, 0x1D, 0x02, 0x02
	.byte 0xF0, 0x1A, 0x02, 0x02, 0x00, 0x25, 0xA8, 0x46, 0x12, 0x1A, 0x8B, 0x41, 0x19, 0x1C, 0x10, 0x1C
	.byte 0x00, 0x22, 0xDF, 0xF7, 0x43, 0xFC, 0x35, 0x4A, 0x00, 0x23, 0x35, 0x49, 0x88, 0x7C, 0x0A, 0x28
	.byte 0x1A, 0xD0, 0xF0, 0x27, 0x3F, 0x02, 0x0D, 0x1C, 0x12, 0x24, 0x32, 0x48, 0x06, 0x1C, 0x10, 0x88
	.byte 0x39, 0x1C, 0x01, 0x40, 0x11, 0x80, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78, 0x30, 0x18, 0x08, 0x43
	.byte 0x10, 0x80, 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x0F, 0x2B, 0x04, 0xD8, 0xE0, 0x1A
	.byte 0x40, 0x19, 0x00, 0x78, 0x0A, 0x28, 0xEA, 0xD1, 0x44, 0x46, 0x01, 0x2C, 0x0B, 0xD1, 0x11, 0x88
	.byte 0xF0, 0x20, 0x00, 0x02, 0x08, 0x40, 0x24, 0x4D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A
	.byte 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x11, 0x88, 0xF0, 0x24, 0x24, 0x02, 0x20, 0x1C, 0x08, 0x40
	.byte 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0xC4, 0x25, 0x6D, 0x00, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C
	.byte 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0xD8, 0x1D, 0x0E, 0xE0, 0x00, 0x00, 0x36, 0xA5, 0x00, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x81, 0x01, 0x00, 0x00, 0x10, 0x88, 0x21, 0x1C
	.byte 0x01, 0x40, 0x11, 0x80, 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x14, 0x2B, 0xF5, 0xD9
	.byte 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x07, 0x48
	.byte 0x84, 0x68, 0xC5, 0x68, 0x29, 0x1C, 0x20, 0x1C, 0xF8, 0xF7, 0x52, 0xFC, 0x01, 0x28, 0x09, 0xD1
	.byte 0x03, 0x48, 0x41, 0x68, 0x00, 0x68, 0x00, 0x19, 0x69, 0x41, 0x05, 0xE0, 0xF0, 0x1A, 0x02, 0x02
	.byte 0xD0, 0x1D, 0x02, 0x02, 0x38, 0x49, 0x37, 0x48, 0x00, 0x22, 0xDF, 0xF7, 0xA7, 0xFB, 0x37, 0x4A
	.byte 0x00, 0x23, 0x37, 0x49, 0x88, 0x7C, 0x0A, 0x28, 0x1A, 0xD0, 0xF0, 0x27, 0x3F, 0x02, 0x0D, 0x1C
	.byte 0x12, 0x24, 0x34, 0x48, 0x06, 0x1C, 0x10, 0x88, 0x39, 0x1C, 0x01, 0x40, 0x11, 0x80, 0xE0, 0x1A
	.byte 0x40, 0x19, 0x00, 0x78, 0x30, 0x18, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06
	.byte 0x03, 0x0E, 0x0F, 0x2B, 0x04, 0xD8, 0xE0, 0x1A, 0x40, 0x19, 0x00, 0x78, 0x0A, 0x28, 0xEA, 0xD1
	.byte 0x00, 0x20, 0x01, 0x28, 0x0B, 0xD1, 0x11, 0x88, 0xF0, 0x20, 0x00, 0x02, 0x08, 0x40, 0x26, 0x4C
	.byte 0x21, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x11, 0x88
	.byte 0xF0, 0x24, 0x24, 0x02, 0x20, 0x1C, 0x08, 0x40, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88, 0x20, 0x1C
	.byte 0x08, 0x40, 0xC4, 0x25, 0x6D, 0x00, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88
	.byte 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88
	.byte 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88
	.byte 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88
	.byte 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0x11, 0x88
	.byte 0x20, 0x1C, 0x08, 0x40, 0x01, 0x3D, 0x29, 0x1C, 0x08, 0x43, 0x10, 0x80, 0x02, 0x3A, 0xD8, 0x1D
	.byte 0x12, 0xE0, 0x00, 0x00, 0xFF, 0x9F, 0x72, 0x4E, 0x18, 0x09, 0x00, 0x00, 0x36, 0xA5, 0x00, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x81, 0x01, 0x00, 0x00, 0x10, 0x88, 0x21, 0x1C
	.byte 0x01, 0x40, 0x11, 0x80, 0x02, 0x3A, 0x58, 0x1C, 0x00, 0x06, 0x03, 0x0E, 0x14, 0x2B, 0xF5, 0xD9
	.byte 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_802E868
sub_802E868: @ 0x0802E868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0802EA04
	movs r0, #3
	strh r0, [r1]
	ldr r1, _0802EA08
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0802EA0C
	adds r0, r4, #0
	bl CopyStarTileToBuffer
	adds r0, r4, #0
	adds r0, #0x20
	bl CopySwordTileToBuffer
	adds r0, r4, #0
	adds r0, #0x40
	bl CopyShieldTileToBuffer
	ldr r1, _0802EA10
	adds r0, r4, r1
	ldr r1, _0802EA14
	ldr r5, _0802EA18
	adds r2, r5, #0
	bl sub_8020A3C
	ldr r1, _0802EA1C
	adds r0, r4, r1
	ldr r1, _0802EA20
	adds r2, r5, #0
	bl sub_8020A3C
	ldr r1, _0802EA24
	adds r0, r4, r1
	ldr r1, _0802EA28
	ldr r2, _0802EA2C
	bl sub_8020A3C
	ldr r1, _0802EA30
	adds r0, r4, r1
	ldr r1, _0802EA34
	adds r2, r5, #0
	bl sub_8020A3C
	ldr r1, _0802EA38
	adds r0, r4, r1
	ldr r1, _0802EA3C
	ldr r2, _0802EA40
	bl sub_8020A3C
	adds r4, #0x60
	ldr r1, _0802EA44
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r6, #0
_0802E8DE:
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _0802EA48
	adds r0, r0, r1
	lsls r1, r6, #6
	ldr r2, _0802EA4C
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0802E8DE
	movs r2, #0xf8
	lsls r2, r2, #8
	movs r0, #0
	movs r1, #0
	bl sub_08007FEC
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
_0802E910:
	adds r0, r6, #0
	adds r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0802EA50
	adds r3, r6, r1
	orrs r3, r7
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #1
	movs r2, #0xf8
	lsls r2, r2, #8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _0802E910
	movs r4, #0xf8
	lsls r4, r4, #8
	movs r0, #0x14
	movs r1, #0x12
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xfc
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0802E94E:
	adds r5, r6, #0
	adds r5, #0x14
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _0802EA54
	adds r4, r6, r4
	ldr r0, _0802EA58
	adds r3, r0, #0
	ldrb r1, [r4]
	adds r3, r3, r1
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #0x12
	mov r2, r8
	bl sub_800800C
	ldr r0, _0802EA5C
	adds r3, r0, #0
	ldrb r4, [r4]
	adds r3, r3, r4
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #0x13
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0802E94E
	movs r4, #0xf8
	lsls r4, r4, #8
	movs r0, #0x16
	movs r1, #0x12
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xfc
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_0802E9A4:
	adds r5, r6, #0
	adds r5, #0x16
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r4, _0802EA54
	adds r4, r6, r4
	ldr r1, _0802EA60
	adds r3, r1, #0
	ldrb r0, [r4]
	adds r3, r3, r0
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #0x12
	mov r2, r8
	bl sub_800800C
	ldr r1, _0802EA64
	adds r3, r1, #0
	ldrb r4, [r4]
	adds r3, r3, r4
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #0x13
	mov r2, r8
	bl sub_800800C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0802E9A4
	ldr r0, _0802EA68
	bl sub_8008BF8
	bl sub_802EA74
	ldr r0, _0802EA6C
	ldr r1, _0802EA70
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA04: .4byte gBG1VOFS
_0802EA08: .4byte gBG1HOFS
_0802EA0C: .4byte 0x0200F800
_0802EA10: .4byte 0xFFFFF380
_0802EA14: .4byte 0x080CDC28
_0802EA18: .4byte 0x00000801
_0802EA1C: .4byte 0xFFFFF400
_0802EA20: .4byte 0x080CDC50
_0802EA24: .4byte 0xFFFFF700
_0802EA28: .4byte 0x080CDCF0
_0802EA2C: .4byte 0x00000901
_0802EA30: .4byte 0xFFFFFC00
_0802EA34: .4byte 0x080CDD78
_0802EA38: .4byte 0xFFFFFEA0
_0802EA3C: .4byte 0x080CDE10
_0802EA40: .4byte 0x00001801
_0802EA44: .4byte 0x080CDE28
_0802EA48: .4byte 0x080CB3D4
_0802EA4C: .4byte 0x0200FC00
_0802EA50: .4byte 0x000001A3
_0802EA54: .4byte gUnk_8DF811C
_0802EA58: .4byte 0x000001A9
_0802EA5C: .4byte 0x000001AB
_0802EA60: .4byte 0x000001AD
_0802EA64: .4byte 0x000001AF
_0802EA68: .4byte 0x02000140
_0802EA6C: .4byte 0x02022450
_0802EA70: .4byte 0x00000725

	THUMB_FUNC_START sub_802EA74
sub_802EA74: @ 0x0802EA74
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802EB38
	ldr r1, [r0, #4]
	ldr r0, [r0]
	movs r2, #0
	bl sub_800DEAC
	ldr r2, _0802EB3C
	movs r3, #0
	ldr r1, _0802EB40
	ldrb r0, [r1, #0x12]
	cmp r0, #0xa
	beq _0802EAC4
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r5, r1, #0
	movs r4, #0x12
	ldr r0, _0802EB44
	adds r6, r0, #0
_0802EA9A:
	ldrh r0, [r2]
	adds r1, r7, #0
	ands r1, r0
	strh r1, [r2]
	subs r0, r4, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	adds r0, r6, r0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _0802EAC4
	subs r0, r4, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802EA9A
_0802EAC4:
	ldrh r1, [r2]
	movs r4, #0xf0
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	movs r5, #0xca
	lsls r5, r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	subs r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	subs r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	subs r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	subs r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	subs r5, #1
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	subs r2, #2
	adds r0, r3, #7
	b _0802EB54
	.align 2, 0
_0802EB38: .4byte gMoney
_0802EB3C: .4byte 0x0200FC6E
_0802EB40: .4byte 0x02021BE0
_0802EB44: .4byte 0x00000195
_0802EB48:
	ldrh r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strh r1, [r2]
	subs r2, #2
	adds r0, r3, #1
_0802EB54:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x13
	bls _0802EB48
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802EB64
sub_802EB64: @ 0x0802EB64
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802ECB0
	movs r5, #0
	ldr r0, _0802ECB4
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0802EB74
	b _0802EC8C
_0802EB74:
	ldrh r1, [r4]
	movs r6, #0xf0
	lsls r6, r6, #8
	adds r0, r6, #0
	ands r0, r1
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ldr r3, _0802ECB8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	movs r5, #6
	ldr r0, _0802ECBC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	movs r2, #0
	bl sub_800DEAC
	movs r2, #0
	ldr r1, _0802ECC0
	ldrb r0, [r1, #0x12]
	cmp r0, #0xa
	beq _0802EC18
	mov ip, r6
	adds r6, r1, #0
	movs r3, #0x12
	ldr r0, _0802ECC4
	adds r7, r0, #0
_0802EBE8:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	strh r1, [r4]
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r0, r7, r0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0xf
	bhi _0802EC18
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802EBE8
_0802EC18:
	ldrh r1, [r4]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0xc7
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ands r2, r0
	ldr r1, _0802ECC8
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	subs r4, #2
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802EC8C:
	cmp r5, #0x16
	bhi _0802ECA8
	movs r2, #0xf0
	lsls r2, r2, #8
_0802EC94:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _0802EC94
_0802ECA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802ECB0: .4byte 0x0200FCBA
_0802ECB4: .4byte gCardInfo
_0802ECB8: .4byte 0x000001A7
_0802ECBC: .4byte 0x02021AF0
_0802ECC0: .4byte 0x02021BE0
_0802ECC4: .4byte 0x00000195
_0802ECC8: .4byte 0x00000189

	THUMB_FUNC_START sub_802ECCC
sub_802ECCC: @ 0x0802ECCC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802EE18
	movs r5, #0
	ldr r0, _0802EE1C
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0802ECDC
	b _0802EDF4
_0802ECDC:
	ldrh r1, [r4]
	movs r6, #0xf0
	lsls r6, r6, #8
	adds r0, r6, #0
	ands r0, r1
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ldr r3, _0802EE20
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	movs r5, #6
	ldr r0, _0802EE24
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	movs r2, #0
	bl sub_800DEAC
	movs r2, #0
	ldr r1, _0802EE28
	ldrb r0, [r1, #0x12]
	cmp r0, #0xa
	beq _0802ED80
	mov ip, r6
	adds r6, r1, #0
	movs r3, #0x12
	ldr r0, _0802EE2C
	adds r7, r0, #0
_0802ED50:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	strh r1, [r4]
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r0, r7, r0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0xf
	bhi _0802ED80
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802ED50
_0802ED80:
	ldrh r1, [r4]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	ldr r3, _0802EE30
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ands r2, r0
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	subs r4, #2
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802EDF4:
	cmp r5, #0x16
	bhi _0802EE10
	movs r2, #0xf0
	lsls r2, r2, #8
_0802EDFC:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _0802EDFC
_0802EE10:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EE18: .4byte 0x0200FCBA
_0802EE1C: .4byte gCardInfo
_0802EE20: .4byte 0x000001A7
_0802EE24: .4byte 0x02021AF0
_0802EE28: .4byte 0x02021BE0
_0802EE2C: .4byte 0x00000195
_0802EE30: .4byte 0x0000014B

	THUMB_FUNC_START sub_802EE34
sub_802EE34: @ 0x0802EE34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _0802EE78
	movs r6, #0
	ldr r0, _0802EE7C
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0802EE48
	b _0802EFB0
_0802EE48:
	ldr r0, _0802EE80
	ldr r1, _0802EE84
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	adds r7, r0, #0
	adds r4, r1, #0
	cmp r3, r2
	bhi _0802EE64
	cmp r3, r2
	bne _0802EE88
	ldr r1, [r7]
	ldr r0, [r4]
	cmp r1, r0
	bls _0802EE88
_0802EE64:
	movs r0, #1
	mov r8, r0
	movs r1, #0xe
	mov ip, r1
	ldr r2, [r7]
	ldr r3, [r7, #4]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	b _0802EE98
	.align 2, 0
_0802EE78: .4byte 0x0200FCFA
_0802EE7C: .4byte gCardInfo
_0802EE80: .4byte 0x02021AF0
_0802EE84: .4byte gMoney
_0802EE88:
	movs r0, #0
	mov r8, r0
	movs r1, #0xd
	mov ip, r1
	ldr r2, [r4]
	ldr r3, [r4, #4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
_0802EE98:
	subs r2, r2, r0
	sbcs r3, r1
	mov r0, ip
	lsls r4, r0, #0xc
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r0, _0802EFD8
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	movs r0, #0xd3
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r0, _0802EFDC
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r0, _0802EFE0
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	adds r0, r6, #6
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, r3, #0
	adds r0, r2, #0
	movs r2, #0
	bl sub_800DEAC
	movs r1, #0
	ldr r2, _0802EFE4
	ldrb r0, [r2, #0x12]
	cmp r0, #0xa
	beq _0802EF3A
	adds r7, r4, #0
	adds r3, r2, #0
	movs r2, #0x12
	ldr r0, _0802EFE8
	mov ip, r0
_0802EF12:
	subs r0, r2, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	add r0, ip
	orrs r0, r7
	strh r0, [r5]
	subs r5, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r1, #0xf
	bhi _0802EF3A
	subs r0, r2, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802EF12
_0802EF3A:
	mov r1, r8
	cmp r1, #1
	bne _0802EF52
	ldr r1, _0802EFEC
	adds r0, r1, #0
	adds r1, r4, #0
	orrs r1, r0
	strh r1, [r5]
	subs r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0802EF52:
	ldrh r1, [r5]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r5]
	subs r5, #2
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r0, _0802EFF0
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	movs r0, #0xc3
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r0, _0802EFF4
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	subs r5, #2
	ldr r1, _0802EFF8
	adds r0, r1, #0
	orrs r4, r0
	strh r4, [r5]
	subs r5, #2
	adds r0, r6, #7
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0802EFB0:
	cmp r6, #0x17
	bhi _0802EFCC
	movs r2, #0xf0
	lsls r2, r2, #8
_0802EFB8:
	ldrh r0, [r5]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r5]
	subs r5, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x17
	bls _0802EFB8
_0802EFCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EFD8: .4byte 0x000001A7
_0802EFDC: .4byte 0x000001A5
_0802EFE0: .4byte 0x000001A3
_0802EFE4: .4byte 0x02021BE0
_0802EFE8: .4byte 0x00000195
_0802EFEC: .4byte 0x00000181
_0802EFF0: .4byte 0x00000187
_0802EFF4: .4byte 0x00000185
_0802EFF8: .4byte 0x00000183

	THUMB_FUNC_START sub_802EFFC
sub_802EFFC: @ 0x0802EFFC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802F02C
	movs r5, #0
	ldr r0, _0802F030
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0802F00C
	b _0802F178
_0802F00C:
	ldr r6, _0802F034
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	bl ExceedsMoneyLimit
	cmp r0, #1
	bne _0802F03C
	ldr r0, _0802F038
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	adds r2, r2, r0
	adcs r3, r1
	b _0802F040
	.align 2, 0
_0802F02C: .4byte 0x0200FCFA
_0802F030: .4byte gCardInfo
_0802F034: .4byte 0x02021AF0
_0802F038: .4byte gMoney
_0802F03C:
	ldr r3, _0802F1A0
	ldr r2, _0802F19C
_0802F040:
	ldrh r1, [r4]
	movs r6, #0xf0
	lsls r6, r6, #8
	adds r0, r6, #0
	ands r0, r1
	movs r7, #0xd4
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	subs r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	adds r0, r5, #6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, r3, #0
	adds r0, r2, #0
	movs r2, #0
	bl sub_800DEAC
	movs r2, #0
	ldr r1, _0802F1A4
	ldrb r0, [r1, #0x12]
	cmp r0, #0xa
	beq _0802F0E6
	mov ip, r6
	adds r6, r1, #0
	movs r3, #0x12
	ldr r0, _0802F1A8
	adds r7, r0, #0
_0802F0B6:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	strh r1, [r4]
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r0, r7, r0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0xf
	bhi _0802F0E6
	subs r0, r3, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802F0B6
_0802F0E6:
	movs r0, #0
	cmp r0, #1
	bne _0802F104
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	ldr r2, _0802F1AC
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802F104:
	ldrh r1, [r4]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	ldr r7, _0802F1B0
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ands r2, r0
	subs r7, #2
	adds r0, r7, #0
	orrs r2, r0
	strh r2, [r4]
	subs r4, #2
	adds r0, r5, #7
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802F178:
	cmp r5, #0x17
	bhi _0802F194
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F180:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0802F180
_0802F194:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F19C: .4byte 0x4E729FFF
_0802F1A0: .4byte 0x00000918
_0802F1A4: .4byte 0x02021BE0
_0802F1A8: .4byte 0x00000195
_0802F1AC: .4byte 0x00000181
_0802F1B0: .4byte 0x00000187
	.byte 0x30, 0xB5, 0x1F, 0x4D, 0x00, 0x24, 0x1F, 0x48, 0x00, 0x8A, 0x00, 0x28
	.byte 0x27, 0xD0, 0x1E, 0x48, 0x41, 0x68, 0x00, 0x68, 0x01, 0x22, 0xDE, 0xF7, 0x6F, 0xFE, 0x1C, 0x49
	.byte 0x08, 0x78, 0x0A, 0x28, 0x12, 0xD0, 0x1B, 0x48, 0x03, 0x1C, 0x1B, 0x48, 0x02, 0x1C, 0x60, 0x18
	.byte 0x00, 0x78, 0x18, 0x18, 0x10, 0x43, 0x28, 0x80, 0x02, 0x35, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x0F, 0x2C, 0x03, 0xD8, 0x60, 0x18, 0x00, 0x78, 0x0A, 0x28, 0xF0, 0xD1, 0x13, 0x49, 0x08, 0x1C
	.byte 0x28, 0x80, 0x02, 0x35, 0x01, 0x31, 0x08, 0x1C, 0x28, 0x80, 0x02, 0x35, 0xA0, 0x1C, 0x00, 0x06
	.byte 0x04, 0x0E, 0x11, 0x2C, 0x0B, 0xD8, 0xF0, 0x22, 0x12, 0x02, 0x28, 0x88, 0x11, 0x1C, 0x01, 0x40
	.byte 0x29, 0x80, 0x02, 0x35, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x11, 0x2C, 0xF5, 0xD9, 0x30, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0xC2, 0x00, 0x01, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xF0, 0x1A, 0x02, 0x02
	.byte 0xE0, 0x1B, 0x02, 0x02, 0x95, 0x01, 0x00, 0x00, 0x00, 0xD0, 0xFF, 0xFF, 0x83, 0xD1, 0x00, 0x00
	.byte 0x30, 0xB5, 0x1F, 0x4D, 0x00, 0x24, 0x1F, 0x48, 0x00, 0x8A, 0x00, 0x28, 0x27, 0xD0, 0x1E, 0x48
	.byte 0xC1, 0x68, 0x80, 0x68, 0x01, 0x22, 0xDE, 0xF7, 0x21, 0xFE, 0x1C, 0x49, 0x08, 0x78, 0x0A, 0x28
	.byte 0x12, 0xD0, 0x1B, 0x48, 0x03, 0x1C, 0x1B, 0x48, 0x02, 0x1C, 0x60, 0x18, 0x00, 0x78, 0x18, 0x18
	.byte 0x10, 0x43, 0x28, 0x80, 0x02, 0x35, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x0F, 0x2C, 0x03, 0xD8
	.byte 0x60, 0x18, 0x00, 0x78, 0x0A, 0x28, 0xF0, 0xD1, 0x13, 0x49, 0x08, 0x1C, 0x28, 0x80, 0x02, 0x35
	.byte 0x01, 0x31, 0x08, 0x1C, 0x28, 0x80, 0x02, 0x35, 0xA0, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x11, 0x2C
	.byte 0x0B, 0xD8, 0xF0, 0x22, 0x12, 0x02, 0x28, 0x88, 0x11, 0x1C, 0x01, 0x40, 0x29, 0x80, 0x02, 0x35
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x11, 0x2C, 0xF5, 0xD9, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xC2, 0x00, 0x01, 0x02, 0xD0, 0x1A, 0x02, 0x02, 0xF0, 0x1A, 0x02, 0x02, 0xE0, 0x1B, 0x02, 0x02
	.byte 0x95, 0x01, 0x00, 0x00, 0x00, 0xD0, 0xFF, 0xFF, 0x83, 0xD1, 0x00, 0x00

	THUMB_FUNC_START sub_802F2EC
sub_802F2EC: @ 0x0802F2EC
	push {r4, r5, r6, lr}
	ldr r4, _0802F39C
	movs r5, #0
	ldr r2, _0802F3A0
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0802F378
	ldr r1, _0802F3A4
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	adds r1, #0x2b
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	movs r5, #7
	ldr r1, _0802F3A8
	ldrh r0, [r2, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_800DDA0
	movs r1, #0
	ldr r2, _0802F3AC
	ldrb r0, [r2]
	cmp r0, #0xa
	beq _0802F378
	ldr r0, _0802F3B0
	adds r6, r0, #0
	ldr r0, _0802F3B4
	adds r3, r0, #0
_0802F354:
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, r6, r0
	orrs r0, r3
	strh r0, [r4]
	adds r4, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r1, #2
	bhi _0802F378
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802F354
_0802F378:
	cmp r5, #9
	bhi _0802F394
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F380:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0802F380
_0802F394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F39C: .4byte 0x02010040
_0802F3A0: .4byte gCardInfo
_0802F3A4: .4byte 0x0000D152
_0802F3A8: .4byte 0x02022120
_0802F3AC: .4byte 0x02021BD0
_0802F3B0: .4byte 0x00000195
_0802F3B4: .4byte 0xFFFFD000

	THUMB_FUNC_START sub_802F3B8
sub_802F3B8: @ 0x0802F3B8
	push {r4, r5, r6, lr}
	ldr r4, _0802F41C
	movs r5, #0
	ldr r0, _0802F420
	ldrh r2, [r0, #0x12]
	ldr r1, _0802F424
	adds r3, r0, #0
	cmp r2, r1
	beq _0802F452
	ldrh r0, [r3, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _0802F428
	ldr r0, _0802F42C
	adds r3, r0, #0
	ldrb r2, [r1, #4]
	adds r0, r3, r2
	ldr r6, _0802F430
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #3]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #2]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #1]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802F438
	ldr r1, _0802F434
	adds r0, r1, #0
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	b _0802F446
	.align 2, 0
_0802F41C: .4byte 0x020100BA
_0802F420: .4byte gCardInfo
_0802F424: .4byte 0x0000FFFF
_0802F428: .4byte 0x02021BD0
_0802F42C: .4byte 0x00000195
_0802F430: .4byte 0xFFFFD000
_0802F434: .4byte 0x0000A1A1
_0802F438:
	ldrb r1, [r1]
	adds r0, r3, r1
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldr r2, _0802F4D0
	adds r0, r2, #0
_0802F446:
	strh r0, [r4]
	subs r4, #2
	adds r0, r5, #6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, _0802F4D4
_0802F452:
	ldr r6, _0802F4D8
	cmp r5, #5
	bhi _0802F470
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F45C:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0802F45C
_0802F470:
	adds r4, r6, #0
	movs r5, #0
	ldrh r1, [r3, #0x14]
	ldr r0, _0802F4DC
	cmp r1, r0
	beq _0802F508
	adds r0, r1, #0
	movs r1, #0
	bl sub_800DDA0
	ldr r1, _0802F4E0
	ldr r6, _0802F4E4
	adds r3, r6, #0
	ldrb r2, [r1, #4]
	adds r0, r3, r2
	ldr r6, _0802F4E8
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #3]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #2]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r6, [r1, #1]
	adds r0, r3, r6
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _0802F4F0
	ldr r1, _0802F4EC
	adds r0, r1, #0
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r0, r1
	b _0802F4FE
	.align 2, 0
_0802F4D0: .4byte 0x0000A1A1
_0802F4D4: .4byte gCardInfo
_0802F4D8: .4byte 0x020100FA
_0802F4DC: .4byte 0x0000FFFF
_0802F4E0: .4byte 0x02021BD0
_0802F4E4: .4byte 0x00000195
_0802F4E8: .4byte 0xFFFFD000
_0802F4EC: .4byte 0x0000A1A2
_0802F4F0:
	ldrb r1, [r1]
	adds r0, r3, r1
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	ldr r2, _0802F52C
	adds r0, r2, #0
_0802F4FE:
	strh r0, [r4]
	subs r4, #2
	adds r0, r5, #6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0802F508:
	cmp r5, #5
	bhi _0802F524
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F510:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0802F510
_0802F524:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F52C: .4byte 0x0000A1A2

	THUMB_FUNC_START sub_802F530
sub_802F530: @ 0x0802F530
	push {r4, r5, r6, lr}
	ldr r5, _0802F55C
	ldr r1, _0802F560
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0802F564
	ldrh r2, [r5]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	adds r5, #2
	ldrh r2, [r5]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r5]
	ands r1, r0
	strh r1, [r5]
	b _0802F59E
	.align 2, 0
_0802F55C: .4byte 0x02010068
_0802F560: .4byte gCardInfo
_0802F564:
	ldrb r0, [r1, #0x18]
	movs r1, #1
	bl sub_800DDA0
	ldr r1, _0802F5A4
	adds r0, r1, #0
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r5]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r5]
	ldr r4, _0802F5A8
	ldr r6, _0802F5AC
	adds r3, r6, #0
	ldrb r6, [r4]
	adds r0, r3, r6
	orrs r0, r1
	strh r0, [r5]
	adds r5, #2
	ldrh r0, [r5]
	ands r2, r0
	strh r2, [r5]
	ldrb r4, [r4, #1]
	adds r3, r3, r4
	orrs r3, r2
	strh r3, [r5]
_0802F59E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F5A4: .4byte 0x0000A1A0
_0802F5A8: .4byte 0x02021BD0
_0802F5AC: .4byte 0x00000195

	THUMB_FUNC_START sub_802F5B0
sub_802F5B0: @ 0x0802F5B0
	push {r4, r5, r6, lr}
	sub sp, #0x24
	add r0, sp, #0x20
	movs r1, #0
	strh r1, [r0]
	ldr r1, _0802F5D8
	ldr r2, _0802F5DC
	bl CpuSet
	movs r4, #0
	ldr r6, _0802F5E0
	ldr r0, [r6]
	bl sub_8020698
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r5, #0
	ldr r0, [r6]
	adds r0, r0, r2
	b _0802F62A
	.align 2, 0
_0802F5D8: .4byte 0x0200FA20
_0802F5DC: .4byte 0x010000F0
_0802F5E0: .4byte gCardInfo
_0802F5E4:
	ldr r0, [r6]
	adds r0, r0, r2
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802F606
	mov r3, sp
	adds r0, r3, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0802F606:
	mov r0, sp
	adds r1, r0, r4
	ldr r3, [r6]
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xe
	bhi _0802F634
	adds r0, r3, r2
_0802F62A:
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F634
	cmp r0, #0x24
	bne _0802F5E4
_0802F634:
	ldr r3, _0802F664
	cmp r5, #0xf
	bhi _0802F652
	movs r1, #0
_0802F63C:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _0802F63C
_0802F652:
	ldr r2, _0802F668
	adds r0, r3, #0
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x24
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F664: .4byte 0x0200FA20
_0802F668: .4byte 0x00000801

	THUMB_FUNC_START sub_802F66C
sub_802F66C: @ 0x0802F66C
	push {r4, r5, r6, lr}
	ldr r4, _0802F69C
	ldr r1, _0802F6A0
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	bne _0802F6A8
	movs r2, #0
	movs r5, #0xf0
	lsls r5, r5, #8
	ldr r0, _0802F6A4
	adds r3, r0, #0
_0802F682:
	ldrh r0, [r4]
	adds r1, r5, #0
	ands r1, r0
	orrs r1, r3
	strh r1, [r4]
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0802F682
	b _0802F6DA
	.align 2, 0
_0802F69C: .4byte 0x020100C2
_0802F6A0: .4byte gCardInfo
_0802F6A4: .4byte 0x0000019F
_0802F6A8:
	ldrh r0, [r1, #0x10]
	movs r1, #1
	bl sub_800DDA0
	movs r2, #0
	movs r6, #0xf0
	lsls r6, r6, #8
	ldr r5, _0802F6E0
	ldr r0, _0802F6E4
	adds r3, r0, #0
_0802F6BC:
	ldrh r0, [r4]
	adds r1, r6, #0
	ands r1, r0
	strh r1, [r4]
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r0, r3, r0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0802F6BC
_0802F6DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F6E0: .4byte 0x02021BD0
_0802F6E4: .4byte 0x00000195

	THUMB_FUNC_START sub_802F6E8
sub_802F6E8: @ 0x0802F6E8
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802F7DC
	movs r5, #0
	ldr r2, _0802F7E0
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0802F7BA
	ldrh r1, [r4]
	movs r6, #0xf0
	lsls r6, r6, #8
	adds r0, r6, #0
	ands r0, r1
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #0x31
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	movs r5, #7
	ldr r1, _0802F7E4
	ldrh r0, [r2, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #1
	bl sub_800DDA0
	movs r2, #0
	ldr r1, _0802F7E8
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0802F7BA
	adds r7, r6, #0
	adds r3, r1, #0
	ldr r0, _0802F7EC
	adds r6, r0, #0
_0802F78E:
	ldrh r0, [r4]
	adds r1, r7, #0
	ands r1, r0
	strh r1, [r4]
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r0, r6, r0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #2
	bhi _0802F7BA
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802F78E
_0802F7BA:
	cmp r5, #9
	bhi _0802F7D6
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F7C2:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0802F7C2
_0802F7D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F7DC: .4byte 0x02010054
_0802F7E0: .4byte gCardInfo
_0802F7E4: .4byte 0x02022B80
_0802F7E8: .4byte 0x02021BD0
_0802F7EC: .4byte 0x00000195

	THUMB_FUNC_START sub_802F7F0
sub_802F7F0: @ 0x0802F7F0
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802F8E8
	movs r5, #0
	ldr r2, _0802F8EC
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0802F8C4
	ldrh r1, [r4]
	movs r6, #0xf0
	lsls r6, r6, #8
	adds r0, r6, #0
	ands r0, r1
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	adds r3, #0x3d
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	movs r5, #7
	ldrh r0, [r2, #0x10]
	bl GetDeckCardQty
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_800DDA0
	movs r2, #0
	ldr r1, _0802F8F0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _0802F8C4
	adds r7, r6, #0
	adds r3, r1, #0
	ldr r0, _0802F8F4
	adds r6, r0, #0
_0802F898:
	ldrh r0, [r4]
	adds r1, r7, #0
	ands r1, r0
	strh r1, [r4]
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r0, r6, r0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #2
	bhi _0802F8C4
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802F898
_0802F8C4:
	cmp r5, #9
	bhi _0802F8E0
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F8CC:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	adds r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0802F8CC
_0802F8E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F8E8: .4byte 0x02010094
_0802F8EC: .4byte gCardInfo
_0802F8F0: .4byte 0x02021BD0
_0802F8F4: .4byte 0x00000195

	THUMB_FUNC_START sub_802F8F8
sub_802F8F8: @ 0x0802F8F8
	push {r4, r5, r6, lr}
	ldr r4, _0802F9B4
	movs r5, #0
	ldr r0, _0802F9B8
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0802F9C8
	ldr r1, _0802F9BC
	ldrb r0, [r1, #5]
	cmp r0, #0xa
	beq _0802F950
	adds r6, r1, #0
_0802F910:
	ldr r0, _0802F9B8
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	ldrh r2, [r4]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	movs r1, #4
	subs r1, r1, r5
	adds r1, r1, r6
	ldr r3, _0802F9C0
	adds r0, r3, #0
	ldrb r1, [r1]
	adds r0, r0, r1
	orrs r0, r2
	strh r0, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bhi _0802F950
	movs r0, #5
	subs r0, r0, r5
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0802F910
_0802F950:
	cmp r5, #3
	bhi _0802F96C
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F958:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0802F958
_0802F96C:
	adds r4, #2
	ldrh r1, [r4]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r0, r1
	ldr r3, _0802F9C4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	subs r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	subs r4, #2
	ldrh r0, [r4]
	ands r2, r0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	b _0802F9E0
	.align 2, 0
_0802F9B4: .4byte 0x0201007A
_0802F9B8: .4byte gCardInfo
_0802F9BC: .4byte 0x02021BD0
_0802F9C0: .4byte 0x00000195
_0802F9C4: .4byte 0x0000013F
_0802F9C8:
	movs r2, #0xf0
	lsls r2, r2, #8
_0802F9CC:
	ldrh r0, [r4]
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r4]
	subs r4, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0802F9CC
_0802F9E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802F9E8
sub_802F9E8: @ 0x0802F9E8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r3, _0802FACC
	movs r6, #0
	movs r5, #0xa0
_0802F9F2:
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
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	bge _0802F9F2
	movs r4, #0
_0802FA24:
	lsls r0, r4, #7
	ldr r1, _0802FAD0
	adds r0, r0, r1
	lsls r1, r4, #0xa
	ldr r2, _0802FAD4
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0802FA24
	ldr r0, _0802FAD8
	ldr r1, _0802FADC
	movs r2, #0x10
	bl CpuSet
	bl sub_802FB08
	movs r4, #0
_0802FA50:
	lsls r0, r4, #7
	ldr r1, _0802FAE0
	adds r0, r0, r1
	lsls r1, r4, #0xa
	ldr r2, _0802FAE4
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0802FA50
	bl sub_80300F8
	movs r4, #0
_0802FA72:
	lsls r0, r4, #6
	ldr r1, _0802FAE8
	adds r0, r0, r1
	lsls r1, r4, #0xa
	ldr r2, _0802FAEC
	adds r1, r1, r2
	movs r2, #0x20
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0802FA72
	ldr r0, _0802FAF0
	ldr r1, _0802FAF4
	movs r2, #0x10
	bl CpuSet
	movs r4, #0
_0802FA9A:
	lsls r0, r4, #5
	ldr r1, _0802FAF8
	adds r0, r0, r1
	lsls r1, r4, #0xa
	ldr r2, _0802FAFC
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0802FA9A
	ldr r0, _0802FB00
	ldr r1, _0802FB04
	movs r2, #0x10
	bl CpuSet
	bl sub_803028C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FACC: .4byte gOamBuffer
_0802FAD0: .4byte 0x080CD2A0
_0802FAD4: .4byte 0x02010400
_0802FAD8: .4byte 0x080CD4A0
_0802FADC: .4byte 0x02000300
_0802FAE0: .4byte 0x080CD4C0
_0802FAE4: .4byte 0x02010480
_0802FAE8: .4byte 0x080CD200
_0802FAEC: .4byte 0x02010500
_0802FAF0: .4byte 0x080CD280
_0802FAF4: .4byte 0x02000320
_0802FAF8: .4byte 0x080CD1A0
_0802FAFC: .4byte 0x02010D00
_0802FB00: .4byte 0x080CD1E0
_0802FB04: .4byte 0x02000340

	THUMB_FUNC_START sub_802FB08
sub_802FB08: @ 0x0802FB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0802FBDC
	ldr r0, _0802FBE0
	mov sb, r0
	ldr r2, _0802FBE4
	ldr r7, _0802FBE8
	adds r5, r2, r7
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r6, _0802FBEC
	ands r1, r6
	ldr r0, _0802FBF0
	mov r8, r0
	adds r7, #1
	adds r2, r2, r7
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	add r0, r8
	ldrb r0, [r0]
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r3]
	movs r4, #0x88
	lsls r4, r4, #8
	str r4, [r3, #4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	adds r0, #0x1e
	lsls r0, r0, #0x10
	ands r0, r6
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #1
	add r1, r8
	movs r7, #0xff
	mov sl, r7
	ldrb r1, [r1]
	orrs r0, r1
	movs r1, #0x90
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	str r4, [r3, #0xc]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ands r1, r6
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x1e
	ands r0, r7
	orrs r1, r0
	movs r0, #0xa0
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r3, #0x10]
	str r4, [r3, #0x14]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	adds r1, #0x1e
	lsls r1, r1, #0x10
	ands r1, r6
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x1e
	ands r0, r7
	orrs r1, r0
	movs r0, #0xb0
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r3, #0x18]
	str r4, [r3, #0x1c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBDC: .4byte gOamBuffer
_0802FBE0: .4byte 0x080CDE64
_0802FBE4: .4byte 0x02022450
_0802FBE8: .4byte 0x00000722
_0802FBEC: .4byte 0x01FF0000
_0802FBF0: .4byte 0x080CDE5A

	THUMB_FUNC_START sub_802FBF4
sub_802FBF4: @ 0x0802FBF4
	ldr r1, _0802FC08
	movs r0, #0xcc
	strh r0, [r1]
	ldr r1, _0802FC0C
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802FC10
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802FC08: .4byte gBLDCNT
_0802FC0C: .4byte gBLDALPHA
_0802FC10: .4byte gBLDY

	THUMB_FUNC_START sub_802FC14
sub_802FC14: @ 0x0802FC14
	ldr r1, _0802FC28
	movs r0, #0xdc
	strh r0, [r1]
	ldr r1, _0802FC2C
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802FC30
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802FC28: .4byte gBLDCNT
_0802FC2C: .4byte gBLDALPHA
_0802FC30: .4byte gBLDY

	THUMB_FUNC_START sub_802FC34
sub_802FC34: @ 0x0802FC34
	push {lr}
	ldr r0, _0802FC44
	ldr r1, _0802FC48
	ldr r2, _0802FC4C
	bl sub_8020A3C
	pop {r0}
	bx r0
	.align 2, 0
_0802FC44: .4byte 0x0200D400
_0802FC48: .4byte 0x080CD6C0
_0802FC4C: .4byte 0x00000901

	THUMB_FUNC_START sub_802FC50
sub_802FC50: @ 0x0802FC50
	push {lr}
	ldr r0, _0802FC60
	ldr r1, _0802FC64
	ldr r2, _0802FC68
	bl sub_8020A3C
	pop {r0}
	bx r0
	.align 2, 0
_0802FC60: .4byte 0x0200D400
_0802FC64: .4byte 0x080CD778
_0802FC68: .4byte 0x00000901

	THUMB_FUNC_START sub_802FC6C
sub_802FC6C: @ 0x0802FC6C
	ldr r1, _0802FC84
	movs r2, #0
	movs r0, #0xa0
	strh r0, [r1, #0x28]
	movs r0, #0xf0
	strh r0, [r1, #0x2a]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r1, #0x2c]
	strh r2, [r1, #0x2e]
	bx lr
	.align 2, 0
_0802FC84: .4byte gOamBuffer

	THUMB_FUNC_START sub_802FC88
sub_802FC88: @ 0x0802FC88
	push {r4, lr}
	ldr r0, _0802FCD4
	ldr r1, _0802FCD8
	ldr r2, _0802FCDC
	bl sub_8020A3C
	bl sub_803015C
	bl sub_80301A8
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _0802FCE0
	ands r0, r1
	strh r0, [r4]
	ldr r0, _0802FCE4
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock2
	bl LoadCharblock3
	ldr r1, _0802FCE8
	ldr r2, _0802FCEC
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FCD4: .4byte 0x0200D400
_0802FCD8: .4byte 0x080CD778
_0802FCDC: .4byte 0x00000901
_0802FCE0: .4byte 0x0000FEFF
_0802FCE4: .4byte LoadOam
_0802FCE8: .4byte 0x04000008
_0802FCEC: .4byte 0x0000140C

	THUMB_FUNC_START sub_802FCF0
sub_802FCF0: @ 0x0802FCF0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	ldr r2, _0802FD40
	ldrh r4, [r2]
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r1, r4
	lsrs r4, r0, #0x16
	movs r5, #0xac
	lsls r5, r5, #1
	adds r0, r4, r5
	orrs r1, r0
	strh r1, [r2]
	adds r2, #2
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	adds r5, #1
	adds r1, r4, r5
	orrs r0, r1
	strh r0, [r2]
	adds r2, #0x3e
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	adds r5, #1
	adds r1, r4, r5
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r2]
	ands r3, r0
	ldr r1, _0802FD44
	adds r0, r4, r1
	orrs r3, r0
	strh r3, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FD40: .4byte 0x0200FC44
_0802FD44: .4byte 0x0000015B

	THUMB_FUNC_START sub_802FD48
sub_802FD48: @ 0x0802FD48
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	bl sub_802F66C
	bl sub_802F5B0
	bl sub_802FDC0
	bl sub_802F530
	bl sub_802F3B8
	bl sub_802F2EC
	bl sub_802F6E8
	bl sub_802EB64
	bl sub_802EE34
	bl sub_802F7F0
	bl sub_802F8F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802FD84
sub_802FD84: @ 0x0802FD84
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	bl sub_802F66C
	bl sub_802F5B0
	bl sub_802FDC0
	bl sub_802F530
	bl sub_802F3B8
	bl sub_802F2EC
	bl sub_802F6E8
	bl sub_802ECCC
	bl sub_802EFFC
	bl sub_802F7F0
	bl sub_802F8F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802FDC0
sub_802FDC0: @ 0x0802FDC0
	push {r4, r5, r6, lr}
	ldr r6, _0802FDF4
	ldrb r0, [r6, #0x17]
	ldr r4, _0802FDF8
	adds r1, r4, #0
	bl CopyAttributeIconTilesToBuffer
	ldrb r0, [r6, #0x17]
	ldr r5, _0802FDFC
	adds r1, r5, #0
	bl CopyAttributeIconPalToBuffer
	ldrb r0, [r6, #0x16]
	subs r4, #0x80
	adds r1, r4, #0
	bl CopyTypeIconTilesToBuffer
	ldrb r0, [r6, #0x16]
	subs r5, #0x20
	adds r1, r5, #0
	bl CopyTypeIconPalToBuffer
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FDF4: .4byte gCardInfo
_0802FDF8: .4byte 0x0200F9A0
_0802FDFC: .4byte 0x02000180

	THUMB_FUNC_START sub_802FE00
sub_802FE00: @ 0x0802FE00
	push {r4, lr}
	sub sp, #4
	bl sub_8030068
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0802FE54
	ldr r2, _0802FE58
	mov r0, sp
	bl CpuSet
	bl sub_802FE68
	ldr r4, _0802FE5C
	adds r0, r4, #0
	bl sub_8057418
	movs r0, #0
	strh r0, [r4]
	movs r4, #0
_0802FE2A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _0802FE60
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _0802FE64
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x23
	bls _0802FE2A
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE54: .4byte 0x02000400
_0802FE58: .4byte 0x01000020
_0802FE5C: .4byte 0x02000000
_0802FE60: .4byte 0x080CB884
_0802FE64: .4byte 0x02009400

	THUMB_FUNC_START sub_802FE68
sub_802FE68: @ 0x0802FE68
	push {r4, lr}
	movs r4, #0
_0802FE6C:
	adds r0, r4, #0
	bl sub_802FE84
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0802FE6C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802FE84
sub_802FE84: @ 0x0802FE84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_802DE84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r2, r1, #0xa
	ldr r0, _0802FEC4
	adds r5, r2, r0
	movs r6, #0
	ldr r0, _0802FEC8
	mov r8, r0
	lsls r7, r1, #1
_0802FEA8:
	lsls r0, r6, #1
	adds r0, r0, r7
	add r0, r8
	ldrh r4, [r0]
	cmp r4, #0
	bne _0802FED0
	ldr r0, _0802FECC
	adds r1, r5, #0
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuSet
	b _0802FEF8
	.align 2, 0
_0802FEC4: .4byte 0x02000440
_0802FEC8: .4byte 0x020224DC
_0802FECC: .4byte 0x080CC0F4
_0802FED0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_805742C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802FF4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802FF14
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802FF78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802FFF0
_0802FEF8:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _0802FEA8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_802FF14
sub_802FF14: @ 0x0802FF14
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc0
	bl SetCardInfo
	ldr r1, _0802FF44
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _0802FF3C
	ldr r0, _0802FF48
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0802FF3C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FF44: .4byte gCardInfo
_0802FF48: .4byte 0x08E1168C

	THUMB_FUNC_START sub_802FF4C
sub_802FF4C: @ 0x0802FF4C
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl sub_8045410
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802FF6E
	lsls r0, r0, #6
	ldr r1, _0802FF74
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuSet
_0802FF6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FF74: .4byte 0x089A7ADE

	THUMB_FUNC_START sub_802FF78
sub_802FF78: @ 0x0802FF78
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r1, _0802FFA8
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _0802FFDC
	ldrh r0, [r1, #0x12]
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _0802FFAC
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _0802FFB2
	.align 2, 0
_0802FFA8: .4byte gCardInfo
_0802FFAC:
	movs r1, #0
	bl sub_800DDA0
_0802FFB2:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r4, _0802FFE4
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _0802FFE8
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _0802FFEC
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_0802FFDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FFE4: .4byte 0x02021BD0
_0802FFE8: .4byte 0x089A81DE
_0802FFEC: .4byte 0x089A7F1E

	THUMB_FUNC_START sub_802FFF0
sub_802FFF0: @ 0x0802FFF0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldr r1, _08030020
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	bne _08030054
	ldrh r0, [r1, #0x14]
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x63
	bls _08030024
	movs r0, #0x63
	movs r1, #0
	bl sub_800DDA0
	b _0803002A
	.align 2, 0
_08030020: .4byte gCardInfo
_08030024:
	movs r1, #0
	bl sub_800DDA0
_0803002A:
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r4, _0803005C
	ldrb r0, [r4, #3]
	lsls r0, r0, #6
	ldr r1, _08030060
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	adds r5, #0x40
	ldrb r0, [r4, #4]
	lsls r0, r0, #6
	ldr r1, _08030064
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
_08030054:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803005C: .4byte 0x02021BD0
_08030060: .4byte 0x089A875E
_08030064: .4byte 0x089A849E

	THUMB_FUNC_START sub_8030068
sub_8030068: @ 0x08030068
	ldr r1, _08030080
	ldr r0, _08030084
	ldr r2, _08030088
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0803008C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08030080: .4byte gBG2VOFS
_08030084: .4byte 0x02022450
_08030088: .4byte 0x00000724
_0803008C: .4byte gBG2HOFS

	THUMB_FUNC_START sub_8030090
sub_8030090: @ 0x08030090
	push {r4, lr}
	ldr r0, _080300D8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080300DC
	strh r1, [r0]
	ldr r0, _080300E0
	ldr r1, _080300E4
	bl LZ77UnCompWram
	ldr r0, _080300E8
	ldr r1, _080300EC
	movs r2, #0x30
	bl CpuSet
	movs r4, #0
_080300B0:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080300F0
	adds r0, r0, r1
	lsls r1, r4, #6
	ldr r2, _080300F4
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x13
	bls _080300B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080300D8: .4byte gBG3VOFS
_080300DC: .4byte gBG3HOFS
_080300E0: .4byte 0x080CC4F4
_080300E4: .4byte 0x0200C400
_080300E8: .4byte 0x080CCC90
_080300EC: .4byte 0x020001A0
_080300F0: .4byte 0x080CCCF0
_080300F4: .4byte 0x0200BC00

	THUMB_FUNC_START sub_80300F8
sub_80300F8: @ 0x080300F8
	push {r4, lr}
	ldr r4, _08030138
	ldr r1, _0803013C
	ldr r2, _08030140
	ldr r3, _08030144
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08030148
	ands r1, r0
	ldr r3, _0803014C
	ldr r0, _08030150
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	orrs r1, r0
	ldr r0, _08030154
	orrs r1, r0
	str r1, [r4]
	ldr r0, _08030158
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030138: .4byte 0x02018420
_0803013C: .4byte 0x080CDE7C
_08030140: .4byte 0x02022450
_08030144: .4byte 0x00000722
_08030148: .4byte 0x01FF0000
_0803014C: .4byte 0x080CDE72
_08030150: .4byte 0x00000723
_08030154: .4byte 0x80000800
_08030158: .4byte 0x00000804

	THUMB_FUNC_START sub_803015C
sub_803015C: @ 0x0803015C
	ldr r3, _0803018C
	ldr r1, _08030190
	ldr r0, _08030194
	ldr r2, _08030198
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _0803019C
	ands r0, r1
	ldr r1, _080301A0
	adds r2, r2, r1
	ldrb r1, [r2]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3]
	ldr r0, _080301A4
	str r0, [r3, #4]
	bx lr
	.align 2, 0
_0803018C: .4byte 0x02018428
_08030190: .4byte 0x080CDE90
_08030194: .4byte 0x02022450
_08030198: .4byte 0x00000726
_0803019C: .4byte 0x01FF0000
_080301A0: .4byte 0x080CDE8A
_080301A4: .4byte 0x00009408

	THUMB_FUNC_START sub_80301A8
sub_80301A8: @ 0x080301A8
	ldr r3, _080301D8
	ldr r1, _080301DC
	ldr r0, _080301E0
	ldr r2, _080301E4
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _080301E8
	ands r0, r1
	ldr r1, _080301EC
	adds r2, r2, r1
	ldrb r1, [r2]
	orrs r0, r1
	ldr r1, _080301F0
	orrs r0, r1
	str r0, [r3]
	movs r0, #0x81
	lsls r0, r0, #3
	str r0, [r3, #4]
	bx lr
	.align 2, 0
_080301D8: .4byte 0x02018420
_080301DC: .4byte 0x080CDE90
_080301E0: .4byte 0x02022450
_080301E4: .4byte 0x00000726
_080301E8: .4byte 0x01FF0000
_080301EC: .4byte 0x080CDE8A
_080301F0: .4byte 0x40000800

	THUMB_FUNC_START sub_80301F4
sub_80301F4: @ 0x080301F4
	ldr r3, _08030224
	ldr r1, _08030228
	ldr r0, _0803022C
	ldr r2, _08030230
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08030234
	ands r0, r1
	ldr r1, _08030238
	adds r2, r2, r1
	ldrb r1, [r2]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3]
	ldr r0, _0803023C
	str r0, [r3, #4]
	bx lr
	.align 2, 0
_08030224: .4byte 0x02018428
_08030228: .4byte 0x080CDE96
_0803022C: .4byte 0x02022450
_08030230: .4byte 0x00000726
_08030234: .4byte 0x01FF0000
_08030238: .4byte 0x080CDEAC
_0803023C: .4byte 0x00009408

	THUMB_FUNC_START sub_8030240
sub_8030240: @ 0x08030240
	ldr r3, _08030270
	ldr r1, _08030274
	ldr r0, _08030278
	ldr r2, _0803027C
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08030280
	ands r0, r1
	ldr r1, _08030284
	adds r2, r2, r1
	ldrb r1, [r2]
	orrs r0, r1
	ldr r1, _08030288
	orrs r0, r1
	str r0, [r3]
	movs r0, #0x81
	lsls r0, r0, #3
	str r0, [r3, #4]
	bx lr
	.align 2, 0
_08030270: .4byte 0x02018420
_08030274: .4byte 0x080CDE96
_08030278: .4byte 0x02022450
_0803027C: .4byte 0x00000726
_08030280: .4byte 0x01FF0000
_08030284: .4byte 0x080CDEAC
_08030288: .4byte 0x40000800

	THUMB_FUNC_START sub_803028C
sub_803028C: @ 0x0803028C
	push {r4, lr}
	ldr r4, _080302DC
	ldr r1, _080302E0
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, _080302E4
	adds r1, r4, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	bl sub_802DED4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #7
	subs r2, r2, r0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	bl _divsi3
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080302E8
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080302EC
	str r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080302DC: .4byte 0x02022450
_080302E0: .4byte 0x0000071E
_080302E4: .4byte 0x00000723
_080302E8: .4byte 0x02018430
_080302EC: .4byte 0x0000AC48

	THUMB_FUNC_START sub_80302F0
sub_80302F0: @ 0x080302F0
	push {lr}
	ldr r0, _08030300
	ldr r1, _08030304
	ldr r2, _08030308
	bl sub_8020A3C
	pop {r0}
	bx r0
	.align 2, 0
_08030300: .4byte 0x0200D400
_08030304: .4byte 0x080CD830
_08030308: .4byte 0x00000901

	THUMB_FUNC_START sub_803030C
sub_803030C: @ 0x0803030C
	push {r4, lr}
	ldr r0, _0803035C
	ldr r2, _08030360
	adds r1, r0, r2
	ldrb r1, [r1]
	ldr r3, _08030364
	adds r0, r0, r3
	strb r1, [r0]
	bl sub_802FC14
	bl sub_80302F0
	bl sub_80301F4
	bl sub_8030240
	bl sub_80309D8
	ldr r0, _08030368
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0x37
	bl PlayMusic
	movs r4, #1
_08030342:
	bl sub_802C0BC
	cmp r0, #0x10
	beq _08030398
	cmp r0, #0x10
	bgt _08030372
	cmp r0, #2
	beq _080303D4
	cmp r0, #2
	bgt _0803036C
	cmp r0, #1
	beq _080303A4
	b _080303E0
	.align 2, 0
_0803035C: .4byte 0x02022450
_08030360: .4byte 0x00000725
_08030364: .4byte 0x00000726
_08030368: .4byte 0x080306E1
_0803036C:
	cmp r0, #8
	beq _080303D4
	b _080303E0
_08030372:
	cmp r0, #0x40
	beq _08030386
	cmp r0, #0x40
	bgt _08030380
	cmp r0, #0x20
	beq _08030392
	b _080303E0
_08030380:
	cmp r0, #0x80
	beq _0803038C
	b _080303E0
_08030386:
	bl sub_8030494
	b _0803039C
_0803038C:
	bl sub_80304E4
	b _0803039C
_08030392:
	bl sub_8030534
	b _0803039C
_08030398:
	bl sub_8030584
_0803039C:
	movs r0, #0x36
	bl PlayMusic
	b _080303E4
_080303A4:
	ldr r2, _080303BC
	ldr r1, _080303C0
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #0xa
	bne _080303C4
	bl sub_80305D4
	movs r0, #0x37
	bl PlayMusic
	b _080303E8
	.align 2, 0
_080303BC: .4byte 0x02022450
_080303C0: .4byte 0x00000726
_080303C4:
	ldr r3, _080303D0
	adds r0, r2, r3
	strb r1, [r0]
	bl sub_80303F0
	b _080303E8
	.align 2, 0
_080303D0: .4byte 0x00000725
_080303D4:
	bl sub_80305D4
	movs r0, #0x38
	bl PlayMusic
	b _080303E8
_080303E0:
	bl sub_8008220
_080303E4:
	cmp r4, #0
	bne _08030342
_080303E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80303F0
sub_80303F0: @ 0x080303F0
	push {r4, r5, lr}
	ldr r4, _0803047C
	ldr r1, _08030480
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r1, #1
	adds r5, r4, r1
	strb r0, [r5]
	ldrb r0, [r5]
	bl sub_802DFF8
	bl sub_802DF1C
	bl sub_802DF88
	ldr r1, _08030484
	adds r0, r4, r1
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, #1
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r4, [r0]
	ldr r1, _08030488
	strh r4, [r1, #0x10]
	ldr r0, _0803048C
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x12]
	bl sub_800BD34
	movs r0, #0x37
	bl PlayMusic
	bl sub_802FBF4
	ldrb r0, [r5]
	bl sub_802FCF0
	adds r0, r4, #0
	bl sub_802FD48
	bl sub_802FE68
	bl sub_8030068
	bl sub_803028C
	bl sub_80300F8
	bl sub_802FC6C
	ldr r0, _08030490
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A48
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803047C: .4byte 0x02022450
_08030480: .4byte 0x00000726
_08030484: .4byte 0x00000722
_08030488: .4byte 0x02021AF0
_0803048C: .4byte 0x02022120
_08030490: .4byte 0x0803071D

	THUMB_FUNC_START sub_8030494
sub_8030494: @ 0x08030494
	push {lr}
	bl sub_802E094
	ldr r2, _080304B4
	ldr r0, _080304B8
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _080304C0
	ldr r1, _080304BC
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _080304C6
	.align 2, 0
_080304B4: .4byte 0x02022450
_080304B8: .4byte 0x00000726
_080304BC: .4byte 0x00000725
_080304C0:
	ldrb r0, [r1]
	bl sub_802FCF0
_080304C6:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _080304E0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_080304E0: .4byte 0x08030711

	THUMB_FUNC_START sub_80304E4
sub_80304E4: @ 0x080304E4
	push {lr}
	bl sub_802E0B4
	ldr r2, _08030504
	ldr r0, _08030508
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _08030510
	ldr r1, _0803050C
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _08030516
	.align 2, 0
_08030504: .4byte 0x02022450
_08030508: .4byte 0x00000726
_0803050C: .4byte 0x00000725
_08030510:
	ldrb r0, [r1]
	bl sub_802FCF0
_08030516:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _08030530
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_08030530: .4byte 0x08030711

	THUMB_FUNC_START sub_8030534
sub_8030534: @ 0x08030534
	push {lr}
	bl sub_802E0D4
	ldr r2, _08030554
	ldr r0, _08030558
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _08030560
	ldr r1, _0803055C
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _08030566
	.align 2, 0
_08030554: .4byte 0x02022450
_08030558: .4byte 0x00000726
_0803055C: .4byte 0x00000725
_08030560:
	ldrb r0, [r1]
	bl sub_802FCF0
_08030566:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _08030580
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_08030580: .4byte 0x08030711

	THUMB_FUNC_START sub_8030584
sub_8030584: @ 0x08030584
	push {lr}
	bl sub_802E0F4
	ldr r2, _080305A4
	ldr r0, _080305A8
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _080305B0
	ldr r1, _080305AC
	adds r0, r2, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	b _080305B6
	.align 2, 0
_080305A4: .4byte 0x02022450
_080305A8: .4byte 0x00000726
_080305AC: .4byte 0x00000725
_080305B0:
	ldrb r0, [r1]
	bl sub_802FCF0
_080305B6:
	bl sub_80301F4
	bl sub_8030240
	ldr r0, _080305D0
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030A10
	pop {r0}
	bx r0
	.align 2, 0
_080305D0: .4byte 0x08030711

	THUMB_FUNC_START sub_80305D4
sub_80305D4: @ 0x080305D4
	push {lr}
	ldr r0, _08030600
	ldr r1, _08030604
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_802FCF0
	bl sub_80300F8
	bl sub_802FBF4
	bl sub_802FC6C
	ldr r0, _08030608
	bl sub_80081DC
	bl sub_8008220
	bl sub_8030AF8
	pop {r0}
	bx r0
	.align 2, 0
_08030600: .4byte 0x02022450
_08030604: .4byte 0x00000725
_08030608: .4byte 0x0803073D

	THUMB_FUNC_START sub_803060C
sub_803060C: @ 0x0803060C
	push {lr}
	bl sub_8045718
	ldr r1, _08030640
	ldr r2, _08030644
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08030648
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803064C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x3c
	ldr r2, _08030650
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadBgOffsets
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08030640: .4byte 0x0400000A
_08030644: .4byte 0x00001F0D
_08030648: .4byte 0x00009282
_0803064C: .4byte 0x0000170F
_08030650: .4byte 0x00001C3F

	THUMB_FUNC_START sub_8030654
sub_8030654: @ 0x08030654
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030660
sub_8030660: @ 0x08030660
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x14, 0xF0
	.byte 0x2B, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8030678
sub_8030678: @ 0x08030678
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030684
sub_8030684: @ 0x08030684
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030690
sub_8030690: @ 0x08030690
	push {lr}
	ldr r1, _080306B8
	ldr r2, _080306BC
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl LoadOam
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_080306B8: .4byte 0x04000008
_080306BC: .4byte 0x0000140C

	THUMB_FUNC_START sub_80306C0
sub_80306C0: @ 0x080306C0
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080306DC
	ands r0, r1
	strh r0, [r2]
	bl LoadOam
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_080306DC: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_80306E0
sub_80306E0: @ 0x080306E0
	push {lr}
	ldr r1, _08030708
	ldr r2, _0803070C
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bl LoadOam
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08030708: .4byte 0x04000008
_0803070C: .4byte 0x0000150C

	THUMB_FUNC_START sub_8030710
sub_8030710: @ 0x08030710
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803071C
sub_803071C: @ 0x0803071C
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08030738
	ands r0, r1
	strh r0, [r2]
	bl LoadOam
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08030738: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803073C
sub_803073C: @ 0x0803073C
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08030758
	ands r0, r1
	strh r0, [r2]
	bl LoadOam
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08030758: .4byte 0x0000FEFF
	.byte 0x70, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8030760
sub_8030760: @ 0x08030760
	push {lr}
	bl LoadVRAM
	bl LoadPalettes
	bl LoadBlendingRegs
	bl LoadBgOffsets
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9e
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030784
sub_8030784: @ 0x08030784
	push {lr}
	ldr r1, _080307B0
	ldr r2, _080307B4
	adds r0, r2, #0
	strh r0, [r1]
	bl LoadVRAM
	bl LoadPalettes
	bl LoadBlendingRegs
	bl LoadBgOffsets
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x9f
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080307B0: .4byte 0x04000008
_080307B4: .4byte 0x0000140C
	.byte 0x00, 0xB5, 0x06, 0x48, 0x06, 0x49, 0x20, 0x22
	.byte 0x27, 0xF0, 0xC8, 0xFF, 0x05, 0x48, 0x06, 0x49, 0xE0, 0x22, 0x12, 0x01, 0x27, 0xF0, 0xC2, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x60, 0x01, 0x00, 0x02, 0x60, 0x01, 0x00, 0x05, 0x20, 0xF9, 0x00, 0x02
	.byte 0x20, 0xF5, 0x00, 0x06

	THUMB_FUNC_START sub_80307E4
sub_80307E4: @ 0x080307E4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #0xa
	ldr r4, _08030824
	adds r0, r1, r4
	ldr r2, _08030828
	adds r1, r1, r2
	movs r5, #0xe0
	lsls r5, r5, #4
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0803082C
	ldr r1, _08030830
	movs r2, #0x20
	bl CpuSet
	ldr r0, _08030834
	adds r4, r4, r0
	ldr r1, _08030838
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	bl LoadBgOffsets
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030824: .4byte 0x02000440
_08030828: .4byte 0x06000040
_0803082C: .4byte 0x02000160
_08030830: .4byte 0x05000160
_08030834: .4byte 0x0000F4E0
_08030838: .4byte 0x0600F520

	THUMB_FUNC_START sub_803083C
sub_803083C: @ 0x0803083C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl LoadBgOffsets
	lsls r1, r4, #3
	subs r1, r1, r4
	lsls r1, r1, #0xa
	ldr r4, _08030880
	adds r0, r1, r4
	ldr r2, _08030884
	adds r1, r1, r2
	movs r5, #0xe0
	lsls r5, r5, #4
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08030888
	ldr r1, _0803088C
	movs r2, #0x20
	bl CpuSet
	ldr r0, _08030890
	adds r4, r4, r0
	ldr r1, _08030894
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030880: .4byte 0x02000440
_08030884: .4byte 0x06000040
_08030888: .4byte 0x02000160
_0803088C: .4byte 0x05000160
_08030890: .4byte 0x0000F4E0
_08030894: .4byte 0x0600F520

	THUMB_FUNC_START sub_8030898
sub_8030898: @ 0x08030898
	push {r4, r5, lr}
	bl LoadBgOffsets
	ldr r4, _080308FC
	ldr r1, _08030900
	movs r5, #0xe0
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030904
	adds r0, r4, r1
	ldr r1, _08030908
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _0803090C
	adds r0, r4, r1
	ldr r1, _08030910
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030914
	adds r0, r4, r1
	ldr r1, _08030918
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _0803091C
	adds r0, r4, r1
	ldr r1, _08030920
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08030924
	ldr r1, _08030928
	movs r2, #0x20
	bl CpuSet
	ldr r0, _0803092C
	adds r4, r4, r0
	ldr r1, _08030930
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080308FC: .4byte 0x02007440
_08030900: .4byte 0x06007040
_08030904: .4byte 0xFFFF9000
_08030908: .4byte 0x06000040
_0803090C: .4byte 0xFFFFAC00
_08030910: .4byte 0x06001C40
_08030914: .4byte 0xFFFFC800
_08030918: .4byte 0x06003840
_0803091C: .4byte 0xFFFFE400
_08030920: .4byte 0x06005440
_08030924: .4byte 0x02000160
_08030928: .4byte 0x05000160
_0803092C: .4byte 0x000084E0
_08030930: .4byte 0x0600F520

	THUMB_FUNC_START sub_8030934
sub_8030934: @ 0x08030934
	push {r4, lr}
	ldr r4, _0803095C
	ldr r1, _08030960
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _08030964
	adds r4, r4, r0
	ldr r1, _08030968
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803095C: .4byte 0x0200D400
_08030960: .4byte 0x0600D000
_08030964: .4byte 0xFFFFD000
_08030968: .4byte 0x0600A000

	THUMB_FUNC_START sub_803096C
sub_803096C: @ 0x0803096C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #0xa
	ldr r4, _080309B8
	adds r0, r1, r4
	ldr r2, _080309BC
	adds r1, r1, r2
	movs r5, #0xe0
	lsls r5, r5, #4
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _080309C0
	ldr r1, _080309C4
	movs r2, #0x20
	bl CpuSet
	ldr r1, _080309C8
	adds r0, r4, r1
	ldr r1, _080309CC
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _080309D0
	adds r4, r4, r2
	ldr r1, _080309D4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080309B8: .4byte 0x02000440
_080309BC: .4byte 0x06000040
_080309C0: .4byte 0x02000160
_080309C4: .4byte 0x05000160
_080309C8: .4byte 0x0000F4E0
_080309CC: .4byte 0x0600F520
_080309D0: .4byte 0x00009FC0
_080309D4: .4byte 0x0600A000

	THUMB_FUNC_START sub_80309D8
sub_80309D8: @ 0x080309D8
	push {r4, lr}
	ldr r4, _08030A00
	ldr r1, _08030A04
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _08030A08
	adds r4, r4, r0
	ldr r1, _08030A0C
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030A00: .4byte 0x0200D400
_08030A04: .4byte 0x0600D000
_08030A08: .4byte 0xFFFFD800
_08030A0C: .4byte 0x0600A800

	THUMB_FUNC_START sub_8030A10
sub_8030A10: @ 0x08030A10
	push {r4, lr}
	ldr r4, _08030A38
	ldr r1, _08030A3C
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	ldr r0, _08030A40
	adds r4, r4, r0
	ldr r1, _08030A44
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030A38: .4byte 0x0200AC00
_08030A3C: .4byte 0x0600A800
_08030A40: .4byte 0x00004D20
_08030A44: .4byte 0x0600F520

	THUMB_FUNC_START sub_8030A48
sub_8030A48: @ 0x08030A48
	push {r4, r5, lr}
	bl LoadBgOffsets
	ldr r4, _08030ABC
	ldr r1, _08030AC0
	movs r5, #0xe0
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030AC4
	adds r0, r4, r1
	ldr r1, _08030AC8
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030ACC
	adds r0, r4, r1
	ldr r1, _08030AD0
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030AD4
	adds r0, r4, r1
	ldr r1, _08030AD8
	adds r2, r5, #0
	bl CpuSet
	ldr r1, _08030ADC
	adds r0, r4, r1
	ldr r1, _08030AE0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _08030AE4
	ldr r1, _08030AE8
	movs r2, #0x20
	bl CpuSet
	ldr r1, _08030AEC
	adds r0, r4, r1
	ldr r1, _08030AF0
	adds r2, r5, #0
	bl CpuSet
	movs r0, #0xdf
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r1, _08030AF4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030ABC: .4byte 0x02007440
_08030AC0: .4byte 0x06007040
_08030AC4: .4byte 0xFFFF9000
_08030AC8: .4byte 0x06000040
_08030ACC: .4byte 0xFFFFAC00
_08030AD0: .4byte 0x06001C40
_08030AD4: .4byte 0xFFFFC800
_08030AD8: .4byte 0x06003840
_08030ADC: .4byte 0xFFFFE400
_08030AE0: .4byte 0x06005440
_08030AE4: .4byte 0x02000160
_08030AE8: .4byte 0x05000160
_08030AEC: .4byte 0x000084E0
_08030AF0: .4byte 0x0600F520
_08030AF4: .4byte 0x0600A800

	THUMB_FUNC_START sub_8030AF8
sub_8030AF8: @ 0x08030AF8
	push {lr}
	ldr r0, _08030B0C
	ldr r1, _08030B10
	movs r2, #0xe0
	lsls r2, r2, #4
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08030B0C: .4byte 0x0200F920
_08030B10: .4byte 0x0600F520
	.byte 0x30, 0xB5, 0x01, 0xF0, 0x4F, 0xFE, 0x01, 0x28, 0x03, 0xD1, 0x09, 0x48
	.byte 0x34, 0x30, 0xFF, 0x21, 0x01, 0x70, 0x07, 0x4C, 0x25, 0x1C, 0x34, 0x35, 0x28, 0x78, 0x00, 0x28
	.byte 0x10, 0xD1, 0x01, 0xF0, 0x7D, 0xFE, 0x62, 0x68, 0x20, 0x68, 0x82, 0x42, 0x06, 0xD3, 0x02, 0x48
	.byte 0x0B, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03, 0xFD, 0x14, 0x00, 0x00, 0xA1, 0x8B, 0x05, 0x48
	.byte 0x81, 0x42, 0x0B, 0xD0, 0x06, 0x20, 0x28, 0x70, 0x03, 0x48, 0xA0, 0x84, 0x01, 0xF0, 0x5E, 0xFE
	.byte 0x11, 0xE0, 0x00, 0x00, 0xFD, 0x24, 0x00, 0x00, 0xFE, 0x14, 0x00, 0x00, 0x50, 0x1C, 0x60, 0x60
	.byte 0x61, 0x69, 0x48, 0x1C, 0x60, 0x61, 0x48, 0x78, 0x98, 0x22, 0x52, 0x01, 0x11, 0x1C, 0x08, 0x43
	.byte 0xA0, 0x84, 0x01, 0xF0, 0x4B, 0xFE, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x01, 0xF0
	.byte 0x13, 0xFE, 0x01, 0x28, 0x03, 0xD1, 0x09, 0x48, 0x34, 0x30, 0xFF, 0x21, 0x01, 0x70, 0x07, 0x4C
	.byte 0x25, 0x1C, 0x34, 0x35, 0x28, 0x78, 0x00, 0x28, 0x14, 0xD1, 0x01, 0xF0, 0x41, 0xFE, 0x61, 0x68
	.byte 0x20, 0x68, 0x81, 0x42, 0x06, 0xD3, 0x02, 0x48, 0x0F, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03
	.byte 0xFD, 0x14, 0x00, 0x00, 0xA2, 0x8B, 0xFF, 0x20, 0x00, 0x02, 0x10, 0x40, 0x8C, 0x21, 0x89, 0x01
	.byte 0x88, 0x42, 0x09, 0xD0, 0x05, 0x20, 0x28, 0x70, 0x02, 0x48, 0xA0, 0x84, 0x01, 0xF0, 0x1E, 0xFE
	.byte 0x13, 0xE0, 0x00, 0x00, 0xFE, 0x14, 0x00, 0x00, 0xA0, 0x69, 0x02, 0x70, 0x10, 0x06, 0x00, 0x0E
	.byte 0xE1, 0x8C, 0x40, 0x18, 0xE0, 0x84, 0x60, 0x68, 0x01, 0x30, 0x60, 0x60, 0xA0, 0x69, 0x01, 0x30
	.byte 0xA0, 0x61, 0x03, 0x48, 0xA0, 0x84, 0x01, 0xF0, 0x09, 0xFE, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xFD, 0x14, 0x00, 0x00

	THUMB_FUNC_START sub_8030C14
sub_8030C14: @ 0x08030C14
	push {r4, r5, lr}
	ldr r0, _08030C50
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r5, _08030C54
	cmp r0, #1
	bne _08030C2C
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #0xff
	strb r0, [r1]
_08030C2C:
	adds r2, r5, #0
	adds r4, r2, #0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08030C68
	ldr r0, _08030C58
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2, #0x1c]
	str r1, [r2, #0x20]
	ldr r3, [r2, #4]
	ldr r0, [r2]
	cmp r3, r0
	blo _08030C60
	ldr r1, _08030C5C
	b _08030C6E
	.align 2, 0
_08030C50: .4byte 0x04000128
_08030C54: .4byte 0x03000C38
_08030C58: .4byte 0x04000120
_08030C5C: .4byte 0x000014FD
_08030C60:
	ldrh r1, [r2, #0x1c]
	ldr r0, _08030C78
	cmp r1, r0
	beq _08030C84
_08030C68:
	movs r0, #6
	strb r0, [r4]
	ldr r1, _08030C7C
_08030C6E:
	strh r1, [r2, #0x24]
	ldr r0, _08030C80
	strh r1, [r0]
	b _08030C9E
	.align 2, 0
_08030C78: .4byte 0x000024FD
_08030C7C: .4byte 0x000014FE
_08030C80: .4byte 0x0400012A
_08030C84:
	adds r0, r3, #1
	str r0, [r5, #4]
	ldr r1, [r5, #0x14]
	adds r0, r1, #1
	str r0, [r5, #0x14]
	ldrb r0, [r1, #1]
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0x24]
	ldr r1, _08030CA4
	strh r0, [r1]
_08030C9E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030CA4: .4byte 0x0400012A

	THUMB_FUNC_START sub_8030CA8
sub_8030CA8: @ 0x08030CA8
	push {r4, r5, lr}
	ldr r0, _08030CD8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r4, _08030CDC
	cmp r0, #1
	bne _08030CC0
	adds r1, r4, #0
	adds r1, #0x34
	movs r0, #0xff
	strb r0, [r1]
_08030CC0:
	adds r3, r4, #0
	adds r5, r3, #0
	adds r5, #0x34
	ldrb r0, [r5]
	cmp r0, #0
	beq _08030CE4
	movs r0, #5
	strb r0, [r5]
	ldr r1, _08030CE0
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030CD8: .4byte 0x04000128
_08030CDC: .4byte 0x03000C38
_08030CE0: .4byte 0x000014FE
_08030CE4:
	ldr r0, _08030CFC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3, #0x1c]
	str r1, [r3, #0x20]
	ldr r1, [r3, #4]
	ldr r0, [r3]
	cmp r1, r0
	blo _08030D04
	ldr r1, _08030D00
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030CFC: .4byte 0x04000120
_08030D00: .4byte 0x000014FD
_08030D04:
	ldrh r2, [r3, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	movs r1, #0x8c
	lsls r1, r1, #6
	cmp r0, r1
	beq _08030D24
	movs r0, #5
	strb r0, [r5]
	ldr r1, _08030D20
	strh r1, [r3, #0x24]
	b _08030D42
	.align 2, 0
_08030D20: .4byte 0x000014FE
_08030D24:
	ldr r0, [r4, #0x18]
	strb r2, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r1, _08030D4C
	strh r1, [r4, #0x24]
_08030D42:
	ldr r0, _08030D50
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030D4C: .4byte 0x000014FD
_08030D50: .4byte 0x0400012A

	THUMB_FUNC_START sub_8030D54
sub_8030D54: @ 0x08030D54
	push {lr}
	bl sub_80327B8
	cmp r0, #1
	bne _08030D66
	ldr r0, _08030D6C
	adds r0, #0x34
	movs r1, #0xff
	strb r1, [r0]
_08030D66:
	pop {r0}
	bx r0
	.align 2, 0
_08030D6C: .4byte 0x03000C38
	.byte 0x02, 0x4A, 0x11, 0x88, 0x02, 0x48, 0x08, 0x40, 0x10, 0x80, 0x70, 0x47, 0x0E, 0x01, 0x00, 0x04
	.byte 0x3F, 0xFF, 0x00, 0x00

	THUMB_FUNC_START sub_8030D84
sub_8030D84: @ 0x08030D84
	push {lr}
	ldr r0, _08030DA4
	bl sub_8008478
	ldr r3, _08030DA8
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030DAC
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08030DA4: .4byte 0x08030D55
_08030DA8: .4byte 0x04000208
_08030DAC: .4byte 0x04000200

	THUMB_FUNC_START sub_8030DB0
sub_8030DB0: @ 0x08030DB0
	push {lr}
	ldr r3, _08030DD0
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030DD4
	ldrh r1, [r2]
	ldr r0, _08030DD8
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	movs r0, #0
	bl sub_8008478
	pop {r0}
	bx r0
	.align 2, 0
_08030DD0: .4byte 0x04000208
_08030DD4: .4byte 0x04000200
_08030DD8: .4byte 0x0000FF7F

	THUMB_FUNC_START sub_8030DDC
sub_8030DDC: @ 0x08030DDC
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	bl sub_8008490
	b _08030DF0
_08030DE8:
	adds r4, #1
	ldr r0, _08030E08
	cmp r4, r0
	bhi _08030DFE
_08030DF0:
	ldr r0, _08030E0C
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030DE8
	movs r5, #0
_08030DFE:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08030E08: .4byte 0x0000752F
_08030E0C: .4byte 0x02020E00

	THUMB_FUNC_START sub_8030E10
sub_8030E10: @ 0x08030E10
	push {lr}
	bl sub_8030E5C
	ldr r1, _08030E28
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08030E2C
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08030E28: .4byte 0x0400010E
_08030E2C: .4byte 0x0000D880

	THUMB_FUNC_START sub_8030E30
sub_8030E30: @ 0x08030E30
	push {lr}
	ldr r0, _08030E50
	bl sub_8008504
	ldr r3, _08030E54
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030E58
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08030E50: .4byte 0x08030D71
_08030E54: .4byte 0x04000208
_08030E58: .4byte 0x04000200

	THUMB_FUNC_START sub_8030E5C
sub_8030E5C: @ 0x08030E5C
	push {lr}
	ldr r3, _08030E7C
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08030E80
	ldrh r1, [r2]
	ldr r0, _08030E84
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	movs r0, #0
	bl sub_8008504
	pop {r0}
	bx r0
	.align 2, 0
_08030E7C: .4byte 0x04000208
_08030E80: .4byte 0x04000200
_08030E84: .4byte 0x0000FFBF

	THUMB_FUNC_START sub_8030E88
sub_8030E88: @ 0x08030E88
	push {r4, r5, lr}
	movs r5, #1
	movs r4, #0
	bl sub_800851C
	b _08030E9C
_08030E94:
	adds r4, #1
	ldr r0, _08030EB4
	cmp r4, r0
	bhi _08030EAA
_08030E9C:
	ldr r0, _08030EB8
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08030E94
	movs r5, #0
_08030EAA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08030EB4: .4byte 0x0002897F
_08030EB8: .4byte 0x02020E00

	THUMB_FUNC_START sub_8030EBC
sub_8030EBC: @ 0x08030EBC
	ldr r0, _08030EC8
	ldrh r1, [r0]
	movs r2, #0xc0
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08030EC8: .4byte 0x0400010E

	THUMB_FUNC_START sub_8030ECC
sub_8030ECC: @ 0x08030ECC
	ldr r2, _08030ED8
	ldrh r1, [r2]
	ldr r0, _08030EDC
	ands r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08030ED8: .4byte 0x0400010E
_08030EDC: .4byte 0x0000FF3F

	THUMB_FUNC_START sub_8030EE0
sub_8030EE0: @ 0x08030EE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08030EEC
	strh r0, [r1]
	bx lr
	.align 2, 0
_08030EEC: .4byte 0x0400010C

	THUMB_FUNC_START sub_8030EF0
sub_8030EF0: @ 0x08030EF0
	push {r4, r5, r6, r7, lr}
	bl sub_8030D84
	movs r6, #6
	ldr r7, _08030F00
_08030EFA:
	movs r4, #0xa
	b _08030F0A
	.align 2, 0
_08030F00: .4byte 0x03000C6C
_08030F04:
	subs r4, #1
	cmp r4, #0
	beq _08030F26
_08030F0A:
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F04
	bl sub_8031208
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F04
_08030F26:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F7E
	movs r4, #2
	ldr r5, _08030F34
	b _08030F3E
	.align 2, 0
_08030F34: .4byte 0x03000C6C
_08030F38:
	subs r4, #1
	cmp r4, #0
	beq _08030F50
_08030F3E:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030F38
_08030F50:
	ldrb r0, [r7]
	cmp r0, #0
	bne _08030F7E
	movs r4, #2
	ldr r5, _08030F5C
	b _08030F66
	.align 2, 0
_08030F5C: .4byte 0x03000C6C
_08030F60:
	subs r4, #1
	cmp r4, #0
	beq _08030F78
_08030F66:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030F60
_08030F78:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08030F84
_08030F7E:
	subs r6, #1
	cmp r6, #0
	bne _08030EFA
_08030F84:
	bl sub_8030DB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8030F90
sub_8030F90: @ 0x08030F90
	push {r4, r5, r6, r7, lr}
	bl sub_8030D84
	movs r7, #6
	ldr r6, _08030FA0
_08030F9A:
	movs r4, #0xa
	b _08030FAA
	.align 2, 0
_08030FA0: .4byte 0x03000C6C
_08030FA4:
	subs r4, #1
	cmp r4, #0
	beq _08030FC6
_08030FAA:
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldrb r0, [r6]
	cmp r0, #0
	bne _08030FA4
	bl sub_8031208
	ldrb r0, [r6]
	cmp r0, #0
	bne _08030FA4
_08030FC6:
	ldr r1, _08030FEC
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803107E
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803102C
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803100A
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08030FF6
	.align 2, 0
_08030FEC: .4byte 0x03000C38
_08030FF0:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08030FF6:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08030FF0
	b _08031078
_0803100A:
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031018
_08031012:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031018:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _08031012
	b _08031078
_0803102C:
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031058
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031044
_0803103E:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031044:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031130
	ldrb r0, [r5]
	cmp r0, #0
	bne _0803103E
	b _08031078
_08031058:
	movs r4, #2
	adds r5, r1, #0
	adds r5, #0x34
	b _08031066
_08031060:
	subs r4, #1
	cmp r4, #0
	beq _08031078
_08031066:
	bl sub_80326D4
	bl sub_803268C
	bl sub_8031090
	ldrb r0, [r5]
	cmp r0, #0
	bne _08031060
_08031078:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08031084
_0803107E:
	subs r7, #1
	cmp r7, #0
	bne _08030F9A
_08031084:
	bl sub_8030DB0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8031090
sub_8031090: @ 0x08031090
	push {r4, lr}
	ldr r4, _080310E8
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _080310EC
	bl sub_8031424
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031880
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8030E10
	bl sub_8030E30
	bl sub_80321CC
	bl sub_8030E5C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8008220
	bl sub_803171C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031FC4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_80315A0
	b _08031128
	.align 2, 0
_080310E8: .4byte 0x03000C38
_080310EC:
	cmp r0, #1
	bne _08031128
	bl sub_80314E8
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031A44
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_803242C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_80317D4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_803204C
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031128
	bl sub_8031664
_08031128:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8031130
sub_8031130: @ 0x08031130
	push {r4, lr}
	ldr r4, _08031184
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031188
	bl sub_8031424
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031C24
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8030E10
	bl sub_8030E30
	bl sub_803229C
	bl sub_8030E5C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_803171C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80320C8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80315A0
	b _080311C4
	.align 2, 0
_08031184: .4byte 0x03000C38
_08031188:
	cmp r0, #1
	bne _080311C4
	bl sub_80314E8
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031E20
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8032384
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_80317D4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8032148
	ldrb r0, [r4]
	cmp r0, #0
	bne _080311C4
	bl sub_8031664
_080311C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80311CC
sub_80311CC: @ 0x080311CC
	push {r4, lr}
	ldr r4, _080311F0
	adds r1, r4, #0
	adds r1, #0x33
	movs r0, #7
	strb r0, [r1]
	bl sub_8032714
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080311F4
	adds r1, r4, #0
	adds r1, #0x31
	strb r0, [r1]
	adds r1, #3
	movs r0, #0
	b _08031200
	.align 2, 0
_080311F0: .4byte 0x03000C38
_080311F4:
	adds r1, r4, #0
	adds r1, #0x31
	movs r0, #4
	strb r0, [r1]
	adds r1, #3
	movs r0, #1
_08031200:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8031208
sub_8031208: @ 0x08031208
	push {r4, r5, r6, r7, lr}
	ldr r1, _08031228
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xe
	strb r0, [r2]
	subs r2, #2
	ldrb r0, [r2]
	cmp r0, #1
	bhi _08031268
	movs r5, #1
	movs r4, #1
	adds r7, r2, #0
	adds r6, r1, #0
	adds r6, #0x34
	b _08031232
	.align 2, 0
_08031228: .4byte 0x03000C38
_0803122C:
	subs r4, #1
	cmp r4, #0
	beq _0803124C
_08031232:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0803123E
	bl sub_8031278
	b _08031242
_0803123E:
	bl sub_8031354
_08031242:
	ldrb r0, [r6]
	ldr r1, _08031274
	cmp r0, #0
	bne _0803122C
	movs r5, #0
_0803124C:
	cmp r5, #0
	bne _08031268
	bl sub_80327A8
	ldr r2, _08031274
	adds r1, r2, #0
	adds r1, #0x30
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	blt _08031266
	cmp r0, #1
	ble _0803126E
_08031266:
	adds r1, r2, #0
_08031268:
	adds r1, #0x34
	movs r0, #0xb
	strb r0, [r1]
_0803126E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031274: .4byte 0x03000C38

	THUMB_FUNC_START sub_8031278
sub_8031278: @ 0x08031278
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0x1e
	ldr r5, _08031338
_08031284:
	ldr r0, _0803133C
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08031340
	cmp r1, r0
	bne _08031316
	ldr r6, [r5, #0x20]
	cmp r6, r2
	bne _08031316
	ldr r0, _08031344
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	ldr r0, _08031348
	cmp r1, r0
	bne _08031316
	ldr r7, [r5, #0x20]
	cmp r7, r6
	bne _08031316
	ldr r0, _0803134C
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031316
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031316
	ldr r1, [r5, #0x1c]
	ldr r0, _08031350
	cmp r1, r0
	bne _08031316
	ldr r0, [r5, #0x20]
	cmp r0, r7
	beq _0803132A
_08031316:
	subs r4, #1
	cmp r4, #0
	bne _08031284
	movs r0, #1
	cmp r0, #0
	beq _0803132A
	ldr r0, _08031338
	adds r0, #0x34
	movs r1, #0xb
	strb r1, [r0]
_0803132A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031338: .4byte 0x03000C38
_0803133C: .4byte 0x00002D01
_08031340: .4byte 0x1D012D01
_08031344: .4byte 0x00002D02
_08031348: .4byte 0x1D022D02
_0803134C: .4byte 0x00002D03
_08031350: .4byte 0x1D032D03

	THUMB_FUNC_START sub_8031354
sub_8031354: @ 0x08031354
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #5
	ldr r5, _08031408
_08031360:
	ldr r0, _0803140C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	movs r2, #1
	rsbs r2, r2, #0
	ldr r0, _08031410
	cmp r1, r0
	bne _080313E6
	ldr r6, [r5, #0x20]
	cmp r6, r2
	bne _080313E6
	ldr r0, _08031414
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	ldr r0, _08031418
	cmp r1, r0
	bne _080313E6
	ldr r7, [r5, #0x20]
	cmp r7, r6
	bne _080313E6
	ldr r0, _0803141C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080313E6
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080313E6
	ldr r1, [r5, #0x1c]
	ldr r0, _08031420
	cmp r1, r0
	bne _080313E6
	ldr r0, [r5, #0x20]
	cmp r0, r7
	beq _080313FA
_080313E6:
	subs r4, #1
	cmp r4, #0
	bne _08031360
	movs r0, #1
	cmp r0, #0
	beq _080313FA
	ldr r0, _08031408
	adds r0, #0x34
	movs r1, #0xb
	strb r1, [r0]
_080313FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031408: .4byte 0x03000C38
_0803140C: .4byte 0x00001D01
_08031410: .4byte 0x1D012D01
_08031414: .4byte 0x00001D02
_08031418: .4byte 0x1D022D02
_0803141C: .4byte 0x00001D03
_08031420: .4byte 0x1D032D03

	THUMB_FUNC_START sub_8031424
sub_8031424: @ 0x08031424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080314CC
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #2
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _080314D0
_0803143A:
	ldr r0, _080314D4
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _080314AE
	ldr r0, _080314D8
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r1, [r5, #0x1e]
	ldr r0, _080314DC
	cmp r1, r0
	bne _080314AE
	ldr r0, _080314E0
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080314AE
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080314AE
	ldrh r1, [r5, #0x1e]
	ldr r0, _080314E4
	cmp r1, r0
	beq _080314C2
_080314AE:
	subs r4, #1
	cmp r4, #0
	bne _0803143A
	movs r0, #1
	cmp r0, #0
	beq _080314C2
	ldr r0, _080314CC
	adds r0, #0x34
	movs r1, #2
	strb r1, [r0]
_080314C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080314CC: .4byte 0x03000C38
_080314D0: .4byte 0x00001204
_080314D4: .4byte 0x00002104
_080314D8: .4byte 0x00002105
_080314DC: .4byte 0x00001205
_080314E0: .4byte 0x00002106
_080314E4: .4byte 0x00001206

	THUMB_FUNC_START sub_80314E8
sub_80314E8: @ 0x080314E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031584
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #2
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031588
_080314FE:
	ldr r0, _0803158C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _08031566
	ldr r0, _08031590
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031594
	cmp r1, r0
	bne _08031566
	ldr r0, _08031598
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031566
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031566
	ldrh r1, [r5, #0x1c]
	ldr r0, _0803159C
	cmp r1, r0
	beq _0803157A
_08031566:
	subs r4, #1
	cmp r4, #0
	bne _080314FE
	movs r0, #1
	cmp r0, #0
	beq _0803157A
	ldr r0, _08031584
	adds r0, #0x34
	movs r1, #2
	strb r1, [r0]
_0803157A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031584: .4byte 0x03000C38
_08031588: .4byte 0x00002104
_0803158C: .4byte 0x00001204
_08031590: .4byte 0x00001205
_08031594: .4byte 0x00002105
_08031598: .4byte 0x00001206
_0803159C: .4byte 0x00002106

	THUMB_FUNC_START sub_80315A0
sub_80315A0: @ 0x080315A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031648
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #9
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _0803164C
_080315B6:
	ldr r0, _08031650
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _0803162A
	ldr r0, _08031654
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031658
	cmp r1, r0
	bne _0803162A
	ldr r0, _0803165C
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _0803162A
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803162A
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031660
	cmp r1, r0
	beq _0803163E
_0803162A:
	subs r4, #1
	cmp r4, #0
	bne _080315B6
	movs r0, #1
	cmp r0, #0
	beq _0803163E
	ldr r0, _08031648
	adds r0, #0x34
	movs r1, #3
	strb r1, [r0]
_0803163E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031648: .4byte 0x03000C38
_0803164C: .4byte 0x0000160A
_08031650: .4byte 0x0000250A
_08031654: .4byte 0x0000250B
_08031658: .4byte 0x0000160B
_0803165C: .4byte 0x0000250C
_08031660: .4byte 0x0000160C

	THUMB_FUNC_START sub_8031664
sub_8031664: @ 0x08031664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031700
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #9
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031704
_0803167A:
	ldr r0, _08031708
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _080316E2
	ldr r0, _0803170C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031710
	cmp r1, r0
	bne _080316E2
	ldr r0, _08031714
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080316E2
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080316E2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031718
	cmp r1, r0
	beq _080316F6
_080316E2:
	subs r4, #1
	cmp r4, #0
	bne _0803167A
	movs r0, #1
	cmp r0, #0
	beq _080316F6
	ldr r0, _08031700
	adds r0, #0x34
	movs r1, #3
	strb r1, [r0]
_080316F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031700: .4byte 0x03000C38
_08031704: .4byte 0x0000250A
_08031708: .4byte 0x0000160A
_0803170C: .4byte 0x0000160B
_08031710: .4byte 0x0000250B
_08031714: .4byte 0x0000160C
_08031718: .4byte 0x0000250C

	THUMB_FUNC_START sub_803171C
sub_803171C: @ 0x0803171C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _080317B8
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xd
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _080317BC
_08031732:
	ldr r0, _080317C0
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r0, [r5, #0x1e]
	cmp r0, r7
	bne _080317A6
	ldr r0, _080317C4
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r1, [r5, #0x1e]
	ldr r0, _080317C8
	cmp r1, r0
	bne _080317A6
	ldr r0, _080317CC
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080317A6
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _080317A6
	ldrh r1, [r5, #0x1e]
	ldr r0, _080317D0
	cmp r1, r0
	beq _080317AC
_080317A6:
	subs r4, #1
	cmp r4, #0
	bne _08031732
_080317AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080317B8: .4byte 0x03000C38
_080317BC: .4byte 0x00001F07
_080317C0: .4byte 0x00002E07
_080317C4: .4byte 0x00002E08
_080317C8: .4byte 0x00001F08
_080317CC: .4byte 0x00002E09
_080317D0: .4byte 0x00001F09

	THUMB_FUNC_START sub_80317D4
sub_80317D4: @ 0x080317D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08031864
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xd
	strb r0, [r2]
	movs r4, #1
	adds r5, r1, #0
	ldr r7, _08031868
_080317EA:
	ldr r0, _0803186C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	adds r6, r5, #0
	adds r6, #0x34
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r0, [r5, #0x1c]
	cmp r0, r7
	bne _08031852
	ldr r0, _08031870
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031874
	cmp r1, r0
	bne _08031852
	ldr r0, _08031878
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031852
	bl sub_8032830
	ldrb r0, [r6]
	cmp r0, #0
	bne _08031852
	ldrh r1, [r5, #0x1c]
	ldr r0, _0803187C
	cmp r1, r0
	beq _08031858
_08031852:
	subs r4, #1
	cmp r4, #0
	bne _080317EA
_08031858:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031864: .4byte 0x03000C38
_08031868: .4byte 0x00002E07
_0803186C: .4byte 0x00001F07
_08031870: .4byte 0x00001F08
_08031874: .4byte 0x00002E08
_08031878: .4byte 0x00001F09
_0803187C: .4byte 0x00002E09

	THUMB_FUNC_START sub_8031880
sub_8031880: @ 0x08031880
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08031A20
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xa
	strb r0, [r2]
	ldrh r0, [r1, #0x28]
	str r0, [sp]
	movs r6, #3
	adds r7, r1, #0
	movs r1, #0xff
	ands r0, r1
	str r0, [sp, #4]
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r1, #0
	ldr r1, [sp, #4]
	orrs r1, r0
	str r1, [sp, #4]
	mov sb, r1
	mov r0, sb
	movs r1, #0
	orrs r0, r1
	mov sb, r0
_080318BA:
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _080318D0
	b _080319F8
_080318D0:
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080318E2
	b _080319F8
_080318E2:
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A24
	cmp r1, r0
	beq _080318EC
	b _080319F8
_080318EC:
	ldr r0, [sp]
	lsrs r4, r0, #8
	adds r5, r4, #0
	movs r1, #0xff
	ands r5, r1
	movs r0, #0xa0
	lsls r0, r0, #6
	mov sl, r0
	mov r1, sl
	orrs r5, r1
	movs r0, #0
	orrs r5, r0
	strh r5, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A28
	cmp r1, r0
	bne _080319F8
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A2C
	cmp r1, r0
	bne _080319F8
	strh r5, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A30
	cmp r1, r0
	bne _080319F8
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A34
	cmp r1, r0
	bne _080319F8
	movs r0, #0xff
	ands r4, r0
	mov r1, sl
	orrs r4, r1
	strh r4, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A38
	cmp r1, r0
	bne _080319F8
	ldr r0, _08031A3C
	strh r0, [r7, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080319F8
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080319F8
	ldrh r1, [r7, #0x1e]
	ldr r0, _08031A40
	cmp r1, r0
	beq _08031A0E
_080319F8:
	subs r6, #1
	cmp r6, #0
	beq _08031A00
	b _080318BA
_08031A00:
	movs r0, #1
	cmp r0, #0
	beq _08031A0E
	ldr r0, _08031A20
	adds r0, #0x34
	movs r1, #8
	strb r1, [r0]
_08031A0E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A20: .4byte 0x03000C38
_08031A24: .4byte 0x0000190D
_08031A28: .4byte 0x00001910
_08031A2C: .4byte 0x0000190E
_08031A30: .4byte 0x00001911
_08031A34: .4byte 0x0000190F
_08031A38: .4byte 0x00001912
_08031A3C: .4byte 0x00002913
_08031A40: .4byte 0x00001913

	THUMB_FUNC_START sub_8031A44
sub_8031A44: @ 0x08031A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08031C00
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xb
	strb r0, [r2]
	movs r4, #3
	adds r5, r1, #0
_08031A5C:
	ldr r0, _08031C04
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031A6E
	b _08031BDC
_08031A6E:
	bl sub_8032830
	movs r0, #0x34
	adds r0, r0, r5
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A80
	b _08031BDC
_08031A80:
	ldrh r1, [r5, #0x1c]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	movs r0, #0x9c
	lsls r0, r0, #6
	cmp r6, r0
	beq _08031A94
	b _08031BDC
_08031A94:
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5, #0x2a]
	ldr r0, _08031C08
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031AAC
	b _08031BDC
_08031AAC:
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031ABA
	b _08031BDC
_08031ABA:
	ldrh r1, [r5, #0x1c]
	mov r8, r1
	mov r2, r8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r2, r0
	mov r8, r2
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r8, r0
	beq _08031AD2
	b _08031BDC
_08031AD2:
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2a]
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r0, _08031C0C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r7, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r7, r2
	cmp r7, r6
	bne _08031BDC
	movs r0, #0xff
	mov sb, r0
	ands r1, r0
	strh r1, [r5, #0x2c]
	ldr r0, _08031C10
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	cmp r6, r8
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r5, #0x2c]
	orrs r1, r0
	movs r2, #0
	mov r8, r2
	strh r1, [r5, #0x2c]
	ldr r0, _08031C14
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r7
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	strh r1, [r5, #0x2e]
	ldr r0, _08031C18
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r6
	bne _08031BDC
	mov r0, sb
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2e]
	orrs r0, r1
	strh r0, [r5, #0x2e]
	bl sub_8032660
	cmp r0, #0
	bne _08031BDC
	ldr r0, _08031C1C
	strh r0, [r5, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031BDC
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031BDC
	ldrh r1, [r5, #0x1c]
	ldr r0, _08031C20
	cmp r1, r0
	beq _08031BF2
_08031BDC:
	subs r4, #1
	cmp r4, #0
	beq _08031BE4
	b _08031A5C
_08031BE4:
	movs r0, #1
	cmp r0, #0
	beq _08031BF2
	ldr r0, _08031C00
	adds r0, #0x34
	movs r1, #9
	strb r1, [r0]
_08031BF2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031C00: .4byte 0x03000C38
_08031C04: .4byte 0x0000190D
_08031C08: .4byte 0x00001910
_08031C0C: .4byte 0x0000190E
_08031C10: .4byte 0x00001911
_08031C14: .4byte 0x0000190F
_08031C18: .4byte 0x00001912
_08031C1C: .4byte 0x00001913
_08031C20: .4byte 0x00002913

	THUMB_FUNC_START sub_8031C24
sub_8031C24: @ 0x08031C24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08031DFC
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xb
	strb r0, [r2]
	movs r4, #3
	adds r5, r1, #0
_08031C3C:
	ldr r0, _08031E00
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _08031C52
	b _08031DD8
_08031C52:
	bl sub_8032830
	movs r0, #0x34
	adds r0, r0, r5
	mov sl, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031C64
	b _08031DD8
_08031C64:
	ldrh r1, [r5, #0x1e]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	movs r0, #0xb8
	lsls r0, r0, #5
	cmp r6, r0
	beq _08031C78
	b _08031DD8
_08031C78:
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5, #0x2a]
	ldr r0, _08031E04
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	beq _08031C94
	b _08031DD8
_08031C94:
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031CA2
	b _08031DD8
_08031CA2:
	ldrh r1, [r5, #0x1e]
	mov r8, r1
	mov r2, r8
	movs r0, #0xff
	lsls r0, r0, #8
	ands r2, r0
	mov r8, r2
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r8, r0
	beq _08031CBA
	b _08031DD8
_08031CBA:
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2a]
	orrs r0, r1
	strh r0, [r5, #0x2a]
	ldr r0, _08031E08
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r7, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r7, r2
	cmp r7, r6
	bne _08031DD8
	movs r0, #0xff
	mov sb, r0
	ands r1, r0
	strh r1, [r5, #0x2c]
	ldr r0, _08031E0C
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r6, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r6, r2
	cmp r6, r8
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	lsls r1, r1, #8
	ldrh r0, [r5, #0x2c]
	orrs r1, r0
	movs r2, #0
	mov r8, r2
	strh r1, [r5, #0x2c]
	ldr r0, _08031E10
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r7
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	strh r1, [r5, #0x2e]
	ldr r0, _08031E14
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	adds r0, r1, #0
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, r6
	bne _08031DD8
	mov r0, sb
	ands r1, r0
	lsls r0, r1, #8
	ldrh r1, [r5, #0x2e]
	orrs r0, r1
	strh r0, [r5, #0x2e]
	bl sub_8032660
	cmp r0, #0
	bne _08031DD8
	ldr r0, _08031E18
	strh r0, [r5, #0x24]
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031DD8
	bl sub_8032830
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031DD8
	ldrh r1, [r5, #0x1e]
	ldr r0, _08031E1C
	cmp r1, r0
	beq _08031DEE
_08031DD8:
	subs r4, #1
	cmp r4, #0
	beq _08031DE0
	b _08031C3C
_08031DE0:
	movs r0, #1
	cmp r0, #0
	beq _08031DEE
	ldr r0, _08031DFC
	adds r0, #0x34
	movs r1, #9
	strb r1, [r0]
_08031DEE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031DFC: .4byte 0x03000C38
_08031E00: .4byte 0x0000290D
_08031E04: .4byte 0x00002910
_08031E08: .4byte 0x0000290E
_08031E0C: .4byte 0x00002911
_08031E10: .4byte 0x0000290F
_08031E14: .4byte 0x00002912
_08031E18: .4byte 0x00002913
_08031E1C: .4byte 0x00001913

	THUMB_FUNC_START sub_8031E20
sub_8031E20: @ 0x08031E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08031FA0
	adds r2, r1, #0
	adds r2, #0x33
	movs r0, #0xa
	strb r0, [r2]
	ldrh r0, [r1, #0x28]
	str r0, [sp]
	movs r6, #3
	adds r7, r1, #0
	movs r1, #0xff
	ands r0, r1
	str r0, [sp, #4]
	movs r1, #0xb8
	lsls r1, r1, #5
	adds r0, r1, #0
	ldr r1, [sp, #4]
	orrs r1, r0
	str r1, [sp, #4]
	mov sb, r1
	mov r0, sb
	movs r1, #0
	orrs r0, r1
	mov sb, r0
_08031E5A:
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	beq _08031E6C
	b _08031F78
_08031E6C:
	bl sub_8032830
	movs r1, #0x34
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FA4
	cmp r1, r0
	bne _08031F78
	ldr r0, [sp]
	lsrs r4, r0, #8
	adds r5, r4, #0
	movs r1, #0xff
	ands r5, r1
	movs r0, #0xc0
	lsls r0, r0, #5
	mov sl, r0
	mov r1, sl
	orrs r5, r1
	movs r0, #0
	orrs r5, r0
	strh r5, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FA8
	cmp r1, r0
	bne _08031F78
	mov r0, sb
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FAC
	cmp r1, r0
	bne _08031F78
	strh r5, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB0
	cmp r1, r0
	bne _08031F78
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB4
	cmp r1, r0
	bne _08031F78
	movs r0, #0xff
	ands r4, r0
	mov r1, sl
	orrs r4, r1
	strh r4, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FB8
	cmp r1, r0
	bne _08031F78
	ldr r0, _08031FBC
	strh r0, [r7, #0x24]
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08031F78
	bl sub_8032830
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08031F78
	ldrh r1, [r7, #0x1c]
	ldr r0, _08031FC0
	cmp r1, r0
	beq _08031F8E
_08031F78:
	subs r6, #1
	cmp r6, #0
	beq _08031F80
	b _08031E5A
_08031F80:
	movs r0, #1
	cmp r0, #0
	beq _08031F8E
	ldr r0, _08031FA0
	adds r0, #0x34
	movs r1, #8
	strb r1, [r0]
_08031F8E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031FA0: .4byte 0x03000C38
_08031FA4: .4byte 0x0000290D
_08031FA8: .4byte 0x00002910
_08031FAC: .4byte 0x0000290E
_08031FB0: .4byte 0x00002911
_08031FB4: .4byte 0x0000290F
_08031FB8: .4byte 0x00002912
_08031FBC: .4byte 0x00001913
_08031FC0: .4byte 0x00002913

	THUMB_FUNC_START sub_8031FC4
sub_8031FC4: @ 0x08031FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08031FE8
	adds r2, r0, #0
	adds r2, #0x33
	movs r1, #0xc
	strb r1, [r2]
	movs r1, #0xa8
	lsls r1, r1, #6
	strh r1, [r0, #0x24]
	movs r6, #1
	movs r5, #1
	movs r4, #1
	ldr r0, _08031FEC
	mov r8, r0
	ldr r7, _08031FF0
	b _08032002
	.align 2, 0
_08031FE8: .4byte 0x03000C38
_08031FEC: .4byte 0x00001B15
_08031FF0: .4byte 0x00001B18
_08031FF4:
	cmp r0, r7
	bne _08031FFC
	movs r6, #1
	b _0803202A
_08031FFC:
	subs r4, #1
	cmp r4, #0
	beq _0803202C
_08032002:
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08031FFC
	bl sub_8032830
	ldr r1, _08032048
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031FFC
	ldrh r0, [r1, #0x1e]
	cmp r0, r8
	bne _08031FF4
	movs r6, #0
_0803202A:
	movs r5, #0
_0803202C:
	cmp r6, #0
	bne _08032034
	cmp r5, #0
	beq _0803203C
_08032034:
	ldr r0, _08032048
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_0803203C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032048: .4byte 0x03000C38

	THUMB_FUNC_START sub_803204C
sub_803204C: @ 0x0803204C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08032068
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0xc
	strb r0, [r1]
	ldrh r0, [r2, #0x26]
	ldrh r1, [r2, #0x2a]
	cmp r0, r1
	bne _08032074
	ldr r0, _0803206C
	strh r0, [r2, #0x24]
	movs r7, #0
	b _0803207A
	.align 2, 0
_08032068: .4byte 0x03000C38
_0803206C: .4byte 0x00001B15
_08032070:
	movs r6, #0
	b _080320AA
_08032074:
	ldr r0, _080320C0
	strh r0, [r2, #0x24]
	movs r7, #1
_0803207A:
	movs r6, #1
	movs r4, #1
	movs r5, #0xa8
	lsls r5, r5, #6
_08032082:
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _080320A4
	bl sub_8032830
	ldr r1, _080320C4
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080320A4
	ldrh r0, [r1, #0x1c]
	cmp r0, r5
	beq _08032070
_080320A4:
	subs r4, #1
	cmp r4, #0
	bne _08032082
_080320AA:
	cmp r7, #0
	bne _080320B2
	cmp r6, #0
	beq _080320BA
_080320B2:
	ldr r0, _080320C4
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_080320BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080320C0: .4byte 0x00001B18
_080320C4: .4byte 0x03000C38

	THUMB_FUNC_START sub_80320C8
sub_80320C8: @ 0x080320C8
	push {r4, r5, r6, r7, lr}
	ldr r2, _080320E4
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #0xc
	strb r0, [r1]
	ldrh r0, [r2, #0x26]
	ldrh r1, [r2, #0x2a]
	cmp r0, r1
	bne _080320F0
	ldr r0, _080320E8
	strh r0, [r2, #0x24]
	movs r7, #0
	b _080320F6
	.align 2, 0
_080320E4: .4byte 0x03000C38
_080320E8: .4byte 0x00002B15
_080320EC:
	movs r6, #0
	b _0803212A
_080320F0:
	ldr r0, _08032140
	strh r0, [r2, #0x24]
	movs r7, #1
_080320F6:
	movs r6, #1
	movs r4, #1
	movs r5, #0xd0
	lsls r5, r5, #5
_080320FE:
	bl sub_8008220
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08032124
	bl sub_8032830
	ldr r1, _08032144
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032124
	ldrh r0, [r1, #0x1e]
	cmp r0, r5
	beq _080320EC
_08032124:
	subs r4, #1
	cmp r4, #0
	bne _080320FE
_0803212A:
	cmp r7, #0
	bne _08032132
	cmp r6, #0
	beq _0803213A
_08032132:
	ldr r0, _08032144
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_0803213A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032140: .4byte 0x00002B18
_08032144: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032148
sub_8032148: @ 0x08032148
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803216C
	adds r2, r0, #0
	adds r2, #0x33
	movs r1, #0xc
	strb r1, [r2]
	movs r1, #0xd0
	lsls r1, r1, #5
	strh r1, [r0, #0x24]
	movs r6, #0
	movs r5, #1
	movs r4, #1
	ldr r0, _08032170
	mov r8, r0
	ldr r7, _08032174
	b _08032186
	.align 2, 0
_0803216C: .4byte 0x03000C38
_08032170: .4byte 0x00002B15
_08032174: .4byte 0x00002B18
_08032178:
	cmp r0, r7
	bne _08032180
	movs r6, #1
	b _080321AA
_08032180:
	subs r4, #1
	cmp r4, #0
	beq _080321AC
_08032186:
	bl sub_803281C
	bl sub_8030DDC
	cmp r0, #0
	bne _08032180
	bl sub_8032830
	ldr r1, _080321C8
	adds r0, r1, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032180
	ldrh r0, [r1, #0x1c]
	cmp r0, r8
	bne _08032178
	movs r6, #0
_080321AA:
	movs r5, #0
_080321AC:
	cmp r6, #0
	bne _080321B4
	cmp r5, #0
	beq _080321BC
_080321B4:
	ldr r0, _080321C8
	adds r0, #0x34
	movs r1, #0xa
	strb r1, [r0]
_080321BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321C8: .4byte 0x03000C38

	THUMB_FUNC_START sub_80321CC
sub_80321CC: @ 0x080321CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08032228
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #3
	strb r0, [r1]
	movs r5, #0
	ldr r1, [r2, #4]
	ldr r0, [r2]
	cmp r1, r0
	bhs _08032282
	adds r7, r2, #0
_080321E8:
	movs r6, #0xc
	bl sub_8008220
	cmp r5, #0
	bne _08032272
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08032272
	ldr r4, _08032228
	ldr r0, _0803222C
	mov r8, r0
_08032200:
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	movs r2, #0x8c
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0x24]
	ldr r0, _08032230
	bl sub_8030EE0
	bl sub_8030EBC
	bl sub_8030E88
	cmp r0, #0
	beq _08032234
	bl sub_8030ECC
_08032224:
	movs r5, #1
	b _08032262
	.align 2, 0
_08032228: .4byte 0x03000C38
_0803222C: .4byte 0x000014FD
_08032230: .4byte 0x0000D880
_08032234:
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _08032224
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032224
	bl sub_8032830
	ldrh r0, [r4, #0x1e]
	cmp r0, r8
	bne _08032224
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x14]
	adds r0, #1
	str r0, [r4, #0x14]
	subs r6, #1
_08032262:
	cmp r6, #0
	beq _08032272
	cmp r5, #0
	bne _08032272
	ldr r1, [r4, #4]
	ldr r0, [r4]
	cmp r1, r0
	blo _08032200
_08032272:
	bl sub_8030ECC
	cmp r5, #0
	bne _08032286
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	blo _080321E8
_08032282:
	cmp r5, #0
	beq _0803228E
_08032286:
	ldr r0, _08032298
	adds r0, #0x34
	movs r1, #4
	strb r1, [r0]
_0803228E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032298: .4byte 0x03000C38

	THUMB_FUNC_START sub_803229C
sub_803229C: @ 0x0803229C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080322F4
	adds r1, r2, #0
	adds r1, #0x33
	movs r0, #5
	strb r0, [r1]
	movs r5, #0
	ldr r1, [r2, #4]
	ldr r0, [r2]
	cmp r1, r0
	bhs _08032366
	adds r7, r2, #0
_080322BA:
	movs r6, #0xc
	bl sub_8008220
	cmp r5, #0
	bne _08032356
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	bhs _08032356
	ldr r4, _080322F4
	movs r0, #0x98
	lsls r0, r0, #5
	mov r8, r0
_080322D4:
	ldr r0, _080322F8
	strh r0, [r4, #0x24]
	ldr r0, _080322FC
	bl sub_8030EE0
	bl sub_8030EBC
	bl sub_8030E88
	cmp r0, #0
	beq _08032300
	bl sub_8030ECC
_080322EE:
	movs r5, #1
	b _08032346
	.align 2, 0
_080322F4: .4byte 0x03000C38
_080322F8: .4byte 0x000024FD
_080322FC: .4byte 0x0000D880
_08032300:
	bl sub_80327FC
	bl sub_8030DDC
	cmp r0, #0
	bne _080322EE
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _080322EE
	bl sub_8032830
	ldrh r2, [r4, #0x1e]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r8
	bne _080322EE
	ldr r0, [r4, #0x18]
	strb r2, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	subs r6, #1
_08032346:
	cmp r6, #0
	beq _08032356
	cmp r5, #0
	bne _08032356
	ldr r1, [r4, #4]
	ldr r0, [r4]
	cmp r1, r0
	blo _080322D4
_08032356:
	bl sub_8030ECC
	cmp r5, #0
	bne _0803236A
	ldr r1, [r7, #4]
	ldr r0, [r7]
	cmp r1, r0
	blo _080322BA
_08032366:
	cmp r5, #0
	beq _08032372
_0803236A:
	ldr r0, _08032380
	adds r0, #0x34
	movs r1, #7
	strb r1, [r0]
_08032372:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032380: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032384
sub_8032384: @ 0x08032384
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _0803241C
	ldr r5, _08032420
	adds r2, r5, #0
	adds r2, #0x33
	movs r1, #0
	movs r0, #3
	strb r0, [r2]
	ldr r4, _08032424
	strh r1, [r4]
	ldr r0, [r5, #0x14]
	ldrb r0, [r0]
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0x24]
	bl sub_803281C
	adds r0, r6, #0
	bl sub_8008478
	movs r0, #1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	movs r6, #1
	adds r5, #0x34
	mov sb, r5
_080323C4:
	bl sub_8030DDC
	cmp r0, #0
	beq _080323CE
	movs r6, #0
_080323CE:
	movs r2, #0
	strh r2, [r4]
	ldr r5, _08032420
	movs r7, #1
	strh r7, [r4]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080323E2
	movs r6, #0
_080323E2:
	ldr r1, [r5, #4]
	ldr r0, [r5]
	cmp r1, r0
	blo _080323F0
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080323F0:
	cmp r6, #1
	beq _080323C4
	ldr r4, _08032424
	strh r2, [r4]
	ldr r0, _08032428
	bl sub_8008478
	strh r7, [r4]
	mov r1, r8
	cmp r1, #0
	beq _0803240E
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #6
	strb r0, [r1]
_0803240E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803241C: .4byte 0x03001479
_08032420: .4byte 0x03000C38
_08032424: .4byte 0x04000208
_08032428: .4byte 0x08030D55

	THUMB_FUNC_START sub_803242C
sub_803242C: @ 0x0803242C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080324B0
	ldr r2, _080324B4
	adds r3, r2, #0
	adds r3, #0x33
	movs r1, #0
	movs r0, #5
	strb r0, [r3]
	ldr r4, _080324B8
	strh r1, [r4]
	ldr r0, _080324BC
	strh r0, [r2, #0x24]
	bl sub_803281C
	adds r0, r5, #0
	bl sub_8008478
	movs r0, #1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	movs r5, #1
_0803245C:
	bl sub_8030DDC
	cmp r0, #0
	beq _08032466
	movs r5, #0
_08032466:
	movs r3, #0
	strh r3, [r4]
	ldr r1, _080324B4
	adds r7, r1, #0
	adds r7, #0x34
	ldrb r0, [r7]
	ldr r2, [r1, #4]
	movs r6, #1
	strh r6, [r4]
	cmp r0, #0
	beq _0803247E
	movs r5, #0
_0803247E:
	ldr r0, [r1]
	cmp r2, r0
	blo _0803248A
	movs r0, #0
	mov r8, r0
	movs r5, #0
_0803248A:
	cmp r5, #1
	beq _0803245C
	ldr r4, _080324B8
	strh r3, [r4]
	ldr r0, _080324C0
	bl sub_8008478
	strh r6, [r4]
	mov r0, r8
	cmp r0, #0
	beq _080324A4
	movs r0, #5
	strb r0, [r7]
_080324A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324B0: .4byte 0x03001579
_080324B4: .4byte 0x03000C38
_080324B8: .4byte 0x04000208
_080324BC: .4byte 0x000014FD
_080324C0: .4byte 0x08030D55

	THUMB_FUNC_START sub_80324C4
sub_80324C4: @ 0x080324C4
	push {r4, r5, lr}
	bl sub_8030D84
	movs r5, #0xa
_080324CC:
	cmp r5, #0
	beq _080324FC
	bl sub_80326EC
	bl sub_80326D4
	bl sub_80311CC
	ldr r0, _080324F8
	adds r4, r0, #0
	adds r4, #0x34
	ldrb r0, [r4]
	cmp r0, #0
	bne _080324F2
	bl sub_8031208
	ldrb r0, [r4]
	cmp r0, #0
	beq _08032506
_080324F2:
	subs r5, #1
	b _080324CC
	.align 2, 0
_080324F8: .4byte 0x03000C38
_080324FC:
	ldr r0, _08032514
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803250A
_08032506:
	bl sub_8032518
_0803250A:
	bl sub_8030DB0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032514: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032518
sub_8032518: @ 0x08032518
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r4, _08032538
	adds r6, r4, #0
	adds r6, #0x34
_08032522:
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803253C
	cmp r0, #1
	beq _08032542
	movs r0, #2
	strb r0, [r6]
	b _08032546
	.align 2, 0
_08032538: .4byte 0x03000C38
_0803253C:
	bl sub_8031424
	b _08032546
_08032542:
	bl sub_80314E8
_08032546:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08032552
	subs r5, #1
	cmp r5, #0
	bne _08032522
_08032552:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x70, 0xB5, 0x01, 0x25, 0x06, 0x4C, 0x26, 0x1C
	.byte 0x34, 0x36, 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x01, 0x28, 0x08, 0xD0
	.byte 0x0F, 0x20, 0x30, 0x70, 0x07, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03, 0xFF, 0xF7, 0xCE, 0xF8
	.byte 0x01, 0xE0, 0xFF, 0xF7, 0x27, 0xF9, 0x30, 0x78, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x3D, 0x00, 0x2D
	.byte 0xE7, 0xD1, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x70, 0xB5, 0x01, 0x25, 0x06, 0x4C, 0x26, 0x1C
	.byte 0x34, 0x36, 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x01, 0x28, 0x08, 0xD0
	.byte 0x03, 0x20, 0x30, 0x70, 0x07, 0xE0, 0x00, 0x00, 0x38, 0x0C, 0x00, 0x03, 0xFE, 0xF7, 0xF0, 0xFF
	.byte 0x01, 0xE0, 0xFF, 0xF7, 0x4F, 0xF8, 0x01, 0x3D, 0x00, 0x2D, 0xEA, 0xD1, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_80325D4
sub_80325D4: @ 0x080325D4
	push {r4, lr}
	bl sub_803269C
	bl sub_80326B8
	bl sub_80326EC
	bl sub_80326D4
	ldr r0, _08032630
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r1, _08032634
	strh r1, [r0, #0x28]
	movs r1, #0
	adds r0, #0x2a
_080325FC:
	strh r1, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #2
	bls _080325FC
	movs r1, #0
	ldr r4, _08032638
	ldr r3, _0803263C
	movs r2, #0
_0803260E:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, r4
	bls _0803260E
	movs r1, #0
	ldr r4, _08032638
	ldr r3, _08032640
	movs r2, #0
_08032620:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, r4
	bls _08032620
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032630: .4byte 0x03000C38
_08032634: .4byte 0x00001111
_08032638: .4byte 0x000003FF
_0803263C: .4byte 0x03000C78
_08032640: .4byte 0x03001078

	THUMB_FUNC_START sub_8032644
sub_8032644: @ 0x08032644
	adds r2, r0, #0
	movs r3, #0
	cmp r1, #0
	beq _08032658
_0803264C:
	ldrb r0, [r2]
	adds r3, r3, r0
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _0803264C
_08032658:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8032660
sub_8032660: @ 0x08032660
	push {r4, r5, lr}
	movs r4, #0
	movs r2, #0
	ldr r3, _08032688
	adds r1, r3, #0
	adds r1, #0x2a
_0803266C:
	adds r1, #2
	adds r2, #1
	cmp r2, #2
	bhi _0803267E
	ldrh r0, [r3, #0x2a]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0803266C
	movs r4, #1
_0803267E:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08032688: .4byte 0x03000C38

	THUMB_FUNC_START sub_803268C
sub_803268C: @ 0x0803268C
	push {lr}
	bl sub_803269C
	bl sub_80326B8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803269C
sub_803269C: @ 0x0803269C
	movs r1, #0
	ldr r0, _080326B0
	ldr r2, _080326B4
	adds r0, #0x24
_080326A4:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #0
	beq _080326A4
	bx lr
	.align 2, 0
_080326B0: .4byte 0x03000C38
_080326B4: .4byte 0x0000EEEE

	THUMB_FUNC_START sub_80326B8
sub_80326B8: @ 0x080326B8
	movs r1, #0
	ldr r0, _080326CC
	ldr r2, _080326D0
	adds r0, #0x1c
_080326C0:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _080326C0
	bx lr
	.align 2, 0
_080326CC: .4byte 0x03000C38
_080326D0: .4byte 0x0000EEEE

	THUMB_FUNC_START sub_80326D4
sub_80326D4: @ 0x080326D4
	ldr r0, _080326E8
	movs r1, #0
	strh r1, [r0, #0x26]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_080326E8: .4byte 0x03000C38

	THUMB_FUNC_START sub_80326EC
sub_80326EC: @ 0x080326EC
	ldr r3, _08032710
	adds r1, r3, #0
	adds r1, #0x30
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x33
	strb r2, [r0]
	adds r1, #3
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x35
	strb r2, [r0]
	bx lr
	.align 2, 0
_08032710: .4byte 0x03000C38

	THUMB_FUNC_START sub_8032714
sub_8032714: @ 0x08032714
	ldr r2, _08032744
	ldr r0, _08032748
	ldrh r1, [r0]
	strh r1, [r2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0803272C
	ldr r0, _0803274C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08032768
_0803272C:
	ldrh r2, [r2]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803273E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #1
	bne _08032750
_0803273E:
	movs r0, #2
	b _0803276A
	.align 2, 0
_08032744: .4byte 0x02022EA8
_08032748: .4byte 0x04000128
_0803274C: .4byte 0x03000C38
_08032750:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08032768
	ldr r0, _08032764
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08032768
	movs r0, #0
	b _0803276A
	.align 2, 0
_08032764: .4byte 0x03000C38
_08032768:
	movs r0, #1
_0803276A:
	bx lr

	THUMB_FUNC_START sub_803276C
sub_803276C: @ 0x0803276C
	push {r4, lr}
	bl sub_8030DB0
	ldr r3, _0803279C
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080327A0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	strh r0, [r2]
	strh r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _080327A4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803279C: .4byte 0x04000134
_080327A0: .4byte 0x04000128
_080327A4: .4byte 0x00004003

	THUMB_FUNC_START sub_80327A8
sub_80327A8: @ 0x080327A8
	ldr r0, _080327B4
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	bx lr
	.align 2, 0
_080327B4: .4byte 0x04000128

	THUMB_FUNC_START sub_80327B8
sub_80327B8: @ 0x080327B8
	ldr r0, _080327C4
	ldrh r0, [r0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_080327C4: .4byte 0x04000128

	THUMB_FUNC_START sub_80327C8
sub_80327C8: @ 0x080327C8
	push {r4, lr}
	ldr r0, _080327E8
	ldr r1, _080327EC
	ldr r4, _080327F0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _080327F4
	ldr r1, _080327F8
	adds r2, r4, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080327E8: .4byte 0x08030C15
_080327EC: .4byte 0x03001478
_080327F0: .4byte 0x04000040
_080327F4: .4byte 0x08030CA9
_080327F8: .4byte 0x03001578

	THUMB_FUNC_START sub_80327FC
sub_80327FC: @ 0x080327FC
	ldr r1, _08032810
	ldr r0, _08032814
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, _08032818
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_08032810: .4byte 0x0400012A
_08032814: .4byte 0x03000C5C
_08032818: .4byte 0x04000128

	THUMB_FUNC_START sub_803281C
sub_803281C: @ 0x0803281C
	ldr r0, _08032828
	ldr r1, _0803282C
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08032828: .4byte 0x0400012A
_0803282C: .4byte 0x03000C5C

	THUMB_FUNC_START sub_8032830
sub_8032830: @ 0x08032830
	ldr r2, _08032840
	ldr r0, _08032844
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_08032840: .4byte 0x03000C54
_08032844: .4byte 0x04000120

	THUMB_FUNC_START sub_8032848
sub_8032848: @ 0x08032848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _080328C0
	ldrh r0, [r4, #8]
	cmp r0, #1
	bhi _0803285E
	b _080329B2
_0803285E:
	bl sub_8034DE8
	ldrh r0, [r4, #8]
	subs r0, #1
	lsls r0, r0, #0x10
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8034D90
	ldr r0, _080328C4
	ldr r0, [r0]
	adds r0, #0x80
	ldr r0, [r0]
	mov sb, r4
	cmp r0, #0
	bne _08032882
	b _080329B2
_08032882:
	ldr r0, _080328C8
	mov r8, r0
_08032886:
	mov r0, sb
	bl sub_8034DC4
	add r0, sp, #0xc
	ldrh r0, [r0]
	str r0, [sp, #0x18]
	mov r1, sb
	ldrh r6, [r1, #2]
	adds r1, r0, r6
	asrs r1, r1, #1
	mov r3, r8
	ldr r2, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
_080328AA:
	mov r7, r8
	ldr r1, [r7]
	ldr r2, [sp, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0, #8]
	lsls r2, r6, #1
	b _080328E6
	.align 2, 0
_080328C0: .4byte gUnk2022EB0
_080328C4: .4byte 0x08E0CC24
_080328C8: .4byte 0x08E0CC20
_080328CC:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r3, r8
	ldr r1, [r3]
	lsls r0, r0, #1
	ldr r7, [sp, #0x18]
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0, #8]
_080328E6:
	cmp r1, r5
	bhi _080328CC
	cmp r1, r5
	bne _080328F4
	ldr r0, [r0, #4]
	cmp r0, r4
	bhi _080328CC
_080328F4:
	mov r0, r8
	ldr r1, [r0]
	adds r0, r2, r6
	b _0803290A
_080328FC:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r2, r8
	ldr r1, [r2]
	lsls r0, r6, #1
	adds r0, r0, r6
_0803290A:
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r5, r1
	bhi _080328FC
	cmp r5, r1
	bne _0803291E
	ldr r0, [r0, #4]
	cmp r4, r0
	bhi _080328FC
_0803291E:
	ldr r3, [sp, #0x18]
	cmp r3, r6
	bhs _08032972
	mov r7, r8
	ldr r7, [r7]
	mov ip, r7
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	add r2, ip
	mov sl, r2
	mov r0, sp
	str r0, [sp, #0x14]
	mov r0, sl
	ldr r1, [sp, #0x14]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	str r1, [sp, #0x14]
	mov r0, sl
	str r0, [sp, #0x1c]
	add r1, ip
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [sp, #0x14]
	adds r2, r2, r0
	mov r0, sp
	ldm r0!, {r1, r3, r7}
	stm r2!, {r1, r3, r7}
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080328AA
_08032972:
	adds r1, r6, #1
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r1, r0
	bge _0803298E
	lsls r1, r1, #0x10
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp, #0x10]
	add r0, sp, #0x10
	bl sub_8034D90
_0803298E:
	mov r7, sb
	ldrh r3, [r7]
	ldr r1, [sp, #0x18]
	subs r1, #1
	cmp r3, r1
	bge _080329A4
	add r0, sp, #0x10
	strh r3, [r0]
	strh r1, [r0, #2]
	bl sub_8034D90
_080329A4:
	ldr r0, _080329C4
	ldr r0, [r0]
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _080329B2
	b _08032886
_080329B2:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080329C4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_80329C8
sub_80329C8: @ 0x080329C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08032A3C
	ldrh r1, [r0, #8]
	cmp r6, r1
	bhs _08032A2E
	mov ip, r0
	ldr r0, _08032A40
	mov sb, r0
	ldr r1, _08032A44
	mov r8, r1
	movs r7, #0
_080329E6:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r6, #1
	adds r5, r7, r0
	mov r1, ip
	ldr r0, [r1]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, [r1]
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	adds r0, r1, #0
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032A22
	ldr r0, _08032A48
	ldr r1, _08032A4C
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08032A22:
	adds r7, #0xc
	adds r6, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _080329E6
_08032A2E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A3C: .4byte gUnk2022EB0
_08032A40: .4byte gTrunkCardQty
_08032A44: .4byte 0x08E0CC20
_08032A48: .4byte 0x00000320
_08032A4C: .4byte 0x00000000

	THUMB_FUNC_START sub_8032A50
sub_8032A50: @ 0x08032A50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08032AC4
	ldrh r1, [r0, #8]
	cmp r6, r1
	bhs _08032AB6
	mov ip, r0
	ldr r0, _08032AC8
	mov sb, r0
	ldr r1, _08032ACC
	mov r8, r1
	movs r7, #0
_08032A6E:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r6, #1
	adds r5, r7, r0
	mov r1, ip
	ldr r0, [r1]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, [r1]
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	adds r0, r1, #0
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032AAA
	adds r0, r3, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r4
	str r0, [r5, #4]
	str r1, [r5, #8]
_08032AAA:
	adds r7, #0xc
	adds r6, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08032A6E
_08032AB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032AC4: .4byte gUnk2022EB0
_08032AC8: .4byte 0x02022120
_08032ACC: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8032AD0
sub_8032AD0: @ 0x08032AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08032B44
	ldrh r1, [r0, #8]
	cmp r6, r1
	bhs _08032B36
	mov ip, r0
	ldr r0, _08032B48
	mov sb, r0
	ldr r1, _08032B4C
	mov r8, r1
	movs r7, #0
_08032AEE:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r6, #1
	adds r5, r7, r0
	mov r1, ip
	ldr r0, [r1]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, [r1]
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	adds r0, r1, #0
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032B2A
	adds r0, r3, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r4
	str r0, [r5, #4]
	str r1, [r5, #8]
_08032B2A:
	adds r7, #0xc
	adds r6, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08032AEE
_08032B36:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032B44: .4byte gUnk2022EB0
_08032B48: .4byte 0x02022B80
_08032B4C: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8032B50
sub_8032B50: @ 0x08032B50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r6, #0
	ldr r0, _08032BC4
	ldrh r1, [r0, #8]
	cmp r6, r1
	bhs _08032BB6
	mov ip, r0
	ldr r0, _08032BC8
	mov sb, r0
	ldr r1, _08032BCC
	mov r8, r1
	movs r7, #0
_08032B6E:
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r6, #1
	adds r5, r7, r0
	mov r1, ip
	ldr r0, [r1]
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, [r1]
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	adds r0, r1, #0
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032BAA
	ldr r0, _08032BD0
	ldr r1, _08032BD4
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08032BAA:
	adds r7, #0xc
	adds r6, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08032B6E
_08032BB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032BC4: .4byte gUnk2022EB0
_08032BC8: .4byte gTotalCardQty
_08032BCC: .4byte 0x08E0CC20
_08032BD0: .4byte 0x00000320
_08032BD4: .4byte 0x00000000

	THUMB_FUNC_START sub_8032BD8
sub_8032BD8: @ 0x08032BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08032C68
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08032C58
	mov r8, r0
	ldr r0, _08032C6C
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _08032C70
	mov sb, r0
_08032BFA:
	ldr r1, _08032C74
	ldr r0, [r1]
	lsls r3, r7, #1
	mov r1, ip
	adds r6, r1, r0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #1
	mov r1, sl
	ldrb r2, [r1]
	ldr r1, _08032C78
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _08032C7C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	str r4, [r6, #4]
	str r5, [r6, #8]
	ldrh r0, [r3]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032C4A
	ldr r0, _08032C80
	ldr r1, _08032C84
	adds r4, r4, r0
	adcs r5, r1
	str r4, [r6, #4]
	str r5, [r6, #8]
_08032C4A:
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08032BFA
_08032C58:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032C68: .4byte gUnk2022EB0
_08032C6C: .4byte gLanguage
_08032C70: .4byte gTrunkCardQty
_08032C74: .4byte 0x08E0CC20
_08032C78: .4byte 0x00000642
_08032C7C: .4byte 0x080D0444
_08032C80: .4byte 0x00000320
_08032C84: .4byte 0x00000000

	THUMB_FUNC_START sub_8032C88
sub_8032C88: @ 0x08032C88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08032D18
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08032D08
	mov r8, r0
	ldr r0, _08032D1C
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _08032D20
	mov sb, r0
_08032CAA:
	ldr r1, _08032D24
	ldr r0, [r1]
	lsls r3, r7, #1
	mov r1, ip
	adds r6, r1, r0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #1
	mov r1, sl
	ldrb r2, [r1]
	ldr r1, _08032D28
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _08032D2C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	str r4, [r6, #4]
	str r5, [r6, #8]
	ldrh r0, [r3]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032CFA
	ldr r0, _08032D30
	ldr r1, _08032D34
	adds r4, r4, r0
	adcs r5, r1
	str r4, [r6, #4]
	str r5, [r6, #8]
_08032CFA:
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08032CAA
_08032D08:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D18: .4byte gUnk2022EB0
_08032D1C: .4byte gLanguage
_08032D20: .4byte 0x02022120
_08032D24: .4byte 0x08E0CC20
_08032D28: .4byte 0x00000642
_08032D2C: .4byte 0x080D0444
_08032D30: .4byte 0x00000320
_08032D34: .4byte 0x00000000

	THUMB_FUNC_START sub_8032D38
sub_8032D38: @ 0x08032D38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08032DC8
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08032DB8
	mov r8, r0
	ldr r0, _08032DCC
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _08032DD0
	mov sb, r0
_08032D5A:
	ldr r1, _08032DD4
	ldr r0, [r1]
	lsls r3, r7, #1
	mov r1, ip
	adds r6, r1, r0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #1
	mov r1, sl
	ldrb r2, [r1]
	ldr r1, _08032DD8
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _08032DDC
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	str r4, [r6, #4]
	str r5, [r6, #8]
	ldrh r0, [r3]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032DAA
	ldr r0, _08032DE0
	ldr r1, _08032DE4
	adds r4, r4, r0
	adcs r5, r1
	str r4, [r6, #4]
	str r5, [r6, #8]
_08032DAA:
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08032D5A
_08032DB8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032DC8: .4byte gUnk2022EB0
_08032DCC: .4byte gLanguage
_08032DD0: .4byte 0x02022B80
_08032DD4: .4byte 0x08E0CC20
_08032DD8: .4byte 0x00000642
_08032DDC: .4byte 0x080D0444
_08032DE0: .4byte 0x00000320
_08032DE4: .4byte 0x00000000

	THUMB_FUNC_START sub_8032DE8
sub_8032DE8: @ 0x08032DE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08032E78
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08032E68
	mov r8, r0
	ldr r0, _08032E7C
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _08032E80
	mov sb, r0
_08032E0A:
	ldr r1, _08032E84
	ldr r0, [r1]
	lsls r3, r7, #1
	mov r1, ip
	adds r6, r1, r0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r6]
	ldr r0, [r1]
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #1
	mov r1, sl
	ldrb r2, [r1]
	ldr r1, _08032E88
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r1, _08032E8C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	str r4, [r6, #4]
	str r5, [r6, #8]
	ldrh r0, [r3]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032E5A
	ldr r0, _08032E90
	ldr r1, _08032E94
	adds r4, r4, r0
	adcs r5, r1
	str r4, [r6, #4]
	str r5, [r6, #8]
_08032E5A:
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08032E0A
_08032E68:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032E78: .4byte gUnk2022EB0
_08032E7C: .4byte gLanguage
_08032E80: .4byte gTotalCardQty
_08032E84: .4byte 0x08E0CC20
_08032E88: .4byte 0x00000642
_08032E8C: .4byte 0x080D0444
_08032E90: .4byte 0x00000320
_08032E94: .4byte 0x00000000

	THUMB_FUNC_START sub_8032E98
sub_8032E98: @ 0x08032E98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08032F3C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08032F2C
	mov sb, r0
	ldr r0, _08032F40
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08032EB8:
	ldr r1, _08032F44
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08032F48
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08032F4C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032F1C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08032F1C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08032EB8
_08032F2C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F3C: .4byte gUnk2022EB0
_08032F40: .4byte gTrunkCardQty
_08032F44: .4byte 0x08E0CC20
_08032F48: .4byte gCardAtks
_08032F4C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8032F50
sub_8032F50: @ 0x08032F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08032FF4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08032FE4
	mov sb, r0
	ldr r0, _08032FF8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08032F70:
	ldr r1, _08032FFC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033000
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033004
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032FD4
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08032FD4:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08032F70
_08032FE4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032FF4: .4byte gUnk2022EB0
_08032FF8: .4byte 0x02022120
_08032FFC: .4byte 0x08E0CC20
_08033000: .4byte gCardAtks
_08033004: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033008
sub_8033008: @ 0x08033008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080330AC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803309C
	mov sb, r0
	ldr r0, _080330B0
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033028:
	ldr r1, _080330B4
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080330B8
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080330BC
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803308C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803308C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033028
_0803309C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080330AC: .4byte gUnk2022EB0
_080330B0: .4byte 0x02022B80
_080330B4: .4byte 0x08E0CC20
_080330B8: .4byte gCardAtks
_080330BC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80330C0
sub_80330C0: @ 0x080330C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033148
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033138
	mov sb, r0
	ldr r2, _0803314C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_080330DE:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r2, _08033150
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033154
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080330DE
_08033138:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033148: .4byte gUnk2022EB0
_0803314C: .4byte 0x08E0CC20
_08033150: .4byte gCardAtks
_08033154: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033158
sub_8033158: @ 0x08033158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080331FC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080331EC
	mov sb, r0
	ldr r0, _08033200
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033178:
	ldr r1, _08033204
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033208
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _0803320C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080331DC
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080331DC:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033178
_080331EC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080331FC: .4byte gUnk2022EB0
_08033200: .4byte gTotalCardQty
_08033204: .4byte 0x08E0CC20
_08033208: .4byte gCardAtks
_0803320C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033210
sub_8033210: @ 0x08033210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080332B4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080332A4
	mov sb, r0
	ldr r0, _080332B8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033230:
	ldr r1, _080332BC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080332C0
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080332C4
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033294
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033294:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033230
_080332A4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080332B4: .4byte gUnk2022EB0
_080332B8: .4byte gTrunkCardQty
_080332BC: .4byte 0x08E0CC20
_080332C0: .4byte gCardDefs
_080332C4: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80332C8
sub_80332C8: @ 0x080332C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _0803336C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803335C
	mov sb, r0
	ldr r0, _08033370
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080332E8:
	ldr r1, _08033374
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033378
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _0803337C
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803334C
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803334C:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080332E8
_0803335C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803336C: .4byte gUnk2022EB0
_08033370: .4byte 0x02022120
_08033374: .4byte 0x08E0CC20
_08033378: .4byte gCardDefs
_0803337C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033380
sub_8033380: @ 0x08033380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033424
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033414
	mov sb, r0
	ldr r0, _08033428
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080333A0:
	ldr r1, _0803342C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033430
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033434
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033404
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033404:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080333A0
_08033414:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033424: .4byte gUnk2022EB0
_08033428: .4byte 0x02022B80
_0803342C: .4byte 0x08E0CC20
_08033430: .4byte gCardDefs
_08033434: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033438
sub_8033438: @ 0x08033438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080334C0
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080334B0
	mov sb, r0
	ldr r2, _080334C4
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033456:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r2, _080334C8
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _080334CC
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033456
_080334B0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080334C0: .4byte gUnk2022EB0
_080334C4: .4byte 0x08E0CC20
_080334C8: .4byte gCardDefs
_080334CC: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_80334D0
sub_80334D0: @ 0x080334D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033574
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033564
	mov sb, r0
	ldr r0, _08033578
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080334F0:
	ldr r1, _0803357C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _08033580
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r2, #1
	ldr r0, _08033584
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033554
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033554:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080334F0
_08033564:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033574: .4byte gUnk2022EB0
_08033578: .4byte gTotalCardQty
_0803357C: .4byte 0x08E0CC20
_08033580: .4byte gCardDefs
_08033584: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_8033588
sub_8033588: @ 0x08033588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033624
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033616
	mov sb, r0
	ldr r0, _08033628
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080335A8:
	ldr r1, _0803362C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033630
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033606
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033606:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080335A8
_08033616:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033624: .4byte gUnk2022EB0
_08033628: .4byte gTrunkCardQty
_0803362C: .4byte 0x08E0CC20
_08033630: .4byte gCardTypes

	THUMB_FUNC_START sub_8033634
sub_8033634: @ 0x08033634
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080336D0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080336C2
	mov sb, r0
	ldr r0, _080336D4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033654:
	ldr r1, _080336D8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _080336DC
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080336B2
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080336B2:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033654
_080336C2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080336D0: .4byte gUnk2022EB0
_080336D4: .4byte 0x02022120
_080336D8: .4byte 0x08E0CC20
_080336DC: .4byte gCardTypes

	THUMB_FUNC_START sub_80336E0
sub_80336E0: @ 0x080336E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _0803377C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803376E
	mov sb, r0
	ldr r0, _08033780
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033700:
	ldr r1, _08033784
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033788
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803375E
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803375E:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033700
_0803376E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803377C: .4byte gUnk2022EB0
_08033780: .4byte 0x02022B80
_08033784: .4byte 0x08E0CC20
_08033788: .4byte gCardTypes

	THUMB_FUNC_START sub_803378C
sub_803378C: @ 0x0803378C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0803380C
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080337FE
	mov sb, r0
	ldr r2, _08033810
	mov sl, r2
	movs r0, #0
	mov ip, r0
_080337AA:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r2, _08033814
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080337AA
_080337FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803380C: .4byte gUnk2022EB0
_08033810: .4byte 0x08E0CC20
_08033814: .4byte gCardTypes

	THUMB_FUNC_START sub_8033818
sub_8033818: @ 0x08033818
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080338B4
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080338A6
	mov sb, r0
	ldr r0, _080338B8
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033838:
	ldr r1, _080338BC
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _080338C0
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0xff
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033896
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033896:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033838
_080338A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080338B4: .4byte gUnk2022EB0
_080338B8: .4byte gTotalCardQty
_080338BC: .4byte 0x08E0CC20
_080338C0: .4byte gCardTypes

	THUMB_FUNC_START sub_80338C4
sub_80338C4: @ 0x080338C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033968
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _0803395A
	mov sb, r0
	ldr r0, _0803396C
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080338E4:
	ldr r1, _08033970
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033974
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803394A
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803394A:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _080338E4
_0803395A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033968: .4byte gUnk2022EB0
_0803396C: .4byte gTrunkCardQty
_08033970: .4byte 0x08E0CC20
_08033974: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033978
sub_8033978: @ 0x08033978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033A1C
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033A0E
	mov sb, r0
	ldr r0, _08033A20
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033998:
	ldr r1, _08033A24
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033A28
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080339FE
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080339FE:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033998
_08033A0E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A1C: .4byte gUnk2022EB0
_08033A20: .4byte 0x02022120
_08033A24: .4byte 0x08E0CC20
_08033A28: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033A2C
sub_8033A2C: @ 0x08033A2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033AD0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033AC2
	mov sb, r0
	ldr r0, _08033AD4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033A4C:
	ldr r1, _08033AD8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033ADC
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033AB2
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033AB2:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033A4C
_08033AC2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033AD0: .4byte gUnk2022EB0
_08033AD4: .4byte 0x02022B80
_08033AD8: .4byte 0x08E0CC20
_08033ADC: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033AE0
sub_8033AE0: @ 0x08033AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033B68
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033B5A
	mov sb, r0
	ldr r2, _08033B6C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033AFE:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r2, _08033B70
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033AFE
_08033B5A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033B68: .4byte gUnk2022EB0
_08033B6C: .4byte 0x08E0CC20
_08033B70: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033B74
sub_8033B74: @ 0x08033B74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033C18
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033C0A
	mov sb, r0
	ldr r0, _08033C1C
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033B94:
	ldr r1, _08033C20
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r0, [r6]
	ldr r1, _08033C24
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	subs r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	adds r0, r2, #0
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033BFA
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033BFA:
	movs r0, #0xc
	add r8, r0
	movs r1, #1
	add ip, r1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp ip, r0
	blo _08033B94
_08033C0A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C18: .4byte gUnk2022EB0
_08033C1C: .4byte gTotalCardQty
_08033C20: .4byte 0x08E0CC20
_08033C24: .4byte gCardAttributes

	THUMB_FUNC_START sub_8033C28
sub_8033C28: @ 0x08033C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033CA8
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033C98
	mov sb, r0
	ldr r2, _08033CAC
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033C46:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033CB0
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033C46
_08033C98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033CA8: .4byte gUnk2022EB0
_08033CAC: .4byte 0x08E0CC20
_08033CB0: .4byte gCardCosts

	THUMB_FUNC_START sub_8033CB4
sub_8033CB4: @ 0x08033CB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033D50
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033D40
	mov sb, r0
	ldr r0, _08033D54
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033CD4:
	ldr r1, _08033D58
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033D5C
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033D30
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033D30:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033CD4
_08033D40:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033D50: .4byte gUnk2022EB0
_08033D54: .4byte gTrunkCardQty
_08033D58: .4byte 0x08E0CC20
_08033D5C: .4byte gCardCosts

	THUMB_FUNC_START sub_8033D60
sub_8033D60: @ 0x08033D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033DFC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033DEC
	mov sb, r0
	ldr r0, _08033E00
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033D80:
	ldr r1, _08033E04
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033E08
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033DDC
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033DDC:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033D80
_08033DEC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033DFC: .4byte gUnk2022EB0
_08033E00: .4byte 0x02022120
_08033E04: .4byte 0x08E0CC20
_08033E08: .4byte gCardCosts

	THUMB_FUNC_START sub_8033E0C
sub_8033E0C: @ 0x08033E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033EA8
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033E98
	mov sb, r0
	ldr r0, _08033EAC
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033E2C:
	ldr r1, _08033EB0
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033EB4
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033E88
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033E88:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033E2C
_08033E98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033EA8: .4byte gUnk2022EB0
_08033EAC: .4byte 0x02022B80
_08033EB0: .4byte 0x08E0CC20
_08033EB4: .4byte gCardCosts

	THUMB_FUNC_START sub_8033EB8
sub_8033EB8: @ 0x08033EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08033F38
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08033F28
	mov sb, r0
	ldr r2, _08033F3C
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08033ED6:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033F40
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08033ED6
_08033F28:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F38: .4byte gUnk2022EB0
_08033F3C: .4byte 0x08E0CC20
_08033F40: .4byte gCardCosts

	THUMB_FUNC_START sub_8033F44
sub_8033F44: @ 0x08033F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08033FE0
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08033FD0
	mov sb, r0
	ldr r0, _08033FE4
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08033F64:
	ldr r1, _08033FE8
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	lsls r2, r2, #2
	ldr r0, _08033FEC
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033FC0
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08033FC0:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08033F64
_08033FD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033FE0: .4byte gUnk2022EB0
_08033FE4: .4byte gTotalCardQty
_08033FE8: .4byte 0x08E0CC20
_08033FEC: .4byte gCardCosts

	THUMB_FUNC_START sub_8033FF0
sub_8033FF0: @ 0x08033FF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _0803406C
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803405E
	mov sb, r0
	ldr r2, _08034070
	mov sl, r2
	movs r0, #0
	mov ip, r0
_0803400E:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034074
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _0803400E
_0803405E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803406C: .4byte gUnk2022EB0
_08034070: .4byte 0x08E0CC20
_08034074: .4byte gTrunkCardQty

	THUMB_FUNC_START sub_8034078
sub_8034078: @ 0x08034078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r0, _08034110
	ldrh r1, [r0, #8]
	cmp sl, r1
	bhs _08034100
	mov sb, r0
	movs r7, #0
_08034092:
	ldr r2, _08034114
	ldr r1, [r2]
	mov r0, sl
	lsls r6, r0, #1
	adds r1, r7, r1
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, r6, r1
	ldrh r0, [r1]
	ldr r2, _08034118
	strh r0, [r2, #0x10]
	ldr r2, _0803411C
	ldrh r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r1, _08034118
	strb r0, [r1, #0x12]
	bl sub_800BD44
	ldr r2, _08034114
	ldr r2, [r2]
	mov r8, r2
	add r8, r7
	ldr r2, _08034118
	ldr r0, [r2]
	ldr r1, [r2, #4]
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	mov r1, sb
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	adds r7, #0xc
	movs r0, #1
	add sl, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp sl, r1
	blo _08034092
_08034100:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034110: .4byte gUnk2022EB0
_08034114: .4byte 0x08E0CC20
_08034118: .4byte 0x02021AF0
_0803411C: .4byte 0x02022120

	THUMB_FUNC_START sub_8034120
sub_8034120: @ 0x08034120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sb, r0
	ldr r0, _080341D8
	ldrh r1, [r0, #8]
	cmp sb, r1
	bhs _080341C8
	mov sl, r0
	movs r2, #0
	mov r8, r2
_0803413C:
	ldr r0, _080341DC
	ldr r1, [r0]
	mov r2, sb
	lsls r6, r2, #1
	add r1, r8
	mov r2, sl
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r2]
	adds r1, r6, r1
	ldrh r0, [r1]
	ldr r2, _080341E0
	strh r0, [r2, #0x10]
	ldr r2, _080341E4
	ldrh r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r1, _080341E0
	strb r0, [r1, #0x12]
	bl sub_800BDA0
	ldr r2, _080341DC
	ldr r0, [r2]
	mov r1, r8
	adds r7, r1, r0
	ldr r2, _080341E0
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldr r1, _080341E8
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080341B8
	ldr r2, _080341EC
	ldr r3, _080341F0
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	str r0, [r7, #4]
	str r1, [r7, #8]
_080341B8:
	movs r2, #0xc
	add r8, r2
	movs r0, #1
	add sb, r0
	mov r1, sl
	ldrh r1, [r1, #8]
	cmp sb, r1
	blo _0803413C
_080341C8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341D8: .4byte gUnk2022EB0
_080341DC: .4byte 0x08E0CC20
_080341E0: .4byte 0x02021AF0
_080341E4: .4byte 0x02022120
_080341E8: .4byte 0x02022B80
_080341EC: .4byte 0x00000000
_080341F0: .4byte 0x10000000

	THUMB_FUNC_START sub_80341F4
sub_80341F4: @ 0x080341F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08034270
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08034262
	mov sb, r0
	ldr r2, _08034274
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08034212:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034278
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08034212
_08034262:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034270: .4byte gUnk2022EB0
_08034274: .4byte 0x08E0CC20
_08034278: .4byte gCardLevels

	THUMB_FUNC_START sub_803427C
sub_803427C: @ 0x0803427C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034314
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034306
	mov sb, r0
	ldr r0, _08034318
	mov sl, r0
	movs r1, #0
	mov r8, r1
_0803429C:
	ldr r1, _0803431C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034320
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080342F6
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_080342F6:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _0803429C
_08034306:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034314: .4byte gUnk2022EB0
_08034318: .4byte gTrunkCardQty
_0803431C: .4byte 0x08E0CC20
_08034320: .4byte gCardLevels

	THUMB_FUNC_START sub_8034324
sub_8034324: @ 0x08034324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _080343BC
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _080343AE
	mov sb, r0
	ldr r0, _080343C0
	mov sl, r0
	movs r1, #0
	mov r8, r1
_08034344:
	ldr r1, _080343C4
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080343C8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803439E
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_0803439E:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _08034344
_080343AE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080343BC: .4byte gUnk2022EB0
_080343C0: .4byte 0x02022120
_080343C4: .4byte 0x08E0CC20
_080343C8: .4byte gCardLevels

	THUMB_FUNC_START sub_80343CC
sub_80343CC: @ 0x080343CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034464
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034456
	mov sb, r0
	ldr r0, _08034468
	mov sl, r0
	movs r1, #0
	mov r8, r1
_080343EC:
	ldr r1, _0803446C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _08034470
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034446
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08034446:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _080343EC
_08034456:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034464: .4byte gUnk2022EB0
_08034468: .4byte 0x02022B80
_0803446C: .4byte 0x08E0CC20
_08034470: .4byte gCardLevels

	THUMB_FUNC_START sub_8034474
sub_8034474: @ 0x08034474
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080344F0
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _080344E2
	mov sb, r0
	ldr r2, _080344F4
	mov sl, r2
	movs r0, #0
	mov ip, r0
_08034492:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080344F8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08034492
_080344E2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344F0: .4byte gUnk2022EB0
_080344F4: .4byte 0x08E0CC20
_080344F8: .4byte gCardLevels

	THUMB_FUNC_START sub_80344FC
sub_80344FC: @ 0x080344FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov ip, r0
	ldr r0, _08034594
	ldrh r1, [r0, #8]
	cmp ip, r1
	bhs _08034586
	mov sb, r0
	ldr r0, _08034598
	mov sl, r0
	movs r1, #0
	mov r8, r1
_0803451C:
	ldr r1, _0803459C
	ldr r0, [r1]
	mov r1, ip
	lsls r6, r1, #1
	mov r1, r8
	adds r7, r1, r0
	mov r1, sb
	ldr r0, [r1]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r7]
	ldr r0, [r1]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080345A0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	adds r4, r2, #0
	orrs r4, r0
	adds r5, r3, #0
	orrs r5, r1
	str r4, [r7, #4]
	str r5, [r7, #8]
	ldrh r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034576
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r1, r5
	str r0, [r7, #4]
	str r1, [r7, #8]
_08034576:
	movs r1, #0xc
	add r8, r1
	movs r0, #1
	add ip, r0
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp ip, r1
	blo _0803451C
_08034586:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034594: .4byte gUnk2022EB0
_08034598: .4byte gTotalCardQty
_0803459C: .4byte 0x08E0CC20
_080345A0: .4byte gCardLevels

	THUMB_FUNC_START sub_80345A4
sub_80345A4: @ 0x080345A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov sl, r0
	ldr r0, _08034624
	ldrh r1, [r0, #8]
	cmp sl, r1
	bhs _08034616
	adds r7, r0, #0
	movs r2, #0
	mov sb, r2
_080345C0:
	ldr r0, _08034628
	ldr r1, [r0]
	mov r2, sl
	lsls r6, r2, #1
	add r1, sb
	ldr r0, [r7]
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, r6, r0
	ldrh r0, [r0]
	bl GetDeckCardQty
	ldr r1, _08034628
	ldr r1, [r1]
	mov r8, r1
	add r8, sb
	asrs r1, r0, #0x1f
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldr r0, [r7]
	adds r6, r6, r0
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add sb, r0
	movs r1, #1
	add sl, r1
	ldrh r2, [r7, #8]
	cmp sl, r2
	blo _080345C0
_08034616:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034624: .4byte gUnk2022EB0
_08034628: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_803462C
sub_803462C: @ 0x0803462C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080346A8
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803469A
	mov sb, r0
	ldr r2, _080346AC
	mov sl, r2
	movs r0, #0
	mov ip, r0
_0803464A:
	mov r1, sl
	ldr r1, [r1]
	mov r8, r1
	lsls r6, r7, #1
	add r8, ip
	mov r2, sb
	ldr r0, [r2]
	adds r0, r6, r0
	ldrh r0, [r0]
	mov r1, r8
	strh r0, [r1]
	ldr r0, [r2]
	adds r6, r6, r0
	ldrh r2, [r6]
	ldr r0, _080346B0
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0
	lsrs r5, r0, #0x10
	lsls r4, r1, #0x10
	adds r3, r5, #0
	orrs r3, r4
	lsls r2, r0, #0x10
	ldrh r4, [r6]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	asrs r1, r0, #0x1f
	orrs r0, r2
	orrs r1, r3
	mov r2, r8
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r0, #0xc
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _0803464A
_0803469A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080346A8: .4byte gUnk2022EB0
_080346AC: .4byte 0x08E0CC20
_080346B0: .4byte gTotalCardQty

	THUMB_FUNC_START sub_80346B4
sub_80346B4: @ 0x080346B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r1, _08034754
	ldrh r0, [r1, #8]
	cmp r7, r0
	bhs _08034746
	ldr r0, _08034758
	mov ip, r0
	ldr r0, _0803475C
	mov sl, r0
	ldr r0, _08034760
	mov sb, r0
	ldr r0, _08034764
	mov r8, r0
	movs r6, #0
_080346DA:
	ldr r1, [r1]
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	mov r1, ip
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034710
	ldr r0, _08034768
	ldr r1, _0803476C
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08034710:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034724
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803473A
_08034724:
	mov r1, ip
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _08034770
	ldr r4, _08034774
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_0803473A:
	adds r6, #0xc
	adds r7, #1
	ldr r1, _08034754
	ldrh r0, [r1, #8]
	cmp r7, r0
	blo _080346DA
_08034746:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034754: .4byte gUnk2022EB0
_08034758: .4byte 0x08E0CC20
_0803475C: .4byte gTotalCardQty
_08034760: .4byte gCardMonsterEffects
_08034764: .4byte gUnk8094CC3
_08034768: .4byte 0x00000640
_0803476C: .4byte 0x00000000
_08034770: .4byte 0x00000320
_08034774: .4byte 0x00000000

	THUMB_FUNC_START sub_8034778
sub_8034778: @ 0x08034778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r1, _080347F4
	mov sb, r1
	ldrh r0, [r1, #8]
	cmp r5, r0
	bhs _080347E6
	ldr r2, _080347F8
	mov r8, r2
	ldr r7, _080347FC
	mov ip, r7
	ldr r0, _08034800
	mov sl, r0
	movs r6, #0
_0803479C:
	ldr r1, [r1]
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r2, r8
	ldr r0, [r2]
	adds r4, r6, r0
	strh r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r4, #4]
	str r3, [r4, #8]
	mov r7, ip
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080347CE
	mov r7, sl
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080347DA
_080347CE:
	ldr r0, _08034804
	ldr r1, _08034808
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #4]
	str r3, [r4, #8]
_080347DA:
	adds r6, #0xc
	adds r5, #1
	mov r1, sb
	ldrh r0, [r1, #8]
	cmp r5, r0
	blo _0803479C
_080347E6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080347F4: .4byte gUnk2022EB0
_080347F8: .4byte 0x08E0CC20
_080347FC: .4byte gCardMonsterEffects
_08034800: .4byte gUnk8094CC3
_08034804: .4byte 0x00000320
_08034808: .4byte 0x00000000

	THUMB_FUNC_START sub_803480C
sub_803480C: @ 0x0803480C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _080348AC
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _0803489C
	ldr r1, _080348B0
	mov r8, r1
	ldr r1, _080348B4
	mov sl, r1
	ldr r1, _080348B8
	mov sb, r1
	movs r6, #0
	mov ip, r6
_08034830:
	ldr r0, [r0]
	add r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _080348BC
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034860
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803486C
_08034860:
	ldr r0, _080348C0
	ldr r1, _080348C4
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_0803486C:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803488C
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _080348C8
	ldr r4, _080348CC
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_0803488C:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	ldr r0, _080348AC
	ldrh r1, [r0, #8]
	cmp r7, r1
	blo _08034830
_0803489C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080348AC: .4byte gUnk2022EB0
_080348B0: .4byte 0x08E0CC20
_080348B4: .4byte gUnk8094CC3
_080348B8: .4byte 0x02022B80
_080348BC: .4byte gCardMonsterEffects
_080348C0: .4byte 0x00000320
_080348C4: .4byte 0x00000000
_080348C8: .4byte 0x00000640
_080348CC: .4byte 0x00000000

	THUMB_FUNC_START sub_80348D0
sub_80348D0: @ 0x080348D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08034970
	ldrh r1, [r0, #8]
	cmp r7, r1
	bhs _08034960
	ldr r1, _08034974
	mov r8, r1
	ldr r1, _08034978
	mov sl, r1
	ldr r1, _0803497C
	mov sb, r1
	movs r6, #0
	mov ip, r6
_080348F4:
	ldr r0, [r0]
	add r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _08034980
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034924
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034930
_08034924:
	ldr r0, _08034984
	ldr r1, _08034988
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08034930:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034950
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _0803498C
	ldr r4, _08034990
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_08034950:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	ldr r0, _08034970
	ldrh r1, [r0, #8]
	cmp r7, r1
	blo _080348F4
_08034960:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034970: .4byte gUnk2022EB0
_08034974: .4byte 0x08E0CC20
_08034978: .4byte gUnk8094CC3
_0803497C: .4byte 0x02022120
_08034980: .4byte gCardMonsterEffects
_08034984: .4byte 0x00000320
_08034988: .4byte 0x00000000
_0803498C: .4byte 0x00000640
_08034990: .4byte 0x00000000
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x83, 0xB0
	.byte 0x00, 0x21, 0x23, 0x48, 0x80, 0x46, 0x00, 0x26, 0x00, 0x25, 0x42, 0x46, 0x10, 0x89, 0x01, 0x31
	.byte 0x40, 0x1A, 0x8A, 0x46, 0x86, 0x42, 0x2D, 0xDA, 0x1E, 0x4B, 0x9C, 0x46, 0x64, 0x46, 0x21, 0x68
	.byte 0x68, 0x00, 0x40, 0x19, 0x80, 0x00, 0x81, 0x46, 0x42, 0x18, 0x13, 0x1C, 0x0C, 0x33, 0x99, 0x68
	.byte 0x90, 0x68, 0x81, 0x42, 0x05, 0xD8, 0x81, 0x42, 0x13, 0xD1, 0x59, 0x68, 0x50, 0x68, 0x81, 0x42
	.byte 0x0F, 0xD9, 0x69, 0x46, 0x10, 0x1C, 0xD0, 0xC8, 0xD0, 0xC1, 0x11, 0x1C, 0x18, 0x1C, 0xC4, 0xC8
	.byte 0xC4, 0xC1, 0x63, 0x46, 0x19, 0x68, 0x49, 0x44, 0x0C, 0x31, 0x68, 0x46, 0xD0, 0xC8, 0xD0, 0xC1
	.byte 0x01, 0x26, 0x68, 0x1C, 0x00, 0x04, 0x05, 0x0C, 0x41, 0x46, 0x08, 0x89, 0x52, 0x46, 0x80, 0x1A
	.byte 0x85, 0x42, 0xD3, 0xDB, 0x53, 0x46, 0x18, 0x04, 0x01, 0x0C, 0x01, 0x2E, 0xC3, 0xD0, 0x03, 0xB0
	.byte 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xB0, 0x2E, 0x02, 0x02, 0x20, 0xCC, 0xE0, 0x08

	THUMB_FUNC_START sub_8034A38
sub_8034A38: @ 0x08034A38
	push {r4, r5, lr}
	ldr r4, _08034A80
	ldrb r0, [r4, #0xa]
	cmp r0, #0x39
	bhi _08034A7A
	bl sub_8034DF8
	ldr r0, _08034A84
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl _call_via_r0
	bl sub_8032848
	movs r2, #0
	ldrh r0, [r4, #8]
	cmp r2, r0
	bhs _08034A7A
	ldr r5, _08034A88
	movs r3, #0
	ldr r1, [r4]
_08034A66:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #0xc
	adds r1, #2
	adds r2, #1
	ldrh r0, [r4, #8]
	cmp r2, r0
	blo _08034A66
_08034A7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034A80: .4byte gUnk2022EB0
_08034A84: .4byte 0x08E0CC28
_08034A88: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034A8C
sub_8034A8C: @ 0x08034A8C
	push {lr}
	ldr r0, _08034AB0
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _08034AAC
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r1, r0
	bhi _08034AAC
	ldr r0, _08034AB4
	ldr r0, [r0]
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	bl sub_8032848
_08034AAC:
	pop {r0}
	bx r0
	.align 2, 0
_08034AB0: .4byte gUnk2022EB0
_08034AB4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_8034AB8
sub_8034AB8: @ 0x08034AB8
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r0, _08034AE8
	ldrh r1, [r0, #8]
	cmp r3, r1
	bhs _08034AE2
	ldr r6, _08034AEC
	adds r5, r0, #0
	movs r4, #0
_08034ACA:
	ldr r2, [r6]
	lsls r1, r3, #1
	adds r2, r4, r2
	ldr r0, [r5]
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r4, #0xc
	adds r3, #1
	ldrh r0, [r5, #8]
	cmp r3, r0
	blo _08034ACA
_08034AE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034AE8: .4byte gUnk2022EB0
_08034AEC: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034AF0
sub_8034AF0: @ 0x08034AF0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08034B38
	movs r4, #0
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034B30
	adds r6, r0, #0
	ldr r2, _08034B3C
	mov ip, r2
	movs r5, #0
	ldr r7, _08034B40
_08034B06:
	ldr r3, [r7]
	lsls r1, r4, #1
	adds r3, r5, r3
	mov r2, ip
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r0, [r6, #8]
	cmp r4, r0
	blo _08034B06
_08034B30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034B38: .4byte gUnk2022EB0
_08034B3C: .4byte 0x080CDEC4
_08034B40: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034B44
sub_8034B44: @ 0x08034B44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _08034BA8
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034B9C
	adds r6, r0, #0
	ldr r0, _08034BAC
	mov r8, r0
	ldr r1, _08034BB0
	mov ip, r1
	ldr r7, _08034BB4
	movs r5, #0
_08034B62:
	mov r0, ip
	ldr r3, [r0]
	lsls r1, r4, #1
	adds r3, r5, r3
	ldr r0, [r6]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldrb r2, [r7]
	ldr r1, _08034BB8
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, r8
	ldrh r2, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r1, [r6, #8]
	cmp r4, r1
	blo _08034B62
_08034B9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034BA8: .4byte gUnk2022EB0
_08034BAC: .4byte 0x080D0444
_08034BB0: .4byte 0x08E0CC20
_08034BB4: .4byte gLanguage
_08034BB8: .4byte 0x00000642

	THUMB_FUNC_START sub_8034BBC
sub_8034BBC: @ 0x08034BBC
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034BF4
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034BEE
	ldr r0, _08034BF8
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034BFC
	movs r3, #0
_08034BD4:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034BD4
_08034BEE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034BF4: .4byte gUnk2022EB0
_08034BF8: .4byte 0x08E0CC20
_08034BFC: .4byte 0x080CEB44

	THUMB_FUNC_START sub_8034C00
sub_8034C00: @ 0x08034C00
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034C38
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034C32
	ldr r0, _08034C3C
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034C40
	movs r3, #0
_08034C18:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034C18
_08034C32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034C38: .4byte gUnk2022EB0
_08034C3C: .4byte 0x08E0CC20
_08034C40: .4byte 0x080CF184

	THUMB_FUNC_START sub_8034C44
sub_8034C44: @ 0x08034C44
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034C7C
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034C76
	ldr r0, _08034C80
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034C84
	movs r3, #0
_08034C5C:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034C5C
_08034C76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034C7C: .4byte gUnk2022EB0
_08034C80: .4byte 0x08E0CC20
_08034C84: .4byte 0x080CF7C4

	THUMB_FUNC_START sub_8034C88
sub_8034C88: @ 0x08034C88
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r7, _08034CC0
	ldrh r0, [r7, #8]
	cmp r2, r0
	bhs _08034CBA
	ldr r0, _08034CC4
	mov ip, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _08034CC8
	movs r3, #0
_08034CA0:
	mov r0, ip
	ldr r1, [r0]
	adds r1, r3, r1
	ldrh r0, [r4]
	strh r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	adds r4, #2
	adds r3, #0xc
	adds r2, #1
	ldrh r0, [r7, #8]
	cmp r2, r0
	blo _08034CA0
_08034CBA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034CC0: .4byte gUnk2022EB0
_08034CC4: .4byte 0x08E0CC20
_08034CC8: .4byte 0x080CFE04

	THUMB_FUNC_START sub_8034CCC
sub_8034CCC: @ 0x08034CCC
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _08034D10
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034D08
	adds r5, r0, #0
	movs r6, #0
	ldr r7, _08034D14
_08034CDE:
	ldr r3, [r7]
	lsls r1, r4, #1
	adds r3, r6, r3
	ldr r0, [r5]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r5]
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r6, #0xc
	adds r4, #1
	ldrh r0, [r5, #8]
	cmp r4, r0
	blo _08034CDE
_08034D08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034D10: .4byte gUnk2022EB0
_08034D14: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8034D18
sub_8034D18: @ 0x08034D18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r0, _08034D7C
	ldrh r1, [r0, #8]
	cmp r4, r1
	bhs _08034D70
	adds r6, r0, #0
	ldr r0, _08034D80
	mov r8, r0
	ldr r1, _08034D84
	mov ip, r1
	ldr r7, _08034D88
	movs r5, #0
_08034D36:
	mov r0, ip
	ldr r3, [r0]
	lsls r1, r4, #1
	adds r3, r5, r3
	ldr r0, [r6]
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r0, [r6]
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldrb r2, [r7]
	ldr r1, _08034D8C
	muls r1, r2, r1
	adds r0, r0, r1
	add r0, r8
	ldrh r2, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r2
	asrs r1, r0, #0x1f
	str r0, [r3, #4]
	str r1, [r3, #8]
	adds r5, #0xc
	adds r4, #1
	ldrh r1, [r6, #8]
	cmp r4, r1
	blo _08034D36
_08034D70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034D7C: .4byte gUnk2022EB0
_08034D80: .4byte 0x080D0444
_08034D84: .4byte 0x08E0CC20
_08034D88: .4byte gLanguage
_08034D8C: .4byte 0x00000642

	THUMB_FUNC_START sub_8034D90
sub_8034D90: @ 0x08034D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08034DA4
	ldr r1, [r0]
	adds r1, #0x80
	ldr r1, [r1]
	cmp r1, #0x1f
	bls _08034DA8
_08034DA0:
	b _08034DA0
	.align 2, 0
_08034DA4: .4byte 0x08E0CC24
_08034DA8:
	ldr r1, [r0]
	adds r3, r1, #0
	adds r3, #0x80
	ldr r2, [r3]
	lsls r0, r2, #2
	adds r1, r1, r0
	ldr r0, [r4]
	str r0, [r1]
	adds r2, #1
	str r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8034DC4
sub_8034DC4: @ 0x08034DC4
	adds r3, r0, #0
	ldr r0, _08034DE4
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x80
	ldr r0, [r1]
	cmp r0, #0
	beq _08034DE0
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r3]
_08034DE0:
	bx lr
	.align 2, 0
_08034DE4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_8034DE8
sub_8034DE8: @ 0x08034DE8
	ldr r0, _08034DF4
	ldr r0, [r0]
	adds r0, #0x80
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08034DF4: .4byte 0x08E0CC24

	THUMB_FUNC_START sub_8034DF8
sub_8034DF8: @ 0x08034DF8
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08034E14
	ldr r2, _08034E18
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08034E14: .4byte 0x02018800
_08034E18: .4byte 0x0100218A

	THUMB_FUNC_START sub_8034E1C
sub_8034E1C: @ 0x08034E1C
	ldr r0, _08034E2C
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	movs r2, #0
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bx lr
	.align 2, 0
_08034E2C: .4byte gUnk2022EB0

	THUMB_FUNC_START sub_8034E30
sub_8034E30: @ 0x08034E30
	ldr r2, _08034E44
	movs r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #4]
	bx lr
	.align 2, 0
_08034E44: .4byte 0x0201EE68

	THUMB_FUNC_START sub_8034E48
sub_8034E48: @ 0x08034E48
	ldr r2, _08034E64
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	cmp r0, r1
	bne _08034E62
	ldrb r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #4]
_08034E62:
	bx lr
	.align 2, 0
_08034E64: .4byte 0x0201EE68
	.byte 0x00, 0x04, 0x05, 0x49, 0x00, 0x0C, 0x0A, 0x88
	.byte 0x80, 0x18, 0x48, 0x80, 0x0A, 0x79, 0x02, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x71, 0x70, 0x47
	.byte 0x68, 0xEE, 0x01, 0x02, 0x02, 0x48, 0x00, 0x79, 0xC0, 0x07, 0xC0, 0x0F, 0x70, 0x47, 0x00, 0x00
	.byte 0x68, 0xEE, 0x01, 0x02

	THUMB_FUNC_START sub_8034E94
sub_8034E94: @ 0x08034E94
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08034EB0
	cmp r4, r0
	bhi _08034EB8
	ldr r0, _08034EB4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bhs _08034EB8
	movs r0, #0
	b _08034EBA
	.align 2, 0
_08034EB0: .4byte 0x0000031F
_08034EB4: .4byte 0x000002C5
_08034EB8:
	movs r0, #1
_08034EBA:
	cmp r0, #0
	bne _08034F58
	cmp r4, #0xf6
	beq _08034F04
	cmp r4, #0xf6
	bgt _08034ED0
	cmp r4, #0xf2
	beq _08034EF4
	cmp r4, #0xf4
	beq _08034EFA
	b _08034F58
_08034ED0:
	ldr r0, _08034EE4
	cmp r4, r0
	beq _08034F10
	cmp r4, r0
	bgt _08034EE8
	subs r0, #1
	cmp r4, r0
	beq _08034F0C
	b _08034F58
	.align 2, 0
_08034EE4: .4byte 0x0000017D
_08034EE8:
	ldr r0, _08034EF0
	cmp r4, r0
	beq _08034F14
	b _08034F58
	.align 2, 0
_08034EF0: .4byte 0x0000017F
_08034EF4:
	movs r2, #0xbe
	lsls r2, r2, #1
	b _08034F16
_08034EFA:
	ldr r2, _08034F00
	b _08034F16
	.align 2, 0
_08034F00: .4byte 0x0000017D
_08034F04:
	ldr r2, _08034F08
	b _08034F16
	.align 2, 0
_08034F08: .4byte 0x0000017F
_08034F0C:
	movs r2, #0xf2
	b _08034F16
_08034F10:
	movs r2, #0xf4
	b _08034F16
_08034F14:
	movs r2, #0xf6
_08034F16:
	ldr r3, _08034F44
	ldr r0, _08034F48
	lsls r2, r2, #3
	adds r2, r2, r0
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	bne _08034F52
	ldr r1, [r3, #4]
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _08034F3E
	cmp r1, #0
	bge _08034F4C
_08034F3E:
	movs r0, #0
	b _08034F4E
	.align 2, 0
_08034F44: .4byte 0x08AFBD0C
_08034F48: .4byte 0x08AFBDE4
_08034F4C:
	movs r0, #1
_08034F4E:
	cmp r0, #0
	bne _08034F58
_08034F52:
	adds r0, r4, #0
	bl m4aSongNumStartOrChange
_08034F58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START PlayMusic
PlayMusic: @ 0x08034F60
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_8035128
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08034FCE
	ldr r0, _08034F8C
	adds r0, r4, r0
	ldrb r0, [r0]
	subs r0, #1
	cmp r0, #5
	bhi _08034FCE
	lsls r0, r0, #2
	ldr r1, _08034F90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034F8C: .4byte 0x080D29D0
_08034F90: .4byte _08034F94
_08034F94: @ jump table
	.4byte _08034FC0 @ case 0
	.4byte _08034FAC @ case 1
	.4byte _08034FAC @ case 2
	.4byte _08034FB4 @ case 3
	.4byte _08034FC0 @ case 4
	.4byte _08034FC8 @ case 5
_08034FAC:
	adds r0, r4, #0
	bl m4aSongNumStart
	b _08034FCE
_08034FB4:
	ldr r0, _08034FBC
	bl m4aMPlayStop
	b _08034FCE
	.align 2, 0
_08034FBC: .4byte 0x02025840
_08034FC0:
	adds r0, r4, #0
	bl m4aSongNumStartOrChange
	b _08034FCE
_08034FC8:
	adds r0, r4, #0
	bl sub_8034E94
_08034FCE:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x24, 0xF0, 0xD1, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8034FE0
sub_8034FE0: @ 0x08034FE0
	push {lr}
	movs r0, #0xd6
	bl sub_8034FEC
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8034FEC
sub_8034FEC: @ 0x08034FEC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08035008
	cmp r1, r0
	bhi _08035010
	ldr r0, _0803500C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _08035010
	movs r0, #0
	b _08035012
	.align 2, 0
_08035008: .4byte 0x0000031F
_0803500C: .4byte 0x000002C5
_08035010:
	movs r0, #1
_08035012:
	cmp r0, #0
	bne _0803501C
	adds r0, r1, #0
	bl m4aSongNumStop
_0803501C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8035020
sub_8035020: @ 0x08035020
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08035034
	bl m4aMPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0
_08035034: .4byte 0x02025840

	THUMB_FUNC_START sub_8035038
sub_8035038: @ 0x08035038
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r5, #0
	ldr r0, _08035064
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bhs _0803505E
	adds r6, r0, #0
	ldr r4, _08035068
_0803504E:
	ldr r0, [r4]
	adds r1, r7, #0
	bl m4aMPlayFadeOut
	adds r4, #0xc
	adds r5, #1
	cmp r5, r6
	blo _0803504E
_0803505E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035064: .4byte 0x00000012
_08035068: .4byte 0x08AFBD0C

	THUMB_FUNC_START sub_803506C
sub_803506C: @ 0x0803506C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0803508C
	cmp r2, r0
	bhi _08035094
	ldr r0, _08035090
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r2, r0
	bhs _08035094
	movs r0, #0
	b _08035096
	.align 2, 0
_0803508C: .4byte 0x0000031F
_08035090: .4byte 0x000002C5
_08035094:
	movs r0, #1
_08035096:
	cmp r0, #0
	bne _080350BE
	ldr r3, _080350C4
	ldr r0, _080350C8
	lsls r2, r2, #3
	adds r2, r2, r0
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	bne _080350BE
	adds r0, r3, #0
	adds r1, r4, #0
	bl m4aMPlayFadeOut
_080350BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080350C4: .4byte 0x08AFBD0C
_080350C8: .4byte 0x08AFBDE4
	.byte 0x10, 0xB5, 0x04, 0x1C
	.byte 0x24, 0x04, 0x24, 0x0C, 0x05, 0x48, 0x21, 0x1C, 0xFF, 0xF7, 0xC8, 0xFF, 0x04, 0x48, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0xC4, 0xFF, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xBD, 0x02, 0x00, 0x00
	.byte 0xBE, 0x02, 0x00, 0x00, 0x00, 0x04, 0x09, 0x4A, 0x09, 0x49, 0x40, 0x0B, 0x40, 0x18, 0x81, 0x88
	.byte 0x48, 0x00, 0x40, 0x18, 0x80, 0x00, 0x80, 0x18, 0x00, 0x68, 0x41, 0x68, 0x80, 0x88, 0x00, 0x28
	.byte 0x08, 0xD0, 0x00, 0x29, 0x06, 0xDB, 0x01, 0x20, 0x05, 0xE0, 0x00, 0x00, 0x0C, 0xBD, 0xAF, 0x08
	.byte 0xE4, 0xBD, 0xAF, 0x08, 0x00, 0x20, 0x70, 0x47

	THUMB_FUNC_START sub_8035128
sub_8035128: @ 0x08035128
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08035140
	cmp r1, r0
	bhi _08035148
	ldr r0, _08035144
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _08035148
	movs r0, #0
	b _0803514A
	.align 2, 0
_08035140: .4byte 0x0000031F
_08035144: .4byte 0x000002C5
_08035148:
	movs r0, #1
_0803514A:
	bx lr
	.byte 0x00, 0xB5, 0x00, 0x04
	.byte 0x05, 0x4B, 0x06, 0x49, 0xFF, 0x22, 0x92, 0x04, 0x02, 0x40, 0x12, 0x0C, 0x18, 0x1C, 0x25, 0xF0
	.byte 0x47, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x40, 0x58, 0x02, 0x02, 0xFF, 0xFF, 0x00, 0x00

	THUMB_FUNC_START sub_8035170
sub_8035170: @ 0x08035170
	push {r4, lr}
	movs r3, #0
	ldr r0, _08035194
	ldr r1, [r0]
	movs r2, #0
	ldr r4, _08035198
_0803517C:
	ldrb r0, [r1]
	adds r3, r3, r0
	adds r1, #1
	adds r2, #1
	cmp r2, r4
	bls _0803517C
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08035194: .4byte 0x08E0CD10
_08035198: .4byte 0x00000746

	THUMB_FUNC_START sub_803519C
sub_803519C: @ 0x0803519C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r3, #0
	movs r5, #0
	ldr r6, _080351F0
	ldr r0, [r6]
	cmp r0, #0
	beq _080351E6
	mov r8, r6
	adds r0, r6, #4
	mov ip, r0
	ldr r7, _080351F4
_080351B6:
	lsls r1, r3, #3
	mov r2, r8
	adds r0, r1, r2
	ldr r2, [r0]
	add r1, ip
	ldr r1, [r1]
	adds r3, #1
	cmp r1, #0
	beq _080351DC
	adds r4, r7, #0
_080351CA:
	ldr r0, [r4]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r2]
	adds r5, #1
	adds r2, #1
	subs r1, #1
	cmp r1, #0
	bne _080351CA
_080351DC:
	lsls r0, r3, #3
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	bne _080351B6
_080351E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080351F0: .4byte 0x080D2D00
_080351F4: .4byte 0x08E0CD10

	THUMB_FUNC_START sub_80351F8
sub_80351F8: @ 0x080351F8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r4, #0
	movs r6, #0
	ldr r7, _08035254
	ldr r0, [r7]
	cmp r0, #0
	beq _08035246
	mov sb, r7
	adds r0, r7, #4
	mov r8, r0
	ldr r2, _08035258
	mov ip, r2
_08035216:
	lsls r1, r4, #3
	mov r2, sb
	adds r0, r1, r2
	ldr r3, [r0]
	add r1, r8
	ldr r2, [r1]
	adds r4, #1
	cmp r2, #0
	beq _0803523C
	mov r5, ip
_0803522A:
	ldr r0, [r5]
	adds r0, r0, r6
	ldrb r1, [r3]
	strb r1, [r0]
	adds r3, #1
	adds r6, #1
	subs r2, #1
	cmp r2, #0
	bne _0803522A
_0803523C:
	lsls r0, r4, #3
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _08035216
_08035246:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035254: .4byte 0x080D2D00
_08035258: .4byte 0x08E0CD10

	THUMB_FUNC_START sub_803525C
sub_803525C: @ 0x0803525C
	push {r4, r5, lr}
	movs r4, #1
	bl sub_8035488
	bl sub_8035894
	bl sub_8035B2C
	ldr r0, _080352A8
	bl sub_80081DC
	movs r0, #1
	bl PlayMusic
	bl sub_8008220
	movs r5, #1
_0803527E:
	bl sub_8056208
	bl sub_8035558
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #1
	bne _080352AC
	cmp r4, #0
	bne _0803529E
	bl sub_803531C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080352F2
_0803529E:
	movs r5, #0
	movs r0, #1
	bl sub_8035020
	b _080352F2
	.align 2, 0
_080352A8: .4byte 0x08035AA9
_080352AC:
	cmp r0, #2
	bne _080352BC
	movs r0, #0x36
	bl PlayMusic
	bl sub_803554C
	b _080352CC
_080352BC:
	cmp r1, #4
	bne _080352E4
	movs r0, #0x36
	bl PlayMusic
	adds r0, r4, #0
	bl sub_803552C
_080352CC:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_8035B3C
	ldr r0, _080352E0
	bl sub_80081DC
	bl sub_8008220
	b _080352F2
	.align 2, 0
_080352E0: .4byte 0x08035AC1
_080352E4:
	bl sub_80357F8
	ldr r0, _08035318
	bl sub_80081DC
	bl sub_8008220
_080352F2:
	cmp r5, #1
	beq _0803527E
	bl sub_80357F8
	ldr r0, _08035318
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0xd2
	bl PlayMusic
	bl sub_80353B0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08035318: .4byte 0x08035ACD

	THUMB_FUNC_START sub_803531C
sub_803531C: @ 0x0803531C
	push {r4, r5, lr}
	movs r5, #1
	movs r0, #0xc9
	bl PlayMusic
	ldr r0, _08035350
	bl sub_80081DC
	bl sub_8008220
	bl sub_80359F0
	bl LoadCharblock3
	movs r4, #1
_0803533A:
	bl sub_8035558
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _0803535E
	cmp r0, #2
	bgt _08035354
	cmp r0, #1
	beq _08035360
	b _08035382
	.align 2, 0
_08035350: .4byte 0x08035AE5
_08035354:
	cmp r0, #0x40
	beq _08035364
	cmp r0, #0x80
	beq _0803536C
	b _08035382
_0803535E:
	movs r5, #1
_08035360:
	movs r4, #0
	b _0803538A
_08035364:
	movs r5, #1
	bl sub_80359F0
	b _08035372
_0803536C:
	movs r5, #0
	bl sub_80359D0
_08035372:
	movs r0, #0x36
	bl PlayMusic
	bl sub_8008220
	bl LoadCharblock3
	b _0803538A
_08035382:
	bl sub_8008220
	bl LoadCharblock3
_0803538A:
	cmp r4, #1
	beq _0803533A
	cmp r5, #1
	bne _08035398
	movs r0, #0x38
	bl PlayMusic
_08035398:
	ldr r0, _080353AC
	bl sub_80081DC
	bl sub_8008220
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080353AC: .4byte 0x08035B09

	THUMB_FUNC_START sub_80353B0
sub_80353B0: @ 0x080353B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0803541C
	ldrh r1, [r2]
	movs r7, #0x1f
	ands r7, r1
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r1
	lsrs r4, r0, #8
	movs r6, #0
	movs r5, #0
	mov sb, r2
	movs r0, #0x1f
	mov r8, r0
_080353D2:
	cmp r5, #0
	bne _0803540E
	cmp r7, #0
	beq _080353E0
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080353E0:
	cmp r4, #0
	beq _080353EA
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080353EA:
	lsls r1, r4, #8
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r1, r0
	adds r0, r7, #0
	mov r2, r8
	ands r0, r2
	orrs r1, r0
	mov r0, sb
	strh r1, [r0]
	ldr r1, _08035420
	adds r0, r6, #0
	ands r0, r2
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0803540E:
	cmp r5, #2
	bhi _08035424
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08035426
	.align 2, 0
_0803541C: .4byte gBLDALPHA
_08035420: .4byte gBLDY
_08035424:
	movs r5, #0
_08035426:
	ldr r0, _08035440
	bl sub_80081DC
	bl sub_8008220
	cmp r6, #0xf
	bls _080353D2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035440: .4byte 0x08035ACD

	THUMB_FUNC_START TitleScreen
TitleScreen: @ 0x08035444
	push {lr}
	bl sub_800AC64
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08035456
	bl sub_80354C0 //new game only
	b _0803545A
_08035456:
	bl sub_803525C //new game and continue
_0803545A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0803546C
	bl sub_800AF68
	bl sub_80354A8
	b _08035484
_0803546C: //pressed continue
	bl sub_800AC64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_800ACE8
	bl sub_800ADC4
	bl sub_80354A8
	bl MainMenu
_08035484:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8035488
sub_8035488: @ 0x08035488
	push {lr}
	bl sub_8035598
	bl sub_8035958
	bl sub_80357C0
	ldr r0, _080354A4
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_080354A4: .4byte 0x08035A11

	THUMB_FUNC_START sub_80354A8
sub_80354A8: @ 0x080354A8
	push {lr}
	bl sub_8035988
	ldr r0, _080354BC
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_080354BC: .4byte 0x08035AD9

	THUMB_FUNC_START sub_80354C0
sub_80354C0: @ 0x080354C0
	push {lr}
	bl sub_8035488
	bl sub_803584C
	bl sub_8035B2C
	ldr r0, _080354E0
	bl sub_80081DC
	movs r0, #1
	bl PlayMusic
	bl sub_8008220
	b _080354F2
	.align 2, 0
_080354E0: .4byte 0x08035AA9
_080354E4:
	bl sub_80357F8
	ldr r0, _08035528
	bl sub_80081DC
	bl sub_8008220
_080354F2:
	bl sub_8056208
	bl sub_8035558
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _080354E4
	movs r0, #1
	bl sub_8035020
	bl sub_80357F8
	ldr r0, _08035528
	bl sub_80081DC
	bl sub_8008220
	movs r0, #0xd2
	bl PlayMusic
	bl sub_80353B0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08035528: .4byte 0x08035ACD

	THUMB_FUNC_START sub_803552C
sub_803552C: @ 0x0803552C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bne _0803553E
	movs r4, #0
	bl sub_80358F8
	b _08035544
_0803553E:
	movs r4, #1
	bl sub_8035894
_08035544:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_803554C
sub_803554C: @ 0x0803554C
	push {lr}
	bl sub_8035894
	movs r0, #1
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8035558
sub_8035558: @ 0x08035558
	push {r4, lr}
	movs r4, #0
	bl sub_802612C
	movs r1, #1
	ldr r0, _08035590
	ldrh r3, [r0]
	ldr r0, _08035594
	ands r0, r3
	cmp r0, #0
	beq _08035588
	movs r2, #0
_08035570:
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0803557A
	adds r4, r1, #0
_0803557A:
	lsls r0, r1, #0x11
	lsrs r1, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _08035570
_08035588:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08035590: .4byte gUnk2020DFC
_08035594: .4byte 0x000003FF

	THUMB_FUNC_START sub_8035598
sub_8035598: @ 0x08035598
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _080355CC
	ldr r0, _080355D0
	ldr r0, [r0]
	ldr r4, _080355D4
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r1, _080355D8
	ldr r2, _080355DC
	adds r0, r4, #0
	bl sub_8020A3C
	ldrb r0, [r5]
	cmp r0, #2
	beq _08035618
	cmp r0, #2
	bgt _080355E0
	cmp r0, #1
	beq _080355EA
	b _0803569C
	.align 2, 0
_080355CC: .4byte gLanguage
_080355D0: .4byte 0x08E0CD9C
_080355D4: .4byte 0x02000400
_080355D8: .4byte 0x080DD498
_080355DC: .4byte 0x000004FF
_080355E0:
	cmp r0, #3
	beq _08035644
	cmp r0, #4
	beq _08035670
	b _0803569C
_080355EA:
	movs r4, #0
	ldr r6, _0803560C
	movs r5, #0
_080355F0:
	ldr r0, [r6]
	adds r0, r0, r5
	lsls r1, r4, #6
	ldr r2, _08035610
	adds r1, r1, r2
	ldr r2, _08035614
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _080355F0
	b _080356BA
	.align 2, 0
_0803560C: .4byte 0x08E0CDA4
_08035610: .4byte 0x0200FC00
_08035614: .4byte 0x0400000F
_08035618:
	movs r4, #0
	ldr r6, _08035638
	movs r5, #0
_0803561E:
	ldr r0, [r6]
	adds r0, r0, r5
	lsls r1, r4, #6
	ldr r2, _0803563C
	adds r1, r1, r2
	ldr r2, _08035640
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803561E
	b _080356BA
	.align 2, 0
_08035638: .4byte 0x08E0CDA4
_0803563C: .4byte 0x0200FC00
_08035640: .4byte 0x0400000F
_08035644:
	movs r4, #0
	ldr r6, _08035664
	movs r5, #0
_0803564A:
	ldr r0, [r6]
	adds r0, r0, r5
	lsls r1, r4, #6
	ldr r2, _08035668
	adds r1, r1, r2
	ldr r2, _0803566C
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803564A
	b _080356BA
	.align 2, 0
_08035664: .4byte 0x08E0CDA4
_08035668: .4byte 0x0200FC00
_0803566C: .4byte 0x0400000F
_08035670:
	movs r4, #0
	ldr r6, _08035690
	movs r5, #0
_08035676:
	ldr r0, [r6]
	adds r0, r0, r5
	lsls r1, r4, #6
	ldr r2, _08035694
	adds r1, r1, r2
	ldr r2, _08035698
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _08035676
	b _080356BA
	.align 2, 0
_08035690: .4byte 0x08E0CDA4
_08035694: .4byte 0x0200FC00
_08035698: .4byte 0x0400000F
_0803569C:
	movs r4, #0
	ldr r6, _08035754
	movs r5, #0
_080356A2:
	ldr r0, [r6]
	adds r0, r0, r5
	lsls r1, r4, #6
	ldr r2, _08035758
	adds r1, r1, r2
	ldr r2, _0803575C
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _080356A2
_080356BA:
	movs r4, #0
	movs r6, #0
	ldr r5, _08035760
_080356C0:
	str r6, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _08035764
	bl CpuSet
	adds r5, #0x40
	adds r4, #1
	cmp r4, #0x13
	bls _080356C0
	movs r4, #0
	ldr r6, _08035768
	ldr r3, _0803576C
	ldr r5, _08035770
	ldr r0, _08035774
	ldr r1, _08035778
	adds r2, r0, r1
	ldr r7, _0803577C
	adds r1, r0, r7
_080356E6:
	adds r0, r4, #2
	strh r0, [r1]
	adds r0, r4, #6
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	bls _080356E6
	movs r4, #0
	ldr r2, _08035774
_080356FC:
	ldr r1, _08035780
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0xa
	strh r1, [r0]
	ldr r7, _08035784
	adds r0, r4, r7
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r1, #0xd
	strh r1, [r0]
	ldr r1, _08035788
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x24
	strh r1, [r0]
	adds r7, #0x40
	adds r0, r4, r7
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r1, #0xd
	strh r1, [r0]
	ldr r1, _0803578C
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	adds r1, r4, #0
	adds r1, #0x3e
	strh r1, [r0]
	adds r4, #1
	cmp r4, #0xc
	bls _080356FC
	ldrb r0, [r6]
	cmp r0, #2
	beq _08035798
	cmp r0, #2
	bgt _08035790
	cmp r0, #1
	beq _08035798
	b _080357A8
	.align 2, 0
_08035754: .4byte 0x08E0CDA4
_08035758: .4byte 0x0200FC00
_0803575C: .4byte 0x0400000F
_08035760: .4byte 0x0200F400
_08035764: .4byte 0x0500000F
_08035768: .4byte gLanguage
_0803576C: .4byte 0x08E0CDA0
_08035770: .4byte 0x02000000
_08035774: .4byte 0x02000400
_08035778: .4byte 0x0000F31C
_0803577C: .4byte 0x0000F2DC
_08035780: .4byte 0x000078A9
_08035784: .4byte 0x000078C9
_08035788: .4byte 0x000078E9
_0803578C: .4byte 0x00007929
_08035790:
	cmp r0, #3
	beq _08035798
	cmp r0, #4
	bne _080357A8
_08035798:
	ldr r0, [r3]
	ldr r2, _080357A4
	adds r1, r5, #0
	bl CpuSet
	b _080357B2
	.align 2, 0
_080357A4: .4byte 0x04000080
_080357A8:
	ldr r0, [r3]
	ldr r2, _080357BC
	adds r1, r5, #0
	bl CpuSet
_080357B2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080357BC: .4byte 0x04000080

	THUMB_FUNC_START sub_80357C0
sub_80357C0: @ 0x080357C0
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _080357F0
	movs r5, #0
	ldr r1, _080357F4
	movs r4, #0xa0
	movs r0, #0xf0
	movs r3, #0xc0
	lsls r3, r3, #4
_080357D2:
	strh r4, [r1]
	strh r0, [r1, #2]
	strh r3, [r1, #4]
	strh r5, [r1, #6]
	adds r1, #8
	adds r2, #1
	cmp r2, #0x7f
	bls _080357D2
	movs r1, #0
	ldr r0, [r6]
	strh r1, [r0]
	strh r1, [r0, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080357F0: .4byte 0x08E0CDB0
_080357F4: .4byte gOamBuffer

	THUMB_FUNC_START sub_80357F8
sub_80357F8: @ 0x080357F8
	push {r4, r5, lr}
	ldr r2, _08035834
	ldr r1, [r2]
	ldrh r0, [r1, #2]
	adds r4, r0, #0
	cmp r4, #0
	bne _08035840
	ldrh r0, [r1]
	cmp r0, #0x1d
	bls _0803580E
	strh r4, [r1]
_0803580E:
	ldr r3, _08035838
	ldr r1, _0803583C
	ldr r2, [r2]
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #5
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r2, #2]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	b _08035844
	.align 2, 0
_08035834: .4byte 0x08E0CDB0
_08035838: .4byte gBLDALPHA
_0803583C: .4byte 0x08E0CDB4
_08035840:
	adds r0, #1
	strh r0, [r1, #2]
_08035844:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803584C
sub_803584C: @ 0x0803584C
	push {r4, r5, lr}
	ldr r5, _0803588C
	ldr r0, _08035890
	ldr r1, [r0]
	ldrb r4, [r1, #1]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8035994
	movs r0, #0
	cmp r0, r4
	bhs _0803586C
_08035864:
	adds r5, #8
	adds r0, #1
	cmp r0, r4
	blo _08035864
_0803586C:
	ldr r0, _08035890
	ldr r1, [r0, #0x10]
	ldrb r4, [r1, #1]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8035994
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803588C: .4byte gOamBuffer
_08035890: .4byte 0x08E0CD80

	THUMB_FUNC_START sub_8035894
sub_8035894: @ 0x08035894
	push {r4, r5, lr}
	ldr r5, _080358F0
	ldr r0, _080358F4
	ldr r1, [r0, #8]
	ldrb r4, [r1, #1]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8035994
	movs r0, #0
	cmp r0, r4
	bhs _080358B4
_080358AC:
	adds r5, #8
	adds r0, #1
	cmp r0, r4
	blo _080358AC
_080358B4:
	ldr r0, _080358F4
	ldr r1, [r0, #4]
	ldrb r4, [r1, #1]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8035994
	movs r0, #0
	cmp r0, r4
	bhs _080358D0
_080358C8:
	adds r5, #8
	adds r0, #1
	cmp r0, r4
	blo _080358C8
_080358D0:
	ldr r0, _080358F4
	ldr r1, [r0, #0x14]
	ldrb r4, [r1, #1]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8035994
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080358F0: .4byte gOamBuffer
_080358F4: .4byte 0x08E0CD80

	THUMB_FUNC_START sub_80358F8
sub_80358F8: @ 0x080358F8
	push {r4, r5, r6, lr}
	ldr r4, _08035950
	ldr r1, [r4]
	ldr r6, _08035954
	ldrb r5, [r1, #1]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8035994
	ldr r1, [r4, #0xc]
	movs r0, #0
	cmp r0, r5
	bhs _0803591A
_08035912:
	adds r6, #8
	adds r0, #1
	cmp r0, r5
	blo _08035912
_0803591A:
	ldrb r5, [r1, #1]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8035994
	movs r0, #0
	cmp r0, r5
	bhs _08035932
_0803592A:
	adds r6, #8
	adds r0, #1
	cmp r0, r5
	blo _0803592A
_08035932:
	ldr r0, _08035950
	ldr r1, [r0, #0x10]
	ldrb r5, [r1, #1]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_8035994
	ldr r0, [r6]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035950: .4byte 0x08E0CD80
_08035954: .4byte gOamBuffer

	THUMB_FUNC_START sub_8035958
sub_8035958: @ 0x08035958
	push {lr}
	ldr r0, _08035978
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _0803597C
	ldr r0, [r0]
	ldr r1, _08035980
	ldr r2, _08035984
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08035978: .4byte 0x08E0CDA8
_0803597C: .4byte 0x08E0CDAC
_08035980: .4byte 0x02000200
_08035984: .4byte 0x04000018

	THUMB_FUNC_START sub_8035988
sub_8035988: @ 0x08035988
	push {lr}
	bl sub_803ED78
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035994
sub_8035994: @ 0x08035994
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	cmp r3, r4
	bhs _080359CA
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r0, #0
	movs r5, #0
	ldr r1, [r1, #4]
_080359AA:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	orrs r0, r6
	strh r0, [r2]
	adds r2, #2
	strh r5, [r2]
	adds r2, #2
	adds r1, #8
	adds r3, #1
	cmp r3, r4
	blo _080359AA
_080359CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80359D0
sub_80359D0: @ 0x080359D0
	ldr r1, _080359E4
	ldr r0, _080359E8
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080359EC
	adds r1, r1, r0
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_080359E4: .4byte 0x02000400
_080359E8: .4byte 0x0000F2DA
_080359EC: .4byte 0x0000F31A

	THUMB_FUNC_START sub_80359F0
sub_80359F0: @ 0x080359F0
	ldr r1, _08035A04
	ldr r0, _08035A08
	adds r2, r1, r0
	movs r3, #0
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08035A0C
	adds r1, r1, r0
	strh r3, [r1]
	bx lr
	.align 2, 0
_08035A04: .4byte 0x02000400
_08035A08: .4byte 0x0000F2DA
_08035A0C: .4byte 0x0000F31A

	THUMB_FUNC_START sub_8035A10
sub_8035A10: @ 0x08035A10
	push {r4, lr}
	bl sub_8045718
	ldr r1, _08035A78
	ldr r2, _08035A7C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08035A80
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08035A84
	movs r4, #0
	strh r4, [r0]
	bl LoadBlendingRegs
	ldr r1, _08035A88
	ldr r2, _08035A8C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08035A90
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	subs r1, #0x42
	ldr r2, _08035A94
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #6
	adds r2, #0xf7
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08035A98
	strh r4, [r0]
	ldr r0, _08035A9C
	strh r4, [r0]
	ldr r0, _08035AA0
	strh r4, [r0]
	ldr r0, _08035AA4
	strh r4, [r0]
	bl LoadBgOffsets
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035A78: .4byte gBLDCNT
_08035A7C: .4byte 0x000008D8
_08035A80: .4byte gBLDALPHA
_08035A84: .4byte gBLDY
_08035A88: .4byte 0x04000040
_08035A8C: .4byte 0x000040B8
_08035A90: .4byte 0x00002070
_08035A94: .4byte 0x00001E8C
_08035A98: .4byte gBG0VOFS
_08035A9C: .4byte gBG0HOFS
_08035AA0: .4byte gBG3VOFS
_08035AA4: .4byte gBG3HOFS

	THUMB_FUNC_START sub_8035AA8
sub_8035AA8: @ 0x08035AA8
	push {lr}
	bl LoadPalettes
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035AC0
sub_8035AC0: @ 0x08035AC0
	push {lr}
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035ACC
sub_8035ACC: @ 0x08035ACC
	push {lr}
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035AD8
sub_8035AD8: @ 0x08035AD8
	push {lr}
	bl LoadPalettes
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035AE4
sub_8035AE4: @ 0x08035AE4
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x84
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08035B04
	movs r0, #0xa
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08035B04: .4byte gBLDY

	THUMB_FUNC_START sub_8035B08
sub_8035B08: @ 0x08035B08
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08035B24
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08035B28
	movs r0, #0
	strh r0, [r1]
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_08035B24: .4byte 0x0000DEFF
_08035B28: .4byte gBLDY

	THUMB_FUNC_START sub_8035B2C
sub_8035B2C: @ 0x08035B2C
	push {lr}
	bl LoadVRAM
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035B3C
sub_8035B3C: @ 0x08035B3C
	push {lr}
	bl LoadOam
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START TradeMenu
TradeMenu: @ 0x08035B48
	push {r4, r5, r6, lr}
	movs r0, #0x2f
	bl PlayMusic
	bl sub_80389B4
	bl sub_8038BA0
	bl sub_803DB1C
	movs r5, #0
	ldr r6, _08035B78
	ldr r4, _08035B7C
_08035B62:
	bl sub_8035BF0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08035BC0
	cmp r0, #2
	bgt _08035B80
	cmp r0, #1
	beq _08035BAA
	b _08035BD8
	.align 2, 0
_08035B78: .4byte 0x08E0CDF0
_08035B7C: .4byte 0x02023E7B
_08035B80:
	cmp r0, #0x40
	beq _08035B8A
	cmp r0, #0x80
	beq _08035B9A
	b _08035BD8
_08035B8A:
	bl sub_8038A84
	bl sub_8038AC4
	bl sub_8038958
	movs r0, #0x36
	b _08035BCE
_08035B9A:
	bl sub_8038AA4
	bl sub_8038AC4
	bl sub_8038958
	movs r0, #0x36
	b _08035BCE
_08035BAA:
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r4]
	cmp r0, #3
	bne _08035BE4
	movs r5, #1
	b _08035BE4
_08035BC0:
	movs r0, #3
	strb r0, [r4]
	bl sub_8038AC4
	bl sub_8038958
	movs r0, #0x38
_08035BCE:
	bl PlayMusic
	bl sub_803E214
	b _08035BE4
_08035BD8:
	bl sub_8038AC4
	bl sub_8038958
	bl sub_803E214
_08035BE4:
	cmp r5, #1
	bne _08035B62
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035BF0
sub_8035BF0: @ 0x08035BF0
	ldr r0, _08035C00
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08035C04
	movs r0, #1
	b _08035C5A
	.align 2, 0
_08035C00: .4byte gUnk2020DFC
_08035C04:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08035C10
	movs r0, #2
	b _08035C5A
_08035C10:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08035C20
	adds r0, r2, #0
	b _08035C5A
_08035C20:
	ldr r0, _08035C30
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08035C34
	movs r0, #0x10
	b _08035C5A
	.align 2, 0
_08035C30: .4byte g2020DF4
_08035C34:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035C40
	movs r0, #0x20
	b _08035C5A
_08035C40:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08035C4C
	movs r0, #0x40
	b _08035C5A
_08035C4C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08035C58
	movs r0, #0
	b _08035C5A
_08035C58:
	movs r0, #0x80
_08035C5A:
	bx lr

	THUMB_FUNC_START sub_8035C5C
sub_8035C5C: @ 0x08035C5C
	push {lr}
	bl sub_8036B54
	bl sub_8036BFC
	cmp r0, #0
	beq _08035C98
	bl sub_8038AF8
	bl sub_803DFE8
	b _08035C7C
_08035C74:
	bl sub_8038AC4
	bl sub_803E254
_08035C7C:
	bl sub_8035BF0
	lsls r0, r0, #0x10
	ldr r1, _08035C94
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08035C74
	bl sub_803E3FC
	b _08035CAE
	.align 2, 0
_08035C94: .4byte 0xFFFF0000
_08035C98:
	movs r0, #0x37
	bl PlayMusic
	bl sub_8035E14
	bl sub_8038AF8
	bl sub_8038BA0
	bl sub_803DB1C
_08035CAE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035CB4
sub_8035CB4: @ 0x08035CB4
	push {lr}
	bl sub_8038290
	bl sub_80383A0
	cmp r0, #0
	beq _08035CFC
	bl sub_8038AF8
	movs r0, #0x39
	bl PlayMusic
	bl sub_803E094
	b _08035CDA
_08035CD2:
	bl sub_8038AC4
	bl sub_803E254
_08035CDA:
	bl sub_8035BF0
	lsls r0, r0, #0x10
	ldr r1, _08035CF8
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08035CD2
	movs r0, #0x38
	bl PlayMusic
	bl sub_803E3FC
	b _08035D12
	.align 2, 0
_08035CF8: .4byte 0xFFFF0000
_08035CFC:
	movs r0, #0x37
	bl PlayMusic
	bl sub_803E880
	bl sub_8038AF8
	bl sub_8038BA0
	bl sub_803DB1C
_08035D12:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035D18
sub_8035D18: @ 0x08035D18
	push {lr}
	bl sub_8038AF8
	movs r0, #0x37
	bl PlayMusic
	bl sub_803E35C
	bl sub_8038860
	bl sub_803276C
	bl sub_8030EF0
	ldr r0, _08035D44
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035D48
	bl sub_8035D64
	b _08035D4C
	.align 2, 0
_08035D44: .4byte 0x03000C38
_08035D48:
	bl sub_8035DD4
_08035D4C:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8035D50
sub_8035D50: @ 0x08035D50
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	bl sub_803E214
	bl sub_803E140
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8035D64
sub_8035D64: @ 0x08035D64
	push {lr}
	bl sub_8038B50
	movs r0, #2
	bl IncreaseDeckCapacity
	bl sub_800AD4C
	bl sub_8038AF8
	movs r0, #0x37
	bl PlayMusic
	bl sub_803DF3C
	b _08035D8C
_08035D84:
	bl sub_8038AC4
	bl sub_803E254
_08035D8C:
	bl sub_8035BF0
	lsls r0, r0, #0x10
	ldr r1, _08035DBC
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08035D84
	bl sub_803769C
	bl sub_8037754
	cmp r0, #0
	bne _08035DC0
	movs r0, #0x37
	bl PlayMusic
	bl sub_803E488
	bl sub_80389B4
	bl sub_803DB1C
	b _08035DCE
	.align 2, 0
_08035DBC: .4byte 0xFFFF0000
_08035DC0:
	bl sub_80389B4
	movs r0, #0x38
	bl PlayMusic
	bl sub_803E3FC
_08035DCE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {lr}
	bl sub_8038AF8
	movs r0, #0x39
	bl PlayMusic
	bl sub_803DE90
	b _08035DEE
_08035DE6:
	bl sub_8038AC4
	bl sub_803E254
_08035DEE:
	bl sub_8035BF0
	lsls r0, r0, #0x10
	ldr r1, _08035E10
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08035DE6
	bl sub_8038AF8
	movs r0, #0x38
	bl PlayMusic
	bl sub_803E3FC
	pop {r0}
	bx r0
	.align 2, 0
_08035E10: .4byte 0xFFFF0000

	THUMB_FUNC_START sub_8035E14
sub_8035E14: @ 0x08035E14
	push {r4, r5, r6, lr}
	bl sub_8039B24
	movs r6, #0
_08035E1C:
	bl sub_8036150
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x20
	beq _08035EAC
	cmp r5, #0x20
	bgt _08035E50
	cmp r5, #4
	bne _08035E32
	b _08035F96
_08035E32:
	cmp r5, #4
	bgt _08035E44
	cmp r5, #1
	bne _08035E3C
	b _08035F64
_08035E3C:
	cmp r5, #2
	bne _08035E42
	b _08035F6E
_08035E42:
	b _08035FAE
_08035E44:
	cmp r5, #8
	bne _08035E4A
	b _08035F8C
_08035E4A:
	cmp r5, #0x10
	beq _08035F04
	b _08035FAE
_08035E50:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r5, r0
	beq _08035E9C
	cmp r5, r0
	bgt _08035E66
	cmp r5, #0x40
	beq _08035E78
	cmp r5, #0x80
	beq _08035E8A
	b _08035FAE
_08035E66:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r5, r0
	beq _08035EA4
	adds r0, #0x80
	cmp r5, r0
	bne _08035E76
	b _08035F7C
_08035E76:
	b _08035FAE
_08035E78:
	movs r0, #1
	bl sub_8036CB0
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039C68
	b _08035FB2
_08035E8A:
	movs r0, #1
	bl sub_8036C84
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039CE8
	b _08035FB2
_08035E9C:
	movs r0, #0x32
	bl sub_8036CB0
	b _08035FA2
_08035EA4:
	movs r0, #0x32
	bl sub_8036C84
	b _08035FA2
_08035EAC:
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384BC
	cmp r0, #0
	bne _08035ED4
	adds r0, r4, #0
	movs r1, #1
	bl sub_8038574
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036D5C
	b _08035F28
_08035ED4:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039D68
	ldr r2, _08035F00
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08035FB2
	adds r4, r2, #0
	movs r5, #0x20
_08035EEE:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08035EEE
	b _08035FB2
	.align 2, 0
_08035F00: .4byte gKeyState
_08035F04:
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_8036E14
	cmp r0, #1
	ble _08035F34
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036DBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384FC
_08035F28:
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039D68
	b _08035FB2
_08035F34:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039F64
	ldr r2, _08035F60
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08035F90
	adds r4, r2, #0
	movs r5, #0x10
_08035F4E:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08035F4E
	b _08035F90
	.align 2, 0
_08035F60: .4byte gKeyState
_08035F64:
	bl sub_8035FC0
	bl sub_8039D9C
	b _08035FB2
_08035F6E:
	movs r6, #1
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008220
	b _08035FB2
_08035F7C:
	bl sub_8036FCC
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039B88
	b _08035FB2
_08035F8C:
	bl sub_8036080
_08035F90:
	bl sub_8038CE0
	b _08035FB2
_08035F96:
	bl sub_8036E24
	bl sub_8036E64
	bl sub_8036CD4
_08035FA2:
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039BDC
	b _08035FB2
_08035FAE:
	bl sub_8008220
_08035FB2:
	cmp r6, #1
	beq _08035FB8
	b _08035E1C
_08035FB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8035FC0
sub_8035FC0: @ 0x08035FC0
	push {r4, r5, lr}
	bl sub_8036BE8
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039DDC
	movs r4, #0
	ldr r5, _08035FF4
_08035FD4:
	bl sub_8036224
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x20
	beq _08036022
	cmp r1, #0x20
	bgt _08035FFE
	cmp r1, #2
	beq _08036054
	cmp r1, #2
	bgt _08035FF8
	cmp r1, #1
	beq _08036038
	b _08036072
	.align 2, 0
_08035FF4: .4byte 0x02023E68
_08035FF8:
	cmp r1, #0x10
	beq _08036028
	b _08036072
_08035FFE:
	cmp r1, #0x80
	beq _0803601C
	cmp r1, #0x80
	bgt _0803600C
	cmp r1, #0x40
	beq _08036016
	b _08036072
_0803600C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08036062
	b _08036072
_08036016:
	bl sub_8036ECC
	b _0803602C
_0803601C:
	bl sub_8036EEC
	b _0803602C
_08036022:
	bl sub_8036F0C
	b _0803602C
_08036028:
	bl sub_8036F2C
_0803602C:
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039E44
	b _08036076
_08036038:
	ldr r1, _08036050
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r5]
	cmp r0, #3
	bne _08036076
	movs r4, #1
	b _08036076
	.align 2, 0
_08036050: .4byte 0x08E0CE00
_08036054:
	movs r4, #1
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008220
	b _08036076
_08036062:
	bl sub_8036FCC
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039B88
	b _08036076
_08036072:
	bl sub_8008220
_08036076:
	cmp r4, #1
	bne _08035FD4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8036080
sub_8036080: @ 0x08036080
	push {r4, r5, r6, r7, lr}
	ldr r4, _080360BC
	ldr r0, _080360C0
	adds r5, r4, r0
	ldrb r0, [r5]
	ldr r1, _080360C4
	adds r4, r4, r1
	strb r0, [r4]
	ldrb r6, [r5]
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039EDC
	movs r7, #0
_0803609E:
	bl sub_8036224
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _080360FA
	cmp r0, #0x10
	bgt _080360CE
	cmp r0, #2
	beq _08036132
	cmp r0, #2
	bgt _080360C8
	cmp r0, #1
	beq _08036116
	b _08036142
	.align 2, 0
_080360BC: .4byte 0x02022EC0
_080360C0: .4byte 0x00000FAA
_080360C4: .4byte 0x00000FA8
_080360C8:
	cmp r0, #8
	beq _08036132
	b _08036142
_080360CE:
	cmp r0, #0x40
	beq _080360E2
	cmp r0, #0x40
	bgt _080360DC
	cmp r0, #0x20
	beq _080360F4
	b _08036142
_080360DC:
	cmp r0, #0x80
	beq _080360EE
	b _08036142
_080360E2:
	bl sub_8036F4C
_080360E6:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _08036104
	b _08036108
_080360EE:
	bl sub_8036F6C
	b _080360E6
_080360F4:
	bl sub_8036F8C
	b _080360E6
_080360FA:
	bl sub_8036FAC
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _08036108
_08036104:
	strb r6, [r5]
	b _0803610A
_08036108:
	strb r0, [r5]
_0803610A:
	movs r0, #0x36
	bl PlayMusic
	bl sub_8039F40
	b _08036146
_08036116:
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _08036120
	strb r6, [r5]
	b _08036122
_08036120:
	strb r0, [r5]
_08036122:
	bl sub_8036E64
	bl sub_8036CD4
	movs r0, #0x37
	bl PlayMusic
	b _0803613A
_08036132:
	movs r0, #0x38
	bl PlayMusic
	strb r6, [r5]
_0803613A:
	bl sub_8008220
	movs r7, #1
	b _08036146
_08036142:
	bl sub_8008220
_08036146:
	cmp r7, #1
	bne _0803609E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8036150
sub_8036150: @ 0x08036150
	push {lr}
	bl sub_802612C
	ldr r0, _08036168
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803616C
	movs r0, #1
	b _08036220
	.align 2, 0
_08036168: .4byte gUnk2020DFC
_0803616C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08036178
	movs r0, #2
	b _08036220
_08036178:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08036188
	adds r0, r2, #0
	b _08036220
_08036188:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08036194
	movs r0, #8
	b _08036220
_08036194:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080361A0
	movs r0, #4
	b _08036220
_080361A0:
	ldr r2, _080361C0
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080361C8
	ldr r0, _080361C4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080361C8
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08036220
	.align 2, 0
_080361C0: .4byte gUnk2021DCC
_080361C4: .4byte gKeyState
_080361C8:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080361EC
	ldr r0, _080361E8
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080361EC
	movs r0, #0xc0
	lsls r0, r0, #1
	b _08036220
	.align 2, 0
_080361E8: .4byte gKeyState
_080361EC:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080361FA
	movs r0, #0x40
	b _08036220
_080361FA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08036206
	movs r0, #0x80
	b _08036220
_08036206:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036212
	movs r0, #0x20
	b _08036220
_08036212:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803621E
	movs r0, #0
	b _08036220
_0803621E:
	movs r0, #0x10
_08036220:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8036224
sub_8036224: @ 0x08036224
	push {lr}
	bl sub_802618C
	ldr r0, _0803623C
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08036240
	movs r0, #1
	b _080362A2
	.align 2, 0
_0803623C: .4byte gUnk2020DFC
_08036240:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803624C
	movs r0, #2
	b _080362A2
_0803624C:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803625C
	adds r0, r2, #0
	b _080362A2
_0803625C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08036268
	movs r0, #8
	b _080362A2
_08036268:
	ldr r0, _08036278
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803627C
	movs r0, #0x40
	b _080362A2
	.align 2, 0
_08036278: .4byte gUnk2021DCC
_0803627C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08036288
	movs r0, #0x80
	b _080362A2
_08036288:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08036294
	movs r0, #0x20
	b _080362A2
_08036294:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080362A0
	movs r0, #0
	b _080362A2
_080362A0:
	movs r0, #0x10
_080362A2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80362A8
sub_80362A8: @ 0x080362A8
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	movs r0, #2
	bl sub_8036C3C
	bl SetCardInfo
	bl sub_801F6B0
	bl sub_8039E60
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80362C8
sub_80362C8: @ 0x080362C8
	push {r4, r5, lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_8036E14
	cmp r0, #1
	bgt _08036318
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039F64
	ldr r2, _08036314
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08036306
	adds r4, r2, #0
	movs r5, #3
_080362F8:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080362F8
_08036306:
	movs r0, #0x38
	bl PlayMusic
	bl sub_8039DDC
	b _08036332
	.align 2, 0
_08036314: .4byte gUnk2020DFC
_08036318:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036DBC
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384FC
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039D68
_08036332:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8036338
sub_8036338: @ 0x08036338
	push {r4, r5, lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	bl sub_8036E14
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bhi _0803638C
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039F64
	ldr r2, _08036388
	ldrh r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803637A
	adds r4, r2, #0
	movs r5, #3
_0803636C:
	bl sub_8008220
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803636C
_0803637A:
	movs r0, #0x38
	bl PlayMusic
	bl sub_8039DDC
	b _080363AC
	.align 2, 0
_08036388: .4byte gUnk2020DFC
_0803638C:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8036DBC
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80384FC
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039D68
_080363AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_80363B4
sub_80363B4: @ 0x080363B4
	push {r4, lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384BC
	cmp r0, #0
	bne _080363E8
	adds r0, r4, #0
	movs r1, #1
	bl sub_8038574
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036D5C
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039D68
	b _080363F2
_080363E8:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039D68
_080363F2:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80363F8
sub_80363F8: @ 0x080363F8
	push {r4, r5, lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08036430
	ldr r1, _08036434
	adds r0, r0, r1
	adds r0, r5, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq _08036438
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8038574
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8036D5C
	movs r0, #0x37
	bl PlayMusic
	bl sub_8039D68
	b _08036442
	.align 2, 0
_08036430: .4byte 0x02022EC0
_08036434: .4byte 0x00000321
_08036438:
	movs r0, #0x39
	bl PlayMusic
	bl sub_8039D68
_08036442:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8036448
sub_8036448: @ 0x08036448
	push {lr}
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008220
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8036458
sub_8036458: @ 0x08036458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
	ldr r0, _080364E4
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _080364D2
	ldr r1, _080364E8
	mov ip, r1
	ldr r2, _080364EC
	add r2, ip
	mov sl, r2
	ldr r7, _080364F0
	mov sb, r7
	movs r0, #0
	str r0, [sp]
	ldr r6, _080364F4
	add r6, ip
_08036486:
	ldrh r1, [r6]
	mov r2, sb
	ldr r0, [r2]
	ldr r7, [sp]
	adds r4, r7, r0
	strh r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r4, #4]
	str r3, [r4, #8]
	mov r7, ip
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080364B4
	mov r7, sl
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _080364C0
_080364B4:
	ldr r0, _080364F8
	ldr r1, _080364FC
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #4]
	str r3, [r4, #8]
_080364C0:
	ldr r0, [sp]
	adds r0, #0xc
	str r0, [sp]
	adds r6, #2
	adds r5, #1
	mov r1, r8
	ldrh r1, [r1, #8]
	cmp r5, r1
	blo _08036486
_080364D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080364E4: .4byte gUnk2022EB0
_080364E8: .4byte 0x02022EC0
_080364EC: .4byte 0x00000321
_080364F0: .4byte 0x08E0CC20
_080364F4: .4byte 0x00000964
_080364F8: .4byte 0x00000320
_080364FC: .4byte 0x00000000

	THUMB_FUNC_START sub_8036500
sub_8036500: @ 0x08036500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r5, #0
	ldr r0, _08036578
	mov r8, r0
	ldrh r1, [r0, #8]
	cmp r5, r1
	bhs _08036568
	ldr r0, _0803657C
	mov ip, r0
	ldr r1, _08036580
	add r1, ip
	mov sl, r1
	ldr r0, _08036584
	mov sb, r0
	movs r7, #0
	ldr r6, _08036588
	add r6, ip
_0803652A:
	ldrh r3, [r6]
	mov r1, sb
	ldr r4, [r1]
	adds r4, r7, r4
	strh r3, [r4]
	mov r1, ip
	adds r0, r3, r1
	ldrb r2, [r0]
	mov r1, sl
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r3
	asrs r1, r0, #0x1f
	str r0, [r4, #4]
	str r1, [r4, #8]
	adds r7, #0xc
	adds r6, #2
	adds r5, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r5, r0
	blo _0803652A
_08036568:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036578: .4byte gUnk2022EB0
_0803657C: .4byte 0x02022EC0
_08036580: .4byte 0x00000321
_08036584: .4byte 0x08E0CC20
_08036588: .4byte 0x00000964

	THUMB_FUNC_START sub_803658C
sub_803658C: @ 0x0803658C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08036620
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08036612
	ldr r1, _08036624
	mov r8, r1
	mov ip, r6
	ldr r7, _08036628
	add r7, r8
	ldr r0, _0803662C
	mov sl, r0
_080365B0:
	ldrh r4, [r7]
	ldr r1, _08036630
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	lsls r0, r4, #1
	add r0, sl
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _08036634
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080365F6
	ldr r1, _08036638
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036602
_080365F6:
	ldr r0, _0803663C
	ldr r1, _08036640
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08036602:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _080365B0
_08036612:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036620: .4byte gUnk2022EB0
_08036624: .4byte 0x02022EC0
_08036628: .4byte 0x00000964
_0803662C: .4byte gCardAtks
_08036630: .4byte 0x08E0CC20
_08036634: .4byte 0x0000FFFF
_08036638: .4byte 0x020231E1
_0803663C: .4byte 0x031FFCE0
_08036640: .4byte 0x00000000

	THUMB_FUNC_START sub_8036644
sub_8036644: @ 0x08036644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080366D8
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080366CA
	ldr r1, _080366DC
	mov r8, r1
	mov ip, r6
	ldr r7, _080366E0
	add r7, r8
	ldr r0, _080366E4
	mov sl, r0
_08036668:
	ldrh r4, [r7]
	ldr r1, _080366E8
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	lsls r0, r4, #1
	add r0, sl
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _080366EC
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080366AE
	ldr r1, _080366F0
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080366BA
_080366AE:
	ldr r0, _080366F4
	ldr r1, _080366F8
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_080366BA:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _08036668
_080366CA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080366D8: .4byte gUnk2022EB0
_080366DC: .4byte 0x02022EC0
_080366E0: .4byte 0x00000964
_080366E4: .4byte gCardDefs
_080366E8: .4byte 0x08E0CC20
_080366EC: .4byte 0x0000FFFF
_080366F0: .4byte 0x020231E1
_080366F4: .4byte 0x031FFCE0
_080366F8: .4byte 0x00000000

	THUMB_FUNC_START sub_80366FC
sub_80366FC: @ 0x080366FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08036790
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08036780
	ldr r1, _08036794
	mov r8, r1
	ldr r0, _08036798
	mov sl, r0
	mov ip, r6
	ldr r7, _0803679C
	add r7, r8
_08036720:
	ldrh r4, [r7]
	ldr r1, _080367A0
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0x17
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036764
	ldr r1, _080367A4
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036770
_08036764:
	ldr r0, _080367A8
	ldr r1, _080367AC
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08036770:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _08036720
_08036780:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036790: .4byte gUnk2022EB0
_08036794: .4byte 0x02022EC0
_08036798: .4byte gCardTypes
_0803679C: .4byte 0x00000964
_080367A0: .4byte 0x08E0CC20
_080367A4: .4byte 0x020231E1
_080367A8: .4byte 0x00004B00
_080367AC: .4byte 0x00000000

	THUMB_FUNC_START sub_80367B0
sub_80367B0: @ 0x080367B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08036848
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _0803683A
	ldr r1, _0803684C
	mov r8, r1
	ldr r0, _08036850
	mov sl, r0
	mov ip, r6
	ldr r7, _08036854
	add r7, r8
_080367D4:
	ldrh r4, [r7]
	ldr r1, _08036858
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803681E
	ldr r1, _0803685C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803682A
_0803681E:
	ldr r0, _08036860
	ldr r1, _08036864
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_0803682A:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _080367D4
_0803683A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036848: .4byte gUnk2022EB0
_0803684C: .4byte 0x02022EC0
_08036850: .4byte gCardAttributes
_08036854: .4byte 0x00000964
_08036858: .4byte 0x08E0CC20
_0803685C: .4byte 0x020231E1
_08036860: .4byte 0x00032000
_08036864: .4byte 0x00000000

	THUMB_FUNC_START sub_8036868
sub_8036868: @ 0x08036868
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080368F8
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080368E8
	ldr r1, _080368FC
	mov r8, r1
	ldr r0, _08036900
	mov sl, r0
	mov ip, r6
	ldr r7, _08036904
	add r7, r8
_0803688C:
	ldrh r4, [r7]
	ldr r1, _08036908
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	lsls r1, r4, #1
	mov r0, sl
	ldrb r2, [r0]
	ldr r0, _0803690C
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08036910
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080368CC
	ldr r1, _08036914
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080368D8
_080368CC:
	ldr r0, _08036918
	ldr r1, _0803691C
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_080368D8:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _0803688C
_080368E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080368F8: .4byte gUnk2022EB0
_080368FC: .4byte 0x02022EC0
_08036900: .4byte gLanguage
_08036904: .4byte 0x00000964
_08036908: .4byte 0x08E0CC20
_0803690C: .4byte 0x00000642
_08036910: .4byte 0x080D0444
_08036914: .4byte 0x020231E1
_08036918: .4byte 0x00000320
_0803691C: .4byte 0x00000000

	THUMB_FUNC_START sub_8036920
sub_8036920: @ 0x08036920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080369B0
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080369A0
	ldr r1, _080369B4
	mov r8, r1
	ldr r0, _080369B8
	mov sl, r0
	mov ip, r6
	ldr r7, _080369BC
	add r7, r8
_08036944:
	ldrh r4, [r7]
	ldr r1, _080369C0
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	mov r1, sl
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036984
	ldr r1, _080369C4
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036990
_08036984:
	ldr r0, _080369C8
	ldr r1, _080369CC
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08036990:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _08036944
_080369A0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080369B0: .4byte gUnk2022EB0
_080369B4: .4byte 0x02022EC0
_080369B8: .4byte gCardLevels
_080369BC: .4byte 0x00000964
_080369C0: .4byte 0x08E0CC20
_080369C4: .4byte 0x020231E1
_080369C8: .4byte 0x000028A0
_080369CC: .4byte 0x00000000

	THUMB_FUNC_START sub_80369D0
sub_80369D0: @ 0x080369D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08036A60
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08036A50
	ldr r1, _08036A64
	mov r8, r1
	mov ip, r6
	ldr r7, _08036A68
	add r7, r8
	ldr r0, _08036A6C
	mov sl, r0
_080369F4:
	ldrh r4, [r7]
	ldr r1, _08036A70
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r4, [r5]
	lsls r0, r4, #2
	add r0, sl
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r4
	adds r2, r0, #0
	movs r3, #0
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036A34
	ldr r1, _08036A74
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036A40
_08036A34:
	ldr r0, _08036A78
	ldr r1, _08036A7C
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08036A40:
	movs r0, #0xc
	add ip, r0
	adds r7, #2
	adds r6, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r6, r1
	blo _080369F4
_08036A50:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036A60: .4byte gUnk2022EB0
_08036A64: .4byte 0x02022EC0
_08036A68: .4byte 0x00000964
_08036A6C: .4byte gCardCosts
_08036A70: .4byte 0x08E0CC20
_08036A74: .4byte 0x020231E1
_08036A78: .4byte 0x03200000
_08036A7C: .4byte 0x00000000

	THUMB_FUNC_START sub_8036A80
sub_8036A80: @ 0x08036A80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08036B28
	mov sl, r0
	ldrh r0, [r0, #8]
	cmp r7, r0
	bhs _08036B1A
	ldr r1, _08036B2C
	mov sb, r1
	movs r6, #0
	ldr r0, _08036B30
	add r0, sb
	mov ip, r0
	ldr r1, _08036B34
	mov r8, r1
_08036AA6:
	mov r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _08036B38
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036AD4
	ldr r1, _08036B3C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036AE0
_08036AD4:
	ldr r0, _08036B40
	ldr r1, _08036B44
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08036AE0:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036AF4
	ldr r1, _08036B48
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036B0A
_08036AF4:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _08036B4C
	ldr r4, _08036B50
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_08036B0A:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	mov r1, sl
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _08036AA6
_08036B1A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B28: .4byte gUnk2022EB0
_08036B2C: .4byte 0x02022EC0
_08036B30: .4byte 0x00000964
_08036B34: .4byte 0x08E0CC20
_08036B38: .4byte gCardMonsterEffects
_08036B3C: .4byte gUnk8094CC3
_08036B40: .4byte 0x00000320
_08036B44: .4byte 0x00000000
_08036B48: .4byte 0x020231E1
_08036B4C: .4byte 0x00000640
_08036B50: .4byte 0x00000000

	THUMB_FUNC_START sub_8036B54
sub_8036B54: @ 0x08036B54
	push {r4, r5, r6, lr}
	ldr r2, _08036BC8
	ldr r0, _08036BCC
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08036BD0
	adds r3, r1, #0
	ldr r1, _08036BD4
	adds r2, r2, r1
_08036B68:
	adds r1, r0, #1
	strh r1, [r2]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r2, #2
	adds r0, r1, #0
	cmp r0, r4
	bls _08036B68
	bl sub_8034E1C
	ldr r4, _08036BD8
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _08036BDC
	ldr r6, _08036BC8
	ldr r2, _08036BE0
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _08036BC2
	ldr r5, _08036BE4
	movs r3, #0
	ldr r0, _08036BD4
	adds r2, r6, r0
_08036BAE:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _08036BAE
_08036BC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036BC8: .4byte 0x02022EC0
_08036BCC: .4byte 0x00000FA4
_08036BD0: .4byte 0x0000031F
_08036BD4: .4byte 0x00000964
_08036BD8: .4byte gUnk2022EB0
_08036BDC: .4byte 0x08E0CE18
_08036BE0: .4byte 0x00000FAA
_08036BE4: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8036BE8
sub_8036BE8: @ 0x08036BE8
	ldr r0, _08036BF4
	ldr r1, _08036BF8
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08036BF4: .4byte 0x02022EC0
_08036BF8: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036BFC
sub_8036BFC: @ 0x08036BFC
	push {r4, r5, lr}
	movs r3, #1
	movs r1, #1
	movs r5, #0xc8
	lsls r5, r5, #2
	ldr r2, _08036C10
	ldr r0, _08036C14
	adds r4, r2, r0
	b _08036C1E
	.align 2, 0
_08036C10: .4byte 0x020231E1
_08036C14: .4byte 0xFFFFFCDF
_08036C18:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08036C1E:
	cmp r1, r5
	bhi _08036C34
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036C32
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036C18
_08036C32:
	movs r3, #0
_08036C34:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8036C3C
sub_8036C3C: @ 0x08036C3C
	lsls r0, r0, #0x18
	ldr r2, _08036C6C
	ldr r3, _08036C70
	adds r1, r2, r3
	lsrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r1, r0, #2
	cmp r1, #0
	bge _08036C54
	ldr r3, _08036C74
	adds r1, r0, r3
_08036C54:
	ldr r0, _08036C78
	cmp r1, r0
	ble _08036C5E
	ldr r0, _08036C7C
	adds r1, r1, r0
_08036C5E:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0xf
	ldr r3, _08036C80
	adds r1, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08036C6C: .4byte 0x02022EC0
_08036C70: .4byte 0x00000FA6
_08036C74: .4byte 0x0000031E
_08036C78: .4byte 0x0000031F
_08036C7C: .4byte 0xFFFFFCE0
_08036C80: .4byte 0x00000964

	THUMB_FUNC_START sub_8036C84
sub_8036C84: @ 0x08036C84
	lsls r0, r0, #0x10
	ldr r1, _08036CA0
	ldr r2, _08036CA4
	adds r1, r1, r2
	lsrs r0, r0, #0x10
	ldrh r3, [r1]
	adds r2, r0, r3
	ldr r0, _08036CA8
	cmp r2, r0
	ble _08036C9C
	ldr r0, _08036CAC
	adds r2, r2, r0
_08036C9C:
	strh r2, [r1]
	bx lr
	.align 2, 0
_08036CA0: .4byte 0x02022EC0
_08036CA4: .4byte 0x00000FA6
_08036CA8: .4byte 0x0000031F
_08036CAC: .4byte 0xFFFFFCE0

	THUMB_FUNC_START sub_8036CB0
sub_8036CB0: @ 0x08036CB0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08036CCC
	ldr r3, _08036CD0
	adds r2, r1, r3
	ldrh r1, [r2]
	subs r1, r1, r0
	cmp r1, #0
	bge _08036CC8
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r1, r1, r0
_08036CC8:
	strh r1, [r2]
	bx lr
	.align 2, 0
_08036CCC: .4byte 0x02022EC0
_08036CD0: .4byte 0x00000FA6

	THUMB_FUNC_START sub_8036CD4
sub_8036CD4: @ 0x08036CD4
	ldr r0, _08036CE0
	ldr r1, _08036CE4
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08036CE0: .4byte 0x02022EC0
_08036CE4: .4byte 0x00000FA6
	.byte 0x10, 0xB5, 0x00, 0x04, 0x02, 0x0C, 0x13, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0x0C, 0x1C, 0x00, 0x2A, 0x10, 0xD0, 0xC8, 0x20, 0x80, 0x00, 0x82, 0x42
	.byte 0x0C, 0xD8, 0xFA, 0x29, 0x0A, 0xD8, 0x04, 0x48, 0x18, 0x18, 0x01, 0x78, 0xFA, 0x20, 0x00, 0x1B
	.byte 0x81, 0x42, 0x03, 0xDC, 0x00, 0x20, 0x02, 0xE0, 0xC0, 0x2E, 0x02, 0x02, 0x01, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x00, 0x04, 0x02, 0x0C, 0x13, 0x1C, 0x09, 0x06, 0x09, 0x0E
	.byte 0x0C, 0x1C, 0x00, 0x2A, 0x0E, 0xD0, 0xC8, 0x20, 0x80, 0x00, 0x82, 0x42, 0x0A, 0xD8, 0xFA, 0x29
	.byte 0x08, 0xD8, 0x03, 0x48, 0x18, 0x18, 0x00, 0x78, 0xA0, 0x42, 0x03, 0xD3, 0x00, 0x20, 0x02, 0xE0
	.byte 0xC0, 0x2E, 0x02, 0x02, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_8036D5C
sub_8036D5C: @ 0x08036D5C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r3, #0
	beq _08036DB4
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r3, r0
	bhi _08036DB4
	cmp r3, #0
	beq _08036D7E
	cmp r3, r0
	bhi _08036D7E
	cmp r4, #0xfa
	bls _08036D88
_08036D7E:
	movs r0, #1
	ldr r1, _08036D84
	b _08036DA2
	.align 2, 0
_08036D84: .4byte 0x02022EC0
_08036D88:
	ldr r1, _08036D9C
	adds r0, r3, r1
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r4
	cmp r2, r0
	ble _08036DA0
	movs r0, #1
	b _08036DA2
	.align 2, 0
_08036D9C: .4byte 0x02022EC0
_08036DA0:
	movs r0, #0
_08036DA2:
	cmp r0, #0
	bne _08036DAE
	adds r1, r3, r1
	ldrb r0, [r1]
	adds r0, r4, r0
	b _08036DB2
_08036DAE:
	adds r1, r3, r1
	movs r0, #0xfa
_08036DB2:
	strb r0, [r1]
_08036DB4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8036DBC
sub_8036DBC: @ 0x08036DBC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r2, #0
	beq _08036E10
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r2, r0
	bhi _08036E10
	cmp r2, #0
	beq _08036DDC
	cmp r2, r0
	bhi _08036DDC
	cmp r3, #0xfa
	bls _08036DE8
_08036DDC:
	movs r1, #1
	ldr r0, _08036DE4
	b _08036DFE
	.align 2, 0
_08036DE4: .4byte 0x02022EC0
_08036DE8:
	ldr r0, _08036DF8
	adds r1, r2, r0
	ldrb r1, [r1]
	cmp r1, r3
	bhs _08036DFC
	movs r1, #1
	b _08036DFE
	.align 2, 0
_08036DF8: .4byte 0x02022EC0
_08036DFC:
	movs r1, #0
_08036DFE:
	cmp r1, #0
	bne _08036E0A
	adds r1, r2, r0
	ldrb r0, [r1]
	subs r0, r0, r3
	b _08036E0E
_08036E0A:
	adds r1, r2, r0
	movs r0, #0
_08036E0E:
	strb r0, [r1]
_08036E10:
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8036E14
sub_8036E14: @ 0x08036E14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08036E20
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08036E20: .4byte 0x02022EC0

	THUMB_FUNC_START sub_8036E24
sub_8036E24: @ 0x08036E24
	ldr r1, _08036E38
	ldr r2, _08036E3C
	ldr r0, _08036E40
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036E38: .4byte 0x02022EC0
_08036E3C: .4byte 0x080DD6FE
_08036E40: .4byte 0x00000FAA
	.byte 0x04, 0x49, 0x05, 0x4A, 0x05, 0x48, 0x09, 0x18, 0x08, 0x78, 0x80, 0x18
	.byte 0x00, 0x78, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00, 0xC0, 0x2E, 0x02, 0x02, 0x08, 0xD7, 0x0D, 0x08
	.byte 0xAA, 0x0F, 0x00, 0x00

	THUMB_FUNC_START sub_8036E64
sub_8036E64: @ 0x08036E64
	push {r4, r5, r6, lr}
	bl sub_8034E1C
	ldr r4, _08036EB4
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _08036EB8
	ldr r6, _08036EBC
	ldr r2, _08036EC0
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _08036EAE
	ldr r5, _08036EC4
	movs r3, #0
	ldr r0, _08036EC8
	adds r2, r6, r0
_08036E9A:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _08036E9A
_08036EAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036EB4: .4byte gUnk2022EB0
_08036EB8: .4byte 0x08E0CE18
_08036EBC: .4byte 0x02022EC0
_08036EC0: .4byte 0x00000FAA
_08036EC4: .4byte 0x08E0CC20
_08036EC8: .4byte 0x00000964

	THUMB_FUNC_START sub_8036ECC
sub_8036ECC: @ 0x08036ECC
	ldr r1, _08036EE0
	ldr r2, _08036EE4
	ldr r0, _08036EE8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036EE0: .4byte 0x02022EC0
_08036EE4: .4byte 0x080DD744
_08036EE8: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036EEC
sub_8036EEC: @ 0x08036EEC
	ldr r1, _08036F00
	ldr r2, _08036F04
	ldr r0, _08036F08
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036F00: .4byte 0x02022EC0
_08036F04: .4byte 0x080DD74A
_08036F08: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036F0C
sub_8036F0C: @ 0x08036F0C
	ldr r1, _08036F20
	ldr r2, _08036F24
	ldr r0, _08036F28
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036F20: .4byte 0x02022EC0
_08036F24: .4byte 0x080DD750
_08036F28: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036F2C
sub_8036F2C: @ 0x08036F2C
	ldr r1, _08036F40
	ldr r2, _08036F44
	ldr r0, _08036F48
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036F40: .4byte 0x02022EC0
_08036F44: .4byte 0x080DD756
_08036F48: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036F4C
sub_8036F4C: @ 0x08036F4C
	ldr r1, _08036F60
	ldr r2, _08036F64
	ldr r0, _08036F68
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036F60: .4byte 0x02022EC0
_08036F64: .4byte 0x080DD774
_08036F68: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036F6C
sub_8036F6C: @ 0x08036F6C
	ldr r1, _08036F80
	ldr r2, _08036F84
	ldr r0, _08036F88
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036F80: .4byte 0x02022EC0
_08036F84: .4byte 0x080DD77F
_08036F88: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036F8C
sub_8036F8C: @ 0x08036F8C
	ldr r1, _08036FA0
	ldr r2, _08036FA4
	ldr r0, _08036FA8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036FA0: .4byte 0x02022EC0
_08036FA4: .4byte 0x080DD78A
_08036FA8: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036FAC
sub_8036FAC: @ 0x08036FAC
	ldr r1, _08036FC0
	ldr r2, _08036FC4
	ldr r0, _08036FC8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036FC0: .4byte 0x02022EC0
_08036FC4: .4byte 0x080DD795
_08036FC8: .4byte 0x00000FA8

	THUMB_FUNC_START sub_8036FCC
sub_8036FCC: @ 0x08036FCC
	ldr r1, _08036FE0
	ldr r2, _08036FE4
	ldr r0, _08036FE8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08036FE0: .4byte 0x02022EC0
_08036FE4: .4byte 0x080DD6FA
_08036FE8: .4byte 0x00000FA9

	THUMB_FUNC_START sub_8036FEC
sub_8036FEC: @ 0x08036FEC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08037010
	ldr r1, _08037014
	adds r3, r0, r1
	ldrh r2, [r3]
	adds r1, r2, #1
	ldr r5, _08037018
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r1, r0
	bge _08037020
	adds r1, r2, r4
	cmp r1, r0
	bge _0803701C
	strh r1, [r3]
	b _08037024
	.align 2, 0
_08037010: .4byte 0x02022EC0
_08037014: .4byte 0x00000FB6
_08037018: .4byte 0x00000FB4
_0803701C:
	subs r0, #1
	b _08037022
_08037020:
	movs r0, #0
_08037022:
	strh r0, [r3]
_08037024:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x00, 0xF0
	.byte 0x91, 0xFB, 0x00, 0x06, 0x00, 0x28, 0x21, 0xD1, 0x01, 0x4C, 0x02, 0x48, 0x25, 0x18, 0x14, 0xE0
	.byte 0xC0, 0x2E, 0x02, 0x02, 0x42, 0x06, 0x00, 0x00, 0x04, 0x49, 0x63, 0x18, 0x18, 0x88, 0x01, 0x1C
	.byte 0x00, 0x29, 0x05, 0xD0, 0x01, 0x29, 0x06, 0xD2, 0x1A, 0x80, 0x06, 0xE0, 0xB6, 0x0F, 0x00, 0x00
	.byte 0x08, 0x49, 0x60, 0x18, 0x00, 0x88, 0x01, 0x38, 0x18, 0x80, 0x02, 0x20, 0x00, 0xF0, 0x94, 0xFB
	.byte 0x00, 0x04, 0x00, 0x0C, 0x40, 0x19, 0x02, 0x78, 0x00, 0x2A, 0xE5, 0xD0, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xB4, 0x0F, 0x00, 0x00

	THUMB_FUNC_START sub_8037088
sub_8037088: @ 0x08037088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _080370F4
	mov ip, r0
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _080370E8
	ldr r0, _080370F8
	ldr r1, _080370FC
	adds r1, r1, r0
	mov sb, r1
	ldr r2, _08037100
	mov r8, r2
	movs r7, #0
	ldr r1, _08037104
	adds r6, r0, r1
_080370AE:
	ldrh r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	adds r4, r7, r0
	strh r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r4, #4]
	str r3, [r4, #8]
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080370DA
	ldr r0, _08037108
	ldr r1, _0803710C
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #4]
	str r3, [r4, #8]
_080370DA:
	adds r7, #0xc
	adds r6, #2
	adds r5, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r5, r0
	blo _080370AE
_080370E8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080370F4: .4byte gUnk2022EB0
_080370F8: .4byte 0x02022EC0
_080370FC: .4byte 0x00000642
_08037100: .4byte 0x08E0CC20
_08037104: .4byte 0x00000964
_08037108: .4byte 0x00000320
_0803710C: .4byte 0x00000000

	THUMB_FUNC_START sub_8037110
sub_8037110: @ 0x08037110
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0803719C
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _0803718E
	ldr r0, _080371A0
	ldr r1, _080371A4
	mov sl, r1
	mov ip, r6
	ldr r1, _080371A8
	adds r7, r0, r1
	ldr r0, _080371AC
	mov sb, r0
_08037136:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #1
	add r0, sb
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _080371B0
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _080371B4
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803717E
	ldr r0, _080371B8
	ldr r1, _080371BC
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_0803717E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037136
_0803718E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803719C: .4byte gUnk2022EB0
_080371A0: .4byte 0x02022EC0
_080371A4: .4byte 0x08E0CC20
_080371A8: .4byte 0x00000964
_080371AC: .4byte gCardAtks
_080371B0: .4byte 0x0000FFFF
_080371B4: .4byte 0x02023502
_080371B8: .4byte 0x031FFCE0
_080371BC: .4byte 0x00000000

	THUMB_FUNC_START sub_80371C0
sub_80371C0: @ 0x080371C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _0803724C
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _0803723E
	ldr r0, _08037250
	ldr r1, _08037254
	mov sl, r1
	mov ip, r6
	ldr r1, _08037258
	adds r7, r0, r1
	ldr r0, _0803725C
	mov sb, r0
_080371E6:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #1
	add r0, sb
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _08037260
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037264
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803722E
	ldr r0, _08037268
	ldr r1, _0803726C
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_0803722E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _080371E6
_0803723E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803724C: .4byte gUnk2022EB0
_08037250: .4byte 0x02022EC0
_08037254: .4byte 0x08E0CC20
_08037258: .4byte 0x00000964
_0803725C: .4byte gCardDefs
_08037260: .4byte 0x0000FFFF
_08037264: .4byte 0x02023502
_08037268: .4byte 0x031FFCE0
_0803726C: .4byte 0x00000000

	THUMB_FUNC_START sub_8037270
sub_8037270: @ 0x08037270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080372FC
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080372EC
	ldr r0, _08037300
	ldr r1, _08037304
	mov sl, r1
	ldr r1, _08037308
	mov sb, r1
	mov ip, r6
	ldr r1, _0803730C
	adds r7, r0, r1
_08037296:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r1, #0x17
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037310
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080372DC
	ldr r0, _08037314
	ldr r1, _08037318
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_080372DC:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037296
_080372EC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080372FC: .4byte gUnk2022EB0
_08037300: .4byte 0x02022EC0
_08037304: .4byte 0x08E0CC20
_08037308: .4byte gCardTypes
_0803730C: .4byte 0x00000964
_08037310: .4byte 0x02023502
_08037314: .4byte 0x00004B00
_08037318: .4byte 0x00000000

	THUMB_FUNC_START sub_803731C
sub_803731C: @ 0x0803731C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080373AC
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _0803739E
	ldr r0, _080373B0
	ldr r1, _080373B4
	mov sl, r1
	ldr r1, _080373B8
	mov sb, r1
	mov ip, r6
	ldr r1, _080373BC
	adds r7, r0, r1
_08037342:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _080373C0
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803738E
	ldr r0, _080373C4
	ldr r1, _080373C8
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_0803738E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037342
_0803739E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080373AC: .4byte gUnk2022EB0
_080373B0: .4byte 0x02022EC0
_080373B4: .4byte 0x08E0CC20
_080373B8: .4byte gCardAttributes
_080373BC: .4byte 0x00000964
_080373C0: .4byte 0x02023502
_080373C4: .4byte 0x00032000
_080373C8: .4byte 0x00000000

	THUMB_FUNC_START sub_80373CC
sub_80373CC: @ 0x080373CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037454
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08037444
	ldr r0, _08037458
	ldr r1, _0803745C
	mov sl, r1
	ldr r3, _08037460
	mov sb, r3
	mov ip, r6
	ldr r1, _08037464
	adds r7, r0, r1
_080373F2:
	ldrh r2, [r7]
	mov r3, sl
	ldr r0, [r3]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r1, r2, #1
	mov r3, sb
	ldrb r0, [r3]
	ldr r3, _08037468
	muls r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0803746C
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r1, _08037470
	adds r2, r2, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037434
	ldr r0, _08037474
	ldr r1, _08037478
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08037434:
	movs r3, #0xc
	add ip, r3
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _080373F2
_08037444:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037454: .4byte gUnk2022EB0
_08037458: .4byte 0x02022EC0
_0803745C: .4byte 0x08E0CC20
_08037460: .4byte gLanguage
_08037464: .4byte 0x00000964
_08037468: .4byte 0x00000642
_0803746C: .4byte 0x080D0444
_08037470: .4byte 0x02023502
_08037474: .4byte 0x00000320
_08037478: .4byte 0x00000000

	THUMB_FUNC_START sub_803747C
sub_803747C: @ 0x0803747C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037504
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080374F4
	ldr r0, _08037508
	ldr r1, _0803750C
	mov sl, r1
	ldr r1, _08037510
	mov sb, r1
	mov ip, r6
	ldr r1, _08037514
	adds r7, r0, r1
_080374A2:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037518
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080374E4
	ldr r0, _0803751C
	ldr r1, _08037520
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_080374E4:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _080374A2
_080374F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037504: .4byte gUnk2022EB0
_08037508: .4byte 0x02022EC0
_0803750C: .4byte 0x08E0CC20
_08037510: .4byte gCardLevels
_08037514: .4byte 0x00000964
_08037518: .4byte 0x02023502
_0803751C: .4byte 0x000028A0
_08037520: .4byte 0x00000000

	THUMB_FUNC_START sub_8037524
sub_8037524: @ 0x08037524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080375AC
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _0803759C
	ldr r0, _080375B0
	ldr r1, _080375B4
	mov sl, r1
	mov ip, r6
	ldr r1, _080375B8
	adds r7, r0, r1
	ldr r0, _080375BC
	mov sb, r0
_0803754A:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	movs r4, #0
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _080375C0
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803758C
	ldr r0, _080375C4
	ldr r1, _080375C8
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_0803758C:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _0803754A
_0803759C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080375AC: .4byte gUnk2022EB0
_080375B0: .4byte 0x02022EC0
_080375B4: .4byte 0x08E0CC20
_080375B8: .4byte 0x00000964
_080375BC: .4byte gCardCosts
_080375C0: .4byte 0x02023502
_080375C4: .4byte 0x03200000
_080375C8: .4byte 0x00000000

	THUMB_FUNC_START sub_80375CC
sub_80375CC: @ 0x080375CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08037670
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r7, r0
	bhs _08037660
	ldr r0, _08037674
	ldr r1, _08037678
	mov r8, r1
	movs r6, #0
	ldr r1, _0803767C
	adds r1, r1, r0
	mov ip, r1
	ldr r1, _08037680
	adds r1, r1, r0
	mov sl, r1
_080375F6:
	mov r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _08037684
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037624
	ldr r1, _08037688
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037630
_08037624:
	ldr r0, _0803768C
	ldr r1, _08037690
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08037630:
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037650
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _08037694
	ldr r4, _08037698
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_08037650:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080375F6
_08037660:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037670: .4byte gUnk2022EB0
_08037674: .4byte 0x02022EC0
_08037678: .4byte 0x08E0CC20
_0803767C: .4byte 0x00000964
_08037680: .4byte 0x00000642
_08037684: .4byte gCardMonsterEffects
_08037688: .4byte gUnk8094CC3
_0803768C: .4byte 0x00000320
_08037690: .4byte 0x00000000
_08037694: .4byte 0x00000640
_08037698: .4byte 0x00000000

	THUMB_FUNC_START sub_803769C
sub_803769C: @ 0x0803769C
	push {r4, r5, r6, lr}
	ldr r0, _0803771C
	ldr r1, _08037720
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r3, _08037724
	adds r5, r0, r3
	ldr r3, _08037728
	adds r4, r0, r3
	ldr r3, _0803772C
_080376B2:
	lsls r0, r1, #1
	adds r0, r0, r5
	adds r1, #1
	strh r1, [r0]
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080376C8
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_080376C8:
	cmp r1, r3
	bls _080376B2
	bl sub_8034E1C
	ldr r4, _08037730
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _08037734
	ldr r6, _0803771C
	ldr r2, _08037738
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r3, [r4, #8]
	cmp r1, r3
	bhs _08037714
	ldr r5, _0803773C
	movs r3, #0
	ldr r0, _08037724
	adds r2, r6, r0
_08037700:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _08037700
_08037714:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803771C: .4byte 0x02022EC0
_08037720: .4byte 0x00000FB4
_08037724: .4byte 0x00000964
_08037728: .4byte 0x00000642
_0803772C: .4byte 0x0000031F
_08037730: .4byte gUnk2022EB0
_08037734: .4byte 0x08E0CE40
_08037738: .4byte 0x00000FBA
_0803773C: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8037740
sub_8037740: @ 0x08037740
	ldr r0, _0803774C
	ldr r1, _08037750
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803774C: .4byte 0x02022EC0
_08037750: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037754
sub_8037754: @ 0x08037754
	push {r4, lr}
	movs r3, #1
	movs r2, #1
	ldr r0, _0803778C
	ldr r4, _08037790
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	bne _08037782
_08037768:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r2, r0
	bhi _08037784
	ldr r1, _08037794
	adds r0, r4, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037768
_08037782:
	movs r3, #0
_08037784:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803778C: .4byte 0x02022EC0
_08037790: .4byte 0x00000643
_08037794: .4byte 0x00000642

	THUMB_FUNC_START sub_8037798
sub_8037798: @ 0x08037798
	lsls r0, r0, #0x18
	ldr r2, _080377C0
	ldr r3, _080377C4
	adds r1, r2, r3
	lsrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r1, r0, #2
	cmp r1, #0
	blt _080377D0
	ldr r0, _080377C8
	cmp r1, r0
	bgt _080377D0
	lsls r0, r1, #1
	ldr r3, _080377CC
	adds r1, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	b _080377D2
	.align 2, 0
_080377C0: .4byte 0x02022EC0
_080377C4: .4byte 0x00000FB6
_080377C8: .4byte 0x0000031F
_080377CC: .4byte 0x00000964
_080377D0:
	movs r0, #0
_080377D2:
	bx lr

	THUMB_FUNC_START sub_80377D4
sub_80377D4: @ 0x080377D4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	ldr r5, _080377F4
	ldr r0, _080377F8
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08037800
	cmp r1, r3
	bhs _080377FC
	movs r0, #0
	b _08037808
	.align 2, 0
_080377F4: .4byte 0x02022EC0
_080377F8: .4byte 0x00000FB6
_080377FC:
	subs r0, r0, r4
	b _08037808
_08037800:
	ldr r1, _08037810
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #1
_08037808:
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037810: .4byte 0x00000FB4

	THUMB_FUNC_START sub_8037814
sub_8037814: @ 0x08037814
	ldr r0, _08037820
	ldr r1, _08037824
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08037820: .4byte 0x02022EC0
_08037824: .4byte 0x00000FB6
	.byte 0x10, 0xB5, 0x00, 0x04, 0x02, 0x0C, 0x13, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0x0C, 0x1C, 0x00, 0x2A, 0x14, 0xD0, 0xC8, 0x20, 0x80, 0x00, 0x82, 0x42
	.byte 0x10, 0xD8, 0xFA, 0x29, 0x0E, 0xD8, 0x05, 0x48, 0x05, 0x49, 0x40, 0x18, 0x18, 0x18, 0x01, 0x78
	.byte 0xFA, 0x20, 0x00, 0x1B, 0x81, 0x42, 0x05, 0xDC, 0x00, 0x20, 0x04, 0xE0, 0xC0, 0x2E, 0x02, 0x02
	.byte 0x42, 0x06, 0x00, 0x00, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x00, 0x04
	.byte 0x02, 0x0C, 0x13, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0x0C, 0x1C, 0x00, 0x2A, 0x12, 0xD0, 0xC8, 0x20
	.byte 0x80, 0x00, 0x82, 0x42, 0x0E, 0xD8, 0xFA, 0x29, 0x0C, 0xD8, 0x04, 0x48, 0x04, 0x49, 0x40, 0x18
	.byte 0x18, 0x18, 0x00, 0x78, 0xA0, 0x42, 0x05, 0xD3, 0x00, 0x20, 0x04, 0xE0, 0xC0, 0x2E, 0x02, 0x02
	.byte 0x42, 0x06, 0x00, 0x00, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_80378AC
sub_80378AC: @ 0x080378AC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r3, #0
	beq _0803791A
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r3, r0
	bhi _0803791A
	cmp r3, #0
	beq _080378CE
	cmp r3, r0
	bhi _080378CE
	cmp r4, #0xfa
	bls _080378D8
_080378CE:
	movs r0, #1
	ldr r1, _080378D4
	b _080378FA
	.align 2, 0
_080378D4: .4byte 0x02022EC0
_080378D8:
	ldr r1, _080378F0
	ldr r2, _080378F4
	adds r0, r1, r2
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r4
	cmp r2, r0
	ble _080378F8
	movs r0, #1
	b _080378FA
	.align 2, 0
_080378F0: .4byte 0x02022EC0
_080378F4: .4byte 0x00000642
_080378F8:
	movs r0, #0
_080378FA:
	cmp r0, #0
	bne _08037910
	ldr r0, _0803790C
	adds r1, r1, r0
	adds r1, r3, r1
	ldrb r0, [r1]
	adds r0, r4, r0
	strb r0, [r1]
	b _0803791A
	.align 2, 0
_0803790C: .4byte 0x00000642
_08037910:
	ldr r2, _08037920
	adds r0, r1, r2
	adds r0, r3, r0
	movs r1, #0xfa
	strb r1, [r0]
_0803791A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037920: .4byte 0x00000642
	.byte 0x10, 0xB5, 0x00, 0x04, 0x02, 0x0C, 0x09, 0x06, 0x0B, 0x0E, 0x00, 0x2A
	.byte 0x2D, 0xD0, 0xC8, 0x20, 0x80, 0x00, 0x82, 0x42, 0x29, 0xD8, 0x00, 0x2A, 0x03, 0xD0, 0x82, 0x42
	.byte 0x01, 0xD8, 0xFA, 0x2B, 0x04, 0xD9, 0x01, 0x21, 0x00, 0x48, 0x10, 0xE0, 0xC0, 0x2E, 0x02, 0x02
	.byte 0x04, 0x48, 0x05, 0x4C, 0x01, 0x19, 0x51, 0x18, 0x09, 0x78, 0x99, 0x42, 0x06, 0xD2, 0x01, 0x21
	.byte 0x05, 0xE0, 0x00, 0x00, 0xC0, 0x2E, 0x02, 0x02, 0x42, 0x06, 0x00, 0x00, 0x00, 0x21, 0x00, 0x29
	.byte 0x08, 0xD1, 0x03, 0x4C, 0x01, 0x19, 0x51, 0x18, 0x08, 0x78, 0xC0, 0x1A, 0x08, 0x70, 0x06, 0xE0
	.byte 0x42, 0x06, 0x00, 0x00, 0x03, 0x49, 0x40, 0x18, 0x10, 0x18, 0x00, 0x21, 0x01, 0x70, 0x10, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x42, 0x06, 0x00, 0x00

	THUMB_FUNC_START sub_8037998
sub_8037998: @ 0x08037998
	ldr r1, _080379AC
	ldr r2, _080379B0
	ldr r0, _080379B4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_080379AC: .4byte 0x02022EC0
_080379B0: .4byte 0x080DD92E
_080379B4: .4byte 0x00000FBA
	.byte 0x04, 0x49, 0x05, 0x4A, 0x05, 0x48, 0x09, 0x18
	.byte 0x08, 0x78, 0x80, 0x18, 0x00, 0x78, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00, 0xC0, 0x2E, 0x02, 0x02
	.byte 0x38, 0xD9, 0x0D, 0x08, 0xBA, 0x0F, 0x00, 0x00

	THUMB_FUNC_START sub_80379D8
sub_80379D8: @ 0x080379D8
	push {r4, r5, r6, lr}
	bl sub_8034E1C
	ldr r4, _08037A28
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _08037A2C
	ldr r6, _08037A30
	ldr r2, _08037A34
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _08037A22
	ldr r5, _08037A38
	movs r3, #0
	ldr r0, _08037A3C
	adds r2, r6, r0
_08037A0E:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _08037A0E
_08037A22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037A28: .4byte gUnk2022EB0
_08037A2C: .4byte 0x08E0CE40
_08037A30: .4byte 0x02022EC0
_08037A34: .4byte 0x00000FBA
_08037A38: .4byte 0x08E0CC20
_08037A3C: .4byte 0x00000964

	THUMB_FUNC_START sub_8037A40
sub_8037A40: @ 0x08037A40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _08037AA8
	mov ip, r0
	ldrh r1, [r0, #8]
	cmp r5, r1
	bhs _08037A9C
	ldr r0, _08037AAC
	ldr r1, _08037AB0
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08037AB4
	mov r8, r1
	movs r7, #0
	ldr r1, _08037AB8
	adds r6, r0, r1
_08037A66:
	ldrh r3, [r6]
	mov r0, r8
	ldr r4, [r0]
	adds r4, r7, r4
	strh r3, [r4]
	mov r1, sb
	adds r0, r3, r1
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r3
	asrs r1, r0, #0x1f
	str r0, [r4, #4]
	str r1, [r4, #8]
	adds r7, #0xc
	adds r6, #2
	adds r5, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r5, r0
	blo _08037A66
_08037A9C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037AA8: .4byte gUnk2022EB0
_08037AAC: .4byte 0x02022EC0
_08037AB0: .4byte 0x00000642
_08037AB4: .4byte 0x08E0CC20
_08037AB8: .4byte 0x00000964

	THUMB_FUNC_START sub_8037ABC
sub_8037ABC: @ 0x08037ABC
	ldr r1, _08037AD0
	ldr r2, _08037AD4
	ldr r0, _08037AD8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037AD0: .4byte 0x02022EC0
_08037AD4: .4byte 0x080DD974
_08037AD8: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037ADC
sub_8037ADC: @ 0x08037ADC
	ldr r1, _08037AF0
	ldr r2, _08037AF4
	ldr r0, _08037AF8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037AF0: .4byte 0x02022EC0
_08037AF4: .4byte 0x080DD976
_08037AF8: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037AFC
sub_8037AFC: @ 0x08037AFC
	ldr r1, _08037B10
	ldr r2, _08037B14
	ldr r0, _08037B18
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037B10: .4byte 0x02022EC0
_08037B14: .4byte 0x080DD978
_08037B18: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037B1C
sub_8037B1C: @ 0x08037B1C
	ldr r1, _08037B30
	ldr r2, _08037B34
	ldr r0, _08037B38
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037B30: .4byte 0x02022EC0
_08037B34: .4byte 0x080DD97A
_08037B38: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037B3C
sub_8037B3C: @ 0x08037B3C
	ldr r1, _08037B50
	ldr r2, _08037B54
	ldr r0, _08037B58
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037B50: .4byte 0x02022EC0
_08037B54: .4byte 0x080DD984
_08037B58: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037B5C
sub_8037B5C: @ 0x08037B5C
	ldr r1, _08037B70
	ldr r2, _08037B74
	ldr r0, _08037B78
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037B70: .4byte 0x02022EC0
_08037B74: .4byte 0x080DD98F
_08037B78: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037B7C
sub_8037B7C: @ 0x08037B7C
	ldr r1, _08037B90
	ldr r2, _08037B94
	ldr r0, _08037B98
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037B90: .4byte 0x02022EC0
_08037B94: .4byte 0x080DD99A
_08037B98: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037B9C
sub_8037B9C: @ 0x08037B9C
	ldr r1, _08037BB0
	ldr r2, _08037BB4
	ldr r0, _08037BB8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037BB0: .4byte 0x02022EC0
_08037BB4: .4byte 0x080DD9A5
_08037BB8: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8037BBC
sub_8037BBC: @ 0x08037BBC
	ldr r1, _08037BD0
	ldr r2, _08037BD4
	ldr r0, _08037BD8
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08037BD0: .4byte 0x02022EC0
_08037BD4: .4byte 0x080DD92A
_08037BD8: .4byte 0x00000FB9

	THUMB_FUNC_START sub_8037BDC
sub_8037BDC: @ 0x08037BDC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08037C00
	ldr r1, _08037C04
	adds r3, r0, r1
	ldrh r2, [r3]
	adds r1, r2, #1
	ldr r5, _08037C08
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r1, r0
	bge _08037C10
	adds r1, r2, r4
	cmp r1, r0
	bge _08037C0C
	strh r1, [r3]
	b _08037C14
	.align 2, 0
_08037C00: .4byte 0x02022EC0
_08037C04: .4byte 0x00000FAE
_08037C08: .4byte 0x00000FAC
_08037C0C:
	subs r0, #1
	b _08037C12
_08037C10:
	movs r0, #0
_08037C12:
	strh r0, [r3]
_08037C14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8037C1C
sub_8037C1C: @ 0x08037C1C
	push {r4, r5, lr}
	bl sub_80383A0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037C6C
	ldr r4, _08037C30
	ldr r0, _08037C34
	adds r5, r4, r0
	b _08037C5A
	.align 2, 0
_08037C30: .4byte 0x02022EC0
_08037C34: .4byte 0x00000321
_08037C38:
	ldr r1, _08037C4C
	adds r3, r4, r1
	ldrh r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	beq _08037C50
	cmp r1, #1
	bhs _08037C56
	strh r2, [r3]
	b _08037C5A
	.align 2, 0
_08037C4C: .4byte 0x00000FAE
_08037C50:
	ldr r1, _08037C74
	adds r0, r4, r1
	ldrh r0, [r0]
_08037C56:
	subs r0, #1
	strh r0, [r3]
_08037C5A:
	movs r0, #2
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r5
	ldrb r2, [r0]
	cmp r2, #0
	beq _08037C38
_08037C6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037C74: .4byte 0x00000FAC

	THUMB_FUNC_START sub_8037C78
sub_8037C78: @ 0x08037C78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _08037CE4
	mov ip, r0
	ldrh r0, [r0, #8]
	cmp r5, r0
	bhs _08037CD8
	ldr r0, _08037CE8
	ldr r1, _08037CEC
	adds r1, r1, r0
	mov sb, r1
	ldr r2, _08037CF0
	mov r8, r2
	movs r7, #0
	ldr r1, _08037CF4
	adds r6, r0, r1
_08037C9E:
	ldrh r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	adds r4, r7, r0
	strh r1, [r4]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r4, #4]
	str r3, [r4, #8]
	add r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08037CCA
	ldr r0, _08037CF8
	ldr r1, _08037CFC
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #4]
	str r3, [r4, #8]
_08037CCA:
	adds r7, #0xc
	adds r6, #2
	adds r5, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r5, r0
	blo _08037C9E
_08037CD8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037CE4: .4byte gUnk2022EB0
_08037CE8: .4byte 0x02022EC0
_08037CEC: .4byte 0x00000321
_08037CF0: .4byte 0x08E0CC20
_08037CF4: .4byte 0x00000964
_08037CF8: .4byte 0x00000320
_08037CFC: .4byte 0x00000000

	THUMB_FUNC_START sub_8037D00
sub_8037D00: @ 0x08037D00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037D8C
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08037D7E
	ldr r0, _08037D90
	ldr r1, _08037D94
	mov sl, r1
	mov ip, r6
	ldr r1, _08037D98
	adds r7, r0, r1
	ldr r0, _08037D9C
	mov sb, r0
_08037D26:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #1
	add r0, sb
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _08037DA0
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037DA4
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037D6E
	ldr r0, _08037DA8
	ldr r1, _08037DAC
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08037D6E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037D26
_08037D7E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037D8C: .4byte gUnk2022EB0
_08037D90: .4byte 0x02022EC0
_08037D94: .4byte 0x08E0CC20
_08037D98: .4byte 0x00000964
_08037D9C: .4byte gCardAtks
_08037DA0: .4byte 0x0000FFFF
_08037DA4: .4byte 0x020231E1
_08037DA8: .4byte 0x031FFCE0
_08037DAC: .4byte 0x00000000

	THUMB_FUNC_START sub_8037DB0
sub_8037DB0: @ 0x08037DB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037E3C
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08037E2E
	ldr r0, _08037E40
	ldr r1, _08037E44
	mov sl, r1
	mov ip, r6
	ldr r1, _08037E48
	adds r7, r0, r1
	ldr r0, _08037E4C
	mov sb, r0
_08037DD6:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #1
	add r0, sb
	ldrh r1, [r0]
	adds r1, #1
	ldr r0, _08037E50
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037E54
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037E1E
	ldr r0, _08037E58
	ldr r1, _08037E5C
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08037E1E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037DD6
_08037E2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037E3C: .4byte gUnk2022EB0
_08037E40: .4byte 0x02022EC0
_08037E44: .4byte 0x08E0CC20
_08037E48: .4byte 0x00000964
_08037E4C: .4byte gCardDefs
_08037E50: .4byte 0x0000FFFF
_08037E54: .4byte 0x020231E1
_08037E58: .4byte 0x031FFCE0
_08037E5C: .4byte 0x00000000

	THUMB_FUNC_START sub_8037E60
sub_8037E60: @ 0x08037E60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037EEC
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08037EDC
	ldr r0, _08037EF0
	ldr r1, _08037EF4
	mov sl, r1
	ldr r1, _08037EF8
	mov sb, r1
	mov ip, r6
	ldr r1, _08037EFC
	adds r7, r0, r1
_08037E86:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r1, #0x17
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037F00
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037ECC
	ldr r0, _08037F04
	ldr r1, _08037F08
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08037ECC:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037E86
_08037EDC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037EEC: .4byte gUnk2022EB0
_08037EF0: .4byte 0x02022EC0
_08037EF4: .4byte 0x08E0CC20
_08037EF8: .4byte gCardTypes
_08037EFC: .4byte 0x00000964
_08037F00: .4byte 0x020231E1
_08037F04: .4byte 0x00004B00
_08037F08: .4byte 0x00000000

	THUMB_FUNC_START sub_8037F0C
sub_8037F0C: @ 0x08037F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037F9C
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08037F8E
	ldr r0, _08037FA0
	ldr r1, _08037FA4
	mov sl, r1
	ldr r1, _08037FA8
	mov sb, r1
	mov ip, r6
	ldr r1, _08037FAC
	adds r7, r0, r1
_08037F32:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _08037FB0
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08037F7E
	ldr r0, _08037FB4
	ldr r1, _08037FB8
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08037F7E:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08037F32
_08037F8E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037F9C: .4byte gUnk2022EB0
_08037FA0: .4byte 0x02022EC0
_08037FA4: .4byte 0x08E0CC20
_08037FA8: .4byte gCardAttributes
_08037FAC: .4byte 0x00000964
_08037FB0: .4byte 0x020231E1
_08037FB4: .4byte 0x00032000
_08037FB8: .4byte 0x00000000

	THUMB_FUNC_START sub_8037FBC
sub_8037FBC: @ 0x08037FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08038048
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r7, r0
	bhs _08038038
	ldr r0, _0803804C
	ldr r1, _08038050
	mov sl, r1
	movs r1, #0
	mov r8, r1
	ldr r1, _08038054
	adds r1, r1, r0
	mov ip, r1
_08037FE2:
	mov r0, ip
	ldrh r3, [r0]
	ldr r1, _08038058
	ldr r0, [r1]
	mov r1, r8
	adds r6, r1, r0
	strh r3, [r6]
	lsls r1, r3, #1
	mov r0, sl
	ldrb r2, [r0]
	ldr r0, _0803805C
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _08038060
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r4, r0, #0
	asrs r5, r0, #0x1f
	str r4, [r6, #4]
	str r5, [r6, #8]
	ldr r1, _08038064
	adds r3, r3, r1
	ldrb r0, [r3]
	cmp r0, #0
	beq _08038026
	ldr r0, _08038068
	ldr r1, _0803806C
	adds r4, r4, r0
	adcs r5, r1
	str r4, [r6, #4]
	str r5, [r6, #8]
_08038026:
	movs r0, #0xc
	add r8, r0
	movs r1, #2
	add ip, r1
	adds r7, #1
	mov r0, sb
	ldrh r0, [r0, #8]
	cmp r7, r0
	blo _08037FE2
_08038038:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038048: .4byte gUnk2022EB0
_0803804C: .4byte 0x02022EC0
_08038050: .4byte gLanguage
_08038054: .4byte 0x00000964
_08038058: .4byte 0x08E0CC20
_0803805C: .4byte 0x00000642
_08038060: .4byte 0x080D0444
_08038064: .4byte 0x020231E1
_08038068: .4byte 0x00000320
_0803806C: .4byte 0x00000000

	THUMB_FUNC_START sub_8038070
sub_8038070: @ 0x08038070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080380F8
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _080380E8
	ldr r0, _080380FC
	ldr r1, _08038100
	mov sl, r1
	ldr r1, _08038104
	mov sb, r1
	mov ip, r6
	ldr r1, _08038108
	adds r7, r0, r1
_08038096:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	mov r1, sb
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	asrs r4, r0, #0x1f
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _0803810C
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080380D8
	ldr r0, _08038110
	ldr r1, _08038114
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_080380D8:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _08038096
_080380E8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080380F8: .4byte gUnk2022EB0
_080380FC: .4byte 0x02022EC0
_08038100: .4byte 0x08E0CC20
_08038104: .4byte gCardLevels
_08038108: .4byte 0x00000964
_0803810C: .4byte 0x020231E1
_08038110: .4byte 0x000028A0
_08038114: .4byte 0x00000000

	THUMB_FUNC_START sub_8038118
sub_8038118: @ 0x08038118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _080381A0
	mov r8, r0
	ldrh r0, [r0, #8]
	cmp r6, r0
	bhs _08038190
	ldr r0, _080381A4
	ldr r1, _080381A8
	mov sl, r1
	mov ip, r6
	ldr r1, _080381AC
	adds r7, r0, r1
	ldr r0, _080381B0
	mov sb, r0
_0803813E:
	ldrh r2, [r7]
	mov r1, sl
	ldr r0, [r1]
	mov r1, ip
	adds r5, r1, r0
	strh r2, [r5]
	lsls r0, r2, #2
	add r0, sb
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r2
	adds r3, r0, #0
	movs r4, #0
	str r3, [r5, #4]
	str r4, [r5, #8]
	ldr r0, _080381B4
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08038180
	ldr r0, _080381B8
	ldr r1, _080381BC
	adds r3, r3, r0
	adcs r4, r1
	str r3, [r5, #4]
	str r4, [r5, #8]
_08038180:
	movs r1, #0xc
	add ip, r1
	adds r7, #2
	adds r6, #1
	mov r0, r8
	ldrh r0, [r0, #8]
	cmp r6, r0
	blo _0803813E
_08038190:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080381A0: .4byte gUnk2022EB0
_080381A4: .4byte 0x02022EC0
_080381A8: .4byte 0x08E0CC20
_080381AC: .4byte 0x00000964
_080381B0: .4byte gCardCosts
_080381B4: .4byte 0x020231E1
_080381B8: .4byte 0x03200000
_080381BC: .4byte 0x00000000

	THUMB_FUNC_START sub_80381C0
sub_80381C0: @ 0x080381C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0
	ldr r0, _08038264
	mov sb, r0
	ldrh r0, [r0, #8]
	cmp r7, r0
	bhs _08038254
	ldr r0, _08038268
	ldr r1, _0803826C
	mov r8, r1
	movs r6, #0
	ldr r1, _08038270
	adds r1, r1, r0
	mov ip, r1
	ldr r1, _08038274
	adds r1, r1, r0
	mov sl, r1
_080381EA:
	mov r0, ip
	ldrh r4, [r0]
	mov r1, r8
	ldr r0, [r1]
	adds r5, r6, r0
	strh r4, [r5]
	movs r0, #0xc8
	lsls r0, r0, #2
	subs r0, r0, r4
	adds r2, r0, #0
	asrs r3, r0, #0x1f
	str r2, [r5, #4]
	str r3, [r5, #8]
	ldr r1, _08038278
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038218
	ldr r1, _0803827C
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038224
_08038218:
	ldr r0, _08038280
	ldr r1, _08038284
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r5, #4]
	str r3, [r5, #8]
_08038224:
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038244
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6, r0
	ldr r1, [r0, #4]
	ldr r2, [r0, #8]
	ldr r3, _08038288
	ldr r4, _0803828C
	adds r1, r1, r3
	adcs r2, r4
	str r1, [r0, #4]
	str r2, [r0, #8]
_08038244:
	adds r6, #0xc
	movs r0, #2
	add ip, r0
	adds r7, #1
	mov r1, sb
	ldrh r1, [r1, #8]
	cmp r7, r1
	blo _080381EA
_08038254:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038264: .4byte gUnk2022EB0
_08038268: .4byte 0x02022EC0
_0803826C: .4byte 0x08E0CC20
_08038270: .4byte 0x00000964
_08038274: .4byte 0x00000321
_08038278: .4byte gCardMonsterEffects
_0803827C: .4byte gUnk8094CC3
_08038280: .4byte 0x00000320
_08038284: .4byte 0x00000000
_08038288: .4byte 0x00000640
_0803828C: .4byte 0x00000000

	THUMB_FUNC_START sub_8038290
sub_8038290: @ 0x08038290
	push {r4, r5, r6, lr}
	ldr r0, _08038310
	ldr r1, _08038314
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r3, _08038318
	adds r5, r0, r3
	ldr r3, _0803831C
	adds r4, r0, r3
	subs r3, #2
_080382A6:
	lsls r0, r1, #1
	adds r0, r0, r5
	adds r1, #1
	strh r1, [r0]
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080382BC
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_080382BC:
	cmp r1, r3
	bls _080382A6
	bl sub_8034E1C
	ldr r4, _08038320
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _08038324
	ldr r6, _08038310
	ldr r2, _08038328
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r3, [r4, #8]
	cmp r1, r3
	bhs _08038308
	ldr r5, _0803832C
	movs r3, #0
	ldr r0, _08038318
	adds r2, r6, r0
_080382F4:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _080382F4
_08038308:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038310: .4byte 0x02022EC0
_08038314: .4byte 0x00000FAC
_08038318: .4byte 0x00000964
_0803831C: .4byte 0x00000321
_08038320: .4byte gUnk2022EB0
_08038324: .4byte 0x08E0CE68
_08038328: .4byte 0x00000FB2
_0803832C: .4byte 0x08E0CC20

	THUMB_FUNC_START sub_8038330
sub_8038330: @ 0x08038330
	ldr r0, _08038340
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08038340: .4byte 0x02022EC0

	THUMB_FUNC_START sub_8038344
sub_8038344: @ 0x08038344
	push {r4, r5, r6, lr}
	ldr r1, _08038390
	ldr r2, _08038394
	adds r0, r1, r2
	ldrh r3, [r0]
	ldr r0, _08038398
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #1
	adds r6, r1, #0
	cmp r3, r0
	bge _0803837C
	ldr r0, _0803839C
	adds r4, r6, r0
	adds r5, r2, #0
_08038362:
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r1, r3, #1
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldrh r0, [r5]
	subs r0, #1
	cmp r3, r0
	blt _08038362
_0803837C:
	lsls r0, r3, #1
	ldr r2, _0803839C
	adds r1, r6, r2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038390: .4byte 0x02022EC0
_08038394: .4byte 0x00000FAE
_08038398: .4byte 0x00000FAC
_0803839C: .4byte 0x00000964

	THUMB_FUNC_START sub_80383A0
sub_80383A0: @ 0x080383A0
	push {r4, lr}
	movs r3, #1
	movs r2, #1
	ldr r0, _080383D8
	ldr r4, _080383DC
	adds r1, r0, r4
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #0
	bne _080383CE
_080383B4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r2, r0
	bhi _080383D0
	ldr r1, _080383E0
	adds r0, r4, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _080383B4
_080383CE:
	movs r3, #0
_080383D0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080383D8: .4byte 0x02022EC0
_080383DC: .4byte 0x00000322
_080383E0: .4byte 0x00000321

	THUMB_FUNC_START sub_80383E4
sub_80383E4: @ 0x080383E4
	lsls r0, r0, #0x18
	ldr r2, _08038410
	ldr r3, _08038414
	adds r1, r2, r3
	lsrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r1, r0, #2
	cmp r1, #0
	blt _08038420
	ldr r3, _08038418
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r1, r0
	bge _08038420
	lsls r0, r1, #1
	ldr r3, _0803841C
	adds r1, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08038422
	.align 2, 0
_08038410: .4byte 0x02022EC0
_08038414: .4byte 0x00000FAE
_08038418: .4byte 0x00000FAC
_0803841C: .4byte 0x00000964
_08038420:
	movs r0, #0
_08038422:
	bx lr

	THUMB_FUNC_START sub_8038424
sub_8038424: @ 0x08038424
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r3, #0
	ldr r5, _08038444
	ldr r0, _08038448
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _08038450
	cmp r1, r3
	bhs _0803844C
	movs r0, #0
	b _08038458
	.align 2, 0
_08038444: .4byte 0x02022EC0
_08038448: .4byte 0x00000FAE
_0803844C:
	subs r0, r0, r4
	b _08038458
_08038450:
	ldr r1, _08038460
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #1
_08038458:
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038460: .4byte 0x00000FAC

	THUMB_FUNC_START sub_8038464
sub_8038464: @ 0x08038464
	ldr r0, _08038470
	ldr r1, _08038474
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08038470: .4byte 0x02022EC0
_08038474: .4byte 0x00000FAE
	.byte 0x10, 0xB5, 0x00, 0x04, 0x02, 0x0C, 0x13, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0x0C, 0x1C, 0x00, 0x2A, 0x14, 0xD0, 0xC8, 0x20, 0x80, 0x00, 0x82, 0x42
	.byte 0x10, 0xD8, 0xFA, 0x29, 0x0E, 0xD8, 0x05, 0x48, 0x05, 0x49, 0x40, 0x18, 0x18, 0x18, 0x01, 0x78
	.byte 0xFA, 0x20, 0x00, 0x1B, 0x81, 0x42, 0x05, 0xDC, 0x00, 0x20, 0x04, 0xE0, 0xC0, 0x2E, 0x02, 0x02
	.byte 0x21, 0x03, 0x00, 0x00, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	THUMB_FUNC_START sub_80384BC
sub_80384BC: @ 0x080384BC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	cmp r2, #0
	beq _080384F4
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r2, r0
	bhi _080384F4
	cmp r1, #0xfa
	bhi _080384F4
	ldr r0, _080384EC
	ldr r1, _080384F0
	adds r0, r0, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	cmp r0, r4
	blo _080384F4
	movs r0, #0
	b _080384F6
	.align 2, 0
_080384EC: .4byte 0x02022EC0
_080384F0: .4byte 0x00000321
_080384F4:
	movs r0, #1
_080384F6:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80384FC
sub_80384FC: @ 0x080384FC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r3, #0
	beq _0803856A
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r3, r0
	bhi _0803856A
	cmp r3, #0
	beq _0803851E
	cmp r3, r0
	bhi _0803851E
	cmp r4, #0xfa
	bls _08038528
_0803851E:
	movs r0, #1
	ldr r1, _08038524
	b _0803854A
	.align 2, 0
_08038524: .4byte 0x02022EC0
_08038528:
	ldr r1, _08038540
	ldr r2, _08038544
	adds r0, r1, r2
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r0, #0xfa
	subs r0, r0, r4
	cmp r2, r0
	ble _08038548
	movs r0, #1
	b _0803854A
	.align 2, 0
_08038540: .4byte 0x02022EC0
_08038544: .4byte 0x00000321
_08038548:
	movs r0, #0
_0803854A:
	cmp r0, #0
	bne _08038560
	ldr r0, _0803855C
	adds r1, r1, r0
	adds r1, r3, r1
	ldrb r0, [r1]
	adds r0, r4, r0
	strb r0, [r1]
	b _0803856A
	.align 2, 0
_0803855C: .4byte 0x00000321
_08038560:
	ldr r2, _08038570
	adds r0, r1, r2
	adds r0, r3, r0
	movs r1, #0xfa
	strb r1, [r0]
_0803856A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08038570: .4byte 0x00000321

	THUMB_FUNC_START sub_8038574
sub_8038574: @ 0x08038574
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	cmp r2, #0
	beq _080385DE
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r2, r0
	bhi _080385DE
	cmp r2, #0
	beq _08038596
	cmp r2, r0
	bhi _08038596
	cmp r3, #0xfa
	bls _080385A0
_08038596:
	movs r1, #1
	ldr r0, _0803859C
	b _080385BE
	.align 2, 0
_0803859C: .4byte 0x02022EC0
_080385A0:
	ldr r0, _080385B4
	ldr r4, _080385B8
	adds r1, r0, r4
	adds r1, r2, r1
	ldrb r1, [r1]
	cmp r1, r3
	bhs _080385BC
	movs r1, #1
	b _080385BE
	.align 2, 0
_080385B4: .4byte 0x02022EC0
_080385B8: .4byte 0x00000321
_080385BC:
	movs r1, #0
_080385BE:
	cmp r1, #0
	bne _080385D4
	ldr r4, _080385D0
	adds r1, r0, r4
	adds r1, r2, r1
	ldrb r0, [r1]
	subs r0, r0, r3
	strb r0, [r1]
	b _080385DE
	.align 2, 0
_080385D0: .4byte 0x00000321
_080385D4:
	ldr r1, _080385E4
	adds r0, r0, r1
	adds r0, r2, r0
	movs r1, #0
	strb r1, [r0]
_080385DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080385E4: .4byte 0x00000321
	.byte 0x10, 0xB5, 0x00, 0x04, 0x03, 0x0C, 0x05, 0x48
	.byte 0x05, 0x49, 0x42, 0x18, 0x11, 0x88, 0xC8, 0x24, 0xA4, 0x00, 0x60, 0x1A, 0x98, 0x42, 0x05, 0xDA
	.byte 0x14, 0x80, 0x05, 0xE0, 0xC0, 0x2E, 0x02, 0x02, 0xAC, 0x0F, 0x00, 0x00, 0x58, 0x18, 0x10, 0x80
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_8038618
sub_8038618: @ 0x08038618
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _0803862C
	ldr r3, _08038630
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, r2
	bhs _08038634
	movs r0, #0
	b _08038636
	.align 2, 0
_0803862C: .4byte 0x02022EC0
_08038630: .4byte 0x00000FAC
_08038634:
	subs r0, r0, r2
_08038636:
	strh r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803863C
sub_803863C: @ 0x0803863C
	ldr r1, _08038650
	ldr r2, _08038654
	ldr r0, _08038658
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038650: .4byte 0x02022EC0
_08038654: .4byte 0x080DD816
_08038658: .4byte 0x00000FB2
	.byte 0x04, 0x49, 0x05, 0x4A
	.byte 0x05, 0x48, 0x09, 0x18, 0x08, 0x78, 0x80, 0x18, 0x00, 0x78, 0x08, 0x70, 0x70, 0x47, 0x00, 0x00
	.byte 0xC0, 0x2E, 0x02, 0x02, 0x20, 0xD8, 0x0D, 0x08, 0xB2, 0x0F, 0x00, 0x00

	THUMB_FUNC_START sub_803867C
sub_803867C: @ 0x0803867C
	push {r4, r5, r6, lr}
	bl sub_8034E1C
	ldr r4, _080386CC
	movs r0, #0xc8
	lsls r0, r0, #2
	strh r0, [r4, #8]
	ldr r1, _080386D0
	ldr r6, _080386D4
	ldr r2, _080386D8
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8034A8C
	movs r1, #0
	ldrh r0, [r4, #8]
	cmp r1, r0
	bhs _080386C6
	ldr r5, _080386DC
	movs r3, #0
	ldr r0, _080386E0
	adds r2, r6, r0
_080386B2:
	ldr r0, [r5]
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r3, #0xc
	adds r2, #2
	adds r1, #1
	ldrh r0, [r4, #8]
	cmp r1, r0
	blo _080386B2
_080386C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080386CC: .4byte gUnk2022EB0
_080386D0: .4byte 0x08E0CE68
_080386D4: .4byte 0x02022EC0
_080386D8: .4byte 0x00000FB2
_080386DC: .4byte 0x08E0CC20
_080386E0: .4byte 0x00000964

	THUMB_FUNC_START sub_80386E4
sub_80386E4: @ 0x080386E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #0
	ldr r0, _0803874C
	mov ip, r0
	ldrh r1, [r0, #8]
	cmp r5, r1
	bhs _08038740
	ldr r0, _08038750
	ldr r1, _08038754
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08038758
	mov r8, r1
	movs r7, #0
	ldr r1, _0803875C
	adds r6, r0, r1
_0803870A:
	ldrh r3, [r6]
	mov r0, r8
	ldr r4, [r0]
	adds r4, r7, r4
	strh r3, [r4]
	mov r1, sb
	adds r0, r3, r1
	ldrb r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #5
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r0, r1
	subs r0, r0, r3
	asrs r1, r0, #0x1f
	str r0, [r4, #4]
	str r1, [r4, #8]
	adds r7, #0xc
	adds r6, #2
	adds r5, #1
	mov r0, ip
	ldrh r0, [r0, #8]
	cmp r5, r0
	blo _0803870A
_08038740:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803874C: .4byte gUnk2022EB0
_08038750: .4byte 0x02022EC0
_08038754: .4byte 0x00000321
_08038758: .4byte 0x08E0CC20
_0803875C: .4byte 0x00000964

	THUMB_FUNC_START sub_8038760
sub_8038760: @ 0x08038760
	ldr r1, _08038774
	ldr r2, _08038778
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038774: .4byte 0x02022EC0
_08038778: .4byte 0x080DD85C

	THUMB_FUNC_START sub_803877C
sub_803877C: @ 0x0803877C
	ldr r1, _08038790
	ldr r2, _08038794
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038790: .4byte 0x02022EC0
_08038794: .4byte 0x080DD862

	THUMB_FUNC_START sub_8038798
sub_8038798: @ 0x08038798
	ldr r1, _080387AC
	ldr r2, _080387B0
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_080387AC: .4byte 0x02022EC0
_080387B0: .4byte 0x080DD868

	THUMB_FUNC_START sub_80387B4
sub_80387B4: @ 0x080387B4
	ldr r1, _080387C8
	ldr r2, _080387CC
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_080387C8: .4byte 0x02022EC0
_080387CC: .4byte 0x080DD86E

	THUMB_FUNC_START sub_80387D0
sub_80387D0: @ 0x080387D0
	ldr r1, _080387E4
	ldr r2, _080387E8
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_080387E4: .4byte 0x02022EC0
_080387E8: .4byte 0x080DD88C

	THUMB_FUNC_START sub_80387EC
sub_80387EC: @ 0x080387EC
	ldr r1, _08038800
	ldr r2, _08038804
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038800: .4byte 0x02022EC0
_08038804: .4byte 0x080DD897

	THUMB_FUNC_START sub_8038808
sub_8038808: @ 0x08038808
	ldr r1, _0803881C
	ldr r2, _08038820
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0803881C: .4byte 0x02022EC0
_08038820: .4byte 0x080DD8A2

	THUMB_FUNC_START sub_8038824
sub_8038824: @ 0x08038824
	ldr r1, _08038838
	ldr r2, _0803883C
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038838: .4byte 0x02022EC0
_0803883C: .4byte 0x080DD8AD

	THUMB_FUNC_START sub_8038840
sub_8038840: @ 0x08038840
	ldr r1, _08038854
	ldr r2, _08038858
	ldr r0, _0803885C
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038854: .4byte 0x02022EC0
_08038858: .4byte 0x080DD812
_0803885C: .4byte 0x00000FB1

	THUMB_FUNC_START sub_8038860
sub_8038860: @ 0x08038860
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _080388EC
	mov r0, sp
	movs r2, #6
	bl memcpy
	bl sub_80325D4
	ldr r1, _080388F0
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	movs r6, #0xc8
	lsls r6, r6, #2
	adds r3, r1, #0
	ldr r4, _080388F4
	adds r5, r3, #0
_08038884:
	adds r0, r2, r3
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r6
	bls _08038884
	mov r0, sp
	ldrb r1, [r0]
	ldr r2, _080388F8
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0, #1]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0, #2]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0, #3]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0, #4]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	mov r0, sp
	ldrb r1, [r0, #5]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldr r4, _080388FC
	str r5, [r4, #0xc]
	ldr r0, _08038900
	str r0, [r4, #0x10]
	ldr r1, _08038904
	str r1, [r4]
	adds r0, r5, #0
	bl sub_8032644
	strh r0, [r4, #0x28]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080388EC: .4byte 0x080DD668
_080388F0: .4byte 0x03000C78
_080388F4: .4byte 0x020231E1
_080388F8: .4byte 0x00000321
_080388FC: .4byte 0x03000C38
_08038900: .4byte 0x03001078
_08038904: .4byte 0x00000327

	THUMB_FUNC_START sub_8038908
sub_8038908: @ 0x08038908
	push {r4, lr}
	ldr r2, _08038938
	ldr r0, _0803893C
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0803894C
	ldr r1, _08038940
	ldr r4, _08038944
	adds r0, r2, r4
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _08038948
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r4, #3
	adds r0, r2, r4
	ldrb r0, [r0]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0803894E
	.align 2, 0
_08038938: .4byte 0x02022EC0
_0803893C: .4byte 0x00000FBF
_08038940: .4byte 0x080DD6B0
_08038944: .4byte 0x00000FBB
_08038948: .4byte 0x08FA3558
_0803894C:
	subs r0, #1
_0803894E:
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8038958
sub_8038958: @ 0x08038958
	push {lr}
	ldr r2, _0803899C
	ldr r1, _080389A0
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038992
	ldr r1, _080389A4
	ldr r3, _080389A8
	adds r0, r2, r3
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _080389AC
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldr r0, _080389B0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r2]
	ldr r1, [r1]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038992
	strb r0, [r2]
_08038992:
	bl sub_8038908
	pop {r0}
	bx r0
	.align 2, 0
_0803899C: .4byte 0x02022EC0
_080389A0: .4byte 0x00000FBF
_080389A4: .4byte 0x080DD6B0
_080389A8: .4byte 0x00000FBB
_080389AC: .4byte 0x00000FBE
_080389B0: .4byte 0x08FA3558

	THUMB_FUNC_START sub_80389B4
sub_80389B4: @ 0x080389B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	movs r0, #0xc8
	lsls r0, r0, #2
	mov r8, r0
	ldr r3, _08038A68
	mov ip, r3
	ldr r7, _08038A6C
	movs r4, #0
	ldr r1, _08038A70
	adds r6, r3, r1
	ldr r0, _08038A74
	adds r5, r3, r0
_080389D2:
	mov r0, ip
	adds r1, r2, r0
	adds r0, r2, r7
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, r6
	strb r4, [r0]
	adds r0, r2, r5
	strb r4, [r0]
	adds r2, #1
	cmp r2, r8
	bls _080389D2
	movs r2, #0
	strb r2, [r3]
	ldr r1, _08038A78
	adds r0, r3, r1
	movs r1, #0
	strh r2, [r0]
	ldr r4, _08038A7C
	adds r0, r3, r4
	strh r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r2, [r0]
	adds r4, #2
	adds r0, r3, r4
	strh r2, [r0]
	ldr r2, _08038A80
	adds r0, r3, r2
	strb r1, [r0]
	adds r4, #3
	adds r0, r3, r4
	strb r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strb r1, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strb r1, [r0]
	adds r4, #2
	adds r1, r3, r4
	movs r0, #3
	strb r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038A68: .4byte 0x02022EC0
_08038A6C: .4byte gTrunkCardQty
_08038A70: .4byte 0x00000321
_08038A74: .4byte 0x00000642
_08038A78: .4byte 0x00000FA4
_08038A7C: .4byte 0x00000FA6
_08038A80: .4byte 0x00000FB8

	THUMB_FUNC_START sub_8038A84
sub_8038A84: @ 0x08038A84
	ldr r1, _08038A98
	ldr r2, _08038A9C
	ldr r0, _08038AA0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038A98: .4byte 0x02022EC0
_08038A9C: .4byte 0x080DD670
_08038AA0: .4byte 0x00000FBB

	THUMB_FUNC_START sub_8038AA4
sub_8038AA4: @ 0x08038AA4
	ldr r1, _08038AB8
	ldr r2, _08038ABC
	ldr r0, _08038AC0
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_08038AB8: .4byte 0x02022EC0
_08038ABC: .4byte 0x080DD674
_08038AC0: .4byte 0x00000FBB

	THUMB_FUNC_START sub_8038AC4
sub_8038AC4: @ 0x08038AC4
	push {lr}
	ldr r1, _08038AE8
	ldr r2, _08038AEC
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038AE0
	ldr r2, _08038AF0
	ldr r0, _08038AF4
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
_08038AE0:
	bl sub_8038B1C
	pop {r0}
	bx r0
	.align 2, 0
_08038AE8: .4byte 0x02022EC0
_08038AEC: .4byte 0x00000FBD
_08038AF0: .4byte 0x080DD678
_08038AF4: .4byte 0x00000FBC

	THUMB_FUNC_START sub_8038AF8
sub_8038AF8: @ 0x08038AF8
	push {lr}
	ldr r0, _08038B10
	ldr r1, _08038B14
	ldrb r1, [r1]
	ldr r2, _08038B18
	adds r0, r0, r2
	strb r1, [r0]
	bl sub_8038B3C
	pop {r0}
	bx r0
	.align 2, 0
_08038B10: .4byte 0x02022EC0
_08038B14: .4byte 0x080DD678
_08038B18: .4byte 0x00000FBC

	THUMB_FUNC_START sub_8038B1C
sub_8038B1C: @ 0x08038B1C
	ldr r0, _08038B2C
	ldr r2, _08038B30
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08038B34
	subs r0, #1
	b _08038B36
	.align 2, 0
_08038B2C: .4byte 0x02022EC0
_08038B30: .4byte 0x00000FBD
_08038B34:
	movs r0, #3
_08038B36:
	strb r0, [r1]
	bx lr
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_8038B3C
sub_8038B3C: @ 0x08038B3C
	ldr r0, _08038B48
	ldr r1, _08038B4C
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_08038B48: .4byte 0x02022EC0
_08038B4C: .4byte 0x00000FBD

	THUMB_FUNC_START sub_8038B50
sub_8038B50: @ 0x08038B50
	push {r4, r5, r6, lr}
	movs r4, #1
	ldr r5, _08038B90
	ldr r0, _08038B94
	adds r6, r5, r0
_08038B5A:
	ldr r0, _08038B98
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_80378AC
	ldr r1, _08038B9C
	adds r0, r5, r1
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r4, #0
	bl RemoveCardFromTrunk
	adds r0, r4, r6
	ldrb r1, [r0]
	adds r0, r4, #0
	bl AddCardToTrunk
	adds r4, #1
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r4, r0
	bls _08038B5A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038B90: .4byte 0x02022EC0
_08038B94: .4byte 0x00000642
_08038B98: .4byte 0x03001078
_08038B9C: .4byte 0x00000321

	THUMB_FUNC_START sub_8038BA0
sub_8038BA0: @ 0x08038BA0
	ldr r1, _08038BC8
	ldr r3, _08038BCC
	ldr r2, _08038BD0
	adds r0, r3, r2
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, _08038BD4
	adds r2, r3, r0
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08038BD8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	ldr r1, _08038BDC
	adds r3, r3, r1
	strb r0, [r3]
	bx lr
	.align 2, 0
_08038BC8: .4byte 0x080DD6B0
_08038BCC: .4byte 0x02022EC0
_08038BD0: .4byte 0x00000FBB
_08038BD4: .4byte 0x00000FBE
_08038BD8: .4byte 0x08FA3558
_08038BDC: .4byte 0x00000FBF
	.byte 0x02, 0x48, 0x03, 0x49, 0x40, 0x18, 0x03, 0x21, 0x01, 0x70, 0x70, 0x47, 0xC0, 0x2E, 0x02, 0x02
	.byte 0xBB, 0x0F, 0x00, 0x00

	THUMB_FUNC_START sub_8038BF4
sub_8038BF4: @ 0x08038BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08038CB8
	movs r3, #0
	ldr r5, _08038CBC
	ldr r6, _08038CC0
	ldr r1, _08038CC4
	mov ip, r1
	ldr r2, _08038CC8
	mov r8, r2
	ldr r7, _08038CCC
	mov sb, r7
	ldr r1, _08038CD0
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r4, r7, #0
_08038C24:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _08038C24
	movs r0, #0
	strh r0, [r5]
	strh r0, [r6]
	ldr r1, _08038CD4
	strh r0, [r1]
	mov r2, ip
	strh r0, [r2]
	ldr r7, _08038CD8
	adds r1, r7, #0
	mov r2, r8
	strh r1, [r2]
	movs r1, #4
	mov r7, sb
	strh r1, [r7]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _08038CDC
	strh r0, [r2]
	bl sub_8038F1C
	bl sub_803A378
	bl sub_803A3D4
	bl sub_8039724
	bl sub_8039918
	bl sub_8039870
	bl sub_803A568
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038CB8: .4byte gOamBuffer
_08038CBC: .4byte gBG0VOFS
_08038CC0: .4byte gBG0HOFS
_08038CC4: .4byte gBG1HOFS
_08038CC8: .4byte gBG2VOFS
_08038CCC: .4byte gBG2HOFS
_08038CD0: .4byte gBG3VOFS
_08038CD4: .4byte gBG1VOFS
_08038CD8: .4byte 0x000001FD
_08038CDC: .4byte gBG3HOFS

	THUMB_FUNC_START sub_8038CE0
sub_8038CE0: @ 0x08038CE0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _08038D8C
	ldr r6, _08038D90
_08038CE8:
	adds r0, r5, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803912C
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r5, #1
	cmp r5, #4
	bls _08038CE8
	bl sub_803A4B4
	bl sub_803A4D8
	bl sub_8039870
	bl sub_803A424
	bl sub_8039918
	bl sub_80396B0
	ldr r1, _08038D94
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08038D98
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock1
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08038D9C
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038D8C: .4byte 0x08E0CE90
_08038D90: .4byte 0x02023E69
_08038D94: .4byte gBLDY
_08038D98: .4byte LoadOam
_08038D9C: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_8038DA0
sub_8038DA0: @ 0x08038DA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08038F00
	ldr r2, _08038F04
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _08038F08
	ldr r2, _08038F0C
	adds r0, r4, #0
	bl sub_8020A3C
	movs r6, #0
	movs r4, #0
_08038DCC:
	ldr r0, _08038F10
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r2, _08038F14
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _08038DCC
	movs r4, #0xb8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r7, #0xff
	lsls r7, r7, #8
	ands r7, r0
	movs r6, #0
	mov r8, r4
_08038DFC:
	adds r4, r6, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _08038F18
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #5
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #6
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x29
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #7
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x2b
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #8
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0xf
	mov r2, r8
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	orrs r3, r7
	adds r0, r4, #0
	movs r1, #0x10
	mov r2, r8
	bl sub_800800C
	adds r6, #1
	cmp r6, #9
	bls _08038DFC
	movs r6, #0
	movs r0, #0xb8
	lsls r0, r0, #8
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	mov r8, r0
_08038E7A:
	mov r0, r8
	lsrs r5, r0, #0x18
	ldr r4, _08038F18
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x51
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #5
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x53
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #6
	mov r2, sb
	bl sub_800800C
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r8, r0
	adds r6, #1
	cmp r6, #0xd
	bls _08038E7A
	movs r6, #0
	movs r0, #0xb8
	lsls r0, r0, #8
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	mov r8, r0
_08038EBC:
	mov r0, r8
	lsrs r5, r0, #0x18
	ldr r4, _08038F18
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x6d
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #7
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x6f
	orrs r3, r7
	adds r0, r5, #0
	movs r1, #8
	mov r2, sb
	bl sub_800800C
	movs r0, #0x80
	lsls r0, r0, #0x11
	add r8, r0
	adds r6, #1
	cmp r6, #0xb
	bls _08038EBC
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038F00: .4byte 0x02008400
_08038F04: .4byte 0x01000010
_08038F08: .4byte 0x080DD9DC
_08038F0C: .4byte 0x00000901
_08038F10: .4byte 0x08A31F24
_08038F14: .4byte 0x0200BC00
_08038F18: .4byte gUnk_8DF811C

	THUMB_FUNC_START sub_8038F1C
sub_8038F1C: @ 0x08038F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08039070
	ldr r2, _08039074
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTileToBuffer
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTileToBuffer
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTileToBuffer
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _08039078
	ldr r2, _0803907C
	bl sub_8020A3C
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _08039080
_08038F5E:
	ldr r1, _08039084
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _08039088
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08038F5E
	movs r5, #0
	ldr r4, _0803908C
_08038F88:
	ldr r1, _08039084
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _08039090
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _08038F88
	movs r5, #0
	ldr r4, _0803908C
_08038FB2:
	ldr r2, _08039084
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _08039094
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08038FB2
	ldr r0, _08039098
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803909C
	adds r1, r6, r2
	ldr r2, _080390A0
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _080390A4
	adds r6, r4, #0
	ldr r0, _080390A8
	mov ip, r0
_08039000:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _080390AC
	adds r1, r5, r1
	ldr r0, _080390B0
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080390B4
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_08039026:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08039026
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08039000
	bl sub_803A0AC
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039070: .4byte 0x0200C400
_08039074: .4byte 0x01000010
_08039078: .4byte 0x080DDF34
_0803907C: .4byte 0x00001801
_08039080: .4byte gAttributeIconTiles
_08039084: .4byte gLanguage
_08039088: .4byte 0x0200C620
_0803908C: .4byte gTypeIconTiles
_08039090: .4byte 0x0200CC20
_08039094: .4byte 0x0200D6A0
_08039098: .4byte 0x020000A0
_0803909C: .4byte 0x00002560
_080390A0: .4byte 0x01000400
_080390A4: .4byte 0x000003FF
_080390A8: .4byte 0x080DD6C8
_080390AC: .4byte 0x080DD6BE
_080390B0: .4byte 0x080DD6C3
_080390B4: .4byte 0x02000400

	THUMB_FUNC_START sub_80390B8
sub_80390B8: @ 0x080390B8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08039118
	adds r2, r0, r2
	ldr r1, _0803911C
	adds r0, r0, r1
	ldrb r4, [r0]
	lsls r4, r4, #5
	movs r0, #0xf8
	lsls r0, r0, #7
	adds r4, r4, r0
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r0, _08039120
	adds r4, r4, r0
	ldr r0, _08039124
	ldrh r0, [r0, #0x10]
	movs r1, #1
	bl sub_800DDA0
	ldr r2, _08039128
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039118: .4byte 0x080DD6B4
_0803911C: .4byte 0x080DD6B9
_08039120: .4byte 0x02000400
_08039124: .4byte gCardInfo
_08039128: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803912C
sub_803912C: @ 0x0803912C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r4, #0
	movs r5, #0
	ldr r0, _080391E8
	ldr r0, [r0]
	bl sub_8020824
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803919A
	ldr r1, _080391EC
	mov ip, r1
	lsls r3, r6, #1
	ldr r7, _080391F0
	mov r8, r7
	cmp r0, #0x24
	beq _0803919A
_0803915A:
	adds r0, r2, r4
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08039174
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08039174:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bhi _080391C0
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803919A
	cmp r0, #0x24
	bne _0803915A
_0803919A:
	ldr r1, _080391EC
	mov ip, r1
	lsls r3, r6, #1
	ldr r2, _080391F0
	mov r8, r2
	cmp r5, #0x13
	bhi _080391C0
	movs r1, #0x20
_080391AA:
	mov r7, sp
	adds r0, r7, r4
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x13
	bls _080391AA
_080391C0:
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r0, r8
	ldr r2, _080391F4
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080391E8: .4byte gCardInfo
_080391EC: .4byte 0x080DD6C8
_080391F0: .4byte 0x0200C400
_080391F4: .4byte 0x00000901

	THUMB_FUNC_START sub_80391F8
sub_80391F8: @ 0x080391F8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080392E8
	mov r8, r0
	bl CopySwordTileToBuffer
	mov r0, r8
	adds r0, #0x20
	bl CopyShieldTileToBuffer
	ldr r1, _080392EC
	mov sl, r1
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldr r0, _080392F0
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _080392F4
	adds r4, r4, r0
	ldrb r4, [r4]
	lsls r0, r4, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	mov sb, r3
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r1, _080392F8
	add r8, r1
	mov r3, r8
	adds r2, r0, r3
	ldr r1, _080392FC
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldr r5, _08039300
	ldrb r0, [r5]
	adds r0, #7
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl sub_800DDA0
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r3, r8
	adds r2, r6, r3
	ldr r1, _08039304
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r2, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080392E8: .4byte 0x0200C440
_080392EC: .4byte gCardInfo
_080392F0: .4byte 0x080DD6F0
_080392F4: .4byte 0x080DD6F5
_080392F8: .4byte 0xFFFF3FC0
_080392FC: .4byte 0x00005002
_08039300: .4byte 0x02021BD0
_08039304: .4byte 0x00005003

	THUMB_FUNC_START sub_8039308
sub_8039308: @ 0x08039308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _08039410
	adds r1, r4, r1
	ldr r0, _08039414
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08039418
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803941C
	mov sl, r0
	ldrb r0, [r0, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08039430
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x13
	ldr r2, _08039420
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r5, r4, #0
	mov r0, ip
	strh r5, [r0]
	strh r5, [r0, #2]
	mov r2, sb
	lsls r3, r2, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _08039424
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _08039428
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, sb
	lsls r1, r4, #5
	ldr r2, _0803942C
	adds r1, r1, r2
	movs r2, #0x10
	bl CpuSet
	b _08039514
	.align 2, 0
_08039410: .4byte 0x080DD6F0
_08039414: .4byte 0x080DD6F5
_08039418: .4byte 0x02000400
_0803941C: .4byte gCardInfo
_08039420: .4byte 0xFFED0000
_08039424: .4byte 0x000003FF
_08039428: .4byte gTypeIconPalettes
_0803942C: .4byte 0x02000000
_08039430:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _08039524
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _08039528
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r4, sb
	lsls r1, r4, #5
	ldr r5, _0803952C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08039530
	mov r2, sl
	ldrb r0, [r2, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
_08039514:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039524: .4byte 0x000003FF
_08039528: .4byte gTypeIconPalettes
_0803952C: .4byte 0x02000000
_08039530: .4byte gAttributeIconPalettes

	THUMB_FUNC_START sub_8039534
sub_8039534: @ 0x08039534
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08039604
	mov r8, r0
	ldr r1, _08039608
	ldr r2, _0803960C
	bl sub_8020A3C
	ldr r0, _08039610
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _08039614
	adds r4, r4, r0
	ldrb r5, [r4]
	lsls r0, r5, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r1, _08039618
	add r8, r1
	mov r1, r8
	adds r3, r0, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldr r0, _0803961C
	ldrh r0, [r0, #0xc]
	movs r1, #0
	bl sub_800DDA0
	adds r5, #1
	lsls r5, r5, #5
	add r5, sb
	adds r6, r6, r5
	lsls r6, r6, #1
	mov r1, r8
	adds r3, r6, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _08039620
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3, #2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039604: .4byte 0x0200C440
_08039608: .4byte 0x080DDF4C
_0803960C: .4byte 0x00000801
_08039610: .4byte 0x080DD6F0
_08039614: .4byte 0x080DD6F5
_08039618: .4byte 0xFFFF3FC0
_0803961C: .4byte gCardInfo
_08039620: .4byte 0x02021BD0

	THUMB_FUNC_START sub_8039624
sub_8039624: @ 0x08039624
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803969C
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _080396A0
	adds r2, r0, r2
	ldr r1, _080396A4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _080396A8
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _080396AC
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803965E:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803965E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803969C: .4byte 0x080DD6C8
_080396A0: .4byte 0x080DD6F0
_080396A4: .4byte 0x080DD6F5
_080396A8: .4byte 0x02000400
_080396AC: .4byte 0x000003FF

	THUMB_FUNC_START sub_80396B0
sub_80396B0: @ 0x080396B0
	push {r4, r5, r6, lr}
	ldr r1, _08039710
	ldr r5, _08039714
	ldr r3, _08039718
	ldr r0, _0803971C
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _08039720
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039710: .4byte 0x02007438
_08039714: .4byte 0x080DD712
_08039718: .4byte 0x02022EC0
_0803971C: .4byte 0x00000FAA
_08039720: .4byte 0x000003FF

	THUMB_FUNC_START sub_8039724
sub_8039724: @ 0x08039724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08039834
	ldr r5, _08039838
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803983C
	ldr r6, _08039840
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _08039844
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _08039848
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803984C
	adds r6, r6, r2
	adds r0, r6, #0
	bl sub_8057418
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _08039850
	mov r8, r2
_080397A8:
	lsls r3, r5, #3
	ldr r0, _08039854
	adds r3, r3, r0
	ldr r0, _08039858
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803985C
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _08039860
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _08039864
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _08039868
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803986C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _080397A8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039834: .4byte 0x08A3571C
_08039838: .4byte 0x02011500
_0803983C: .4byte 0x08A3575C
_08039840: .4byte 0x02000340
_08039844: .4byte 0x08A3577C
_08039848: .4byte 0x08A357FC
_0803984C: .4byte 0xFFFFFEC0
_08039850: .4byte 0xFFFFFE00
_08039854: .4byte gOamBuffer
_08039858: .4byte 0x080DD726
_0803985C: .4byte 0x080DD730
_08039860: .4byte 0x000001FF
_08039864: .4byte 0x080DD73A
_08039868: .4byte 0x000003FF
_0803986C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039870
sub_8039870: @ 0x08039870
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803989C
	ldr r0, _080398A0
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080398A8
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _080398A4
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl _divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080398AA
	.align 2, 0
_0803989C: .4byte 0x02022EC0
_080398A0: .4byte 0x00000FA6
_080398A4: .4byte 0x00000FA4
_080398A8:
	movs r0, #0x18
_080398AA:
	ldr r2, _0803990C
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _08039910
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _08039914
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803990C: .4byte 0x02018450
_08039910: .4byte 0xFFFFFE00
_08039914: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039918
sub_8039918: @ 0x08039918
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _080399A4
	ldr r0, _080399A8
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _080399AC
	ldrh r1, [r0, #4]
	ldr r2, _080399B0
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080399B4
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _080399B8
	ldrh r0, [r0, #4]
	ldr r1, _080399BC
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080399C0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080399A4: .4byte 0x02018428
_080399A8: .4byte 0x080DD726
_080399AC: .4byte 0x080DD730
_080399B0: .4byte 0x000001FF
_080399B4: .4byte 0xFFFFFE00
_080399B8: .4byte 0x080DD73A
_080399BC: .4byte 0x000003FF
_080399C0: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_80399C4
sub_80399C4: @ 0x080399C4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _08039A54
	ldr r2, _08039A58
	ldr r1, _08039A5C
	ldr r0, _08039A60
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _08039A64
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08039A68
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08039A6C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _08039A70
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039A54: .4byte 0x02018460
_08039A58: .4byte 0x080DD75C
_08039A5C: .4byte 0x02022EC0
_08039A60: .4byte 0x00000FA8
_08039A64: .4byte 0x080DD768
_08039A68: .4byte 0x000001FF
_08039A6C: .4byte 0xFFFFFE00
_08039A70: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039A74
sub_8039A74: @ 0x08039A74
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _08039B04
	ldr r2, _08039B08
	ldr r1, _08039B0C
	ldr r0, _08039B10
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _08039B14
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _08039B18
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08039B1C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _08039B20
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039B04: .4byte 0x02018460
_08039B08: .4byte 0x080DD7A0
_08039B0C: .4byte 0x02022EC0
_08039B10: .4byte 0x00000FA8
_08039B14: .4byte 0x080DD7B6
_08039B18: .4byte 0x000001FF
_08039B1C: .4byte 0xFFFFFE00
_08039B20: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_8039B24
sub_8039B24: @ 0x08039B24
	push {lr}
	bl sub_8038BF4
	bl sub_803A424
	bl sub_8045718
	ldr r0, _08039B78
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _08039B7C
	ldr r2, _08039B80
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039B84
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803A5C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08039B78: .4byte LoadOam
_08039B7C: .4byte 0x0400000A
_08039B80: .4byte 0x00001F0D
_08039B84: .4byte 0x00000E06

	THUMB_FUNC_START sub_8039B88
sub_8039B88: @ 0x08039B88
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039BD0
	ldr r5, _08039BD4
_08039B90:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039B90
	ldr r0, _08039BD8
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039BD0: .4byte 0x08E0CE90
_08039BD4: .4byte 0x02023E69
_08039BD8: .4byte LoadOam

	THUMB_FUNC_START sub_8039BDC
sub_8039BDC: @ 0x08039BDC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039C5C
	ldr r5, _08039C60
_08039BE4:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803912C
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039BE4
	bl sub_8039870
	bl sub_803A424
	bl sub_80396B0
	ldr r0, _08039C64
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039C5C: .4byte 0x08E0CE90
_08039C60: .4byte 0x02023E69
_08039C64: .4byte LoadOam

	THUMB_FUNC_START sub_8039C68
sub_8039C68: @ 0x08039C68
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039CDC
	ldr r5, _08039CE0
_08039C70:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039C70
	bl sub_803A10C
	bl sub_8039870
	bl sub_803A424
	ldr r0, _08039CE4
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039CDC: .4byte 0x08E0CE90
_08039CE0: .4byte 0x02023E69
_08039CE4: .4byte LoadOam

	THUMB_FUNC_START sub_8039CE8
sub_8039CE8: @ 0x08039CE8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _08039D5C
	ldr r5, _08039D60
_08039CF0:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08039CF0
	bl sub_803A17C
	bl sub_8039870
	bl sub_803A424
	ldr r0, _08039D64
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08039D5C: .4byte 0x08E0CE90
_08039D60: .4byte 0x02023E69
_08039D64: .4byte LoadOam

	THUMB_FUNC_START sub_8039D68
sub_8039D68: @ 0x08039D68
	push {lr}
	movs r0, #2
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #2
	bl sub_803A264
	movs r0, #2
	bl sub_803A2D4
	ldr r0, _08039D98
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock3
	pop {r0}
	bx r0
	.align 2, 0
_08039D98: .4byte LoadOam

	THUMB_FUNC_START sub_8039D9C
sub_8039D9C: @ 0x08039D9C
	push {lr}
	bl sub_803A4B4
	bl sub_803A4D8
	bl sub_803A424
	ldr r1, _08039DD0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08039DD4
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08039DD8
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08039DD0: .4byte gBLDY
_08039DD4: .4byte LoadOam
_08039DD8: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_8039DDC
sub_8039DDC: @ 0x08039DDC
	push {r4, lr}
	bl sub_8038DA0
	bl sub_8039918
	bl sub_803A46C
	bl sub_80399C4
	bl sub_803A490
	bl sub_803A588
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _08039E34
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08039E38
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039E3C
	ldr r2, _08039E40
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039E34: .4byte 0x0000FEFF
_08039E38: .4byte LoadOam
_08039E3C: .4byte 0x04000008
_08039E40: .4byte 0x00001708

	THUMB_FUNC_START sub_8039E44
sub_8039E44: @ 0x08039E44
	push {lr}
	bl sub_80399C4
	bl sub_803A490
	ldr r0, _08039E5C
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_08039E5C: .4byte LoadOam

	THUMB_FUNC_START sub_8039E60
sub_8039E60: @ 0x08039E60
	push {lr}
	bl sub_8038BF4
	bl sub_8038DA0
	bl sub_80399C4
	bl sub_803A490
	bl sub_803A588
	bl sub_8045718
	ldr r0, _08039EC8
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _08039ECC
	ldr r2, _08039ED0
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039ED4
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _08039ED8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803A5C8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08039EC8: .4byte LoadOam
_08039ECC: .4byte 0x04000008
_08039ED0: .4byte 0x00001708
_08039ED4: .4byte 0x00001F0D
_08039ED8: .4byte 0x00000E06

	THUMB_FUNC_START sub_8039EDC
sub_8039EDC: @ 0x08039EDC
	push {lr}
	bl sub_8039FD8
	bl sub_803A46C
	bl sub_803A448
	bl sub_8039A74
	bl sub_803A4FC
	bl sub_803A5A8
	ldr r0, _08039F30
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039F34
	ldr r2, _08039F38
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08039F3C
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08039F30: .4byte LoadOam
_08039F34: .4byte 0x04000008
_08039F38: .4byte 0x00001708
_08039F3C: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_8039F40
sub_8039F40: @ 0x08039F40
	push {lr}
	bl sub_80396B0
	bl sub_8039A74
	bl sub_803A4FC
	ldr r0, _08039F60
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_08039F60: .4byte LoadOam

	THUMB_FUNC_START sub_8039F64
sub_8039F64: @ 0x08039F64
	push {r4, lr}
	bl sub_803A04C
	bl sub_803A46C
	bl sub_803A448
	bl sub_803A4B4
	bl sub_803A4D8
	bl sub_803A5A8
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r1, [r4]
	ldr r0, _08039FC4
	ands r0, r1
	strh r0, [r4]
	ldr r0, _08039FC8
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _08039FCC
	ldr r2, _08039FD0
	adds r0, r2, #0
	strh r0, [r1]
	ldrh r1, [r4]
	ldr r0, _08039FD4
	ands r0, r1
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039FC4: .4byte 0x0000FEFF
_08039FC8: .4byte LoadOam
_08039FCC: .4byte 0x04000008
_08039FD0: .4byte 0x00001708
_08039FD4: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_8039FD8
sub_8039FD8: @ 0x08039FD8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A030
	ldr r2, _0803A034
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803A038
	ldr r5, _0803A03C
	adds r2, r5, #0
	bl sub_8020A3C
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803A040
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r4, #0
	movs r5, #0
_0803A010:
	ldr r0, _0803A044
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A048
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A010
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A030: .4byte 0x02008400
_0803A034: .4byte 0x01000010
_0803A038: .4byte 0x080DDB6C
_0803A03C: .4byte 0x00000901
_0803A040: .4byte 0x080DDDD8
_0803A044: .4byte 0x08A323D4
_0803A048: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803A04C
sub_803A04C: @ 0x0803A04C
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A094
	ldr r2, _0803A098
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803A09C
	ldr r2, _0803A0A0
	adds r0, r4, #0
	bl sub_8020A3C
	movs r4, #0
	movs r5, #0
_0803A072:
	ldr r0, _0803A0A4
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A0A8
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A072
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A094: .4byte 0x02008400
_0803A098: .4byte 0x01000010
_0803A09C: .4byte 0x080DDE9C
_0803A0A0: .4byte 0x00000901
_0803A0A4: .4byte 0x08A32884
_0803A0A8: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803A0AC
sub_803A0AC: @ 0x0803A0AC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803A104
	ldr r5, _0803A108
_0803A0B4:
	adds r0, r4, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_80390B8
	adds r0, r4, #0
	bl sub_803912C
	adds r0, r4, #0
	bl sub_803A1EC
	adds r0, r4, #0
	bl sub_803A264
	adds r0, r4, #0
	bl sub_803A2D4
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803A34C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803A0B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A104: .4byte 0x08E0CE90
_0803A108: .4byte 0x02023E69

	THUMB_FUNC_START sub_803A10C
sub_803A10C: @ 0x0803A10C
	push {r4, r5, r6, lr}
	ldr r0, _0803A170
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803A174
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803A178
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803912C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A170: .4byte 0x080DD6C8
_0803A174: .4byte 0x0200C400
_0803A178: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803A17C
sub_803A17C: @ 0x0803A17C
	push {r4, r5, r6, lr}
	ldr r0, _0803A1E0
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803A1E4
	adds r4, r4, r0
	ldr r0, _0803A1E8
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803A1E8
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_8036C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803912C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1E0: .4byte 0x080DD6C8
_0803A1E4: .4byte 0x0200C400
_0803A1E8: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803A1EC
sub_803A1EC: @ 0x0803A1EC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A250
	adds r2, r0, r2
	ldr r1, _0803A254
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803A258
	adds r1, r0, r1
	movs r0, #0
	ldr r2, _0803A25C
	ldrb r3, [r2, #0x18]
	cmp r0, r3
	bhs _0803A230
	ldr r4, _0803A260
	adds r3, r4, #0
_0803A21C:
	strh r3, [r1]
	subs r1, #2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0803A248
	ldrb r4, [r2, #0x18]
	cmp r0, r4
	blo _0803A21C
_0803A230:
	cmp r0, #0xb
	bhi _0803A248
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r2, r3, #0
_0803A23A:
	strh r2, [r1]
	subs r1, #2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _0803A23A
_0803A248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A250: .4byte 0x080DD6D2
_0803A254: .4byte 0x080DD6D7
_0803A258: .4byte 0x02000400
_0803A25C: .4byte gCardInfo
_0803A260: .4byte 0x00005001

	THUMB_FUNC_START sub_803A264
sub_803A264: @ 0x0803A264
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A2C0
	adds r2, r0, r2
	ldr r1, _0803A2C4
	adds r1, r0, r1
	ldrb r4, [r1]
	lsls r4, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r4, r4, r1
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r1, _0803A2C8
	adds r4, r4, r1
	ldr r5, _0803A2CC
	bl sub_8036C3C
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #1
	bl sub_800DDA0
	ldr r2, _0803A2D0
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A2C0: .4byte 0x080DD6DC
_0803A2C4: .4byte 0x080DD6E1
_0803A2C8: .4byte 0x02000400
_0803A2CC: .4byte 0x02022EC0
_0803A2D0: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803A2D4
sub_803A2D4: @ 0x0803A2D4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803A334
	adds r2, r0, r2
	ldr r1, _0803A338
	adds r1, r0, r1
	ldrb r4, [r1]
	lsls r4, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r4, r4, r1
	ldrb r2, [r2]
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r1, _0803A33C
	adds r4, r4, r1
	ldr r5, _0803A340
	bl sub_8036C3C
	ldr r3, _0803A344
	adds r5, r5, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	ldr r2, _0803A348
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A334: .4byte 0x080DD6E6
_0803A338: .4byte 0x080DD6EB
_0803A33C: .4byte 0x02000400
_0803A340: .4byte 0x02022EC0
_0803A344: .4byte 0x00000321
_0803A348: .4byte 0x02021BD0

	THUMB_FUNC_START sub_803A34C
sub_803A34C: @ 0x0803A34C
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _0803A36C
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803A370
	adds r0, r0, r1
	ldr r1, _0803A374
	ldrh r1, [r1, #0x10]
	bl sub_80573D0
	pop {r0}
	bx r0
	.align 2, 0
_0803A36C: .4byte 0x080DD73A
_0803A370: .4byte 0x02010400
_0803A374: .4byte gCardInfo

	THUMB_FUNC_START sub_803A378
sub_803A378: @ 0x0803A378
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A3C0
	ldr r2, _0803A3C4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803A3C8
	ldr r2, _0803A3CC
	bl sub_8020A3C
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803A3D0
	adds r1, r4, #0
	bl CpuSet
	bl sub_80396B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A3C0: .4byte 0x02004400
_0803A3C4: .4byte 0x01000010
_0803A3C8: .4byte 0x080DDF7C
_0803A3CC: .4byte 0x00000901
_0803A3D0: .4byte 0x01000400

	THUMB_FUNC_START sub_803A3D4
sub_803A3D4: @ 0x0803A3D4
	push {r4, r5, lr}
	ldr r0, _0803A40C
	ldr r1, _0803A410
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803A3E2:
	ldr r0, _0803A414
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803A418
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803A3E2
	ldr r0, _0803A41C
	ldr r1, _0803A420
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A40C: .4byte 0x08A32D34
_0803A410: .4byte 0x02000400
_0803A414: .4byte 0x08A351EC
_0803A418: .4byte 0x02007C00
_0803A41C: .4byte 0x08A3569C
_0803A420: .4byte 0x02000000

	THUMB_FUNC_START sub_803A424
sub_803A424: @ 0x0803A424
	ldr r2, _0803A444
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A444: .4byte 0x02018450

	THUMB_FUNC_START sub_803A448
sub_803A448: @ 0x0803A448
	ldr r0, _0803A468
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A468: .4byte 0x02018428

	THUMB_FUNC_START sub_803A46C
sub_803A46C: @ 0x0803A46C
	ldr r0, _0803A48C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A48C: .4byte 0x02018458

	THUMB_FUNC_START sub_803A490
sub_803A490: @ 0x0803A490
	ldr r2, _0803A4B0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A4B0: .4byte 0x02018460

	THUMB_FUNC_START sub_803A4B4
sub_803A4B4: @ 0x0803A4B4
	ldr r0, _0803A4D4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A4D4: .4byte 0x02018460

	THUMB_FUNC_START sub_803A4D8
sub_803A4D8: @ 0x0803A4D8
	ldr r0, _0803A4F8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803A4F8: .4byte 0x02018468

	THUMB_FUNC_START sub_803A4FC
sub_803A4FC: @ 0x0803A4FC
	ldr r2, _0803A51C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803A51C: .4byte 0x02018460
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803A568
sub_803A568: @ 0x0803A568
	ldr r1, _0803A57C
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803A580
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A584
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A57C: .4byte gBLDCNT
_0803A580: .4byte gBLDALPHA
_0803A584: .4byte gBLDY

	THUMB_FUNC_START sub_803A588
sub_803A588: @ 0x0803A588
	ldr r1, _0803A59C
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803A5A0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A5A4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A59C: .4byte gBLDCNT
_0803A5A0: .4byte gBLDALPHA
_0803A5A4: .4byte gBLDY

	THUMB_FUNC_START sub_803A5A8
sub_803A5A8: @ 0x0803A5A8
	ldr r1, _0803A5BC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803A5C0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803A5C4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A5BC: .4byte gBLDCNT
_0803A5C0: .4byte gBLDALPHA
_0803A5C4: .4byte gBLDY

	THUMB_FUNC_START sub_803A5C8
sub_803A5C8: @ 0x0803A5C8
	ldr r1, _0803A5F8
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803A5FC
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803A600
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803A604
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803A608
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803A5F8: .4byte 0x04000040
_0803A5FC: .4byte 0x000004D4
_0803A600: .4byte 0x0000486F
_0803A604: .4byte 0x00001E0E
_0803A608: .4byte 0x0000183F

	THUMB_FUNC_START sub_803A60C
sub_803A60C: @ 0x0803A60C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803A6D0
	movs r3, #0
	ldr r5, _0803A6D4
	ldr r6, _0803A6D8
	ldr r1, _0803A6DC
	mov ip, r1
	ldr r2, _0803A6E0
	mov r8, r2
	ldr r7, _0803A6E4
	mov sb, r7
	ldr r1, _0803A6E8
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r4, r7, #0
_0803A63C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0803A63C
	movs r0, #0
	strh r0, [r5]
	strh r0, [r6]
	ldr r1, _0803A6EC
	strh r0, [r1]
	mov r2, ip
	strh r0, [r2]
	ldr r7, _0803A6F0
	adds r1, r7, #0
	mov r2, r8
	strh r1, [r2]
	movs r1, #4
	mov r7, sb
	strh r1, [r7]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0803A6F4
	strh r0, [r2]
	bl sub_803A878
	bl sub_803BDA8
	bl sub_803BE04
	bl sub_803B31C
	bl sub_803B510
	bl sub_803B468
	bl sub_803BF98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6D0: .4byte gOamBuffer
_0803A6D4: .4byte gBG0VOFS
_0803A6D8: .4byte gBG0HOFS
_0803A6DC: .4byte gBG1HOFS
_0803A6E0: .4byte gBG2VOFS
_0803A6E4: .4byte gBG2HOFS
_0803A6E8: .4byte gBG3VOFS
_0803A6EC: .4byte gBG1VOFS
_0803A6F0: .4byte 0x000001FD
_0803A6F4: .4byte gBG3HOFS

	THUMB_FUNC_START sub_803A6F8
sub_803A6F8: @ 0x0803A6F8
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _0803A7A0
	ldr r6, _0803A7A4
_0803A700:
	adds r0, r5, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_803AA14
	adds r0, r4, #0
	bl sub_803AAB0
	adds r0, r4, #0
	bl sub_803BC88
	adds r0, r4, #0
	bl sub_803AC2C
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803BD18
	adds r5, #1
	cmp r5, #4
	bls _0803A700
	bl sub_803BEE4
	bl sub_803BF08
	bl sub_803B468
	bl sub_803BE54
	bl sub_803B510
	bl sub_803B2A8
	ldr r1, _0803A7A8
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803A7AC
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock1
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803A7B0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7A0: .4byte 0x08E0CEA0
_0803A7A4: .4byte 0x02023E79
_0803A7A8: .4byte gBLDY
_0803A7AC: .4byte LoadOam
_0803A7B0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803A7B4
sub_803A7B4: @ 0x0803A7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A85C
	ldr r2, _0803A860
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803A864
	ldr r2, _0803A868
	adds r0, r4, #0
	bl sub_8020A3C
	movs r6, #0
	movs r4, #0
_0803A7E0:
	ldr r0, _0803A86C
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r2, _0803A870
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803A7E0
	movs r4, #0xb8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r6, #0
	mov sb, r4
	movs r7, #0x80
	lsls r7, r7, #0x13
_0803A818:
	lsrs r5, r7, #0x18
	ldr r4, _0803A874
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r5, #0
	movs r1, #0xf
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r5, #0
	movs r1, #0x10
	mov r2, sb
	bl sub_800800C
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #9
	bls _0803A818
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A85C: .4byte 0x02008400
_0803A860: .4byte 0x01000010
_0803A864: .4byte 0x080DE004
_0803A868: .4byte 0x00000901
_0803A86C: .4byte 0x08A38D8C
_0803A870: .4byte 0x0200BC00
_0803A874: .4byte gUnk_8DF811C

	THUMB_FUNC_START sub_803A878
sub_803A878: @ 0x0803A878
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803A9CC
	ldr r2, _0803A9D0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTileToBuffer
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTileToBuffer
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTileToBuffer
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _0803A9D4
	ldr r2, _0803A9D8
	bl sub_8020A3C
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _0803A9DC
_0803A8BA:
	ldr r1, _0803A9E0
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803A9E4
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0803A8BA
	movs r5, #0
	ldr r4, _0803A9E8
_0803A8E4:
	ldr r1, _0803A9E0
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803A9EC
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _0803A8E4
	movs r5, #0
	ldr r4, _0803A9E8
_0803A90E:
	ldr r2, _0803A9E0
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _0803A9F0
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0803A90E
	ldr r0, _0803A9F4
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803A9F8
	adds r1, r6, r2
	ldr r2, _0803A9FC
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _0803AA00
	adds r6, r4, #0
	ldr r0, _0803AA04
	mov ip, r0
_0803A95C:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _0803AA08
	adds r1, r5, r1
	ldr r0, _0803AA0C
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AA10
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_0803A982:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0803A982
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803A95C
	bl sub_803BB4C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A9CC: .4byte 0x0200C400
_0803A9D0: .4byte 0x01000010
_0803A9D4: .4byte 0x080DE4C4
_0803A9D8: .4byte 0x00001801
_0803A9DC: .4byte gAttributeIconTiles
_0803A9E0: .4byte gLanguage
_0803A9E4: .4byte 0x0200C620
_0803A9E8: .4byte gTypeIconTiles
_0803A9EC: .4byte 0x0200CC20
_0803A9F0: .4byte 0x0200D6A0
_0803A9F4: .4byte 0x020000A0
_0803A9F8: .4byte 0x00002560
_0803A9FC: .4byte 0x01000400
_0803AA00: .4byte 0x000003FF
_0803AA04: .4byte 0x080DD8F8
_0803AA08: .4byte 0x080DD8EE
_0803AA0C: .4byte 0x080DD8F3
_0803AA10: .4byte 0x02000400

	THUMB_FUNC_START sub_803AA14
sub_803AA14: @ 0x0803AA14
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803AA7C
	adds r2, r0, r2
	ldr r1, _0803AA80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803AA84
	adds r4, r0, r1
	ldr r0, _0803AA88
	ldr r1, _0803AA8C
	ldrh r1, [r1, #0x10]
	ldr r2, _0803AA90
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AA98
	adds r0, r1, #0
	movs r1, #1
	bl sub_800DDA0
	ldr r2, _0803AA94
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	b _0803AAA8
	.align 2, 0
_0803AA7C: .4byte 0x080DD8E4
_0803AA80: .4byte 0x080DD8E9
_0803AA84: .4byte 0x02000400
_0803AA88: .4byte 0x02022EC0
_0803AA8C: .4byte gCardInfo
_0803AA90: .4byte 0x00000642
_0803AA94: .4byte 0x02021BD0
_0803AA98:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803AAA8:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803AAB0
sub_803AAB0: @ 0x0803AAB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _0803AB7C
	ldr r0, [r4]
	bl sub_8020824
	adds r2, r0, #0
	ldr r0, _0803AB80
	ldr r1, _0803AB84
	adds r0, r0, r1
	ldrh r4, [r4, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AB30
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803AB30
	ldr r7, _0803AB88
	mov ip, r7
	mov r1, r8
	lsls r3, r1, #1
	ldr r4, _0803AB8C
	cmp r0, #0x24
	beq _0803AB30
_0803AAF0:
	adds r0, r2, r5
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0803AB0A
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803AB0A:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bhi _0803AB56
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803AB30
	cmp r0, #0x24
	bne _0803AAF0
_0803AB30:
	ldr r1, _0803AB88
	mov ip, r1
	mov r2, r8
	lsls r3, r2, #1
	ldr r4, _0803AB8C
	cmp r6, #0x13
	bhi _0803AB56
	movs r1, #0x20
_0803AB40:
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0803AB40
_0803AB56:
	mov r0, sp
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r2, _0803AB90
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AB7C: .4byte gCardInfo
_0803AB80: .4byte 0x02022EC0
_0803AB84: .4byte 0x00000642
_0803AB88: .4byte 0x080DD8F8
_0803AB8C: .4byte 0x0200C400
_0803AB90: .4byte 0x00000901
	.byte 0x30, 0xB5, 0x00, 0x06, 0x02, 0x0E, 0x18, 0x49, 0x51, 0x18, 0x18, 0x48
	.byte 0x10, 0x18, 0x00, 0x78, 0x40, 0x01, 0xF8, 0x23, 0xDB, 0x01, 0xC0, 0x18, 0x09, 0x78, 0x40, 0x18
	.byte 0x40, 0x00, 0x14, 0x49, 0x44, 0x18, 0x14, 0x4D, 0x14, 0x49, 0x15, 0x4B, 0xE8, 0x18, 0x09, 0x8A
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0x27, 0xD0, 0x10, 0x1C, 0xFC, 0xF7, 0xE5, 0xFD, 0x40, 0x19
	.byte 0x00, 0x78, 0x01, 0x21, 0xD3, 0xF7, 0xE4, 0xF8, 0x0E, 0x4A, 0x10, 0x78, 0x07, 0x30, 0xA0, 0x23
	.byte 0xDB, 0x01, 0x19, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x50, 0x78, 0x07, 0x30, 0x08, 0x43
	.byte 0x20, 0x80, 0x90, 0x78, 0x07, 0x30, 0x08, 0x43, 0x14, 0xE0, 0x00, 0x00, 0x0C, 0xD9, 0x0D, 0x08
	.byte 0x11, 0xD9, 0x0D, 0x08, 0x00, 0x04, 0x00, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x42, 0x06, 0x00, 0x00, 0xD0, 0x1B, 0x02, 0x02, 0xA0, 0x21, 0xC9, 0x01, 0x08, 0x1C, 0x20, 0x80
	.byte 0x02, 0x34, 0x20, 0x80, 0x60, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_803AC2C
sub_803AC2C: @ 0x0803AC2C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0803AC94
	adds r1, r2, r1
	ldr r0, _0803AC98
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AC9C
	adds r4, r0, r1
	ldr r1, _0803ACA0
	ldr r0, _0803ACA4
	ldrh r0, [r0, #0x10]
	ldr r3, _0803ACA8
	adds r5, r1, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ACB0
	adds r0, r2, #0
	bl sub_8037798
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	ldr r2, _0803ACAC
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	b _0803ACBC
	.align 2, 0
_0803AC94: .4byte 0x080DD916
_0803AC98: .4byte 0x080DD91B
_0803AC9C: .4byte 0x02000400
_0803ACA0: .4byte 0x02022EC0
_0803ACA4: .4byte gCardInfo
_0803ACA8: .4byte 0x00000642
_0803ACAC: .4byte 0x02021BD0
_0803ACB0:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803ACBC:
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803ACC4
sub_803ACC4: @ 0x0803ACC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0803ADB4
	adds r0, r5, #0
	bl CopySwordTileToBuffer
	adds r0, r5, #0
	adds r0, #0x20
	bl CopyShieldTileToBuffer
	ldr r0, _0803ADB8
	ldr r1, _0803ADBC
	mov sl, r1
	ldr r2, _0803ADC0
	adds r0, r0, r2
	ldrh r6, [r1, #0x10]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803ADDC
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldr r0, _0803ADC4
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _0803ADC8
	adds r0, r4, r0
	ldrb r4, [r0]
	lsls r0, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r2, _0803ADCC
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, r2
	ldr r5, _0803ADD0
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	ldr r5, _0803ADD4
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl sub_800DDA0
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r2, r8
	adds r7, r6, r2
	ldr r6, _0803ADD8
	adds r0, r6, #0
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	b _0803AE32
	.align 2, 0
_0803ADB4: .4byte 0x0200C440
_0803ADB8: .4byte 0x02022EC0
_0803ADBC: .4byte gCardInfo
_0803ADC0: .4byte 0x00000642
_0803ADC4: .4byte 0x080DD920
_0803ADC8: .4byte 0x080DD925
_0803ADCC: .4byte 0xFFFF3FC0
_0803ADD0: .4byte 0x00005002
_0803ADD4: .4byte 0x02021BD0
_0803ADD8: .4byte 0x00005003
_0803ADDC:
	ldr r0, _0803AE44
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r0, _0803AE48
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r0, r4
	adds r0, r2, r0
	lsls r0, r0, #1
	ldr r6, _0803AE4C
	adds r3, r5, r6
	adds r7, r0, r3
	movs r5, #0xa0
	lsls r5, r5, #7
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	strh r0, [r7, #2]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r7, r2, r3
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
_0803AE32:
	strh r0, [r7, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AE44: .4byte 0x080DD920
_0803AE48: .4byte 0x080DD925
_0803AE4C: .4byte 0xFFFF3FC0

	THUMB_FUNC_START sub_803AE50
sub_803AE50: @ 0x0803AE50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	ldr r1, _0803AF64
	adds r1, r2, r1
	ldr r0, _0803AF68
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803AF6C
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803AF70
	ldr r1, _0803AF74
	mov sl, r1
	ldr r3, _0803AF78
	adds r0, r0, r3
	ldrh r1, [r1, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AE96
	b _0803B084
_0803AE96:
	mov r3, sl
	ldrb r0, [r3, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803AF8C
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x13
	ldr r4, _0803AF7C
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
	mov r2, ip
	strh r5, [r2]
	strh r5, [r2, #2]
	mov r4, sb
	lsls r3, r4, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _0803AF80
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _0803AF84
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r2, _0803AF88
	adds r1, r1, r2
	b _0803B06A
	.align 2, 0
_0803AF64: .4byte 0x080DD920
_0803AF68: .4byte 0x080DD925
_0803AF6C: .4byte 0x02000400
_0803AF70: .4byte 0x02022EC0
_0803AF74: .4byte gCardInfo
_0803AF78: .4byte 0x00000642
_0803AF7C: .4byte 0xFFED0000
_0803AF80: .4byte 0x000003FF
_0803AF84: .4byte gTypeIconPalettes
_0803AF88: .4byte 0x02000000
_0803AF8C:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _0803B074
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _0803B078
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r5, _0803B07C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803B080
	mov r4, sl
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
_0803B06A:
	movs r2, #0x10
	bl CpuSet
	b _0803B0D4
	.align 2, 0
_0803B074: .4byte 0x000003FF
_0803B078: .4byte gTypeIconPalettes
_0803B07C: .4byte 0x02000000
_0803B080: .4byte gAttributeIconPalettes
_0803B084:
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r2, #0
	mov r3, ip
	strh r0, [r3]
	movs r4, #2
	add ip, r4
	mov r1, ip
	strh r0, [r1]
	add ip, r4
	mov r2, ip
	strh r0, [r2]
	add ip, r4
	mov r3, ip
	strh r0, [r3]
	add ip, r4
	mov r4, ip
	strh r0, [r4]
	movs r1, #2
	add ip, r1
	mov r2, ip
	strh r0, [r2]
	movs r3, #0x36
	add ip, r3
	mov r4, ip
	strh r0, [r4]
	add ip, r1
	mov r1, ip
	strh r0, [r1]
	movs r2, #2
	add ip, r2
	mov r3, ip
	strh r0, [r3]
	add ip, r2
	mov r4, ip
	strh r0, [r4]
	add ip, r2
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
_0803B0D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803B0E4
sub_803B0E4: @ 0x0803B0E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803B1B4
	ldr r1, _0803B1B8
	ldr r2, _0803B1BC
	adds r0, r5, #0
	bl sub_8020A3C
	ldr r0, _0803B1C0
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _0803B1C4
	adds r4, r4, r0
	ldrb r6, [r4]
	lsls r0, r6, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	ldr r1, _0803B1C8
	adds r1, r1, r5
	mov r8, r1
	adds r3, r0, r1
	ldr r0, _0803B1CC
	ldr r5, _0803B1D0
	ldr r1, _0803B1D4
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B1E0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldrh r0, [r5, #0xc]
	movs r1, #0
	bl sub_800DDA0
	lsls r0, r6, #5
	ldr r1, _0803B1D8
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r1, r8
	adds r3, r0, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _0803B1DC
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	b _0803B210
	.align 2, 0
_0803B1B4: .4byte 0x0200C440
_0803B1B8: .4byte 0x080DE4DC
_0803B1BC: .4byte 0x00000801
_0803B1C0: .4byte 0x080DD920
_0803B1C4: .4byte 0x080DD925
_0803B1C8: .4byte 0xFFFF3FC0
_0803B1CC: .4byte 0x02022EC0
_0803B1D0: .4byte gCardInfo
_0803B1D4: .4byte 0x00000642
_0803B1D8: .4byte 0x00007C20
_0803B1DC: .4byte 0x02021BD0
_0803B1E0:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #0x36
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
_0803B210:
	strh r0, [r3, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803B21C
sub_803B21C: @ 0x0803B21C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803B294
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0803B298
	adds r2, r0, r2
	ldr r1, _0803B29C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803B2A0
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _0803B2A4
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803B256:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B256
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B294: .4byte 0x080DD8F8
_0803B298: .4byte 0x080DD920
_0803B29C: .4byte 0x080DD925
_0803B2A0: .4byte 0x02000400
_0803B2A4: .4byte 0x000003FF

	THUMB_FUNC_START sub_803B2A8
sub_803B2A8: @ 0x0803B2A8
	push {r4, r5, r6, lr}
	ldr r1, _0803B308
	ldr r5, _0803B30C
	ldr r3, _0803B310
	ldr r0, _0803B314
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _0803B318
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B308: .4byte 0x02007438
_0803B30C: .4byte 0x080DD942
_0803B310: .4byte 0x02022EC0
_0803B314: .4byte 0x00000FBA
_0803B318: .4byte 0x000003FF

	THUMB_FUNC_START sub_803B31C
sub_803B31C: @ 0x0803B31C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803B42C
	ldr r5, _0803B430
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803B434
	ldr r6, _0803B438
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0803B43C
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _0803B440
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803B444
	adds r6, r6, r2
	adds r0, r6, #0
	bl sub_8057418
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _0803B448
	mov r8, r2
_0803B3A0:
	lsls r3, r5, #3
	ldr r0, _0803B44C
	adds r3, r3, r0
	ldr r0, _0803B450
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803B454
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _0803B458
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803B45C
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _0803B460
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803B464
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _0803B3A0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B42C: .4byte 0x08A3C204
_0803B430: .4byte 0x02011500
_0803B434: .4byte 0x08A3C244
_0803B438: .4byte 0x02000340
_0803B43C: .4byte 0x08A3C264
_0803B440: .4byte 0x08A3C2E4
_0803B444: .4byte 0xFFFFFEC0
_0803B448: .4byte 0xFFFFFE00
_0803B44C: .4byte gOamBuffer
_0803B450: .4byte 0x080DD956
_0803B454: .4byte 0x080DD960
_0803B458: .4byte 0x000001FF
_0803B45C: .4byte 0x080DD96A
_0803B460: .4byte 0x000003FF
_0803B464: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B468
sub_803B468: @ 0x0803B468
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803B494
	ldr r0, _0803B498
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803B4A0
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _0803B49C
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl _divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803B4A2
	.align 2, 0
_0803B494: .4byte 0x02022EC0
_0803B498: .4byte 0x00000FB6
_0803B49C: .4byte 0x00000FB4
_0803B4A0:
	movs r0, #0x18
_0803B4A2:
	ldr r2, _0803B504
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _0803B508
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _0803B50C
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B504: .4byte 0x02018450
_0803B508: .4byte 0xFFFFFE00
_0803B50C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B510
sub_803B510: @ 0x0803B510
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0803B59C
	ldr r0, _0803B5A0
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _0803B5A4
	ldrh r1, [r0, #4]
	ldr r2, _0803B5A8
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B5AC
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803B5B0
	ldrh r0, [r0, #4]
	ldr r1, _0803B5B4
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803B5B8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B59C: .4byte 0x02018428
_0803B5A0: .4byte 0x080DD956
_0803B5A4: .4byte 0x080DD960
_0803B5A8: .4byte 0x000001FF
_0803B5AC: .4byte 0xFFFFFE00
_0803B5B0: .4byte 0x080DD96A
_0803B5B4: .4byte 0x000003FF
_0803B5B8: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B5BC
sub_803B5BC: @ 0x0803B5BC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803B64C
	ldr r2, _0803B650
	ldr r1, _0803B654
	ldr r0, _0803B658
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803B65C
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803B660
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B664
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803B668
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B64C: .4byte 0x02018460
_0803B650: .4byte 0x080DD97C
_0803B654: .4byte 0x02022EC0
_0803B658: .4byte 0x00000FB8
_0803B65C: .4byte 0x080DD980
_0803B660: .4byte 0x000001FF
_0803B664: .4byte 0xFFFFFE00
_0803B668: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B66C
sub_803B66C: @ 0x0803B66C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803B6FC
	ldr r2, _0803B700
	ldr r1, _0803B704
	ldr r0, _0803B708
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803B70C
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803B710
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803B714
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803B718
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803B6FC: .4byte 0x02018460
_0803B700: .4byte 0x080DD9B0
_0803B704: .4byte 0x02022EC0
_0803B708: .4byte 0x00000FB8
_0803B70C: .4byte 0x080DD9C6
_0803B710: .4byte 0x000001FF
_0803B714: .4byte 0xFFFFFE00
_0803B718: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803B71C
sub_803B71C: @ 0x0803B71C
	push {lr}
	bl sub_803A60C
	bl sub_803BE54
	bl sub_8045718
	ldr r0, _0803B770
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803B774
	ldr r2, _0803B778
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803B77C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803BFF8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803B770: .4byte LoadOam
_0803B774: .4byte 0x0400000A
_0803B778: .4byte 0x00001F0D
_0803B77C: .4byte 0x00000E06

	THUMB_FUNC_START sub_803B780
sub_803B780: @ 0x0803B780
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0803B7D8
	ldr r7, _0803B7DC
	ldr r0, _0803B7E0
	adds r6, r5, r0
_0803B78C:
	adds r0, r4, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0803B7E4
	adds r0, r5, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803B7B6
	adds r0, r1, #0
	bl SetCardInfo
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0803B7B6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803B78C
	ldr r0, _0803B7E8
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7D8: .4byte 0x02022EC0
_0803B7DC: .4byte 0x08E0CEA0
_0803B7E0: .4byte 0x00000FB9
_0803B7E4: .4byte 0x00000642
_0803B7E8: .4byte LoadOam

	THUMB_FUNC_START sub_803B7EC
sub_803B7EC: @ 0x0803B7EC
	push {lr}
	bl sub_803BB4C
	bl sub_803B468
	bl sub_803BE54
	bl sub_803B2A8
	ldr r0, _0803B81C
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803B81C: .4byte LoadOam
	.byte 0x70, 0xB5, 0x00, 0x24, 0x1D, 0x4E, 0x1E, 0x4D, 0x20, 0x1C, 0xFB, 0xF7, 0xB5, 0xFF, 0x00, 0x04
	.byte 0x00, 0x0C, 0xCF, 0xF7, 0xD7, 0xFD, 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C
	.byte 0x1F, 0xF0, 0x3C, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0xE5, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0x1C, 0xFA
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xEB, 0xF9, 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C
	.byte 0x1F, 0xF0, 0x2C, 0xF9, 0x20, 0x1C, 0x00, 0xF0, 0x57, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x04, 0x2C, 0xD9, 0xD9, 0x00, 0xF0, 0x98, 0xF9, 0xFF, 0xF7, 0xF6, 0xFD, 0x00, 0xF0, 0xEA, 0xFA
	.byte 0x08, 0x48, 0xCC, 0xF7, 0xAB, 0xFC, 0xCC, 0xF7, 0xCB, 0xFC, 0x09, 0xF0, 0x29, 0xFE, 0x09, 0xF0
	.byte 0xFF, 0xFE, 0x09, 0xF0, 0x25, 0xFF, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xA0, 0xCE, 0xE0, 0x08
	.byte 0x79, 0x3E, 0x02, 0x02, 0xC9, 0x54, 0x04, 0x08, 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D
	.byte 0x20, 0x1C, 0xFB, 0xF7, 0x71, 0xFF, 0x00, 0x04, 0x00, 0x0C, 0xCF, 0xF7, 0x93, 0xFD, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xA8, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0xDF, 0xF9, 0x20, 0x1C, 0xFF, 0xF7, 0xAE, 0xF9
	.byte 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1F, 0xF0, 0xEF, 0xF8, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x1A, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0
	.byte 0x93, 0xF9, 0xFF, 0xF7, 0xB9, 0xFD, 0x00, 0xF0, 0xAD, 0xFA, 0x09, 0x48, 0xCC, 0xF7, 0x6E, 0xFC
	.byte 0xCC, 0xF7, 0x8E, 0xFC, 0x09, 0xF0, 0xEC, 0xFD, 0x09, 0xF0, 0xC2, 0xFE, 0x09, 0xF0, 0xE8, 0xFE
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xA0, 0xCE, 0xE0, 0x08, 0x79, 0x3E, 0x02, 0x02
	.byte 0xC9, 0x54, 0x04, 0x08

	THUMB_FUNC_START sub_803B924
sub_803B924: @ 0x0803B924
	push {lr}
	bl sub_803BEE4
	bl sub_803BF08
	bl sub_803BE54
	ldr r1, _0803B958
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803B95C
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803B960
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803B958: .4byte gBLDY
_0803B95C: .4byte LoadOam
_0803B960: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803B964
sub_803B964: @ 0x0803B964
	push {lr}
	bl sub_803A7B4
	bl sub_803BE9C
	bl sub_803B5BC
	bl sub_803BEC0
	bl sub_803BFB8
	ldr r0, _0803B9AC
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803B9B0
	ldr r2, _0803B9B4
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803B9AC: .4byte LoadOam
_0803B9B0: .4byte 0x04000008
_0803B9B4: .4byte 0x00001708

	THUMB_FUNC_START sub_803B9B8
sub_803B9B8: @ 0x0803B9B8
	push {lr}
	bl sub_803B5BC
	bl sub_803BEC0
	ldr r0, _0803B9D0
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0803B9D0: .4byte LoadOam

	THUMB_FUNC_START sub_803B9D4
sub_803B9D4: @ 0x0803B9D4
	push {lr}
	bl sub_803A60C
	bl sub_803A7B4
	bl sub_803B5BC
	bl sub_803BEC0
	bl sub_803BFB8
	bl sub_8045718
	ldr r0, _0803BA3C
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803BA40
	ldr r2, _0803BA44
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA48
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803BA4C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803BFF8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803BA3C: .4byte LoadOam
_0803BA40: .4byte 0x04000008
_0803BA44: .4byte 0x00001708
_0803BA48: .4byte 0x00001F0D
_0803BA4C: .4byte 0x00000E06

	THUMB_FUNC_START sub_803BA50
sub_803BA50: @ 0x0803BA50
	push {lr}
	bl sub_803BAD8
	bl sub_803BE9C
	bl sub_803BE78
	bl sub_803B66C
	bl sub_803BF2C
	bl sub_803BFD8
	ldr r0, _0803BAA4
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803BAA8
	ldr r2, _0803BAAC
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803BAB0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803BAA4: .4byte LoadOam
_0803BAA8: .4byte 0x04000008
_0803BAAC: .4byte 0x00001708
_0803BAB0: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_803BAB4
sub_803BAB4: @ 0x0803BAB4
	push {lr}
	bl sub_803B2A8
	bl sub_803B66C
	bl sub_803BF2C
	ldr r0, _0803BAD4
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_0803BAD4: .4byte LoadOam

	THUMB_FUNC_START sub_803BAD8
sub_803BAD8: @ 0x0803BAD8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803BB30
	ldr r2, _0803BB34
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803BB38
	ldr r5, _0803BB3C
	adds r2, r5, #0
	bl sub_8020A3C
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803BB40
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r4, #0
	movs r5, #0
_0803BB10:
	ldr r0, _0803BB44
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803BB48
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803BB10
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB30: .4byte 0x02008400
_0803BB34: .4byte 0x01000010
_0803BB38: .4byte 0x080DE194
_0803BB3C: .4byte 0x00000901
_0803BB40: .4byte 0x080DE400
_0803BB44: .4byte 0x08A323D4
_0803BB48: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803BB4C
sub_803BB4C: @ 0x0803BB4C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803BBA0
	ldr r5, _0803BBA4
_0803BB54:
	adds r0, r4, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_803AA14
	adds r0, r4, #0
	bl sub_803AAB0
	adds r0, r4, #0
	bl sub_803BC88
	adds r0, r4, #0
	bl sub_803AC2C
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803BD18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803BB54
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BBA0: .4byte 0x08E0CEA0
_0803BBA4: .4byte 0x02023E79

	THUMB_FUNC_START sub_803BBA8
sub_803BBA8: @ 0x0803BBA8
	push {r4, r5, r6, lr}
	ldr r0, _0803BC0C
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803BC10
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803BC14
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803AAB0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC0C: .4byte 0x080DD8F8
_0803BC10: .4byte 0x0200C400
_0803BC14: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803BC18
sub_803BC18: @ 0x0803BC18
	push {r4, r5, r6, lr}
	ldr r0, _0803BC7C
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803BC80
	adds r4, r4, r0
	ldr r0, _0803BC84
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803BC84
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_8037798
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803AAB0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC7C: .4byte 0x080DD8F8
_0803BC80: .4byte 0x0200C400
_0803BC84: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803BC88
sub_803BC88: @ 0x0803BC88
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803BCFC
	adds r2, r0, r2
	ldr r1, _0803BD00
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803BD04
	adds r1, r0, r1
	movs r2, #0
	ldr r0, _0803BD08
	ldr r3, _0803BD0C
	ldr r4, _0803BD10
	adds r0, r0, r4
	ldrh r4, [r3, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BCDC
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	bhs _0803BCDC
	ldr r0, _0803BD14
	adds r4, r0, #0
_0803BCC8:
	strh r4, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bhi _0803BCF4
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	blo _0803BCC8
_0803BCDC:
	cmp r2, #0xb
	bhi _0803BCF4
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r3, r4, #0
_0803BCE6:
	strh r3, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0803BCE6
_0803BCF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BCFC: .4byte 0x080DD902
_0803BD00: .4byte 0x080DD907
_0803BD04: .4byte 0x02000400
_0803BD08: .4byte 0x02022EC0
_0803BD0C: .4byte gCardInfo
_0803BD10: .4byte 0x00000642
_0803BD14: .4byte 0x00005001

	THUMB_FUNC_START sub_803BD18
sub_803BD18: @ 0x0803BD18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	ldr r1, _0803BD48
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803BD4C
	adds r6, r0, r1
	ldr r0, _0803BD50
	ldr r1, _0803BD54
	ldrh r1, [r1, #0x10]
	ldr r2, _0803BD58
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r7, [r0]
	cmp r7, #0
	beq _0803BD5C
	adds r0, r6, #0
	bl sub_80573D0
	b _0803BD9C
	.align 2, 0
_0803BD48: .4byte 0x080DD96A
_0803BD4C: .4byte 0x02010400
_0803BD50: .4byte 0x02022EC0
_0803BD54: .4byte gCardInfo
_0803BD58: .4byte 0x00000642
_0803BD5C:
	mov r0, sp
	strh r7, [r0]
	ldr r5, _0803BDA4
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #3
	adds r6, r6, r4
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	add r0, sp, #4
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	mov r0, sp
	adds r0, #6
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0803BD9C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDA4: .4byte 0x01000080

	THUMB_FUNC_START sub_803BDA8
sub_803BDA8: @ 0x0803BDA8
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803BDF0
	ldr r2, _0803BDF4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803BDF8
	ldr r2, _0803BDFC
	bl sub_8020A3C
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803BE00
	adds r1, r4, #0
	bl CpuSet
	bl sub_803B2A8
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDF0: .4byte 0x02004400
_0803BDF4: .4byte 0x01000010
_0803BDF8: .4byte 0x080DE50C
_0803BDFC: .4byte 0x00000901
_0803BE00: .4byte 0x01000400

	THUMB_FUNC_START sub_803BE04
sub_803BE04: @ 0x0803BE04
	push {r4, r5, lr}
	ldr r0, _0803BE3C
	ldr r1, _0803BE40
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803BE12:
	ldr r0, _0803BE44
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803BE48
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803BE12
	ldr r0, _0803BE4C
	ldr r1, _0803BE50
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE3C: .4byte 0x08A396EC
_0803BE40: .4byte 0x02000400
_0803BE44: .4byte 0x08A3BCD4
_0803BE48: .4byte 0x02007C00
_0803BE4C: .4byte 0x08A3C184
_0803BE50: .4byte 0x02000000

	THUMB_FUNC_START sub_803BE54
sub_803BE54: @ 0x0803BE54
	ldr r2, _0803BE74
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BE74: .4byte 0x02018450

	THUMB_FUNC_START sub_803BE78
sub_803BE78: @ 0x0803BE78
	ldr r0, _0803BE98
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BE98: .4byte 0x02018428

	THUMB_FUNC_START sub_803BE9C
sub_803BE9C: @ 0x0803BE9C
	ldr r0, _0803BEBC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BEBC: .4byte 0x02018458

	THUMB_FUNC_START sub_803BEC0
sub_803BEC0: @ 0x0803BEC0
	ldr r2, _0803BEE0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BEE0: .4byte 0x02018460

	THUMB_FUNC_START sub_803BEE4
sub_803BEE4: @ 0x0803BEE4
	ldr r0, _0803BF04
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BF04: .4byte 0x02018460

	THUMB_FUNC_START sub_803BF08
sub_803BF08: @ 0x0803BF08
	ldr r0, _0803BF28
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803BF28: .4byte 0x02018468

	THUMB_FUNC_START sub_803BF2C
sub_803BF2C: @ 0x0803BF2C
	ldr r2, _0803BF4C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803BF4C: .4byte 0x02018460
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803BF98
sub_803BF98: @ 0x0803BF98
	ldr r1, _0803BFAC
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803BFB0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFB4
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFAC: .4byte gBLDCNT
_0803BFB0: .4byte gBLDALPHA
_0803BFB4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFB8
sub_803BFB8: @ 0x0803BFB8
	ldr r1, _0803BFCC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803BFD0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFD4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFCC: .4byte gBLDCNT
_0803BFD0: .4byte gBLDALPHA
_0803BFD4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFD8
sub_803BFD8: @ 0x0803BFD8
	ldr r1, _0803BFEC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803BFF0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803BFF4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803BFEC: .4byte gBLDCNT
_0803BFF0: .4byte gBLDALPHA
_0803BFF4: .4byte gBLDY

	THUMB_FUNC_START sub_803BFF8
sub_803BFF8: @ 0x0803BFF8
	ldr r1, _0803C028
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803C02C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803C030
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803C034
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803C038
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803C028: .4byte 0x04000040
_0803C02C: .4byte 0x000004D4
_0803C030: .4byte 0x0000486F
_0803C034: .4byte 0x00001E0E
_0803C038: .4byte 0x0000183F

	THUMB_FUNC_START sub_803C03C
sub_803C03C: @ 0x0803C03C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803C100
	movs r3, #0
	ldr r5, _0803C104
	ldr r6, _0803C108
	ldr r1, _0803C10C
	mov ip, r1
	ldr r2, _0803C110
	mov r8, r2
	ldr r7, _0803C114
	mov sb, r7
	ldr r1, _0803C118
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r4, r7, #0
_0803C06C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0803C06C
	movs r0, #0
	strh r0, [r5]
	strh r0, [r6]
	ldr r1, _0803C11C
	strh r0, [r1]
	mov r2, ip
	strh r0, [r2]
	ldr r7, _0803C120
	adds r1, r7, #0
	mov r2, r8
	strh r1, [r2]
	movs r1, #4
	mov r7, sb
	strh r1, [r7]
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0803C124
	strh r0, [r2]
	bl sub_803C308
	bl sub_803D888
	bl sub_803D8E4
	bl sub_803CDAC
	bl sub_803CFA0
	bl sub_803CEF8
	bl sub_803DA78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C100: .4byte gOamBuffer
_0803C104: .4byte gBG0VOFS
_0803C108: .4byte gBG0HOFS
_0803C10C: .4byte gBG1HOFS
_0803C110: .4byte gBG2VOFS
_0803C114: .4byte gBG2HOFS
_0803C118: .4byte gBG3VOFS
_0803C11C: .4byte gBG1VOFS
_0803C120: .4byte 0x000001FD
_0803C124: .4byte gBG3HOFS

	THUMB_FUNC_START sub_803C128
sub_803C128: @ 0x0803C128
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _0803C1D0
	ldr r6, _0803C1D4
_0803C130:
	adds r0, r5, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_803C4A4
	adds r0, r4, #0
	bl sub_803C540
	adds r0, r4, #0
	bl sub_803D768
	adds r0, r4, #0
	bl sub_803C6BC
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803D7F8
	adds r5, #1
	cmp r5, #4
	bls _0803C130
	bl sub_803D9C4
	bl sub_803D9E8
	bl sub_803CEF8
	bl sub_803D934
	bl sub_803CFA0
	bl sub_803CD38
	ldr r1, _0803C1D8
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803C1DC
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	bl LoadCharblock4
	bl LoadCharblock1
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803C1E0
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C1D0: .4byte 0x08E0CEB0
_0803C1D4: .4byte 0x02023E71
_0803C1D8: .4byte gBLDY
_0803C1DC: .4byte LoadOam
_0803C1E0: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803C1E4
sub_803C1E4: @ 0x0803C1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803C2EC
	ldr r2, _0803C2F0
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r4, #0x20
	ldr r1, _0803C2F4
	ldr r2, _0803C2F8
	adds r0, r4, #0
	bl sub_8020A3C
	movs r6, #0
	movs r4, #0
_0803C210:
	ldr r0, _0803C2FC
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r2, _0803C300
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803C210
	movs r4, #0xb8
	lsls r4, r4, #8
	movs r0, #4
	movs r1, #3
	adds r2, r4, #0
	bl sub_08007FEC
	movs r1, #0xff
	lsls r1, r1, #8
	mov r8, r1
	ands r1, r0
	mov r8, r1
	movs r6, #0
	adds r7, r4, #0
_0803C244:
	adds r4, r6, #4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803C304
	adds r5, r6, r5
	ldrb r3, [r5]
	adds r3, #0x15
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #5
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x17
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #6
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3d
	mov r0, r8
	orrs r3, r0
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r7, #0
	bl sub_800800C
	ldrb r3, [r5]
	adds r3, #0x3f
	mov r1, r8
	orrs r3, r1
	adds r0, r4, #0
	movs r1, #0x10
	adds r2, r7, #0
	bl sub_800800C
	adds r6, #1
	cmp r6, #9
	bls _0803C244
	movs r6, #0
	movs r0, #0xb8
	lsls r0, r0, #8
	mov sb, r0
	movs r7, #0x80
	lsls r7, r7, #0x15
_0803C2A8:
	lsrs r5, r7, #0x18
	ldr r4, _0803C304
	adds r4, r6, r4
	ldrb r3, [r4]
	adds r3, #0x51
	mov r1, r8
	orrs r3, r1
	adds r0, r5, #0
	movs r1, #5
	mov r2, sb
	bl sub_800800C
	ldrb r3, [r4]
	adds r3, #0x53
	mov r0, r8
	orrs r3, r0
	adds r0, r5, #0
	movs r1, #6
	mov r2, sb
	bl sub_800800C
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r7, r7, r1
	adds r6, #1
	cmp r6, #0xd
	bls _0803C2A8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C2EC: .4byte 0x02008400
_0803C2F0: .4byte 0x01000010
_0803C2F4: .4byte 0x080DE594
_0803C2F8: .4byte 0x00000901
_0803C2FC: .4byte 0x08A3581C
_0803C300: .4byte 0x0200BC00
_0803C304: .4byte gUnk_8DF811C

	THUMB_FUNC_START sub_803C308
sub_803C308: @ 0x0803C308
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803C45C
	ldr r2, _0803C460
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	bl CopyStarTileToBuffer
	adds r0, r4, #0
	adds r0, #0x40
	bl CopySwordTileToBuffer
	adds r0, r4, #0
	adds r0, #0x60
	bl CopyShieldTileToBuffer
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, _0803C464
	ldr r2, _0803C468
	bl sub_8020A3C
	movs r5, #0
	mov r7, sp
	adds r7, #2
	ldr r4, _0803C46C
_0803C34A:
	ldr r1, _0803C470
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803C474
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _0803C34A
	movs r5, #0
	ldr r4, _0803C478
_0803C374:
	ldr r1, _0803C470
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #7
	ldr r2, _0803C47C
	adds r1, r1, r2
	movs r2, #0x40
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x14
	bls _0803C374
	movs r5, #0
	ldr r4, _0803C478
_0803C39E:
	ldr r2, _0803C470
	adds r1, r5, #0
	adds r1, #0x15
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r1, r5, #8
	ldr r6, _0803C480
	adds r1, r1, r6
	movs r2, #0x80
	bl CpuSet
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0803C39E
	ldr r0, _0803C484
	bl sub_8008BF8
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r7]
	ldr r2, _0803C488
	adds r1, r6, r2
	ldr r2, _0803C48C
	adds r0, r7, #0
	bl CpuSet
	movs r5, #0
	ldr r7, _0803C490
	adds r6, r4, #0
	ldr r0, _0803C494
	mov ip, r0
_0803C3EC:
	lsls r0, r5, #1
	add r0, ip
	ldrh r3, [r0]
	ldr r1, _0803C498
	adds r1, r5, r1
	ldr r0, _0803C49C
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r0, r0, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C4A0
	adds r2, r0, r1
	movs r4, #0
	adds r5, #1
_0803C412:
	adds r0, r3, #0
	ands r0, r7
	orrs r0, r6
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r7
	orrs r0, r6
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r7
	orrs r0, r6
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r7
	orrs r0, r6
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _0803C412
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0803C3EC
	bl sub_803D62C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C45C: .4byte 0x0200C400
_0803C460: .4byte 0x01000010
_0803C464: .4byte 0x080DEA54
_0803C468: .4byte 0x00001801
_0803C46C: .4byte gAttributeIconTiles
_0803C470: .4byte gLanguage
_0803C474: .4byte 0x0200C620
_0803C478: .4byte gTypeIconTiles
_0803C47C: .4byte 0x0200CC20
_0803C480: .4byte 0x0200D6A0
_0803C484: .4byte 0x020000A0
_0803C488: .4byte 0x00002560
_0803C48C: .4byte 0x01000400
_0803C490: .4byte 0x000003FF
_0803C494: .4byte 0x080DD7E0
_0803C498: .4byte 0x080DD7D6
_0803C49C: .4byte 0x080DD7DB
_0803C4A0: .4byte 0x02000400

	THUMB_FUNC_START sub_803C4A4
sub_803C4A4: @ 0x0803C4A4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803C50C
	adds r2, r0, r2
	ldr r1, _0803C510
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803C514
	adds r4, r0, r1
	ldr r0, _0803C518
	ldr r1, _0803C51C
	ldrh r1, [r1, #0x10]
	ldr r2, _0803C520
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C528
	adds r0, r1, #0
	movs r1, #1
	bl sub_800DDA0
	ldr r2, _0803C524
	ldrb r0, [r2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	b _0803C538
	.align 2, 0
_0803C50C: .4byte 0x080DD7CC
_0803C510: .4byte 0x080DD7D1
_0803C514: .4byte 0x02000400
_0803C518: .4byte 0x02022EC0
_0803C51C: .4byte gCardInfo
_0803C520: .4byte 0x00000321
_0803C524: .4byte 0x02021BD0
_0803C528:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803C538:
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803C540
sub_803C540: @ 0x0803C540
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #0
	movs r6, #0
	ldr r4, _0803C60C
	ldr r0, [r4]
	bl sub_8020824
	adds r2, r0, #0
	ldr r0, _0803C610
	ldr r1, _0803C614
	adds r0, r0, r1
	ldrh r4, [r4, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803C5C0
	ldr r7, _0803C618
	mov ip, r7
	mov r1, r8
	lsls r3, r1, #1
	ldr r4, _0803C61C
	cmp r0, #0x24
	beq _0803C5C0
_0803C580:
	adds r0, r2, r5
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0803C59A
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0803C59A:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bhi _0803C5E6
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C5C0
	cmp r0, #0x24
	bne _0803C580
_0803C5C0:
	ldr r1, _0803C618
	mov ip, r1
	mov r2, r8
	lsls r3, r2, #1
	ldr r4, _0803C61C
	cmp r6, #0x13
	bhi _0803C5E6
	movs r1, #0x20
_0803C5D0:
	mov r7, sp
	adds r0, r7, r5
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x13
	bls _0803C5D0
_0803C5E6:
	mov r0, sp
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
	mov r1, ip
	adds r0, r3, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r2, _0803C620
	mov r1, sp
	bl sub_8020A3C
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C60C: .4byte gCardInfo
_0803C610: .4byte 0x02022EC0
_0803C614: .4byte 0x00000321
_0803C618: .4byte 0x080DD7E0
_0803C61C: .4byte 0x0200C400
_0803C620: .4byte 0x00000901
	.byte 0x30, 0xB5, 0x00, 0x06, 0x02, 0x0E, 0x18, 0x49, 0x51, 0x18, 0x18, 0x48
	.byte 0x10, 0x18, 0x00, 0x78, 0x40, 0x01, 0xF8, 0x23, 0xDB, 0x01, 0xC0, 0x18, 0x09, 0x78, 0x40, 0x18
	.byte 0x40, 0x00, 0x14, 0x49, 0x44, 0x18, 0x14, 0x4D, 0x14, 0x49, 0x15, 0x4B, 0xE8, 0x18, 0x09, 0x8A
	.byte 0x40, 0x18, 0x00, 0x78, 0x00, 0x28, 0x27, 0xD0, 0x10, 0x1C, 0xFB, 0xF7, 0xC3, 0xFE, 0x40, 0x19
	.byte 0x00, 0x78, 0x01, 0x21, 0xD1, 0xF7, 0x9C, 0xFB, 0x0E, 0x4A, 0x10, 0x78, 0x07, 0x30, 0xA0, 0x23
	.byte 0xDB, 0x01, 0x19, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x50, 0x78, 0x07, 0x30, 0x08, 0x43
	.byte 0x20, 0x80, 0x90, 0x78, 0x07, 0x30, 0x08, 0x43, 0x14, 0xE0, 0x00, 0x00, 0xF4, 0xD7, 0x0D, 0x08
	.byte 0xF9, 0xD7, 0x0D, 0x08, 0x00, 0x04, 0x00, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xD0, 0x1A, 0x02, 0x02
	.byte 0x21, 0x03, 0x00, 0x00, 0xD0, 0x1B, 0x02, 0x02, 0xA0, 0x21, 0xC9, 0x01, 0x08, 0x1C, 0x20, 0x80
	.byte 0x02, 0x34, 0x20, 0x80, 0x60, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	THUMB_FUNC_START sub_803C6BC
sub_803C6BC: @ 0x0803C6BC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0803C724
	adds r1, r2, r1
	ldr r0, _0803C728
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C72C
	adds r4, r0, r1
	ldr r1, _0803C730
	ldr r0, _0803C734
	ldrh r0, [r0, #0x10]
	ldr r3, _0803C738
	adds r5, r1, r3
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C740
	adds r0, r2, #0
	bl sub_80383E4
	adds r0, r0, r5
	ldrb r0, [r0]
	movs r1, #0
	bl sub_800DDA0
	ldr r2, _0803C73C
	ldrb r0, [r2, #2]
	adds r0, #7
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	adds r4, #2
	ldrb r0, [r2, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r2, #4]
	adds r0, #7
	orrs r0, r1
	b _0803C74C
	.align 2, 0
_0803C724: .4byte 0x080DD7FE
_0803C728: .4byte 0x080DD803
_0803C72C: .4byte 0x02000400
_0803C730: .4byte 0x02022EC0
_0803C734: .4byte gCardInfo
_0803C738: .4byte 0x00000321
_0803C73C: .4byte 0x02021BD0
_0803C740:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
_0803C74C:
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803C754
sub_803C754: @ 0x0803C754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r5, _0803C844
	adds r0, r5, #0
	bl CopySwordTileToBuffer
	adds r0, r5, #0
	adds r0, #0x20
	bl CopyShieldTileToBuffer
	ldr r0, _0803C848
	ldr r1, _0803C84C
	mov sl, r1
	ldr r2, _0803C850
	adds r0, r0, r2
	ldrh r6, [r1, #0x10]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C86C
	ldrh r0, [r1, #0x12]
	movs r1, #0
	bl sub_800DDA0
	ldr r0, _0803C854
	adds r0, r4, r0
	ldrb r6, [r0]
	ldr r0, _0803C858
	adds r0, r4, r0
	ldrb r4, [r0]
	lsls r0, r4, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	mov sb, r1
	add r0, sb
	adds r0, r6, r0
	lsls r0, r0, #1
	ldr r2, _0803C85C
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, r2
	ldr r5, _0803C860
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	ldr r5, _0803C864
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7, #2]
	mov r1, sl
	ldrh r0, [r1, #0x14]
	movs r1, #0
	bl sub_800DDA0
	adds r4, #1
	lsls r4, r4, #5
	add r4, sb
	adds r6, r6, r4
	lsls r6, r6, #1
	mov r2, r8
	adds r7, r6, r2
	ldr r6, _0803C868
	adds r0, r6, #0
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5]
	adds r0, #7
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #1]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #2]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	adds r7, #2
	ldrb r0, [r5, #3]
	adds r0, #7
	orrs r0, r1
	strh r0, [r7]
	ldrb r0, [r5, #4]
	adds r0, #7
	orrs r0, r1
	b _0803C8C2
	.align 2, 0
_0803C844: .4byte 0x0200C440
_0803C848: .4byte 0x02022EC0
_0803C84C: .4byte gCardInfo
_0803C850: .4byte 0x00000321
_0803C854: .4byte 0x080DD808
_0803C858: .4byte 0x080DD80D
_0803C85C: .4byte 0xFFFF3FC0
_0803C860: .4byte 0x00005002
_0803C864: .4byte 0x02021BD0
_0803C868: .4byte 0x00005003
_0803C86C:
	ldr r0, _0803C8D4
	adds r0, r4, r0
	ldrb r2, [r0]
	ldr r0, _0803C8D8
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	movs r4, #0xf8
	lsls r4, r4, #7
	adds r0, r0, r4
	adds r0, r2, r0
	lsls r0, r0, #1
	ldr r6, _0803C8DC
	adds r3, r5, r6
	adds r7, r0, r3
	movs r5, #0xa0
	lsls r5, r5, #7
	adds r0, r5, #0
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	strh r0, [r7, #2]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r4
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r7, r2, r3
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
	adds r7, #2
	strh r0, [r7]
_0803C8C2:
	strh r0, [r7, #2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C8D4: .4byte 0x080DD808
_0803C8D8: .4byte 0x080DD80D
_0803C8DC: .4byte 0xFFFF3FC0

	THUMB_FUNC_START sub_803C8E0
sub_803C8E0: @ 0x0803C8E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r4, r2, #0
	ldr r1, _0803C9F4
	adds r1, r2, r1
	ldr r0, _0803C9F8
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r0, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0803C9FC
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0803CA00
	ldr r1, _0803CA04
	mov sl, r1
	ldr r3, _0803CA08
	adds r0, r0, r3
	ldrh r1, [r1, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C926
	b _0803CB14
_0803C926:
	mov r3, sl
	ldrb r0, [r3, #0x16]
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0803CA1C
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x13
	ldr r4, _0803CA0C
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	adds r0, r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
	mov r2, ip
	strh r5, [r2]
	strh r5, [r2, #2]
	mov r4, sb
	lsls r3, r4, #0xc
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ldr r4, _0803CA10
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #6]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	mov r0, ip
	strh r1, [r0, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	mov r0, ip
	strh r2, [r0, #0xa]
	adds r0, #0x40
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	mov r5, ip
	adds r5, #0x44
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	ands r1, r4
	orrs r1, r3
	strh r1, [r5]
	adds r5, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r7, #0
	ands r2, r4
	orrs r2, r3
	strh r2, [r5]
	mov r2, ip
	adds r2, #0x48
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ands r1, r4
	orrs r1, r3
	strh r1, [r2]
	mov r0, ip
	adds r0, #0x4a
	ands r7, r4
	orrs r3, r7
	strh r3, [r0]
	ldr r1, _0803CA14
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r2, _0803CA18
	adds r1, r1, r2
	b _0803CAFA
	.align 2, 0
_0803C9F4: .4byte 0x080DD808
_0803C9F8: .4byte 0x080DD80D
_0803C9FC: .4byte 0x02000400
_0803CA00: .4byte 0x02022EC0
_0803CA04: .4byte gCardInfo
_0803CA08: .4byte 0x00000321
_0803CA0C: .4byte 0xFFED0000
_0803CA10: .4byte 0x000003FF
_0803CA14: .4byte gTypeIconPalettes
_0803CA18: .4byte 0x02000000
_0803CA1C:
	mov r1, sl
	ldrb r0, [r1, #0x16]
	lsls r0, r0, #0x12
	movs r2, #0x82
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	adds r3, r7, #0
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r1, [r1, #0x17]
	lsls r1, r1, #0x12
	movs r0, #0x88
	lsls r0, r0, #0xd
	adds r1, r1, r0
	adds r4, #0xb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r2, #0xa0
	lsls r2, r2, #7
	mov r8, r2
	mov r4, ip
	strh r2, [r4]
	strh r2, [r4, #2]
	mov r0, sb
	lsls r6, r0, #0xc
	adds r7, #1
	adds r0, r7, #0
	ldr r2, _0803CB04
	ands r3, r2
	orrs r3, r6
	strh r3, [r4, #4]
	adds r7, #1
	adds r3, r7, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r4, #6]
	ldr r4, [sp]
	lsls r5, r4, #0xc
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #8]
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	ands r0, r2
	orrs r0, r5
	mov r4, ip
	strh r0, [r4, #0xa]
	adds r4, #0x40
	mov r0, r8
	strh r0, [r4]
	adds r4, #2
	strh r0, [r4]
	mov r0, ip
	adds r0, #0x44
	adds r7, #1
	ands r3, r2
	orrs r3, r6
	strh r3, [r0]
	adds r0, #2
	ands r7, r2
	orrs r6, r7
	strh r6, [r0]
	mov r3, ip
	adds r3, #0x48
	lsrs r0, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	lsrs r1, r1, #0x10
	ands r0, r2
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x4a
	ands r1, r2
	orrs r5, r1
	strh r5, [r0]
	ldr r1, _0803CB08
	mov r2, sl
	ldrb r0, [r2, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #5
	ldr r5, _0803CB0C
	adds r1, r1, r5
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803CB10
	mov r4, sl
	ldrb r0, [r4, #0x17]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [sp]
	lsls r4, r1, #5
	adds r4, r4, r5
	adds r1, r4, #0
_0803CAFA:
	movs r2, #0x10
	bl CpuSet
	b _0803CB64
	.align 2, 0
_0803CB04: .4byte 0x000003FF
_0803CB08: .4byte gTypeIconPalettes
_0803CB0C: .4byte 0x02000000
_0803CB10: .4byte gAttributeIconPalettes
_0803CB14:
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r0, r2, #0
	mov r3, ip
	strh r0, [r3]
	movs r4, #2
	add ip, r4
	mov r1, ip
	strh r0, [r1]
	add ip, r4
	mov r2, ip
	strh r0, [r2]
	add ip, r4
	mov r3, ip
	strh r0, [r3]
	add ip, r4
	mov r4, ip
	strh r0, [r4]
	movs r1, #2
	add ip, r1
	mov r2, ip
	strh r0, [r2]
	movs r3, #0x36
	add ip, r3
	mov r4, ip
	strh r0, [r4]
	add ip, r1
	mov r1, ip
	strh r0, [r1]
	movs r2, #2
	add ip, r2
	mov r3, ip
	strh r0, [r3]
	add ip, r2
	mov r4, ip
	strh r0, [r4]
	add ip, r2
	mov r1, ip
	strh r0, [r1]
	strh r0, [r1, #2]
_0803CB64:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803CB74
sub_803CB74: @ 0x0803CB74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _0803CC44
	ldr r1, _0803CC48
	ldr r2, _0803CC4C
	adds r0, r5, #0
	bl sub_8020A3C
	ldr r0, _0803CC50
	adds r0, r4, r0
	ldrb r7, [r0]
	ldr r0, _0803CC54
	adds r4, r4, r0
	ldrb r6, [r4]
	lsls r0, r6, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	ldr r1, _0803CC58
	adds r1, r1, r5
	mov r8, r1
	adds r3, r0, r1
	ldr r0, _0803CC5C
	ldr r5, _0803CC60
	ldr r1, _0803CC64
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803CC70
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
	strh r4, [r3]
	adds r3, #2
	movs r2, #3
	movs r0, #2
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	movs r1, #4
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	movs r2, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	movs r1, #6
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3]
	strh r4, [r3, #2]
	ldrh r0, [r5, #0xc]
	movs r1, #0
	bl sub_800DDA0
	lsls r0, r6, #5
	ldr r1, _0803CC68
	adds r0, r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r1, r8
	adds r3, r0, r1
	strh r4, [r3]
	adds r3, #2
	ldr r1, _0803CC6C
	ldrb r0, [r1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #1]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #2]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	ldrb r0, [r1, #3]
	adds r0, #7
	orrs r0, r4
	strh r0, [r3]
	ldrb r0, [r1, #4]
	adds r0, #7
	orrs r0, r4
	b _0803CCA0
	.align 2, 0
_0803CC44: .4byte 0x0200C440
_0803CC48: .4byte 0x080DEA6C
_0803CC4C: .4byte 0x00000801
_0803CC50: .4byte 0x080DD808
_0803CC54: .4byte 0x080DD80D
_0803CC58: .4byte 0xFFFF3FC0
_0803CC5C: .4byte 0x02022EC0
_0803CC60: .4byte gCardInfo
_0803CC64: .4byte 0x00000321
_0803CC68: .4byte 0x00007C20
_0803CC6C: .4byte 0x02021BD0
_0803CC70:
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #0x36
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
_0803CCA0:
	strh r0, [r3, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803CCAC
sub_803CCAC: @ 0x0803CCAC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803CD24
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _0803CD28
	adds r2, r0, r2
	ldr r1, _0803CD2C
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803CD30
	adds r2, r0, r1
	movs r6, #0
	ldr r5, _0803CD34
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r4, r0, #0
_0803CCE6:
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r4
	strh r0, [r2]
	adds r0, r3, #1
	ands r0, r5
	orrs r0, r4
	strh r0, [r2, #2]
	adds r0, r3, #2
	ands r0, r5
	orrs r0, r4
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r0, r3, #3
	ands r0, r5
	orrs r0, r4
	strh r0, [r1, #2]
	adds r0, r3, #4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803CCE6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD24: .4byte 0x080DD7E0
_0803CD28: .4byte 0x080DD808
_0803CD2C: .4byte 0x080DD80D
_0803CD30: .4byte 0x02000400
_0803CD34: .4byte 0x000003FF

	THUMB_FUNC_START sub_803CD38
sub_803CD38: @ 0x0803CD38
	push {r4, r5, r6, lr}
	ldr r1, _0803CD98
	ldr r5, _0803CD9C
	ldr r3, _0803CDA0
	ldr r0, _0803CDA4
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r2, [r0]
	ldr r4, _0803CDA8
	adds r0, r4, #0
	ands r0, r2
	movs r6, #0xa0
	lsls r6, r6, #7
	adds r2, r6, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #1
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x3e
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #2
	ands r0, r4
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r0, #3
	ands r0, r4
	orrs r0, r2
	strh r0, [r1, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CD98: .4byte 0x02007438
_0803CD9C: .4byte 0x080DD82A
_0803CDA0: .4byte 0x02022EC0
_0803CDA4: .4byte 0x00000FB2
_0803CDA8: .4byte 0x000003FF

	THUMB_FUNC_START sub_803CDAC
sub_803CDAC: @ 0x0803CDAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803CEBC
	ldr r5, _0803CEC0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl CpuSet
	adds r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r0, _0803CEC4
	ldr r6, _0803CEC8
	adds r1, r6, #0
	movs r2, #0x10
	bl CpuSet
	ldr r4, _0803CECC
	adds r1, r5, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuSet
	adds r4, #0x40
	movs r1, #0x84
	lsls r1, r1, #3
	adds r5, r5, r1
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl CpuSet
	ldr r0, _0803CED0
	adds r1, r6, #0
	adds r1, #0x20
	movs r2, #0x10
	bl CpuSet
	ldr r2, _0803CED4
	adds r6, r6, r2
	adds r0, r6, #0
	bl sub_8057418
	movs r5, #0
	mov sb, r5
	movs r0, #4
	rsbs r0, r0, #0
	mov sl, r0
	movs r7, #0x11
	rsbs r7, r7, #0
	movs r6, #0x3f
	movs r1, #0xd
	rsbs r1, r1, #0
	mov ip, r1
	ldr r2, _0803CED8
	mov r8, r2
_0803CE30:
	lsls r3, r5, #3
	ldr r0, _0803CEDC
	adds r3, r3, r0
	ldr r0, _0803CEE0
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r0, [r0]
	strb r0, [r3]
	ldrb r1, [r3, #1]
	mov r0, sl
	ands r0, r1
	mov r1, ip
	ands r0, r1
	ands r0, r7
	movs r1, #0x20
	orrs r0, r1
	ands r0, r6
	strb r0, [r3, #1]
	ldr r0, _0803CEE4
	adds r0, r4, r0
	ldrh r1, [r0]
	ldr r2, _0803CEE8
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r7
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803CEEC
	adds r4, r4, r0
	ldrh r0, [r4]
	ldr r1, _0803CEF0
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803CEF4
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xc
	orrs r1, r0
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3, #5]
	mov r0, sb
	strh r0, [r3, #6]
	adds r5, #1
	cmp r5, #4
	bls _0803CE30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEBC: .4byte 0x08A38C8C
_0803CEC0: .4byte 0x02011500
_0803CEC4: .4byte 0x08A38CCC
_0803CEC8: .4byte 0x02000340
_0803CECC: .4byte 0x08A38CEC
_0803CED0: .4byte 0x08A38D6C
_0803CED4: .4byte 0xFFFFFEC0
_0803CED8: .4byte 0xFFFFFE00
_0803CEDC: .4byte gOamBuffer
_0803CEE0: .4byte 0x080DD83E
_0803CEE4: .4byte 0x080DD848
_0803CEE8: .4byte 0x000001FF
_0803CEEC: .4byte 0x080DD852
_0803CEF0: .4byte 0x000003FF
_0803CEF4: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803CEF8
sub_803CEF8: @ 0x0803CEF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803CF24
	ldr r0, _0803CF28
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803CF30
	adds r1, r0, #0
	movs r0, #0x76
	muls r0, r1, r0
	ldr r3, _0803CF2C
	adds r1, r2, r3
	ldrh r1, [r1]
	subs r1, #1
	bl _divsi3
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0803CF32
	.align 2, 0
_0803CF24: .4byte 0x02022EC0
_0803CF28: .4byte 0x00000FAE
_0803CF2C: .4byte 0x00000FAC
_0803CF30:
	movs r0, #0x18
_0803CF32:
	ldr r2, _0803CF94
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	movs r3, #0xd
	rsbs r3, r3, #0
	movs r4, #0x11
	rsbs r4, r4, #0
	movs r5, #0x21
	rsbs r5, r5, #0
	movs r6, #0x3f
	movs r0, #0x80
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	ldr r0, _0803CF98
	ands r0, r1
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	ldr r0, _0803CF9C
	ands r0, r1
	movs r1, #0x88
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r3, r0
	movs r0, #0xf
	ands r3, r0
	movs r0, #0xa0
	orrs r3, r0
	strb r3, [r2, #5]
	mov r0, r8
	strh r0, [r2, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF94: .4byte 0x02018450
_0803CF98: .4byte 0xFFFFFE00
_0803CF9C: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803CFA0
sub_803CFA0: @ 0x0803CFA0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _0803D02C
	ldr r0, _0803D030
	ldrh r0, [r0, #4]
	movs r1, #0
	mov r8, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0xd
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #8
	orrs r0, r1
	movs r6, #0x11
	rsbs r6, r6, #0
	ands r0, r6
	movs r1, #0x20
	orrs r0, r1
	movs r5, #0x3f
	ands r0, r5
	strb r0, [r3, #1]
	ldr r0, _0803D034
	ldrh r1, [r0, #4]
	ldr r2, _0803D038
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D03C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r0, _0803D040
	ldrh r0, [r0, #4]
	ldr r1, _0803D044
	ands r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0803D048
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	strb r4, [r3, #5]
	mov r0, r8
	strh r0, [r3, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D02C: .4byte 0x02018428
_0803D030: .4byte 0x080DD83E
_0803D034: .4byte 0x080DD848
_0803D038: .4byte 0x000001FF
_0803D03C: .4byte 0xFFFFFE00
_0803D040: .4byte 0x080DD852
_0803D044: .4byte 0x000003FF
_0803D048: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D04C
sub_803D04C: @ 0x0803D04C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803D0DC
	ldr r2, _0803D0E0
	ldr r1, _0803D0E4
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803D0E8
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803D0EC
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D0F0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803D0F4
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D0DC: .4byte 0x02018460
_0803D0E0: .4byte 0x080DD874
_0803D0E4: .4byte 0x02022EC0
_0803D0E8: .4byte 0x080DD880
_0803D0EC: .4byte 0x000001FF
_0803D0F0: .4byte 0xFFFFFE00
_0803D0F4: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D0F8
sub_803D0F8: @ 0x0803D0F8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r3, _0803D188
	ldr r2, _0803D18C
	ldr r1, _0803D190
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0
	mov sb, r2
	strb r0, [r3]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r0, #0x3f
	mov r8, r0
	movs r0, #0
	strb r0, [r3, #1]
	ldr r2, _0803D194
	ldrb r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r2, _0803D198
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0803D19C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r3, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #3]
	ldrh r1, [r3, #4]
	ldr r0, _0803D1A0
	ands r0, r1
	movs r1, #0x89
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r3, #5]
	ands r4, r0
	movs r0, #0xf
	ands r4, r0
	movs r0, #0xb0
	orrs r4, r0
	strb r4, [r3, #5]
	mov r2, sb
	strh r2, [r3, #6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D188: .4byte 0x02018460
_0803D18C: .4byte 0x080DD8B8
_0803D190: .4byte 0x02022EC0
_0803D194: .4byte 0x080DD8CE
_0803D198: .4byte 0x000001FF
_0803D19C: .4byte 0xFFFFFE00
_0803D1A0: .4byte 0xFFFFFC00

	THUMB_FUNC_START sub_803D1A4
sub_803D1A4: @ 0x0803D1A4
	push {lr}
	bl sub_803C03C
	bl sub_803D934
	bl sub_8045718
	ldr r0, _0803D1F8
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803D1FC
	ldr r2, _0803D200
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D204
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803DAD8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xfe
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D1F8: .4byte LoadOam
_0803D1FC: .4byte 0x0400000A
_0803D200: .4byte 0x00001F0D
_0803D204: .4byte 0x00000E06

	THUMB_FUNC_START sub_803D208
sub_803D208: @ 0x0803D208
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0803D260
	ldr r7, _0803D264
	ldr r0, _0803D268
	adds r6, r5, r0
_0803D214:
	adds r0, r4, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, _0803D26C
	adds r0, r5, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D23E
	adds r0, r1, #0
	bl SetCardInfo
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_0803D23E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803D214
	ldr r0, _0803D270
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D260: .4byte 0x02022EC0
_0803D264: .4byte 0x08E0CEB0
_0803D268: .4byte 0x00000FB1
_0803D26C: .4byte 0x00000321
_0803D270: .4byte LoadOam

	THUMB_FUNC_START sub_803D274
sub_803D274: @ 0x0803D274
	push {lr}
	bl sub_803D62C
	bl sub_803CEF8
	bl sub_803D934
	bl sub_803CD38
	ldr r0, _0803D2A4
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803D2A4: .4byte LoadOam
	.byte 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D
	.byte 0x20, 0x1C, 0xFB, 0xF7, 0x97, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x93, 0xF8, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0xF0, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0x4F, 0xFA, 0x20, 0x1C, 0xFF, 0xF7, 0xF6, 0xF9
	.byte 0x28, 0x78, 0x80, 0x00, 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1D, 0xF0, 0xEF, 0xFB, 0x20, 0x1C
	.byte 0x00, 0xF0, 0x8A, 0xFA, 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0
	.byte 0xCB, 0xF9, 0xFF, 0xF7, 0x01, 0xFE, 0x00, 0xF0, 0x1D, 0xFB, 0x09, 0x48, 0xCA, 0xF7, 0x6E, 0xFF
	.byte 0xCA, 0xF7, 0x8E, 0xFF, 0x08, 0xF0, 0xEC, 0xF8, 0x08, 0xF0, 0xC2, 0xF9, 0x08, 0xF0, 0xE8, 0xF9
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xB0, 0xCE, 0xE0, 0x08, 0x71, 0x3E, 0x02, 0x02
	.byte 0xC9, 0x54, 0x04, 0x08, 0x70, 0xB5, 0x00, 0x24, 0x1A, 0x4E, 0x1B, 0x4D, 0x20, 0x1C, 0xFB, 0xF7
	.byte 0x59, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x55, 0xF8, 0x20, 0x1C, 0xFF, 0xF7, 0xB2, 0xF8
	.byte 0x20, 0x1C, 0x00, 0xF0, 0x11, 0xFA, 0x20, 0x1C, 0xFF, 0xF7, 0xB8, 0xF9, 0x28, 0x78, 0x80, 0x00
	.byte 0x80, 0x19, 0x01, 0x68, 0x20, 0x1C, 0x1D, 0xF0, 0xB1, 0xFB, 0x20, 0x1C, 0x00, 0xF0, 0x4C, 0xFA
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x04, 0x2C, 0xE0, 0xD9, 0x00, 0xF0, 0xC5, 0xF9, 0xFF, 0xF7
	.byte 0xC3, 0xFD, 0x00, 0xF0, 0xDF, 0xFA, 0x09, 0x48, 0xCA, 0xF7, 0x30, 0xFF, 0xCA, 0xF7, 0x50, 0xFF
	.byte 0x08, 0xF0, 0xAE, 0xF8, 0x08, 0xF0, 0x84, 0xF9, 0x08, 0xF0, 0xAA, 0xF9, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xB0, 0xCE, 0xE0, 0x08, 0x71, 0x3E, 0x02, 0x02, 0xC9, 0x54, 0x04, 0x08
	.byte 0x00, 0xB5, 0x02, 0x20, 0xFB, 0xF7, 0x1E, 0xF8, 0x00, 0x04, 0x00, 0x0C, 0xCE, 0xF7, 0x1A, 0xF8
	.byte 0x02, 0x20, 0xFF, 0xF7, 0x83, 0xF9, 0x04, 0x48, 0xCA, 0xF7, 0x10, 0xFF, 0xCA, 0xF7, 0x30, 0xFF
	.byte 0x08, 0xF0, 0x66, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0xC9, 0x54, 0x04, 0x08

	THUMB_FUNC_START sub_803D3CC
sub_803D3CC: @ 0x0803D3CC
	push {lr}
	bl sub_803D9C4
	bl sub_803D9E8
	bl sub_803D934
	ldr r1, _0803D400
	movs r0, #4
	strh r0, [r1]
	ldr r0, _0803D404
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803D408
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D400: .4byte gBLDY
_0803D404: .4byte LoadOam
_0803D408: .4byte 0x0000FEFF

	THUMB_FUNC_START sub_803D40C
sub_803D40C: @ 0x0803D40C
	push {lr}
	bl sub_803D62C
	bl sub_803CEF8
	bl sub_803CD38
	ldr r0, _0803D438
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock1
	bl LoadCharblock3
	bl LoadCharblock4
	pop {r0}
	bx r0
	.align 2, 0
_0803D438: .4byte LoadOam

	THUMB_FUNC_START sub_803D43C
sub_803D43C: @ 0x0803D43C
	push {lr}
	bl sub_803C1E4
	bl sub_803D97C
	bl sub_803D04C
	bl sub_803D9A0
	bl sub_803DA98
	ldr r0, _0803D484
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803D488
	ldr r2, _0803D48C
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D484: .4byte LoadOam
_0803D488: .4byte 0x04000008
_0803D48C: .4byte 0x00001708

	THUMB_FUNC_START sub_803D490
sub_803D490: @ 0x0803D490
	push {lr}
	bl sub_803D04C
	bl sub_803D9A0
	ldr r0, _0803D4A8
	bl sub_80081DC
	bl sub_8008220
	pop {r0}
	bx r0
	.align 2, 0
_0803D4A8: .4byte LoadOam

	THUMB_FUNC_START sub_803D4AC
sub_803D4AC: @ 0x0803D4AC
	push {lr}
	bl sub_803C03C
	bl sub_803C1E4
	bl sub_803D04C
	bl sub_803D9A0
	bl sub_803DA98
	bl sub_8045718
	ldr r0, _0803D514
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r1, _0803D518
	ldr r2, _0803D51C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D520
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803D524
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #0xfd
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_803DAD8
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803D514: .4byte LoadOam
_0803D518: .4byte 0x04000008
_0803D51C: .4byte 0x00001708
_0803D520: .4byte 0x00001F0D
_0803D524: .4byte 0x00000E06

	THUMB_FUNC_START sub_803D528
sub_803D528: @ 0x0803D528
	push {lr}
	bl sub_803D5B8
	bl sub_803D97C
	bl sub_803D958
	bl sub_803D0F8
	bl sub_803DA0C
	ldr r1, _0803D580
	movs r0, #8
	strh r0, [r1]
	ldr r0, _0803D584
	bl sub_80081DC
	bl sub_8008220
	bl LoadPalettes
	bl LoadCharblock2
	bl LoadBlendingRegs
	ldr r1, _0803D588
	ldr r2, _0803D58C
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803D590
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0803D580: .4byte gBLDY
_0803D584: .4byte LoadOam
_0803D588: .4byte 0x04000008
_0803D58C: .4byte 0x00001708
_0803D590: .4byte 0x0000BFFF

	THUMB_FUNC_START sub_803D594
sub_803D594: @ 0x0803D594
	push {lr}
	bl sub_803CD38
	bl sub_803D0F8
	bl sub_803DA0C
	ldr r0, _0803D5B4
	bl sub_80081DC
	bl sub_8008220
	bl LoadCharblock1
	pop {r0}
	bx r0
	.align 2, 0
_0803D5B4: .4byte LoadOam

	THUMB_FUNC_START sub_803D5B8
sub_803D5B8: @ 0x0803D5B8
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803D610
	ldr r2, _0803D614
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803D618
	ldr r5, _0803D61C
	adds r2, r5, #0
	bl sub_8020A3C
	movs r0, #0xc9
	lsls r0, r0, #5
	adds r4, r4, r0
	ldr r1, _0803D620
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8020A3C
	movs r4, #0
	movs r5, #0
_0803D5F0:
	ldr r0, _0803D624
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803D628
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803D5F0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D610: .4byte 0x02008400
_0803D614: .4byte 0x01000010
_0803D618: .4byte 0x080DE724
_0803D61C: .4byte 0x00000901
_0803D620: .4byte 0x080DE990
_0803D624: .4byte 0x08A323D4
_0803D628: .4byte 0x0200BC00

	THUMB_FUNC_START sub_803D62C
sub_803D62C: @ 0x0803D62C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0803D680
	ldr r5, _0803D684
_0803D634:
	adds r0, r4, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	adds r0, r4, #0
	bl sub_803C4A4
	adds r0, r4, #0
	bl sub_803C540
	adds r0, r4, #0
	bl sub_803D768
	adds r0, r4, #0
	bl sub_803C6BC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_803D7F8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803D634
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D680: .4byte 0x08E0CEB0
_0803D684: .4byte 0x02023E71

	THUMB_FUNC_START sub_803D688
sub_803D688: @ 0x0803D688
	push {r4, r5, r6, lr}
	ldr r0, _0803D6EC
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r0, _0803D6F0
	adds r4, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r1, r4, r5
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r1, r4, r5
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r0, _0803D6F4
	adds r4, r4, r0
	adds r5, r4, r5
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #0
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #0
	bl sub_803C540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6EC: .4byte 0x080DD7E0
_0803D6F0: .4byte 0x0200C400
_0803D6F4: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803D6F8
sub_803D6F8: @ 0x0803D6F8
	push {r4, r5, r6, lr}
	ldr r0, _0803D75C
	ldrh r4, [r0, #2]
	lsls r4, r4, #5
	ldr r0, _0803D760
	adds r4, r4, r0
	ldr r0, _0803D764
	adds r1, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r5, #0xa0
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	adds r4, r4, r5
	ldr r0, _0803D764
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	movs r0, #4
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl SetCardInfo
	movs r0, #4
	bl sub_803C540
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D75C: .4byte 0x080DD7E0
_0803D760: .4byte 0x0200C400
_0803D764: .4byte 0xFFFFFB00

	THUMB_FUNC_START sub_803D768
sub_803D768: @ 0x0803D768
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0803D7DC
	adds r2, r0, r2
	ldr r1, _0803D7E0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0803D7E4
	adds r1, r0, r1
	movs r2, #0
	ldr r0, _0803D7E8
	ldr r3, _0803D7EC
	ldr r4, _0803D7F0
	adds r0, r0, r4
	ldrh r4, [r3, #0x10]
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803D7BC
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	bhs _0803D7BC
	ldr r0, _0803D7F4
	adds r4, r0, #0
_0803D7A8:
	strh r4, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bhi _0803D7D4
	ldrb r0, [r3, #0x18]
	cmp r2, r0
	blo _0803D7A8
_0803D7BC:
	cmp r2, #0xb
	bhi _0803D7D4
	movs r4, #0xa0
	lsls r4, r4, #7
	adds r3, r4, #0
_0803D7C6:
	strh r3, [r1]
	subs r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xb
	bls _0803D7C6
_0803D7D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7DC: .4byte 0x080DD7EA
_0803D7E0: .4byte 0x080DD7EF
_0803D7E4: .4byte 0x02000400
_0803D7E8: .4byte 0x02022EC0
_0803D7EC: .4byte gCardInfo
_0803D7F0: .4byte 0x00000321
_0803D7F4: .4byte 0x00005001

	THUMB_FUNC_START sub_803D7F8
sub_803D7F8: @ 0x0803D7F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	ldr r1, _0803D828
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0803D82C
	adds r6, r0, r1
	ldr r0, _0803D830
	ldr r1, _0803D834
	ldrh r1, [r1, #0x10]
	ldr r2, _0803D838
	adds r0, r0, r2
	adds r0, r1, r0
	ldrb r7, [r0]
	cmp r7, #0
	beq _0803D83C
	adds r0, r6, #0
	bl sub_80573D0
	b _0803D87C
	.align 2, 0
_0803D828: .4byte 0x080DD852
_0803D82C: .4byte 0x02010400
_0803D830: .4byte 0x02022EC0
_0803D834: .4byte gCardInfo
_0803D838: .4byte 0x00000321
_0803D83C:
	mov r0, sp
	strh r7, [r0]
	ldr r5, _0803D884
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	movs r4, #0x80
	lsls r4, r4, #3
	adds r6, r6, r4
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	add r0, sp, #4
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	adds r6, r6, r4
	mov r0, sp
	adds r0, #6
	strh r7, [r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
_0803D87C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D884: .4byte 0x01000080

	THUMB_FUNC_START sub_803D888
sub_803D888: @ 0x0803D888
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0803D8D0
	ldr r2, _0803D8D4
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	adds r0, r4, #0
	adds r0, #0x20
	ldr r1, _0803D8D8
	ldr r2, _0803D8DC
	bl sub_8020A3C
	mov r0, sp
	adds r0, #2
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r1, r2, #0
	strh r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r4, r4, r1
	ldr r2, _0803D8E0
	adds r1, r4, #0
	bl CpuSet
	bl sub_803CD38
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D8D0: .4byte 0x02004400
_0803D8D4: .4byte 0x01000010
_0803D8D8: .4byte 0x080DEA9C
_0803D8DC: .4byte 0x00000901
_0803D8E0: .4byte 0x01000400

	THUMB_FUNC_START sub_803D8E4
sub_803D8E4: @ 0x0803D8E4
	push {r4, r5, lr}
	ldr r0, _0803D91C
	ldr r1, _0803D920
	bl LZ77UnCompWram
	movs r4, #0
	movs r5, #0
_0803D8F2:
	ldr r0, _0803D924
	adds r0, r5, r0
	lsls r1, r4, #6
	ldr r2, _0803D928
	adds r1, r1, r2
	movs r2, #0x1e
	bl CpuSet
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #0x13
	bls _0803D8F2
	ldr r0, _0803D92C
	ldr r1, _0803D930
	movs r2, #0x40
	bl CpuSet
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D91C: .4byte 0x08A3617C
_0803D920: .4byte 0x02000400
_0803D924: .4byte 0x08A3875C
_0803D928: .4byte 0x02007C00
_0803D92C: .4byte 0x08A38C0C
_0803D930: .4byte 0x02000000

	THUMB_FUNC_START sub_803D934
sub_803D934: @ 0x0803D934
	ldr r2, _0803D954
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803D954: .4byte 0x02018450

	THUMB_FUNC_START sub_803D958
sub_803D958: @ 0x0803D958
	ldr r0, _0803D978
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D978: .4byte 0x02018428

	THUMB_FUNC_START sub_803D97C
sub_803D97C: @ 0x0803D97C
	ldr r0, _0803D99C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D99C: .4byte 0x02018458

	THUMB_FUNC_START sub_803D9A0
sub_803D9A0: @ 0x0803D9A0
	ldr r2, _0803D9C0
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803D9C0: .4byte 0x02018460

	THUMB_FUNC_START sub_803D9C4
sub_803D9C4: @ 0x0803D9C4
	ldr r0, _0803D9E4
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803D9E4: .4byte 0x02018460

	THUMB_FUNC_START sub_803D9E8
sub_803D9E8: @ 0x0803D9E8
	ldr r0, _0803DA08
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_0803DA08: .4byte 0x02018468

	THUMB_FUNC_START sub_803DA0C
sub_803DA0C: @ 0x0803DA0C
	ldr r2, _0803DA2C
	adds r3, r2, #0
	adds r3, #8
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	ldrb r1, [r3, #1]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3, #1]
	bx lr
	.align 2, 0
_0803DA2C: .4byte 0x02018460
	.byte 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x60, 0x84, 0x01, 0x02, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C, 0x01, 0x80, 0x02, 0x30
	.byte 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00, 0x11, 0x1C, 0x41, 0x80
	.byte 0x70, 0x47, 0x00, 0x00, 0x68, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803DA78
sub_803DA78: @ 0x0803DA78
	ldr r1, _0803DA8C
	movs r0, #0xf2
	strh r0, [r1]
	ldr r1, _0803DA90
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803DA94
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DA8C: .4byte gBLDCNT
_0803DA90: .4byte gBLDALPHA
_0803DA94: .4byte gBLDY

	THUMB_FUNC_START sub_803DA98
sub_803DA98: @ 0x0803DA98
	ldr r1, _0803DAAC
	movs r0, #0xfa
	strh r0, [r1]
	ldr r1, _0803DAB0
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0803DAB4
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DAAC: .4byte gBLDCNT
_0803DAB0: .4byte gBLDALPHA
_0803DAB4: .4byte gBLDY
	.byte 0x04, 0x49, 0xFA, 0x20, 0x08, 0x80, 0x04, 0x49
	.byte 0x10, 0x20, 0x08, 0x80, 0x03, 0x49, 0x08, 0x20, 0x08, 0x80, 0x70, 0x47, 0x28, 0x42, 0x02, 0x02
	.byte 0x38, 0x42, 0x02, 0x02, 0x30, 0x42, 0x02, 0x02

	THUMB_FUNC_START sub_803DAD8
sub_803DAD8: @ 0x0803DAD8
	ldr r1, _0803DB08
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x18
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0803DB0C
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _0803DB10
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803DB14
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, _0803DB18
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803DB08: .4byte 0x04000040
_0803DB0C: .4byte 0x000004D4
_0803DB10: .4byte 0x0000486F
_0803DB14: .4byte 0x00001E0E
_0803DB18: .4byte 0x0000183F

	THUMB_FUNC_START sub_803DB1C
sub_803DB1C: @ 0x0803DB1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803DCD0
	movs r6, #0
	ldr r4, _0803DCD4
	ldr r5, _0803DCD8
	ldr r1, _0803DCDC
	mov r8, r1
	ldr r2, _0803DCE0
	mov sb, r2
	ldr r7, _0803DCE4
	mov ip, r7
	ldr r1, _0803DCE8
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	movs r1, #0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r3, r7, #0
_0803DB4C:
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	adds r6, #1
	cmp r6, #0x1f
	bls _0803DB4C
	movs r0, #0
	strh r0, [r4]
	strh r0, [r5]
	ldr r1, _0803DCEC
	strh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	mov r7, sb
	strh r0, [r7]
	mov r1, ip
	strh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	ldr r7, _0803DCF0
	strh r0, [r7]
	ldr r2, _0803DCF4
	adds r1, r2, #0
	ldr r7, _0803DCF8
	strh r1, [r7]
	ldr r2, _0803DCFC
	ldrh r1, [r2]
	ldr r7, _0803DD00
	strh r1, [r7]
	ldr r1, _0803DD04
	strh r0, [r1]
	ldr r0, _0803DD08
	ldr r1, _0803DD0C
	bl LZ77UnCompWram
	movs r6, #0
	movs r4, #0
_0803DBD0:
	ldr r0, _0803DD10
	adds r0, r4, r0
	lsls r1, r6, #6
	ldr r5, _0803DD14
	adds r1, r1, r5
	movs r2, #0x1e
	bl CpuSet
	adds r4, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803DBD0
	ldr r0, _0803DD18
	ldr r1, _0803DD1C
	movs r2, #0x40
	bl CpuSet
	ldr r0, _0803DD20
	ldr r2, _0803DD24
	adds r1, r5, r2
	bl LZ77UnCompWram
	movs r6, #0
	ldr r7, _0803DD28
	adds r7, r7, r5
	mov r8, r7
	ldr r0, _0803DD2C
	adds r7, r5, r0
	mov sb, r8
	movs r5, #0
_0803DC0C:
	ldr r0, _0803DD30
	adds r0, r5, r0
	lsls r4, r6, #6
	mov r1, sb
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD34
	adds r0, r5, r0
	ldr r1, _0803DD28
	add r1, r8
	adds r1, r4, r1
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD38
	adds r0, r5, r0
	ldr r1, _0803DD3C
	add r1, r8
	adds r1, r4, r1
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD40
	adds r0, r5, r0
	ldr r1, _0803DD44
	add r1, r8
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x1e
	bl CpuSet
	ldr r0, _0803DD48
	adds r0, r5, r0
	adds r1, r7, #0
	movs r2, #0x1e
	bl CpuSet
	adds r7, #0x40
	movs r1, #0x40
	add sb, r1
	adds r5, #0x3c
	adds r6, #1
	cmp r6, #0x13
	bls _0803DC0C
	ldr r0, _0803DD4C
	ldr r4, _0803DD50
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _0803DD54
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_803EEFC
	ldr r0, _0803DD58
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuSet
	bl sub_803DD68
	bl sub_8045718
	bl LoadPalettes
	bl LoadVRAM
	bl LoadBgOffsets
	bl LoadBlendingRegs
	ldr r0, _0803DD5C
	bl sub_80081DC
	bl sub_8008220
	ldr r1, _0803DD60
	ldr r7, _0803DD64
	adds r0, r7, #0
	strh r0, [r1]
	subs r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCD0: .4byte gOamBuffer
_0803DCD4: .4byte gBG0VOFS
_0803DCD8: .4byte gBG0HOFS
_0803DCDC: .4byte gBG1HOFS
_0803DCE0: .4byte gBG2VOFS
_0803DCE4: .4byte gBG2HOFS
_0803DCE8: .4byte gBG3VOFS
_0803DCEC: .4byte gBG1VOFS
_0803DCF0: .4byte gBG3HOFS
_0803DCF4: .4byte 0x000008D8
_0803DCF8: .4byte gBLDCNT
_0803DCFC: .4byte 0x080DD688
_0803DD00: .4byte gBLDALPHA
_0803DD04: .4byte gBLDY
_0803DD08: .4byte 0x08A3C304
_0803DD0C: .4byte 0x02000400
_0803DD10: .4byte 0x08A40430
_0803DD14: .4byte 0x0200FC00
_0803DD18: .4byte 0x08A408E0
_0803DD1C: .4byte 0x02000000
_0803DD20: .4byte 0x08A40960
_0803DD24: .4byte 0xFFFF8800
_0803DD28: .4byte 0xFFFFF800
_0803DD2C: .4byte 0xFFFFD800
_0803DD30: .4byte 0x08A4145C
_0803DD34: .4byte 0x08A4190C
_0803DD38: .4byte 0x08A41DBC
_0803DD3C: .4byte 0xFFFFF000
_0803DD40: .4byte 0x08A4226C
_0803DD44: .4byte 0xFFFFE800
_0803DD48: .4byte 0x08A4271C
_0803DD4C: .4byte 0x08A42BCC
_0803DD50: .4byte 0x020000A0
_0803DD54: .4byte 0x08A42BEC
_0803DD58: .4byte 0x08A44BEC
_0803DD5C: .4byte LoadOam
_0803DD60: .4byte 0x0400000E
_0803DD64: .4byte 0x00001F03

	THUMB_FUNC_START sub_803DD68
sub_803DD68: @ 0x0803DD68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0803DDD4
	movs r7, #0
	ldr r0, _0803DDD8
	mov sb, r0
	ldr r1, _0803DDDC
	mov r8, r1
	ldr r3, _0803DDE0
	movs r0, #0x80
	lsls r0, r0, #3
	mov ip, r0
	movs r5, #0xc0
	lsls r5, r5, #4
	ldr r6, _0803DDE4
	ldr r1, _0803DDE8
	add r1, sb
	mov sl, r1
_0803DD92:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, r7
	bne _0803DDEC
	ldrb r0, [r6, #4]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ands r0, r3
	str r0, [r4]
	mov r1, ip
	orrs r0, r1
	stm r4!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	ldrh r1, [r2, #8]
	orrs r0, r1
	ands r0, r3
	str r0, [r4]
	mov r1, ip
	orrs r0, r1
	b _0803DE1A
	.align 2, 0
_0803DDD4: .4byte 0x02018408
_0803DDD8: .4byte 0x02022EC0
_0803DDDC: .4byte 0x08FA3558
_0803DDE0: .4byte 0xFFFFF3FF
_0803DDE4: .4byte 0x080DD6A8
_0803DDE8: .4byte 0x00000FBB
_0803DDEC:
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	str r0, [r4]
	ands r0, r3
	stm r4!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	ldrh r1, [r2, #8]
	orrs r0, r1
	str r0, [r4]
	ands r0, r3
_0803DE1A:
	stm r4!, {r0}
	ldrh r0, [r2, #0xc]
	ands r0, r3
	str r0, [r4]
	orrs r0, r5
	stm r4!, {r0}
	adds r6, #1
	adds r7, #1
	cmp r7, #3
	bls _0803DD92
	ldr r0, _0803DE7C
	add r0, sb
	ldrb r0, [r0]
	ldr r1, _0803DE80
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	ldr r0, _0803DE84
	adds r1, r1, r0
	ldr r2, _0803DE88
	add r2, sb
	ldrb r0, [r2]
	ldr r3, [r1]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, [r0, #4]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r1]
	orrs r0, r1
	stm r4!, {r0}
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r0, [r0, #4]
	ldrh r0, [r0, #4]
	ldr r1, _0803DE8C
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE7C: .4byte 0x00000FBB
_0803DE80: .4byte 0x080DD6B0
_0803DE84: .4byte 0x08FA3558
_0803DE88: .4byte 0x00000FBE
_0803DE8C: .4byte 0xFFFFF3FF

	THUMB_FUNC_START sub_803DE90
sub_803DE90: @ 0x0803DE90
	push {r4, r5, lr}
	ldr r3, _0803DF14
	ldr r0, _0803DF18
	ldr r0, [r0, #0x30]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803DF1C
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803DF20
	ldr r1, _0803DF24
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803DF28
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DF2C
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803DF30
	ldr r2, _0803DF34
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803DF38
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF14: .4byte gOamBuffer
_0803DF18: .4byte 0x08FA3558
_0803DF1C: .4byte 0xFFFFF3FF
_0803DF20: .4byte 0x02022EC0
_0803DF24: .4byte 0x00000FBB
_0803DF28: .4byte gBLDCNT
_0803DF2C: .4byte gBLDY
_0803DF30: .4byte 0x0400000C
_0803DF34: .4byte 0x00001D0A
_0803DF38: .4byte LoadOam

	THUMB_FUNC_START sub_803DF3C
sub_803DF3C: @ 0x0803DF3C
	push {r4, r5, lr}
	ldr r3, _0803DFC0
	ldr r0, _0803DFC4
	ldr r0, [r0, #0x34]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803DFC8
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803DFCC
	ldr r1, _0803DFD0
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803DFD4
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DFD8
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803DFDC
	ldr r2, _0803DFE0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803DFE4
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFC0: .4byte gOamBuffer
_0803DFC4: .4byte 0x08FA3558
_0803DFC8: .4byte 0xFFFFF3FF
_0803DFCC: .4byte 0x02022EC0
_0803DFD0: .4byte 0x00000FBB
_0803DFD4: .4byte gBLDCNT
_0803DFD8: .4byte gBLDY
_0803DFDC: .4byte 0x0400000C
_0803DFE0: .4byte 0x00001C0A
_0803DFE4: .4byte LoadOam

	THUMB_FUNC_START sub_803DFE8
sub_803DFE8: @ 0x0803DFE8
	push {r4, r5, lr}
	ldr r3, _0803E06C
	ldr r0, _0803E070
	ldr r0, [r0, #0x3c]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803E074
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803E078
	ldr r1, _0803E07C
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E080
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803E084
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E088
	ldr r2, _0803E08C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E090
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E06C: .4byte gOamBuffer
_0803E070: .4byte 0x08FA3558
_0803E074: .4byte 0xFFFFF3FF
_0803E078: .4byte 0x02022EC0
_0803E07C: .4byte 0x00000FBB
_0803E080: .4byte gBLDCNT
_0803E084: .4byte gBLDY
_0803E088: .4byte 0x0400000C
_0803E08C: .4byte 0x00001A0A
_0803E090: .4byte LoadOam

	THUMB_FUNC_START sub_803E094
sub_803E094: @ 0x0803E094
	push {r4, r5, lr}
	ldr r3, _0803E118
	ldr r0, _0803E11C
	ldr r0, [r0, #0x38]
	ldr r2, [r0, #4]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r0, r1
	ldr r5, _0803E120
	ands r0, r5
	str r0, [r3]
	movs r4, #0x80
	lsls r4, r4, #3
	orrs r0, r4
	stm r3!, {r0}
	ldrh r0, [r2, #4]
	ands r0, r5
	str r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	stm r3!, {r0}
	ldr r0, _0803E124
	ldr r1, _0803E128
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldr r0, [r1]
	ands r0, r5
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E12C
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803E130
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E134
	ldr r2, _0803E138
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E13C
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r4, r0
	strh r4, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E118: .4byte gOamBuffer
_0803E11C: .4byte 0x08FA3558
_0803E120: .4byte 0xFFFFF3FF
_0803E124: .4byte 0x02022EC0
_0803E128: .4byte 0x00000FBB
_0803E12C: .4byte gBLDCNT
_0803E130: .4byte gBLDY
_0803E134: .4byte 0x0400000C
_0803E138: .4byte 0x00001B0A
_0803E13C: .4byte LoadOam

	THUMB_FUNC_START sub_803E140
sub_803E140: @ 0x0803E140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	ldr r1, _0803E188
	mov sl, r1
	movs r7, #0x1f
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	ldr r1, _0803E18C
	mov r8, r1
	movs r6, #0x7d
	rsbs r6, r6, #0
_0803E160:
	movs r4, #0
	adds r5, r0, #1
	ldr r0, _0803E190
	mov ip, r0
_0803E168:
	lsls r0, r4, #1
	mov r1, sl
	adds r3, r0, r1
	ldr r0, [r3]
	lsls r1, r0, #0x1b
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E194
	subs r0, #2
	ands r0, r7
	ldrb r2, [r3]
	mov r1, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	b _0803E19C
	.align 2, 0
_0803E188: .4byte 0x02000000
_0803E18C: .4byte 0xFFFFFC1F
_0803E190: .4byte 0x000001FF
_0803E194:
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	strb r0, [r3]
_0803E19C:
	ldr r0, [r3]
	lsls r1, r0, #0x16
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E1BA
	adds r1, r0, #0
	subs r1, #2
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r3]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	b _0803E1C0
_0803E1BA:
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
_0803E1C0:
	strh r0, [r3]
	ldr r0, [r3]
	lsls r1, r0, #0x11
	lsrs r0, r1, #0x1b
	cmp r0, #1
	bls _0803E1DE
	subs r0, #2
	ands r0, r7
	lsls r0, r0, #2
	ldrb r2, [r3, #1]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	b _0803E1E6
_0803E1DE:
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r3, #1]
_0803E1E6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, ip
	bls _0803E168
	ldr r0, _0803E210
	bl sub_80081DC
	bl sub_8008220
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0803E160
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E210: .4byte LoadPalettes

	THUMB_FUNC_START sub_803E214
sub_803E214: @ 0x0803E214
	push {lr}
	ldr r2, _0803E240
	ldr r1, _0803E244
	ldr r0, _0803E248
	ldr r3, _0803E24C
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_803DD68
	ldr r0, _0803E250
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_0803E240: .4byte gBLDALPHA
_0803E244: .4byte 0x080DD688
_0803E248: .4byte 0x02022EC0
_0803E24C: .4byte 0x00000FBC
_0803E250: .4byte LoadOam

	THUMB_FUNC_START sub_803E254
sub_803E254: @ 0x0803E254
	push {lr}
	ldr r2, _0803E27C
	ldr r1, _0803E280
	ldr r0, _0803E284
	ldr r3, _0803E288
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _0803E28C
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	pop {r0}
	bx r0
	.align 2, 0
_0803E27C: .4byte gBLDALPHA
_0803E280: .4byte 0x080DD698
_0803E284: .4byte 0x02022EC0
_0803E288: .4byte 0x00000FBC
_0803E28C: .4byte LoadOam
	.byte 0x08, 0x49, 0x09, 0x48, 0x09, 0x4A, 0x80, 0x18, 0x00, 0x78, 0x00, 0x01, 0x41, 0x18, 0x08, 0x68
	.byte 0xC0, 0x22, 0x12, 0x01, 0x10, 0x43, 0x08, 0x60, 0x08, 0x31, 0x08, 0x68, 0x10, 0x43, 0x08, 0x60
	.byte 0x70, 0x47, 0x00, 0x00, 0x08, 0x84, 0x01, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xBB, 0x0F, 0x00, 0x00
	.byte 0x08, 0x4A, 0x09, 0x48, 0x09, 0x49, 0x40, 0x18, 0x00, 0x78, 0x00, 0x01, 0x82, 0x18, 0x10, 0x68
	.byte 0x07, 0x49, 0x08, 0x40, 0x10, 0x60, 0x08, 0x32, 0x10, 0x68, 0xC0, 0x21, 0x09, 0x01, 0x08, 0x43
	.byte 0x10, 0x60, 0x70, 0x47, 0x08, 0x84, 0x01, 0x02, 0xC0, 0x2E, 0x02, 0x02, 0xBB, 0x0F, 0x00, 0x00
	.byte 0xFF, 0xF3, 0xFF, 0xFF, 0x10, 0xB5, 0x00, 0x06, 0x0C, 0x4C, 0x0D, 0x49, 0x80, 0x0D, 0x40, 0x18
	.byte 0x00, 0x68, 0x42, 0x68, 0x50, 0x88, 0x00, 0x04, 0x11, 0x88, 0x08, 0x43, 0x09, 0x4B, 0x18, 0x40
	.byte 0x20, 0x60, 0x80, 0x21, 0xC9, 0x00, 0x08, 0x43, 0x01, 0xC4, 0x90, 0x88, 0x18, 0x40, 0x80, 0x21
	.byte 0x09, 0x01, 0x08, 0x43, 0x20, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x84, 0x01, 0x02
	.byte 0x58, 0x35, 0xFA, 0x08, 0xFF, 0xF3, 0xFF, 0xFF, 0x07, 0x48, 0x80, 0x22, 0x92, 0x00, 0x11, 0x1C
	.byte 0x01, 0x80, 0x02, 0x30, 0x00, 0x21, 0x01, 0x80, 0x02, 0x30, 0x01, 0x80, 0x80, 0x22, 0x52, 0x00
	.byte 0x11, 0x1C, 0x41, 0x80, 0x70, 0x47, 0x00, 0x00, 0x00, 0x84, 0x01, 0x02

	THUMB_FUNC_START sub_803E35C
sub_803E35C: @ 0x0803E35C
	push {r4, lr}
	ldr r1, _0803E3D8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0803E3DC
	ldr r2, _0803E3E0
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, _0803E3E4
	ands r1, r2
	str r1, [r0]
	adds r0, #8
	ldr r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0]
	ldr r1, _0803E3E8
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r2, #0
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _0803E3EC
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0803E3F0
	ldr r2, _0803E3F4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803E3F8
	bl sub_80081DC
	bl sub_8008220
	bl LoadBlendingRegs
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E3D8: .4byte gOamBuffer
_0803E3DC: .4byte 0x02022EC0
_0803E3E0: .4byte 0x00000FBB
_0803E3E4: .4byte 0xFFFFF3FF
_0803E3E8: .4byte gBLDCNT
_0803E3EC: .4byte gBLDY
_0803E3F0: .4byte 0x0400000C
_0803E3F4: .4byte 0x00001E0A
_0803E3F8: .4byte LoadOam

	THUMB_FUNC_START sub_803E3FC
sub_803E3FC: @ 0x0803E3FC
	push {r4, lr}
	ldr r2, _0803E46C
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	movs r3, #0
	strh r3, [r2]
	adds r2, #2
	strh r3, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r2]
	adds r2, #2
	ldr r0, _0803E470
	ldr r1, _0803E474
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	orrs r0, r2
	str r0, [r1]
	adds r1, #8
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r2, _0803E478
	ldrh r1, [r2]
	ldr r4, _0803E47C
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0803E480
	strh r3, [r0]
	ldr r0, _0803E484
	bl sub_80081DC
	bl sub_8008220
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r1]
	ands r4, r0
	strh r4, [r1]
	bl LoadBlendingRegs
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E46C: .4byte gOamBuffer
_0803E470: .4byte 0x02022EC0
_0803E474: .4byte 0x00000FBB
_0803E478: .4byte gBLDCNT
_0803E47C: .4byte 0x0000FBFF
_0803E480: .4byte gBLDY
_0803E484: .4byte LoadOam

	THUMB_FUNC_START sub_803E488
sub_803E488: @ 0x0803E488
	push {r4, r5, lr}
	bl sub_803B71C
	movs r4, #0
	ldr r5, _0803E4B0
_0803E492:
	bl sub_803E6F8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x40
	beq _0803E4E0
	cmp r1, #0x40
	bgt _0803E4BE
	cmp r1, #2
	beq _0803E51C
	cmp r1, #2
	bgt _0803E4B4
	cmp r1, #1
	beq _0803E500
	b _0803E55C
	.align 2, 0
_0803E4B0: .4byte 0x02023502
_0803E4B4:
	cmp r1, #4
	beq _0803E544
	cmp r1, #8
	beq _0803E53A
	b _0803E55C
_0803E4BE:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E4F0
	cmp r1, r0
	bgt _0803E4D0
	cmp r1, #0x80
	beq _0803E4E8
	b _0803E55C
_0803E4D0:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E4F8
	adds r0, #0x80
	cmp r1, r0
	beq _0803E52A
	b _0803E55C
_0803E4E0:
	movs r0, #1
	bl sub_80377D4
	b _0803E550
_0803E4E8:
	movs r0, #1
	bl sub_8036FEC
	b _0803E550
_0803E4F0:
	movs r0, #0x32
	bl sub_80377D4
	b _0803E550
_0803E4F8:
	movs r0, #0x32
	bl sub_8036FEC
	b _0803E550
_0803E500:
	movs r0, #2
	bl sub_8037798
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E518
	bl sub_803E56C
	bl sub_803B924
	b _0803E560
_0803E518:
	movs r0, #0x39
	b _0803E520
_0803E51C:
	movs r4, #1
	movs r0, #0x38
_0803E520:
	bl PlayMusic
	bl sub_8008220
	b _0803E560
_0803E52A:
	bl sub_8037BBC
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B780
	b _0803E560
_0803E53A:
	bl sub_803E62C
	bl sub_803A6F8
	b _0803E560
_0803E544:
	bl sub_8037998
	bl sub_80379D8
	bl sub_8037814
_0803E550:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B7EC
	b _0803E560
_0803E55C:
	bl sub_8008220
_0803E560:
	cmp r4, #1
	bne _0803E492
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E56C
sub_803E56C: @ 0x0803E56C
	push {r4, r5, lr}
	bl sub_8037740
	movs r0, #0x37
	bl PlayMusic
	bl sub_803B964
	movs r4, #0
	ldr r5, _0803E5A0
_0803E580:
	bl sub_803E7CC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x20
	beq _0803E5CE
	cmp r1, #0x20
	bgt _0803E5AA
	cmp r1, #2
	beq _0803E600
	cmp r1, #2
	bgt _0803E5A4
	cmp r1, #1
	beq _0803E5E4
	b _0803E61E
	.align 2, 0
_0803E5A0: .4byte 0x02023E78
_0803E5A4:
	cmp r1, #0x10
	beq _0803E5D4
	b _0803E61E
_0803E5AA:
	cmp r1, #0x80
	beq _0803E5C8
	cmp r1, #0x80
	bgt _0803E5B8
	cmp r1, #0x40
	beq _0803E5C2
	b _0803E61E
_0803E5B8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0803E60E
	b _0803E61E
_0803E5C2:
	bl sub_8037ABC
	b _0803E5D8
_0803E5C8:
	bl sub_8037ADC
	b _0803E5D8
_0803E5CE:
	bl sub_8037AFC
	b _0803E5D8
_0803E5D4:
	bl sub_8037B1C
_0803E5D8:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B9B8
	b _0803E622
_0803E5E4:
	ldr r1, _0803E5FC
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803E622
	movs r4, #1
	b _0803E622
	.align 2, 0
_0803E5FC: .4byte 0x08E0CEC0
_0803E600:
	movs r4, #1
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008220
	b _0803E622
_0803E60E:
	bl sub_8037BBC
	movs r0, #0x36
	bl PlayMusic
	bl sub_803B780
	b _0803E622
_0803E61E:
	bl sub_8008220
_0803E622:
	cmp r4, #1
	bne _0803E580
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E62C
sub_803E62C: @ 0x0803E62C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803E668
	ldr r0, _0803E66C
	adds r5, r4, r0
	ldrb r0, [r5]
	ldr r1, _0803E670
	adds r4, r4, r1
	strb r0, [r4]
	ldrb r6, [r5]
	movs r0, #0x37
	bl PlayMusic
	bl sub_803BA50
	movs r7, #0
_0803E64A:
	bl sub_803E7CC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0803E6A6
	cmp r0, #0x10
	bgt _0803E67A
	cmp r0, #2
	beq _0803E6DA
	cmp r0, #2
	bgt _0803E674
	cmp r0, #1
	beq _0803E6C2
	b _0803E6EA
	.align 2, 0
_0803E668: .4byte 0x02022EC0
_0803E66C: .4byte 0x00000FBA
_0803E670: .4byte 0x00000FB8
_0803E674:
	cmp r0, #8
	beq _0803E6DA
	b _0803E6EA
_0803E67A:
	cmp r0, #0x40
	beq _0803E68E
	cmp r0, #0x40
	bgt _0803E688
	cmp r0, #0x20
	beq _0803E6A0
	b _0803E6EA
_0803E688:
	cmp r0, #0x80
	beq _0803E69A
	b _0803E6EA
_0803E68E:
	bl sub_8037B3C
_0803E692:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0803E6B0
	b _0803E6B4
_0803E69A:
	bl sub_8037B5C
	b _0803E692
_0803E6A0:
	bl sub_8037B7C
	b _0803E692
_0803E6A6:
	bl sub_8037B9C
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803E6B4
_0803E6B0:
	strb r6, [r5]
	b _0803E6B6
_0803E6B4:
	strb r0, [r5]
_0803E6B6:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803BAB4
	b _0803E6EE
_0803E6C2:
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803E6CC
	strb r6, [r5]
	b _0803E6CE
_0803E6CC:
	strb r0, [r5]
_0803E6CE:
	bl sub_80379D8
	bl sub_8037814
	movs r0, #0x37
	b _0803E6DE
_0803E6DA:
	strb r6, [r5]
	movs r0, #0x38
_0803E6DE:
	bl PlayMusic
	bl sub_8008220
	movs r7, #1
	b _0803E6EE
_0803E6EA:
	bl sub_8008220
_0803E6EE:
	cmp r7, #1
	bne _0803E64A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E6F8
sub_803E6F8: @ 0x0803E6F8
	push {lr}
	bl sub_802612C
	ldr r0, _0803E710
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E714
	movs r0, #1
	b _0803E7C8
	.align 2, 0
_0803E710: .4byte gUnk2020DFC
_0803E714:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E720
	movs r0, #2
	b _0803E7C8
_0803E720:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E730
	adds r0, r2, #0
	b _0803E7C8
_0803E730:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803E73C
	movs r0, #8
	b _0803E7C8
_0803E73C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803E748
	movs r0, #4
	b _0803E7C8
_0803E748:
	ldr r2, _0803E768
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E770
	ldr r0, _0803E76C
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E770
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0803E7C8
	.align 2, 0
_0803E768: .4byte gUnk2021DCC
_0803E76C: .4byte gKeyState
_0803E770:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E794
	ldr r0, _0803E790
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E794
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0803E7C8
	.align 2, 0
_0803E790: .4byte gKeyState
_0803E794:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E7A2
	movs r0, #0x40
	b _0803E7C8
_0803E7A2:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E7AE
	movs r0, #0x80
	b _0803E7C8
_0803E7AE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E7BA
	movs r0, #0x20
	b _0803E7C8
_0803E7BA:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803E7C6
	movs r0, #0
	b _0803E7C8
_0803E7C6:
	movs r0, #0x10
_0803E7C8:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_803E7CC
sub_803E7CC: @ 0x0803E7CC
	push {lr}
	bl sub_802618C
	ldr r0, _0803E7E4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803E7E8
	movs r0, #1
	b _0803E84A
	.align 2, 0
_0803E7E4: .4byte gUnk2020DFC
_0803E7E8:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E7F4
	movs r0, #2
	b _0803E84A
_0803E7F4:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803E804
	adds r0, r2, #0
	b _0803E84A
_0803E804:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803E810
	movs r0, #8
	b _0803E84A
_0803E810:
	ldr r0, _0803E820
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803E824
	movs r0, #0x40
	b _0803E84A
	.align 2, 0
_0803E820: .4byte gUnk2021DCC
_0803E824:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E830
	movs r0, #0x80
	b _0803E84A
_0803E830:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E83C
	movs r0, #0x20
	b _0803E84A
_0803E83C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803E848
	movs r0, #0
	b _0803E84A
_0803E848:
	movs r0, #0x10
_0803E84A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E850
sub_803E850: @ 0x0803E850
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	movs r0, #2
	bl sub_8037798
	bl SetCardInfo
	bl sub_801F6B0
	bl sub_803B9D4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803E870
sub_803E870: @ 0x0803E870
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	bl sub_8008220
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E880
sub_803E880: @ 0x0803E880
	push {r4, r5, lr}
	bl sub_803D1A4
	movs r4, #0
	ldr r5, _0803E8A8
_0803E88A:
	bl sub_803EB00
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x40
	beq _0803E8D8
	cmp r1, #0x40
	bgt _0803E8B6
	cmp r1, #2
	beq _0803E91E
	cmp r1, #2
	bgt _0803E8AC
	cmp r1, #1
	beq _0803E8F8
	b _0803E95E
	.align 2, 0
_0803E8A8: .4byte 0x020231E1
_0803E8AC:
	cmp r1, #4
	beq _0803E946
	cmp r1, #8
	beq _0803E93C
	b _0803E95E
_0803E8B6:
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E8E8
	cmp r1, r0
	bgt _0803E8C8
	cmp r1, #0x80
	beq _0803E8E0
	b _0803E95E
_0803E8C8:
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803E8F0
	adds r0, #0x80
	cmp r1, r0
	beq _0803E92C
	b _0803E95E
_0803E8D8:
	movs r0, #1
	bl sub_8038424
	b _0803E952
_0803E8E0:
	movs r0, #1
	bl sub_8037BDC
	b _0803E952
_0803E8E8:
	movs r0, #0x32
	bl sub_8038424
	b _0803E952
_0803E8F0:
	movs r0, #0x32
	bl sub_8037BDC
	b _0803E952
_0803E8F8:
	movs r0, #2
	bl sub_80383E4
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803E91A
	bl sub_803E96C
	bl sub_803D3CC
	bl sub_80383A0
	cmp r0, #0
	beq _0803E962
	movs r4, #1
	b _0803E962
_0803E91A:
	movs r0, #0x39
	b _0803E922
_0803E91E:
	movs r4, #1
	movs r0, #0x38
_0803E922:
	bl PlayMusic
	bl sub_8008220
	b _0803E962
_0803E92C:
	bl sub_8038840
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D208
	b _0803E962
_0803E93C:
	bl sub_803EA34
	bl sub_803C128
	b _0803E962
_0803E946:
	bl sub_803863C
	bl sub_803867C
	bl sub_8038464
_0803E952:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D274
	b _0803E962
_0803E95E:
	bl sub_8008220
_0803E962:
	cmp r4, #1
	bne _0803E88A
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803E96C
sub_803E96C: @ 0x0803E96C
	push {r4, r5, lr}
	bl sub_8038330
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D43C
	movs r4, #0
	ldr r5, _0803E9A0
_0803E980:
	bl sub_803EBD4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x20
	beq _0803E9CE
	cmp r1, #0x20
	bgt _0803E9AA
	cmp r1, #2
	beq _0803EA08
	cmp r1, #2
	bgt _0803E9A4
	cmp r1, #1
	beq _0803E9E4
	b _0803EA26
	.align 2, 0
_0803E9A0: .4byte 0x08E0CEC8
_0803E9A4:
	cmp r1, #0x10
	beq _0803E9D4
	b _0803EA26
_0803E9AA:
	cmp r1, #0x80
	beq _0803E9C8
	cmp r1, #0x80
	bgt _0803E9B8
	cmp r1, #0x40
	beq _0803E9C2
	b _0803EA26
_0803E9B8:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0803EA16
	b _0803EA26
_0803E9C2:
	bl sub_8038760
	b _0803E9D8
_0803E9C8:
	bl sub_803877C
	b _0803E9D8
_0803E9CE:
	bl sub_8038798
	b _0803E9D8
_0803E9D4:
	bl sub_80387B4
_0803E9D8:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D490
	b _0803EA2A
_0803E9E4:
	ldr r0, _0803EA04
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803EA2A
	movs r4, #1
	b _0803EA2A
	.align 2, 0
_0803EA04: .4byte 0x02022EC0
_0803EA08:
	movs r4, #1
	movs r0, #0x38
	bl PlayMusic
	bl sub_8008220
	b _0803EA2A
_0803EA16:
	bl sub_8038840
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D208
	b _0803EA2A
_0803EA26:
	bl sub_8008220
_0803EA2A:
	cmp r4, #1
	bne _0803E980
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803EA34
sub_803EA34: @ 0x0803EA34
	push {r4, r5, r6, r7, lr}
	ldr r4, _0803EA74
	ldr r0, _0803EA78
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r4, r4, r1
	strb r0, [r4]
	ldrb r6, [r5]
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D528
	movs r7, #0
_0803EA54:
	bl sub_803EBD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	beq _0803EAAE
	cmp r0, #0x10
	bgt _0803EA82
	cmp r0, #2
	beq _0803EAE2
	cmp r0, #2
	bgt _0803EA7C
	cmp r0, #1
	beq _0803EACA
	b _0803EAF2
	.align 2, 0
_0803EA74: .4byte 0x02022EC0
_0803EA78: .4byte 0x00000FB2
_0803EA7C:
	cmp r0, #8
	beq _0803EAE2
	b _0803EAF2
_0803EA82:
	cmp r0, #0x40
	beq _0803EA96
	cmp r0, #0x40
	bgt _0803EA90
	cmp r0, #0x20
	beq _0803EAA8
	b _0803EAF2
_0803EA90:
	cmp r0, #0x80
	beq _0803EAA2
	b _0803EAF2
_0803EA96:
	bl sub_80387D0
_0803EA9A:
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _0803EAB8
	b _0803EABC
_0803EAA2:
	bl sub_80387EC
	b _0803EA9A
_0803EAA8:
	bl sub_8038808
	b _0803EA9A
_0803EAAE:
	bl sub_8038824
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803EABC
_0803EAB8:
	strb r6, [r5]
	b _0803EABE
_0803EABC:
	strb r0, [r5]
_0803EABE:
	movs r0, #0x36
	bl PlayMusic
	bl sub_803D594
	b _0803EAF6
_0803EACA:
	ldrb r0, [r4]
	cmp r0, #0xa
	bne _0803EAD4
	strb r6, [r5]
	b _0803EAD6
_0803EAD4:
	strb r0, [r5]
_0803EAD6:
	bl sub_803867C
	bl sub_8038464
	movs r0, #0x37
	b _0803EAE6
_0803EAE2:
	strb r6, [r5]
	movs r0, #0x38
_0803EAE6:
	bl PlayMusic
	bl sub_8008220
	movs r7, #1
	b _0803EAF6
_0803EAF2:
	bl sub_8008220
_0803EAF6:
	cmp r7, #1
	bne _0803EA54
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_803EB00
sub_803EB00: @ 0x0803EB00
	push {lr}
	bl sub_802612C
	ldr r0, _0803EB18
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB1C
	movs r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB18: .4byte gUnk2020DFC
_0803EB1C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EB28
	movs r0, #2
	b _0803EBD0
_0803EB28:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803EB38
	adds r0, r2, #0
	b _0803EBD0
_0803EB38:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EB44
	movs r0, #8
	b _0803EBD0
_0803EB44:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803EB50
	movs r0, #4
	b _0803EBD0
_0803EB50:
	ldr r2, _0803EB70
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EB78
	ldr r0, _0803EB74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB78
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB70: .4byte gUnk2021DCC
_0803EB74: .4byte gKeyState
_0803EB78:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	ldr r0, _0803EB98
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EB9C
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0803EBD0
	.align 2, 0
_0803EB98: .4byte gKeyState
_0803EB9C:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EBAA
	movs r0, #0x40
	b _0803EBD0
_0803EBAA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EBB6
	movs r0, #0x80
	b _0803EBD0
_0803EBB6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803EBC2
	movs r0, #0x20
	b _0803EBD0
_0803EBC2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803EBCE
	movs r0, #0
	b _0803EBD0
_0803EBCE:
	movs r0, #0x10
_0803EBD0:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_803EBD4
sub_803EBD4: @ 0x0803EBD4
	push {lr}
	bl sub_802618C
	ldr r0, _0803EBEC
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803EBF0
	movs r0, #1
	b _0803EC52
	.align 2, 0
_0803EBEC: .4byte gUnk2020DFC
_0803EBF0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803EBFC
	movs r0, #2
	b _0803EC52
_0803EBFC:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0803EC0C
	adds r0, r2, #0
	b _0803EC52
_0803EC0C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803EC18
	movs r0, #8
	b _0803EC52
_0803EC18:
	ldr r0, _0803EC28
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803EC2C
	movs r0, #0x40
	b _0803EC52
	.align 2, 0
_0803EC28: .4byte gUnk2021DCC
_0803EC2C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803EC38
	movs r0, #0x80
	b _0803EC52
_0803EC38:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803EC44
	movs r0, #0x20
	b _0803EC52
_0803EC44:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0803EC50
	movs r0, #0
	b _0803EC52
_0803EC50:
	movs r0, #0x10
_0803EC52:
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803EC58
sub_803EC58: @ 0x0803EC58
	push {lr}
	movs r0, #0x37
	bl PlayMusic
	movs r0, #2
	bl sub_80383E4
	bl SetCardInfo
	bl sub_801F6B0
	bl sub_803D4AC
	movs r0, #0
	pop {r1}
	bx r1
	.byte 0x00, 0xB5, 0x39, 0x20, 0xF6, 0xF7, 0x70, 0xF9
	.byte 0xC9, 0xF7, 0xCE, 0xFA, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x39, 0x20
	.byte 0xF6, 0xF7, 0x66, 0xF9, 0xC9, 0xF7, 0xC4, 0xFA, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	THUMB_FUNC_START sub_803ECA0
sub_803ECA0: @ 0x0803ECA0
	push {r4, r5, lr}
	movs r5, #0
	movs r0, #2
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_80384BC
	cmp r0, #0
	bne _0803ECE8
	adds r0, r4, #0
	movs r1, #1
	bl sub_8038574
	adds r0, r4, #0
	movs r1, #1
	bl sub_8036D5C
	ldr r0, _0803ECFC
	ldr r1, _0803ED00
	adds r0, r0, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803ECE8
	bl sub_8038344
	movs r0, #1
	bl sub_8038618
	bl sub_8037C1C
	movs r5, #1
_0803ECE8:
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D40C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0803ECFC: .4byte 0x02022EC0
_0803ED00: .4byte 0x00000321

	THUMB_FUNC_START sub_803ED04
sub_803ED04: @ 0x0803ED04
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r0, #2
	bl sub_80383E4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0803ED60
	ldr r1, _0803ED64
	adds r0, r0, r1
	adds r6, r5, r0
	ldrb r4, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80384BC
	cmp r0, #0
	bne _0803ED4E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8038574
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8036D5C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0803ED4E
	bl sub_8038344
	movs r0, #1
	bl sub_8038618
	bl sub_8037C1C
	movs r7, #1
_0803ED4E:
	movs r0, #0x37
	bl PlayMusic
	bl sub_803D274
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803ED60: .4byte 0x02022EC0
_0803ED64: .4byte 0x00000321

	THUMB_FUNC_START sub_803ED68
sub_803ED68: @ 0x0803ED68
	push {lr}
	movs r0, #0x38
	bl PlayMusic
	movs r0, #1
	pop {r1}
	bx r1
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803ED78
sub_803ED78: @ 0x0803ED78
	push {lr}
	bl sub_803ED8C
	bl sub_803EE80
	bl sub_803EED8
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803ED8C
sub_803ED8C: @ 0x0803ED8C
	push {lr}
	bl sub_803ED9C
	bl sub_803EE44
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803ED9C
sub_803ED9C: @ 0x0803ED9C
	push {lr}
	bl sub_803EDB4
	bl sub_803EDD8
	bl sub_803EDFC
	bl sub_803EE20
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803EDB4
sub_803EDB4: @ 0x0803EDB4
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EDD0
	ldr r2, _0803EDD4
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EDD0: .4byte 0x02000400
_0803EDD4: .4byte 0x01002000

	THUMB_FUNC_START sub_803EDD8
sub_803EDD8: @ 0x0803EDD8
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EDF4
	ldr r2, _0803EDF8
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EDF4: .4byte 0x02004400
_0803EDF8: .4byte 0x01002000

	THUMB_FUNC_START sub_803EDFC
sub_803EDFC: @ 0x0803EDFC
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EE18
	ldr r2, _0803EE1C
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EE18: .4byte 0x02008400
_0803EE1C: .4byte 0x01002000

	THUMB_FUNC_START sub_803EE20
sub_803EE20: @ 0x0803EE20
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EE3C
	ldr r2, _0803EE40
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EE3C: .4byte 0x0200C400
_0803EE40: .4byte 0x01002000

	THUMB_FUNC_START sub_803EE44
sub_803EE44: @ 0x0803EE44
	push {r4, r5, r6, lr}
	sub sp, #4
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _0803EE78
	ldr r6, _0803EE7C
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuSet
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE78: .4byte 0x02010400
_0803EE7C: .4byte 0x01002000

	THUMB_FUNC_START sub_803EE80
sub_803EE80: @ 0x0803EE80
	push {lr}
	bl sub_803EE90
	bl sub_803EEB4
	pop {r0}
	bx r0
	.byte 0x00, 0x00

	THUMB_FUNC_START sub_803EE90
sub_803EE90: @ 0x0803EE90
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EEAC
	ldr r2, _0803EEB0
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EEAC: .4byte 0x02000000
_0803EEB0: .4byte 0x01000100

	THUMB_FUNC_START sub_803EEB4
sub_803EEB4: @ 0x0803EEB4
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EED0
	ldr r2, _0803EED4
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EED0: .4byte 0x02000200
_0803EED4: .4byte 0x01000100

	THUMB_FUNC_START sub_803EED8
sub_803EED8: @ 0x0803EED8
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803EEF4
	ldr r2, _0803EEF8
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803EEF4: .4byte gOamBuffer
_0803EEF8: .4byte 0x01000200

	THUMB_FUNC_START sub_803EEFC
sub_803EEFC: @ 0x0803EEFC
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #1
	beq _0803EF1C
	cmp r0, #1
	ble _0803EF34
	cmp r1, #2
	beq _0803EF24
	cmp r1, #3
	beq _0803EF2C
	b _0803EF34
_0803EF1C:
	ldr r5, _0803EF20
	b _0803EF36
	.align 2, 0
_0803EF20: .4byte 0x02014400
_0803EF24:
	ldr r5, _0803EF28
	b _0803EF36
	.align 2, 0
_0803EF28: .4byte 0x02010600
_0803EF2C:
	ldr r5, _0803EF30
	b _0803EF36
	.align 2, 0
_0803EF30: .4byte 0x02014600
_0803EF34:
	ldr r5, _0803EF60
_0803EF36:
	movs r4, #0
	lsrs r2, r2, #4
	cmp r4, r2
	bhs _0803EF5A
	adds r6, r2, #0
_0803EF40:
	lsls r0, r4, #9
	adds r0, r7, r0
	lsls r1, r4, #0xa
	adds r1, r5, r1
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _0803EF40
_0803EF5A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EF60: .4byte 0x02010400

.align 2, 0


/*

s32 sub_8043418(struct DuelCard** monZones, u16 id) num cards excluding god cards
{
    u8 i;
    s8 c = 0;

    for (i = 0; i < 5; i++)
    {
        u16 monId = (*monZones++)->id;
        if (IsGodCard(monId) == TRUE)
            monId = CARD_NONE;

        if (monId == id)
            c++;
    }
    return c;
}

s32 NumEmptyZonesAndGodCardsInRow(struct DuelCard** monZones) //NumGodCardsAndEmptyZones
{
    return sub_8043418(monZones, 0);
}*/
