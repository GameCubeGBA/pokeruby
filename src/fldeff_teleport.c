#include "global.h"
#include "field_effect.h"
#include "field_player_avatar.h"
#include "pokemon_menu.h"
#include "overworld.h"
#include "rom6.h"
#include "task.h"
#include "constants/field_effects.h"

extern void (*gFieldCallback)(void);
extern u8 gLastFieldPokeMenuOpened;
extern void (*gPostMenuFieldCallback)(void);

static void FieldCallback_Teleport(void);
static void StartTeleportFieldEffect(void);


bool8 SetUpFieldMove_Teleport(void)
{
    if (Overworld_MapTypeAllowsTeleportAndFly(gMapHeader.mapType) == TRUE)
    {
        gFieldCallback = FieldCallback_PrepareFadeInFromMenu;
        gPostMenuFieldCallback = FieldCallback_Teleport;
        return TRUE;
    }

    return FALSE;
}

static void FieldCallback_Teleport(void)
{
    Overworld_ResetStateAfterTeleport();
    FieldEffectStart(FLDEFF_USE_TELEPORT);
    gFieldEffectArguments[0] = gLastFieldPokeMenuOpened;
}

bool8 FldEff_UseTeleport(void)
{
    u8 taskId = oei_task_add();
    gTasks[taskId].data[8] = (u32)StartTeleportFieldEffect >> 16;
    gTasks[taskId].data[9] = (u32)StartTeleportFieldEffect;
    SetPlayerAvatarTransitionFlags(PLAYER_AVATAR_FLAG_ON_FOOT);
    return 0;
}

static void StartTeleportFieldEffect(void)
{
    FieldEffectActiveListRemove(FLDEFF_USE_TELEPORT);
    FldEff_TeleportWarpOut();
}
