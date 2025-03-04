#include "global.h"
#include "duel.h"
#include "overworld.h"

extern u8 g8E0E3C0[]; // which direction the npc should face when the player talks to them (gFacePlayer)

extern u16 g8E0E3C4[];
extern u16 g8E0E3CC[];
extern u16 g8E0E404[];
extern u16 g8E0E416[];


extern u16 g8E0E3D4[3][4];
extern u16 g8E0E3EC[3][4];

extern u16 g8E0E428[3][9];
extern u16 g8E0E45E[3][9];

extern struct OamData gOamBuffer[];

s8 sub_8051DAC (u8, u8, u8);
u8 sub_8052174 (u16);
void sub_8051D20 (u8, u8);
void sub_805236C (void);


inline u8 sub_805222C (int unused, u8 x, u8 y) {
  if (x > 119)
    return 0;
  if (y > 79)
    return 0;
  return 1;
}

// restrict player from going further than the specified coords
inline u8 sub_8052244 (int unused, u8 x, u8 y) {
  if (x > 223)
    return 0;
  if (x > 119)
    return 0;
  if (y > 223)
    return 0;
  if (y > 79)
    return 0;
  return 1;
}

s8 sub_8051958 (u8 newXPos, u8 newYPos, u8 direction, u8 obj) {
  int i;
  for (i = 0; i < 3; i++) {
    if (sub_8052244(0, g8E0E3D4[i][direction] + newXPos, g8E0E3EC[i][direction] + newYPos)) {
      u8 temp = g8E0E3D4[i][direction] + newXPos;
      u8 temp2 = g8E0E3EC[i][direction] + newYPos;
      if (sub_8051DAC(temp, temp2, obj) == -1) {
        temp = g8E0E3D4[i][direction] + newXPos;
        temp2 = g8E0E3EC[i][direction] + newYPos;
        if (sub_8052174(gOverworld.unk23C[temp2 * 120 + temp]) != 1)
          return i + 1;
      }
    }
  }
  return 0;
}

void sub_8051A44 (u8 obj, u8 direction, u16 *displacement) {
  u8 newXPos;
  u8 newYPos;
  displacement[0] = g8E0E3C4[direction];
  displacement[1] = g8E0E3CC[direction];
  newXPos = gOverworld.objects[obj].x + g8E0E3C4[direction];
  newYPos = gOverworld.objects[obj].y + g8E0E3CC[direction];
  switch (sub_8051958(newXPos, newYPos, direction, obj)) {
    case 0:
      gOverworld.objects[obj].unk18 = 0;
      displacement[0] = 0;
      displacement[1] = 0;
      break;
    case 1:
      gOverworld.objects[obj].unk18 = 1;
      break;
    case 2:
      gOverworld.objects[obj].unk18 = 1;
      displacement[0] += g8E0E3D4[1][direction];
      displacement[1] += g8E0E3EC[1][direction];
      break;
    case 3:
      gOverworld.objects[obj].unk18 = 1;
      displacement[0] += g8E0E3D4[2][direction];
      displacement[1] += g8E0E3EC[2][direction];
      break;
  }
}

extern u16* g20244AC;
/*
s8 sub_8051B28 (u8 newXPos, u8 newYPos, u8 direction, u8 obj) {
  int i;
  for (i = 0; i < 3; i++) {
    if (sub_8052244_inline(0, g8E0E428[i][direction] + newXPos, g8E0E45E[i][direction] + newYPos)) {
      u8 temp = g8E0E428[i][direction] + newXPos;
      u8 temp2 = g8E0E45E[i][direction] + newYPos;
      if (sub_8051DAC(temp, temp2, obj) == -1) {
        temp = g8E0E428[i][direction] + newXPos;
        temp2 = g8E0E45E[i][direction] + newYPos;
        if (sub_8052174(g20244AC[temp2 * 120 + temp]) != 1)
          return i + 1;
      }
    }
  }
  return 0;
}*/

NAKED
s8 sub_8051B28 (u8 newXPos, u8 newYPos, u8 direction, u8 obj) {
  asm_unified("push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #4\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	mov r8, r0\n\
	lsls r1, r1, #0x18\n\
	lsrs r7, r1, #0x18\n\
	lsls r2, r2, #0x18\n\
	lsls r3, r3, #0x18\n\
	lsrs r3, r3, #0x18\n\
	mov sb, r3\n\
	movs r3, #0\n\
	ldr r1, _08051B84\n\
	ldr r0, _08051B88\n\
	lsrs r2, r2, #0x17\n\
	adds r6, r2, r0\n\
	adds r5, r2, r1\n\
	adds r4, r2, #0\n\
	ldr r0, _08051B8C\n\
	mov sl, r0\n\
_08051B58:\n\
	ldr r0, _08051B84\n\
	adds r0, r4, r0\n\
	ldrb r0, [r0]\n\
	add r0, r8\n\
	lsls r0, r0, #0x18\n\
	lsrs r1, r0, #0x18\n\
	ldr r0, _08051B88\n\
	adds r0, r4, r0\n\
	ldrb r0, [r0]\n\
	adds r0, r7, r0\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	cmp r1, #0xdf\n\
	bhi _08051B80\n\
	cmp r1, #0x77\n\
	bhi _08051B80\n\
	cmp r0, #0xdf\n\
	bhi _08051B80\n\
	cmp r0, #0x4f\n\
	bls _08051B90\n\
_08051B80:\n\
	movs r0, #0\n\
	b _08051B92\n\
	.align 2, 0\n\
_08051B84: .4byte 0x08E0E428\n\
_08051B88: .4byte 0x08E0E45E\n\
_08051B8C: .4byte 0x020244AC\n\
_08051B90:\n\
	movs r0, #1\n\
_08051B92:\n\
	cmp r0, #0\n\
	beq _08051BF4\n\
	ldrb r0, [r5]\n\
	add r0, r8\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	ldrb r1, [r6]\n\
	adds r1, r7, r1\n\
	lsls r1, r1, #0x18\n\
	lsrs r1, r1, #0x18\n\
	mov r2, sb\n\
	str r3, [sp]\n\
	bl sub_8051DAC\n\
	lsls r0, r0, #0x18\n\
	asrs r0, r0, #0x18\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	ldr r3, [sp]\n\
	cmp r0, r1\n\
	bne _08051BF4\n\
	ldrb r2, [r5]\n\
	add r2, r8\n\
	lsls r2, r2, #0x18\n\
	lsrs r2, r2, #0x18\n\
	ldrb r0, [r6]\n\
	adds r0, r7, r0\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	lsls r1, r0, #4\n\
	subs r1, r1, r0\n\
	lsls r1, r1, #3\n\
	adds r1, r1, r2\n\
	mov r2, sl\n\
	ldr r0, [r2]\n\
	lsls r1, r1, #1\n\
	adds r1, r1, r0\n\
	ldrh r0, [r1]\n\
	bl sub_8052174\n\
	lsls r0, r0, #0x18\n\
	lsrs r0, r0, #0x18\n\
	ldr r3, [sp]\n\
	cmp r0, #1\n\
	beq _08051BF4\n\
	adds r0, r3, #1\n\
	lsls r0, r0, #0x18\n\
	asrs r0, r0, #0x18\n\
	b _08051C02\n\
_08051BF4:\n\
	adds r6, #0x12\n\
	adds r5, #0x12\n\
	adds r4, #0x12\n\
	adds r3, #1\n\
	cmp r3, #2\n\
	ble _08051B58\n\
	movs r0, #0\n\
_08051C02:\n\
	add sp, #4\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1");
}

extern u16 g8E0E494[][3];

void sub_8051C14 (u8 obj, u8 direction, u16 *displacement) {
  u8 newXPos;
  u8 newYPos;
  displacement[0] = g8E0E404[direction];
  displacement[1] = g8E0E416[direction];
  newXPos = gOverworld.objects[obj].x + g8E0E404[direction];
  newYPos = gOverworld.objects[obj].y + g8E0E416[direction];
  switch (sub_8051B28(newXPos, newYPos, direction, obj)) {
    case 0:
      gOverworld.objects[obj].unk18 = 0;
      displacement[0] = 0;
      displacement[1] = 0;
      break;
    case 1:
      gOverworld.objects[obj].unk18 = 1;
      gOverworld.objects[obj].direction = g8E0E494[0][direction];
      break;
    case 2:
      gOverworld.objects[obj].unk18 = 1;
      gOverworld.objects[obj].direction = g8E0E494[3][direction];
      displacement[0] += g8E0E428[1][direction];
      displacement[1] += g8E0E45E[1][direction];
      break;
    case 3:
      gOverworld.objects[obj].unk18 = 1;
      gOverworld.objects[obj].direction = g8E0E494[6][direction];
      displacement[0] += g8E0E428[2][direction];
      displacement[1] += g8E0E45E[2][direction];
      break;
  }
}

void sub_8051D20 (u8 obj, u8 direction) {
  u8 x, y;
  u8 pos[2];
  u16 displacement[4];
  pos[0] = gOverworld.objects[obj].x;
  pos[1] = gOverworld.objects[obj].y;
  gOverworld.objects[obj].direction = direction;
  sub_8051A44(obj, direction, displacement);
  gOverworld.objects[obj].x += displacement[0];
  gOverworld.objects[obj].y += displacement[1];
  x = gOverworld.objects[obj].x;
  y = gOverworld.objects[obj].y;
  gOverworld.objects[obj].unkC = gOverworld.unk23C[y * 120 + x];
  sub_8052088(obj);
  // hmmm... this only accesses the lower and upper bytes of x
  sub_8052108(pos, (u8*)&gOverworld.objects[obj].x);
}

s8 sub_8051DAC (u8 x, u8 y, u8 objId) {
  u8 i;
  u8 temp;
  if (gOverworld.objects[objId].unk1Dl)
    return -1;
  for (i = 0; i < 15; i++) {
    if (i == objId || gOverworld.objects[i].unk1Dl)
      continue;
    temp = 0;
    if (y - gOverworld.objects[i].y <= 4)
      if (y - gOverworld.objects[i].y >= -4)
        temp = 1;
    if (x - gOverworld.objects[i].x <= 6)
      if (x - gOverworld.objects[i].x >= -6)
        temp |= 2;
    if (temp == 3)
      return i;
  }
  return -1;
}

inline u8 sub_8052268 (int y, int x) {
  u8 temp = 0;
  if (y <= 0)
    if (y >= -8)
      temp = 1;
  if (x <= 4)
    if (x >= -4)
      temp |= 2;
  if (temp == 3)
    return 1;
  return 0;
}

inline u8 sub_8052298 (int y, int x) {
  u8 temp = 0;
  if (x <= 8)
    if (x >= 0)
      temp = 1;
  if (y <= 4)
    if (y >= -4)
      temp |= 2;
  if (temp == 3)
    return 1;
  return 0;
}

inline u8 sub_80522C0 (int y, int x) {
  u8 temp = 0;
  if (y <= 8)
    if (y >= 0)
      temp = 1;
  if (x <= 4)
    if (x >= -4)
      temp |= 2;
  if (temp == 3)
    return 1;
  return 0;
}

inline u8 sub_80522E8 (int y, int x) {
  u8 temp = 0;
  if (x <= 0)
    if (x >= -8)
      temp = 1;
  if (y <= 4)
    if (y >= -4)
      temp |= 2;
  if (temp == 3)
    return 1;
  return 0;
}

s8 sub_8051E48 (u8 x, u8 y, u8 direction) {
  u8 i, r3;
  for (i = 1; i < 15; i++) {
    switch (direction) {
      case 0:
        if (sub_8052268(y - gOverworld.objects[i].y, x - gOverworld.objects[i].x))
          r3 = 1;
        else
          r3 = 0;
        break;
      case 1:
        if (sub_8052298(y - gOverworld.objects[i].y, x - gOverworld.objects[i].x))
          r3 = 1;
        else
          r3 = 0;
        break;
      case 2:
        if (sub_80522C0(y - gOverworld.objects[i].y, x - gOverworld.objects[i].x))
          r3 = 1;
        else
          r3 = 0;
        break;
      case 3:
        if (sub_80522E8(y - gOverworld.objects[i].y, x - gOverworld.objects[i].x))
          r3 = 1;
        else
          r3 = 0;
        break;
    }
    if (r3)
      return i;
  }
  return -1;
}

s8 sub_8051E48 (u8, u8, u8);
void sub_804F19C (int);

void TryTalking (void) {
  int r4;
  u8 temp = gOverworld.objects[0].x + g8E0E3C4[gOverworld.objects[0].direction];
  u8 temp2 = gOverworld.objects[0].y + g8E0E3CC[gOverworld.objects[0].direction];
  r4 = sub_8051E48(temp, temp2, gOverworld.objects[0].direction);
  if (r4 == -1)
    return;
  PlayMusic(0xCA);
  if (gOverworld.objects[r4].unk1Dj)
    gOverworld.objects[r4].direction = g8E0E3C0[gOverworld.objects[0].direction];
  sub_804F19C(r4);
  sub_804DF5C(r4);
  sub_804EF10();
  LoadObjVRAM();
  InitiateScript(gOverworld.objects[r4].scriptA);
}

void TryDueling (void) {
  int r4;
  u8 temp = gOverworld.objects[0].x + g8E0E3C4[gOverworld.objects[0].direction];
  u8 temp2 = gOverworld.objects[0].y + g8E0E3CC[gOverworld.objects[0].direction];
  r4 = sub_8051E48(temp, temp2, gOverworld.objects[0].direction);
  if (r4 == -1)
    return;
  PlayMusic(0xCA);
  if (gOverworld.objects[r4].unk1Dj)
    gOverworld.objects[r4].direction = g8E0E3C0[gOverworld.objects[0].direction];
  sub_804F19C(r4);
  sub_804DF5C(r4);
  sub_804EF10();
  LoadObjVRAM();
  InitiateScript(gOverworld.objects[r4].scriptR);
}

void sub_8052088 (u8 obj) {
  if (sub_805222C(0, gOverworld.objects[obj].x, gOverworld.objects[obj].y)) {
    u8 y = gOverworld.objects[obj].y;
    u8 x = gOverworld.objects[obj].x;
    u16 temp = gOverworld.unk23C[y * 120 + x];
    gOverworld.objects[obj].unk8 = (temp & 254) >> 1; //todo: what's this doing?
  }
}

u16 sub_80520E0 (u8 x, u8 y) {
  return gOverworld.unk23C[y * 120 + x];
}

void sub_804EEAC (struct OamData* arg0, u16 arg1);
void sub_804EE84 (struct OamData* arg0, int arg1, int arg2);

/*
void sub_8052108 (u8* arg0, u8* arg1) {
  s8 sp[2];
  sub_804EEAC(gOamBuffer + 0, gOverworld.objects[0].unkC);
  sp[0] = (arg1[0] - arg0[0]) * 2;
  sp[1] = (arg1[1] - arg0[1]) * 2;
  sp[1] -= gOverworld.objects[0].unk8;
  sub_804EE84(gOamBuffer + 0, arg0[0] * 2 + sp[0], arg0[1] * 2 + sp[1]);
}*/

NAKED
void sub_8052108 (u8* arg0, u8* arg1) {
  asm_unified("push {r4, r5, r6, lr}\n\
	mov r6, r8\n\
	push {r6}\n\
	sub sp, #4\n\
	adds r4, r0, #0\n\
	adds r5, r1, #0\n\
	ldr r0, _0805216C\n\
	mov r8, r0\n\
	ldr r6, _08052170\n\
	ldrh r1, [r6, #0x1c]\n\
	bl sub_804EEAC\n\
	mov r2, sp\n\
	ldrb r0, [r5]\n\
	ldrb r1, [r4]\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #1\n\
	strb r0, [r2]\n\
	ldrb r0, [r5, #1]\n\
	ldrb r1, [r4, #1]\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #1\n\
	strb r0, [r2, #1]\n\
	movs r3, #0x18\n\
	ldrsh r1, [r6, r3]\n\
	subs r0, r0, r1\n\
	strb r0, [r2, #1]\n\
	ldrb r1, [r4]\n\
	lsls r1, r1, #1\n\
	mov r0, sp\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x18\n\
	asrs r0, r0, #0x18\n\
	adds r1, r1, r0\n\
	ldrb r2, [r4, #1]\n\
	lsls r2, r2, #1\n\
	mov r0, sp\n\
	ldrb r0, [r0, #1]\n\
	lsls r0, r0, #0x18\n\
	asrs r0, r0, #0x18\n\
	adds r2, r2, r0\n\
	mov r0, r8\n\
	bl sub_804EE84\n\
	add sp, #4\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6}\n\
	pop {r0}\n\
	bx r0\n\
	.align 2, 0\n\
_0805216C: .4byte gOamBuffer\n\
_08052170: .4byte gOverworld");
}

u8 sub_8052174 (u16 arg0) {
  if (arg0 & 0xE000)
    return 0;
  if (arg0 & 1)
    return 1;
  return 0;
}

u32 sub_8052194 (u16 arg0) {
  if (!(arg0 & 0x1000))
    return 0;
  return 1;
}

u32 sub_80521AC (u16 arg0) {
  if (arg0 & 0x2000)
    return 1;
  if (arg0 & 0x4000)
    return 2;
  return 0;
}

void TryWalking (u8 direction) {
  sub_8051D20(0, direction);
  sub_805236C(); // check transitioning to a new map/the world map
}

void TryRunning (u8 direction) {
  sub_8051D20(0, direction);
  sub_805236C();
  if (gOverworld.unk240 != 2) {
    sub_8051D20(0, direction);
    sub_805236C();
  }
  if (gOverworld.objects[0].unk18 == 1)
    gOverworld.objects[0].unk18 = 2;
}
