#include "global.h"
#include "duel.h"
#include "overworld.h"
#include "gba/io_reg.h"
#include "gba/syscall.h"
#include "gba/macro.h"
#include "card.h"

//3007e54
//related to scripting (printing text etc) sub_80526D0
//E2AEC2...

void SetCurrentScript(struct ScriptCtx*, struct Script *);
void sub_80532A8 (struct ScriptCtx*);
void sub_80526D0 (struct ScriptCtx*);
void sub_804EB04 (struct OamData* arg0, u8 arg1);
void sub_804F544 (void);
void sub_804EC64 (void);

extern u32** g8FA31C0[];
extern u16** g8FA3360[];
extern u8 gUnk_2018800[];
extern struct OamData gOamBuffer[];
extern u16 gUnk2020DFC;

void InitiateScript(struct Script *script) {
  struct ScriptCtx scriptCtx;
  scriptCtx.unk0 = 0;
  scriptCtx.pointer = 0;
  scriptCtx.unk1E = 0;
  scriptCtx.unk8 = 0;
  scriptCtx.unkC = 0;
  scriptCtx.unkD = 1;
  scriptCtx.unk1C = 0;
  scriptCtx.unk78 = 0;
  scriptCtx.unk74 = 0;
  scriptCtx.unk76 = 0;
  scriptCtx.unk7A = 0x1D;
  scriptCtx.unk7C = 1;
  scriptCtx.unk7E = 3;
  scriptCtx.unk80 = 1;
  scriptCtx.unk82 = 0;
  scriptCtx.unk86 = 0;
  SetCurrentScript(&scriptCtx, script);
  sub_80532A8(&scriptCtx); //argument doesn't get used
  sub_80526D0(&scriptCtx);
  scriptCtx.unk0 = 0;
  scriptCtx.pointer = 0;
  scriptCtx.unk8 = 0;
}

static inline void test (void) {
  int i, j;
  u8* dest = gBgVram.cbb4 + 0x2000;
  u8* src = gUnk_2018800;
  for (i = 0; i < 8; dest += 512, i++)
    for (j = 0; j < 512; j++)
      *dest++ = *src++;
}

void DisplayPortrait (struct ScriptCtx* scriptCtx) {
  struct OamData* oam = gOamBuffer;

  if (scriptCtx->unk86 == 1) {
    REG_WIN1H = 0x03ED;
    REG_WIN1V = 0x739D;
    (*(vu8 *)(REG_BASE + 0x49)) = 0x3F;
    REG_WINOUT = 0x1D1E;
    sub_804F544();
    REG_BLDCNT = 0xDE;
    REG_BLDY = 7;
  }
  sub_804EB04(oam, 2);
  sub_80081DC(LoadOam);
  sub_8008220();
  sub_804EB04(oam, scriptCtx->unk85);
  LZ77UnCompWram(g8FA31C0[scriptCtx->unk0][scriptCtx->unk84], gUnk_2018800);
  test();
  CpuCopy16(*g8FA3360[scriptCtx->unk0], g02000000.obj + 0xC0, 128);
  if (CheckFlag(0xF3))
    sub_8044E50(g02000000.bg, 0x1C0, 0x1FF);
  sub_8008220();
  sub_804EC64();
}

void sub_80526D0(struct ScriptCtx* scriptCtx)
{
    while (1)
    {
        if (scriptCtx->currentScript.start[scriptCtx->pointer] == 0)
        {
            struct Script *chooseScript;
            if (!scriptCtx->unk1E)
                chooseScript = scriptCtx->currentScript.unk4;
            else
                chooseScript = scriptCtx->currentScript.unk8;

            scriptCtx->currentScript.start = chooseScript->start;
            scriptCtx->currentScript.unk4 = chooseScript->unk4;
            scriptCtx->currentScript.unk8 = chooseScript->unk8;
            scriptCtx->pointer = 0;
            scriptCtx->unk1E = 0;
            sub_8053388(scriptCtx);
        }
        if (scriptCtx->currentScript.start[0] == 0x5D)
            break;
        switch (scriptCtx->unkC)
        {
        case 0:
            sub_80527E8(scriptCtx); //handle scripting commands? including text?
            break;
        case 1:
            sub_8052F60(scriptCtx); //new paragraph?
            break;
        case 2:
            sub_8053138(scriptCtx);
            break;
        case 3:
            sub_8053040(scriptCtx); //handle option command
            break;
        }
        if (scriptCtx->unk86 == 1)
        {
            REG_WIN1H = 0x03ED;
            REG_WIN1V = 0x739D;
            (*(vu8 *)(REG_BASE + 0x49)) = 0x3F; //TODO
            REG_WINOUT = 0x1D1E;
            sub_804F544();
            REG_BLDCNT = 0xDE;
            REG_BLDY = 7;
        }
        sub_804F218();
    }
    //sub_8053334();
    if (gOverworld.unk240 & 2)
        return;
    PlayOverworldMusic();
    scriptCtx->unk0 = 0;// NULL;
    scriptCtx->unk84 = 0;
    DisplayPortrait(scriptCtx);
    REG_WINOUT = 0x3D3E;
    sub_804F508();
    REG_BLDCNT = 0;
}

void sub_80527E8(struct ScriptCtx *script)
{
    u16 var;
    int i;
    u8 temp;
    switch (script->currentScript.start[script->pointer])
    {
    case 0x23:
        switch (script->currentScript.start[++script->pointer])
        {
        case '0': //new line
            script->pointer++;
            if (script->unkD == 1)
            {
                if (script->unk8 > 0x1B)
                    script->unk8 = 0x1B;
                script->unk8 = g8E0E4CC[script->unk8];
            }
            else
                script->unk8 = g8E0E53C[script->unk8];
            break;
        case '1': //new paragraph
            script->unk82 = 0;
            script->unkC = 1;
            break;
        case '2':
            script->unkD = 0;
            script->unk1E = 0;
            script->pointer++;
            script->unk8 = 1;
            break;
        case '3': //choose option (arrow)
            script->unk82 = 0;
            script->unkD = 1;
            script->unkC = 3;
            script->pointer++;
            break;
        case '4':
            script->unk0 = script->currentScript.start[script->pointer + 1];
            script->unk84 = script->currentScript.start[script->pointer + 2];
            script->unk85 = script->currentScript.start[script->pointer + 3];
            DisplayPortrait(script);
            script->pointer += 4;
            break;
        case '5': //print player name
            sub_80532E8(script);
            script->pointer++;
            break;
        case '6': //set flag
            SetFlag(script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        case '7': //is flag set
            script->unk1E = CheckFlag(script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        case '8': // clear flag
            ClearFlag(script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        case '9': //restore lifepoints
            sub_8048D08();
            script->pointer++;
            break;
        }
        break;
    case 0x24:
        script->pointer += sub_8020698(&script->currentScript.start[script->pointer]);
        break;
    case 0x40:
        switch (script->currentScript.start[++script->pointer])
        {
        case '0': //duel
            sub_800BE0C();
            gDuelData.opponent = script->currentScript.start[script->pointer + 1];
            DuelMain();
            if (gDuelData.unk2B == 1)
            {
                script->unk1E = 0;
                sub_804ED08();
                REG_WIN1H = 0x03ED;
                REG_WIN1V = 0x739D;
                (*(vu8 *)(REG_BASE + 0x49)) = 0x3F; //TODO
                REG_WINOUT = 0x1D1E;
                sub_804F544();
                REG_BLDCNT = 0xDE;
                REG_BLDY = 7;
            }
            else
                script->unk1E = 1;
            script->pointer += 2;
            script->unk0 = 0;
            break;
        case '1':
            sub_8005B38();
            sub_804ED08();
            script->pointer += 2;
            break;
        case '2':
            SaveGame();
            script->pointer++;
            break;
        case '3': //play music (arg0 = id, .2byte)
            PlayMusic(script->currentScript.start[script->pointer + 1] +
                       (script->currentScript.start[script->pointer + 2] << 8));
            script->pointer += 3;
            break;
        case '4':
            gOverworld.music = script->currentScript.start[script->pointer + 1] +
                              (script->currentScript.start[script->pointer + 2] << 8);
            script->pointer += 3;
            break;
        case '5':
            sub_8034FEC(script->currentScript.start[script->pointer + 1] +
                       (script->currentScript.start[script->pointer + 2] << 8));
            script->pointer += 3;
            break;
        case '6':
            sub_8035020(script->currentScript.start[script->pointer + 1] +
                       (script->currentScript.start[script->pointer + 2] << 8));
            script->pointer += 3;
            break;
        case '7': //move_object (arg0 = obj_id, arg1 = orientation(UDLR), arg2 = displacement, arg3 = ?)
            sub_805345C(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script->currentScript.start[script->pointer + 3],
                        script->currentScript.start[script->pointer + 4],
                        script);
            script->pointer += 5;
            break;
        case '8':
            sub_8034FE0();
            script->pointer++;
            break;
        case '9':  //move_object(instantaneous) arg0 = obj_id, arg1 = x, arg2 = y, arg3 = frame of the sprite
            sub_8053CF0(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script->currentScript.start[script->pointer + 3],
                        script->currentScript.start[script->pointer + 4],
                        script);
            script->pointer += 5;
            break;
        }
        break;
    case 0x5E:
        switch (script->currentScript.start[++script->pointer])
        {
        case '0': //drop_object (obj_id, x, y, frame, ?, ?)
            sub_8053520(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script->currentScript.start[script->pointer + 3],
                        script->currentScript.start[script->pointer + 4],
                        script->currentScript.start[script->pointer + 5],
                        script->currentScript.start[script->pointer + 6],
                        script);
            script->pointer += 7;
            break;
        case '1':  //move_object_horizontal(walk) (arg0 = obj id, arg1 = horizontal position)
            sub_8053984(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script);
            script->pointer += 3;
            break;
        case '2': //move_object_vertical(walk) (arg0 = obj id, arg1 = vertical position)
            sub_8053A74(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script);
            script->pointer += 3;
            break;
        case '3':
            sub_8053D88(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script->currentScript.start[script->pointer + 3],
                        script);
            script->pointer += 4;
            break;
        case '4':
            i = (script->currentScript.start[script->pointer + 1] << 8) |
                        script->currentScript.start[script->pointer + 2];
            sub_8053884(i,
                        script->currentScript.start[script->pointer + 3],
                        script);
            script->pointer += 4;
            break;
        case '5':
            sub_8054AB0(script->currentScript.start[script->pointer + 1], script);
            script->pointer += 2;
            break;
        case '6':
            for (i = script->currentScript.start[script->pointer + 1]; i; i--)
                sub_804F218();
            script->pointer += 2;
            break;
        case '7':
            AddCardToTrunk(script->currentScript.start[script->pointer + 1] +
                          (script->currentScript.start[script->pointer + 2] << 8),
                           1);
            script->pointer += 3;
            break;
        case '8':
            sub_8008D88(script->currentScript.start[script->pointer + 1] +
                       (script->currentScript.start[script->pointer + 2] << 8));
            script->pointer += 3;
            break;
        case '9':
            sub_8053C18(script, script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        }
        break;
    case 0x7C:
        switch (script->currentScript.start[++script->pointer])
        {
        case '0':
            var = sub_80520E0(gOverworld.objects[0].x, gOverworld.objects[0].y);
            var = sub_80524A4(var);
            script->unk1E = 1;
            if (var == script->currentScript.start[script->pointer + 1] >> 2)
                script->unk1E = 0;
            script->pointer += 2;
            break;
        case '1':
            sub_8053E34(script->currentScript.start[script->pointer + 1]);
            script->unk86 = 0;
            script->pointer += 2;
            break;
        case '2':
            sub_8035038(script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        case '3':
            script->unk86 = 0;
            sub_805339C();
            REG_WINOUT = 0x3D3E;
            sub_804F508();
            REG_BLDCNT = 0;
            script->pointer++;
            break;
        case '4':
            sub_8053D50(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script);
            script->pointer += 3;
            break;
        case '5': //warp to another map (arg0 = map, arg1 = state, arg2 = connection)
            gOverworld.unk240 |= 2;
            sub_80523EC(script->currentScript.start[script->pointer + 1],
                        script->currentScript.start[script->pointer + 2],
                        script->currentScript.start[script->pointer + 3]);
            script->pointer += 5;
            break;
        case '6': //reaction box (arg0 = reaction (exclamation mark, heart etc), arg1 = ? arg2 = obj_id)
            temp = script->currentScript.start[script->pointer + 1];
            i = (script->currentScript.start[script->pointer + 2] << 8) +
                 script->currentScript.start[script->pointer + 3];
            sub_8053B40(temp,
                        i,
                        script);
            script->pointer += 4;
            break;
        case '7':
            sub_80553F8(script, script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        case '8':
            sub_80512E0(script, script->currentScript.start[script->pointer + 1]);
            script->pointer += 2;
            break;
        }
        break;
    default:
        if (script->currentScript.start[script->pointer] & 0x80) //special chars
        {
            script->unk86 = 1;
            var = script->currentScript.start[script->pointer + 1] << 8 | script->currentScript.start[script->pointer];
            script->pointer += 2;
        }
        else { //printable chars
          switch (script->currentScript.start[script->pointer])
            {
            case ' ': case '!': case '"': case '%': case '\'':
            case ',': case '-': case '.': case ':': case ';': case '?':
            case 'A' ... 'Z': case 'a' ... 'z':
                i = 1;
                script->unk86 = i;
                var = gUnk_8E00E30[script->currentScript.start[script->pointer] - ' '][1];
                var <<= 8;
                var |= gUnk_8E00E30[script->currentScript.start[script->pointer] - ' '][0];

                script->pointer++;
                break;
            default:
                script->unk86 = 1;

                var = gUnk_8E00E30[0][1];
                var <<= 8;
                var |= gUnk_8E00E30[0][0];
                script->pointer++;
                break;
            }
        }

        script->unk82 = 1;
        if (script->unk8 & 1)
            sub_8020968(&gBgVram.sbb1B[1][0] + ((script->unk8 >> 1) << 6), var, 0x101);
        else
            sub_8020968(&gBgVram.sbb1B[0][16] + ((script->unk8 >> 1) << 6), var, 0x101);
        sub_8053284(script);
    }
}

void sub_8052F60 (struct ScriptCtx *script) {
  if (gUnk2020DFC & 259) {
    PlayMusic(202);
    script->pointer++;
    if (script->unkD == 1)
      script->unk8 = 0;
    else
      script->unk8 = 1;
    script->unk1C = 0;
    script->unkC = 0;
    LZ77UnCompWram(g82AD2D0, gBgVram.sbb1B);
    return;
  }
  switch (script->unk1C++) {
    case 0:
      if (script->unk8 & 1)
        sub_8020968(&gBgVram.sbb1B[1][0] + ((script->unk8 >> 1) << 6), 0xA081, 0x101);
      else
        sub_8020968(&gBgVram.sbb1B[0][16] + ((script->unk8 >> 1) << 6), 0xA081, 0x101);
      break;
    case 15:
      if (script->unk8 & 1)
        sub_8020968(&gBgVram.sbb1B[1][0] + ((script->unk8 >> 1) << 6), 0x4081, 0x101);
      else
        sub_8020968(&gBgVram.sbb1B[0][16] + ((script->unk8 >> 1) << 6), 0x4081, 0x101);
      break;
    case 29:
      script->unk1C = 0;
      break;
  }
}


void sub_8053040 (struct ScriptCtx *script) {
  int temp = gUnk2020DFC & 259;
  if (temp) {
    PlayMusic(55);
    script->pointer += 2;
    if (script->unkD == 1)
      script->unk8 = 0;
    else
      script->unk8 = 1;
    script->unk1C = 0;
    script->unkC = 0;
    LZ77UnCompWram(g82AD2D0, gBgVram.sbb1B);
    return;
  }
  if (gUnk2020DFC & 96 && script->unk1E == 1) {
    PlayMusic(54);
    script->unk1E = temp;
  }
  if (gUnk2020DFC & 144 && !script->unk1E) {
    PlayMusic(54);
    script->unk1E = 1;
  }
  switch (script->unk1E) {
    case 0:
      sub_8020968(&gBgVram.sbb1B[0][16], 0x7281, 0x101);
      sub_8020968(&gBgVram.sbb1B[28][16], 0x4081, 0x101);
      break;
    case 1:
      sub_8020968(&gBgVram.sbb1B[0][16], 0x4081, 0x101);
      sub_8020968(&gBgVram.sbb1B[28][16], 0x7281, 0x101);
      break;
  }
}

void sub_8053138 (struct ScriptCtx *script) {
  u16 var;
  script->unk86 = 1;
  if ((s8)script->unk22[script->unk78] >= 0) {
    var = gUnk_8E00E30[script->unk22[script->unk78] - 32][1];
    var <<= 8;
    var |= gUnk_8E00E30[script->unk22[script->unk78] - 32][0];
    script->unk78++;
  }
  else {
    var = script->unk22[script->unk78 + 1];
    var <<= 8;
    var |= script->unk22[script->unk78];
    script->unk78 += 2;
  }
  if (script->unk8 & 1)
    sub_8020968(&gBgVram.sbb1B[1][0] + ((script->unk8 >> 1) << 6), var, 0x101);
  else
    sub_8020968(&gBgVram.sbb1B[0][16] + ((script->unk8 >> 1) << 6), var, 0x101);
  if (script->unkD == 1)
    script->unk8 = gE0E674[script->unk8];
  else
    script->unk8 = gE0E754[script->unk8];
  if (!script->unk22[script->unk78])
    script->unkC = 0;
}

void sub_80531FC (struct ScriptCtx* script) {
  int i;
  SetCardInfo(script->unk20);
  script->unk78 = 0;
  script->unk78 += sub_8020698(gCardInfo.name);
  for (i = 0; i < 80 && gCardInfo.name[i] && gCardInfo.name[i] != '$'; i++) {
    script->unk22[i] = gCardInfo.name[script->unk78];
    script->unk78++;
  }
  script->unk22[i] = '\0';
  script->unk78 = 0;
  script->unkC = 2;
}

void SetCurrentScript (struct ScriptCtx *scriptCtxPtr, struct Script *script) {
  scriptCtxPtr->currentScript.start = script->start;
  scriptCtxPtr->currentScript.unk4 = script->unk4;
  scriptCtxPtr->currentScript.unk8 = script->unk8;
}

void sub_8053284 (struct ScriptCtx *script) {
  if (script->unkD == 1)
    script->unk8 = gE0E674[script->unk8];
  else
    script->unk8 = gE0E754[script->unk8];
}
