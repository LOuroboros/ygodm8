#include "global.h"
#include "gba/io_reg.h"
#include "gba/macro.h"
#include "duel.h"
#include "card.h"
#include "player.h"
#include "constants/card_ids.h"
#include "gba/syscall.h"

extern u8 gUnk8094C37[];
extern u8 gUnk8094CC3[];
extern u8 gUnk8094FE4[NUM_FIELDS][NUM_CARD_TYPES];
extern u8* gUnk8F985E0[];
extern u16 gCardAtks[];
extern u16 gCardDefs[];
extern u32 gCardCosts[];
extern u8 gCardAttributes[];
extern u8 gCardLevels[];
extern u8 gCardTypes[];
extern u8 gCardColors[];
extern u8 gCardMagicEffect[];
extern u8 gCardMonsterEffects[];
extern u8 gCardTrapEffect[];
extern u8 gUnk8DFB654[];


extern u8 gUnk201CB38;
extern s8 gUnk201CB39;

static u16 GetFieldModifiedStat(u16 stat, u8 fieldMod);
static u16 GetStageModifiedStat(u16 stat, s8 stageMod);
u8 *sub_800BD14(u16);

void SetFinalStat(struct StatMod* ptr)
{
    SetCardInfo(ptr->card);
    if (gCardInfo.spellEffect == 2)
    {
        gCardInfo.atk = GetFieldModifiedStat(gCardInfo.atk, gUnk8094FE4[ptr->field][gCardInfo.type]);
        gCardInfo.def = GetFieldModifiedStat(gCardInfo.def, gUnk8094FE4[ptr->field][gCardInfo.type]);
        gCardInfo.atk = GetStageModifiedStat(gCardInfo.atk, ptr->stage);
        gCardInfo.def = GetStageModifiedStat(gCardInfo.def, ptr->stage);
    }
}

void sub_800B384(void)
{
    gCardInfo.name = sub_800BD14(CARD_NONE);
    gCardInfo.unk4 = sub_800BD14(CARD_NONE);
    gCardInfo.unk8 = gUnk8F985E0[CARD_NONE];
    gCardInfo.cost = 0;
    gCardInfo.id = CARD_NONE;
    gCardInfo.atk = 0xFFFF;
    gCardInfo.def = 0xFFFF;
    gCardInfo.type = TYPE_NONE;
    gCardInfo.attribute = ATTRIBUTE_NONE;
    gCardInfo.level = 0;
    gCardInfo.color = COLOR_NORMAL;
    gCardInfo.spellEffect = 0;
    gCardInfo.monsterEffect = 0;
    gCardInfo.trapEffect = 0;
    gCardInfo.ritualEffect = 0;
    gCardInfo.unk1E = 0;
    gUnk201CB38 = 0;
    gUnk201CB39 = 0;
}

void SetCardInfo(u16 id)
{
    gCardInfo.id = id;
    gCardInfo.atk = gCardAtks[id];
    gCardInfo.def = gCardDefs[id];
    gCardInfo.cost = gCardCosts[id];
    gCardInfo.attribute = gCardAttributes[id];
    gCardInfo.level = gCardLevels[id];
    gCardInfo.type = gCardTypes[id];
    gCardInfo.color = gCardColors[id];
    gCardInfo.spellEffect = gCardMagicEffect[id];
    gCardInfo.monsterEffect = gCardMonsterEffects[id];
    gCardInfo.trapEffect = gCardTrapEffect[id];
    gCardInfo.ritualEffect = gUnk8094C37[gCardInfo.spellEffect];
    gCardInfo.unk1E = gUnk8094CC3[id];
    gCardInfo.name = sub_800BD14(id);
    gCardInfo.unk4 = sub_800BD14(id);
    gCardInfo.unk8 = gUnk8F985E0[id];
}

void sub_800B4AC(u16 id)
{
    SetCardInfo(id);
    if (gCardInfo.spellEffect == 2)
    {
        gCardInfo.atk = GetFieldModifiedStat(gCardInfo.atk, gUnk8094FE4[gUnk201CB38][gCardInfo.type]);
        gCardInfo.def = GetFieldModifiedStat(gCardInfo.def, gUnk8094FE4[gUnk201CB38][gCardInfo.type]);
        gCardInfo.atk = GetStageModifiedStat(gCardInfo.atk, gUnk201CB39);
        gCardInfo.def = GetStageModifiedStat(gCardInfo.def, gUnk201CB39);
    }
}

void sub_800B524(u8 val, s8 val2)
{
    gUnk201CB38 = val;
    gUnk201CB39 = val2;
}

void sub_800B538(u16* id)
{
    SetCardInfo(*id);
    if (gCardInfo.cost > GetDuelistLevel())
        gCardInfo.unk8 = gUnk8DFB654;
}

static u16 GetStageModifiedStat(u16 stat, s8 stage)
{
    int finalStat = stage * 500 + stat;

    if (finalStat <= 0)
        stat = 0;
    else if (finalStat > 0xFFFE)
        stat = 0xFFFE;
    else
        stat = finalStat;
    return stat;
}


static u16 GetFieldModifiedStat(u16 stat, u8 fieldMod)
{
    switch (fieldMod)
    {
    case 0:
    case 2:
    case 4:
        break;
    case 1:
        stat *= 0.7;
        break;
    case 3:
        stat *= 1.3;
        if (stat >= 0xFFFE) //0xFFFF is an invalid attack/defense(used for non-monster cards)
            stat = 0xFFFE;
        break;
    }
    return stat;
}

extern u8 gUnk8DFB8A8[]; //french summon/cost tiles
extern u8 gUnk8DFBAE8[]; //german type/summon/cost tiles
extern u8 gUnk8DFBDE8[]; //italian and spanish type/summon/cost tiles (Type is spelled the same for both)


extern u16 gUnk8097D94[][31]; //248x160p (31x20t) tilemap
extern u32 g0809553C[]; //tileset

extern u16 g809508C[][30];



void sub_800BA04(void);
void sub_800BC24(void);
void sub_800BCEC(void);
void sub_800BCC4(void);
void sub_800BCB0(void *);
void PrintCard(void);


extern u16 g08097C94[];
extern u16 (*gUnk_8E0136C)[][14];
extern u16 *gUnk_8E01368;
extern u16 **gUnk_8E01364;

void sub_800B618(void *r6) //card details screen gfx
{
    u8 i;

    //copy each row of the tile map
    for (i = 0; i < 20; i++)
        CpuCopy16(gUnk8097D94[i], gBgVram.sbb1F[i], 62);
    //copy tileset
    LZ77UnCompWram(g0809553C, gBgVram.cbb2);

    //change type/summon/cost tiles depending on selected language
    //french doesn't copy 'Type' since it's spelled the same as English
    switch (gLanguage)
    {
    case FRENCH:
        CpuFastSet(gUnk8DFB8A8, &gBgVram.cbb2[171*32], (6*32)/4);
        CpuFastSet(&gUnk8DFB8A8[6*32], &gBgVram.cbb2[202*32], (6*32)/4);
        CpuFastSet(&gUnk8DFB8A8[12*32], &gBgVram.cbb2[233*32], (3*32)/4);
        CpuFastSet(&gUnk8DFB8A8[15*32], &gBgVram.cbb2[264*32], (3*32)/4);
        break;
    case GERMAN:
        CpuFastSet(gUnk8DFBAE8, &gBgVram.cbb2[109*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBAE8[3*32], &gBgVram.cbb2[140*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBAE8[6*32], &gBgVram.cbb2[171*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBAE8[12*32], &gBgVram.cbb2[202*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBAE8[18*32], &gBgVram.cbb2[233*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBAE8[21*32], &gBgVram.cbb2[264*32], (3*32)/4);
        break;
    case ITALIAN:
        CpuFastSet(gUnk8DFBDE8, &gBgVram.cbb2[109*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[3*32], &gBgVram.cbb2[140*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[6*32], &gBgVram.cbb2[171*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBDE8[12*32], &gBgVram.cbb2[202*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBDE8[18*32], &gBgVram.cbb2[233*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[21*32], &gBgVram.cbb2[264*32], (3*32)/4);
        break;
    case SPANISH:
        CpuFastSet(gUnk8DFBDE8, &gBgVram.cbb2[109*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[3*32], &gBgVram.cbb2[140*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[24*32], &gBgVram.cbb2[171*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBDE8[30*32], &gBgVram.cbb2[202*32], (6*32)/4);
        CpuFastSet(&gUnk8DFBDE8[18*32], &gBgVram.cbb2[233*32], (3*32)/4);
        CpuFastSet(&gUnk8DFBDE8[21*32], &gBgVram.cbb2[264*32], (2*32)/4);
        CpuFastSet(&gUnk8DFBDE8[36*32], &gBgVram.cbb2[266*32], (1*32)/4);
        break;
    }

    CpuCopy32(g08097C94, &g02000000.bg[8 * 16], 256); //copy palette

    for (i = 0; i < 20; i++)
        CpuCopy32(g809508C[i], gBgVram.sbb1E[i], 60);

    sub_800BA04();         //print name on top
    sub_800BC24();         //print cost
    sub_800BCEC();         //print type
    sub_800BCC4();         //print summon
    sub_800BCB0(r6);       //print description
    PrintCard();

    for (i = 0; i < 19; i++)
        CpuCopy16((*gUnk_8E0136C)[i], &gBgVram.sbb1D[i][32], 28);

    CpuCopy16(gUnk_8E01368, g02000000.bg, 256); //copy palette
    CpuCopy16(gUnk_8E01364, gBgVram.cbb0, 0x4000);
}

NAKED
void sub_800B884(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r0, _0800B954\n\
	ldrh r6, [r0, #0x10]\n\
	ldr r0, _0800B958\n\
	cmp r6, r0\n\
	bne _0800B896\n\
	b _0800B9F4\n\
_0800B896:\n\
	movs r0, #0xc8\n\
	lsls r0, r0, #2\n\
	cmp r6, r0\n\
	bls _0800B8A0\n\
	adds r6, r0, #0\n\
_0800B8A0:\n\
	movs r4, #0xfa\n\
	lsls r4, r4, #2\n\
	adds r0, r6, #0\n\
	adds r1, r4, #0\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	subs r0, r6, r0\n\
	adds r1, r4, #0\n\
	bl __divsi3\n\
	adds r4, r0, #0\n\
	lsls r4, r4, #0x18\n\
	lsrs r4, r4, #0x18\n\
	lsls r0, r4, #5\n\
	subs r0, r0, r4\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #3\n\
	subs r0, r6, r0\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	movs r5, #0x64\n\
	adds r0, r6, #0\n\
	movs r1, #0x64\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	subs r0, r6, r0\n\
	movs r1, #0x64\n\
	bl __divsi3\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	adds r0, r7, #0\n\
	muls r0, r5, r0\n\
	subs r0, r6, r0\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	adds r0, r6, #0\n\
	movs r1, #0xa\n\
	bl __umodsi3\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	subs r0, r6, r0\n\
	movs r1, #0xa\n\
	bl __divsi3\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	lsls r0, r0, #1\n\
	subs r0, r6, r0\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov r8, r0\n\
	movs r6, #4\n\
	cmp r4, #0\n\
	bne _0800B92C\n\
	movs r6, #3\n\
	cmp r7, #0\n\
	bne _0800B92C\n\
	movs r6, #1\n\
	cmp r5, #0\n\
	beq _0800B92C\n\
	movs r6, #2\n\
_0800B92C:\n\
	ldr r4, _0800B95C\n\
	cmp r6, #2\n\
	bls _0800B968\n\
	ldr r0, _0800B960\n\
	adds r1, r7, r0\n\
	movs r0, #0xff\n\
	ands r1, r0\n\
	lsls r1, r1, #8\n\
	ldr r2, _0800B960\n\
	adds r0, r7, r2\n\
	movs r2, #0xff\n\
	lsls r2, r2, #8\n\
	ands r0, r2\n\
	asrs r0, r0, #8\n\
	orrs r1, r0\n\
	ldr r2, _0800B964\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
	b _0800B974\n\
	.align 2, 0\n\
_0800B954: .4byte gCardInfo\n\
_0800B958: .4byte 0x0000FFFF\n\
_0800B95C: .4byte 0x02004420\n\
_0800B960: .4byte 0x0000824F\n\
_0800B964: .4byte 0x00000901\n\
_0800B968:\n\
	ldr r1, _0800B99C\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
_0800B974:\n\
	adds r4, #0x20\n\
	cmp r6, #1\n\
	bls _0800B9A8\n\
	ldr r0, _0800B9A0\n\
	adds r1, r5, r0\n\
	movs r0, #0xff\n\
	ands r1, r0\n\
	lsls r1, r1, #8\n\
	ldr r2, _0800B9A0\n\
	adds r0, r5, r2\n\
	movs r2, #0xff\n\
	lsls r2, r2, #8\n\
	ands r0, r2\n\
	asrs r0, r0, #8\n\
	orrs r1, r0\n\
	ldr r2, _0800B9A4\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
	b _0800B9B4\n\
	.align 2, 0\n\
_0800B99C: .4byte 0x00004081\n\
_0800B9A0: .4byte 0x0000824F\n\
_0800B9A4: .4byte 0x00000901\n\
_0800B9A8:\n\
	ldr r1, _0800B9DC\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
_0800B9B4:\n\
	adds r4, #0x60\n\
	cmp r6, #0\n\
	beq _0800B9E8\n\
	ldr r1, _0800B9E0\n\
	add r1, r8\n\
	movs r0, #0xff\n\
	ands r1, r0\n\
	lsls r1, r1, #8\n\
	ldr r0, _0800B9E0\n\
	add r0, r8\n\
	movs r2, #0xff\n\
	lsls r2, r2, #8\n\
	ands r0, r2\n\
	asrs r0, r0, #8\n\
	orrs r1, r0\n\
	ldr r2, _0800B9E4\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
	b _0800B9F4\n\
	.align 2, 0\n\
_0800B9DC: .4byte 0x00004081\n\
_0800B9E0: .4byte 0x0000824F\n\
_0800B9E4: .4byte 0x00000901\n\
_0800B9E8:\n\
	ldr r1, _0800BA00\n\
	movs r2, #0x80\n\
	lsls r2, r2, #1\n\
	adds r0, r4, #0\n\
	bl sub_8020968\n\
_0800B9F4:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800BA00: .4byte 0x00004081");
}

NAKED
void sub_800BA04(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x84\n\
	ldr r0, _0800BA60\n\
	ldr r6, [r0]\n\
	adds r0, r6, #0\n\
	bl sub_8020824\n\
	adds r6, r0, #0\n\
	movs r0, #0\n\
	mov ip, r0\n\
	movs r5, #0\n\
	movs r2, #0\n\
	adds r3, r6, #0\n\
	ldrb r0, [r3]\n\
	cmp r0, #0\n\
	beq _0800BA9A\n\
	cmp r0, #0x24\n\
	beq _0800BA9A\n\
	movs r4, #0x40\n\
	movs r1, #0x80\n\
_0800BA34:\n\
	movs r0, #0x40\n\
	ands r0, r2\n\
	cmp r0, #0\n\
	bne _0800BA40\n\
	adds r3, r6, r5\n\
	mov sl, ip\n\
_0800BA40:\n\
	adds r0, r6, r5\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x18\n\
	cmp r0, #0\n\
	blt _0800BA72\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #0x20\n\
	bne _0800BA64\n\
	adds r0, r2, #0\n\
	ands r0, r1\n\
	cmp r0, #0\n\
	bne _0800BA64\n\
	movs r0, #0xbf\n\
	ands r2, r0\n\
	b _0800BA6A\n\
	.align 2, 0\n\
_0800BA60: .4byte gCardInfo\n\
_0800BA64:\n\
	orrs r2, r4\n\
	lsls r0, r2, #0x18\n\
	lsrs r2, r0, #0x18\n\
_0800BA6A:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	b _0800BA7E\n\
_0800BA72:\n\
	adds r0, r5, #2\n\
	lsls r0, r0, #0x18\n\
	lsrs r5, r0, #0x18\n\
	orrs r2, r4\n\
	lsls r0, r2, #0x18\n\
	lsrs r2, r0, #0x18\n\
_0800BA7E:\n\
	mov r0, ip\n\
	adds r0, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov ip, r0\n\
	cmp r0, #0x1e\n\
	bls _0800BA8E\n\
	orrs r2, r1\n\
_0800BA8E:\n\
	adds r0, r6, r5\n\
	ldrb r0, [r0]\n\
	cmp r0, #0\n\
	beq _0800BA9A\n\
	cmp r0, #0x24\n\
	bne _0800BA34\n\
_0800BA9A:\n\
	movs r7, #0\n\
	mov r1, ip\n\
	cmp r1, #0x1e\n\
	bls _0800BAB4\n\
	mov r2, sl\n\
	subs r0, r1, r2\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	movs r0, #0x80\n\
	orrs r7, r0\n\
	movs r4, #0x1e\n\
	mov ip, r4\n\
	b _0800BAB6\n\
_0800BAB4:\n\
	mov sl, ip\n\
_0800BAB6:\n\
	movs r2, #0\n\
	movs r5, #0\n\
	cmp r2, ip\n\
	blo _0800BAC0\n\
	b _0800BBDA\n\
_0800BAC0:\n\
	movs r0, #0x20\n\
	mov r8, r0\n\
_0800BAC4:\n\
	movs r0, #3\n\
	ands r0, r5\n\
	adds r1, r5, #1\n\
	mov sb, r1\n\
	cmp r0, #2\n\
	bne _0800BB30\n\
	movs r0, #0x80\n\
	ands r0, r7\n\
	cmp r0, #0\n\
	beq _0800BB30\n\
	movs r4, #0\n\
_0800BADA:\n\
	movs r0, #0x7f\n\
	ands r0, r7\n\
	cmp r0, #0\n\
	beq _0800BB18\n\
	ldrb r0, [r3]\n\
	add r1, sp, #0x7c\n\
	strb r0, [r1]\n\
	movs r0, #0\n\
	ldrsb r0, [r3, r0]\n\
	cmp r0, #0\n\
	bge _0800BB00\n\
	mov r0, sp\n\
	adds r0, r0, r2\n\
	ldrb r1, [r1]\n\
	strb r1, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r3, #1\n\
_0800BB00:\n\
	mov r0, sp\n\
	adds r1, r0, r2\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r3, #1\n\
	subs r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	b _0800BB26\n\
_0800BB18:\n\
	mov r1, sp\n\
	adds r0, r1, r2\n\
	mov r1, r8\n\
	strb r1, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
_0800BB26:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #1\n\
	bls _0800BADA\n\
_0800BB30:\n\
	cmp r5, sl\n\
	bhs _0800BB5E\n\
	ldrb r1, [r6]\n\
	movs r0, #0\n\
	ldrsb r0, [r6, r0]\n\
	cmp r0, #0\n\
	bge _0800BB4C\n\
	mov r4, sp\n\
	adds r0, r4, r2\n\
	strb r1, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r6, #1\n\
_0800BB4C:\n\
	mov r0, sp\n\
	adds r1, r0, r2\n\
	ldrb r0, [r6]\n\
	strb r0, [r1]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r6, #1\n\
	b _0800BB6C\n\
_0800BB5E:\n\
	mov r1, sp\n\
	adds r0, r1, r2\n\
	mov r4, r8\n\
	strb r4, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
_0800BB6C:\n\
	movs r0, #3\n\
	ands r5, r0\n\
	cmp r5, #3\n\
	bne _0800BBCE\n\
	movs r0, #0x80\n\
	ands r0, r7\n\
	cmp r0, #0\n\
	beq _0800BBCE\n\
	movs r4, #0\n\
_0800BB7E:\n\
	movs r0, #0x7f\n\
	ands r0, r7\n\
	cmp r0, #0\n\
	beq _0800BBB6\n\
	ldrb r1, [r3]\n\
	movs r0, #0\n\
	ldrsb r0, [r3, r0]\n\
	cmp r0, #0\n\
	bge _0800BB9E\n\
	mov r5, sp\n\
	adds r0, r5, r2\n\
	strb r1, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r3, #1\n\
_0800BB9E:\n\
	mov r0, sp\n\
	adds r1, r0, r2\n\
	ldrb r0, [r3]\n\
	strb r0, [r1]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
	adds r3, #1\n\
	subs r0, r7, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r7, r0, #0x18\n\
	b _0800BBC4\n\
_0800BBB6:\n\
	mov r1, sp\n\
	adds r0, r1, r2\n\
	mov r5, r8\n\
	strb r5, [r0]\n\
	adds r0, r2, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r2, r0, #0x18\n\
_0800BBC4:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #1\n\
	bls _0800BB7E\n\
_0800BBCE:\n\
	mov r1, sb\n\
	lsls r0, r1, #0x18\n\
	lsrs r5, r0, #0x18\n\
	cmp r5, ip\n\
	bhs _0800BBDA\n\
	b _0800BAC4\n\
_0800BBDA:\n\
	mov r4, sp\n\
	adds r0, r4, r2\n\
	movs r1, #0\n\
	strb r1, [r0]\n\
	movs r0, #0x80\n\
	ands r7, r0\n\
	cmp r7, #0\n\
	beq _0800BC00\n\
	ldr r2, _0800BBF8\n\
	ldr r0, _0800BBFC\n\
	mov r1, sp\n\
	bl sub_8020A3C\n\
	b _0800BC0A\n\
	.align 2, 0\n\
_0800BBF8: .4byte 0x00000801\n\
_0800BBFC: .4byte 0x02004420\n\
_0800BC00:\n\
	ldr r2, _0800BC1C\n\
	ldr r0, _0800BC20\n\
	mov r1, sp\n\
	bl sub_8020A3C\n\
_0800BC0A:\n\
	add sp, #0x84\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800BC1C: .4byte 0x00000901\n\
_0800BC20: .4byte 0x02004420");
}

/*
void sub_800BA04(void)
{
    u8 *name, *r3;
    u8 r2, r5, ip, sl, r7;

    name = sub_8020824(gCardInfo.name);
    ip = 0;
    r5 = 0;
    r2 = 0;

    while (*name != 0 && *name != '$')
    {
        if (!(r2 & 0x40))
        {
            r3 = name + r5;
            sl = ip;
        }

        if ((s8)*name >= 0)
        {
            if (*name == ' ' && !(r2 & 0x80))
                r2 &= 0xbf;  //clear second highest bit
            else
                r2 |= 0x40;  //set second highest bit
            r5++;
        }
        else
        {
            r5 += 2;
            r2 |= 0x40; //set second highest bit
        }
        ip++;

        if (ip > 0x1E)
            r2 |= 0x80; //set highest bit
    }

    //_0800BA9A
    r7 = 0;
    if (ip > 0x1E)
    {
        r7 = ip - sl;
        r7 |= 0x80;    //set highest bit
        ip = 0x1E;
    }
    else
        sl = ip;

    r2 = 0;
    r5 = 0;

    if (ip >= 0)
}*/

void sub_8020968(u8*, u16, u16);
/*
void sub_800BC24(void)
{
    u8 i;
    u8* vram;

    sub_800DDA0(gCardInfo.cost, 0);
    vram = &gBgVram.cbb1[128*32];

    for (i = 0; i < 10; i++)
    {
        if (g2021BD0[i - 5] == 10 || i < 5)
            sub_8020968(vram, 0x4081, 0x101);
        else
        {
            s32 arg1 = ((g2021BD0[i - 5] + 0x824F) & 0xFF << 8) | ((g2021BD0[i - 5] + 0x824F) & 0xFF00 >> 8);
            sub_8020968(vram, arg1, 0x101);
        }

        if (i & 1)
            vram += 32 * 3;
        else
            vram += 32 * 1;
    }

}*/

NAKED
void sub_800BC24(void)
{
    asm_unified("\n\
    push {r4, r5, lr}\n\
	ldr r0, _0800BC50\n\
	ldrh r0, [r0, #0xc]\n\
	movs r1, #0\n\
	bl sub_800DDA0\n\
	ldr r5, _0800BC54\n\
	movs r4, #0\n\
_0800BC34:\n\
	ldr r0, _0800BC58\n\
	subs r1, r4, #5\n\
	adds r1, r1, r0\n\
	ldrb r0, [r1]\n\
	cmp r0, #0xa\n\
	beq _0800BC44\n\
	cmp r4, #4\n\
	bhi _0800BC64\n\
_0800BC44:\n\
	adds r0, r5, #0\n\
	ldr r1, _0800BC5C\n\
	ldr r2, _0800BC60\n\
	bl sub_8020968\n\
	b _0800BC86\n\
	.align 2, 0\n\
_0800BC50: .4byte gCardInfo\n\
_0800BC54: .4byte 0x02005400\n\
_0800BC58: .4byte 0x02021BD0\n\
_0800BC5C: .4byte 0x00004081\n\
_0800BC60: .4byte 0x00000101\n\
_0800BC64:\n\
	ldrb r0, [r1]\n\
	ldr r2, _0800BC94\n\
	adds r1, r0, r2\n\
	movs r2, #0xff\n\
	ands r1, r2\n\
	lsls r1, r1, #8\n\
	ldr r2, _0800BC94\n\
	adds r0, r0, r2\n\
	movs r2, #0xff\n\
	lsls r2, r2, #8\n\
	ands r0, r2\n\
	asrs r0, r0, #8\n\
	orrs r1, r0\n\
	adds r0, r5, #0\n\
	ldr r2, _0800BC98\n\
	bl sub_8020968\n\
_0800BC86:\n\
	movs r0, #1\n\
	ands r0, r4\n\
	cmp r0, #0\n\
	beq _0800BC9C\n\
	adds r5, #0x60\n\
	b _0800BC9E\n\
	.align 2, 0\n\
_0800BC94: .4byte 0x0000824F\n\
_0800BC98: .4byte 0x00000101\n\
_0800BC9C:\n\
	adds r5, #0x20\n\
_0800BC9E:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x18\n\
	lsrs r4, r0, #0x18\n\
	cmp r4, #9\n\
	bls _0800BC34\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00, 0x00");
}

void sub_800BCB0(void *src)  //print card description
{
    CpuFastSet(src, &gBgVram.cbb1[148*32], 140*32/4);
}

void *sub_802BF50(u8 attribute);
void *sub_803F02C(u8 type);
void sub_8020A3C(void *, void *, u16);
extern u8* g8DFC288[];
extern u8* g8DFCF0C[];

void sub_800BCC4(void)   //print summon (attribute) name
{
    sub_8020A3C(&gBgVram.cbb1[96*32], sub_802BF50(gCardInfo.attribute), 0x901);
}

void sub_800BCEC(void)  //print type name
{
    sub_8020A3C(&gBgVram.cbb1[68*32], sub_803F02C(gCardInfo.type), 0x901);
}

u8 *sub_800BD14(u16 cardId)
{
    return g8DFC288[cardId];
}

u8* sub_800BD24(u16 cardId)
{
    return g8DFCF0C[cardId];
}

void sub_800BD44(void);
void sub_800BDA0(void);

void sub_800BD34(void)
{
    sub_800BD44();
    sub_800BDA0();
}

struct Unk2021AF0
{
    u64 unk0;
    u64 unk8;
    u16 unk10;
    u8 unk12;
};

extern struct Unk2021AF0 g2021AF0;
extern u64 g8DFDB90[];

void sub_800BD44(void)
{
    u8 val = g2021AF0.unk12 - 1;

    if (val < 250)
    {
        g2021AF0.unk0 = g8DFDB90[g2021AF0.unk10] * (251 - g2021AF0.unk12) / 250;
        if (!g2021AF0.unk0)
            g2021AF0.unk0 = 1;
    }
    else
        g2021AF0.unk0 = 0;
}

void sub_800BDA0(void)
{
    if (g2021AF0.unk12 < 250)
        g2021AF0.unk8 = g8DFDB90[g2021AF0.unk10] * (250 - g2021AF0.unk12) / 5000;
    else
        g2021AF0.unk8 = g8DFDB90[g2021AF0.unk10] / 5000;
    if (!g2021AF0.unk8)
        g2021AF0.unk8 = 1;
}


void sub_8035038(u16);
void sub_8021B80(void);
void sub_8008F24(void);
void sub_801DA20(void);
void sub_80090B8(void);
void sub_800BF28(void);
s32 sub_8008644(void);
void sub_8008F88(u8);
void sub_800D904();
void sub_800ABB4(void);
void sub_800AA58(u8);
bool32 sub_800BF54(void);
bool32 sub_800C558(void);
void sub_800DAA4(void);
void sub_800ABE4(void);
void sub_0800ABE0(void);
void sub_8035020(u16);

void sub_800BE0C(void) //TrunkMenu before dueling
{
    u8 r4;

    sub_8035038(2);
    PlayMusic(213);
    sub_8021B80();
    sub_8008F24();
    sub_801DA20();
    sub_80090B8();
    PlayMusic(143);
    sub_800BF28();

    r4 = 1;
    while (r4)
    {
        switch (sub_8008644())
        {
        case 0x40:
            sub_8008F88(3);
            sub_800D904(3);
            sub_800ABB4();
            sub_800AA58(4);
            break;
        case 0x140:
            sub_8008F88(5);
            sub_800D904(3);
            sub_800ABB4();
            sub_800AA58(4);
            break;
        case 0x80:
            sub_8008F88(2);
            sub_800D904(3);
            sub_800ABB4();
            sub_800AA58(4);
            break;
        case 0x180:
            sub_8008F88(4);
            sub_800D904(3);
            sub_800ABB4();
            sub_800AA58(4);
            break;
        case 1:
            if (!sub_800BF54())
                r4 = 0;
            sub_800AA58(7);
            break;
        case 2:
            if (!sub_800C558())
                r4 = 0;
            sub_800AA58(7);
            break;
        case 0x200:
            sub_8008F88(6);
            sub_800D904(4);
            sub_800ABB4();
            sub_800AA58(4);
            break;
        case 8:
            sub_800DAA4();
            sub_800D904(8);
            sub_800AA58(8);
            break;
        case 4:
            sub_8008F88(10);
            sub_800D904(7);
            sub_800AA58(9);
            sub_800ABE4();
            break;
        default:
            sub_0800ABE0();
            sub_800AA58(5);
        }
    }
    sub_8035020(2);
}

void sub_800BF1C(void)
{
    gAnte = CARD_NONE;
}

void sub_800ABA8(void);

void sub_800BF28(void)
{
    gAnte = CARD_NONE;
    sub_800D904();
    sub_800D904(2);
    sub_800AA58(1);
    sub_800ABA8();
    sub_800AA58(3);
}

struct UnkStruct_2020E10
{
    s16 unk0; //current card position in trunk?
    u8 unk2;
    u8 unk3;            //show: nothing, atk/def, attribute(summon), cost,
    u8 unk4;            //cursor
    u8 filler5[7];
    u16 unkC[TRUNK_SIZE - 1]; //trunk_layout?
};

extern struct UnkStruct_2020E10 gUnkStruct_2020E10;
extern u8 g8DFF498[];
extern u8 g8DFF49B[];
extern u8 g8DFF4A4[];
extern u8 g8DFF4A6[];


void sub_800C0D8(void);
void sub_800C208(void);
void sub_80081DC(void (*)(void));
void sub_8008220(void);
s32 sub_80086D8(void);
void sub_800C1BC(void);
bool8 sub_800C2C0(void);
void sub_8008A48(void);
void sub_800C3C4(void);
void sub_800C264(void);

void LoadOam(void);
void sub_800C4F8(void);

bool32 sub_800BF54(void)   //handle trunk input?
{
    u8 r6;
    u8 r5 = 1;
    gUnkStruct_2020E10.unk4 = 0;

    sub_800C0D8();
    sub_800C208();
    PlayMusic(55);
    sub_80081DC(sub_800C4F8);
    sub_8008220();

    r6 = 1;
    while (r6)
    {
        switch (sub_80086D8())
        {
        case 0x40:
            gUnkStruct_2020E10.unk4 = g8DFF498[gUnkStruct_2020E10.unk4];
            sub_800C208();
            PlayMusic(54);
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 0x80:
            gUnkStruct_2020E10.unk4 = g8DFF49B[gUnkStruct_2020E10.unk4];
            sub_800C208();
            PlayMusic(54);
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 1:
            switch (gUnkStruct_2020E10.unk4)
            {
            case 0:  //DETAILS
                sub_800C1BC();
                break;
            case 1:   //USE AS ANTE
                if (!sub_800C2C0())
                    r5 = 0;
                goto end;
            case 2:  //EXIT
                PlayMusic(55);
                goto end;
            default:
                sub_8008220();
                break;
            }
            break;
        case 2:
            PlayMusic(56);
            goto end;
        default:
            sub_8008220();
            break;
        }
    }
    end:
    sub_8008A48();
    return r5;
}

bool8 sub_800C020(void)   //handle trunk input?
{
    bool8 r6;
    bool8 r5 = 1;
    gUnkStruct_2020E10.unk4 = 0;

    sub_800C3C4();
    sub_800C264();
    PlayMusic(55);
    sub_80081DC(sub_800C4F8);
    sub_8008220();

    r6 = 1;
    while (r6)
    {
        switch (sub_80086D8())
        {
        case 0x40:
            gUnkStruct_2020E10.unk4 = g8DFF4A4[gUnkStruct_2020E10.unk4];
            sub_800C264();
            PlayMusic(54);
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 0x80:
            gUnkStruct_2020E10.unk4 = g8DFF4A6[gUnkStruct_2020E10.unk4];
            sub_800C264();
            PlayMusic(54);
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 1:
            switch (gUnkStruct_2020E10.unk4)
            {
            case 0:
                PlayMusic(55);
                goto end;
            case 1:
                PlayMusic(222);
                r5 = 0;
                goto end;
            default:
                sub_8008220();
                break;
            }
            break;
        case 2:
            PlayMusic(56);
            goto end;
        default:
            sub_8008220();
            break;
        }
    }
    end:
    return r5;
}

extern u16 gUnk_808CBA0[][30];
extern u8 g8DF811C[];
extern u8 g80ADEFC[];
u16 sub_08007FEC(u8, u8, u16);
void sub_800800C(u8, u8, u16, u16);

void sub_800C0D8(void)
{
    u8 i;
    u16 r7;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808CBA0[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);
    r7 = sub_08007FEC(9, 9, 0x7800) & 0xFF00;

    for (i = 0; i < 20; i++)
    {
        sub_800800C(i + 9, 11, 0x7800, (g8DF811C[i] + 21) | r7);
        sub_800800C(i + 9, 12, 0x7800, (g8DF811C[i] + 23) | r7);
        sub_800800C(i + 9, 13, 0x7800, (g8DF811C[i] + 61) | r7);
        sub_800800C(i + 9, 14, 0x7800, (g8DF811C[i] + 63) | r7);
    }
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80ADEFC, 0x900);
}

u16 sub_800901C(u8);

void sub_800C1BC(void)
{
    SetCardInfo(sub_800901C(2));
    PlayMusic(55);
    sub_801F6B0();
    sub_800D904(0);
    sub_800D904(2);
    sub_800AA58(1);
    sub_800ABA8();
    sub_800C0D8();
    sub_800C208();
    sub_80081DC(sub_800C4F8);
    sub_8008220();
}

NAKED
void sub_800C208(void)
{
    asm_unified("\n\
    push {r4, r5, lr}\n\
	ldr r3, _0800C24C\n\
	ldr r2, _0800C250\n\
	ldr r5, _0800C254\n\
	ldrb r0, [r5, #4]\n\
	adds r1, r0, r2\n\
	ldrb r1, [r1]\n\
	ldr r4, _0800C258\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x17\n\
	orrs r1, r0\n\
	str r1, [r3]\n\
	ldr r0, _0800C25C\n\
	str r0, [r3, #4]\n\
	ldrb r0, [r5, #4]\n\
	adds r2, r0, r2\n\
	ldrb r1, [r2]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	ldr r0, _0800C260\n\
	orrs r1, r0\n\
	str r1, [r3, #8]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #1\n\
	str r0, [r3, #0xc]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800C24C: .4byte 0x02018430 @oambuff + i (cursor icon?)\n\
_0800C250: .4byte 0x08DFF49E\n\
_0800C254: .4byte gUnkStruct_2020E10\n\
_0800C258: .4byte 0x08DFF4A1\n\
_0800C25C: .4byte 0x0000C120\n\
_0800C260: .4byte 0x40000800");
}

NAKED
void sub_800C264(void)
{
    asm_unified("\n\
    push {r4, r5, lr}\n\
	ldr r3, _0800C2A8\n\
	ldr r2, _0800C2AC\n\
	ldr r5, _0800C2B0\n\
	ldrb r0, [r5, #4]\n\
	adds r1, r0, r2\n\
	ldrb r1, [r1]\n\
	ldr r4, _0800C2B4\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x17\n\
	orrs r1, r0\n\
	str r1, [r3]\n\
	ldr r0, _0800C2B8\n\
	str r0, [r3, #4]\n\
	ldrb r0, [r5, #4]\n\
	adds r2, r0, r2\n\
	ldrb r1, [r2]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	ldr r0, _0800C2BC\n\
	orrs r1, r0\n\
	str r1, [r3, #8]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #1\n\
	str r0, [r3, #0xc]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800C2A8: .4byte 0x02018430\n\
_0800C2AC: .4byte 0x08DFF4A8\n\
_0800C2B0: .4byte gUnkStruct_2020E10\n\
_0800C2B4: .4byte 0x08DFF4AA\n\
_0800C2B8: .4byte 0x0000C120\n\
_0800C2BC: .4byte 0x40000800");
}

int GetTrunkCardQty(u16);
int IsGoodAnte(u16);
void sub_800C378(void);
void sub_800C32C(void);

bool8 sub_800C2C0(void)
{
    bool32 r6 = 1;
    u16 r4 = sub_800901C(2);

    if (GetTrunkCardQty(r4) < 2)
        sub_800C32C();
    else
    {
        if (IsGodCard(r4) == TRUE)
            sub_800C378();
        else
        {
            if (!IsGoodAnte(r4))
            {
                if (!sub_800C020())
                {
                    r6 = 0;
                    gAnte = r4;
                }
            }
            else
            {
                r6 = 0;
                gAnte = r4;
                PlayMusic(222);
            }
        }
    }

    sub_8008220();
    return r6;
}

void sub_800C430(void);
void sub_800C494(void);
void sub_800C530(void);


void sub_800C32C(void)
{

    gUnkStruct_2020E10.unk4 = 0;
    sub_800C430();
    PlayMusic(57);
    sub_800C530();
    sub_80081DC(sub_800C4F8);
    sub_8008220();
    {
        s32 v, r;
        while ((r=sub_80086D8()<<16), //fakematch
               v=0x30000,
               !(v &= r))
            sub_8008220();
    }

    PlayMusic(56);
}

void sub_800C378(void)
{

    gUnkStruct_2020E10.unk4 = 0;
    sub_800C494();
    PlayMusic(57);
    sub_800C530();
    sub_80081DC(sub_800C4F8);
    sub_8008220();
    {
        s32 v, r;
        while ((r=sub_80086D8()<<16),  //fakematch
               v=0x30000,
               !(v &= r))
            sub_8008220();
    }

    PlayMusic(56);
}

extern u16 gUnk_808D050[][30];
extern u8 g80AE02C[];
extern u8 g80AE1A8[];
extern u8 g80AE370[];

void sub_800C3C4(void)
{
    u8 i;

    for (i = 0; i < 20; i++)
      CpuCopy32(gUnk_808D050[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80AE02C, 0x900);
}

void sub_800C430(void)
{
    u32 i;

    for (i = 0; i < 20; i++)
      CpuCopy32(gUnk_808D050[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80AE1A8, 0x900);
}

void sub_800C494(void)
{
    u32 i;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808D050[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80AE370, 0x900);
}

void LoadPalettes(void);
void LoadCharblock1(void);

void sub_800C4F8(void)
{
    LoadPalettes();
    LoadOam();
    LoadCharblock1();
    REG_DISPCNT = DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
    REG_BLDALPHA = 6;
    REG_BLDY = 10;
    REG_BLDCNT |= 8; //todo
}

NAKED
void sub_800C530(void)
{
    asm_unified("\n\
    ldr r1, _0800C548\n\
	ldr r0, _0800C54C\n\
	str r0, [r1]\n\
	ldr r0, _0800C550\n\
	str r0, [r1, #4]\n\
	ldr r0, _0800C554\n\
	str r0, [r1, #8]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #1\n\
	str r0, [r1, #0xc]\n\
	bx lr\n\
	.align 2, 0\n\
_0800C548: .4byte 0x02018430\n\
_0800C54C: .4byte 0x40F000A0\n\
_0800C550: .4byte 0x0000C120\n\
_0800C554: .4byte 0x40F008A0");
}

extern u8 g8DFF4AC[];
extern u8 g8DFF4AE[];
void sub_800C608(void);
void sub_800C7A0(void);
void sub_800C7FC(void);

bool32 sub_800C558(void)
{
    bool8 r5, r6;

    gUnkStruct_2020E10.unk4 = 0;
    r5 = 1;
    sub_800C608();
    sub_800C7A0();
    PlayMusic(55);
    sub_80081DC(sub_800C7FC);
    sub_8008220();

    r6 = 1;
    while (r6)
    {
        switch (sub_80086D8())
        {
        case 0x40:
            gUnkStruct_2020E10.unk4 = g8DFF4AC[gUnkStruct_2020E10.unk4];
            PlayMusic(54);
            sub_800C7A0();
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 0x80:
            gUnkStruct_2020E10.unk4 = g8DFF4AE[gUnkStruct_2020E10.unk4];
            PlayMusic(54);
            sub_800C7A0();
            sub_80081DC(LoadOam);
            sub_8008220();
            break;
        case 1:
            switch (gUnkStruct_2020E10.unk4)
            {
            case 1:
                r5 = 0;
                PlayMusic(222);
                break;
            default:
                PlayMusic(55);
                break;
            }
            goto end;
        case 2:
            PlayMusic(56);
            goto end;
        default:
            sub_8008220();
            break;
        }
    }
    end:
    sub_8008A48();
    return r5;
}

extern u8 g80AE544[];

void sub_800C608(void)
{
    u8 i;
    u16 sb, r7;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808D050[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);
    sb = sub_08007FEC(0, 3, 0x7800);
    r7 = sub_08007FEC(3, 7, 0x7800) & 0xFF00;

    for (i = 0; i < 28; i++)
    {
        sub_800800C(i + 1, 7, 0x7800, (g8DF811C[i] + 1) | r7);
        sub_800800C(i + 1, 8, 0x7800, (g8DF811C[i] + 3) | r7);
        sub_800800C(i + 1, 9, 0x7800, (g8DF811C[i] + 57) | r7);
        sub_800800C(i + 1, 10, 0x7800, (g8DF811C[i] + 59) | r7);
    }

    for (i = 0; i < 4; i++)
    {
        sub_800800C(i + 12, 12, 0x7800, (g8DF811C[i] + 113) | r7);
        sub_800800C(i + 12, 13, 0x7800, (g8DF811C[i] + 115) | r7);
        sub_800800C(i + 12, 14, 0x7800, (g8DF811C[i] + 121) | r7);
        sub_800800C(i + 12, 15, 0x7800, (g8DF811C[i] + 123) | r7);
    }

    for (i = 0; i < 2; i++)
    {
        sub_800800C(i + 16, 12, 0x7800, sb);
        sub_800800C(i + 16, 13, 0x7800, sb);
        sub_800800C(i + 16, 14, 0x7800, sb);
        sub_800800C(i + 16, 15, 0x7800, sb);
    }
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80AE544, 0x900);
}

NAKED
void sub_800C7A0(void)
{
    asm_unified("\n\
    push {r4, r5, lr}\n\
	ldr r3, _0800C7E4\n\
	ldr r2, _0800C7E8\n\
	ldr r5, _0800C7EC\n\
	ldrb r0, [r5, #4]\n\
	adds r1, r0, r2\n\
	ldrb r1, [r1]\n\
	ldr r4, _0800C7F0\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	movs r0, #0x80\n\
	lsls r0, r0, #0x17\n\
	orrs r1, r0\n\
	str r1, [r3]\n\
	ldr r0, _0800C7F4\n\
	str r0, [r3, #4]\n\
	ldrb r0, [r5, #4]\n\
	adds r2, r0, r2\n\
	ldrb r1, [r2]\n\
	adds r0, r0, r4\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x10\n\
	orrs r1, r0\n\
	ldr r0, _0800C7F8\n\
	orrs r1, r0\n\
	str r1, [r3, #8]\n\
	movs r0, #0x90\n\
	lsls r0, r0, #1\n\
	str r0, [r3, #0xc]\n\
	pop {r4, r5}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800C7E4: .4byte 0x02018430\n\
_0800C7E8: .4byte 0x08DFF4B0\n\
_0800C7EC: .4byte gUnkStruct_2020E10\n\
_0800C7F0: .4byte 0x08DFF4B2\n\
_0800C7F4: .4byte 0x0000C120\n\
_0800C7F8: .4byte 0x40000800");
}

void sub_800C7FC(void)
{
    LoadPalettes();
    LoadOam();
    LoadCharblock1();
    REG_DISPCNT = DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJWIN_ON;
    REG_BLDALPHA = 6;
    REG_BLDY = 10;
    REG_BLDCNT |= 8; //todo
}

extern u32 gUnk_808918C[];
extern u8 gUnk_808C1C0[];
extern u8 g8DFA6B4[];
extern u8 g8DFAB54[];
extern u8 g8DFAFF4[];
extern u16 gUnk_808B860[][30];

void sub_800C834(void)
{
    u8 i;

    LZ77UnCompWram(gUnk_808918C, gBgVram.cbb0);

    switch (gLanguage)
    {
    case FRENCH:
        CpuFastSet(g8DFA6B4, gBgVram.cbb0, 0x48);
        CpuFastSet(&g8DFA6B4[32*9], &gBgVram.cbb0[32*30], 0x48);
        CpuFastSet(&g8DFA6B4[32*18], &gBgVram.cbb0[32*60], 0x48);
        CpuFastSet(&g8DFA6B4[32*27], &gBgVram.cbb0[32*10], 0x50);
        break;
    case GERMAN:
        CpuFastSet(g8DFAB54, gBgVram.cbb0, 0x48);
        CpuFastSet(&g8DFAB54[32*9], &gBgVram.cbb0[32*30], 0x48);
        CpuFastSet(&g8DFAB54[32*18], &gBgVram.cbb0[32*60], 0x48);
        CpuFastSet(&g8DFAB54[32*27], &gBgVram.cbb0[32*10], 0x50);
        break;
    case ITALIAN:
        CpuFastSet(g8DFAFF4, gBgVram.cbb0, 0x48);
        CpuFastSet(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x48);
        CpuFastSet(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x48);
        CpuFastSet(&g8DFAFF4[32*27], &gBgVram.cbb0[32*10], 0x50);
        break;
    case SPANISH:
        CpuFastSet(g8DFAFF4, gBgVram.cbb0, 0x48);
        CpuFastSet(&g8DFAFF4[32*9], &gBgVram.cbb0[32*30], 0x48);
        CpuFastSet(&g8DFAFF4[32*18], &gBgVram.cbb0[32*60], 0x48);
        CpuFastSet(&g8DFAFF4[32*37], &gBgVram.cbb0[32*10], 0x50);
        break;
    }

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808B860[i], &((struct Sbb*)&gBgVram)->sbb7[i], 60);

    CpuCopy32(gUnk_808C1C0, g02000000.bg, 128);
    CpuFill16(0, gBgVram.sbb18, 32);
}

extern u16 gUnk_808C6F0[][30];
extern u8 g80AE800[];

void sub_800C970(void)
{
    u8 i;
    u16 r8, sb;

    for (i = 0; i < 20; i++)
        CpuCopy32(gUnk_808C6F0[i], &(((struct Sbb*)&gBgVram)->sbbF[i])/*fix*/, 60);

    CpuFill16(0, gBgVram.cbb1, 32);

    sb = sub_08007FEC(0, 2, 0x7800);
    r8 = sub_08007FEC(2, 2, 0x7800) & 0xFF00;

    for (i = 0; i < 6; i++)
    {
        sub_800800C(i + 4, 6, 0x7800, (g8DF811C[i] + 29) | r8);
        sub_800800C(i + 4, 7, 0x7800, (g8DF811C[i] + 31) | r8);
        sub_800800C(i + 4, 8, 0x7800, (g8DF811C[i] + 61) | r8);
        sub_800800C(i + 4, 9, 0x7800, (g8DF811C[i] + 63) | r8);
        sub_800800C(i + 4, 10, 0x7800, (g8DF811C[i] + 93) | r8);
        sub_800800C(i + 4, 11, 0x7800, (g8DF811C[i] + 95) | r8);
    }

    for (i = 0; i < 8; i++)
    {
        sub_800800C(i + 4, 12, 0x7800, (g8DF811C[i] + 125) | r8);
        sub_800800C(i + 4, 13, 0x7800, (g8DF811C[i] + 127) | r8);
        sub_800800C(i + 16, 12, 0x7800, (g8DF811C[i] + 141) | r8);
        sub_800800C(i + 16, 13, 0x7800, (g8DF811C[i] + 143) | r8);
        sub_800800C(i + 4, 17, 0x7800, (g8DF811C[i] + 177) | r8);
        sub_800800C(i + 4, 18, 0x7800, (g8DF811C[i] + 179) | r8);
    }

    for (i = 0; i < 4; i++)
    {
        sub_800800C(i + 10, 6, 0x7800, sb);
        sub_800800C(i + 10, 7, 0x7800, sb);
        sub_800800C(i + 10, 8, 0x7800, sb);
        sub_800800C(i + 10, 9, 0x7800, sb);
        sub_800800C(i + 10, 10, 0x7800, sb);
        sub_800800C(i + 10, 11, 0x7800, sb);
    }

    for (i = 0; i < 2; i++)
    {
        sub_800800C(i + 12, 12, 0x7800, sb);
        sub_800800C(i + 12, 13, 0x7800, sb);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 6, 0x7800, (g8DF811C[i] + 41) | r8);
        sub_800800C(i + 16, 7, 0x7800, (g8DF811C[i] + 43) | r8);
        sub_800800C(i + 16, 8, 0x7800, (g8DF811C[i] + 73) | r8);
        sub_800800C(i + 16, 9, 0x7800, (g8DF811C[i] + 75) | r8);
        sub_800800C(i + 16, 10, 0x7800, (g8DF811C[i] + 105) | r8);
        sub_800800C(i + 16, 11, 0x7800, (g8DF811C[i] + 107) | r8);
    }

    for (i = 0; i < 10; i++)
    {
        sub_800800C(i + 16, 14, 0x7800, (g8DF811C[i] + 193) | r8);
        sub_800800C(i + 16, 15, 0x7800, (g8DF811C[i] + 195) | r8);
        sub_800800C(i + 4, 14, 0x7800, (g8DF811C[i] + 157) | r8);
        sub_800800C(i + 4, 15, 0x7800, (g8DF811C[i] + 159) | r8);
    }
    sub_8020A3C(&gBgVram.cbb1[32]/*fix*/, g80AE800, 0x900);
}

extern u8 g80AEA74[];
extern u8 g80AEA78[];
u32 GetDeckCapacity(void);


/*
void sub_800CCAC(void)
{
    u8 i;

    CpuFill16(0, gBgVram.cbb2, 32);
    CpuFill16(0, ((struct Sbb*)&gBgVram)->sbb17, 0x800);
    sub_8020A3C(&gBgVram.cbb2[32], g80AEA74, 0x801);
    sub_8020A3C(&gBgVram.cbb2[64], g80AEA78, 0x901);
    ((struct Sbb*)&gBgVram)->sbb17[1][15] = 0x5001; //slash
    sub_800DDA0(GetDeckCapacity(), 0);

    for (i = 0; i < 5; i++)
    {

        gBgVram.cbb0[i + 0x2e18] = g2021BD0[i] + 0x5209; //deck capacity digits
    }
        //(i + 0x5C30) * 2
    ((struct Sbb*)&gBgVram)->sbb17[1][24] = 0x5001; //slash
    ((struct Sbb*)&gBgVram)->sbb17[1][25] = 0x520D; //4
    ((struct Sbb*)&gBgVram)->sbb17[1][26] = 0x5209; //0
}*/
