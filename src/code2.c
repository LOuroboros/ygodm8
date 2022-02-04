#include "global.h"
#include "duel.h"
#include "card.h"
#include "constants/card_ids.h"

void sub_803FD14(void);
void sub_80581DC();
void sub_800F830(void);
int sub_803EFAC(u16); //implicit decl in code2.c, caller: sub_8011528?
int sub_803EF7C(void); //implicit decl in code2.c, caller: sub_80118E8?


static inline u16 foo (void) {
  return gUnk2021C00.unk2 >> 4;
}

static inline u16 foo2 (void) {
  return gUnk2021C00.unk2 & 0xF;
}

struct Bruhh
{
    u16 a;
    u16 b;
    u32 c;
};

/*struct Breh
{
    u16 a;
    u16 b;
    u32 c;
    u32 d;
    u32 e;
};*/

struct UnkStr //AI data?
{
    struct Duel duel;
    struct DuelDeck duelDeck[2];
    u16 lifePoints[2];
    u8 duelistStatus[2];
    u8 filler1A8[0x35A];
    struct Bruhh unk504[0x3B2];
    u16 unk2294;
    u16 unk2296; //unused?
    u32 unk2298;
    u32 unk229C;
    struct Bruhh unk22A0[2][2];
};

extern struct UnkStr *gUnk_8DFF6A4;
extern void (*gUnk_8DFF6A8[])(void);
extern void (*gUnk_8DFF74C[])(void);
int sub_802061C(u16);

void sub_800E0D4(void)
{
    sub_803FD14();
    g8DFF600[gUnk2021C00.unk0]();
}

void sub_800E0F8(void)
{
    sub_803FD14();
    g8DFF55C[gUnk2021C00.unk0]();
}

void sub_800E11C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E170(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E1C4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E22C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E294(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E324(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E3B4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;
    u8 row5 = gUnk2021C00.unk5 >> 4;
    u8 col5 = gUnk2021C00.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E460(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;
    u8 row4 = gUnk2021C00.unk4 >> 4;
    u8 col4 = gUnk2021C00.unk4 & 0xF;
    u8 row5 = gUnk2021C00.unk5 >> 4;
    u8 col5 = gUnk2021C00.unk5 & 0xF;

    ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
    ClearZoneAndSendMonToGraveyard(gZones[row3][col3], 0);
    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
    sub_80404F0(0);
    sub_8040540(4);
}

void sub_800E50C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E54C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E58C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E5E4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    sub_803F8E0(4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E63C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    sub_803F908(col3 ,4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E6B8(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gZones[row3][col3]->isFaceUp = TRUE;
    sub_803F908(col3 ,4 - col2);
    sub_803F29C();
    sub_803F224();
}

void sub_800E734(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E794(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E7F4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E854(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gUnk020245A0.unk2 = row2;
    gUnk020245A0.unk3 = col2;
    gUnk020245A0.id = gZones[row2][col2]->id;
    sub_80586DC();
    sub_80581DC();
}

void sub_800E8B4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = FALSE;
    gZones[row2][col2]->isFaceUp = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
    gMonEffect.id = gZones[row2][col2]->id;
    gMonEffect.row = row2;
    gMonEffect.zone = col2;
    ActivateMonEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        sub_8040540(4);
}

void sub_800E928(void){}

void sub_800E92C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800E958(void)
{

    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800E98C(void)
{
    sub_800E63C();
}

void sub_800E998(void)
{
    sub_800E7F4();
}

void sub_800E9A4(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800E9D0(void)
{

    u8 row2 = foo();
    u8 col2 = foo2();

    gZones[row2][col2]->isDefending = TRUE;
    gZones[row2][col2]->isLocked = TRUE;
}

void sub_800EA04(void)
{
    sub_800E6B8();
}

void sub_800EA10(void)
{
    sub_800E854();
}

void sub_800EA1C(void){}

void sub_800EA20(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EA68(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EAB0(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EAF8(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EB40(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk4 = row2;
    gUnk2024260.unk5 = col2;
    gUnk2024260.unk2 = row3;
    gUnk2024260.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EB8C(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk4 = row2;
    gUnk2024260.unk5 = col2;
    gUnk2024260.unk2 = row3;
    gUnk2024260.unk3 = col3;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EBD8(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EC20(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800EC68(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    if (gNotSure[TURN_PLAYER]->unkThree)
        sub_8040540(4);
    ClearZone(gZones[row2][col2]);
}

void sub_800ECC0(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800ED00(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    CopyCard(gZones[row3][col3], gZones[row2][col2]);
    ClearZone(gZones[row2][col2]);
}

void sub_800ED48(void)
{
    u8 row2;
    u8 col2;
    u8 row4;
    u8 col4;
    u8 row5;
    u8 col5;

    row2 = foo();
    col2 = foo2();
    row4 = gUnk2021C00.unk4 >> 4;
    col4 = gUnk2021C00.unk4 & 0xF;
    row5 = gUnk2021C00.unk5 >> 4;
    col5 = gUnk2021C00.unk5 & 0xF;

    if (sub_8021D00(gZones[row2][col2]->id) == 2)
    {
        ClearZoneAndSendMonToGraveyard(gZones[row4][col4], 0);
        ClearZoneAndSendMonToGraveyard(gZones[row5][col5], 0);
    }
    gUnk2024260.id = gZones[row2][col2]->id;
    gUnk2024260.unk2 = row2;
    gUnk2024260.unk3 = col2;
    ActivateSpellEffect();
    ClearZone(gZones[row2][col2]);
}

void sub_800EDF8(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();

    ClearZoneAndSendMonToGraveyard(gZones[row2][col2], 0);
}

void sub_800EE24(void)
{
    u8 i;

    gUnk_8DFF6A4->duel = gDuel;
    for (i = 0; i < 2; i++)
    {
        gUnk_8DFF6A4->duelDeck[i].cardsDrawn = gUnk20240F0[i].cardsDrawn;
        gUnk_8DFF6A4->lifePoints[i] = gLifePoints[i];
        gUnk_8DFF6A4->duelistStatus[i] = gDuelistStatus[i];
    }
}

void sub_800EE94(void)
{
    u8 i;

    gDuel = gUnk_8DFF6A4->duel;
    for (i = 0; i < 2; i++)
    {
        gUnk20240F0[i].cardsDrawn = gUnk_8DFF6A4->duelDeck[i].cardsDrawn;
        gLifePoints[i] = gUnk_8DFF6A4->lifePoints[i];
        gDuelistStatus[i] = gUnk_8DFF6A4->duelistStatus[i];
    }
}

u16 sub_800EF0C(void)
{
    u16 i;
    struct Bruhh r2;

    r2.a = 0;
    r2.c = 0;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        if (gUnk_8DFF6A4->unk504[i].c > r2.c)
        {
            r2.c = gUnk_8DFF6A4->unk504[i].c;
            r2.a = gUnk_8DFF6A4->unk504[i].a;
        }
    }
    return r2.a;
}

void sub_800EF7C(u8 sb)
{
    u16 i;
    struct Bruhh r2;

    r2.a = 0;
    r2.c = 0;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        if (gUnk_8DFF6A4->unk504[i].c > r2.c)
        {
            r2.c = gUnk_8DFF6A4->unk504[i].c;
            r2.a = gUnk_8DFF6A4->unk504[i].a;
        }
    }
    gUnk_8DFF6A4->unk22A0[sb][1].a = r2.a;
    gUnk_8DFF6A4->unk22A0[sb][1].c = r2.c;
}
/*
void sub_800F014(void)
{
    u16 i, r7, r4;

    for (i = 0; i < gUnk_8DFF6A4->unk2294; i++)
    {
        for (r7 = 0; r7 < 2; r7++)
        {
            for (r4 = 2; r4 > r7; r4--)
            {
                gUnk_8DFF6A4->unk22A0[r4][0].a = gUnk_8DFF6A4->unk22A0[]
                if (gUnk_8DFF6A4->unk504[i].c > r2.c)
            }
        }
    }
}*/

NAKED
void sub_800F014(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	movs r2, #0\n\
	ldr r1, _0800F0B8\n\
	ldr r0, [r1]\n\
	ldr r3, _0800F0BC\n\
	adds r0, r0, r3\n\
	ldrh r0, [r0]\n\
	cmp r2, r0\n\
	bhs _0800F0EE\n\
	ldr r0, _0800F0C0\n\
	mov sl, r0\n\
_0800F034:\n\
	movs r7, #0\n\
	adds r1, r2, #1\n\
	str r1, [sp]\n\
	lsls r2, r2, #3\n\
	mov r8, r2\n\
	movs r2, #0\n\
	mov ip, r2\n\
_0800F042:\n\
	ldr r3, _0800F0B8\n\
	ldr r0, [r3]\n\
	movs r2, #0xa1\n\
	lsls r2, r2, #3\n\
	adds r1, r0, r2\n\
	add r1, r8\n\
	add r0, sl\n\
	add r0, ip\n\
	ldr r1, [r1]\n\
	ldr r0, [r0]\n\
	cmp r1, r0\n\
	bls _0800F0CC\n\
	movs r4, #2\n\
	cmp r4, r7\n\
	bls _0800F08A\n\
	mov sb, r3\n\
	ldr r6, _0800F0C4\n\
	movs r5, #0x10\n\
_0800F066:\n\
	mov r0, sb\n\
	ldr r1, [r0]\n\
	lsls r3, r4, #4\n\
	adds r2, r1, r3\n\
	adds r0, r1, r5\n\
	adds r0, r0, r6\n\
	ldrh r0, [r0]\n\
	adds r2, r2, r6\n\
	strh r0, [r2]\n\
	add r1, sl\n\
	adds r3, r1, r3\n\
	adds r1, r1, r5\n\
	ldr r0, [r1]\n\
	str r0, [r3]\n\
	subs r5, #0x10\n\
	subs r4, #1\n\
	cmp r4, r7\n\
	bhi _0800F066\n\
_0800F08A:\n\
	ldr r2, _0800F0B8\n\
	ldr r1, [r2]\n\
	mov r3, ip\n\
	adds r2, r1, r3\n\
	mov r3, r8\n\
	adds r0, r1, r3\n\
	ldr r3, _0800F0C8\n\
	adds r0, r0, r3\n\
	ldrh r0, [r0]\n\
	ldr r3, _0800F0C4\n\
	adds r2, r2, r3\n\
	strh r0, [r2]\n\
	mov r0, sl\n\
	adds r2, r1, r0\n\
	add r2, ip\n\
	movs r3, #0xa1\n\
	lsls r3, r3, #3\n\
	adds r1, r1, r3\n\
	add r1, r8\n\
	ldr r0, [r1]\n\
	str r0, [r2]\n\
	b _0800F0DA\n\
	.align 2, 0\n\
_0800F0B8: .4byte gUnk_8DFF6A4\n\
_0800F0BC: .4byte 0x00002294\n\
_0800F0C0: .4byte 0x000022A4\n\
_0800F0C4: .4byte 0x000022A0\n\
_0800F0C8: .4byte 0x00000504\n\
_0800F0CC:\n\
	cmp r1, r0\n\
	beq _0800F0DA\n\
	movs r0, #0x10\n\
	add ip, r0\n\
	adds r7, #1\n\
	cmp r7, #2\n\
	bls _0800F042\n\
_0800F0DA:\n\
	ldr r1, [sp]\n\
	lsls r0, r1, #0x10\n\
	lsrs r2, r0, #0x10\n\
	ldr r3, _0800F100\n\
	ldr r0, [r3]\n\
	ldr r1, _0800F104\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	cmp r2, r0\n\
	blo _0800F034\n\
_0800F0EE:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F100: .4byte gUnk_8DFF6A4\n\
_0800F104: .4byte 0x00002294");
}

void sub_800F108(void)
{
    u16 i;

    gUnk_8DFF6A4->unk2294 = 0;
    for (i = 0; i < 0x3B2; i++) //todo: use ARRAY_COUNT
    {
        gUnk_8DFF6A4->unk504[i].a = 0;
        gUnk_8DFF6A4->unk504[i].c = 0;
    }
}
/*
void sub_800F158(void)
{
    u32 i, j;

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {

        }
    }
}*/


NAKED
void sub_800F158(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	movs r0, #0\n\
	ldr r1, _0800F190\n\
	mov ip, r1\n\
	ldr r7, _0800F194\n\
	movs r5, #0\n\
	ldr r6, _0800F198\n\
_0800F166:\n\
	movs r3, #0\n\
	adds r4, r0, #1\n\
	lsls r2, r0, #4\n\
_0800F16C:\n\
	mov r0, ip\n\
	ldr r1, [r0]\n\
	adds r0, r1, r2\n\
	adds r0, r0, r7\n\
	strh r5, [r0]\n\
	adds r1, r1, r6\n\
	adds r1, r1, r2\n\
	str r5, [r1]\n\
	adds r2, #8\n\
	adds r3, #1\n\
	cmp r3, #1\n\
	bls _0800F16C\n\
	adds r0, r4, #0\n\
	cmp r0, #2\n\
	bls _0800F166\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0800F190: .4byte gUnk_8DFF6A4\n\
_0800F194: .4byte 0x000022A0\n\
_0800F198: .4byte 0x000022A4");
}

NAKED
void sub_800F19C(void)
{
    asm_unified("\n\
    push {r4, r5, r6, r7, lr}\n\
	ldr r1, _0800F1DC\n\
	ands r2, r1\n\
	movs r3, #0\n\
	movs r6, #0\n\
	ldr r0, _0800F1E0\n\
	mov ip, r1\n\
	ldr r4, [r0]\n\
	ldr r0, _0800F1E4\n\
	adds r5, r4, r0\n\
	ldr r7, _0800F1E8\n\
_0800F1B2:\n\
	ldr r0, [r5]\n\
	cmp r0, r3\n\
	bls _0800F1C6\n\
	adds r3, r0, #0\n\
	adds r0, r4, r7\n\
	ldrh r1, [r0]\n\
	mov r0, ip\n\
	ands r0, r2\n\
	adds r2, r0, #0\n\
	orrs r2, r1\n\
_0800F1C6:\n\
	adds r4, #0x10\n\
	adds r5, #0x10\n\
	adds r6, #1\n\
	cmp r6, #2\n\
	bls _0800F1B2\n\
	lsls r0, r2, #0x10\n\
	lsrs r0, r0, #0x10\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0800F1DC: .4byte 0xFFFF0000\n\
_0800F1E0: .4byte gUnk_8DFF6A4\n\
_0800F1E4: .4byte 0x000022AC\n\
_0800F1E8: .4byte 0x000022A0");
}

void sub_800F1EC(void)
{
    gUnk_8DFF6A4->unk2298 = 0;
    gUnk_8DFF6A4->unk229C = 0;
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].a = g2021BF8;
    gUnk_8DFF6A8[gUnk2021C00.unk0]();
}

void sub_800F248(void)
{
    gUnk_8DFF74C[gUnk2021C00.unk0]();
    gUnk_8DFF6A4->unk504[gUnk_8DFF6A4->unk2294].c = gUnk_8DFF6A4->unk2298;
    gUnk_8DFF6A4->unk2294++;
}

void sub_800F298(void)
{
    u8 row2 = foo();
    u8 col2 = foo2();
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (sub_802061C(cardId) && NumCardInRow(&gZones[row2][col2], cardId) < 2)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FE;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE0ACDF;
            break;
        case 1:
            gUnk_8DFF6A4->unk2298 = 0x7EE4F29F;
            break;
        case 2:
            gUnk_8DFF6A4->unk2298 = 0x7EE7157F;
            break;
        case 3:
            if (IsGodCard(cardId) == TRUE)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FF;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE9385F;
            break;
        default:
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
            return;
        }
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;

}

void sub_800F46C(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = foo2(); // inline to match
    u16 cardId = gZones[row2][col2]->id;

    SetCardInfo(cardId);
    if (gCardInfo.spellEffect == 2)
    {
        switch (sub_8045390(cardId))
        {
        case 0:
            if (sub_802061C(cardId) && NumCardInRow(&gZones[row2][col2], cardId) < 2)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FE;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE0ACDF;
            break;
        case 1:
            gUnk_8DFF6A4->unk2298 = 0x7EE4F29F;
            break;
        case 2:
            gUnk_8DFF6A4->unk2298 = 0x7EE7157F;
            break;
        case 3:
            if (IsGodCard(cardId) == TRUE)
                gUnk_8DFF6A4->unk2298 = 0x7EDE89FF;
            else
                gUnk_8DFF6A4->unk2298 = 0x7EE9385F;
            break;
        default:
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
            return;
        }
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.atk;
        gUnk_8DFF6A4->unk2298 += 0xFFFE - gCardInfo.def;
    }
    else
        gUnk_8DFF6A4->unk2298 = 0x7EE2CFBF;
}

void sub_800F640(void)
{
    u8 row2 = gUnk2021C00.unk2 >> 4;
    u8 col2 = gUnk2021C00.unk2 & 0xF;
    u8 row3 = gUnk2021C00.unk3 >> 4;
    u8 col3 = gUnk2021C00.unk3 & 0xF;

    SetCardInfo(gZones[row2][col2]->id);
    if (gCardInfo.unk1E)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (sub_80436EC(gZones[row2][col2]) != 1)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (sub_8045390(gZones[row2][col2]->id) != 0)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (sub_802061C(gZones[row2][col2]->id) && NumCardInRow(gZones[row2], gZones[row2][col2]->id) < 2)
        sub_800F830();
    else if (gZones[row3][col3]->id == CARD_NONE)
        gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
    else if (gZones[row3][col3]->isLocked)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else if (sub_803FCBC(gZones[row3][col3]->id) != 1)
        gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
    else
    {
        u16 atk;
        gStatMod.card = gZones[row2][col2]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row2][col2]);
        SetFinalStat(&gStatMod);
        atk = gCardInfo.atk;
        gStatMod.card = gZones[row3][col3]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row3][col3]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
            gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
            gUnk_8DFF6A4->unk2298 = 0x7F32EBBC;
    }
}

void sub_800F830 (void) {
  u8 row2;
  u8 col2;
  u8 row3;
  u8 col3;

  row2 = foo();
  col2 = foo2();
  row3 = gUnk2021C00.unk3 >> 4;
  col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7F1D8EFC;
  else if (gZones[row3][col3]->isLocked)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_803FCBC(gZones[row3][col3]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7F1D8EFC;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F12E09C;
  }
}

void sub_800F95C (void) {
  u8 row2;
  u8 col2;
  u8 row3;
  u8 col3;

  row2 = foo();
  col2 = foo2();
  row3 = gUnk2021C00.unk3 >> 4;
  col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
  else if (gZones[row3][col3]->isLocked)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_803FCBC(gZones[row3][col3]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7F3D9A1C;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
        gUnk_8DFF6A4->unk2298 = 0x7F32EBBC;
  }
}

void sub_800FB00(void)
{
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F5DA53C;
  }
}

void sub_800FC64 (void) {
  u8 row2;
  u8 col2;
  u8 row3;
  u8 col3;

  row2 = foo();
  col2 = foo2();
  row3 = gUnk2021C00.unk3 >> 4;
  col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else
      gUnk_8DFF6A4->unk2298 = 0x7F5DA53C;
  }
}

void sub_800FDC8 (void) {
  u8 row2 = foo();
  u8 col2 = foo2();
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = sub_804069C(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else
        gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
    }
  }
}

void sub_800FFB0 (void) {
  u8 row2 = foo();
  u8 col2 = foo2();
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = sub_804069C(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else
        gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
    }
  }
}

void sub_8010198 (void) {
  u8 row2 = foo();
  u8 col2 = foo2();
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;
  u8 row5 = gUnk2021C00.unk5 >> 4;
  u8 col5 = gUnk2021C00.unk5 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 3)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = sub_804069C(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else {
        gStatMod.card = gZones[row5][col5]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row5][col5]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
          gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
          gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
      }
    }
  }
}

void sub_80103DC (void) {
  u8 row2 = foo();
  u8 col2 = foo2();
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;
  u8 row5 = gUnk2021C00.unk5 >> 4;
  u8 col5 = gUnk2021C00.unk5 & 0xF;

  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row2][col2]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_8045390(gZones[row2][col2]->id) != 3)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row3][col3]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (sub_80436EC(gZones[row4][col4]) != 1)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u16 atk;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    atk = gCardInfo.atk;
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    if (atk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      gStatMod.card = gZones[row4][col4]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = sub_804069C(gZones[row4][col4]);
      SetFinalStat(&gStatMod);
      if (atk <= gCardInfo.atk)
        gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      else {
        gStatMod.card = gZones[row5][col5]->id;
        gStatMod.field = gDuel.field;
        gStatMod.stage = sub_804069C(gZones[row5][col5]);
        SetFinalStat(&gStatMod);
        if (atk <= gCardInfo.atk)
          gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
        else
          gUnk_8DFF6A4->unk2298 = 0x7F7DB05C;
      }
    }
  }
}

void sub_8010620 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u16 atk;
  u16 def;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);

  if (gCardInfo.unk1E) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  else {
    atk = gCardInfo.atk;
    def = gCardInfo.def;
    if (!atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
      return;
    }
  }
  if (!sub_80437D4(1)) {
    if (atk > def)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
  }
  else {
    u8 i;
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE) {
        if (gZones[1][i]->isFaceUp) {
          gStatMod.card = gZones[1][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = sub_804069C(gZones[1][i]);
          SetFinalStat(&gStatMod);
          if (atk <= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
          else if (def >= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
        }
        else {
          gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
          return;
        }
      }
    }
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
  }
}

void sub_8010798 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u16 atk;
  u16 def;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);

  if (!gCardInfo.unk1E) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  else {
    atk = gCardInfo.atk;
    def = gCardInfo.def;
    if (!atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
      return;
    }
  }
  if (!sub_80437D4(1)) {
    if (atk > def)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
  }
  else {
    u8 i;
    for (i = 0; i < 5; i++) {
      if (gZones[1][i]->id != CARD_NONE) {
        if (gZones[1][i]->isFaceUp) {
          gStatMod.card = gZones[1][i]->id;
          gStatMod.field = gDuel.field;
          gStatMod.stage = sub_804069C(gZones[1][i]);
          SetFinalStat(&gStatMod);
          if (atk <= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
          else if (def >= gCardInfo.atk) {
            gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
            return;
          }
        }
        else {
          gUnk_8DFF6A4->unk2298 = 0x7EDE89FB;
          return;
        }
      }
    }
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FD;
  }
}

void sub_8010910 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (gCardInfo.unk1E || !gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EF1C3F6;
    gUnk_8DFF6A4->unk2298 += gCardInfo.atk;
  }
}

void sub_80109A8 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.unk1E || !gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EF1C3F6;
    gUnk_8DFF6A4->unk2298 += gCardInfo.atk;
  }
}

void sub_8010A40 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
    gUnk_8DFF6A4->unk229C = gZones[row3][col3]->id;
  }
}
/*
void sub_8010B08 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;  // r6, sp4
  u8 col2 = gUnk2021C00.unk2 & 0xF; // r7, sp
  u8 row3 = gUnk2021C00.unk3 >> 4; // r5, sp8
  u8 col3 = gUnk2021C00.unk3 & 0xF; // r4
  // try row4 col4 etc..?
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (IsDuelOver() == 1) { //_08010B46
    if (sub_8025534(WhoseTurn()) == 2)
      gUnk_8DFF6A4->unk2298 = 0;
    else
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  }
  else if (gZones[row3][col3]->id != CARD_NONE) { //_08010B94
    if (gUnk_8DFF6A4->unk229C == gZones[row3][col3]->id)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp;
      gStatMod.card = gZones[row2][col2]->id;
      gStatMod.field = gDuel.field;
      gStatMod.stage = sub_804069C(gZones[row2][col2]);
      SetFinalStat(&gStatMod);
      temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7EF0A113;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
  else if (gZones[row2][col2]->id != CARD_NONE) { //_08010BE0
    u32 temp;
    gStatMod.card = gZones[row2][col2]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row2][col2]);
    SetFinalStat(&gStatMod);
    temp = gUnk_8DFF6A4->unk2298;
    temp -= gCardInfo.atk;
    temp += 0x7EF0A113;
    gUnk_8DFF6A4->unk2298 = temp;
  }
  else { //_08010C34
    int a = sub_80437D4(row2);
    if (a > sub_80437D4(row3))
      gUnk_8DFF6A4->unk2298 += 0x7EEE8FA5;
    else
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  }
}*/

NAKED
void sub_8010B08(void)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	ldr r2, _08010B74\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	str r6, [sp, #4]\n\
	movs r1, #0xf\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	str r7, [sp]\n\
	ldrb r0, [r2, #3]\n\
	lsrs r5, r0, #4\n\
	str r5, [sp, #8]\n\
	adds r4, r1, #0\n\
	ands r4, r0\n\
	ldr r0, _08010B78\n\
	mov r8, r0\n\
	ldr r0, [r0]\n\
	ldr r1, _08010B7C\n\
	mov sb, r1\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	ldr r2, _08010B80\n\
	mov sl, r2\n\
	cmp r0, sl\n\
	bne _08010B46\n\
	b _08010C66\n\
_08010B46:\n\
	bl IsDuelOver\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #1\n\
	bne _08010B94\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl sub_8025534\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bne _08010B84\n\
	mov r4, r8\n\
	ldr r0, [r4]\n\
	add r0, sb\n\
	movs r1, #0\n\
	str r1, [r0]\n\
	b _08010C66\n\
	.align 2, 0\n\
_08010B74: .4byte gUnk2021C00\n\
_08010B78: .4byte gUnk_8DFF6A4\n\
_08010B7C: .4byte 0x00002298\n\
_08010B80: .4byte 0x7EDE89F9\n\
_08010B84:\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	add r0, sb\n\
	ldr r1, _08010B90\n\
	str r1, [r0]\n\
	b _08010C66\n\
	.align 2, 0\n\
_08010B90: .4byte 0x7FFFFFFF\n\
_08010B94:\n\
	ldr r3, _08010BC0\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldr r1, [r0]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _08010BE0\n\
	mov r4, r8\n\
	ldr r2, [r4]\n\
	ldr r4, _08010BC4\n\
	adds r0, r2, r4\n\
	ldr r0, [r0]\n\
	ldrh r1, [r1]\n\
	cmp r0, r1\n\
	bne _08010BC8\n\
	mov r1, sb\n\
	adds r0, r2, r1\n\
	b _08010C62\n\
	.align 2, 0\n\
_08010BC0: .4byte gZones\n\
_08010BC4: .4byte 0x0000229C\n\
_08010BC8:\n\
	ldr r4, _08010BDC\n\
	lsls r1, r6, #2\n\
	adds r1, r1, r6\n\
	adds r1, r1, r7\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r3\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	b _08010BF6\n\
	.align 2, 0\n\
_08010BDC: .4byte gStatMod\n\
_08010BE0:\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	ldr r2, [sp]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r1, r0, r3\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _08010C34\n\
	ldr r4, _08010C24\n\
_08010BF6:\n\
	strh r0, [r4]\n\
	ldr r0, _08010C28\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	ldr r0, [r1]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	mov r4, r8\n\
	ldr r2, [r4]\n\
	add r2, sb\n\
	ldr r0, [r2]\n\
	ldr r1, _08010C2C\n\
	ldrh r1, [r1, #0x12]\n\
	subs r0, r0, r1\n\
	ldr r1, _08010C30\n\
	adds r0, r0, r1\n\
	str r0, [r2]\n\
	b _08010C66\n\
	.align 2, 0\n\
_08010C24: .4byte gStatMod\n\
_08010C28: .4byte gDuel\n\
_08010C2C: .4byte gCardInfo\n\
_08010C30: .4byte 0x7EF0A113\n\
_08010C34:\n\
	ldr r0, [sp, #4]\n\
	bl sub_80437D4\n\
	adds r4, r0, #0\n\
	ldr r0, [sp, #8]\n\
	bl sub_80437D4\n\
	cmp r4, r0\n\
	ble _08010C5C\n\
	mov r2, r8\n\
	ldr r1, [r2]\n\
	add r1, sb\n\
	ldr r0, [r1]\n\
	ldr r4, _08010C58\n\
	adds r0, r0, r4\n\
	str r0, [r1]\n\
	b _08010C66\n\
	.align 2, 0\n\
_08010C58: .4byte 0x7EEE8FA5\n\
_08010C5C:\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	add r0, sb\n\
_08010C62:\n\
	mov r2, sl\n\
	str r2, [r0]\n\
_08010C66:\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

void sub_8010C78 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    gStatMod.card = gZones[row3][col3]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row3][col3]);
    SetFinalStat(&gStatMod);
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
    gUnk_8DFF6A4->unk229C = gZones[row3][col3]->id;
  }
}

NAKED
void sub_8010D40(void)
{
    asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	ldr r2, _08010DAC\n\
	ldrb r0, [r2, #2]\n\
	lsrs r6, r0, #4\n\
	str r6, [sp, #4]\n\
	movs r1, #0xf\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	str r7, [sp]\n\
	ldrb r0, [r2, #3]\n\
	lsrs r5, r0, #4\n\
	str r5, [sp, #8]\n\
	adds r4, r1, #0\n\
	ands r4, r0\n\
	ldr r0, _08010DB0\n\
	mov r8, r0\n\
	ldr r0, [r0]\n\
	ldr r1, _08010DB4\n\
	mov sb, r1\n\
	add r0, sb\n\
	ldr r0, [r0]\n\
	ldr r2, _08010DB8\n\
	mov sl, r2\n\
	cmp r0, sl\n\
	bne _08010D7E\n\
	b _08010E9E\n\
_08010D7E:\n\
	bl IsDuelOver\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #1\n\
	bne _08010DCC\n\
	bl WhoseTurn\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	bl sub_8025534\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r0, #2\n\
	bne _08010DBC\n\
	mov r4, r8\n\
	ldr r0, [r4]\n\
	add r0, sb\n\
	movs r1, #0\n\
	str r1, [r0]\n\
	b _08010E9E\n\
	.align 2, 0\n\
_08010DAC: .4byte gUnk2021C00\n\
_08010DB0: .4byte gUnk_8DFF6A4\n\
_08010DB4: .4byte 0x00002298\n\
_08010DB8: .4byte 0x7EDE89F9\n\
_08010DBC:\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	add r0, sb\n\
	ldr r1, _08010DC8\n\
	str r1, [r0]\n\
	b _08010E9E\n\
	.align 2, 0\n\
_08010DC8: .4byte 0x7FFFFFFF\n\
_08010DCC:\n\
	ldr r3, _08010DF8\n\
	lsls r0, r5, #2\n\
	adds r0, r0, r5\n\
	adds r0, r0, r4\n\
	lsls r0, r0, #2\n\
	adds r0, r0, r3\n\
	ldr r1, [r0]\n\
	ldrh r0, [r1]\n\
	cmp r0, #0\n\
	beq _08010E18\n\
	mov r4, r8\n\
	ldr r2, [r4]\n\
	ldr r4, _08010DFC\n\
	adds r0, r2, r4\n\
	ldr r0, [r0]\n\
	ldrh r1, [r1]\n\
	cmp r0, r1\n\
	bne _08010E00\n\
	mov r1, sb\n\
	adds r0, r2, r1\n\
	b _08010E9A\n\
	.align 2, 0\n\
_08010DF8: .4byte gZones\n\
_08010DFC: .4byte 0x0000229C\n\
_08010E00:\n\
	ldr r4, _08010E14\n\
	lsls r1, r6, #2\n\
	adds r1, r1, r6\n\
	adds r1, r1, r7\n\
	lsls r1, r1, #2\n\
	adds r1, r1, r3\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	b _08010E2E\n\
	.align 2, 0\n\
_08010E14: .4byte gStatMod\n\
_08010E18:\n\
	lsls r0, r6, #2\n\
	adds r0, r0, r6\n\
	ldr r2, [sp]\n\
	adds r0, r0, r2\n\
	lsls r0, r0, #2\n\
	adds r1, r0, r3\n\
	ldr r0, [r1]\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _08010E6C\n\
	ldr r4, _08010E5C\n\
_08010E2E:\n\
	strh r0, [r4]\n\
	ldr r0, _08010E60\n\
	adds r0, #0xf0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	ldr r0, [r1]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	mov r4, r8\n\
	ldr r2, [r4]\n\
	add r2, sb\n\
	ldr r0, [r2]\n\
	ldr r1, _08010E64\n\
	ldrh r1, [r1, #0x12]\n\
	subs r0, r0, r1\n\
	ldr r1, _08010E68\n\
	adds r0, r0, r1\n\
	str r0, [r2]\n\
	b _08010E9E\n\
	.align 2, 0\n\
_08010E5C: .4byte gStatMod\n\
_08010E60: .4byte gDuel\n\
_08010E64: .4byte gCardInfo\n\
_08010E68: .4byte 0x7EF0A113\n\
_08010E6C:\n\
	ldr r0, [sp, #4]\n\
	bl sub_80437D4\n\
	adds r4, r0, #0\n\
	ldr r0, [sp, #8]\n\
	bl sub_80437D4\n\
	cmp r4, r0\n\
	ble _08010E94\n\
	mov r2, r8\n\
	ldr r1, [r2]\n\
	add r1, sb\n\
	ldr r0, [r1]\n\
	ldr r4, _08010E90\n\
	adds r0, r0, r4\n\
	str r0, [r1]\n\
	b _08010E9E\n\
	.align 2, 0\n\
_08010E90: .4byte 0x7EEE8FA5\n\
_08010E94:\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	add r0, sb\n\
_08010E9A:\n\
	mov r2, sl\n\
	str r2, [r0]\n\
_08010E9E:\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0");
}

void sub_8010EB0 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + 0x7EEB5B4A;
}

void sub_8010F58 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = gCardInfo.atk + 0x7EEB5B4A;
}

void sub_8011000 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801101C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89FA;
}

void sub_8011038 (void) {}
void sub_801103C (void) {}

void sub_8011040 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_8011078 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_80110B0 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_80110E8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_8011120 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FC;
}

void sub_8011188 (void) {}
void sub_801118C (void) {}



void sub_8011190 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (sub_8025534(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

void sub_80111EC (void) {}

void sub_80111F0 (void) {
  sub_8010910();
}

static inline void sub_80111FC_inline (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (sub_8025534(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

void sub_80111FC (void) {
  sub_80111FC_inline();
}

void sub_801125C (void) {
  sub_8010A40();
}

void sub_8011268 (void) {
  sub_8010B08();
}

void sub_8011274 (void) {
  sub_8010EB0();
}

void sub_8011280 (void) {}
void sub_8011284 (void) {}

void sub_8011288 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_80112C0 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_80112F8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_8011330 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gUnk_8DFF6A4->unk2298 += sub_80432D0(2);
}

void sub_8011368 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89FC;
}

void sub_80113D0 (void) {}
void sub_80113D4 (void) {}

void sub_80113D8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9 || IsDuelOver() != 1)
    return;
  if (sub_8025534(WhoseTurn()) == 2)
    gUnk_8DFF6A4->unk2298 = 0;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

void sub_8011434 (void) {
  sub_80109A8();
}

void sub_8011440 (void) {
  sub_80111FC_inline();
}

void sub_80114A0 (void) {
  sub_8010C78();
}

void sub_80114AC (void) {
  sub_8010D40();
}

void sub_80114B8 (void) {}

void sub_80114BC (void) {
  sub_8010F58();
}

void sub_80114C8 (void) {}

void sub_80114CC (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B3F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8011528 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row2][col2]->id != DESTINY_BOARD && !NumCardInRow(gZones[3], DESTINY_BOARD))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumCardInRow(gZones[3], gZones[row2][col2]->id) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B43;
  else if (sub_803EFAC(gZones[row3][col3]->id) > 0)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B42;
}

void sub_8011638 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B3F;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8011694 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF8;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80116F0 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E && gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF7;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8011778 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (!gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gZones[row3][col3]->id != CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF7;
}

void sub_801181C (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  // ^these 2 aren't used, but they cause an instruction swap
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFF6;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}


void sub_8011878 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  if (gCardInfo.unk1E)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (gZones[row2][col2]->id == JAM_BREEDING_MACHINE) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (gZones[row2][col2]->id == MESSENGER_OF_PEACE) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80118E4 (void) {}

void sub_80118E8 (void) {
  if (sub_803EF7C() == 0x1F) //TODO: replace 0x1f with FLAG_FINAL_ALL
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

void sub_8011910 (void) {}
void sub_8011914 (void) {}
void sub_8011918 (void) {}
void sub_801191C (void) {}
void sub_8011920 (void) {}

void sub_8011924 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8011940 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  gUnk_8DFF6A4->unk2298 = gCardInfo.atk + gCardInfo.def;
}

void sub_80119AC (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  if (gUnk_8DFF6A4->unk2298 < gCardInfo.atk + gCardInfo.def)
    gUnk_8DFF6A4->unk2298 += 0x7F08323B;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8011A30 (void) {
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == HARPIE_LADY)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else if (gZones[row3][col3]->id == CYBER_HARPIE)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

// check whether to ritual summon a monster (only if attack is higher than components?)
void sub_8011AB0 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;
  u8 row5 = gUnk2021C00.unk5 >> 4;
  u8 col5 = gUnk2021C00.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

bool32 sub_804B144(u8*, u16*); // implicit declaration? TODO

void sub_8011C04 (void) {
  u8 zones[3];
  u8 ritualId;
  u16 ritualAtk;
  if (sub_804B144(zones, gRitualComponents[29]) == TRUE)
    ritualId = 29;
  else if (sub_804B144(zones, gRitualComponents[28]) == TRUE)
    ritualId = 28;
  else if (sub_804B144(zones, gRitualComponents[27]) == TRUE)
    ritualId = 27;
  else if (sub_804B144(zones, gRitualComponents[5]) == TRUE)
    ritualId = 5;
  else {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  gStatMod.card = gRitualComponents[ritualId][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[2][zones[1]]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[2][zones[1]]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[2][zones[2]]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[2][zones[2]]);
    SetFinalStat(&gStatMod);
    if (ritualAtk < gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

// check whether to activate crush card
void sub_8011D80 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    gStatMod.card = zone->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(zone);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}
/*
// regswap solved by making this static inline and calling it (there's still a stack swap)
void sub_8011E44 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;
  u8 row5 = gUnk2021C00.unk5 >> 4;
  u8 col5 = gUnk2021C00.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  if (gZones[row4][col4]->id != gRitualComponents[ritualEffect][2]) {
    if (gZones[row4][col4]->id != gRitualComponents[ritualEffect][3]) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    else if (gZones[row5][col5]->id != gRitualComponents[ritualEffect][2]) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  else if (gZones[row5][col5]->id != gRitualComponents[ritualEffect][3]) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  //_08011F4C
  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk < gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk < gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}*/

NAKED
void sub_8011E44 (void) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0xc\n\
	ldr r2, _08011EC4\n\
	ldrb r0, [r2, #2]\n\
	lsrs r4, r0, #4\n\
	movs r1, #0xf\n\
	adds r3, r1, #0\n\
	ands r3, r0\n\
	ldrb r0, [r2, #4]\n\
	lsrs r5, r0, #4\n\
	mov sl, r5\n\
	adds r7, r1, #0\n\
	ands r7, r0\n\
	ldrb r0, [r2, #5]\n\
	lsrs r2, r0, #4\n\
	mov sb, r2\n\
	adds r5, r1, #0\n\
	ands r5, r0\n\
	ldr r0, _08011EC8\n\
	mov r8, r0\n\
	lsls r0, r4, #2\n\
	adds r0, r0, r4\n\
	adds r0, r0, r3\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrh r0, [r0]\n\
	bl SetCardInfo\n\
	ldr r0, _08011ECC\n\
	ldrb r0, [r0, #0x1d]\n\
	mov ip, r0\n\
	mov r1, sl\n\
	lsls r0, r1, #2\n\
	add r0, sl\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	add r0, r8\n\
	ldr r1, [r0]\n\
	ldr r6, _08011ED0\n\
	mov r2, ip\n\
	lsls r4, r2, #3\n\
	adds r0, r6, #4\n\
	adds r0, r4, r0\n\
	ldrh r1, [r1]\n\
	ldrh r3, [r0]\n\
	cmp r1, r3\n\
	beq _08011F14\n\
	adds r0, r6, #6\n\
	adds r0, r4, r0\n\
	ldrh r0, [r0]\n\
	cmp r1, r0\n\
	beq _08011EE0\n\
	ldr r0, _08011ED4\n\
	ldr r0, [r0]\n\
	ldr r4, _08011ED8\n\
	adds r0, r0, r4\n\
	ldr r1, _08011EDC\n\
	b _08012044\n\
	.align 2, 0\n\
_08011EC4: .4byte 0x02021C00\n\
_08011EC8: .4byte gZones\n\
_08011ECC: .4byte gCardInfo\n\
_08011ED0: .4byte gRitualComponents\n\
_08011ED4: .4byte gUnk_8DFF6A4\n\
_08011ED8: .4byte 0x00002298\n\
_08011EDC: .4byte 0x7EDE89F9\n\
_08011EE0:\n\
	lsls r1, r5, #2\n\
	mov r5, sb\n\
	lsls r2, r5, #2\n\
	adds r0, r2, r5\n\
	lsls r0, r0, #2\n\
	adds r0, r1, r0\n\
	add r0, r8\n\
	ldr r0, [r0]\n\
	ldrh r0, [r0]\n\
	str r1, [sp, #4]\n\
	str r2, [sp, #8]\n\
	cmp r0, r3\n\
	beq _08011F4C\n\
	ldr r0, _08011F08\n\
	ldr r0, [r0]\n\
	ldr r1, _08011F0C\n\
	adds r0, r0, r1\n\
	ldr r1, _08011F10\n\
	b _08012044\n\
	.align 2, 0\n\
_08011F08: .4byte gUnk_8DFF6A4\n\
_08011F0C: .4byte 0x00002298\n\
_08011F10: .4byte 0x7EDE89F9\n\
_08011F14:\n\
	lsls r2, r5, #2\n\
	mov r5, sb\n\
	lsls r3, r5, #2\n\
	adds r0, r3, r5\n\
	lsls r0, r0, #2\n\
	adds r0, r2, r0\n\
	add r0, r8\n\
	ldr r1, [r0]\n\
	adds r0, r6, #6\n\
	adds r0, r4, r0\n\
	ldrh r1, [r1]\n\
	str r2, [sp, #4]\n\
	str r3, [sp, #8]\n\
	ldrh r0, [r0]\n\
	cmp r1, r0\n\
	beq _08011F4C\n\
	ldr r0, _08011F40\n\
	ldr r0, [r0]\n\
	ldr r1, _08011F44\n\
	adds r0, r0, r1\n\
	ldr r1, _08011F48\n\
	b _08012044\n\
	.align 2, 0\n\
_08011F40: .4byte gUnk_8DFF6A4\n\
_08011F44: .4byte 0x00002298\n\
_08011F48: .4byte 0x7EDE89F9\n\
_08011F4C:\n\
	ldr r4, _08011FB4\n\
	ldr r0, _08011FB8\n\
	mov r2, ip\n\
	lsls r1, r2, #3\n\
	adds r0, #2\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	movs r1, #0\n\
	strh r0, [r4]\n\
	ldr r0, _08011FBC\n\
	adds r0, #0xf0\n\
	mov r8, r0\n\
	ldrb r0, [r0]\n\
	strb r0, [r4, #2]\n\
	strb r1, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r6, _08011FC0\n\
	ldrh r5, [r6, #0x12]\n\
	str r5, [sp]\n\
	mov r1, sl\n\
	lsls r0, r1, #2\n\
	add r0, sl\n\
	adds r0, r0, r7\n\
	lsls r0, r0, #2\n\
	ldr r2, _08011FC4\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r1, [r1]\n\
	strh r1, [r4]\n\
	mov r5, r8\n\
	ldrb r1, [r5]\n\
	strb r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r0, [sp]\n\
	ldrh r1, [r6, #0x12]\n\
	cmp r0, r1\n\
	bhs _08011FD4\n\
	ldr r0, _08011FC8\n\
	ldr r0, [r0]\n\
	ldr r2, _08011FCC\n\
	adds r0, r0, r2\n\
	ldr r1, _08011FD0\n\
	b _08012044\n\
	.align 2, 0\n\
_08011FB4: .4byte gStatMod\n\
_08011FB8: .4byte gRitualComponents\n\
_08011FBC: .4byte gDuel\n\
_08011FC0: .4byte gCardInfo\n\
_08011FC4: .4byte gZones\n\
_08011FC8: .4byte gUnk_8DFF6A4\n\
_08011FCC: .4byte 0x00002298\n\
_08011FD0: .4byte 0x7EDE89F9\n\
_08011FD4:\n\
	ldr r5, _08012020\n\
	ldr r1, [r5]\n\
	ldr r0, _08012024\n\
	adds r1, r1, r0\n\
	ldrh r2, [r6, #0x12]\n\
	ldr r0, _08012028\n\
	subs r0, r0, r2\n\
	str r0, [r1]\n\
	ldr r0, [sp, #8]\n\
	add r0, sb\n\
	lsls r0, r0, #2\n\
	ldr r1, [sp, #4]\n\
	adds r0, r1, r0\n\
	ldr r2, _0801202C\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r1, [r1]\n\
	strh r1, [r4]\n\
	mov r2, r8\n\
	ldrb r1, [r2]\n\
	strb r1, [r4, #2]\n\
	ldr r0, [r0]\n\
	bl sub_804069C\n\
	strb r0, [r4, #3]\n\
	adds r0, r4, #0\n\
	bl SetFinalStat\n\
	ldr r4, [sp]\n\
	ldrh r0, [r6, #0x12]\n\
	cmp r4, r0\n\
	bhs _08012034\n\
	ldr r0, [r5]\n\
	ldr r1, _08012024\n\
	adds r0, r0, r1\n\
	ldr r1, _08012030\n\
	b _08012044\n\
	.align 2, 0\n\
_08012020: .4byte gUnk_8DFF6A4\n\
_08012024: .4byte 0x00002298\n\
_08012028: .4byte 0x0000FFFE\n\
_0801202C: .4byte gZones\n\
_08012030: .4byte 0x7EDE89F9\n\
_08012034:\n\
	ldr r0, [r5]\n\
	ldr r2, _08012058\n\
	adds r0, r0, r2\n\
	ldr r1, [r0]\n\
	ldrh r2, [r6, #0x12]\n\
	subs r1, r1, r2\n\
	ldr r4, _0801205C\n\
	adds r1, r1, r4\n\
_08012044:\n\
	str r1, [r0]\n\
	add sp, #0xc\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_08012058: .4byte 0x00002298\n\
_0801205C: .4byte 0x7FF42E87");
}

void sub_8012060 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    SetCardInfo(zone->id);
    if (gCardInfo.type == TYPE_WARRIOR)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_80120E8 (void) {
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gZones[row3][col3]->id == ZOA)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801212C (void) {
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  gStatMod.card = gZones[row3][col3]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row3][col3]);
  SetFinalStat(&gStatMod);
  if (gUnk_8DFF6A4->unk2298 < gCardInfo.atk + gCardInfo.def)
    gUnk_8DFF6A4->unk2298 = 0x7FF55169;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80121B8 (void) {
  u32 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    struct DuelCard* zone = gZones[1][i];
    if (zone->id == CARD_NONE)
      continue;
    if (IsGodCard(zone->id) == TRUE)
      continue;
    if (IsCardFaceUp(zone) != TRUE)
      continue;
    SetCardInfo(zone->id);
    if (gCardInfo.type == TYPE_MACHINE)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_8012240 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  u8 row3 = gUnk2021C00.unk3 >> 4;
  u8 col3 = gUnk2021C00.unk3 & 0xF;
  u8 row4 = gUnk2021C00.unk4 >> 4;
  u8 col4 = gUnk2021C00.unk4 & 0xF;
  u8 row5 = gUnk2021C00.unk5 >> 4;
  u8 col5 = gUnk2021C00.unk5 & 0xF;
  u16 ritualAtk;
  u8 ritualEffect;
  SetCardInfo(gZones[row2][col2]->id);
  ritualEffect = gCardInfo.ritualEffect;
  if (gZones[row3][col3]->id == gRitualComponents[ritualEffect][0])
    ritualEffect = 24;
  else
    ritualEffect = 26;

  gStatMod.card = gRitualComponents[ritualEffect][1];
  gStatMod.field = gDuel.field;
  gStatMod.stage = 0;
  SetFinalStat(&gStatMod);
  ritualAtk = gCardInfo.atk;

  gStatMod.card = gZones[row4][col4]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row4][col4]);
  SetFinalStat(&gStatMod);
  if (ritualAtk <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else {
    u32 temp;
    gUnk_8DFF6A4->unk2298 = 0xFFFE - gCardInfo.atk;
    gStatMod.card = gZones[row5][col5]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[row5][col5]);
    SetFinalStat(&gStatMod);
    if (ritualAtk <= gCardInfo.atk)
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    else {
      u32 temp = gUnk_8DFF6A4->unk2298;
      temp -= gCardInfo.atk;
      temp += 0x7FF42E87;
      gUnk_8DFF6A4->unk2298 = temp;
    }
  }
}

void sub_80123BC (void) {
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[1][i]->id == CARD_NONE)
      continue;
    if (gZones[1][i]->isLocked)
      continue;
    gStatMod.card = gZones[1][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[1][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk >= 1500) {
      gUnk_8DFF6A4->unk2298 = 0x7EEB5B47;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801245C (void) {
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    if (!gZones[2][i]->isFaceUp)
      continue;
    if (gZones[2][i]->isLocked)
      continue;
    SetCardInfo(gZones[2][i]->id);
    if (gCardInfo.monsterEffect) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF5;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80124D8 (void) {
  g8DFFA48[g201CB3C]();
}

void sub_80124F8 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  g201CB3C = gCardInfo.spellEffect;
  g8DFF7F0[gCardInfo.spellEffect]();
}

void sub_8012548 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8012564 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8012580 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801259C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80125B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80125D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80125F0 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_8012610 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_8012648 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_8012668 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_80126A0 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_80126C0 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_80126F8 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_8012718 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_8012750 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_8012770 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_80127A8 (void) {
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

void sub_80127C8 (void) {
  u32 temp = sub_80432D0(2);
  if (temp <= gUnk_8DFF6A4->unk2298)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = temp + 0x7FC874FF;
}

void sub_8012800 (void) {
  gUnk_8DFF6A4->unk2298 = gLifePoints[WhoseTurn()];
}

void sub_8012828 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

void sub_8012878 (void) {
  gUnk_8DFF6A4->unk2298 = gLifePoints[WhoseTurn()];
}

void sub_80128A0 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

void sub_80128F0 (void) {
  gUnk_8DFF6A4->unk2298 = gLifePoints[WhoseTurn()];
}

void sub_8012918 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

void sub_8012968 (void) {
  gUnk_8DFF6A4->unk2298 = gLifePoints[WhoseTurn()];
}

void sub_8012990 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

void sub_80129E0 (void) {
  gUnk_8DFF6A4->unk2298 = gLifePoints[WhoseTurn()];
}

void sub_8012A08 (void) {
  if (gUnk_8DFF6A4->unk2298 >= gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99742;
}

void sub_8012A58 (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 50)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

void sub_8012AB0 (void) {}

void sub_8012AB4 (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 100)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

void sub_8012B0C (void) {}

void sub_8012B10 (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 200)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

void sub_8012B68 (void) {}

void sub_8012B6C (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 500)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

void sub_8012BC8 (void) {}

void sub_8012BCC (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= 1000)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99743;
}

void sub_8012C28 (void) {}

//Check whether to use Dark Hole
void sub_8012C2C (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973F;
}

void sub_8012C9C (void) {}

//Check whether to use Raigeki
void sub_8012CA0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973E;
}

void sub_8012CE4 (void) {}

void sub_8012CE8 (void) {
  sub_8011940();
}

void sub_8012CF4 (void) {
  sub_80119AC();
}

void sub_8012D00 (void) {
  sub_8011940();
}

void sub_8012D0C (void) {
  sub_80119AC();
}

void sub_8012D18 (void) {
  sub_8011940();
}

void sub_8012D24 (void) {
  sub_80119AC();
}

void sub_8012D30 (void) {
  sub_8011940();
}

void sub_8012D3C (void) {
  sub_80119AC();
}

void sub_8012D48 (void) {
  sub_8011940();
}

void sub_8012D54 (void) {
  sub_80119AC();
}

void sub_8012D60 (void) {
  sub_8011940();
}

void sub_8012D6C (void) {
  sub_80119AC();
}

void sub_8012D78 (void) {
  sub_8011940();
}

void sub_8012D84 (void) {
  sub_80119AC();
}

void sub_8012D90 (void) {
  sub_8011940();
}

void sub_8012D9C (void) {
  sub_80119AC();
}

void sub_8012DA8 (void) {
  sub_8011940();
}

void sub_8012DB4 (void) {
  sub_80119AC();
}

void sub_8012DC0 (void) {
  sub_8011940();
}

void sub_8012DCC (void) {
  sub_80119AC();
}

void sub_8012DD8 (void) {
  sub_8011940();
}

void sub_8012DE4 (void) {
  sub_80119AC();
}

void sub_8012DF0 (void) {
  sub_8011940();
}

void sub_8012DFC (void) {
  sub_80119AC();
}

void sub_8012E08 (void) {
  sub_8011940();
}

void sub_8012E14 (void) {
  sub_80119AC();
}

void sub_8012E20 (void) {
  sub_8011940();
}

void sub_8012E2C (void) {
  sub_80119AC();
}

void sub_8012E38 (void) {
  sub_8011940();
}

void sub_8012E44 (void) {
  sub_80119AC();
}

void sub_8012E50 (void) {
  sub_8011940();
}

void sub_8012E5C (void) {
  sub_80119AC();
}

void sub_8012E68 (void) {
  sub_8011940();
}

void sub_8012E74 (void) {
  sub_80119AC();
}

void sub_8012E80 (void) {
  sub_8011940();
}

void sub_8012E8C (void) {
  sub_80119AC();
}

void sub_8012E98 (void) {
  sub_8011940();
}

void sub_8012EA4 (void) {
  sub_80119AC();
}

void sub_8012EB0 (void) {
  sub_8011940();
}

void sub_8012EBC (void) {
  sub_80119AC();
}

void sub_8012EC8 (void) {
  sub_8011940();
}

void sub_8012ED4 (void) {
  sub_80119AC();
}

void sub_8012EE0 (void) {
  sub_8011940();
}

void sub_8012EEC (void) {
  sub_80119AC();
}

void sub_8012EF8 (void) {
  sub_8011940();
}

void sub_8012F04 (void) {
  sub_80119AC();
}

void sub_8012F10 (void) {
  sub_8011940();
}

void sub_8012F1C (void) {
  sub_80119AC();
}

void sub_8012F28 (void) {
  sub_8011940();
}

void sub_8012F34 (void) {
  sub_80119AC();
}

void sub_8012F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8012F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8012F78 (void) {
  if (!sub_80438E8(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FB3183E;
}

void sub_8012FB8 (void) {}

void sub_8012FBC (void) {
  if (!sub_804398C(1, 1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_8013000 (void) {}

void sub_8013004 (void) {
  if (gNotSure[1]->sorlTurns)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B46;
}

void sub_801304C (void) {}

// Dark-Piercing Light?
void sub_8013050 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && !gZones[1][i]->isFaceUp) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF1;
      return;
    }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80130AC (void) {}

void sub_80130B0 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = sub_8043358(1);
}

void sub_80130F8 (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 <= sub_8043358(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516C;
}

void sub_8013140 (void) {}

void sub_8013144 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013160 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801317C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013198 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80131B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80131D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80131EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013208 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013224 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013240 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801325C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013278 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013294 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80132B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80132CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80132E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013304 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013320 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801333C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013358 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013374 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013390 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80133AC (void) {}

void sub_80133B0 (void) {
  sub_8011AB0();
}

void sub_80133BC (void) {}

void sub_80133C0 (void) {
  sub_8011AB0();
}

void sub_80133CC (void) {}

void sub_80133D0 (void) {
  sub_8011AB0();
}

void sub_80133DC (void) {}
void sub_80133E0 (void) {}

void sub_80133E4 (void) {
  sub_8011AB0();
}

void sub_80133F0 (void) {}

void sub_80133F4 (void) {
  sub_8011AB0();
}

void sub_8013400 (void) {}

void sub_8013404 (void) {
  sub_8011AB0();
}

void sub_8013410 (void) {}

void sub_8013414 (void) {
  sub_8011AB0();
}

void sub_8013420 (void) {}

void sub_8013424 (void) {
  sub_8011AB0();
}

void sub_8013430 (void) {}

void sub_8013434 (void) {
  sub_8011AB0();
}

void sub_8013440 (void) {}

// Feather duster?
void sub_8013444 (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[0][i]->id != CARD_NONE) {
      gUnk_8DFF6A4->unk2298 = 0x7FF99744;
      break;
    }
  }
}

void sub_80134A8 (void) {}

void sub_80134AC (void) {
  sub_8011940();
}

void sub_80134B8 (void) {
  sub_80119AC();
}

void sub_80134C4 (void) {
  sub_8011940();
}

void sub_80134D0 (void) {
  sub_80119AC();
}

void sub_80134DC (void) {
  sub_8011940();
}

void sub_80134E8 (void) {
  sub_80119AC();
}

void sub_80134F4 (void) {
  sub_8011940();
}

void sub_8013500 (void) {
  sub_80119AC();
}

void sub_801350C (void) {}

void sub_8013510 (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = sub_8043358(1);
}

static inline void sub_8013558_inline (void) {
  if (gUnk_8DFF6A4->unk2298 == 0x7EDE89F9)
    return;
  if (gUnk_8DFF6A4->unk2298 <= sub_8043358(1))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF5516C;
}

void sub_8013558 (void) {
  sub_8013558_inline();
}

void sub_80135A4 (void) {
  sub_8011AB0();
}

void sub_80135B0 (void) {}

void sub_80135B4 (void) {
  sub_8011AB0();
}

void sub_80135C0 (void) {}

void sub_80135C4 (void) {
  sub_8011AB0();
}

void sub_80135D0 (void) {}

void sub_80135D4 (void) {
  sub_8011AB0();
}

void sub_80135E0 (void) {}

void sub_80135E4 (void) {
  sub_8011AB0();
}

void sub_80135F0 (void) {}

void sub_80135F4 (void) {
  sub_8011AB0();
}

void sub_8013600 (void) {}

void sub_8013604 (void) {
  sub_8011AB0();
}

void sub_8013610 (void) {}

void sub_8013614 (void) {
  sub_8011AB0();
}

void sub_8013620 (void) {}

void sub_8013624 (void) {
  sub_8011AB0();
}

void sub_8013630 (void) {}

void sub_8013634 (void) {
  sub_8011AB0();
}

void sub_8013640 (void) {}

void sub_8013644 (void) {
  sub_8011AB0();
}

void sub_8013650 (void) {}
void sub_8013654 (void) {}
void sub_8013658 (void) {}

void sub_801365C (void) {
  u8 i;
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id != CARD_NONE && PermStage(gZones[2][i]) < 0) {
      gUnk_8DFF6A4->unk2298 = 0x7FF5516A;
      break;
    }
  }
}

void sub_80136B8 (void) {}

void sub_80136BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 3))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_8013704 (void) {}

void sub_8013708 (void) {
  sub_8011940();
}

void sub_8013714 (void) {
  sub_80119AC();
}

void sub_8013720 (void) {
  sub_8011940();
}

void sub_801372C (void) {
  sub_80119AC();
}

void sub_8013738 (void) {}

void sub_801373C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 10))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_8013784 (void) {}

void sub_8013788 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 19))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_80137D0 (void) {}

void sub_80137D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 13))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_801381C (void) {}

// Inexperienced spy
void sub_8013820 (void) {
  u8 i;
  for (i = 0; i < 5; i++)
    if (gHands[1][i]->id != CARD_NONE && !gHands[1][i]->isFaceUp) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFF0;
      return;
    }
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801387C (void) {}
void sub_8013880 (void) {}

// pot of greed?
void sub_8013884 (void) {
  if (NumEmptyZonesInRow(gZones[4]) < 2)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B44;
}

void sub_80138C8 (void) {}

void sub_80138CC (void) {
  u8 temp = 5 - NumEmptyZonesInRow(gHands[1]);
  if (!temp)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= temp * 200)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
}

void sub_8013958 (void) {}

void sub_801395C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 2))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_80139A4 (void) {}

void sub_80139A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  if (!sub_804398C(1, 8))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF9973C;
}

void sub_80139F0 (void) {}

// Multiply
void sub_80139F4 (void) {
  if (!NumCardInRow(gZones[2], KURIBOH))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF32E7F;
}

void sub_8013A64 (void) {}

void sub_8013A68 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99746;
}

void sub_8013AD8 (void) {}

void sub_8013ADC (void) {
  sub_8011AB0();
}

void sub_8013AE8 (void) {}

void sub_8013AEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013B08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013B24 (void) {
  if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF99746;
}

void sub_8013B94 (void) {}

// monster reborn?
void sub_8013B98 (void) {
  if (gNotSure[1]->graveyard == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (!NumEmptyZonesInRow(gZones[2]))
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FB3183D;
}

void sub_8013C04 (void) {}

void sub_8013C08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013C24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013C40 (void) {
  sub_8011940();
}

void sub_8013C4C (void) {
  sub_80119AC();
}

void sub_8013C58 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FF7745C;
}

void sub_8013C9C (void) {}

void sub_8013CA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013CBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013CD8 (void) {
  if (gNotSure[0]->graveyard == CARD_NONE)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EEB5B45;
}

void sub_8013D1C (void) {}

void sub_8013D20 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5 && NumEmptyZonesInRow(gZones[0]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFD;
}

void sub_8013D9C (void) {}

void sub_8013DA0 (void) {
  if (NumEmptyZonesAndGodCardsInRow(gZones[2]) != 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (NumEmptyZonesAndGodCardsInRow(gZones[1]) == 5 && NumEmptyZonesInRow(gZones[0]) == 5)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFE;
}

void sub_8013E1C (void) {}
void sub_8013E20 (void) {}
void sub_8013E24 (void) {}

void sub_8013E28 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013E44 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013E60 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013E7C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013E98 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013EB4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013ED0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013EEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013F94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013FB0 (void) {
  sub_8011940();
}

void sub_8013FBC (void) {
  sub_80119AC();
}

void sub_8013FC8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8013FE4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014000 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801401C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014038 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014054 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014070 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801408C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80140A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80140C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80140E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80140FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014118 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014134 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014150 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801416C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014188 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80141A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80141C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80141DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80141F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014214 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014230 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801424C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014268 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014284 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80142A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80142BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80142D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80142F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014310 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801432C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014348 (void) {
  sub_80124D8();
}

void sub_8014354 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  SetCardInfo(gZones[row2][col2]->id);
  g201CB40 = gCardInfo.spellEffect;
  sub_80124F8();
}

void sub_8014394 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80143B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80143CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80143E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014404 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014420 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801443C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014458 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014474 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014490 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80144AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80144C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80144E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014500 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801451C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014538 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014554 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014570 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801458C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80145A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80145C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80145E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80145FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014618 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014634 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014650 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801466C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014688 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80146A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80146C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80146DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80146F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014714 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014730 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801474C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014768 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014784 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80147A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80147BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80147D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80147F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014810 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801482C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014848 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014864 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014880 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801489C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80148B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80148D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80148F0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801490C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014928 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014944 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014960 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801497C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014998 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80149B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80149D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80149EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014A94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014AB0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014ACC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014AE8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B04 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B20 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B3C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B58 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B74 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014B90 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014BAC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014BC8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014BE4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C00 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C1C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C38 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C54 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C70 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014C8C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014CA8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014CC4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014CE0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014CFC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014D18 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014D34 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014D50 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014D6C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014D88 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014DA4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014DC0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014DDC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014DF8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014E14 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014E30 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014E4C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014E68 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014E84 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014EA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014EBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014ED8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014EF4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F10 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F2C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F48 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F64 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F80 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014F9C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014FB8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014FD4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8014FF0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801500C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015028 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015044 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015060 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801507C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015098 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80150B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80150D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80150EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015108 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015124 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015140 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801515C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015178 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015194 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80151B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80151CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80151E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015204 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015220 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801523C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015258 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015274 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015290 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80152AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80152C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80152E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015300 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801531C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015338 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015354 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015370 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801538C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80153A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80153C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80153E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80153FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015418 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015434 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015450 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801546C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015488 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80154A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80154C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80154DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80154F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015514 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015530 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801554C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015568 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015584 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80155A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80155BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80155D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80155F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015610 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801562C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015648 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015664 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015680 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801569C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80156B8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80156D4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80156F0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801570C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015728 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015744 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015760 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801577C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015798 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80157B4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80157D0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80157EC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015808 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015824 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015840 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801585C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015878 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015894 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80158B0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80158CC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80158E8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015904 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015920 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801593C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015958 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015974 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015990 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80159AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80159C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80159E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A00 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A1C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A38 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A54 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A70 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015A8C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015AA8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015AC4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015AE0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015AFC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015B18 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015B34 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015B50 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015B6C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015B88 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015BA4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015BC0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015BDC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015BF8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015C14 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015C30 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015C4C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015C68 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015C84 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015CA0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015CBC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015CD8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015CF4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D10 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D2C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D48 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D64 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D80 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015D9C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015DB8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015DD4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015DF0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E0C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E28 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E44 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E60 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E7C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015E98 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015EB4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015ED0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015EEC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F08 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F24 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F40 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F5C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F78 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015F94 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015FB0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015FCC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8015FE8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016004 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016020 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801603C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016058 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016074 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016090 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80160AC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80160C8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80160E4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016100 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801611C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016138 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016154 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016170 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801618C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80161A8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80161C4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80161E0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80161FC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016218 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016234 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016250 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801626C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016288 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80162A4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80162C0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80162DC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80162F8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016314 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016330 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801634C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016368 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016384 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80163A0 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80163BC (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80163D8 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80163F4 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016410 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_801642C (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016448 (void) {
  gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_8016464 (void) {
  u32 numEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  u32 numCards;
  u8 i;
  if (!numEmptyZones) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) == 1)
      numCards++;
  if (numEmptyZones == numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFBBA26;
}

void sub_80164F4 (void) {
  u32 numEmptyZones = 5 - NumEmptyZonesInRow(gZones[1]);
  u32 numCards;
  u8 i;
  if (!numEmptyZones) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  numCards = 0;
  for (i = 0; i < 5; i++)
    if (gZones[1][i]->id != CARD_NONE && IsGodCard(gZones[1][i]->id) == 1)
      numCards++;
  if (numEmptyZones == numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFDDD06;
}

void sub_8016584 (void) {
  u8 i;
  u8 numCards = 0;
  if (gDuel.field == FIELD_YAMI) {
    for (i = 0; i < 5; i++)
      if (gZones[2][i]->id == CARD_NONE && gZones[2][i]->isFaceUp)
        numCards++;
    if (!numCards) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = sub_80432D0(2);
}

// catapult turtle
void sub_8016604 (void) {
  u8 i;
  u8 numCards = 0;
  u32 totalAtk;
  for (i = 0; i < 5; i++)
    if (gMonEffect.zone != i && gZones[2][i]->id != CARD_NONE &&
      gZones[2][i]->id != CATAPULT_TURTLE && !gZones[2][i]->isLocked)
        numCards++;
  if (!numCards) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  totalAtk = 0;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE || gZones[2][i]->id == CATAPULT_TURTLE)
      continue;
    gStatMod.card = gZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[2][i]);
    SetFinalStat(&gStatMod);
    totalAtk += gCardInfo.atk;
  }
  if (!totalAtk) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= totalAtk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEE;
}

void sub_8016734 (void) {
  u8 numCards = 0;
  u8 i;
  for (i = 0; i < 5; i++) {
    if (gZones[2][i]->id == CARD_NONE)
      continue;
    gStatMod.card = gZones[2][i]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[2][i]);
    SetFinalStat(&gStatMod);
    if (gCardInfo.atk <= 500)
      numCards++;
  }
  if (!numCards)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EF2D56F;
}

void sub_80167DC (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEB;
}

void sub_80168A0 (void) {
  u8 row2 = gUnk2021C00.unk2 >> 4;
  u8 col2 = gUnk2021C00.unk2 & 0xF;
  gStatMod.card = gZones[row2][col2]->id;
  gStatMod.field = gDuel.field;
  gStatMod.stage = sub_804069C(gZones[row2][col2]);
  SetFinalStat(&gStatMod);
  if (!gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
  else if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] <= gCardInfo.atk)
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFEA;
}

// Ra battle mode?
void sub_8016964 (void) {
  if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] < gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
  else if (gLifePoints[gCurrentTurnOpponent[WhoseTurn()]] == gLifePoints[WhoseTurn()])
    gUnk_8DFF6A4->unk2298 = 0x7FFFFFE7;
  else
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
}

void sub_80169FC (void) {
  if (NumEmptyZonesInRow(gZones[1]) == 5) {
    gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
    return;
  }
  if (sub_8043810(1)) {
    u8 zone = sub_80430D8(gZones[1]);
    gStatMod.card = gZones[1][zone]->id;
    gStatMod.field = gDuel.field;
    gStatMod.stage = sub_804069C(gZones[1][zone]);
    SetFinalStat(&gStatMod);
    if (!gCardInfo.atk) {
      gUnk_8DFF6A4->unk2298 = 0x7EDE89F9;
      return;
    }
    if (gCardInfo.atk >= gLifePoints[gCurrentTurnOpponent[WhoseTurn()]]) {
      gUnk_8DFF6A4->unk2298 = 0x7FFFFFFF;
      return;
    }
  }
  gUnk_8DFF6A4->unk2298 = 0x7FFFFFE9;
}
