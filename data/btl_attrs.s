@ the second big chunk of data

#include "constants/items.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "include/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

	.align 2
gUnknown_081F9674:: @ 81F9674
	.4byte REG_BG3HOFS
	.4byte ((DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_RELOAD) << 16) | 1
	.4byte 1

	.align 2
gUnknown_081F9680:: @ 81F9680
	.4byte gUnknown_030041D0
	.2byte 0x20
	.byte 0x13
	.byte 0x10
	.4byte BG_VRAM + 0xE104

	.4byte gUnknown_03004250
	.2byte 0x40
	.byte 0x13
	.byte 0x10
	.4byte BG_VRAM + 0xF104

	.4byte gUnknown_030041D0
	.2byte 0x60
	.byte 0x13
	.byte 0x30
	.4byte BG_VRAM + 0xE204

	.4byte gUnknown_03004250
	.2byte 0x80
	.byte 0x13
	.byte 0x30
	.4byte BG_VRAM + 0xF204

	.4byte gUnknown_030041D0
	.2byte 0x20
	.byte 0x13
	.byte 0x18
	.4byte BG_VRAM + 0xE1C4

	.4byte gUnknown_03004250
	.2byte 0x40
	.byte 0x13
	.byte 0x18
	.4byte BG_VRAM + 0xF1C4

gUnknown_081F96C8:: @ 81F96C8
	.string "ヌケニン$" @ "Nukenin" (Shedinja)

	.align 2
gSpriteTemplate_81F96D0:: @ 81F96D0
	spr_template 0, 0, gDummyOamData, gDummySpriteAnimTable, NULL, gDummySpriteAffineAnimTable, sub_800F828

.if DEBUG

UnkDebug0:: @ 0x821F3B8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
@ Title battle menu window positions
gUnknown_Debug_821F424::
	.byte 0x02, 0x00, 0x01, 0x00, 0x02, 0x00, 0x9b, 0x01, 0x01, 0x00, 0x12, 0x00, 0x0a, 0x00, 0x02, 0x00, 0x64, 0x00, 0x01, 0x00, 0x18, 0x00, 0x0e, 0x00, 0x02, 0x00, 0x5c, 0x01, 0x00, 0x00, 0x2e, 0x00
	.byte 0x1a, 0x00, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x30, 0x00, 0x1c, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x34, 0x00, 0x01, 0x00, 0x04, 0x00, 0x9b, 0x01, 0x00, 0x00, 0x44, 0x00, 0x0a, 0x00
	.byte 0x04, 0x00, 0x64, 0x00, 0x01, 0x00, 0x4a, 0x00, 0x0e, 0x00, 0x04, 0x00, 0x5c, 0x01, 0x00, 0x00, 0x60, 0x00, 0x1a, 0x00, 0x04, 0x00, 0x05, 0x00, 0x00, 0x00, 0x62, 0x00, 0x1c, 0x00, 0x04, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x66, 0x00, 0x01, 0x00, 0x06, 0x00, 0x9b, 0x01, 0x00, 0x00, 0x76, 0x00, 0x0a, 0x00, 0x06, 0x00, 0x64, 0x00, 0x01, 0x00, 0x7c, 0x00, 0x0e, 0x00, 0x06, 0x00, 0x5c, 0x01
	.byte 0x00, 0x00, 0x92, 0x00, 0x1a, 0x00, 0x06, 0x00, 0x05, 0x00, 0x00, 0x00, 0x94, 0x00, 0x1c, 0x00, 0x06, 0x00, 0x02, 0x00, 0x00, 0x00, 0x98, 0x00, 0x01, 0x00, 0x08, 0x00, 0x9b, 0x01, 0x00, 0x00
	.byte 0xa8, 0x00, 0x0a, 0x00, 0x08, 0x00, 0x64, 0x00, 0x01, 0x00, 0xae, 0x00, 0x0e, 0x00, 0x08, 0x00, 0x5c, 0x01, 0x00, 0x00, 0xc4, 0x00, 0x1a, 0x00, 0x08, 0x00, 0x05, 0x00, 0x00, 0x00, 0xc6, 0x00
	.byte 0x1c, 0x00, 0x08, 0x00, 0x02, 0x00, 0x00, 0x00, 0xca, 0x00, 0x01, 0x00, 0x0a, 0x00, 0x9b, 0x01, 0x00, 0x00, 0xda, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x64, 0x00, 0x01, 0x00, 0xe0, 0x00, 0x0e, 0x00
	.byte 0x0a, 0x00, 0x5c, 0x01, 0x00, 0x00, 0xf6, 0x00, 0x1a, 0x00, 0x0a, 0x00, 0x05, 0x00, 0x00, 0x00, 0xf8, 0x00, 0x1c, 0x00, 0x0a, 0x00, 0x02, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x01, 0x00, 0x0c, 0x00
	.byte 0x9b, 0x01, 0x00, 0x00, 0x0c, 0x01, 0x0a, 0x00, 0x0c, 0x00, 0x64, 0x00, 0x01, 0x00, 0x12, 0x01, 0x0e, 0x00, 0x0c, 0x00, 0x5c, 0x01, 0x00, 0x00, 0x28, 0x01, 0x1a, 0x00, 0x0c, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x2a, 0x01, 0x1c, 0x00, 0x0c, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2e, 0x01, 0x06, 0x00, 0x12, 0x00, 0x09, 0x00, 0x01, 0x00, 0x34, 0x01, 0x1a, 0x00, 0x12, 0x00, 0x09, 0x00, 0x01, 0x00

gUnknown_Debug_821F564::
	.byte 0x36, 0x01

gUnknown_Debug_821F566::
	.byte 0x01, 0x00

gUnknown_Debug_821F568::
	.byte 0x0e, 0x00, 0x62, 0x01

gUnknown_Debug_821F56C::
	.byte 0x01, 0x00, 0x4a, 0x01, 0x0c, 0x00, 0x0e, 0x00, 0x62, 0x01, 0x00, 0x00, 0x5e, 0x01, 0x01, 0x00, 0x10, 0x00, 0x62, 0x01, 0x00, 0x00, 0x72, 0x01, 0x0c, 0x00, 0x10, 0x00, 0x62, 0x01, 0x00, 0x00

gUnknown_Debug_821F58C::
	.byte 0x86, 0x01, 0x17, 0x00, 0x0e, 0x00, 0x94, 0x01, 0x17, 0x00, 0x10, 0x00

gUnknown_Debug_821F598::
	.byte 0x00, 0x00, 0x09, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x4b, 0x00, 0x00, 0x02, 0x80, 0x00, 0x00, 0x00

gUnknown_Debug_821F5AC::
	.byte 0x01, 0x14, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x02, 0x00, 0x14, 0x00, 0x00, 0x00, 0x14, 0x00, 0x03, 0x00, 0x00, 0x14, 0x00, 0x00, 0x14, 0x00, 0x04, 0x00, 0x00, 0x00, 0x14, 0x00, 0x14, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x14, 0x14, 0x00, 0x06, 0x14, 0x00, 0x14, 0x00, 0x00, 0x14, 0x00, 0x07, 0x00, 0x14, 0x00, 0x14, 0x00, 0x14, 0x00, 0x08, 0x00, 0x00, 0x14, 0x00, 0x14, 0x14, 0x00
	.byte 0x09, 0x14, 0x00, 0x00, 0x14, 0x00, 0x14, 0x00, 0x0a, 0x00, 0x14, 0x00, 0x00, 0x14, 0x14, 0x00, 0x0b, 0x00, 0x02, 0x00, 0x02, 0x02, 0x00, 0x00, 0x0c, 0x03, 0x03, 0x03, 0x03, 0x03, 0x00, 0x00
	.byte 0x0d, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x0e, 0x14, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

Str_821F624:: @ 0x821F624
	.string "ーーーーーーーーーーーー$"
.if ENGLISH

str_821F631:: @ 0x821F631
	.string "JUNICHI$"
	.string "STEVEN LOW$"
	.string "VALENCIA$"
	.string "HARUKOMACHI$"

Str_821F649:: @ 0x821F649
	.string "TETSUJI$"

debug_unk_0b::
@ 0x821F64D
	.string "　　ON$"

@ 0x821F652
	.string "OFF$"

@ 0x821F655
	.string "MONO$"

@ 0x821F65A
	.string "STEREO$"

@ 0x821F65F
	.string "TEST$"

@ 0x821F665
	.string "Received$"

@ 0x821F66D
	.string "Connection error$"

.else
str_821F631:: @ 0x821F631
	.string "ジュンイチ$"
	.string "ダイゴロウ$"
	.string "バレンシア$"
	.string "ハルコマチ$"

Str_821F649:: @ 0x821F649
	.string "てつじ$"

debug_unk_0b::
@ 0x821F64D
	.string "　　オン$"

@ 0x821F652
	.string "オフ$"

@ 0x821F655
	.string "モノラル$"

@ 0x821F65A
	.string "ステレオ$"

@ 0x821F65F
	.string "テストです$"

@ 0x821F665
	.string "うけとったって$"

@ 0x821F66D
	.string "せつぞくエラー$"

.endif

@ 0x821f675
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00
@ Debug battle menu curspr positions
gUnknown_Debug_821F680::
	.byte 0xc0, 0x00, 0x00, 0x00, 0xd2, 0x00, 0x00, 0x00, 0xda, 0x00, 0x00, 0x00, 0xf2, 0x00, 0x00, 0x00, 0xf6, 0x00, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x52, 0x01, 0x00, 0x00, 0x5a, 0x01, 0x00, 0x00
	.byte 0x72, 0x01, 0x00, 0x00, 0x76, 0x01, 0x00, 0x00, 0xc0, 0x01, 0x00, 0x00, 0xd2, 0x01, 0x00, 0x00, 0xda, 0x01, 0x00, 0x00, 0xf2, 0x01, 0x00, 0x00, 0xf6, 0x01, 0x00, 0x00, 0x40, 0x02, 0x00, 0x00
	.byte 0x52, 0x02, 0x00, 0x00, 0x5a, 0x02, 0x00, 0x00, 0x72, 0x02, 0x00, 0x00, 0x76, 0x02, 0x00, 0x00, 0xc0, 0x02, 0x00, 0x00, 0xd2, 0x02, 0x00, 0x00, 0xda, 0x02, 0x00, 0x00, 0xf2, 0x02, 0x00, 0x00
	.byte 0xf6, 0x02, 0x00, 0x00, 0x40, 0x03, 0x00, 0x00, 0x52, 0x03, 0x00, 0x00, 0x5a, 0x03, 0x00, 0x00, 0x72, 0x03, 0x00, 0x00, 0x76, 0x03, 0x00, 0x00, 0xc0, 0x04, 0x00, 0x00, 0xd4, 0x04, 0x00, 0x00
	.byte 0xde, 0x04, 0x00, 0x00, 0xe8, 0x04, 0x00, 0x00, 0xf2, 0x04, 0x00, 0x00, 0xc0, 0x08, 0x00, 0x00, 0xd2, 0x08, 0x00, 0x00, 0xda, 0x08, 0x00, 0x00, 0xf2, 0x08, 0x00, 0x00, 0xf6, 0x08, 0x00, 0x00
	.byte 0x40, 0x09, 0x00, 0x00, 0x52, 0x09, 0x00, 0x00, 0x5a, 0x09, 0x00, 0x00, 0x72, 0x09, 0x00, 0x00, 0x76, 0x09, 0x00, 0x00, 0xc0, 0x09, 0x00, 0x00, 0xd2, 0x09, 0x00, 0x00, 0xda, 0x09, 0x00, 0x00
	.byte 0xf2, 0x09, 0x00, 0x00, 0xf6, 0x09, 0x00, 0x00, 0x40, 0x0a, 0x00, 0x00, 0x52, 0x0a, 0x00, 0x00, 0x5a, 0x0a, 0x00, 0x00, 0x72, 0x0a, 0x00, 0x00, 0x76, 0x0a, 0x00, 0x00, 0xc0, 0x0a, 0x00, 0x00
	.byte 0xd2, 0x0a, 0x00, 0x00, 0xda, 0x0a, 0x00, 0x00, 0xf2, 0x0a, 0x00, 0x00, 0xf6, 0x0a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00, 0x52, 0x0b, 0x00, 0x00, 0x5a, 0x0b, 0x00, 0x00, 0x72, 0x0b, 0x00, 0x00
	.byte 0x76, 0x0b, 0x00, 0x00, 0xc0, 0x0c, 0x00, 0x00, 0xd4, 0x0c, 0x00, 0x00, 0xde, 0x0c, 0x00, 0x00, 0xe8, 0x0c, 0x00, 0x00, 0xf2, 0x0c, 0x00, 0x00

gUnknown_Debug_821F798::
	.byte 0xc0, 0x03, 0x00, 0x00, 0xd6, 0x03, 0x00, 0x00, 0x40, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00, 0xc0, 0x0b, 0x00, 0x00, 0xd6, 0x0b, 0x00, 0x00, 0x40, 0x0c, 0x00, 0x00, 0x56, 0x0c, 0x00, 0x00
.if ENGLISH
Str_821F7B8:: @ 0x821F7B8
	.string "HEIGHT$"

Str_821F7BD:: @ 0x821F7BD
	.string "{PALETTE 1}{COLOR_HIGHLIGHT_SHADOW BLUE YELLOW MAGENTA}YOUR HEIGHT\n"
	.string "POKéMON FILE$"

Str_821F7DA:: @ 0x821F7DA
	.string "{PALETTE 1}{COLOR_HIGHLIGHT_SHADOW BLUE YELLOW MAGENTA}LOAD\n"
	.string "SAVE$"

Str_821F7EA:: @ 0x821F7EA
	.string "Would you like to load?$"

.else

Str_821F7B8:: @ 0x821F7B8
	.string "たかさ　$"

Str_821F7BD:: @ 0x821F7BD
	.string "{PALETTE 1}{COLOR_HIGHLIGHT_SHADOW BLUE YELLOW MAGENTA}たかさ　　　ひこう\n"
	.string "ポケモン　　ファイル$"

Str_821F7DA:: @ 0x821F7DA
	.string "{PALETTE 1}{COLOR_HIGHLIGHT_SHADOW BLUE YELLOW MAGENTA}ロード\n"
	.string "セーブ$"

Str_821F7EA:: @ 0x821F7EA
	.string "ロードしますか？$"
.endif

@ 0x821F7F3
gUnknown_Debug_821F7F3::
	.string "セーブしますか？$"
.endif

	.align 2
gOamData_81F96E8:: @ 81F96E8
	.2byte 0x0100
	.2byte 0xC000
	.2byte 0x0800

	.align 2
gOamData_81F96F0:: @ 81F96F0
	.2byte 0x0100
	.2byte 0xC000
	.2byte 0x2800

	.align 2
gSpriteAnim_81F96F8:: @ 81F96F8
	obj_image_anim_frame 0, 5
	obj_image_anim_jump 0

	.align 2
gSpriteAnimTable_81F9700:: @ 81F9700
	.4byte gSpriteAnim_81F96F8

	.align 2
gSpriteAffineAnim_81F9704:: @ 81F9704
	obj_rot_scal_anim_frame 0xFFF0, 0x0, 0, 4
	obj_rot_scal_anim_frame 0x0, 0x0, 0, 60
	obj_rot_scal_anim_jump 1

	.align 2
gSpriteAffineAnimTable_81F971C:: @ 81F971C
	.4byte gSpriteAffineAnim_81F9704

@ 81F9720
	.include "data/type_effectiveness.inc"

@ 81F9870
	.include "data/text/type_names.inc"

@ 81F98F0
	.include "data/trainer_money.inc"

@ 81F99CC
	.include "data/text/ability_descriptions.inc"

@ 81FA248
	.include "data/text/ability_names.inc"

	.align 2
gUnknown_081FA640:: @ 81FA640
	.4byte HandleAction_UseMove
	.4byte HandleAction_UseItem
	.4byte HandleAction_Switch
	.4byte HandleAction_Run
	.4byte HandleAction_WatchesCarefully
	.4byte HandleAction_SafariZoneBallThrow
	.4byte HandleAction_ThrowPokeblock
	.4byte HandleAction_GoNear
	.4byte HandleAction_SafriZoneRun
	.4byte HandleAction_Action9
	.4byte sub_801B594
	.4byte HandleAction_Action11
	.4byte HandleAction_ActionFinished
	.4byte HandleAction_NothingIsFainted

	.align 2
gUnknown_081FA678:: @ 81FA678
	.4byte bc_8013B1C
	.4byte HandleEndTurn_BattleWon
	.4byte HandleEndTurn_BattleLost
	.4byte HandleEndTurn_BattleLost
	.4byte HandleEndTurn_RanFromBattle
	.4byte HandleEndTurn_FinishBattle
	.4byte HandleEndTurn_MonFled
	.4byte HandleEndTurn_FinishBattle
	.4byte HandleEndTurn_FinishBattle

gStatusConditionString_PoisonJpn:: @ 81FA69C
	.string "どく$$$$$$"

gStatusConditionString_SleepJpn:: @ 81FA6A4
	.string "ねむり$$$$$"

gStatusConditionString_ParalysisJpn:: @ 81FA6AC
	.string "まひ$$$$$$"

gStatusConditionString_BurnJpn:: @ 81FA6B4
	.string "やけど$$$$$"

gStatusConditionString_IceJpn:: @ 81FA6BC
	.string "こおり$$$$$"

gStatusConditionString_ConfusionJpn:: @ 81FA6C4
	.string "こんらん$$$$"

gStatusConditionString_LoveJpn:: @ 81FA6CC
	.string "メロメロ$$$$"

	.align 2
gUnknown_081FA6D4:: @ 81FA6D4
	.4byte gStatusConditionString_PoisonJpn, BattleText_PoisonStatus
	.4byte gStatusConditionString_SleepJpn, BattleText_Sleep
	.4byte gStatusConditionString_ParalysisJpn, BattleText_Paralysis
	.4byte gStatusConditionString_BurnJpn, BattleText_Burn
	.4byte gStatusConditionString_IceJpn, BattleText_IceStatus
	.4byte gStatusConditionString_ConfusionJpn, BattleText_Confusion
	.4byte gStatusConditionString_LoveJpn, BattleText_Love

gUnknown_081FA70C:: @ 81FA70C
	.byte 0, 0, 0
	.byte 3, 5, 0
	.byte 2, 3, 0
	.byte 1, 2, 0
	.byte 1, 1, 0

gUnknown_081FA71B:: @ 81FA71B
	.byte 4, 3, 2, 1

gUnknown_081FA71F:: @ 81FA71F
	.byte 4, 4, 4, 4

	.align 1
gSoundMovesTable:: @ 81FA724
	.2byte   0x2D
	.2byte   0x2E
	.2byte   0x2F
	.2byte   0x30
	.2byte   0x67
	.2byte   0xAD
	.2byte   0xFD
	.2byte  0x13F
	.2byte  0x140
	.2byte  0x130
	.2byte 0xFFFF
