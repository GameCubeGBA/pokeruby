#include "global.h"
#include "rom_8077ABC.h"
#include "trig.h"
#include "battle_anim.h"

extern s16 gBattleAnimArgs[];
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;

static void sub_80CB3A8(u8 taskId);
static void sub_80CB438(u8 taskId);

// silhouette (the transparent shadow image used for mimic.)
// Only used by Mimic.

void sub_80CB340(u8 taskId)
{
    u8 spriteId = GetAnimBattlerSpriteId(1);
    if (gSprites[spriteId].invisible)
    {
        DestroyAnimVisualTask(taskId);
    }
    else
    {
        PrepareBattlerSpriteForRotScale(spriteId, 1);
        gTasks[taskId].data[0] = gBattleAnimArgs[0];
        gTasks[taskId].data[1] = gBattleAnimArgs[1];
        gTasks[taskId].data[11] = 256;
        gTasks[taskId].func = sub_80CB3A8;
    }
}

void sub_80CB3A8(u8 taskId)
{
    u8 spriteId = GetAnimBattlerSpriteId(1);
    gTasks[taskId].data[10] += gTasks[taskId].data[0];
    gSprites[spriteId].x2 = gTasks[taskId].data[10] >> 8;
    if (GetBattlerSide(gBattleAnimTarget))
    {
        gSprites[spriteId].x2 = -gSprites[spriteId].x2;
    }

    gTasks[taskId].data[11] += 16;
    SetSpriteRotScale(spriteId, gTasks[taskId].data[11], gTasks[taskId].data[11], 0);
    sub_8079A64(spriteId);
    gTasks[taskId].data[1]--;
    if (!gTasks[taskId].data[1])
    {
        gTasks[taskId].data[0] = 0;
        gTasks[taskId].func = sub_80CB438;
    }
}

void sub_80CB438(u8 taskId)
{
    if ((u16)gBattleAnimArgs[7] == 0xFFFF)
    {
        if (gTasks[taskId].data[0] == 0)
        {
            u8 spriteId = GetAnimBattlerSpriteId(1);
            ResetSpriteRotScale(spriteId);
            gSprites[spriteId].x2 = 0;
            gSprites[spriteId].y2 = 0;
            gTasks[taskId].data[0]++;
            return;
        }
    }
    else
    {
        if (gTasks[taskId].data[0] == 0)
            return;
    }

    gTasks[taskId].data[0]++;
    if (gTasks[taskId].data[0] == 3)
        DestroyAnimVisualTask(taskId);
}
