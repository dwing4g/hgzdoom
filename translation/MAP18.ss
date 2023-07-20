#include "zcommon.acs"

//Gold - 310 + 180s + 90csr
//TIDs - 599...628, 629, 630...818

//LEVEL START

int spec115 = 0;
Script 1 ENTER
{
	//Friendly Spawner
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 741, 601, 160);
	}
	If(CheckInventory("IDEarthMotherCounter") > 0)
	{
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMotherStationary", 742, 602, 160);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 743, 603, 0);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 744, 604, 0);
	}
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 745, 605, 112);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 746, 606, 0);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 747, 607, 64);
	}
	If(CheckInventory("IDWitchCounter") > 0)
	{
		TakeInventory("IDWitchCounter", 1);
		SpawnSpotForced("IDWitchStationary", 748, 608, 32);
	}
	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
	{
		SpawnSpotForced("IDLancerStationary", 749, 609, 0);
	}
	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") > 0)
	{
		SpawnSpotForced("DwarfShieldguard", 750, 751, 0);
	}

	//Spawns
	If(CheckInventory("InventorySledgehammer") == 0)
	{
	  SpawnSpotForced("InventorySledgehammer", 359, 0, 0);
	}
	else
	{
	  SpawnSpotForced("CultSledgehammer", 359, 0, 0);
	}

	//Actor Changes
	GiveActorInventory(332, "DropsQuestItem", 1);

	SetActorFlag(182, "FLOATBOB", 1);
	SetActorFlag(182, "NOBLOCKMAP", 1);

	SetActorFlag(253, "INVISIBLE", 1);
	SetActorFlag(253, "NOBLOCKMAP", 1);
	SetActorFlag(254, "NOCLIP", 1);

	SetActorFlag(262, "NOBLOCKMAP", 1);
    SetActorFlag(267, "NOBLOCKMONST", 1);

	SetActorFlag(369, "BRIGHT", 0);

	SetActorFlag(390, "INVISIBLE", 1);

	SetActorFlag(397, "INVISIBLE", 1);

	SetActorFlag(430, "INVISIBLE", 1);

	SetActorFlag(186, "INVISIBLE", 1);

	SetActorFlag(436, "NOCLIP", 1);
	SetActorFlag(436, "NOINTERACTION", 1);

	SetActorFlag(442, "NORADIUSDMG", 1);

	SetActorFlag(494, "NOTONAUTOMAP", 1);

	SetActorFlag(512, "INVISIBLE", 1);
	SetActorFlag(512, "NOBLOCKMAP", 1);

	SetActorFlag(517, "INVISIBLE", 1);
	SetActorFlag(517, "NOBLOCKMAP", 1);

	SetActorFlag(629, "INVISIBLE", 1);
	SetActorFlag(631, "INVISIBLE", 1);
	SetActorFlag(633, "INVISIBLE", 1);

	SetActorFlag(524, "INVISIBLE", 1);
	SetActorFlag(524, "NOINTERACTION", 1);
	SetActorFlag(525, "COUNTITEM", 0);
	SetActorFlag(525, "INVISIBLE", 1);
	SetActorFlag(525, "NOTONAUTOMAP", 1);
	SetActorFlag(525, "NOINTERACTION", 1);

	SetActorFlag(543, "INVISIBLE", 1);

	SetActorFlag(544, "NOINFIGHTING", 1);
	SetActorFlag(544, "NOTARGET", 1);

	SetActorFlag(677, "INVISIBLE", 1);

	SetActorFlag(681, "INVISIBLE", 1);

	SetActorFlag(756, "SOLID", 0);

	SetActorFlag(772, "INVISIBLE", 1);

	SetActorFlag(409, "DONTTHRUST", 1);

	If(CheckInventory("InventorybagOfHolding") > 0)
	{
	  Thing_Remove(528);
	}
	else
	{
	  spec115 += 1;
	  SetActorFlag(528, "COUNTITEM", 0);
	  SetActorFlag(528, "INVISIBLE", 1);
	  SetActorFlag(528, "NOTONAUTOMAP", 1);
	  SetActorFlag(528, "NOINTERACTION", 1);
	}

	//Ghosts
	GiveActorInventory(47, "IsGhost", 1);
	SetActorFlag(47, "NOTONAUTOMAP", 1);
	SetActorFlag(47, "NOBLOOD", 1);
	SetActorFlag(47, "NOPAIN", 1);
	SetActorFlag(47, "NOFEAR", 1);
	SetActorFlag(47, "DONTDRAIN", 1);
	SetActorFlag(47, "NOTIMEFREEZE", 1);
	SetActorFlag(47, "DONTTHRUST", 1);
	SetActorFlag(47, "SOLID", 0);
	SetActorFlag(47, "INVISIBLE", 1);
	GiveActorInventory(48, "IsGhost", 1);
	SetActorProperty(48, APROP_Alpha, 0.0);
	SetActorFlag(48, "NOTONAUTOMAP", 1);
	SetActorFlag(48, "NOBLOOD", 1);
	SetActorFlag(48, "NOPAIN", 1);
	SetActorFlag(48, "NOFEAR", 1);
	SetActorFlag(48, "DONTDRAIN", 1);
	SetActorFlag(48, "NOTIMEFREEZE", 1);
	SetActorFlag(48, "DONTTHRUST", 1);
	SetActorFlag(48, "SOLID", 0);
	GiveActorInventory(49, "IsGhost", 1);
	SetActorProperty(49, APROP_Alpha, 0.0);
	SetActorFlag(49, "NOTONAUTOMAP", 1);
	SetActorFlag(49, "NOBLOOD", 1);
	SetActorFlag(49, "NOPAIN", 1);
	SetActorFlag(49, "NOFEAR", 1);
	SetActorFlag(49, "DONTDRAIN", 1);
	SetActorFlag(49, "NOTIMEFREEZE", 1);
	SetActorFlag(49, "DONTTHRUST", 1);
	SetActorFlag(49, "SOLID", 0);

	//Scripts
	ACS_Execute(66, 0, 0, 0, 0);
	ACS_Execute(71, 0, 0, 0, 0);



	//  /*
	//Shipwreck Segment Start
	FadeTo(0, 0, 0, 1.0, 0.0);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetMugShotState("Sleep");

	Teleport_NoFog(255, 1, 0);
	ChangeCamera(251, 0, 1);
	SetActorAngle(0, 0.75);

	SetActorFlag(237, "INVISIBLE", 1);

	SetActorFlag(222, "INVISIBLE", 1);
	SetActorFlag(223, "INVISIBLE", 1);

	SetActorFlag(224, "NOBLOCKMAP", 1);

	ACS_Execute(32, 0, 0, 0, 0);
	Delay(1);
	ACS_Execute(33, 0, 0, 0, 0);
	ACS_Execute(38, 0, 0, 0, 0);

	Delay(245);
	FadeTo(0, 0, 0, 0.0, 1.0);

	PlaySound(251, "Character/ZanTired", CHAN_AUTO);
	SetMugShotState("Normal");
	Delay(105);
	FadeTo(0, 0, 0, 1.0, 6.0);
	Delay(245);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);

	ChangeCamera(0, 0, 1);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 5.0);
	// */
}

int spec659 = 0;
int dial629 = 8;
int spec73a = 0;
int spec73b = 0;
int spec683 = 0;
Script 73 RETURN
{
	//Reaver Envoy
	If(CheckInventory("InventoryAngelFeather") > 0 && CheckInventory("QuestMap18GetPrimarchsTaint") == 2 && CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("QuestMap19PurplePrimarch") == 1 && CheckInventory("QuestMap19YellowPrimarch") == 1 && CheckInventory("QuestMap20BluePrimarch") == 1 && CheckInventory("QuestMap20RedPrimarch") == 1)
    {
	  SetLineSpecial(766, ACS_execute, 766, 0, 0, 0, 0);
	}

	//Blue Portal
	If(CheckInventory("ScriptHasActivatedRebelHideoutPortal") > 0)
	{
		SetLineSpecial(437, ACS_Execute, 84, 0, 0, 0, 0);
		SetLineTexture(437, SIDE_FRONT, TEXTURE_MIDDLE, "Portal01");
		SetLineTexture(437, SIDE_BACK, TEXTURE_MIDDLE, "Portal01");
		SpawnSpotForced("HedonTeleportFog", 438, 0, 0);
	}

	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Salt Mine Elevator
	If(CheckProximity(0, "IDBannerBlacksmith", 360.0, 1, CPXF_NOZ))
	{
		FadeTo(0, 0, 0, 1.0, 0.0);
		Ceiling_MoveToValue(174, 9999, 1015, 1);
		Floor_MoveToValue(179, 9999, 1010, 1);
		Ceiling_MoveToValue(179, 9999, 1000, 1);
		Floor_MoveToValue(183, 9999, 906, 1);
		Ceiling_MoveToValue(183, 9999, 896, 1);
		TagWait(183);
		Thing_Move(0,341,1);
		FadeTo(0, 0, 0, 0.0, 5.0);
		Ceiling_MoveToValue(174, 32, 70, 1);
		Ceiling_MoveToValue(183, 32, 49, 0);
		Floor_MoveToValue(183, 32, 39, 0);
		Ceiling_MoveToValue(179, 32, 55, 1);
		Floor_MoveToValue(179, 32, 65, 1);
	}
	else
	{
		Ceiling_MoveToValue(174, 9999, 70, 1);
		Ceiling_MoveToValue(183, 9999, 49, 0);
		Floor_MoveToValue(183, 9999, 39, 0);
		Ceiling_MoveToValue(179, 9999, 55, 1);
		Floor_MoveToValue(179, 9999, 65, 1);
	}

	//Dialogue Resets
	dial629 = 8;

	//Ingrim Brew
	If(IsTIDUsed(665))
	{
		spec659 = 1;
	}

	//Bendi Garden
	If(GetSectorCeilingZ(684, 0, 0) > 271.0)
	{
		If(spec683 == 0)
		{
		  spec683 += 1;
		  Ceiling_MoveToValue(684, 999, 272, 0);
		  SetActorFlag(681, "INVISIBLE", 0);
		  Thing_Remove(682);
		}
		If(IsTIDUsed(687) == 0)
		{
		  SpawnSpotForced("HealthTomato", 686, 687, 0);
		}
	}

	//Small Port Lighthouse On
	If(CheckInventory("QuestMap20GetSoulKeyFragments") > 0 && Spec73a == 0)
	{
	Spec73a += 1;
	SetLineSpecial(519, 0, 0, 0, 0, 0, 0);
	Floor_RaiseByValue(394, 999, 96);
	FloorAndCeiling_LowerByValue(395, 999, 128);
	Sector_SetColor(419, 255, 255, 255, 0);
	Thing_Activate(420);
	SetActorFlag(397, "INVISIBLE", 0);
	Thing_Remove(396);
	Thing_Activate(398);
	ChangeFloor(399, "Crate4");
	Floor_RaiseByvalue(399, 999, 32);
	Sector_SetFloorScale2(399, 0.5, 0.5);
	ChangeFloor(400, "Crate4");
	Floor_RaiseByvalue(400, 999, 64);
	ChangeFloor(401, "Crate4");
	Floor_RaiseByvalue(401, 999, 96);
	Sector_SetFloorScale2(401, 0.5, 0.5);
	TagWait(401);
	SpawnSpotForced("AmmoBox", 402, 0, 0);
	SpawnSpotForced("Initiate", 403, 0, 128);
	SpawnSpotForced("Cultist", 404, 0, 96);
	SpawnSpotForced("Hellion", 405, 0, 96);
	SpawnSpotForced("Hellblaze", 406, 0, 80);
	Thing_Remove(409);
	Line_SetBlocking(408, 0, BLOCKF_PLAYERS);
	}

	//Shady Fixer Shop
	If(CheckInventory("QuestMap19YellowPrimarch") == 1 && Spec73b == 0)
	{
	Spec73b += 1;
	SpawnSpotForced("NPCShadyFixer", 523, 635, 192);
	SetActorFlag(524, "INVISIBLE", 0);
	SetActorFlag(525, "INVISIBLE", 0);
	SetActorFlag(528, "INVISIBLE", 0);
	ChangeFloor(344, "Stone05");
	Floor_MoveToValue(344, 999, 167, 0);
	ChangeFloor(345, "Crate4");
	ChangeFloor(346, "Crate1");
	ChangeFloor(347, "Crate2");
	ChangeFloor(348, "Crate3");
	SetLineTexture(349, SIDE_FRONT, TEXTURE_BOTTOM, "Crate4");
	SetLineTexture(350, SIDE_FRONT, TEXTURE_BOTTOM, "Crate1");
	SetLineTexture(351, SIDE_FRONT, TEXTURE_BOTTOM, "Crate3");
	SetLineTexture(352, SIDE_FRONT, TEXTURE_BOTTOM, "Crate2");
	Line_SetBlocking(527, BLOCKF_PLAYERS, 0);
	}

	//Bury the Dead
	ACS_Execute(718, 0, 0, 0, 0);
}

//LEVEL END
//Portal Exit
Script 768 (void)
{
    If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Bear Warrior:    For the Iron Division, sarge! Kick the Baron's ass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 1600.0, 1) || CheckProximity(0, "IDLancerGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Lancer:    Slay the Baron and avenge our fallen, Zan!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDWitch", 1600.0, 1) || CheckProximity(0, "IDWitchGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Witch:    Bring us the Baron's head, Bonebreaker!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDReaver", 1600.0, 1) || CheckProximity(0, "IDReaverGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Reaver:    For Valc! Make the Baron pay, Zan!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixer", 1600.0, 1) || CheckProximity(0, "IDFixerGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Fixer:    You got this, sarge! Kick the Baron's ass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMother", 1600.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 920.0, 1))
	  {
	    Hudmessage(s:"Earth Mother:    Return to us victorious, Zan!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	FadeTo(0, 0, 0, 1.0, 2.5);
	Delay(4*35);
	ACS_Execute(48, 0, 0, 0, 0);
	TakeInventory("InventoryCrimsonSaltRock", 100);
	TakeInventory("InventoryShovelB", 100);
	TakeInventory("InventoryArcaneSalts", 100);
	TakeInventory("InventoryBagOfYeast", 100);
	TakeInventory("InventoryIronBoundTome", 100);
	TakeInventory("InventoryIronLever", 100);
	TakeInventory("InventoryOrcDoll", 100);
	TakeInventory("InventoryDeadlyPoison", 100);
	TakeInventory("InventoryPickaxe", 100);
	TakeInventory("InventoryChaoticDevice", 100);
	TakeInventory("InventoryBodyGem", 100);
	TakeInventory("InventoryPendantOfTrueSightServant", 100);
	TakeInventory("InventoryManaPotion", 100);
	TakeInventory("InventoryCursedChalice", 100);
    TakeInventory("InventoryCursedChaliceBlood", 100);
	TakeInventory("InventoryCursedChaliceOil", 100);
	TakeInventory("InventoryCursedChaliceMana", 100);
	TakeInventory("InventorySpiritGem", 100);
	TakeInventory("InventoryJournal", 100);
	If(ThingCountName("IDLancer", 0) == 0 && ThingCountName("IDLancerGuarding", 0) == 0 && ThingCountName("IDLancerPathfinder", 0) == 0 && ThingCountName("IDLancerRecruitable", 0) == 0)
	{
		TakeInventory("QuestMap19RescueLancer", 100);
	}
	Delay(35);
	//FadeTo(0, 0, 0, 0.0, 0.0);
	Exit_Normal(0);
}
//Main Gates Exit
Script 86 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map19", 7, CHANGELEVEL_NOINTERMISSION, -1);
}
//Gardner Exit
Script 85 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map19", 6, CHANGELEVEL_NOINTERMISSION, -1);
}
//Portal Exit
Script 84 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map20", 4, CHANGELEVEL_NOINTERMISSION, -1);
}
//New Crypt Exit
Script 82 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map20", 3, CHANGELEVEL_NOINTERMISSION, -1);
}
//Salt Mine Elevator Exit
Script 47 (void)
{
	If(GetSectorCeilingZ(174, 0, 0) == -70.0)
	{
	  PlaySound(180, "Interaction/RopeTie", CHAN_AUTO);
	  Ceiling_LowerByValue(173, 16, 16);
	  FloorAndCeiling_LowerByvalue(178, 16, 16);
	  Line_SetBlocking(181, BLOCKF_PLAYERS, 0);
	  TagWait(173);
	  TagWait(178);
	  Ceiling_RaiseByValue(173, 8, 16);
	  FloorAndCeiling_RaiseByvalue(178, 8, 16);

	  Ceiling_MoveToValue(174, 32, 1015, 1);
	  Ceiling_MoveToValue(183, 32, 896, 1);
	  Floor_MoveToValue(183, 32, 906, 1);
	  Ceiling_MoveToValue(179, 32, 1000, 1);
	  Floor_MoveToValue(179, 32, 1010, 1);

	  Delay(70);
	  If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	  {
		  FadeTo(0, 0, 0, 1.0, 5.0);
	  }

	  TagWait(174);
	  Line_SetBlocking(181, 0, BLOCKF_PLAYERS);

	  If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	  {
	    ACS_NamedExecuteWithResult("KeyCheck");
		ACS_NamedExecuteWithResult("TakePowerups");
		ACS_NamedExecuteWithResult("CloseJournal");
		Delay(4);
	    Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	    Delay(4);
	    ChangeLevel("Map20", 2, CHANGELEVEL_NOINTERMISSION, -1);
	  }
	}
}


//SHIPWRECKED SEGMENT
//Environment Switch
int spec32 = 2;
Script 32 (void)
{
	If(Spec32 % 2 == 0)
	{
		Spec32 += 1;

        Thing_Deactivate(204);
		Thing_Activate(203);

		Thing_Remove(618);

		SetActorFlag(196, "INVISIBLE", 1);
		SetActorFlag(196, "NOINTERACION", 1);
		SetActorFlag(196, "NOBLOCKMAP", 1);
		SetActorFlag(197, "INVISIBLE", 0);
		SetActorFlag(197, "NOINTERACION", 0);
		SetActorFlag(197, "NOBLOCKMAP", 0);

		ChangeSky("CYAN", "CYAN");

		ChangeFloor(176, "WATER_G1");
		ChangeFloor(177, "WATER_G1");
		ChangeFloor(189, "SAND2");
		ChangeFloor(190, "SAND1");
		ChangeFloor(192, "GRASS1");
		ChangeFloor(195, "STONE_G");
		ChangeFloor(205, "SAND1_B1");
		ChangeFloor(206, "SAND1_B2");

		SetLineTexture(191, SIDE_FRONT, TEXTURE_MIDDLE, "STONE2");
		SetLineTexture(198, SIDE_FRONT, TEXTURE_MIDDLE, "CAVE1_G");
		SetLineTexture(193, SIDE_FRONT, TEXTURE_TOP, "STONE2");
		SetLineTexture(199, SIDE_FRONT, TEXTURE_MIDDLE, "VINES1");
		SetLineTexture(199, SIDE_BACK, TEXTURE_MIDDLE, "VINES1");
		SetLineTexture(200, SIDE_FRONT, TEXTURE_TOP, "STONE2_U");
		SetLineTexture(207, SIDE_FRONT, TEXTURE_BOTTOM, "STONE2");
		SetLineTexture(201, SIDE_FRONT, TEXTURE_BOTTOM, "WATER_F1");

		ChangeCeiling(194, "STONE_G");
		ChangeCeiling(208, "STONE_B4");
		ChangeCeiling(249, "SAND1");

		Sector_SetFade(176, 188, 255, 255);
		Sector_SetFade(177, 188, 255, 255);
		Sector_SetFade(189, 188, 255, 255);
		Sector_SetFade(190, 188, 255, 255);
		Sector_SetFade(192, 188, 255, 255);
		Sector_SetFade(205, 188, 255, 255);
		Sector_SetFade(206, 188, 255, 255);
		Sector_SetFade(209, 188, 255, 255);
		Sector_SetFade(248, 188, 255, 255);
	}
	else
	If(Spec32 % 2 == 1)
	{
		Spec32 += 1;

		Thing_Remove(617);
		Thing_Deactivate(203);
		Thing_Activate(204);

		SpawnSpotForced("CaveCrystalRedD", 210, 618, 0);
		SpawnSpotForced("CaveCrystalRedC", 211, 618, 0);
		SpawnSpotForced("CaveCrystalRedB", 212, 618, 0);

		SetActorFlag(196, "INVISIBLE", 0);
		SetActorFlag(196, "NOINTERACION", 0);
		SetActorFlag(196, "NOBLOCKMAP", 0);
		SetActorFlag(197, "INVISIBLE", 1);
		SetActorFlag(197, "NOINTERACION", 1);
		SetActorFlag(197, "NOBLOCKMAP", 1);

		ChangeSky("SKY17", "SKY17");

		ChangeFloor(176, "MOLTEN01");
		ChangeFloor(177, "LAVA_01");
		ChangeFloor(189, "ASH2");
		ChangeFloor(190, "ASH1");
		ChangeFloor(192, "CURSED1");
		ChangeFloor(195, "STONE05");
		ChangeFloor(205, "ASH1");
		ChangeFloor(206, "ASH1");

		SetLineTexture(191, SIDE_FRONT, TEXTURE_MIDDLE, "STONE06");
		SetLineTexture(198, SIDE_FRONT, TEXTURE_MIDDLE, "CAVE02");
		SetLineTexture(193, SIDE_FRONT, TEXTURE_TOP, "STONE06");
		SetLineTexture(199, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(199, SIDE_BACK, TEXTURE_MIDDLE, "");
		SetLineTexture(200, SIDE_FRONT, TEXTURE_TOP, "STONE06");
		SetLineTexture(207, SIDE_FRONT, TEXTURE_BOTTOM, "STONE06");
		SetLineTexture(201, SIDE_FRONT, TEXTURE_BOTTOM, "LAVA_01");

		ChangeCeiling(194, "STONE05");
		ChangeCeiling(208, "STONE05");
		ChangeCeiling(249, "ASH1");

		Sector_SetFade(176, 255, 150, 50);
		Sector_SetFade(177, 255, 150, 50);
		Sector_SetFade(189, 255, 150, 50);
		Sector_SetFade(190, 255, 150, 50);
		Sector_SetFade(192, 255, 150, 50);
		Sector_SetFade(205, 255, 150, 50);
		Sector_SetFade(206, 255, 150, 50);
		Sector_SetFade(209, 255, 150, 50);
		Sector_SetFade(248, 255, 150, 50);
	}
}

//Waves
Script 33 (void)
{
	If(Spec32 % 2 == 1)
	{
		SpawnProjectile(202, "SeaWave", 64, 80, 0, 0, 617);
		SpawnProjectile(214, "SeaWave", 0, 80, 0, 0, 617);
		SpawnProjectile(213, "SeaWave", 32, 80, 0, 0, 617);
	}
	Delay(random(8*35, 12*35));
	Restart;
}

//Rain Check
Script 35 (void)
{
	If(IsTIDUsed(620) == 0)
	{
	Acs_Execute(36, 0, 0, 0, 0);
	SpawnSpotForced("ShadowAbhaothSitting", 227, 619, 0);
	Thing_Remove(228);
	//Thing_Move(229, 230, 1);
	TeleportOther(229, 230, 0);
	Delay(105);
	SpawnSpotForced("RainDropGenerator", 216, 197, 0);
	Delay(35);
	Thing_Activate(217);
	Terminate;
	}
	Delay(105);
	Restart;
}
//Thunder
Script 36 (void)
{
	PlaySound(218, "Ambient/Thunder", CHAN_AUTO, 0.8, false, ATTN_NONE);
	Delay(random(10*35, 20*35));
	Restart;
}

//Journal Pick
Script 37 (void)
{
	If(CheckInventory("InventoryJournal") > 0)
	{
		SetLineSpecial(219, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("NaturePlantSquirmingSandNutPuzzle", 231, 620, 192);

        GiveInventory("QuestMap18Survive", 2);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		ACS_Execute(35, 0, 0, 0, 0);
	}
}

//Sand Nut Crack
Script 39 (void)
{
	If(CheckInventory("InventorySquirmingSandNut") > 0)
	{
		SetLineSpecial(232, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");

		TakeInventory("InventorySquirmingSandNut", 1);
		PlaySound(233, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("NaturePlantSandNut", 233, 621, 0);

		Delay(35);
		SetActorFlag(234, "INVISIBLE", 1);

		Delay(35);
		PlaySound(233, "Rock/Land", CHAN_AUTO);
		PlaySound(233, "Gore/FragShotDeath", CHAN_AUTO);
		Thing_Remove(621);
		SpawnSpotForced("HealthSandNut", 233, 197, 0);
		SpawnSpotForced("JunkDestructibleSplash", 233, 0, 0);

		SpawnSpotForced("ShadowAbhaothStanding", 235, 619, 0);
		SpawnSpotForced("ShadowAbhaothStanding", 239, 622, 0);
		SpawnSpotForced("Cerberus", 240, 623, 64);
		SpawnSpotForced("Cerberus", 245, 623, 128);
		Delay(8);
		SetActorFlag(623, "AMBUSH", 1);

		Delay(35);
		SetActorFlag(234, "INVISIBLE", 0);
		PlaySound(233, "Rock/Land", CHAN_AUTO);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		SetLineSpecial(236, ACS_Execute, 40, 0, 0, 0, 0);
		SetLineTexture(226, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineSpecial(238, ACS_Execute, 41, 0, 0, 0, 0);
		SetLineSpecial(241, ACS_Execute, 42, 0, 0, 0, 0);
		Line_SetBlocking(226, 0, BLOCKF_EVERYTHING);
		SetActorFlag(237, "INVISIBLE", 0);
	}
	else
	{
		Print(s:"A big rock.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}

}

Script 40 (void)
{
	SetLineSpecial(236, 0, 0, 0, 0, 0, 0);

	ACS_Execute(32, 0, 0, 0, 0);
	Radius_Quake(10, 10, 0, 1, 0);
	PlaySound(0, "Interaction/Static", CHAN_AUTO);
	Delay(10);
	ACS_Execute(32, 0, 0, 0, 0);

	Delay(105);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Hudmessage(s:"Abhaoth:    ...do you remember anything? You hit your head pretty hard. Again..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 1.0, 2.5);
}

Script 41 (void)
{
	SetLineSpecial(238, 0, 0, 0, 0, 0, 0);

    Delay(50);
	ACS_Terminate(40, 0);

	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Abhaoth:    You're closer than ever now... yes... I can feel your presence drawing near..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 1.0, 2.5);
	Delay(8*35);

	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Hudmessage(s:"I'm held prisoner in a dark citadel at the heart of the island..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.0, 1.0, 1.5);
	Delay(5*35);
	Delay(16);

	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Hudmessage(s:"...but your demon blood alone isn't enough to grant you entry... you'll have to taint your heart."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 2.5);
}

Script 42 (void)
{
	SetLineSpecial(241, 0, 0, 0, 0, 0, 0);

	ACS_Execute(32, 0, 0, 0, 0);
	Radius_Quake(10, 16, 0, 1, 0);
	PlaySound(0, "Interaction/Static", CHAN_AUTO);
	Delay(16);
	ACS_Execute(32, 0, 0, 0, 0);
}

Script 43 (void)
{
	If(CheckInventory("InventoryVine") > 0)
	{
		SetLineSpecial(242, 0, 0, 0, 0, 0, 0);

		SpawnSpotForced("ShadowAbhaothStanding", 243, 624, 0);
	}
}

//Bridge Repair
Script 44 (void)
{
	If(CheckInventory("InventoryVine") > 0)
	{
		SetLineSpecial(244, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);


		SetWeapon("Fists");

		TakeInventory("InventoryVine", 1);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(35);
		PlaySound(0, "Interaction/RopeTie", CHAN_AUTO);
		SetActorFlag(223, "INVISIBLE", 0);

		Delay(16);
		ACS_Execute(32, 0, 0, 0, 0);
		Radius_Quake(10, 10, 0, 1, 0);
		PlaySound(0, "Interaction/Static", CHAN_AUTO);
	    Delay(10);
		ACS_Execute(32, 0, 0, 0, 0);

		Delay(16);

		PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
		Hudmessage(s:"Abhaoth:    Now, now... pull yourself together, champion... I'm sure there's a place for you in paradise."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 1.0, 1.5);
		Delay(105);

		ACS_Execute(32, 0, 0, 0, 0);
		Radius_Quake(10, 6, 0, 1, 0);
		PlaySound(0, "Interaction/Static", CHAN_AUTO);
	    Delay(6);
		ACS_Execute(32, 0, 0, 0, 0);

		Delay(16);

		ACS_Execute(32, 0, 0, 0, 0);
		SetActorFlag(223, "INVISIBLE", 1);
		SetActorFlag(222, "INVISIBLE", 0);
		Radius_Quake(10, 12, 0, 1, 0);
		PlaySound(0, "Interaction/Static", CHAN_AUTO);
	    Delay(12);
		ACS_Execute(32, 0, 0, 0, 0);
		SetActorFlag(223, "INVISIBLE", 0);
		SetActorFlag(222, "INVISIBLE", 1);

        Delay(35);

		PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
		Hudmessage(s:"But before you ascend into paradise..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.3, 0.2, 0.5);

		SetActorFlag(224, "NOBLOCKMAP", 0);
		SetLineSpecial(225, ACS_Execute, 12, 0, 0, 0, 0);


		Delay(140);

		PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
		Hudmessage(s:"...you must descend into Hell."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 6.5);


		ACS_Execute(32, 0, 0, 0, 0);
		Thing_remove(792);
		//SetActorFlag(223, "INVISIBLE", 1);
		SetActorFlag(222, "INVISIBLE", 0);
		Radius_Quake(10, 16, 0, 1, 0);
		PlaySound(0, "Interaction/Static", CHAN_AUTO);
	    Delay(10);

		SetLineTexture(256, SIDE_FRONT, TEXTURE_MIDDLE, "");
		Line_SetBlocking(256, 0, BLOCKF_EVERYTHING);

		Thing_Remove(197);
		Thing_Remove(203);
		Thing_Remove(217);
		Thing_Remove(223);
		ACS_Terminate(36, 0);
		SpawnSpotForced("BrimstoneGenerator", 215, 196, 0);

		PlaySound(0, "Ambient/CreepyDrum", CHAN_AUTO);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		Delay(105);
		Thing_Destroy(624);

		SetFont("BIGFONT");
		Hudmessage(s:"ACT II"; HUDMSG_FADEINOUT | HUDMSG_LOG, 998, CR_UNTRANSLATED, 1.5, 0.12, 5.0, 3.0, 6.0);
		Hudmessage(s:"THE CORE OF HELL ERUPTS"; HUDMSG_FADEINOUT | HUDMSG_LOG, 999, CR_UNTRANSLATED, 1.5, 0.16, 5.0, 3.0, 6.0);
		SetFont("SMALLFONT");

		Delay(175);
		SetMusic("HTrack31", 0);

	}
	else
	{
		Print(s:"You don't have anything to fix the bridge with.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}

}

//Buried Treasure
int spec81 = 0;
Script 45 (void)
{
	If(Spec81 > 0)
	{
	If(CheckInventory("InventoryShovel") > 0 || CheckInventory("InventoryShovelB") > 0)
	{
		SetLineSpecial(250, 0, 0, 0, 0, 0, 0);
		PlaySound(254, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 254, 0, 0);
		SpawnSpotForced("DustCloud", 252, 0, 0);
		SetActorFlag(253, "INVISIBLE", 0);
		SetActorFlag(253, "NOBLOCKMAP", 0);
		FloorAndCeiling_RaiseByValue(249, 9999, 500);
		SpawnSpotForced("Cerberus", 803, 0, 128);
		SpawnSpotForced("Hellblaze", 802, 0, 128);
	}
	else
	{
		Print(s:"You'll need a shovel to dig here.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}
	}
}

//SHIPWRECK AREA LAVA DAMAGE
Script 38 (void)
{
	If(Spec32 % 2 == 1)
	{
	SectorDamage(177, 6, "Normal", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(176, 1000, "Normal", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	}
	else
	{
	    SectorDamage(177, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	    SectorDamage(176, 1000, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	}
	Delay(16);
	Restart;
}


/////////////////////
//MAIN ISLAND SEGMENT
/////////////////////

//ISLAND LAVA DAMAGE
Script 71 (void)
{
	SectorDamage(257, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(258, 18, "Acid", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(339, 1000, "Normal", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//YELLOW PORTAL
Script 87 (void)
{
	If(GetActorZ(0) < 369.0)
	{
	  SetLineSpecial(439, ACS_Execute, 88, 0, 0, 0, 0);
	  SetLineTexture(4, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	  SetLineTexture(4, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	  Teleport(440, 0, 0);
	  PlaySound(0, "misc/teleport", CHAN_AUTO);
	}
}
Script 88 (void)
{
	Teleport(441, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}

//FUNGUS TEMPLE
//Missing Lever
Script 56 (void)
{
	If(CheckInventory("InventoryIronLever") > 0)
	{
		SetLineSpecial(270, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryIronLever", 1);
		SpawnSpotForced("IDLever", 271, 627, 192);
		SetActorPitch(627, 0.75);
		PlaySound(271, "Metal/Bounce1", CHAN_AUTO);
		Delay(16);
		SetActorPitch(627, 0.65);
	    PlaySound(271, "Interaction/MachineOn");
		Delay(24);
		Ceiling_RaiseByValue(272, 8, 76);
	}
	else
	If(CheckInventory("InventoryIronLever") == 0)
	{
		Print(s:"The mechanism lacks an operation lever.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
//Acid Trap Hall
Script 57 (void)
{
	SpawnProjectile(273, "ProjectileAcidBlob", 192, 100, 0, 1, 0);
	SpawnProjectile(274, "ProjectileAcidBlob", 64, 100, 0, 1, 0);
	Delay(35);
	Restart;
}
//Spike Trap Hall
int spec60 = 0;
Script 60 (void)
{
	If(spec60 == 0 && (GetActorViewHeight(ActivatorTID()) > GetActorProperty(0, APROP_ViewHeight)/2))
	{
	  TagWait(277);
	  spec60 += 1;
	  Line_SetBlocking(278, BLOCKF_MONSTERS, 0);
	  Ceiling_MoveToValue(277, 64, 264, 0);
	  //Ceiling_MoveToValue(278, 64, 288, 0);
	  //Ceiling_MoveToValue(279, 64, 292, 0);
	  Radius_Quake2(280, 9, 16, 32, 48, "Misc/Silence");
	}
}
Script 61 (void)
{
	If(spec60 == 1)
	{
	  TagWait(277);
	  spec60 -= 1;
	  Line_SetBlocking(278, 0, BLOCKF_MONSTERS);
	  Ceiling_MoveToValue(277, 48, 299, 0);
	  //Ceiling_MoveToValue(278, 48, 323, 0);
	  //Ceiling_MoveToValue(279, 48, 327, 0);
	}
}
int spec58 = 0;
Script 58 (void)
{
	If(spec58 == 0)
	{
	  TagWait(275);
	  spec58 += 1;
	  Ceiling_MoveToValue(275, 64, 264, 0);
	  Radius_Quake2(276, 9, 16, 32, 48, "Misc/Silence");
	}
}
Script 59 (void)
{
	If(spec58 == 1)
	{
	  TagWait(275);
	  spec58 -= 1;
	  Ceiling_MoveToValue(275, 48, 299, 0);
	}
}
//First Door Pressure Plate
int spec62 = 0;
Script 62 (void)
{
	If(spec62 == 0 && GetSectorFloorZ(282, 0, 0) > 257.0)
	{
	  spec62 += 1;
      Floor_MoveToValue(282, 16, 257, 0);
	  TagWait(284);
	  Ceiling_MoveToValue(284, 48, 288, 0);
	}
}
Script 63 (void)
{
	If(spec62 == 1 && !CheckProximity(283, "DemonStatuettePuzzle", 34.0, 1, CPXF_NOZ))
	{
	  spec62 -= 1;
      Floor_MoveToValue(282, 16, 261, 0);
	  TagWait(284);
	  Ceiling_MoveToValue(284, 64, 216, 0);
	}
}

//Timed Door Pressure Plate
int spec34 = 0;
Script 34 (void)
{
	If(spec34 == 0 && GetSectorFloorZ(264, 0, 0) > 377.0)
	{
	  spec34 += 1;
	  Ceiling_RaiseByValue(801, 1, 8);
      Floor_MoveToValue(264, 16, 377, 0);
	  ACS_Terminate(53, 0);
	  TagWait(266);
	  Ceiling_MoveToValue(266, 4, 420, 0);
	}
}
Script 53 (void)
{
	If(spec34 == 1 && !CheckProximity(265, "DemonStatuettePuzzle", 34.0, 1, CPXF_NOZ))
	{
	  spec34 -= 1;
      Floor_MoveToValue(264, 16, 381, 0);
	  ACS_Terminate(34, 0);
	  TagWait(266);
	  Ceiling_MoveToValue(266, 8, 324, 0);
	}
}
Script 46 (void)
{
	If(GetSectorCeilingZ(266, 0, 0) == 324.0)
	{
	  Ceiling_MoveToValue(266, 4, 420, 0);
	}
}

//Flame Turret Floor
Script 54 (void)
{
	Thing_Activate(268);
	SetLineTexture(269, SIDE_FRONT, TEXTURE_MIDDLE, "Mural04B");
}
Script 55 (void)
{
	  Thing_Deactivate(268);
	  SetLineTexture(269, SIDE_FRONT, TEXTURE_MIDDLE, "Mural04");
}

//Main Chamber Doors Pressure Plates
int spec64 = 0;
Script 64 (void)
{
	If(spec64 == 0 && GetSectorFloorZ(286, 0, 0) > 377.0)
	{
	  spec64 += 1;
      Floor_MoveToValue(286, 16, 377, 0);
	  TagWait(287);
	  Ceiling_MoveToValue(287, 48, 452, 0);
	}
}
Script 65 (void)
{
	If(spec64 == 1 && !CheckProximity(285, "DemonStatuettePuzzle", 34.0, 1, CPXF_NOZ))
	{
	  spec64 -= 1;
      Floor_MoveToValue(286, 16, 381, 0);
	  TagWait(287);
	  Ceiling_MoveToValue(287, 64, 376, 0);
	}
}

int spec66 = 0;
Script 66 (void)
{
	If(spec66 == 0 && GetSectorFloorZ(288, 0, 0) > 377.0)
	{
	  spec66 += 1;
      Floor_MoveToValue(288, 16, 377, 0);
	  TagWait(289);
	  TagWait(291);
	  Ceiling_MoveToValue(289, 48, 452, 0);
	  Ceiling_MoveToValue(291, 64, 376, 0);
	}
}
Script 67 (void)
{
	If(spec66 == 1 && !CheckProximity(290, "DemonStatuettePuzzle", 34.0, 1, CPXF_NOZ))
	{
	  spec66 -= 1;
      Floor_MoveToValue(288, 16, 381, 0);
	  TagWait(289);
	  TagWait(291);
	  Ceiling_MoveToValue(289, 64, 376, 0);
	  Ceiling_MoveToValue(291, 48, 452, 0);
	}
}

int spec68 = 0;
Script 68 (void)
{
	If(spec68 == 0 && GetSectorFloorZ(297, 0, 0) > 249.0)
	{
	  spec68 += 1;
      Floor_MoveToValue(297, 16, 249, 0);
	  TagWait(298);
	  Ceiling_MoveToValue(298, 48, 472, 0);
	  Floor_MoveToValue(804, 32, 400, 0);
	}
}
Script 69 (void)
{
	If(spec68 == 1 && !CheckProximity(299, "DemonStatuettePuzzle", 34.0, 1, CPXF_NOZ))
	{
	  spec68 -= 1;
      Floor_MoveToValue(297, 16, 253, 0);
	  TagWait(298);
	  Ceiling_MoveToValue(298, 64, 376, 0);
	  Floor_MoveToValue(804, 32, 464, 0);
	}
}

//GREEN PRIMARCH
//Dialogue
int dial755 = 6;
Script 753 (void)
{
	SetLineSpecial(754, 0, 0, 0, 0, 0, 0);
	PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
    Hudmessage(s:"Gaun:    Mmmm, another guest. Come in, girl, don't be shy. I'm Gaun, Primarch of Prestige, King of Glory!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 6.5, 1.2, 3.5);
	Delay(7*35);
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
	  PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    Hi there Gaun... bloated full of shit as always, aren't you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  Delay(6*35);
	  PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
      Hudmessage(s:"Gaun:    Silence! That's no way to addrrss the greatest Primarch there is!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 5.5, 0.2, 0.5);
	  Delay(6*35);
	}
	PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
	Hudmessage(s:"Yes, I am the greatest demon primarch! And you are a great warrior too! Unlike this red fraud here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 7.5, 0.2, 0.5);
	Delay(8*35);
	PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
    Hudmessage(s:"Mmmm, I know what you two desire. You wish to kill the Baron, don't you? Which one of you will do it, mmm?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 7.5, 0.2, 0.5);
	Delay(8*35);
	Hudmessage(s:"You see these statues, Halfling? Legends of your clan, immortalized in stone! Springs of envy for your eyes."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 7.5, 0.2, 0.5);
	Delay(8*35);
	PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
	Hudmessage(s:"Show me your desire to be among them... bring me a statue of yourself! Mmmm, made from rare crimson salt!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 7.5, 0.2, 1.5);
	Delay(7*35);

	GiveInventory("QuestMap18GreenPrimarch", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");

	Delay(2*35);

	PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
    Hudmessage(s:"A statue worthy of your pride! That'll prove me you have what it takes to be a true demon, not just a bastard!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(757, ACS_Execute, 755, 0, 0, 0, 0);
}
Script 755 (void)
{
	If(CheckInventory("QuestMap18GreenPrimarch") == 1)
	{
		Print(s:"The primarch's avatar remains silent.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	    Delay(35);
	}
	else

	  If(dial755 % 6 == 0)
	  {
		If(CheckInventory("InventoryCrimsonSaltStatue") > 0)
		{
		  PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
	      Hudmessage(s:"Gaun:    Mmm, you have the statue? Put it on the altar so I can see it in its full glory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	      dial755 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("InventoryCrimsonSaltRock") > 3)
		{
		  PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
	      Hudmessage(s:"Gaun:    What, you can't find a worthy sculptor to represent you? Then you haven't made a name for yourself!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      dial755 += 1;
	      Delay(2*35);
		}
		else
		{
		  PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
	      Hudmessage(s:"Gaun:    If you don't have a statue, you don't have worshippers! Any worthy demon needs worshippers!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      dial755 += 1;
	      Delay(2*35);
		}
	  }

	  else
	  If(dial755 % 6 == 1)
	  {
	    PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
	    Hudmessage(s:"Gaun:    Look at you... so much potential. You should be the queen of your people, not their servant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial755 += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial755 % 6 == 2)
	  {
	    Hudmessage(s:"Gaun:    Look at those tattered rags you're wearing. You look like a rabid mutt. A pawn for your clan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial755 += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial755 % 6 == 3)
	  {
	    PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
	    Hudmessage(s:"Gaun:    What will happen after you kill the Baron? Will they welcome you as a warlord? Or discard you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial755 += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial755 % 6 == 4)
	  {
	    PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
	    Hudmessage(s:"Gaun:    What's the point of existing alone? You might as well perish now, if nobody will remember you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial755 += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial755 % 6 == 5)
	  {
	    Hudmessage(s:"Gaun:    If you're too slow, the red one might kill the Baron before you! You'll miss your only purpose."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial755 += 1;
	    Delay(2*35);
	  }
}
//Taint Offering
Script 758 (void)
{
	If(CheckInventory("InventoryCrimsonSaltStatue") > 0)
	{
		SetLineSpecial(757, 0, 0, 0, 0, 0, 0);

		PlaySound(759, "Inventory/PickBase", CHAN_AUTO);
		SetWeapon("Fists");
		Delay(12);
		TakeInventory("InventoryCrimsonSaltStatue", 1);
		SpawnSpotForced("NatureStatueZan", 759, 760, 0);
		PlaySound(759, "Metal/Land", CHAN_AUTO);

		If(CheckInventory("InventoryAngelFeather") > 0 && CheckInventory("QuestMap18GetPrimarchsTaint") == 2 &&  CheckInventory("QuestMap19PurplePrimarch") == 1 && CheckInventory("QuestMap19YellowPrimarch") == 1 && CheckInventory("QuestMap20BluePrimarch") == 1 && CheckInventory("QuestMap20RedPrimarch") == 1)
        {
		  SetActorProperty(0, APROP_SPEED, 0.0);
		  SetActorProperty(0, APROP_Friction, 0.1);
	      SetLineSpecial(766, ACS_execute, 766, 0, 0, 0, 0);
	    }

		Delay(24);

		PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
		Hudmessage(s:"Gaun:    Well? How does it feel to have a statue?... now imagine thousands of people bowing before it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 1.5);
		Delay(6*35);

		FadeTo(0, 220, 0, 1.0, 0.2);
		Delay(7);
		PlaySound(759, "misc/teleport", CHAN_AUTO);
		SpawnSpotForced("HedonTeleportFogDemon", 759, 0, 0);
		Thing_Remove(760);
		FadeTo(0, 220, 0, 0.0, 0.6);


		PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
		Hudmessage(s:"...I know just where to put it! Well, you've earned my taint! Now go! Show the world your true glory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 7.5, 1.2, 2.5);
		Delay(5*35);

		TakeInventory("QuestMap18GreenPrimarch", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		SetActorProperty(756, APROP_Alpha, 0.95);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.90);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.85);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.80);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.75);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.70);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.65);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.60);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.55);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.50);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.45);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.40);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.35);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.30);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.25);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.20);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.15);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.10);
		Delay(8);
		SetActorProperty(756, APROP_Alpha, 0.05);
		Delay(8);
		Thing_Remove(756);

		SetLineSpecial(757, ACS_Execute, 755, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("QuestMap18GreenPrimarch") != 1)
	{
		Print(s:"A primarch offering altar.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}


//SMALL PORT
//Breakable Walls
Script 78 (void)
{
	If((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickAxe") > 0) && GetSectorCeilingZ(426, 0, 0) == 192.0)
	{
		Radius_Quake2(0, 2, 24, 0, 64, 0);
		FloorAndCeiling_LowerByvalue(426, 999, 200);
		PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
		Radius_Quake(3, 35, 0, 1, 0);
		SpawnSpotForced("DustCloud", 425, 0, 0);
		Thing_Remove(424);
		Line_SetBlocking(427, 0, BLOCKF_EVERYTHING);
		TagWait(426);
	}
	else
	If(GetSectorCeilingZ(426, 0, 0) == 192.0)
	{
		Print(s:"The cracked wall could be broken down with a proper tool.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}
}
Script 79 (void)
{
	If((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickAxe") > 0) && GetSectorFloorZ(421, 0, 0) == 184.0)
	{
		SetLineSpecial(518, 0, 0, 0, 0, 0, 0);
		Radius_Quake2(0, 2, 24, 0, 64, 0);
		Floor_LowerByvalue(421, 999, 112);
		PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
		Radius_Quake(3, 35, 0, 1, 0);
		SpawnSpotForced("DustCloud", 429, 0, 0);
		Thing_Remove(428);
		Thing_Remove(407);
		TagWait(421);
	}
	else
	If(GetSectorFloorZ(421, 0, 0) == 184.0)
	{
		Print(s:"The cracked wall could be broken down with a proper tool.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}

}
//Small Port Ghost
int Spec104 = 0;
Script 104 (void)
{
	//SetLineSpecial(518, 0, 0, 0, 0, 0, 0);
	If(Spec104 == 0)
	{
	Delay(70);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    ...who dares enter this cursed port?... this is no place for the living..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"...a brave soul... yes... you can save us... they trapped us inside the chapel... please... help us..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 4.5);
	Delay(30*35);
	Spec104 += 1;
	}
	else
	{
	Delay(70);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    ...please... save us... we're imprisoned inside the chapel..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(120*35);
	}
}
Script 105 (void)
{
  If(CheckInventory("InventorySledgehammer") > 0)
  {
	Thing_remove(799);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    ...a few of us turned against the Cult... for our sin, the whole port was punished..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
  }
}
Script 106 (void)
{
	ACS_Terminate(104, 0);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    ...no food nor ale...it was only a matter of time until we started killing each other..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
	Hudmessage(s:"...some of my brothers may still live... please... take my pendant and find them... in the crypts east of here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);
    Delay(5*35);
	GiveInventory("QuestMap18HelpFlameBeaconGhost", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");
	SetLineSpecial(519, ACS_Execute, 107, 0, 0, 0, 0);
}
int Dial107 = 8;
Script 107 (void)
{
	If(dial107 % 8 == 0)
	{
	  Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	  Hudmessage(s:"Flame Beacon Ghost:    ...the pendant will reveal you their hiding place... search the old crypts, to the east..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 1)
	{
	  Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	  Hudmessage(s:"Flame Beacon Ghost:    ...I was the keeper of the flame... the spiritual guide of this community..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 2)
	{
	  Hudmessage(s:"Flame Beacon Ghost:    ...I should have known better... so foolish... ratted out by my own disciples..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 3)
	{
	  Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	  Hudmessage(s:"Flame Beacon Ghost:    ...something changed... the demons have been tormenting us more and more..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 4)
	{
	  Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	  Hudmessage(s:"Flame Beacon Ghost:    ...demons feed upon our suffering... the sacrifices have become unbearable..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 5)
	{
	  Hudmessage(s:"Flame Beacon Ghost:    ...the Cult has been perverted beyond belief... I did not join to be a slave to demons..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 6)
	{
	  Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	  Hudmessage(s:"Flame Beacon Ghost:    ...the Baron is preparing something... his coronation as the Icon of Demons is nigh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(dial107 % 8 == 7)
	{
	  Hudmessage(s:"Flame Beacon Ghost:    ...you can still stop the Baron's conquest... find my brothers... they will help you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 1.2, 1.5);
	  dial107 += 1;
	  Delay(2*35);
	}
}

//WILDERNESS
//Enchant Pendant of True Sight
int dial145 = 4;
Script 145 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0 && CheckInventory("InventoryScrollSpiritEnchantTrinket") > 0 && IsTIDUsed(797) == 0)
	{
		SetLineSpecial(806, 0, 0, 0, 0, 0, 0);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(12);
		TakeInventory("InventoryPendantOfTrueSight", 1);
		SpawnSpotForced("CultPendantA", 807, 808, 0);
		PlaySound(807, "Ammo/DepletedShardBounce", CHAN_AUTO);
		Playsound(0, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
	    Hudmessage(s:"Yzbeth's Gardner:    Did mistress Yzbeth's send me one of her hellions? What are you doi-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 3.5, 1.2, 0.5);
	    Delay(3*35);
		Delay(20);
		PlaySound(0, "Inventory/Paper", CHAN_AUTO);
		Delay(15);
		PlaySound(0, "Magic/ShadowsActivate", CHAN_AUTO);
		PlaySound(0, "Magic/Dispel", CHAN_AUTO);
		Radius_Quake(1, 50, 0, 1, 0);
		FadeTo(255, 120, 200, 1.0, 1.0);
		TakeInventory("InventoryScrollSpiritEnchantTrinket", 1);
		Delay(35);
		Thing_Remove(808);
		SpawnSpotForced("InventoryPendantOfTrueSightServant", 807, 0, 0);
		SpawnSpotForced("ExplosionMagicPurple", 807, 0, 0);
		FadeTo(255, 120, 200, 0.0, 0.6);

		SetLineSpecial(809, ACS_Execute, 148, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
		Terminate;
	}
    else
	If(IsTIDUsed(797))
	{
	  PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);
	  Hudmessage(s:"Impaled Brain:    *Sings and hums*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 2.5, 1.2, 2.5);
	  Delay(5*35);
	  Thing_Remove(797);
	  Terminate;
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0 && CheckInventory("InventoryScrollSpiritEnchantTrinket") == 0)
	{
		Print(s:"You don't have any magic means to enchant the pendant.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	{
		Print(s:"The human brain appears to be kept alive by the device.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}

	If(dial145 % 4 == 0)
	{
	  PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);
	  Hudmessage(s:"Impaled Brain:    My beautiful mushrooms are growing so well! Will mistress Yzbeth like them?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 5.5, 0.5, 1.5);
	  dial145 += 1;
	  Delay(2*35);
	}
	else
	If(dial145 % 4 == 1)
	{
	  Hudmessage(s:"Impaled Brain:    I should check on the flowers. Their scent has become so magnificent."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 4.5, 0.5, 1.5);
	  dial145 += 1;
	  Delay(2*35);
	}
	else
	If(dial145 % 4 == 2)
	{
	  Playsound(0, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
	  Hudmessage(s:"Impaled Brain:    Mistress Yzbeth loves my flowers. She means the world to me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 4.5, 0.5, 1.5);
	  dial145 += 1;
	  Delay(2*35);
	}
	else
	If(dial145 % 4 == 3)
	{
	  Playsound(0, "PsiDemon/MirrorImage", CHAN_AUTO);
	  Hudmessage(s:"Impaled Brain:    She loves me more than the other servants. She always gives me her attention."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 5.5, 0.5, 1.5);
	  dial145 += 1;
	  Delay(2*35);
	}
}
Script 148 (void)
{
	SetLineSpecial(809, 0, 0, 0, 0, 0, 0);
	PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);
	Hudmessage(s:"Yzbeth's Gardner:    ...I must bring mistress Yzbeth her flowers."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.90, 3.5, 1.2, 1.5);

}
//Mine Gate Winch
int spec49 = 0;
Script 49 (void)
{
	If(ChecKInventory("InventoryWinchWheel") > 0)
	{
		TakeInventory("InventoryWinchWheel", 1);
		SetLineSpecial(187, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(12);
		ACS_NamedExecuteWithResult("TakeWeapons");

		SetActorFlag(186, "INVISIBLE", 0);
		PlaySound(186, "Metal/Land", CHAN_AUTO, 1.0);
		PlaySound(186, "Rock/Land", CHAN_AUTO, 1.0);

		Delay(50);

		Scroll_Texture_Both(188, 0, 0, 16, 0);
		Scroll_Texture_Both(305, 0, 0, 0, 16);

		Ceiling_RaiseByValue(184, 3, 112);

		SetActorAngle(186, 0.05);
		Delay(4);
		SetActorAngle(186, 0.10);
		Delay(4);
		SetActorAngle(186, 0.15);
		Delay(4);
		SetActorAngle(186, 0.20);
		Delay(4);
		SetActorAngle(186, 0.25);
		Delay(4);
		SetActorAngle(186, 0.30);
		Delay(4);
		SetActorAngle(186, 0.35);
		Delay(4);
		SetActorAngle(186, 0.40);
		Delay(4);
		SetActorAngle(186, 0.45);
		Delay(4);
		SetActorAngle(186, 0.50);
		Delay(4);
		SetActorAngle(186, 0.55);
		Delay(4);
		SetActorAngle(186, 0.60);
		Delay(4);
		SetActorAngle(186, 0.65);
		Delay(4);
		SetActorAngle(186, 0.70);
		Delay(4);
		SetActorAngle(186, 0.75);
		Delay(4);
		SetActorAngle(186, 0.80);
		Delay(4);
		SetActorAngle(186, 0.85);
		Delay(4);
		SetActorAngle(186, 0.90);
		Delay(4);
		SetActorAngle(186, 0.95);
		Delay(4);
		SetActorAngle(186, 1.0);
		Delay(4);

		SetLineSpecial(558, ACS_Execute, 138, 0, 0, 0, 0);

		If(GetSectorCeilingZ(358, 0, 0) != 295.0 && GetActorProperty(537, APROP_Health) <= 0 && GetActorProperty(645, APROP_Health) <= 0)
		{
			SetLineSpecial(570, ACS_Execute, 141, 0, 0, 0, 0);
		}

		If(GetActorProperty(645, APROP_Health) > 0)
		{
		  SetLineSpecial(590, ACS_Execute, 142, 0, 0, 0, 0);
          spec49 += 1;
		}

		If(GetSectorCeilingZ(328, 0, 0) == -104.0)
		{
		  FloorAndCeiling_RaiseByvalue(328, 999, 300);
		}
		  Thing_Activate(326);
		  Thing_Activate(555);
		  Thing_SetGoal(326, 327, 0, 0);
		  Thing_SetGoal(555, 327, 0, 0);
		  Line_SetBlocking(329, BLOCKF_MONSTERS, 0);

		SetActorAngle(186, 0.05);
		Delay(4);
		SetActorAngle(186, 0.10);
		Delay(4);
		SetActorAngle(186, 0.15);
		Delay(4);
		SetActorAngle(186, 0.20);
		Delay(4);
		SetActorAngle(186, 0.25);
		Delay(4);
		SetActorAngle(186, 0.30);
		Delay(4);
		SetActorAngle(186, 0.35);
		Delay(4);
		SetActorAngle(186, 0.40);
		Delay(4);
		SetActorAngle(186, 0.45);
		Delay(4);
		SetActorAngle(186, 0.50);
		Delay(4);
		SetActorAngle(186, 0.55);
		Delay(4);
		SetActorAngle(186, 0.60);
		Delay(4);
		SetActorAngle(186, 0.65);
		Delay(4);
		SetActorAngle(186, 0.70);
		Delay(4);
		SetActorAngle(186, 0.75);
		Delay(4);
		SetActorAngle(186, 0.80);
		Delay(4);
		SetActorAngle(186, 0.85);
		Delay(4);
		SetActorAngle(186, 0.90);
		Delay(4);
		SetActorAngle(186, 0.95);
		Delay(4);
		SetActorAngle(186, 1.0);
		Delay(4);
		SetActorAngle(186, 0.05);
		Delay(4);
		SetActorAngle(186, 0.10);
		Delay(4);
		SetActorAngle(186, 0.15);
		Delay(4);
		SetActorAngle(186, 0.20);
		Delay(4);
		SetActorAngle(186, 0.25);
		Delay(4);
		SetActorAngle(186, 0.30);
		Delay(4);
		SetActorAngle(186, 0.35);
		Delay(4);
		SetActorAngle(186, 0.40);
		Delay(4);
		SetActorAngle(186, 0.45);
		Delay(4);
		SetActorAngle(186, 0.50);
		Delay(4);
		SetActorAngle(186, 0.55);
		Delay(4);
		SetActorAngle(186, 0.60);
		Delay(4);
		SetActorAngle(186, 0.65);
		Delay(4);
		SetActorAngle(186, 0.70);
		Delay(4);
		SetActorAngle(186, 0.75);
		Delay(4);
		SetActorAngle(186, 0.80);
		Delay(4);
		SetActorAngle(186, 0.85);
		Delay(4);
		SetActorAngle(186, 0.90);
		Delay(4);
		SetActorAngle(186, 0.95);
		Delay(4);
		SetActorAngle(186, 1.0);
		Delay(4);
		SetActorAngle(186, 0.05);
		Delay(4);
		SetActorAngle(186, 0.10);
		Delay(4);
		SetActorAngle(186, 0.15);
		Delay(4);
		SetActorAngle(186, 0.20);
		Delay(4);
		SetActorAngle(186, 0.25);
		Delay(4);
		SetActorAngle(186, 0.30);
		Delay(4);
		SetActorAngle(186, 0.35);
		Delay(4);
		SetActorAngle(186, 0.40);
		Delay(4);
		SetActorAngle(186, 0.45);
		Delay(4);
		SetActorAngle(186, 0.50);
		Delay(4);
		SetActorAngle(186, 0.55);
		Delay(4);
		SetActorAngle(186, 0.60);
		Delay(4);
		SetActorAngle(186, 0.65);
		Delay(4);
		SetActorAngle(186, 0.70);
		Delay(4);
		SetActorAngle(186, 0.75);
		Delay(4);
		SetActorAngle(186, 0.80);
		Delay(4);
		SetActorAngle(186, 0.85);
		Delay(4);
		SetActorAngle(186, 0.90);
		Delay(4);
		SetActorAngle(186, 0.95);
		Delay(4);
		SetActorAngle(186, 1.0);
		Delay(4);

		ACS_NamedExecuteWithResult("GiveWeapons");

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		Line_SetBlocking(330, 0, BLOCKF_EVERYTHING);
		SetLineTexture(330, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineSpecial(330, 0, 0, 0, 0, 0, 0);
		Thing_Remove(331);
		Thing_Move(332, 333, 1);
		GiveActorInventory(332, "DropsQuestItem", 1);
		Thing_Remove(548);

		Delay(16);

		Scroll_Texture_Both(188, 0, 0, 0, 0);
		Scroll_Texture_Both(305, 0, 0, 0, 0);

		TakeInventory("QuestMap18HelpPitLordEberon", 1);
	    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	    Log(s:"Journal updated.");

		Delay(30*35);
		SetLineSpecial(590, 0, 0, 0, 0, 0, 0);
	}
	else
	{
		Print(s:"The gate winch is missing a component.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}
}
Script 142 (void)
{
	SetLineSpecial(590, 0, 0, 0, 0, 0, 0);
	If(GetActorProperty(648, APROP_Health) > 0)
	{
	  PlaySound(648, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Incoming!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.5, 0.2, 0.5);
	  Delay(3*35);
	}
	If(GetActorProperty(647, APROP_Health) > 0)
	{
	  PlaySound(647, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    To battle! Feed them to the earth!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
}

int dial644 = 6; //Dura
int dial646 = 4; //QRF Witch
int dial647 = 4; //QRF Bear 1
int dial648 = 4; //QRF Reaver
int dial649 = 4; //QRF Bear 2
int dial651 = 6; //Jaromir
Script 138 (void)
{
	SetLineSpecial(558, 0, 0, 0, 0, 0, 0);
	If(GetActorProperty(645, APROP_Health) <= 0)
	{
		Thing_Destroy(537, 0, 0);

		Thing_Remove(555);
		SpawnSpotForced("Initiate", 559, 0, 64);
		SpawnSpotForced("Cerberus", 560, 0, 192);
		SpawnSpotForced("IronMaiden", 561, 0, 192);
		SpawnSpotForced("Conscript", 562, 0, 64);
		SpawnSpotForced("Initiate", 563, 643, 192);
		SpawnSpotForced("Cerberus", 565, 643, 192);
		SpawnSpotForced("IronMaiden", 564, 643, 192);
		SpawnSpotForced("Conscript", 566, 643, 192);
		Thing_Destroy(643, 0, 0);

		Thing_Destroy(640, 0, 0);
		If(GetActorProperty(607, APROP_Health) <= 0)
		{
		  Thing_Destroy(642, 0, 0);
		}
		Thing_Remove(641);
		SpawnSpotForced("DeadIDBear", 567, 728, 0);
		SpawnSpotForced("InventoryDepletedArmorAmulet", 568, 0, 0);
		SpawnSpotForced("Axe", 569, 643, 0);
		Thing_Remove(651);
		SpawnSpotForced("NPCJaromirBattle", 593, 651, 64);

        Thing_Remove(649);
		SpawnSpotForced("IDBearWarriorStationary", 589, 649, 32);
		SetLineSpecial(575, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(587, ACS_Execute, 649, 0, 0, 0, 0);
		Thing_Remove(648);
		SpawnSpotForced("IDReaverStationary", 588, 648, 24);
		SetLineSpecial(574, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(586, ACS_Execute, 648, 0, 0, 0, 0);
		SetLineSpecial(591, 0, 0, 0, 0, 0, 0);
		dial644 = 6;
		dial646 = 4;
		dial647 = 4;
		dial648 = 4;
		dial649 = 4;
		dial651 = 6;

		GiveInventory("ScriptHasBetrayedID", 2);
		GiveInventory("ScriptBadKarma", 1);
	}
}

//Mine Exterior Powder Barrel Fuse
Script 20 (void)
{
	SetLineSpecial(144, 0, 0, 0, 0, 0, 0);
	Floor_lowerByvalue(140, 8, 14);
	FloorAndCeiling_LowerByvalue(141, 8, 14);

	Delay(24);
	SpawnSpotForced("SparkToss", 145, 0, 0);
	PlaySound(145, "Interaction/Spark", CHAN_AUTO);
	Delay(24);
	SpawnSpotForced("SparkToss", 158, 0, 0);
	PlaySound(158, "Interaction/Spark", CHAN_AUTO);
	Delay(24);

	PlaySound(146, "Interaction/Smother", CHAN_AUTO);
	Delay(16);
	PlaySound(146, "Interaction/Smother", CHAN_AUTO);
	Delay(16);
	PlaySound(146, "Interaction/Smother", CHAN_AUTO);
	Delay(35);

	Floor_lowerByValue(149, 8, 88);
	Floor_lowerByValue(150, 7, 72);
	Floor_lowerByValue(151, 3, 32);
	Floor_lowerByValue(152, 5, 48);
	Floor_lowerByValue(153, 3, 32);
	Floor_lowerByValue(154, 4, 40);

	Radius_Quake(10, 108, 5, 15, 157);

	SpawnSpotForced("ExplosionHuge", 147, 0, 0);
	SpawnSpotForced("DustCloud", 155, 0, 0);
	SpawnSpotForced("DustCloud", 157, 0, 0);
	Delay(12);
	Thing_Remove(146);
	Floor_LowerByvalue(142, 999, 2);
	ChangeFloor(142, "Dirt2");
	Floor_RaiseByvalue(143, 999, 2);
	ChangeFloor(143, "Iron_18");
	SpawnSpotForced("ExplosionLarge", 148, 0, 0);
	SpawnSpotForced("DustCloud", 156, 0, 0);
	Delay(8);
    SpawnSpotForced("ExplosionHuge", 155, 0, 0);
	SpawnSpotForced("ExplosionMedium", 157, 0, 0);
	SpawnSpotForced("DustCloud", 147, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 156, 0, 0);
	SpawnSpotForced("DustCloud", 148, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 157, 0, 0);
	SpawnSpotForced("ExplosionMedium", 155, 0, 0);
	SpawnSpotForced("ExplosionLarge", 148, 0, 0);
	SpawnSpotForced("DustCloud", 156, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionMedium", 147, 0, 0);
	SpawnSpotForced("DustCloud", 155, 0, 0);
	SpawnSpotForced("DustCloud", 157, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionHuge", 156, 0, 0);
	SpawnSpotForced("DustCloud", 148, 0, 0);
	Delay(8);
    SpawnSpotForced("ExplosionHuge", 155, 0, 0);
	SpawnSpotForced("ExplosionMedium", 157, 0, 0);
	SpawnSpotForced("DustCloud", 147, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 156, 0, 0);
	SpawnSpotForced("DustCloud", 148, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 157, 0, 0);
	SpawnSpotForced("ExplosionMedium", 155, 0, 0);
	SpawnSpotForced("ExplosionLarge", 148, 0, 0);
	SpawnSpotForced("DustCloud", 156, 0, 0);
	Delay(8);
    SpawnSpotForced("ExplosionHuge", 155, 0, 0);
	SpawnSpotForced("ExplosionMedium", 157, 0, 0);
	SpawnSpotForced("DustCloud", 147, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 156, 0, 0);
	SpawnSpotForced("DustCloud", 148, 0, 0);
	Radius_Quake(5, 35, 0, 10, 157);
}

//Mine Exterior Mortar Cannon
int spec89 = 0;
Script 89 (void)
{
	If(ISTIDUsed(449) == 0 && ISTIDUsed(450) == 0 && ISTIDUsed(451) == 0 && ISTIDUsed(452) == 0)
	{
		//Print(s:"The demonic mortar is out of ammo.");
		PlaySound(446, "Interaction/MachineOn", CHAN_AUTO);
		SetActorPitch(446, 0.65);
		Delay(50);
		SetActorPitch(446, 0.8);
	    PlaySound(446, "Switches/Switch1", CHAN_AUTO, 0.2);
		Terminate;
	}
	else
	If(IsTIDUsed(449))
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(16);

		Thing_Remove(449);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(12);
		SpawnSpotForced("IDMagmaBoulderProjectile", 448, 449, 0);
		Delay(24);
		PlaySound(447, "Ammo/FragfireCanBounce", CHAN_AUTO);
		Delay(16);
		SetActorPitch(446, 0.65);
	    PlaySound(446, "Interaction/MachineOn", CHAN_AUTO);
		Thing_Remove(449);
		ACS_Execute(90, 0, 0, 0, 0);
	}
	else
	If(IsTIDUsed(450))
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(16);

		Thing_Remove(450);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(12);
		SpawnSpotForced("IDMagmaBoulderProjectile", 448, 450, 0);
		Delay(24);
		PlaySound(447, "Ammo/FragfireCanBounce", CHAN_AUTO);
		Delay(16);
		SetActorPitch(446, 0.65);
	    PlaySound(446, "Interaction/MachineOn", CHAN_AUTO);
		Thing_Remove(450);
		ACS_Execute(91, 0, 0, 0, 0);
	}
	else
	If(IsTIDUsed(451))
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(16);

		Thing_Remove(451);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(12);
		SpawnSpotForced("IDMagmaBoulderProjectile", 448, 451, 0);
		Delay(24);
		PlaySound(447, "Ammo/FragfireCanBounce", CHAN_AUTO);
		Delay(16);
		SetActorPitch(446, 0.65);
	    PlaySound(446, "Interaction/MachineOn", CHAN_AUTO);
		Thing_Remove(451);
		ACS_Execute(92, 0, 0, 0, 0);
	}
	else
	If(IsTIDUsed(452))
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(16);

		Thing_Remove(452);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(12);
		SpawnSpotForced("IDMagmaBoulderProjectile", 448, 452, 0);
		Delay(24);
		PlaySound(447, "Ammo/FragfireCanBounce", CHAN_AUTO);
		Delay(16);
		SetActorPitch(446, 0.65);
	    PlaySound(446, "Interaction/MachineOn", CHAN_AUTO);
		Thing_Remove(452);
		ACS_Execute(93, 0, 0, 0, 0);
	}

		Radius_Quake2(448, 8, 50, 12, 640, "World/Quake");
		SpawnSpotForced("ExplosionLargeRed", 448, 0, 0);
		PlaySound(447, "Ambient/Impact", CHAN_AUTO);
		PlaySound(447, "Hellmine/Burst", CHAN_AUTO);
		SpawnSpotForced("DustPuff", 453, 0, 0);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
		ThrustThingZ(0, 15, 0, 0);
		ThrustThing(192, 10, 0, 0);

		Delay(50);
		SetActorPitch(446, 0.8);
	    PlaySound(446, "Switches/Switch1", CHAN_AUTO, 0.2);

		If(GetActorProperty(646, APROP_Health) > 0 && GetActorProperty(645, APROP_Health) > 0 && spec89 == 0)
	    {
		  spec89 += 1;
	      PlaySound(646, "Witch/Ha", CHAN_AUTO);
	      Hudmessage(s:"Witch:    Boom! Hahahahaha!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.5, 0.2, 1.5);
        }
}
Script 90 (void)
{
	SpawnProjectile(447, "IDMagmaBoulderProjectile", 0, 0, 300, 0, 449);
	Delay(35);
	Thing_Remove(449);
	Delay(140);
	FloorAndCeiling_LowerByValue(445, 999, 256);
	Delay(2);
	//SpawnSpotForced("ExplosionHuge", 454, 0, 0);
	SpawnProjectile(454, "FireBolt", 0, 0, -300, 0, 0);
	Radius_Quake(4, 70, 0, 30, 454);
	Delay(12);
	SetLineTexture(459, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(459, SIDE_BACK, TEXTURE_MIDDLE, "");
	SpawnSpotForced("ExplosionHuge", 455, 0, 0);
	SpawnProjectile(455, "JunkBrokenWoodA", random(80, 144), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(455, "JunkBrokenWoodB", random(80, 144), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(455, "JunkBrokenWoodA", random(80, 144), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(455, "JunkBrokenWoodB", random(80, 144), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(455, "JunkBrokenWoodA", random(80, 144), random(50,100), random(0,10), random(10,20), 0);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 456, 0, 0);
	SpawnProjectile(456, "JunkBrokenWoodA", random(176, 208), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(456, "JunkBrokenWoodB", random(176, 208), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(456, "JunkBrokenWoodA", random(176, 208), random(50,100), random(0,10), random(10,20), 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 457, 0, 0);
	SpawnProjectile(457, "JunkBrokenWoodA", random(48, 80), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(457, "JunkBrokenWoodB", random(48, 80), random(50,100), random(0,10), random(10,20), 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 458, 0, 0);
	SpawnProjectile(458, "JunkBrokenWoodA", random(0, 16), random(50,100), random(0,10), random(10,20), 0);
	SpawnProjectile(458, "JunkBrokenWoodB", random(0, 16), random(50,100), random(0,10), random(10,20), 0);

	Delay(120*35);
	ChangeFloor(444, "Ash1");
	PlaySound(460, "Interaction/Smother", CHAN_AUTO);
	SpawnSpotForced("SteamPuffMedium", 460, 0, 0);
}
Script 91 (void)
{
	SpawnProjectile(447, "IDMagmaBoulderProjectile", 0, 0, 300, 0, 450);
	Delay(35);
	Thing_Remove(450);
	Delay(140);
	SpawnProjectile(462, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	Radius_Quake(4, 70, 0, 30, 461);
	SpawnProjectile(463, "FireBolt", 0, 0, -300, 0, 0);
	Delay(14);
	SpawnProjectile(464, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	SpawnProjectile(465, "FireBolt", 0, 0, -300, 0, 0);
	Delay(16);
	SpawnProjectile(466, "FireBolt", 0, 0, -300, 0, 0);
}
Script 92 (void)
{
	SpawnProjectile(447, "IDMagmaBoulderProjectile", 0, 0, 300, 0, 451);
	Delay(35);
	Thing_Remove(451);
	Delay(140);
	SpawnProjectile(468, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	Radius_Quake(4, 70, 0, 30, 461);
	SpawnProjectile(469, "FireBolt", 0, 0, -300, 0, 0);
	Delay(14);
	SpawnProjectile(470, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	SpawnProjectile(471, "FireBolt", 0, 0, -300, 0, 0);
	Delay(16);
	SpawnProjectile(472, "FireBolt", 0, 0, -300, 0, 0);
}
Script 93 (void)
{
	SpawnProjectile(447, "IDMagmaBoulderProjectile", 0, 0, 300, 0, 452);
	Delay(35);
	Thing_Remove(452);
	Delay(140);
	SpawnProjectile(474, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	Radius_Quake(4, 70, 0, 30, 461);
	SpawnProjectile(475, "FireBolt", 0, 0, -300, 0, 0);
	Delay(14);
	SpawnProjectile(476, "FireBolt", 0, 0, -300, 0, 0);
	Delay(12);
	SpawnProjectile(477, "FireBolt", 0, 0, -300, 0, 0);
	Delay(16);
	SpawnProjectile(478, "FireBolt", 0, 0, -300, 0, 0);
}

//Mine Exterior Wounded Bear
Script 127 (void)
{
    If(GetActorProperty(537, APROP_Health) > 0)
	{
	  SetLineSpecial(538, 0, 0, 0, 0, 0, 0);
	  Delay(24);
	  PlaySound(537, "BearWarrior/Rage2", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    Who goes there? Come down here and face me, demon! *Coughs*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 2.5);
	}
}
Script 129 (void)
{
    If(GetActorProperty(537, APROP_Health) > 0)
	{
	  PlaySound(537, "BearWarrior/Huh", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    Bonebreaker! Thank the Earth for sending you! We fucked up... demons got us... you have to..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 1.5);
	  Delay(7*35);
	}
	If(GetActorProperty(537, APROP_Health) > 0)
	{
	  PlaySound(537, "BearWarrior/Pain", CHAN_AUTO);
      Hudmessage(s:"*Coughs* ...go south. Our camp is close... the demons are preparing to assault it... warn our sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(5*35);
	  If(GetActorProperty(537, APROP_Health) > 0)
	  {
	    GiveInventory("QuestMap18HelpWoundedBearWarrior", 2);
	    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	    Log(s:"Journal updated.");
	  }
	  Delay(2*35);
	}
	If(GetActorProperty(537, APROP_Health) > 0)
	{
	  PlaySound(537, "BearWarrior/Pain", CHAN_AUTO);
      Hudmessage(s:"...forget about anything else you were doing and go! I can't resist much longer... find a way across the bridge..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  SetLineSpecial(539, ACS_Execute, 128, 0, 0, 0, 0);
	}
}
int dial128 = 8;
Script 128 (void)
{
  If(GetActorProperty(537, APROP_Health) > 0)
  {
    If(dial128 % 8 == 0)
	{
	  PlaySound(537, "BearWarrior/Pain", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    *Coughs* Don't kill me... I can endure the pain... I need to know that our camp is warned!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 1)
	{
      Hudmessage(s:"Bear Warrior:    You're the only one I can trust to deliver the message. I failed our sisters... don't do it too!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 2)
	{
	  PlaySound(537, "BearWarrior/Rage1", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    They can attack anytime! Leave everything you're doing and get to the camp! Honor your oaths!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 3)
	{
      Hudmessage(s:"Bear Warrior:    We were sent here as lookouts, but our bloodlust took over and we attacked the bridge guards."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 4)
	{
	  PlaySound(537, "BearWarrior/Pain", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    *Coughs* We stormed them and took over the trench... for a while, we held... pushed them back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 5)
	{
	  PlaySound(537, "BearWarrior/Rage1", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    The bridge suddenly exploded and demons attacked! We couldn't send a runner back anymore."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 6)
	{
      Hudmessage(s:"Bear Warrior:    I survived the first counterattack but they will return! Please, carry my message!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
	else
	If(dial128 % 8 == 7)
	{
	  PlaySound(537, "BearWarrior/Pain", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    *Coughs* Our camp is in danger! Find a way around the bridge... run... warn our sisters..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial128 += 1;
	  Delay(2*35);
	}
  }
}
Script 130 (void)
{
    If(GetActorProperty(537, APROP_Health) <= 0)
	{
	  SetLineSpecial(540, 0, 0, 0, 0, 0, 0);
	  GiveInventory("ScriptHasBetrayedID", 1);

      If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 2)
	  {
	  TakeInventory("QuestMap18HelpWoundedBearWarrior", 1);
	  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	  Log(s:"Journal updated.");
	  }
	}
}
Script 131 (void)
{
    If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 2 && CheckInventory("QuestMap18HelpPitLordEberon") == 2)
	{
	  SetLineSpecial(541, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(540, 0, 0, 0, 0, 0, 0);
	  Thing_Destroy(537, 0, 0);
	  GiveInventory("ScriptHasBetrayedID", 1);
	  TakeInventory("QuestMap18HelpWoundedBearWarrior", 1);
	  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	  Log(s:"Journal updated.");
	}
}

//Lord Eberon's Fort
Script 132 (void)
{
	SetLineSpecial(545, 0, 0, 0, 0, 0, 0);
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(35);
	SpawnSpotForced("Hellblaze", 546, 638, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 546, 0, 0);
	PlaySound(546, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("SniperHellion", 547, 638, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 547, 0, 0);
	PlaySound(547, "misc/teleport", CHAN_AUTO);
	Thing_Hate(638, 548, 3);
	SpawnSpotForced("Hellion", 549, 639, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 549, 0, 0);
	PlaySound(549, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 550, 639, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 550, 0, 0);
	PlaySound(550, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 551, 639, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
	PlaySound(551, "misc/teleport", CHAN_AUTO);
	SetActorFlag(638, "NOINFIGHTING", 1);
	SetActorFlag(638, "NOTARGET", 1);
	SetActorFlag(639, "NOINFIGHTING", 1);
	SetActorFlag(639, "NOTARGET", 1);

	Delay(3*35);
	PlaySound(332, "PitLord/Rage", CHAN_AUTO);
	Hudmessage(s:"Lord Eberon:    Traitorous scum!!! Did that whore Yzbeth send you?! How dare you betray Lord Eberon?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.80, 7.5, 0.2, 2.5);
}
Script 133 (void)
{
	If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	{
		SetLineSpecial(552, 0, 0, 0, 0, 0, 0);
		//SetActorProperty(0, APROP_SPEED, 0.0);
	    //SetActorProperty(0, APROP_Friction, 0.1);
		PlaySound(332, "PitLord/Sight", CHAN_AUTO);
		Hudmessage(s:"Lord Eberon:    Hah! Pathetic idiots!... Unlike you, who sided with me! Good, I have a task for you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
        PlaySound(332, "PitLord/Pain", CHAN_AUTO);
		Hudmessage(s:"The Baron wants me to crush the orcs, but someone sabotaged the nearby gate, cutting my troops off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
		Hudmessage(s:"The gate needs a special winch wheel to open. Take this key and go find a spare one in the salt mine."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(4*35);
		SpawnSpotForced("BloodKey", 553, 0, 0);
		PlaySound(553, "Inventory/PickKey", CHAN_AUTO, 0.6);
		Delay(1*35);
		GiveInventory("QuestMap18HelpPitLordEberon", 2);
	    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	    Log(s:"Journal updated.");
		Delay(2*35);
		Autosave();
		PlaySound(332, "PitLord/Pain", CHAN_AUTO);
		If(CheckProximity(0, "PitLordCommander", 1000.0, 1))
		{
		Hudmessage(s:"You seem tougher than the rabble I sent there before you, so hurry up! The orcs can return anytime!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		//SetActorProperty(0, APROP_SPEED, 1.0);
	    //SetActorProperty(0, APROP_Friction, 1.0);
		Delay(2*35);
		SetLineSpecial(330, ACS_Execute, 134, 0, 0, 0, 0);
	}
	else
	{
		PlaySound(332, "PitLord/Rage", CHAN_AUTO);
		Hudmessage(s:"Lord Eberon:    Arrgh! Kill all these lowly traitors! Finish them off and I'll reward you handsomely!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 2.5);
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
		Delay(5*35);
		If(ThingCount(T_NONE, 544) == 0 && ThingCount(T_NONE, 638) == 0 && ThingCount(T_NONE, 639) == 0)
	    {
			Terminate;
		}
	}
}
int dial134 = 10;
Script 134 (void)
{
	If(dial134 % 10 == 0)
	{
	  PlaySound(332, "PitLord/Pain", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    *Squints* I bet it's Yzbeth who sabotaged the gate. Does she think she can outsmart me?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 1)
	{
      Hudmessage(s:"Lord Eberon:    Serve me well... I reward my loyal agents handsomely. So move your ass! Open that gate!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 2)
	{
	  PlaySound(332, "PitLord/Active", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    *Squints* You're not one of Yzbeth's hellions, are you? My vision is too clouded to tell..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 3)
	{
	  PlaySound(332, "PitLord/Pain", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    I took some shrapnel to the face while fighting orcs. My healer better arrive here soon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 4)
	{
      Hudmessage(s:"Lord Eberon:    A few orcs attacked from the south earlier, and they were well armed. How'd they get here?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 5)
	{
	  PlaySound(332, "PitLord/Active", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    I thought the rebellion at the mine was quelled! Hrr... I should not talk openly about it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 6)
	{
      Hudmessage(s:"Lord Eberon:    Cultists have been spreading rumors that the Halfblood is here. Idiots! She died long ago!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 7)
	{
	  PlaySound(332, "PitLord/Sight", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    If the Baron wants me to finish up the orcs, so shall it be! Only a fool would defy the Icon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 8)
	{
	  PlaySound(332, "PitLord/Rage", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    I'd finish the orcs if my reinforcements weren't stuck! Hurry up and fix that stupid winch!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
	else
	If(dial134 % 10 == 9)
	{
      Hudmessage(s:"Lord Eberon:    I've already sent my cultists after spare parts. Go to the mine and see what's the hold up!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial134 += 1;
	  Delay(2*35);
	}
}
Script 135 (void)
{
    PlaySound(332, "PitLord/Pain", CHAN_AUTO);
	Hudmessage(s:"Lord Eberon:    Good, you opened the gate. Now go give my cultists some aid! I want that orc camp eradicated!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
}
int dial136 = 6;
int spec136 = 0;
Script 136 (void)
{
	If(CheckInventory("QuestMap19PurplePrimarch") == 2 && spec136 == 0)
	{
		spec136 += 1;
		PlaySound(332, "PitLord/Rage", CHAN_AUTO);
        Hudmessage(s:"Lord Eberon:    Huh? Primarch Adur asked you to bed a demon? Bitch, I can't even see how ugly you are!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(2*35);
	}
	else
	If(dial136 % 6 == 0)
	{
	  PlaySound(332, "PitLord/Active", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    You do well to serve the Blue Baron. He's the Icon we have awaited for a millenia to come!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
	else
	If(dial136 % 6 == 1)
	{
	  PlaySound(332, "PitLord/Pain", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    Soon, the Baron will call for us to unite! We will finally conquer the world for ourselves!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
	else
	If(dial136 % 6 == 2)
	{
      Hudmessage(s:"Lord Eberon:    We lingered in the shadows long enough! No more politics and puppeteering! Time for blood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
	else
	If(dial136 % 6 == 3)
	{
	  PlaySound(332, "PitLord/Rage", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    We'll rise like magma erupting from a volcano! And we'll burn down everything in our wake!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
	else
	If(dial136 % 6 == 4)
	{
      Hudmessage(s:"Lord Eberon:    We'll collapse the entire Underworld, then we'll slay everything that lives above. Slowly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
	else
	If(dial136 % 6 == 5)
	{
	  PlaySound(332, "PitLord/Pain", CHAN_AUTO);
      Hudmessage(s:"Lord Eberon:    Imagine the pure dread that awaits us. The promised feast of emotions makes me salivate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial136 += 1;
	  Delay(2*35);
	}
}
Script 137 (void)
{
	SetLineSpecial(554, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(554, 0, BLOCKF_PROJECTILES);
	GiveInventory("ScriptHasBetrayedPitLord", 1);
	//If(CheckInventory("QuestMap20RedPrimarch") == 2)
	//{
	//	GiveActorInventory(332, "DropsQuestItem", 1);
	//}
	SetActorProperty(332, APROP_Health, 1000);
	Thing_Activate(332);
	SetActorState(332, "Pain", 0);
	NoiseAlert(0, 0);

	PlaySound(332, "PitLord/Rage", CHAN_AUTO);
	HudmessageBold(s:"Lord Eberon:    Aargh! How dare you betray me?! I'll stomp your skull!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.80, 4.5, 0.2, 2.5);
}
Script 183 (void)
{
	If(CheckInventory("QuestMap20RedPrimarch") == 1)
	{
		TakeActorInventory(332, "DropsQuestItem", 1);
	}
}

//Lava Rock Doors
Script 14 (void)
{
	Delay(16);
	PlaySound(108, "Ambient/Rocks", CHAN_AUTO, 1.0, false, 0.4);
	Delay(35);
	Radius_Quake(1, 280, 0, 18, 108);
	Delay(105);
	Ceiling_RaiseByvalue(103, 3, 57);
	Ceiling_RaiseByvalue(104, 6, 74);
	Floor_LowerByValue(105, 3, 49);
	Floor_LowerByValue(106, 2, 24);
	Floor_LowerByValue(107, 1, 16);
}
Script 15 (void)
{
	PlaySound(101, "Ambient/Rocks", CHAN_AUTO, 1.0, false, 0.4);
	SpawnSpotForced("ForgeElemental", 102, 0, 64);
	Delay(35);
	Radius_Quake(1, 245, 0, 10, 101);
	Delay(70);
	Ceiling_RaiseByvalue(98, 4, 80);
	Floor_LowerByValue(99, 2, 40);
	Floor_LowerByValue(100, 2, 24);
	Floor_LowerByValue(107, 1, 16);
}
//Red Monoliths
int spec21 = 0;
Script 21 (void)
{
	If(spec21 == 0)
	{
		Spec21 += 1;
		Thing_Activate(111);
		PlaySound(111, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec21 == 1)
	{
		Spec21 -= 1;
		Thing_Deactivate(111);
		PlaySound(111, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
int spec22 = 0;
Script 22 (void)
{
	If(spec22 == 0)
	{
		Spec22 += 1;
		Thing_Activate(112);
		PlaySound(112, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec22 == 1)
	{
		Spec22 -= 1;
		Thing_Deactivate(112);
		PlaySound(112, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
int spec23 = 0;
Script 23 (void)
{
	If(spec23 == 0)
	{
		Spec23 += 1;
		Thing_Activate(113);
		PlaySound(113, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec23 == 1)
	{
		Spec23 -= 1;
		Thing_Deactivate(113);
		PlaySound(113, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
int spec24 = 0;
Script 24 (void)
{
	If(spec24 == 0)
	{
		Spec24 += 1;
		Thing_Activate(114);
		PlaySound(114, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec24 == 1)
	{
		Spec24 -= 1;
		Thing_Deactivate(114);
		PlaySound(114, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
int spec25 = 0;
Script 25 (void)
{
	If(spec25 == 0)
	{
		Spec25 += 1;
		Thing_Activate(115);
		PlaySound(115, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec25 == 1)
	{
		Spec25 -= 1;
		Thing_Deactivate(115);
		PlaySound(115, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
int spec26 = 0;
Script 26 (void)
{
	If(spec26 == 0)
	{
		Spec26 += 1;
		Thing_Activate(116);
		PlaySound(116, "Interaction/Fireblow", CHAN_AUTO);
		Delay(12);
	}
	else
	If(spec26 == 1)
	{
		Spec26 -= 1;
		Thing_Deactivate(116);
		PlaySound(116, "Interaction/Smother", CHAN_AUTO);
		Delay(12);
	}
}
Script 16 (void)
{
	If(spec21 == 1 && spec22 == 0 && spec23 == 1 && spec24 == 0 && spec25 == 1 && spec26 == 0)
	{
	SetLineSpecial(109, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(110, 0, 0, 0, 0, 0, 0);
	PlaySound(117, "Ambient/Rocks", CHAN_AUTO, 1.0, false, 0.4);
	Delay(16);
	Ceiling_RaiseByValue(118, 2, 84);
	}
}
//Secret Volcano Teleports
Script 28 (void)
{
	Teleport_Nofog(125, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 125, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 29 (void)
{
	Teleport_Nofog(126, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 126, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}

//Small Graveyard Dig
Script 100 (void)
{
	If(CheckInventory("JournalScrawnSketch") > 0 && GameSkill() > SKILL_VERY_HARD)
	{
		If(CheckInventory("InventoryShovel") > 0 || CheckInventory("InventoryShovelB") > 0)
	    {
		SetLineSpecial(515, 0, 0, 0, 0, 0, 0);
		PlaySound(513, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 513, 0, 0);
		SpawnSpotForced("DustCloud", 517, 0, 0);
		SetActorFlag(517, "INVISIBLE", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
		FloorAndCeiling_LowerByValue(516, 9999, 128);
		TagWait(516);
		SpawnSpotForced("InventoryMithrilChisel", 513, 0, 0);
	    }
	    else
	    {
		Print(s:"You'll need a shovel to dig here.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	    }
	}
}

//Small Graveyard Ghost
Script 5 (void)
{
	SetActorFlag(47, "INVISIBLE", 0);
	Thing_Activate(47);
}
//Crypt Ghosts
Script 6 (void)
{
	SetActorProperty(48, APROP_Alpha, 0.05);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(48, APROP_Alpha, 0.4);
	Delay(4);
	Thing_Activate(48);
}
//Obelisk Treasure
Script 99 (void)
{
	If(CheckInventory("ScriptObeliskCount") >= 4)
	{
		If(CheckInventory("InventoryShovel") > 0 || CheckInventory("InventoryShovelB") > 0)
	    {
		SetLineSpecial(509, 0, 0, 0, 0, 0, 0);
		PlaySound(508, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 508, 0, 0);
		SpawnSpotForced("DustCloud", 512, 0, 0);
		SetActorFlag(512, "INVISIBLE", 0);
		SetActorFlag(512, "NOBLOCKMAP", 0);
		FloorAndCeiling_LowerByValue(511, 9999, 128);
		TagWait(511);
		SpawnSpotForced("CrystalKey", 508, 0, 0);
	    }
	    else
	    {
		Print(s:"You'll need a shovel to dig here.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	    }
	}
}
//Obelisk Tomb Entrance
Script 3 (void)
{
	If(CheckInventory("CrystalKey") > 0 && GetSectorCeilingZ(34, 0, 0) == 33.0)
	{
		Floor_lowerByValue(35, 8, 8);
		TagWait(35);
		Ceiling_RaiseByValue(34, 8, 96);
	}
	else
	If(CheckInventory("CrystalKey") == 0 && GetSectorCeilingZ(34, 0, 0) == 33.0)
	{
		Print(s:"The switch requires a Crystal key to activate.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}

}
//Obelisk Tomb Ghosts
Script 8 (void)
{
	If(IsTIDUsed(507) == 0)
	{
	SetLineSpecial(506, 0, 0, 0, 0, 0, 0);
	SetActorProperty(49, APROP_Alpha, 0.05);
	Delay(4);
	SetActorProperty(49, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(49, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(49, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(49, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(49, APROP_Alpha, 0.3);
	Delay(4);
	Thing_Activate(49);
	}
}

//Forest Citadel Portal Forcefield
Script 10 (void)
{
	If(CheckInventory("InventoryAngelFeather") == 0 && CheckInventory("InventorySoulKeyFragment") < 3 && CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("QuestMap19PurplePrimarch") == 1 && CheckInventory("QuestMap19YellowPrimarch") == 1 && CheckInventory("QuestMap20BluePrimarch") == 1 && CheckInventory("QuestMap20RedPrimarch") == 1)
    {
	  Print(s:"Challenging the Baron without a means to sap his power would be unwise.");
	  PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
	  Delay(35);
	}
	else
	If(CheckInventory("InventoryAngelFeather") == 0 && CheckInventory("InventorySoulKeyFragment") == 3 && CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("QuestMap19PurplePrimarch") == 1 && CheckInventory("QuestMap19YellowPrimarch") == 1 && CheckInventory("QuestMap20BluePrimarch") == 1 && CheckInventory("QuestMap20RedPrimarch") == 1)
    {
	  Print(s:"You do not feel prepared to challenge the Baron.");
	  PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
	  Delay(35);
	}
	else
	{
	//PlaySound(0, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
	Radius_Quake(5, 35, 0, 1, 0);
	FadeTo(255, 0, 0, 0.3, 0.5);
	Thing_Damage2(0, 1, "Normal");
	Delay(18);
	PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
	ThrustThing(192, 100, 1, 0);
	ThrustThingZ(0, 50, 0, 0);
	FadeTo(255, 0, 0, 0.0, 0.2);
	Delay(50);
	Print(s:"The gate rejects your blood.");
	}
}
Script 11 (void)
{
	PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
}

//Chains
Script 12 (void)
{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
}

//Thief Cave Tripwire
Script 80 (void)
{
	If(GetActorZ(0) < 441.0 && IsTIDUsed(431))
	{
	Thing_Remove(431);
	SetActorFlag(430, "INVISIBLE", 0);
	PlaySound(430, "Interaction/RopeTie", CHAN_AUTO);
	Delay(8);

	SpawnProjectile(433, "FireBolt", 136, 120, 0, 0, 0);
	PlaySound(433, "Weapons/CrushbowFire", CHAN_AUTO);
	}
}
//Treasure Map
Script 81 (void)
{
	If(GetActorZ(0) < 460.0)
	{
		If(spec81 == 0)
		{
			spec81 += 1;
			SetFont ("OLAYTBOT");
			HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

			SetFont("SMALLFONT");
			Hudmessage(s:"(A parchment lies hidden behind the pillow. It appears to contain a rough map of the south-western coast)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
			Hudmessage(s:"(A red X mark stands out. You copy it over your own map)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);

			SpawnSpotForced("MarkerCross", 254, 0, 0);
		}
		else
		{
			SetFont ("OLAYTBOT");
			HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

			SetFont("SMALLFONT");
			Hudmessage(s:"(A parchment lies hidden behind the pillow. It appears to contain a rough map of the south-western coast)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
			Hudmessage(s:"(A red X mark stands out. You already copied it over your own map)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
		}
	}
}

//Chaotic Device Shrine
Script 94 (void)
{
	If(CheckInventory("InventoryChaoticDevice") > 0)
	{
		SetLineSpecial(479, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryChaoticDevice", 1);
		PlaySound(481, "Metal/Land", CHAN_AUTO);
		ChangeFloor(480, "Iron_18");
		Floor_RaiseByValue(480, 999, 2);
		Delay(16);
		Radius_Quake(1, 70, 0, 6, 481);
		Floor_LowerByValue(482, 12, 128);
		Delay(70);
		Autosave();
	}
	else
	{
		Print(s:"The socket has the shape of a chaotic symbol.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	}
}
Script 95 (void)
{
	If(IsTIDUsed(494))
	{
	  Teleport_NoFog(483, 1, 0);
	  SpawnSpotForced("HedonTeleportFogDemon", 483, 0, 0);
	  PlaySound(483, "misc/teleport", CHAN_AUTO);
	  Thing_Stop(0);
	  ThrustThingZ(0, 0, 0, 1);
	  SetActorPitch(0, 0.25);
	  Delay(2*35);
	  FadeTo(0, 0, 0, 1.0, 2.0);
	  Delay(2*35);
	  Thing_Stop(0);
	  ThrustThingZ(0, 0, 0, 1);
	  Teleport_NoFog(484, 1, 0);
	  FadeTo(0, 0, 0, 0.0, 1.0);
	  SetActorAngle(0, 1.0);
	  SetActorPitch(0, 0);

	  If(GameSkill() == 5)
	  {
	    Floor_lowerByvalue(496, 999, 64);
	  }
	}
	else
	{
		Teleport_NoFog(497, 1, 0);
		SpawnSpotForced("HedonTeleportFogDemon", 497, 0, 0);
	    PlaySound(497, "misc/teleport", CHAN_AUTO);
	}
}
Script 96 (void)
{
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	SpawnProjectile(485, "ProjectileCerberusBreath", 64, 75, 0, 0, 0);
	SpawnProjectile(487, "ProjectileCerberusBreath", 128, 85, 0, 0, 0);
	SpawnProjectile(488, "ProjectileCerberusBreath", 192, 65, 0, 0, 0);
	SpawnProjectile(491, "ProjectileCerberusBreath", 128, 65, 0, 0, 0);
	SpawnProjectile(493, "ProjectileCerberusBreath", 0, 75, 0, 0, 0);
	Delay(4);
	Thing_Remove(486);
	Delay(90);
	Restart;
}
Script 97 (void)
{
	ACS_Terminate(96, 0);
	Thing_Remove(494);
	Thing_Activate(816);
	Teleport_NoFog(497, 1, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 497, 0, 0);
	PlaySound(497, "misc/teleport", CHAN_AUTO);
}

Script 98 (void)
{
	Teleport_NoFog(498, 1, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 498, 0, 0);
	PlaySound(498, "misc/teleport", CHAN_AUTO);
}









//MONSTER SPAWNS
//Secret Volcano Altar
Script 27 (void)
{
	SpawnSpotForced("ForgeElemental", 123, 0, 0);
	Delay(105);
	NoiseAlert(0, 0);
	Delay(70);
	SpawnSpotForced("PitLord", 124, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 124, 0, 0);
	PlaySound(124, "misc/teleport", CHAN_AUTO);
	Delay(8);
	NoiseAlert(0, 0);
}

//Temple Lava Yard
Script 70 (void)
{
	SetLineSpecial(304, 0, 0, 0, 0, 0, 0);
	Radius_Quake(3, 105, 0, 1, 0);
	Delay(50);

	SpawnSpotForced("Hellblaze", 306, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 306, 0, 0);
	PlaySound(306, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 307, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 307, 0, 0);
	PlaySound(307, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 308, 0, 40);
	SpawnSpotForced("HedonTeleportFogDemon", 308, 0, 0);
	PlaySound(308, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 310, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 310, 0, 0);
	PlaySound(310, "misc/teleport", CHAN_AUTO);

	Delay(16*35);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(105);
	Radius_Quake(5, 70, 0, 1, 0);
	SpawnSpotForced("ForgeElemental", 309, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 309, 0, 0);
	PlaySound(309, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 314, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 314, 0, 0);
	PlaySound(314, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(12);
	FloorAndCeiling_LowerByValue(313, 999, 640);
	SpawnSpotForced("ExplosionHuge", 311, 0, 0);
	Delay(6);
	SpawnSpotForced("ExplosionLarge", 312, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionMedium", 311, 0, 0);
	SpawnSpotForced("DustCloud", 312, 0, 0);
}
//Psi Bridge
Script 74 (void)
{
	Radius_Quake(2, 80, 0, 1, 0);
	Delay(35);
	SpawnSpotForced("PsiDemon", 364, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 364, 0, 0);
	PlaySound(364, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 365, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 365, 0, 0);
	PlaySound(365, "misc/teleport", CHAN_AUTO);
	Delay(35);
	FloorAndCeiling_RaiseByValue(366, 999, 215);
	Thing_Activate(363);
	Playsound(363, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
}
//Fungus Village Ruins
Script 76 (void)
{
	SetLineSpecial(376, 0, 0, 0, 0, 0, 0);
	Delay(16*35);
	SpawnSpotForced("Hellblaze", 377, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 377, 0, 0);
	PlaySound(377, "misc/teleport", CHAN_AUTO);
}
//Forest Bridge Ambush
Script 2 (void)
{
	Radius_Quake(2, 50, 0, 1, 0);
	Delay(35);
	SpawnSpotForced("PitLord", 12, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 12, 0, 0);
	PlaySound(12, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 13, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 13, 0, 0);
	PlaySound(13, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 14, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 14, 0, 0);
	PlaySound(14, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 15, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 15, 0, 0);
	PlaySound(15, "misc/teleport", CHAN_AUTO);
}
//Forest Cabin Ambush
Script 9 (void)
{
	If(IsTIDUsed(50))
	{
	Thing_Remove(50);
	Radius_Quake(2, 70, 0, 1, 0);
	Delay(35);
	SpawnSpotForced("PitLord", 51, 628, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 51, 0, 0);
	PlaySound(51, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 52, 628, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 52, 0, 0);
	PlaySound(52, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 53, 628, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 53, 0, 0);
	PlaySound(53, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 54, 628, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 54, 0, 0);
	PlaySound(54, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("SniperHellion", 55, 628, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 55, 0, 0);
	PlaySound(55, "misc/teleport", CHAN_AUTO);
	SetActorFlag(628, "NOINFIGHTING", 1);
	NoiseAlert(0, 0);
	Delay(35);
	Radius_Quake(10, 50, 0, 1, 0);
	Line_SetBlocking(25, 0, BLOCKF_EVERYTHING);
	SetLineTexture(25, SIDE_FRONT, TEXTURE_MIDDLE, "Window11");
	SetLineTexture(25, SIDE_BACK, TEXTURE_MIDDLE, "Window11");
	PlaySound(56, "Weapons/PotionDie", CHAN_AUTO);
	SpawnSpotForced("DustCloud", 56, 0, 0);
	SpawnSpotForced("JunkBrokenGlassA", 56, 0, 0);
	PlaySound(58, "Weapons/PotionDie", CHAN_AUTO);
	SpawnSpotForced("DustCloud", 58, 0, 0);
	SpawnSpotForced("JunkBrokenGlassB", 58, 0, 0);
	}
}








//LOCKED DOORS
Script 7 (void)
{
	Print(s:"The door won't budge.");
	PlaySound(0, "Charcter/ZanFail2", CHAN_AUTO);
	Delay(35);
}
Script 75 (void)
{
	Print(s:"The door is locked from the inside.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}
Script 4 (void)
{
	Print(s:"The gate is locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}


//ROTATING DOORS
Script 179 (void)
{
  If(GetActorZ(0) < 220.0)
  {
	SetLineSpecial(371, 80, 179, 0, 0, 0, 0);
    Polyobj_DoorSwing(179,16,64,105);
  }
}

Script 180 (void)
{
  If(GetActorZ(0) < 263.0)
  {
	SetLineSpecial(43, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(180,16,64,0x7FFFFFFF);
  }
}

Script 181 (void)
{
  If(GetActorZ(0) < 188.0 && CheckInventory("WitheredVineKey") > 0)
  {
    Polyobj_DoorSwing(181,-16,64,175);
  }
    else
    If(GetActorZ(0) < 188.0 && CheckInventory("WitheredVineKey") == 0)
    {
      Print(s:"This door requires a Withered Vine key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 182 (void) //+359
{
  If(GetActorZ(0) < 600.0 && (CheckInventory("CopperKey") > 0 || CheckInventory("GoldenKey") > 0))
  {
	Polyobj_DoorSwing(182,-16,64,35);
	Polyobj_DoorSwing(359,16,64,35);
  }
    else
    If(GetActorZ(0) < 600.0 && CheckInventory("CopperKey") == 0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These gates require either a Copper or a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 270 (void)
{
  If(GetActorZ(0) < 359.0)
  {
    Polyobj_DoorSwing(270,16,64,175);
  }
}

Script 271 (void)
{
  If(GetActorZ(0) < 359.0)
  {
    Polyobj_DoorSwing(271,-16,64,175);
  }
}

Script 360 (void)
{
  If(GetActorZ(0) < 336.0)
  {
	SetLineSpecial(412, 80, 360, 0, 0, 0, 0);
    Polyobj_DoorSwing(360,-16,64,105);
  }
}

Script 361 (void)
{
  If(GetActorZ(0) < 311.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(361,16,64,175);
  }
    else
    If(GetActorZ(0) < 311.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"This door requires a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}




//READABLES
Script 72 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The ledger appears to keep track of thousands of cultists offered for sacrifice)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 77 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 125.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A waft of intoxicatingly sweet perfume fills your nostrils as you unroll the note)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 125.0);

	Hudmessage(s:"Oh, my dearest gardener! I am in awe at your ingenuity! The blood that fuels your veins, nurturing the flowers like a vile"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 125.0);
    Hudmessage(s:"mother! How poetic! Who would have thought? Out of all the rabble here, you would, of course! You're such a smart man,"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 125.0);
	Hudmessage(s:"a defier of his own cursed destiny, a breaker of bonds! You have certainly overstepped your Cult's bonds... have you not?"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 125.0);

	Hudmessage(s:"But don't let any worry cloud your mind, no. My compassion knows no bounds, especially with all these beautiful flowers"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 125.0);
    Hudmessage(s:"adorning my sanctuary! Their scent will certainly make me forget about all the books that have been disappearing from"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 125.0);
	Hudmessage(s:"the library.   You are such a trickster, you could almost steal my heart! Use the knowledge to grow more lovely scented"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 125.0);
    Hudmessage(s:"flowers... and I won't be pressed to remove it from your skull and feed it to the worms.   -   Your beloved Matron, Yzbeth"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 125.0);

	Hudmessage(s:"P.S. Oh, and stop using disgusting animals to feed my plants. I have sent you someone with a much fairer blood instead."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 125.0);
}

Script 13 (void)
{

	SetFont("SMALLFONT");
	Hudmessage(s:"TOMB OF THE WINDRIDERS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0);
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A set of raw, bloody demonic words form into a verse right before your eyes)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);

	Hudmessage(s:"If you seek to prove your worth"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"Start counting from south to north"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"Light the first, the third and fifth"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"And the path will be revealed"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 83 (void)
{
	If(GetActorZ(0) > 72.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(An old note is tucked in by the sack. As you unroll it, ash dust falls out)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);

	Hudmessage(s:"You fetch me a good price for that salt, I went through a lot of crap to smuggle it out unnoticed.  Remember, this is"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"the last time I'm doing this, I have a much better deal coming up.   Let's just say it involves a recently constructed"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"alchemy machine. Bring me as much oil, mana and blood as you can - I don't care where you get them from. And don't"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"forget about the arcane salts, I need pink ones.   If this works out, we can start selling might potions for a fortune!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
	}
}

Script 113 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Blood Rites - Chapter II"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.38, 180.0);

	Hudmessage(s:"[...]    and for the halfblooded bastards who wish to pursue the call of their stronger side, the answers lie within the  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.44, 180.0);
    Hudmessage(s:"shrines of the Primarchs. As explained in the previous chapter, there are five Demon Primarchs who govern the taints"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.46, 180.0);
	Hudmessage(s:"of chaos, and each and every one of them needs to be appeased with symbolic offerings or, at times, even sacrifices. "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.48, 180.0);

	Hudmessage(s:"Gaun is the Primarch of Pride and Prestige. Those who wish to make a name for themselves must prove that they revel"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 180.0);
    Hudmessage(s:"in the midst of the masses - for a true Demon despises solitude, and a modest name bears no weight.  An audience with"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 180.0);
	Hudmessage(s:"Gaun will most oftenly reflect the halfblood's deepest pride in a request for a lavish object worthy of open display.    "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 180.0);

    Hudmessage(s:"Adur is the Primarch of Hearts and Emotions. It is no secret that Demons are unparalleled seducers, always knowing"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.60, 180.0);
    Hudmessage(s:"which strings to pull.    Adur will often ask those who wish to bear her taint to prove that they can employ the same   "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 180.0);
	Hudmessage(s:"persuasive abilities.   The halfblood should better be prepared to find a Demon that's willing to teach this art form. "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.64, 180.0);

	Hudmessage(s:"Elzriel is the Primarch of Gold.     Those who obtain an audience with him will quickly learn how to squander their hard "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.68, 180.0);
    Hudmessage(s:"earned wealth, for it is an entire wealth that the Primarch usually asks for - unless the halfblood negotiates better."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.70, 180.0);

    Hudmessage(s:"Scorlag is the Primarch of Transformation and Alteration. Those who are lucky enough to obtain an audience will soon"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.74, 180.0);
    Hudmessage(s:"have their patience tested, as Scorlag is known to be hardly coherent, sometimes only being able to contact the half-"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.76, 180.0);
    Hudmessage(s:"blood while they are in a dream state.   Scorlag will undoubtedly ask for rare, alluring and highly potent substances."; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.78, 180.0);

	Hudmessage(s:"Erudin is the Primarch of Subterfuge. Showing the most fearsome trait of a Demon, Erudin will often ask the halfblood"; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.82, 180.0);
    Hudmessage(s:"to slash their bonds and relinquish any form of loyalty.    She is difficult to appease, but her lessons are worth it.  [...]"; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
}

Script 115 (void)
{
	If(GetActorProperty(635, APROP_Health) > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

    If(GameSkill() == 5)
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Bracer of the Revenant - 100g"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 45.0);
	Hudmessage(s:"Potion of Might - 100g"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.44, 45.0);
	Hudmessage(s:"Amulet of Shadows - 70g"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.46, 45.0);
	Hudmessage(s:"Vial of Healing - 15g"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.48, 45.0);
	Hudmessage(s:"Elemental Ring - 80g"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.50, 45.0);
	Hudmessage(s:"Potion of Stoneskin - 35g"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.52, 45.0);
	Hudmessage(s:"Scroll of Magma Ball - 10g"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.54, 45.0);
	Hudmessage(s:"Light Armor Amulet - 75g"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.56, 45.0);
	  If(spec115 > 0)
	  {
	  Hudmessage(s:"Bag of Holding - 350g"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.58, 45.0);
	  }
	}
	else
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Hellclaw - 15g"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 45.0);
	Hudmessage(s:"Ammo Box - 20g"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.44, 45.0);
	Hudmessage(s:"Spikes - 5g"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.46, 45.0);
	Hudmessage(s:"Fragfire Can - 15g"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.48, 45.0);
	Hudmessage(s:"Box of Acid Potions - 25g"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.50, 45.0);
	Hudmessage(s:"Box of Toxic Potions - 35g"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.52, 45.0);
	Hudmessage(s:"Boltmag - 25g"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.54, 45.0);
	Hudmessage(s:"Light Armor Amulet - 75g"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.56, 45.0);
	  If(spec115 > 0)
	  {
	  Hudmessage(s:"Bag of Holding - 350g"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.58, 45.0);
	  }
	}
	}
}


//Obelisk Riddle
int Spec101 = 0;
int Spec102 = 0;
int Spec103 = 0;
Script 101 (void)
{
	If(Spec101 == 0)
	{
	  Spec101 += 1;
	  PlaySound(0, "Interaction/HarpA", CHAN_AUTO);
	  GiveInventory("ScriptObeliskCount", 1);
	}

	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I_ _ __U____N __ __R_, ___S _ ___T__ __O____ R__. __E_ __ _U_,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"___ F____G ____H____S, ____ T____ S____ A__ __A__ __ D__.        "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
}
Script 102 (void)
{
	If(Spec102 == 0)
	{
	  Spec102 += 1;
	  PlaySound(0, "Interaction/HarpA", CHAN_AUTO);
	  GiveInventory("ScriptObeliskCount", 1);
	}

	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"_N _ ___L____ O_ ___E, ____ A ____A_ ___W___ _E_. ___K __ __T,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"___ _A____ N____W____, T___ _H___ _T___ _N_ ___R_ __ _I_.        "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
}
Script 103 (void)
{
	If(Spec103 == 0)
	{
	  Spec103 += 1;
	  PlaySound(0, "Interaction/HarpA", CHAN_AUTO);
	  GiveInventory("ScriptObeliskCount", 1);
	}

	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"__ A ____D___ _F ____, L___ _ P____L ____I__ __D. ____ I_ ___,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"A__ __C___ _O____A___, _A__ __R__ __E__ __D ____T __ __G.        "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
}





//HUDMESSAGE CLEAR

Script 19 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 3, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

Script 17 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 3, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 4, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 5, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 6, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 7, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 8, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

Script 18 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 3, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 4, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 5, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 6, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 7, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 8, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 12, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 13, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 14, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 15, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 16, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 17, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 18, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 19, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 20, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 21, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//MUSIC FADE
Script 48 (void)
{
	SetMusicVolume(0.9);
	Delay(8);
	SetMusicVolume(0.8);
	Delay(8);
	SetMusicVolume(0.7);
	Delay(8);
	SetMusicVolume(0.6);
	Delay(8);
	SetMusicVolume(0.5);
	Delay(8);
	SetMusicVolume(0.4);
	Delay(8);
	SetMusicVolume(0.3);
	Delay(8);
	SetMusicVolume(0.2);
	Delay(8);
	SetMusicVolume(0.1);
	Delay(8);
	SetMusicVolume(0.0);
	SetMusic("");
	Delay(1);
	SetMusicVolume(1.0);
}

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}

//JOURNAL
int JournalPage = 0;
Script "OpenJournal" (void)
{
	SetFont ("OLAYTJOU");
    HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);

	SetFont("SMALLFONT");
	Hudmessage(s:".oO   JOURNAL OF ZAN THE BONEBREAKER   Oo."; HUDMSG_PLAIN, 999, CR_BLACK, 1.5, 0.10, 9999.0);

	If(CheckInventory("JournalScrawnSketch") > 0)
	{
		GiveInventory("JournalBrowseExtraPages", 1);
	}

    If(JournalPage == 0)
	{
	//MAIN QUESTS
	//Survive
	  If(CheckInventory("QuestMap18Survive") == 2)
	  {
	    Hudmessage(s:"> Stranded. Need to find some food and get my bearings"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	  }
	    else
	    If(CheckInventory("QuestMap18Survive") == 1)
	    {
		  Hudmessage(s:"> Stranded. Need to find some food and get my bearings"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	      Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1002, CR_BLACK, 1.5, 0.16, 9999.0);
	    }
	//Get Primarch Taints
	If(CheckInventory("QuestMap18GetPrimarchsTaint") == 2)
	{
	  Hudmessage(s:"> To enter the Icon's lair I need taints from 5 primarchs:"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
      Hudmessage(s:"> Gaun -                                                                                              "; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
      Hudmessage(s:"> Adur -                                                                                        "; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
      Hudmessage(s:"> Elzriel -                                                                                        "; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
	  Hudmessage(s:"> Scorlag -                                                                                          "; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
	  Hudmessage(s:"> Erudin -                                                                                            "; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
	  Hudmessage(s:"_________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1029, CR_BLACK, 1.5, 0.56, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GetPrimarchsTaint") == 1)
	  {
	    Hudmessage(s:"> To enter the Icon's lair I need taints from 5 primarchs:"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
		Hudmessage(s:"-----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1004, CR_BLACK, 1.5, 0.18, 9999.0);
		Hudmessage(s:"_________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1029, CR_BLACK, 1.5, 0.56, 9999.0);
	  }
	//Green Primarch
	If(CheckInventory("QuestMap18GreenPrimarch") == 2)
	{
	  Hudmessage(s:"> Gaun - green - wants a crimson salt statue of myself"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GreenPrimarch") == 1)
	  {
	    Hudmessage(s:"> Gaun - green - wants a crimson salt statue of myself"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
		Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1006, CR_BLACK, 1.5, 0.24, 9999.0);
	  }
	//Purple Primarch
	If(CheckInventory("QuestMap19PurplePrimarch") == 2)
	{
	  Hudmessage(s:"> Adur - purple - wants me to seduce a demonblood"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19PurplePrimarch") == 1)
	  {
	    Hudmessage(s:"> Adur - purple - wants me to seduce a demonblood"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
		Hudmessage(s:"-----------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1008, CR_BLACK, 1.5, 0.30, 9999.0);
	  }
	//Get Sacrificial Sword
	If(CheckInventory("QuestMap18GetSacrificialSword") == 2)
	{
	  Hudmessage(s:"Eraanthe will help me if I find her a sacrificial sword"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.32, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GetSacrificialSword") == 1)
	  {
	    Hudmessage(s:"Eraanthe will help me if I find her a sacrificial sword"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.32, 9999.0);
		Hudmessage(s:"--------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1010, CR_BLACK, 1.5, 0.32, 9999.0);
	  }
	//Yellow Primarch
	If(CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  Hudmessage(s:"> Elzriel - gold - wants me to offer him 300 gold coins"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19YellowPrimarch") == 1)
	  {
	    Hudmessage(s:"> Elzriel - gold - wants me to offer him 300 gold coins"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
		Hudmessage(s:"--------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1012, CR_BLACK, 1.5, 0.36, 9999.0);
	  }
	//Blue Primarch
	If(CheckInventory("QuestMap20BluePrimarch") == 2)
	{
	  Hudmessage(s:"> Scorlag - blue - wants elixir of life and elixir of death"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20BluePrimarch") == 1)
	  {
	    Hudmessage(s:"> Scorlag - blue - wants elixir of life and elixir of death"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
		Hudmessage(s:"----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1014, CR_BLACK, 1.5, 0.42, 9999.0);
	  }
	//Red Primarch
	If(CheckInventory("QuestMap20RedPrimarch") == 2)
	{
	  Hudmessage(s:"> Erudin - red - wants me to perform a bloody betrayal"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20RedPrimarch") == 1)
	  {
	    Hudmessage(s:"> Erudin - red - wants me to perform a bloody betrayal"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
		Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1016, CR_BLACK, 1.5, 0.48, 9999.0);
	  }
	//Help Wounded Bear Warrior
	If(CheckInventory("QuestMap18HelpWoundedBearWarrior") > 0 && CheckInventory("ScriptHasBetrayedID") > 0)
	{
	  Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
	  Hudmessage(s:"////////////////////////////////////////"; HUDMSG_PLAIN | HUDMSG_LOG, 1018, CR_BLACK, 1.5, 0.50, 9999.0);
	}
	else
	If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 2)
	{
	  Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 1)
	  {
	    Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1018, CR_BLACK, 1.5, 0.50, 9999.0);
	  }
	//Help Pit Lord Eberon
	If(CheckInventory("QuestMap18HelpPitLordEberon") == 2)
	{
	  Hudmessage(s:"Eberon wants me to open the gate by the side of his fort"; HUDMSG_PLAIN | HUDMSG_LOG, 1019, CR_BLACK, 1.5, 0.52, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpPitLordEberon") == 1)
	  {
	    Hudmessage(s:"Eberon wants me to open the gate by the side of his fort"; HUDMSG_PLAIN | HUDMSG_LOG, 1019, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"-----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1020, CR_BLACK, 1.5, 0.52, 9999.0);
	  }
	//Help Flame Beacon Ghost
	If(CheckInventory("QuestMap18HelpFlameBeaconGhost") == 2)
	{
	  Hudmessage(s:"> Port ghost asked me to find his brothers with his pendant"; HUDMSG_PLAIN | HUDMSG_LOG, 1021, CR_BLACK, 1.5, 0.60, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpFlameBeaconGhost") == 1)
	  {
	    Hudmessage(s:"> Port ghost asked me to find his brothers with his pendant"; HUDMSG_PLAIN | HUDMSG_LOG, 1021, CR_BLACK, 1.5, 0.60, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1022, CR_BLACK, 1.5, 0.60, 9999.0);
	  }
	//Get Soul Key Fragments
	If(CheckInventory("QuestMap20GetSoulKeyFragments") == 2)
	{
	  Hudmessage(s:"> Abedun said I need 3 soul key fragments to sap the Baron"; HUDMSG_PLAIN | HUDMSG_LOG, 1023, CR_BLACK, 1.5, 0.62, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20GetSoulKeyFragments") == 1)
	  {
	    Hudmessage(s:"> Abedun said I need 3 soul key fragments to sap the Baron"; HUDMSG_PLAIN | HUDMSG_LOG, 1023, CR_BLACK, 1.5, 0.62, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1024, CR_BLACK, 1.5, 0.62, 9999.0);
	  }
	//Rescue Lancer
	If(CheckInventory("QuestMap19RescueLancer") == 2)
	{
	  Hudmessage(s:"__________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.64, 9999.0);
	  Hudmessage(s:"> A lancer trapped inside a painting asked me to rescue her"; HUDMSG_PLAIN | HUDMSG_LOG, 1025, CR_BLACK, 1.5, 0.66, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19RescueLancer") == 1)
	  {
		Hudmessage(s:"__________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.64, 9999.0);
	    Hudmessage(s:"> A lancer trapped inside a painting asked me to rescue her"; HUDMSG_PLAIN | HUDMSG_LOG, 1025, CR_BLACK, 1.5, 0.66, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1026, CR_BLACK, 1.5, 0.66, 9999.0);
	  }
	//Enter Portal
	If(CheckInventory("QuestMap18EnterPortal") == 2)
	{
	  Hudmessage(s:"> Time to end this war. The Baron's citadel awaits me."; HUDMSG_PLAIN | HUDMSG_LOG, 1027, CR_BLACK, 1.5, 0.80, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18EnterPortal") == 1)
	  {
	    Hudmessage(s:"> Time to end this war. The Baron's citadel awaits me."; HUDMSG_PLAIN | HUDMSG_LOG, 1027, CR_BLACK, 1.5, 0.80, 9999.0);
		Hudmessage(s:"-------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1028, CR_BLACK, 1.5, 0.80, 9999.0);
	  }


	If(CheckInventory("JournalScrawnSketch") > 0)
	  {
	      JournalPage += 1; //ready next page
	  }
	}

	  else

	  If(JournalPage == 1)
	  {
		SetFont("SMALLFONT");
		Hudmessage(s:""; HUDMSG_PLAIN, 998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1000, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1001, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1002, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1003, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1004, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1005, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1006, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1007, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1008, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1009, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1010, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1011, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1012, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1013, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1014, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1015, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1016, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1017, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1018, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1019, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1020, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1021, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1022, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1023, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1024, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1025, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1026, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1027, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1028, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1029, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1030, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 1031, CR_UNTRANSLATED, 1.5, 0.5, 0.1);

		SetFont ("OLAYTJO0");
        HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);

		If(GameSkill() > SKILL_VERY_HARD)
		{
		  SetFont ("OLAYTJO1");
		}
		else
		{
		  SetFont ("OLAYTJO2");
		}
		HudMessage (s:"a"; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);


	  TakeInventory("JournalBrowseExtraPages", 1); //reset pages
	  JournalPage = 0;
	  }


}

Script "CloseJournal" (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:""; HUDMSG_PLAIN, 998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
    Hudmessage(s:""; HUDMSG_PLAIN, 1000, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1001, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1002, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1003, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1004, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1005, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1006, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1007, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1008, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1009, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1010, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1011, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1012, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1013, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1014, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1015, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1016, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1017, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1018, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1019, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1020, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1021, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1022, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1023, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1024, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1025, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1026, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1027, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1028, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1029, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1030, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1031, CR_UNTRANSLATED, 1.5, 0.5, 0.1);

    Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}




















///////////////////////
//FRIENDLY CAMP
///////////////////////

//Murguth Entrance Hail
Script 108 (void)
{
	SetLineSpecial(520, 0, 0, 0, 0, 0, 0);
	Delay(70);
	PlaySound(630, "Murguth/Growl", CHAN_AUTO, 1.0, false, 3);
    Hudmessage(s:"Minotaur Lord Murguth:    Halfblood! I knew you would come."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 2.5, 0.2, 3.5);
    Delay(3*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	If(GetActorProperty(0, APROP_Health) > 0)
	{
	  ACS_Execute(111, 0, 0, 0, 0);
	}
	else
	{
	  PlaySound(630, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Minotaur Lord Murguth:    Oh... I suppose the burden of our situation was too heavy for you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 3.5, 0.2, 3.5);
	}
}
//Axeman Entrance Hail
Script 109 (void)
{
	SetLineSpecial(520, 0, 0, 0, 0, 0, 0);
	Delay(35);
	PlaySound(632, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Minotaur Axeman:    You! Do my eyes deceive me?... come on in, Lord Murguth needs to see you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 4.5, 0.2, 1.5);
    Delay(3*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	ACS_Execute(111, 0, 0, 0, 0);
}
//Bear Warrior Entrance Hail
Script 110 (void)
{
	SetLineSpecial(520, 0, 0, 0, 0, 0, 0);
	PlaySound(634, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Bonebreaker! You just keep returning from the dead, eh? Come in, Murguth's looking for ya."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 1.5);
    Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	If(GetActorProperty(0, APROP_Health) > 0)
	{
	  ACS_Execute(111, 0, 0, 0, 0);
	}
	else
	{
		PlaySound(634, "BearWarrior/Hmm", CHAN_AUTO);
		Hudmessage(s:"Bear Warrior:    ...nevermind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.5, 0.2, 3.5);
	}
}

//Briefing 1
Script 111 (void)
{
	Line_SetBlocking(522, 0, BLOCKF_PLAYERS);
	TakeInventory("IsPlaying", 1);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	Thing_Remove(630);
	Thing_Remove(632);
	Thing_Remove(634);
	SetActorFlag(629, "INVISIBLE", 0);
	SetActorFlag(631, "INVISIBLE", 0);
	SetActorFlag(633, "INVISIBLE", 0);
	SetActorProperty(0, APROP_SPEED, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	SetWeapon("Fists");

	Teleport_NoFog(521, 1, 0);
	SetActorAngle(0, 0.75);
	SetActorPitch(0, 0);

	ACS_Execute(112, 0, 0, 0, 0); //Skip Briefing 1
	Delay(145);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(35);

    PlaySound(629, "Murguth/Ha", CHAN_AUTO);
	Hudmessage(s:"Minotaur Lord Murguth:    You have gained more scars since we last met, Halfblood. Welcome back among us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 1.2, 0.5);
    Delay(9*35);
	PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	Hudmessage(s:"It is difficult to measure time here, but we must have arrived at the Core of Hell a few days after you did."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
    PlaySound(629, "Murguth/Unf", CHAN_AUTO);
	Hudmessage(s:"The Baron's citadel lies close, northwards. His minions are ready to defend it, but that's not our only obstacle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    Delay(8*35);
	Hudmessage(s:"Vile energies harvested from thousands of sacrifices shroud the Icon's throne, boiling up the blood of intruders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	Hudmessage(s:"As you may know, only a demonblood can hope to reach the citadel unscathed... I can see a spark in your eyes."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	PlaySound(629, "Murguth/Unf", CHAN_AUTO);
	Hudmessage(s:"Temper that rage for now. Your demon blood will only get you halfway there, as I have learned from this book."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	Hudmessage(s:"The texts say that a halfblood must bear each of the five demonic taints to be allowed passage to the citadel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	PlaySound(629, "Murguth/Ha", CHAN_AUTO);
	Hudmessage(s:"Your heart must be emburdened with sin - and for that, you shall journey to the shrines of the Demon Primarchs."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	Hudmessage(s:"Gaun, Adur, Elzriel, Scorlag and Erudin. They are the five primarchs whom you must appease. But heed my word:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 8.5, 0.2, 0.5);
	Delay(6*35);
	TakeInventory("QuestMap18Survive", 1);
	GiveInventory("QuestMap18GetPrimarchsTaint", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");
	Delay(3*35);
	PlaySound(629, "Murguth/Unf", CHAN_AUTO);
	Hudmessage(s:"They are weavers of chaos and sin, and will undoubtedly try to corrupt you. Use your wits to gain their favor."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    Delay(8*35);
	Hudmessage(s:"And make haste. The Queen of Wrath is already ahead of you, but we can't put the same trust in her as in you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    Delay(8*35);
	PlaySound(629, "Murguth/Ha", CHAN_AUTO);
	Hudmessage(s:"If we don't slay the Baron here, the hordes of chaos will conquer the world. So go! Fire burn in your heart!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);

	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(9*35);
	Autosave();
}
//skip Briefing 1
int SkipTimer = 0;
int SkipTimerDisplay = 0;
Script 112 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);

	ACS_Terminate(111, 0);

    GiveInventory("IsPlaying", 1);
    FadeTo(0, 0, 0, 0.0, 3.0);

	Delay(35);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);

	PlaySound(629, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    You can't reach the Baron without the demon primarchs' taint. This book will tell you more..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 5.5, 0.2, 2.5);
    Delay(3*35);

    TakeInventory("QuestMap18Survive", 1);
	GiveInventory("QuestMap18GetPrimarchsTaint", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");

	Delay(3*35);
	Autosave();
}

//Dura Hail/Briefing 2
int dial655 = 4;
Script 139 (void)
{
	SetLineSpecial(570, 0, 0, 0, 0, 0, 0);
	SetActorProperty(0, APROP_Friction, 0.2);
	Delay(16);
	Thing_Stop(0);
	SetActorProperty(0, APROP_SPEED, 0.0);

	If(GetActorProperty(640, APROP_Health) > 0)
	{
	  SetActorAngle(640, 0.13);
	}

	If(GetActorProperty(537, APROP_Health) > 0 && CheckInventory("QuestMap18HelpWoundedBearWarrior") == 2)
	{
	  PlaySound(644, "BearWarrior/Ha", CHAN_AUTO);
      Hudmessage(s:"Captain Dura:    I was wondering when you'd show up... wait, what? Our lookouts got into trouble?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 4.5, 0.2, 1.5);
	  Delay(6*35);
	  PlaySound(644, "BearWarrior/Huh", CHAN_AUTO);
      Hudmessage(s:"Damn it! Alright, I'll send a squad up there to clean up the mess. As for you, come in, Grund wants to see you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 2.5);
	  Delay(4*35);
	  TakeInventory("QuestMap18HelpWoundedBearWarrior", 1);
	  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	  Log(s:"Journal updated.");
	  Delay(35);
	  FadeTo(0, 0, 0, 1.0, 3.0);
	  Delay(3*35);

	  Thing_Remove(537);
	  SpawnSpotForced("NPCWoundedBearWarrior", 571, 645, 0);
	  SetActorFlag(645, "INVULNERABLE", 1);
	  SetActorFlag(645, "NOBLOOD", 1);

	  FloorAndCeiling_RaiseByvalue(328, 999, 300);

	  SetLineSpecial(573, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(574, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(575, 0, 0, 0, 0, 0, 0);
	  Thing_Remove(646);
	  Thing_Remove(647);
	  Thing_Remove(648);
	  Thing_Remove(649);
	  SetLineSpecial(576, ACS_Execute, 646, 0, 0, 0, 0);
	  SetLineSpecial(577, ACS_Execute, 647, 0, 0, 0, 0);
	  SetLineSpecial(578, ACS_Execute, 648, 0, 0, 0, 0);
	  SetLineSpecial(579, ACS_Execute, 649, 0, 0, 0, 0);
	  dial646 = 4;
	  dial647 = 4;
	  dial648 = 4;
	  dial649 = 4;
	  SpawnSpotForced("IDWitchStationary", 580, 646, 64);
	  SpawnSpotForced("IDBearWarriorStationary", 581, 647, 64);
	  SpawnSpotForced("IDReaverStationary", 582, 648, 64);
	  SpawnSpotForced("IDBearWarriorStationary", 583, 649, 64);
	  SetActorFlag(543, "INVISIBLE", 0);
	  Floor_RaiseByvalue(542, 8, 1);
	  ChangeFloor(542, "CARPET1C");
	  SetLineSpecial(540, 0, 0, 0, 0, 0, 0);
	  SetActorProperty(536, APROP_Alpha, 0.3);
	  Thing_Remove(535);
	  TeleportOther(723, 724, 0);
	}
	else
	If(GetSectorCeilingZ(328, 0, 0) != -104.0)
	{
		PlaySound(644, "BearWarrior/Rage2", CHAN_AUTO);
		Hudmessage(s:"Captain Dura:    You're late, sergeant... and what the fuck happened to the lookout squad? Ugh, Earth's mercy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 1.5);
	    Delay(7*35);
		PlaySound(644, "BearWarrior/Huh", CHAN_AUTO);
		Hudmessage(s:"Move your ass inside! Grund wants to have a word with you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(3*35);
	    FadeTo(0, 0, 0, 1.0, 3.0);
	    Delay(3*35);
	}
	else
	If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 0 || GetActorProperty(537, APROP_Health) <= 0)
	{
	  Thing_Destroy(537, 0, 0);
	  PlaySound(644, "BearWarrior/Huh", CHAN_AUTO);
      Hudmessage(s:"Captain Dura:    I was wondering when you'd show up... come inside, Grund wants to have a word with you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 2.5);
	  Delay(5*35);
	  FadeTo(0, 0, 0, 1.0, 3.0);
	  Delay(3*35);
	}


    SetWeapon("Fists");

	ACS_NamedExecuteWithResult("TakeWeapons");
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	Teleport_NoFog(584, 1, 0);
	SetActorAngle(0, 1.0);
	SetActorPitch(0, 0);
	TakeInventory("IsPlaying", 1);

	ACS_Execute(140, 0, 0, 0, 0); //Skip Briefing 2
	Delay(145);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    GiveInventory("IsPlaying", 1);

	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(1*35);


    Thing_Remove(585);
	dial655 = 4;
	SpawnSpotForced("JunkBrokenPickaxe", 595, 0, 0);
	Thing_Remove(658);
	If(IsTIDUsed(664))
	{
		Thing_Remove(664);
		SpawnSpotForced("IDBag", 663, 665, 0);
		SetActorProperty(665, APROP_ScaleX, 0.5);
		SetActorProperty(665, APROP_ScaleY, 0.5);
		spec659 = 1;
	}
	SetLineSpecial(660, 0, 0, 0, 0, 0, 0);
	Thing_Remove(676);
	SetActorFlag(677, "INVISIBLE", 0);
    FloorAndCeiling_LowerByValue(358, 9999, 256);

    Thing_Remove(813);
	Thing_Remove(814);
    Thing_Remove(389);
    SetActorFlag(390, "INVISIBLE", 0);
	Thing_Activate(391);
	SetLineSpecial(439, ACS_Execute, 88, 0, 0, 0, 0);
	SetLineTexture(4, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	SetLineTexture(4, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	SpawnSpotForced("HealthStew", 392, 0, 0);
	SpawnSpotForced("HealthBakedPotato", 393, 0, 0);
	SpawnSpotForced("IDFixerStationary", 703, 700, 80);
	SpawnSpotForced("IDBearWarriorStationary", 704, 701, 140);
	SpawnSpotForced("IDWitchStationary", 705, 702, 0);
	SpawnSpotForced("InventorySentryGun", 689, 706, 0);
	SetLineSpecial(707, ACS_Execute, 707, 0, 0, 0, 0);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    So, you're alive. Maybe next time you decide to leave us behind, you won't be as lucky."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"So unless you want to end up like Tiati in that cage over there, you better listen to me very carefully..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"We're in the belly of the beast right now. A savage, fiery and unforgiving beast. We can barely hold up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"We could've brought more supplies or troops, but we had one less boat thanks to you. As for Tiati's fuck up..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 2.0);
	Delay(11*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Grrh... so. Murguth has told you about the demon primarchs. I personally don't put any trust in demon tales..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"...but I'll give you a chance to gain their blessings or taints or whatever, if it helps you kill the Baron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	Hudmessage(s:"One day. That's the time you've got to prepare. Once I call for the final assault, you better be right here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"I'm not relying on the Queen of Wrath. You will be the one leading the charge. Am I clear? Good. Dismissed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 2.5);

	ACS_NamedExecuteWithResult("GiveWeapons");
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
}
Script 141 (void)
{
	SetLineSpecial(570, 0, 0, 0, 0, 0, 0);
	PlaySound(644, "BearWarrior/Rage2", CHAN_AUTO);
	Hudmessage(s:"Captain Dura:    You're late to the bloodbath! What the fuck happened to our lookouts? What a fucking mess..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 4.5, 0.2, 1.5);
}
//skip Briefing 2
Script 140 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);

	ACS_Terminate(139, 0);

    SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    GiveInventory("IsPlaying", 1);
    FadeTo(0, 0, 0, 0.0, 3.0);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Whether you appease the primarchs or not, you have one day. Then, we're going for the kill."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);

    Thing_Remove(585);
	dial655 = 4;
	SpawnSpotForced("JunkBrokenPickaxe", 595, 0, 0);
	Thing_Remove(658);
	If(IsTIDUsed(664))
	{
		Thing_Remove(664);
		SpawnSpotForced("IDBag", 663, 665, 0);
		SetActorProperty(665, APROP_ScaleX, 0.5);
		SetActorProperty(665, APROP_ScaleY, 0.5);
		spec659 = 1;
	}
	SetLineSpecial(660, 0, 0, 0, 0, 0, 0);
	Thing_Remove(676);
	SetActorFlag(677, "INVISIBLE", 0);
    FloorAndCeiling_LowerByValue(358, 9999, 256);

    Thing_Remove(813);
	Thing_Remove(814);
	Thing_Remove(389);
    SetActorFlag(390, "INVISIBLE", 0);
	Thing_Activate(391);
	SetLineSpecial(439, ACS_Execute, 88, 0, 0, 0, 0);
	SetLineTexture(4, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	SetLineTexture(4, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	SpawnSpotForced("HealthStew", 392, 0, 0);
	SpawnSpotForced("HealthBakedPotato", 393, 0, 0);
	SpawnSpotForced("IDFixerStationary", 703, 700, 80);
	SpawnSpotForced("IDBearWarriorStationary", 704, 701, 140);
	SpawnSpotForced("IDWitchStationary", 705, 702, 0);
	SpawnSpotForced("InventorySentryGun", 689, 706, 0);
	SetLineSpecial(707, ACS_Execute, 707, 0, 0, 0, 0);

	Delay(35);
	ACS_NamedExecuteWithResult("GiveWeapons");
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(3*35);
	Autosave();
}

//Briefing 3
int dial674 = 6;
int dial675 = 6;
int dial684 = 6;
int dial637 = 6;
Script 766 (void)
{
	SetLineSpecial(766, 0, 0, 0, 0, 0, 0);
	SetActorProperty(0, APROP_Friction, 0.2);
	Delay(8);
	Thing_Stop(0);
	SetActorProperty(0, APROP_SPEED, 0.0);

	SpawnSpotForced("IDReaverStationary", 767, 766, 0);
	SpawnSpotForced("IDReaverStationary", 768, 766, 128);
	SpawnSpotForced("IDReaverStationary", 769, 766, 192);
	SpawnSpotForced("IDReaverStationary", 770, 766, 64);
	SpawnSpotForced("IDReaverStationary", 818, 766, 128);
	ACS_Execute(48, 0, 0, 0, 0);
	SetActorFlag(766, "BUDDHA", 1);
	PlaySound(766, "Magic/ShadowsActivate", CHAN_AUTO);
	SetActorProperty(766, APROP_RenderStyle, STYLE_Subtract);
	SetActorProperty(766, APROP_Alpha, 0.0);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.1);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.2);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.3);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.4);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.5);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.6);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.7);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.8);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 0.9);
	Delay(3);
	SetActorProperty(766, APROP_Alpha, 1.0);
	Delay(3);
	SpawnSpotForced("IDReaverStationary", 771, 766, 192);
	SetActorFlag(654, "INVISIBLE", 1);
	SpawnSpotForced("NPCBreazaRegular", 774, 775, 192);

	If(CheckProximity(0, "IDBannerCarpenter", 360.0, 1, CPXF_NOZ))
	{
	  PlaySound(766, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Zan! I was sent after you. Something big is going on. Come with me, Grund will brief us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(8*35);
	  PlaySound(766, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"And keep your head down. The forest is crawling with demons..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 2.5);
	  Delay(4*35);
	}
	else
	{
	  PlaySound(766, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Zan! I was sent after you. Something big is going on. Come with me, Grund will brief us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 2.5);
	  Delay(6*35);
	}
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);

	SetWeapon("Fists");

	ACS_NamedExecuteWithResult("TakeWeapons");
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);

	If(GetActorProperty(0, APROP_Health) <= 0)
	{
	  PlaySound(766, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Damn it, Zan, don't die on me!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 3.5);
	  Delay(8*35);
	  Terminate;
	}

	Teleport_NoFog(584, 1, 0);
	SetActorAngle(0, 1.0);
	SetActorPitch(0, 0);
	TakeInventory("IsPlaying", 1);

	ACS_Execute(767, 0, 0, 0, 0); //Skip Briefing 3
	Delay(145);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    GiveInventory("IsPlaying", 1);

	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(1*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Time's up early, sergeant. The demons are making a major move. We must act now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	If(GetActorProperty(656, APROP_Health) <= 0)
	{
	  TeleportOther(656, 773, 0);
	  PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
      Hudmessage(s:"You're moving in! I hope appeasing the primarchs was worth stealing my elixir and poisoning my warg..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(8*35);
	}
	else
	{
	  PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
      Hudmessage(s:"You're moving in! I hope appeasing the primarchs was worth disregarding and stealing from a superior..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 1.5);
	  Delay(8*35);
	}

    PlaySound(652, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Advisor:    Scouts have reported a large number of demons marching out of the Baron's citadel..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    And fire blazing from the spires. Tiati's freaking out... they're preparing something."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 1.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Enough wasting time! This is it, sergeant. The time to fulfil your destiny! The fight of your life!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Rage1", CHAN_AUTO);
    Hudmessage(s:"Lead our troops and push the demons back! Then cross through that portal and finish the Baron off!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(6*35);

	TakeInventory("QuestMap18GetPrimarchsTaint", 1);
	GiveInventory("QuestMap18EnterPortal", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");
	Delay(2*35);

	PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"For our fallen sisters! For Valc! Fight with honor! Fight with pride! Fight for the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(766, "Reaver/Hm", CHAN_AUTO);
	Hudmessage(s:"Reaver:    We won't fail you, sisters! Come on, Zan, I'll take you to our squad. Lead us to victory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 2.5);
	Delay(8*35);

	PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Use the forest to your advantage, we'll keep the other routes secure. Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 1.2, 2.5);
	Delay(5*35);

	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);

	SpawnSpotForced("Hellblaze", 777, 776, 192);
	SpawnSpotForced("Hellion", 778, 776, 192);
	SpawnSpotForced("SniperHellion", 779, 776, 192);
	SpawnSpotForced("Cerberus", 780, 776, 192);
	SpawnSpotForced("PitLord", 781, 776, 192);
	SpawnSpotForced("ForgeElemental", 782, 776, 192);
	SpawnSpotForced("Glutton", 783, 776, 192);
	SpawnSpotForced("PsiDemon", 784, 776, 192);
	SpawnSpotForced("Genius", 786, 776, 192);
	SpawnSpotForced("GiantCerberus", 785, 787, 192);
	SetActorFlag(776, "NOINFIGHTING", 1);
	SetActorProperty(787, Aprop_Health, 2500);

	SetLineSpecial(59, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(59, 0, BLOCKF_EVERYTHING);
	SetLineSpecial(788, 15, 0, 0, 0, 0, 0);
	SetLineSpecial(789, ACS_Execute, 789, 0, 0, 0, 0);
	SetLineSpecial(791, ACS_Execute, 791, 0, 0, 0, 0);
	SetLineSpecial(792, ACS_Execute, 792, 0, 0, 0, 0);
	SetLineSpecial(793, ACS_Execute, 793, 0, 0, 0, 0);
	SetLineSpecial(794, ACS_Execute, 794, 0, 0, 0, 0);

    SetActorFlag(654, "INVISIBLE", 0);
	Thing_Remove(775);
    Thing_Remove(766);
	Thing_Remove(901);

	dial674 = 6;
	dial675 = 6;
	dial684 = 6;
	dial637 = 6;
	dial644 = 6;
	dial655 = 4;

	SpawnSpotForced("IDBearWarriorRecruitable", 730, 0, 96);
	SpawnSpotForced("IDWitchRecruitable", 731, 0, 96);
	SpawnSpotForced("IDFixerRecruitable", 732, 0, 128);
	SpawnSpotForced("IDReaverRecruitable", 733, 790, 128);
	Thing_Remove(729);
	SetLineSpecial(740, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDEarthMotherRecruitable", 734, 0, 96);
	Teleport_NoFog(737, 1, 0);
	SetActorPitch(0, 0);
	Delay(4*35);
	FadeTo(0, 0, 0, 0.0, 3.0);
	ACS_NamedExecuteWithResult("GiveWeapons");
	If(CheckInventory("QuestMap19RescueLancer") == 1)
	{
      SpawnSpotForced("IDLancerRecruitable", 735, 0, 224);
	  Delay(35);
	  SetMusic("HTrack31", 0, 0);
	  PlaySound(736, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    We've been eagerly awaiting you, Zan. I recovered enough to fight beside my sisters once more!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  PlaySound(736, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"I have something for you... while trapped in the painting, my crystals have gathered an excess of energy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  PlaySound(736, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"I funneled it into this armor amulet. Take it, along with my gratitude. Now let's go! The battle awaits!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(3*35);
	  SpawnSpotForced("OverchargedArmorCrystal", 736, 0, 0);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  Delay(3*35);
	}
	Delay(35);
	SetMusic("HTrack31", 0, 0);

	PlaySound(731, "Witch/Ha", CHAN_AUTO);
	Hudmessage(s:"Witch:    The demons are cowering inside the forest now. Whenever you're ready, Zan. Let us dive into battle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 1.5);
    Delay(2*35);

	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(3*35);
	Autosave();
}
//skip Briefing 3
Script 767 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);

	ACS_Terminate(766, 0);

    SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    GiveInventory("IsPlaying", 1);
    //FadeTo(0, 0, 0, 0.0, 3.0);

	If(GetActorProperty(656, APROP_Health) <= 0)
	{
	  TeleportOther(656, 773, 0);
	}

	TakeInventory("QuestMap18GetPrimarchsTaint", 1);
	GiveInventory("QuestMap18EnterPortal", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");

	SpawnSpotForced("Hellblaze", 777, 776, 192);
	SpawnSpotForced("Hellion", 778, 776, 192);
	SpawnSpotForced("SniperHellion", 779, 776, 192);
	SpawnSpotForced("Cerberus", 780, 776, 192);
	SpawnSpotForced("PitLord", 781, 776, 192);
	SpawnSpotForced("ForgeElemental", 782, 776, 192);
	SpawnSpotForced("Glutton", 783, 776, 192);
	SpawnSpotForced("PsiDemon", 784, 776, 192);
	SpawnSpotForced("Genius", 786, 776, 192);
	SpawnSpotForced("GiantCerberus", 785, 787, 192);
	SetActorFlag(776, "NOINFIGHTING", 1);
	SetActorProperty(787, Aprop_Health, 2500);

	SetLineSpecial(59, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(59, 0, BLOCKF_EVERYTHING);
	SetLineSpecial(788, 15, 0, 0, 0, 0, 0);
	SetLineSpecial(789, ACS_Execute, 789, 0, 0, 0, 0);
	SetLineSpecial(791, ACS_Execute, 791, 0, 0, 0, 0);
	SetLineSpecial(792, ACS_Execute, 792, 0, 0, 0, 0);
	SetLineSpecial(793, ACS_Execute, 793, 0, 0, 0, 0);
	SetLineSpecial(794, ACS_Execute, 794, 0, 0, 0, 0);

    SetActorFlag(654, "INVISIBLE", 0);
	Thing_Remove(775);
    Thing_Remove(766);
	Thing_Remove(901);

	dial674 = 6;
	dial675 = 6;
	dial684 = 6;
	dial637 = 6;
	dial644 = 6;
	dial655 = 4;

	SpawnSpotForced("IDBearWarriorRecruitable", 730, 0, 96);
	SpawnSpotForced("IDWitchRecruitable", 731, 0, 96);
	SpawnSpotForced("IDFixerRecruitable", 732, 0, 128);
	SpawnSpotForced("IDReaverRecruitable", 733, 790, 128);
	Thing_Remove(729);
	SetLineSpecial(740, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDEarthMotherRecruitable", 734, 0, 96);
	Teleport_NoFog(737, 1, 0);
	SetActorPitch(0, 0);
	FadeTo(0, 0, 0, 0.0, 3.0);
	ACS_NamedExecuteWithResult("GiveWeapons");
	SetMusic("HTrack31", 0, 0);
	If(CheckInventory("QuestMap19RescueLancer") == 1)
	{
	  Delay(35);
      SpawnSpotForced("IDLancerRecruitable", 735, 0, 224);
	  PlaySound(736, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    We've been eagerly awaiting you, Zan. I recovered enough to fight along my sisters once more!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  PlaySound(736, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"I have something for you... while trapped in the painting, my crystals have gathered an excess of energy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  PlaySound(736, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"...I funneled it into this armor amulet. Take it, along with my gratitude. Now let's go! The battle awaits!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(3*35);
	  SpawnSpotForced("OverchargedArmorCrystal", 736, 0, 0);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  Delay(3*35);
	}
	Delay(35);

	PlaySound(731, "Witch/Ha", CHAN_AUTO);
	Hudmessage(s:"Witch:    The demons are cowering inside the forest now. Whenever you're ready, Zan. Let us dive into battle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 1.5);
    Delay(2*35);

	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(3*35);
	Autosave();
}






//Shady Fixer Ammo Trade
int spec116a = 0;
int spec116b = 0;
int spec116c = 0;
int spec116d = 0;
int spec146b = 0;
Script 116 (void) //Shady Fixer Remarks
{
	If(GetActorProperty(635, APROP_Health) > 0 && spec116b == 1 && CheckInventory("QuestMap20BluePrimarch") == 2 && spec146b == 0)
	{
		spec116b += 1;
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    A birdie told me there's something Grund has that you need. I might be able to help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 1.5);
        Delay(5*35);
    }
	else
	If(GetActorProperty(635, APROP_Health) > 0 && spec116d == 0 && CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("InventoryCrimsonSaltRock") > 0)
	{
		spec116d += 1;
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Hey, do you have any need for that crimson salt? I could buy some off of you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 1.5);
        Delay(5*35);
    }
	else
	If(GetActorProperty(635, APROP_Health) > 0 && spec116a == 0)
	{
		spec116a += 1;
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    So, are you looking to spend that gold? The prices are on the tablet here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2,1.5);
		Delay(8*35);
    }
	else
	If(GetActorProperty(635, APROP_Health) > 0 && spec116a == 1)
	{
		spec116a += 1;
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    C'mon, don't be stingy... you never know when Grund decides to confiscate all this stuff."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 1.5);
		Delay(5*35);
    }
	else
	If(GetActorProperty(635, APROP_Health) > 0 && spec116c == 0 && CheckInventory("QuestMap18GetPrimarchsTaint") == 1 && CheckInventory("InventoryAngelFeather") > 0)
	{
		spec116c += 1;
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    If you wanna fight the Baron, you better gear up now. Having gold won't help you if you're dead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 2.5);
		Delay(5*35);
    }

}
Script 117 (void)
{
	Switch(random(1, 30))
	{
		Case 1:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    That'll come in handy."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 2:
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    A good choice."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 3:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    With this stuff, you'll be a killing machine."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
		Break;

		Case 4:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Gold well spent."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 5:
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    An armed orc is a happy orc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 6:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Here you go."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 7:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    It'll serve you well."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 8:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    I get the chings, you get the kills."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 9:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    There you go, have fun."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 10:
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Money well spent."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Break;

		Case 11:
		Break;
		Case 12:
		Break;
		Case 13:
		Break;
		Case 14:
		Break;
		Case 15:
		Break;
		Case 16:
		Break;
		Case 17:
		Break;
		Case 18:
		Break;
		Case 19:
		Break;
		Case 20:
		Break;
		Case 21:
		Break;
		Case 22:
		Break;
		Case 23:
		Break;
		Case 24:
		Break;
		Case 25:
		Break;
		Case 26:
		Break;
		Case 27:
		Break;
		Case 28:
		Break;
		Case 29:
		Break;
		Case 30:
		Break;
	}
}
Script 118 (void) //Hellclaw | Bracer of the Revenant
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 15)
	{
		TakeInventory("InventoryGoldCoin", 15);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Hellclaw for 15 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Weapons/HellclawPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("Hellclaw", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 100)
	{
		TakeInventory("InventoryGoldCoin", 100);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Bracer of the Revenant for 100 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryBracerOfTheRevenant", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Sorry, babe. No gold, no dice."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 119 (void) //Ammo Box | Potion of Might
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 20)
	{
		TakeInventory("InventoryGoldCoin", 20);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy an Ammo Box for 20 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/AmmoBoxPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("AmmoBox", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 100)
	{
		TakeInventory("InventoryGoldCoin", 100);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Potion of Might for 100 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryPotionOfMight", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    If you can't afford to buy it, I can't afford to sell it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 120 (void) //Amulet of Shadows | Spikes
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 5)
	{
		TakeInventory("InventoryGoldCoin", 5);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy several Spikes for 5 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/SpikeGunPick", CHAN_7, 0.6);
		SpawnSpotForced("AmmoCultistSpike", 526, 0, 0);
		Delay(8);
		PlaySound(526, "Ammo/SpikeGunPick", CHAN_7, 0.4);
		SpawnSpotForced("AmmoCultistSpike", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 70)
	{
		TakeInventory("InventoryGoldCoin", 70);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy an Amulet of Shadows for 70 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryAmuletOfShadows", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    I know you want it, but I can't just give it for free."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 121 (void) //Vial of Healing | Fragfire Can
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 15)
	{
		TakeInventory("InventoryGoldCoin", 15);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Fragfire Can for 15 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/FragfireCanPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("FragfireCan", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 15)
	{
		TakeInventory("InventoryGoldCoin", 15);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Vial of Healing for 15 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryVialOfHealing", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Nothing's free in this world, babe. It's just how it works."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 122 (void) //Acid Potion Box | Elemental Ring
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 25)
	{
		TakeInventory("InventoryGoldCoin", 25);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Box of Acid Potions for 25 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/PotionBoxPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("PotionBoxAcid", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 80)
	{
		TakeInventory("InventoryGoldCoin", 80);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy an Elemental Ring for 80 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryElementalRing", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Nothing's free in this world, babe. It's just how it works."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 123 (void) //Toxic Potion Box | Scroll of Magma Ball
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 35)
	{
		TakeInventory("InventoryGoldCoin", 35);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Box of Toxic Potions for 35 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/PotionBoxPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("PotionBoxToxic", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 10)
	{
		TakeInventory("InventoryGoldCoin", 10);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Scroll of Magma Ball for 10 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryScrollFireMagmaBall", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Nuh-uh. You need gold to buy from this shop."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 124 (void) //Boltmag | Potion of Stoneskin
{
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() != 5 && CheckInventory("InventoryGoldCoin") >= 25)
	{
		TakeInventory("InventoryGoldCoin", 25);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Boltmag for 25 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Ammo/BoltMagPick", CHAN_AUTO, 0.5);
		SpawnSpotForced("Boltmag", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && GameSkill() == 5 && CheckInventory("InventoryGoldCoin") >= 35)
	{
		TakeInventory("InventoryGoldCoin", 35);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Potion of Stoneskin for 35 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryPotionOfStoneskin", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Sorry babe, looks like you can't afford it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 125 (void) //Light Armor Crystal
{
	If(GetActorProperty(635, APROP_Health) > 0 && CheckInventory("InventoryGoldCoin") >= 75)
	{
		TakeInventory("InventoryGoldCoin", 75);
		ACS_Execute(117, 0, 0, 0, 0);
		Hudmessage(s:"(You buy a Light Armor Amulet for 75 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickBase", CHAN_AUTO, 0.5);
		SpawnSpotForced("LightArmorCrystal", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0)
	{
		PlaySound(635, "Fixer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    The prices are on the tablet, babe. You know how to count, right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}
Script 126 (void) //Bag of Holding
{
	If(GetActorProperty(635, APROP_Health) > 0 && CheckInventory("InventoryGoldCoin") >= 350 && IsTIDUsed(528))
	{
		TakeInventory("InventoryGoldCoin", 350);
		Thing_Remove(528);
		PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Now that's an artifact worth having. I even packed it with a little ammo, just for you, babe."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 2.5);
		Hudmessage(s:"(You buy a Bag of Holding for 350 gold)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(0, "Inventory/PickCoin", CHAN_AUTO);
		PlaySound(526, "Inventory/PickBase", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryBagOfHolding", 526, 0, 0);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && IsTIDUsed(528))
	{
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Sorry babe, I won't lower the bag's price. You know well it's worth every coin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 2.5);
		Delay(6*35);
	}
}

//Card Players Gold
Script 143 (void)
{
	If(GetSectorFloorZ(542, 0, 0) == 103.0 && GetActorZ(0) < 263.0 && IsTIDUsed(592) == 0)
	{
	  SetLineSpecial(591, 0, 0, 0, 0, 0, 0);
	  If(GetActorProperty(649, APROP_Health) > 0)
	  {
	    PlaySound(649, "BearWarrior/Ha", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    Hey, you can't just confiscate our gold like that!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
		Delay(5*35);
	  }
	  If(GetActorProperty(648, APROP_Health) > 0)
	  {
	    PlaySound(648, "Reaver/Huh", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    Yes she can, dumbass! Errm... are we all good, sarge? No need for Grund to know about this, right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 2.5);
	  }
	}
}

//Grund's Warg
int dial635 = 6;
int spec146 = 0;
Script 146 (void)
{
	If((CheckInventory("InventorySleepingPotion") > 0 || CheckInventory("InventoryDeadlyPoison") > 0) && CheckInventory("InventoryHogLiver") == 0)
	{
		Print(s:"You don't have any proper food to mix the substance with.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
	else
	If(CheckInventory("InventorySleepingPotion") > 0 && CheckInventory("InventoryHogLiver") > 0)
	{
		spec146b += 1;
		SetLineSpecial(597, 0, 0, 0, 0, 0, 0);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(12);

		TakeInventory("InventorySleepingPotion", 1);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Delay(16);
		TakeInventory("InventoryHogLiver", 1);
		SpawnSpotForced("GoreLiver", 529, 657, 0);
		SetActorProperty(657, APROP_ScaleX, 1.6);
		SetActorProperty(657, APROP_ScaleY, 1.6);

		Delay(16);
		Hudmessage(s:"Warg:    *Sniffs the bowl*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 1.5, 0.2, 3.5);
		Delay(35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(5*35);

		SpawnSpotForced("BloodJutVerticalFloor", 529, 636, 0);
	    dial635 = 6;
		Thing_Remove(657);
		Thing_Remove(656);
		SpawnSpotForced("NPCGrundWarg", 598, 656, 192);

		FadeTo(0, 0, 0, 0.0, 3.0);

		SetLineSpecial(596, ACS_Execute, 144, 0, 0, 0, 0);
		SetLineSpecial(599, ACS_Execute, 147, 0, 0, 0, 0);
		Line_SetBlocking(597, 0, BLOCKF_PLAYERS);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("InventoryDeadlyPoison") > 0 && CheckInventory("InventoryHogLiver") > 0)
	{
		SetLineSpecial(597, 0, 0, 0, 0, 0, 0);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(12);
		TakeInventory("InventoryDeadlyPoison", 1);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Delay(16);
		TakeInventory("InventoryHogLiver", 1);
		SpawnSpotForced("GoreLiver", 529, 657, 0);
		SetActorProperty(657, APROP_ScaleX, 1.6);
		SetActorProperty(657, APROP_ScaleY, 1.6);

		Delay(16);
		Hudmessage(s:"Warg:    *Sniffs the bowl*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 1.5, 0.2, 3.5);
		Delay(35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(5*35);

		SpawnSpotForced("BloodJutVerticalFloor", 529, 636, 0);
	    dial635 = 6;
		Thing_Remove(657);
		PlaySound(656, "Cerberus/Death", CHAN_AUTO);
		SetActorFlag(656, "INVULNERABLE", 0);
		SetActorFlag(656, "NODAMAGE", 0);
		SetActorFlag(656, "BUDDHA", 0);
		Thing_Destroy(656);
		GiveInventory("ScriptBadKarma", 1);
		GiveInventory("ScriptHasKilledGrundsWarg", 1);

		FadeTo(0, 0, 0, 0.0, 3.0);

		SetLineSpecial(596, ACS_Execute, 144, 0, 0, 0, 0);
		Line_SetBlocking(597, 0, BLOCKF_PLAYERS);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	{
		Hudmessage(s:"Warg:    *Growls menacingly*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 2.0, 0.2, 1.0);
		PlaySound(656, "Cerberus/Active", CHAN_AUTO);

		If(spec146 == 0 && CheckInventory("QuestMap20BluePrimarch") == 2)
		{
			spec146 += 1;
			dial655 = 4;
			Delay(105);
			PlaySound(655, "Murguth/Unf", CHAN_AUTO);
			Hudmessage(s:"Minotaur Axeman:    I hear the warg isn't pleased with your presence. You should get Grund's permission to go there."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKGRAY, 1.5, 0.90, 7.5, 0.2, 1.5);
		}

		If(CheckInventory("InventoryHogLiver") > 0)
	    {
		    Print(s:"You don't have any substance to spike the liver with.");
	        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		}
		Delay(5*35);
	}
}
Script 147 (void)
{
	Hudmessage(s:"(You pet the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 2.5, 0.2, 0.5);
	Delay(3*35);
}

//Bendi's Barrel
//int spec683 = 0;
Script 683 (void)
{
  If(CheckInventory("InventoryManaPotion") > 0 && GetSectorCeilingZ(684, 0, 0) < 272.0)
  {
    SetWeapon("Fists");
	TakeInventory("InventoryManaPotion", 1);
	PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

	Delay(12);
	PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
	Ceiling_RaiseByValue(684, 8, 8);
	TagWait(684);
	Delay(12);
	SpawnSpotForced("IDEmptyPotionGlass", 800, 0, 0);
	PlaySound(800, "Terrain/Dirt", CHAN_AUTO);
	Delay(16);
	PlaySound(684, "EarthMother/Hmm", CHAN_AUTO);
	Hudmessage(s:"E. M. Bendi:    That's very kind of you, Zan. It may not be much, but everything counts!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 1.5);
  }
  else
  If(CheckInventory("InventoryManaPotion") > 0)
  {
    SetWeapon("Fists");
	TakeInventory("InventoryManaPotion", 1);
	PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	Delay(12);
	SpawnSpotForced("IDManaPotion", 800, 0, 0);
	PlaySound(800, "Terrain/Dirt", CHAN_AUTO);
	Delay(16);
	PlaySound(684, "EarthMother/Hmm", CHAN_AUTO);
	Hudmessage(s:"E. M. Bendi:    That's very kind of you, Zan. A small splash of mana is fairer than a big one from a cursed chalice!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 1.5);
  }
  else
  If(CheckInventory("InventoryCursedChaliceMana") > 0 && spec683 == 0 && GetSectorCeilingZ(684, 0, 0) < 279.0)
  {
	//SetLineSpecial(685, 0, 0, 0, 0, 0, 0);
	SetWeapon("Fists");
	PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	Delay(12);
	PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
	Ceiling_MoveToValue(684, 8, 279, 0);
	TagWait(684);
	ACS_Execute(684, 0, 0, 0, 0);
  }
  else
  If(GetSectorCeilingZ(648, 0, 0) == 258.0)
  {
	Print(s:"The barrel has a few drops of mana at the bottom.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(50);
  }
}

//FOB Assault
Script 707 (void)
{
	SetLineSpecial(707, 0, 0, 0, 0, 0, 0);

    SpawnSpotForced("Cerberus", 709, 710, 192);
	SpawnSpotForced("Hellblaze", 711, 710, 192);
	SpawnSpotForced("Pitlord", 712, 710, 192);
	SpawnSpotForced("ForgeElemental", 713, 718, 0);
	//SpawnSpotForced("Hellion", 714, 710, 192);
	SetActorFlag(718, "NOBLOCKMONST", 1);
	ThrustThingZ(718, 20, 0, 0);

	Delay(35);
	PlaySound(712, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Thing_SetGoal(710, 715, 0, 0);
	NoiseAlert(0, 0);

	Delay(5*35);

    If(GetActorProperty(700, APROP_Health) > 0 && CheckProximity(0, "IDFixerStationary", 1280.0, 1))
    {
	  PlaySound(700, "Fixer/Huh", CHAN_AUTO);
      Hudmessage(s:"Fixer:    Uhh... the demons are attacking! Looks like a lot are coming in!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 1.5);
	  Delay(4*35);
	}
	If(GetActorProperty(700, APROP_Health) > 0 && IsTIDUsed(706))
	{
	  PlaySound(700, "Inventory/PickBase", CHAN_AUTO);
	  Thing_Remove(706);
	  Delay(16);
	  SpawnSpotForced("IDSentry", 708, 0, 0);
	  PlaySound(708, "Sentry/Sight1", CHAN_AUTO);
	}
	Delay(3*35);
	If(GetActorProperty(701, APROP_Health) > 0 && CheckProximity(0, "IDBearWarriorStationary", 1280.0, 1))
    {
	  PlaySound(701, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Stand your ground! The Bonebreaker is with us! For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 2.5);
	}
}

//Bury the Dead
Script 718 (void)
{
	If(IsTIDUsed(700) && GetActorProperty(700, APROP_Health) <= 0)
	{
		TeleportOther(700, 720, 0);
	}
	If(IsTIDUsed(701) && GetActorProperty(701, APROP_Health) <= 0)
	{
		TeleportOther(701, 721, 0);
	}
	If(IsTIDUsed(702) && GetActorProperty(702, APROP_Health) <= 0)
	{
		TeleportOther(702, 722, 0);
	}
	If(CheckInventory("QuestMap20RedPrimarch") == 1)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
		TeleportOther(640, 725, 0);
	  }
	  If(IsTIDUsed(728))
	  {
		Thing_Remove(728);
	    SpawnSpotForced("DeadIDBear", 726, 0, 0);
	  }
	  If(GetActorProperty(642, APROP_Health) <= 0)
	  {
		TeleportOther(642, 727, 0);
	  }
	}
	//If(CheckInventory("QuestMap18GetPrimarchsTaint") == 1)
	//{
		//Thing_Remove(643);
	//}
}











//DIALOGUE


//Murguth Dialogue
//int dial629 = 8;
int dial629b = 4;
Script 629 (void)
{
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial629b % 4 == 0)
	  {
	    PlaySound(629, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Min. Lord Murguth:    The beast is cornered and bleeding. Are you prepared to deal the killing blow, warrior?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial629b % 4 == 1)
	  {
		Hudmessage(s:"Min. Lord Murguth:    If the primarchs have failed to sway you, so will the Baron. You are ready to face him."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial629b % 4 == 2)
	  {
		PlaySound(629, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Min. Lord Murguth:    You butchered the armies of chaos, leaving a blazing path behind. You are worthy!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial629b % 4 == 3)
	  {
		PlaySound(629, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Min. Lord Murguth:    Why do you delay the inevitable? Strike now, while your flame burns the brightest!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial629 % 8 == 0 && CheckInventory("QuestMap18GetPrimarchsTaint") == 1)
	{
	  PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	  Hudmessage(s:"Min. Lord Murguth:    You gained all of the five demonic taints. Only a strong heart can bear such wicked weight."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	  If(dial629 % 8 == 0 && GetSectorCeilingZ(358, 0, 0) == 295.0)
	  {
	    PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	    Hudmessage(s:"Min. Lord Murguth:    Warlord Grund has a map of the primarch shrines, but her camp has been cut off from us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629 += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial629 % 8 == 0)
	  {
	    PlaySound(629, "Murguth/Growl", CHAN_AUTO);
	    Hudmessage(s:"Min. Lord Murguth:    How goes your quest, warrior? Have the primarchs been reasonable with their demands?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
        dial629 += 1;
	    Delay(2*35);
	  }
	  else
	If(dial629 % 8 == 1 && CheckInventory("QuestMap18GetPrimarchsTaint") == 1)
	{
	  PlaySound(629, "Murguth/Ha", CHAN_AUTO);
	  Hudmessage(s:"Min. Lord Murguth:    Your heart may be ready, but what about your steel? The Baron still has formidable power."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	  If(dial629 % 8 == 1 && GetSectorCeilingZ(358, 0, 0) == 295.0)
	  {
	  PlaySound(629, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    A foul earthquake has collapsed the tunnel which connects our camps, isolating us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial629 % 8 == 1)
	  {
	  PlaySound(629, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    Some of us could hear whispers coming from the citadel. The Baron calls for our blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	  }
	  else
    If(dial629 % 8 == 2)
	{
	  PlaySound(629, "Murguth/Unf", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    This island lies at the very heart of Hell. A place worthy of being home to the demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	If(dial629 % 8 == 3)
	{
      Hudmessage(s:"Min. Lord Murguth:    The sea of fire fills the deepest layer of the Underworld. The lowest we have ever been."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	If(dial629 % 8 == 4)
	{
	  PlaySound(629, "Murguth/Growl", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    When we crossed that hellish bridge, we left the world we knew behind. Perhaps forever."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	If(dial629 % 8 == 5)
	{
      Hudmessage(s:"Min. Lord Murguth:    Demons thrive in this fiery archipelago. The heat is challenging even for a pyromancer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	If(dial629 % 8 == 6)
	{
	  PlaySound(629, "Murguth/Unf", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    No army can invade this place. We should have known this when we first set off to war."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
	else
	If(dial629 % 8 == 7)
	{
	  PlaySound(629, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Min. Lord Murguth:    I read tales of ancient human-built temples here. Reminders of the Elemental Gods' power."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.90, 7.5, 0.2, 0.5);
      dial629 += 1;
	  Delay(2*35);
	}
}

//Shady Fixer Dialogue
//int dial635 = 6;
int spec635 = 0;
int spec635b = 0;
Script 635 (void)
{
	If(GetActorProperty(635, APROP_Health) > 0 && spec116b == 2 && CheckInventory("QuestMap20BluePrimarch") == 2 && spec146b == 0)
	{
		spec116b += 1;
		spec635b += 1;
		dial635 = 6;
		PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Here. Mix it with hog liver, Grund's warg loves it. And remember - you didn't get this from me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 2.5);
		Delay(1*35);
		PlaySound(526, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("InventoryDeadlyPoison", 526, 815, 0);
		Delay(6*35);
    }
	else
	If(CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("InventoryCrimsonSaltRock") > 0 && spec116d > 0)
	{
		If(IsTIDUsed(795) == 0 && IsTIDUsed(796) == 0)
		{
		  TakeInventory("InventoryCrimsonSaltRock", 1);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		  SpawnSpotForced("CaveCrimsonSaltRock", 793, 795, 0);
		  Delay(35);
		  PlaySound(635, "Reaver/Hm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    That's a big 'ol rock of salt. Here's fifty for it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 1.5);
		  Delay(2*35);
		  SpawnSpotForced("InventoryGoldCoin50", 526, 0, 0);
		  PlaySound(526, "inventory/PickCoin", CHAN_AUTO, 0.6);
		}
		else
		If(IsTIDUsed(796) == 0)
		{
		  TakeInventory("InventoryCrimsonSaltRock", 1);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		  SpawnSpotForced("CaveCrimsonSaltRock", 794, 796, 0);
		  Delay(35);
		  PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    I'll only give you fourty for this one. Take it or leave it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 1.5);
		  Delay(2*35);
		  SpawnSpotForced("InventoryGoldCoin25", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin10", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin1", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin1", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin1", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin1", 526, 0, 0);
		  SpawnSpotForced("InventoryGoldCoin1", 526, 0, 0);
		  PlaySound(526, "inventory/PickCoin", CHAN_AUTO, 0.6);
		}
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 0)
	{
	  If(IsTIDUsed(636) == 0 && CheckInventory("InventoryDeadlyPoison") > 0)
	  {
	  PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Don't wanna poison the mutt? Unless you have another way to put it to sleep, poison's all I have."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	  }
	  else
	  If(IsTIDUsed(636) && CheckInventory("QuestMap20BluePrimarch") == 2 && spec635b > 0)
	  {
	  PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Found what you were looking for? You owe me. And remember, I haven't offered you any poison. Or advice."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	    If(IsTIDUsed(815))
	    {
		  PlaySound(526, "Inventory/PickShort", CHAN_AUTO);
		  Thing_Remove(815);
	    }
	  }
	  else
	  {
      PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I can't believe how much gold we left behind in that primarch's vault. It's haunting my dreams."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	  }
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 1)
	{
      PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I've been hard at work... recovering the supplies lost by our sisters during the first campaign."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 2)
	{
	  Hudmessage(s:"Shady Fixer:    Demons are too dumb to invent stuff. That's why they're so eager to get their claws on our gear."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	}
	else
    If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 3)
	{
      PlaySound(635, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Making a lil' profit won't hurt anyone. This gear no longer figures on any inventory list, anyway."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 4)
	{
	  Hudmessage(s:"Shady Fixer:    Cultists are so oblivious to their belongings... I feel like I'm stealing from children."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(635, APROP_Health) > 0 && dial635 % 6 == 5)
	{
      PlaySound(635, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Sneaking into Yzbeth's palace wasn't hard. Convincing the primarch to show me his vault was..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial635 += 1;
	  Delay(2*35);
	}
}

//Witch Brewer Dialogue
int spec114 = 0;
Script 114 (void)
{
	If(CheckInventory("QuestMap20BluePrimarch") == 1 && spec114 == 1)
	{
	  spec114 += 1;
	  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Brewer:    Hey... those bags you're carrying... are they arcane salts?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
	  Delay(2*35);
	}
	else
	If(CheckInventory("ScriptIsADipshit") >= 2 && spec114 == 0)
	{
	  spec114 += 1;
	  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Brewer:    Oh, hey, it's little miss dipshit. I'll move these fragile potions out of the way if you don't mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 2.5);
	  PlaySound(530, "Inventory/PickShort", CHAN_AUTO, 0.7);
	  SetActorFlag(530, "INVISIBLE", 1);
	  SetActorFlag(530, "COUNTITEM", 0);
	  SetActorFlag(530, "NOTONAUTOMAP", 1);
	  SetActorFlag(530, "NOINTERACTION", 1);
	  Delay(2*35);
	}
	else
	If(CheckInventory("ScriptIsADipshit") >= 1 && spec114 == 0)
	{
	  spec114 += 1;
	  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Brewer:    Ugh, you again. Lucky me there isn't much left for you to break."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
	  Delay(2*35);
	}
	else
	If(spec114 == 0)
	{
	  spec114 += 1;
	  PlaySound(637, "Reaver/Hm", CHAN_AUTO);
      Hudmessage(s:"Witch Brewer:    Still alive? There's a few healing pots left if you need, but don't expect any more to come."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(2*35);
	}
}
//int dial637 = 0;
int spec637 = 0;
Script 637 (void)
{
    If(CheckInventory("InventoryArcaneSalts") > 0 && CheckInventory("QuestMap20BluePrimarch") == 1 && spec114 == 2)
	{
		SetWeapon("Fists");
		Delay(12);
		TakeInventory("InventoryArcaneSalts", 1);
		SpawnSpotForced("CultArcaneSaltBags", 531, 0, 0);
		PlaySound(531, "Inventory/PickBase", CHAN_AUTO, 0.5);

		Delay(24);

		PlaySound(637, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Witch Brewer:    ...oh... for me?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.5, 0.2, 0.5);
	    Delay(3*35);
		If(CheckInventory("ScriptIsADipshit") >= 2)
	    {
		  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Witch Brewer:    ...fine... I guess I'll accept your apology. These salts will ease my work a bit."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
	      TakeInventory("ScriptIsADipshit", 2);
		  Delay(5*35);
		  If(GameSkill() != 5)
		  {
			Hudmessage(s:"Here's some ammo for the Pox in return. Just watch where you're shooting it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		    PlaySound(532, "Ammo/PotionBoxPick", CHAN_AUTO, 0.8);
		    SpawnSpotForced("PotionBoxAcid", 532, 0, 0);
		  }
		  else
		  {
			Hudmessage(s:"Here's a Potion of Haste... I would've brewed something better if my gear hadn't been shattered."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		    PlaySound(534, "Inventory/PickBase", CHAN_AUTO, 0.8);
		    SpawnSpotForced("InventoryPotionOfHaste", 534, 0, 0);
		  }
		  Delay(2*35);
		  PlaySound(530, "Inventory/PickShort", CHAN_AUTO, 0.7);
		  SetActorFlag(530, "INVISIBLE", 0);
		  SetActorFlag(530, "COUNTITEM", 1);
		  SetActorFlag(530, "NOTONAUTOMAP", 0);
		  SetActorFlag(530, "NOINTERACTION", 0);
		}
		else
		If(CheckInventory("ScriptIsADipshit") == 1)
	    {
		  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Witch Brewer:    ...uhh... well. Apologies accepted. These salts will make my work a lot easier..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
	      TakeInventory("ScriptIsADipshit", 1);
		  Delay(5*35);
		  If(GameSkill() != 5)
		  {
		    Hudmessage(s:"Here something in return, I had this spare Pox ammo laying around. You might want it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		    PlaySound(532, "Ammo/PotionBoxPick", CHAN_AUTO, 0.7);
		    PlaySound(533, "Ammo/PotionBoxPick", CHAN_AUTO, 0.7);
		    SpawnSpotForced("PotionBoxAcid", 532, 0, 0);
		    SpawnSpotForced("PotionBoxAcid", 533, 0, 0);
		  }
		  else
		  {
			Hudmessage(s:"Here's a Potion of Stoneskin... it's not much, but I had to use the spare reagents to cover up for the mana."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		    PlaySound(534, "Inventory/PickBase", CHAN_AUTO, 0.8);
		    SpawnSpotForced("InventoryPotionOfStoneskin", 534, 0, 0);
		  }
		  Delay(2*35);
		}
		else
		{
		  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Witch Brewer:    ...hey, thanks a bunch! These salts will help my brews catalyze much faster."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		  Delay(5*35);
		  If(GameSkill() != 5)
		  {
		    Hudmessage(s:"Here's a little something in return, I had this spare Pox ammo laying around. Give 'em hell! Heh."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		    PlaySound(532, "Ammo/PotionBoxPick", CHAN_AUTO, 0.6);
		    PlaySound(533, "Ammo/PotionBoxPick", CHAN_AUTO, 0.6);
		    PlaySound(534, "Ammo/PotionBoxPick", CHAN_AUTO, 0.6);
		    SpawnSpotForced("PotionBoxAcid", 532, 0, 0);
		    SpawnSpotForced("PotionBoxAcid", 533, 0, 0);
		    SpawnSpotForced("PotionBoxToxic", 534, 0, 0);
		  }
		  else
		  {
			Hudmessage(s:"Here's a Potion of Might... this'll turn you into a fearsome killing machine!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		    PlaySound(534, "Inventory/PickBase", CHAN_AUTO, 0.8);
		    SpawnSpotForced("InventoryPotionOfMight", 534, 0, 0);
		  }
		  Delay(2*35);
		}
	}
	else
	If(CheckInventory("ScriptIsADipshit") >= 2)
	{
		PlaySound(637, "EarthMother/Rage1", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    Quit buggering me! Can't you see how busy I am?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		Delay(8*35);
	}
	else
	If(CheckInventory("ScriptIsADipshit") == 1)
	{
		PlaySound(637, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    Can't you see I'm busy? Let me be..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(8*35);
	}
	else
	If(spec637 == 0 && CheckInventory("InventoryBagOfYeast") > 0)
	{
	  PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Brewer:    Found a yeast bag? Uhh, I don't really need it, but I'm sure Ingrim could put it to good use."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      spec637 += 1;
	  Delay(2*35);
	}
	else
	If(dial637 % 6 == 0)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(637, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Witch Brewer:    Off to face the Baron all by yourself? I'm suddenly not so mad I have to stay here and stir."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial637 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(637, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Witch Brewer:    So tired... I don't know for how long I've been awake since we can't even measure time here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial637 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial637 % 6 == 1)
	{
    Hudmessage(s:"Witch Brewer:    My arms are stiff from all the stirring... at least now I can beat the Bears at armwrestling."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial637 += 1;
	Delay(2*35);
	}
	else
	If(dial637 % 6 == 2)
	{
	PlaySound(637, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    So... hot... we'll start turning into raisins when the water runs out. Unless demons kill us first."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial637 += 1;
	Delay(2*35);
	}
	else
	If(dial637 % 6 == 3)
	{
	PlaySound(637, "Reaver/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    Of course Zura didn't want to board the ship... she always has a reason to hang behind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial637 += 1;
	Delay(2*35);
	}
	else
	If(dial637 % 6 == 4)
	{
    Hudmessage(s:"Witch Brewer:    I could've stayed in the port and help my chieftain collect demon guns for research, but noo..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial637 += 1;
	Delay(2*35);
	}
	else
	If(dial637 % 6 == 5)
	{
	PlaySound(405, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    If we win this war, I better get my own alchemy shop in Valc. And an apprentice to torment."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial637 += 1;
	Delay(2*35);
	}
}

//QRF Witch Dialogue
//int dial646 = 4;
Script 646 (void)
{
  If(GetActorProperty(646, APROP_Health) > 0)
  {
	If(spec49 == 1 && (ThingCount(T_NONE, 555) > 3 || ThingCount(T_NONE, 326) > 3))
	{
	  PlaySound(646, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Yeah! Eat acid you freaks!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.5, 0.2, 0.5);
	  Delay(8*35);
	}
	else
	If(dial646 % 4 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(646, "Witch/Ha", CHAN_AUTO);
	    Hudmessage(s:"Witch:    Cultists are so pathetic! They can't match our weapons so they resort to surprise attacks."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  If(GetSectorFloorZ(542, 0, 0) == 103.0)
	  {
	    PlaySound(646, "Witch/Hm", CHAN_AUTO);
	    Hudmessage(s:"Witch:    Still holding up, Halfblood? If you need healing, there should be a few spare potions around."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  {
	    PlaySound(646, "Witch/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Witch:    That cannon behind us looks quaint... you're a siege engineer, aren't you? Can you use it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  dial646 += 1;
	  Delay(2*35);
	}
	else
	If(dial646 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    I've seen some crazy guns back in the port. Demons may be slow, but they adapt to war quickly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial646 += 1;
	  Delay(2*35);
	}
	else
	If(dial646 % 4 == 2)
	{
	  PlaySound(646, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    I saw a demon shooting a Pox! He'd load potions from the end of the barrel and... boom! What an idiot!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial646 += 1;
	  Delay(2*35);
	}
	else
	If(dial646 % 4 == 3)
	{
	  PlaySound(646, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    We never thought we'd find our own supplies among the demons. They are quite the hoarders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial646 += 1;
	  Delay(2*35);
	}
  }
}

//QRF Bear Warrior 1 Dialogue
//int dial647 = 4;
Script 647 (void)
{
  If(GetActorProperty(647, APROP_Health) > 0)
  {
	If(spec49 == 1 && (ThingCount(T_NONE, 555) > 3 || ThingCount(T_NONE, 326) > 3))
	{
	  PlaySound(647, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
      Delay(8*35);
	}
	else
	If(dial647 % 4 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(647, "BearWarrior/Huh", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    The cultists are getting desperate! All they can do is throw meat in the grinder."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  If(GetSectorFloorZ(542, 0, 0) == 103.0)
	  {
	  PlaySound(647, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    You're earning your scars very quickly, Bonebreaker. Share some tales with us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  {
	  PlaySound(647, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I'm ready to stomp some cultist scum! Try not to kill them all by yourself, eh?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  dial647 += 1;
	  Delay(2*35);
	}
	else
	If(dial647 % 4 == 1)
	{
	  PlaySound(647, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I can't believe we got so far. No army has ever dreamed of reaching the Core of Hell."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial647 += 1;
	  Delay(2*35);
	}
	else
	If(dial647 % 4 == 2)
	{
	  PlaySound(647, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We truly are the strongest clan of orcs! We put all of the wild orc tribes to shame!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial647 += 1;
	  Delay(2*35);
	}
	else
	If(dial647 % 4 == 3)
	{
	  PlaySound(647, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Imagine what glory awaits us once we slay the Baron! The bards will praise our name!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial647 += 1;
	  Delay(2*35);
	}
  }
}

//QRF Reaver Dialogue
//int dial648 = 4;
Script 648 (void)
{
  If(GetActorProperty(648, APROP_Health) > 0 && GetActorZ(0) < 263.0)
  {
	If(spec49 == 1 && (ThingCount(T_NONE, 555) > 3 || ThingCount(T_NONE, 326) > 3))
	{
	  PlaySound(648, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Mow them down!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.5, 0.2, 0.5);
	  Delay(8*35);
	}
	else
	If(dial648 % 4 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(648, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    If we keep getting attacked like this, we'll be dead before we reach the Baron's citadel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  If(GetSectorFloorZ(542, 0, 0) == 103.0)
	  {
	    PlaySound(648, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    Taking a break? I feel you. Just don't get caught off guard by Grund, she's on the edge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  {
	    PlaySound(648, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    I hope the Earth Mothers' protective ward reaches this far... demons might jump us anytime."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  dial648 += 1;
	  Delay(2*35);
	}
	else
	If(dial648 % 4 == 1)
	{
	  PlaySound(648, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Is it true that Tiati got possessed by Nithriel? Grund wouldn't let us get near her cage."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial648 += 1;
	  Delay(2*35);
	}
	else
	If(dial648 % 4 == 2)
	{
	  Hudmessage(s:"Reaver:    It's crazy how these mind magic freaks can just work you like a puppet. Poor Tiati..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial648 += 1;
	  Delay(2*35);
	}
	else
	If(dial648 % 4 == 3)
	{
	  PlaySound(648, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    We killed a Psi Demon back in the port... or so I thought. When I checked the body, I heard whispers."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial648 += 1;
	  Delay(2*35);
	}
  }
}

//QRF Bear Warrior 2 Dialogue
//int dial649 = 4;
Script 649 (void)
{
  If(GetActorProperty(649, APROP_Health) > 0 && GetActorZ(0) < 263.0)
  {
	If(spec49 == 1 && (ThingCount(T_NONE, 555) > 3 || ThingCount(T_NONE, 326) > 3))
	{
	  PlaySound(649, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    *Growls*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 1.5, 0.2, 0.5);
      Delay(8*35);
	}
	else
	If(dial649 % 4 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(649, "BearWarrior/Rage1", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    Wretched cultists! They're coming out of the white ashes, I'm telling you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  If(GetSectorFloorZ(542, 0, 0) == 103.0)
	  {
	    PlaySound(649, "BearWarrior/Ha", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    Enjoying Hell, sarge? This place is a plague on the bottom of the Underworld."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  {
	    PlaySound(649, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    Keep an eye on those piles of white ash! Don't breathe in too hard around 'em."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  dial649 += 1;
	  Delay(2*35);
	}
	else
	If(dial649 % 4 == 1)
	{
	  PlaySound(649, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    My throat is dry already. How do the cultist bastards survive without water here?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial649 += 1;
	  Delay(2*35);
	}
	else
	If(dial649 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    I thought Hell was only a myth... looks like it's real. And just as bad as I imagined."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial649 += 1;
	  Delay(2*35);
	}
	else
	If(dial649 % 4 == 3)
	{
	  PlaySound(649, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I can bear the fire and brimstone... but those white ashes... I swear they are cursed!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial649 += 1;
	  Delay(2*35);
	}
  }
}

//Captain Dura Dialogue
//int dial644 = 6;
Script 644 (void)
{
	If(dial644 % 6 == 0)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(644, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    Why haven't you crossed that portal yet? You can do this, warrior. Don't hesitate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  }
	  else
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(644, "BearWarrior/Rage2", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    Our scouts have failed us... this is what happens when we fail to obey orders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  If(GetSectorFloorZ(542, 0, 0) == 103.0)
	  {
	    PlaySound(644, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    You're lucky to be the only reliable halfblood around. You really pissed Grund off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  else
	  {
	    PlaySound(644, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    I see more and more of us are giving in to bloodlust and overstepping our orders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      }
	  dial644 += 1;
	  Delay(2*35);
	}
	else
	If(dial644 % 6 == 1)
	{
	  PlaySound(644, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    We are the strongest warriors of the Underworld. That's might, wit and discipline."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial644 += 1;
	  Delay(2*35);
	}
	else
	If(dial644 % 6 == 2)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
		PlaySound(644, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    I wonder where Eraanthe is now. I doubt she'd be willing to team up with you, though."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial644 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(644, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    I know it was the Queen of Wrath who piloted the boat, but you should've waited for us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial644 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial644 % 6 == 3)
	{
	  PlaySound(644, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    The Gods must favor you and Tiati if they save you from certain death even down here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial644 += 1;
	  Delay(2*35);
	}
	else
	If(dial644 % 6 == 4)
	{
	  Hudmessage(s:"Captain Dura:    We crammed everyone on a trading ship and sailed off here. We're few, but we're angry."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial644 += 1;
	  Delay(2*35);
	}
	else
	If(dial644 % 6 == 5)
	{
	  PlaySound(644, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    The future of our world is decided here. I expect you to be at your absolute best now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial644 += 1;
	  Delay(2*35);
	}
}

//Wounded Bear Warrior Dialogue
int dial645 = 4;
int spec645 = 0;
Script 645 (void)
{
  If(GetActorProperty(645, APROP_Health) > 0 && spec645 == 0)
  {
	  spec645 += 1;
	  PlaySound(645, "BearWarrior/Pain", CHAN_AUTO);

	  If(GameSkill() != 5)
	  {
	    Hudmessage(s:"Bear Warrior:    Thank you, Halfblood. Here... take these boltmags, I won't be needing them anymore."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
        Delay(35);
	    SpawnSpotForced("Boltmag", 572, 0, 0);
	  }
	  else
	  {
	    Hudmessage(s:"Bear Warrior:    Thank you, Halfblood. Here... take this amulet... it belonged to my dead squad mate..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
        Delay(35);
	    SpawnSpotForced("InventoryAmuletOfShadows", 572, 0, 0);
	  }

	  PlaySound(572, "Inventory/PickShort", CHAN_AUTO);
	  Delay(2*35);
  }
  else
  If(GetActorProperty(645, APROP_Health) > 0)
  {
	If(dial645 % 4 == 0)
	{
	  PlaySound(645, "BearWarrior/Pain", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I may have survived, but my honor hasn't. Grund will have me whipped after I recover."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial645 += 1;
	  Delay(2*35);
	}
	else
	If(dial645 % 4 == 1)
	{
	  Hudmessage(s:"Bear Warrior:    If you hadn't found me, the demons could have assaulted our camp without any warning!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial645 += 1;
	  Delay(2*35);
	}
	else
	If(dial645 % 4 == 2)
	{
	  PlaySound(645, "BearWarrior/Pain", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I hope you get a better shot at being a hero than I did. Strike the Baron for us all!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial645 += 1;
	  Delay(2*35);
	}
	else
	If(dial645 % 4 == 3)
	{
	  PlaySound(645, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I'll end up scrubbing the bathhouse if we return to Valc. Still, it's better than Hell."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial645 += 1;
	  Delay(2*35);
	}
  }
}

//East Gate Bear Warrior
int dial640 = 4;
Script 640 (void)
{
  If(GetActorProperty(640, APROP_Health) > 0)
  {
	If(dial640 % 4 == 0)
	{
	  PlaySound(640, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Hail, Bonebreaker! I bet Hell is quaking under your boots already!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial640 += 1;
	  Delay(2*35);
	}
	else
	If(dial640 % 4 == 1)
	{
	  PlaySound(640, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Earth strengthen your arm! Strike the heart of the Baron and crown our victory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial640 += 1;
	  Delay(2*35);
	}
	else
	If(dial640 % 4 == 2)
	{
	  PlaySound(640, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We may die of thirst, but our axes won't! Let's keep them drenched in blood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial640 += 1;
	  Delay(2*35);
	}
	else
	If(dial640 % 4 == 3)
	{
	  PlaySound(640, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We've fought so long and hard! Once we conquer the demons, everyone will honor our name!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial640 += 1;
	  Delay(2*35);
	}
  }
}

//East Palisade Bear Warrior
int dial641 = 4;
Script 641 (void)
{
  If(GetActorProperty(641, APROP_Health) > 0)
  {
	If(dial641 % 4 == 0)
	{
	  PlaySound(641, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Earth's might, Bonebreaker! Give the demons and their human thralls no quarter!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial641 += 1;
	  Delay(2*35);
	}
	else
	If(dial641 % 4 == 1)
	{
	  PlaySound(641, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Whadaya think of the effigies? We should prop some impaled cultists around Valc too!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial641 += 1;
	  Delay(2*35);
	}
	else
	If(dial641 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    The cultists barely opposed our landing. We crushed them like bugs and took the camp."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial641 += 1;
	  Delay(2*35);
	}
	else
	If(dial641 % 4 == 3)
	{
	  PlaySound(641, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    These defenses are pretty worn out. The inhabitants of Hell must infight quite a lot."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial641 += 1;
	  Delay(2*35);
	}
  }
}

//East Palisade Witch
int dial642 = 4;
Script 642 (void)
{
  If(GetActorProperty(642, APROP_Health) > 0)
  {
	If(dial642 % 4 == 0)
	{
	  PlaySound(642, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Zura went crazy when she realised what Tiati had done. After Lith's precedent, I can relate to her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial642 += 1;
	  Delay(2*35);
	}
	else
	If(dial642 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    Killing the Baron will resolve the demonic threat, but the corruption won't be going anywhere..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial642 += 1;
	  Delay(2*35);
	}
	else
	If(dial642 % 4 == 2)
	{
	  PlaySound(642, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    The Seed could help us understand how the corruption came to be... I hope it wasn't lost in fire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial642 += 1;
	  Delay(2*35);
	}
	else
	If(dial642 % 4 == 3)
	{
	  PlaySound(642, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Our ship only had room for a few dozen troops. Grund picked us because we're the Division's finest."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial642 += 1;
	  Delay(2*35);
	}
  }
}

//Grund Dialogue
int dial650 = 6;
int dial650b = 4;
int dial650c = 4;
int spec650 = 0;
Script 650 (void)
{
  If(GetActorZ(0) < 358.0 && CheckInventory("QuestMap18EnterPortal") > 0)
  {
	If(dial650c % 4 == 0)
	{
	  If(GetActorProperty(656, APROP_Health) > 0)
	  {
	    PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
        Hudmessage(s:"Warlord Grund:    Stop wasting time, sergeant. We won't be able to hold this place much longer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial650c += 1;
	    Delay(2*35);
	  }
	  else
	  {
        PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
        Hudmessage(s:"Warlord Grund:    Why are you still here?! Get your ass in there and get the job done, warrior!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial650c += 1;
	    Delay(2*35);
	  }
    }
	else
	If(dial650c % 4 == 1)
	{
	  If(GetActorProperty(656, APROP_Health) > 0)
	  {
        Hudmessage(s:"Warlord Grund:    You better be prepared. The Baron is bound to have many tricks up his sleeve."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial650c += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
        Hudmessage(s:"Warlord Grund:    Poison won't work against demons, sergeant. Get whatever gear you can and move it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial650c += 1;
	    Delay(2*35);
	  }
    }
	else
	If(dial650c % 4 == 2)
	{
	  PlaySound(650, "BearWarrior/Rage1", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    This is the fight of your life, give it everything you've got!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial650c += 1;
	  Delay(2*35);
    }
	else
	If(dial650c % 4 == 3)
	{
      PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    For the Iron Division! Return to us with victory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial650c += 1;
	  Delay(2*35);
    }
  }
  else
  If(GetActorZ(0) < 358.0 && CheckInventory("QuestMap20BluePrimarch") < 2)
  {
    If(dial650 % 6 == 0)
    {
      PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    Primarchs are the closest thing a demon has to gods. They embody every aspect of evil."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
	else
	If(dial650 % 6 == 1)
    {
      Hudmessage(s:"Warlord Grund:    Nobody knows how the primarchs appeared. They rarely involve themselves with mortals."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
	else
	If(dial650 % 6 == 2)
    {
	  PlaySound(650, "BearWarrior/Huh", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    I don't like this primarch deal, but Lord Murguth insists that you obtain their taint."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
	else
	If(dial650 % 6 == 3)
    {
	  PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    Our tales only mention the requirement of demon blood to reach the Icon's throne..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
	else
	If(dial650 % 6 == 4)
    {
      Hudmessage(s:"Warlord Grund:    Never forget where your heart and honor belong. You are a warrior of the Iron Divison."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
	else
	If(dial650 % 6 == 5)
    {
	  PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    If you really must make deals with the primarchs, at least don't let them corrupt you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650 += 1;
	  Delay(2*35);
    }
  }
  else
  If(GetActorZ(0) < 358.0 && CheckInventory("QuestMap20BluePrimarch") == 2)
  {
	If(spec650 == 0)
	{
	  PlaySound(650, "BearWarrior/Rage2", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    What? One of the primarchs asked you for an Elixir of Life? How did he... absolutely not!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  spec650 += 1;
	  spec116b = 1;
	  Delay(2*35);
	}
	else
	If(dial650b % 4 == 0)
	{
	  PlaySound(650, "BearWarrior/Rage1", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    The primarchs are playing with you! They couldn't have known about the Elixir..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650b += 1;
	  Delay(2*35);
    }
	else
	If(dial650b % 4 == 1)
	{
      PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    Do not insist, sergeant. I made myself clear. There are some lines that we don't cross."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650b += 1;
	  Delay(2*35);
    }
	else
	If(dial650b % 4 == 2)
	{
      Hudmessage(s:"Warlord Grund:    The Elixir of Life is a sacred part of our clan. I will not let it fall into demon hands."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650b += 1;
	  Delay(2*35);
    }
	else
	If(dial650b % 4 == 3)
	{
      PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Warlord Grund:    If you're so curious about the Elixir, ask Breaza. I don't have time for history lessons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial650b += 1;
	  Delay(2*35);
    }
  }
}

//Advisor Dialogue
int dial652 = 6;
int dial652b = 4;
Script 652 (void)
{
  If(GetActorZ(0) < 358.0 && CheckInventory("QuestMap18EnterPortal") > 0)
  {
    If(dial652b % 4 == 0)
    {
      PlaySound(652, "Lancer/Ha", CHAN_AUTO);
      Hudmessage(s:"Advisor:    Make sure the forest is clear. You don't want to get flanked after you pass through the portal."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652b += 1;
	  Delay(2*35);
    }
	else
	If(dial652b % 4 == 1)
    {
      Hudmessage(s:"Advisor:    Make use of our presence here while you can. We won't be able to aid you inside the citadel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652b += 1;
	  Delay(2*35);
    }
	else
	If(dial652b % 4 == 2)
    {
	  PlaySound(652, "Lancer/Heh", CHAN_AUTO);
      Hudmessage(s:"Advisor:    Don't underestimate the Baron. Once you're inside his lair, he has every advantage over you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652b += 1;
	  Delay(2*35);
    }
	else
	If(dial652b % 4 == 3)
    {
	  PlaySound(652, "Lancer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Advisor:    I'm sure Nithriel and the Baron are looking to backstab each other. Try to isolate them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial652b += 1;
	  Delay(2*35);
    }
  }
  else
  If(GetActorZ(0) < 358.0)
  {
    If(dial652 % 6 == 0)
    {
      PlaySound(652, "Lancer/Ha", CHAN_AUTO);
      Hudmessage(s:"Advisor:    We drafted a map of the area from the documents we found. The primarch shrines are marked on it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
	else
	If(dial652 % 6 == 1)
    {
      Hudmessage(s:"Advisor:    We have cleared out the south coast but we don't have enough troops to hold a larger area."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
	else
	If(dial652 % 6 == 2)
    {
	  PlaySound(652, "Lancer/Heh", CHAN_AUTO);
      Hudmessage(s:"Advisor:    The Baron's citadel lies past the northern forest. Most of the attacks seem to come from north."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
	else
	If(dial652 % 6 == 3)
    {
	  PlaySound(652, "Lancer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Advisor:    Mmm, there's a small port to the north west. They could ship in reinforcements from there too..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
	else
	If(dial652 % 6 == 4)
    {
      Hudmessage(s:"Advisor:    The demons have a giant salt mine nearby. Many slaves have met their cruel end there."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
	else
	If(dial652 % 6 == 5)
    {
	  PlaySound(652, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    We believe some of our own who were taken prisoner ended up in the mine. They're long dead now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial652 += 1;
	  Delay(2*35);
    }
  }
}

//Tiati Dialogue
int dial653 = 8;
int dial653b = 4;
int spec653 = 0;
Script 653 (void)
{
  If(GetActorZ(0) < 358.0)
  {
	If(spec653 == 0)
	{
	  SetLineSpecial(594, 0, 0, 0, 0, 0, 0);
	  spec653 += 1;
	  PlaySound(653, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    Zan?... is that you? I... I'm so sorry. I couldn't control myself... thank the Earth you survived!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 2.5);
	  Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial653b % 4 == 0)
	  {
	    PlaySound(653, "Reaver/Hm", CHAN_AUTO);
	    Hudmessage(s:"Tiati:    I wanted to warn you earlier, but you left in a rush. Be careful... I don't like this a single bit."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial653b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial653b % 4 == 1)
	  {
	    PlaySound(653, "Reaver/Huh", CHAN_AUTO);
	    Hudmessage(s:"Tiati:    My connection to Nithriel has flared up. I can feel her at the top of the citadel... she's... evolving?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial653b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial653b % 4 == 2)
	  {
	    Hudmessage(s:"Tiati:    Something changed... it's like the faint dot in the back of my head has burst into a thousand more."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial653b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial653b % 4 == 3)
	  {
		PlaySound(648, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Tiati:    You're walking into a death trap. But no death trap has stopped you so far, right? Good luck, Zan..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial653b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial653 % 8 == 0)
	{
	  PlaySound(653, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    I don't even know what happened... I just felt my mind invaded by Nithriel's whispers... and demands."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 1)
	{
	  PlaySound(653, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    Lith's betrayal makes much more sense to me now... it was so hard to resist. It almost drove me amok!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 2)
	{
	  PlaySound(648, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    Guess I know why Nithriel didn't finish me off back at the Crystal Heart... she needed a new agent."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 3)
	{
	  Hudmessage(s:"Tiati:    When the port assault started, Nithriel made her move... she made me steal that Corrupt Seed and flee."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 4)
	{
	  PlaySound(653, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    She worked me like a puppet! I mustered all my willpower to blow the ship up... it was a desperate act."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 5)
	{
	  Hudmessage(s:"Tiati:    I somehow survived and woke up on the island. I'm so glad you made it! But Nithriel is here too..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 6)
	{
	  PlaySound(653, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    Since I can feel the warlock, I can track her too. This is why Grund spared my life and put me here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
	else
	If(dial653 % 8 == 7)
	{
	  PlaySound(653, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Tiati:    ...Nithriel and the Baron aren't alone. The shadowy figure... it is imprisoned inside the citadel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial653 += 1;
	  Delay(2*35);
	}
  }
}

//Crystal Curator Dialogue
int dial609 = 6;
int dial609b = 4;
Script 609 (void)
{
  If(GetActorProperty(609, APROP_Health) > 0)
  {
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial609b % 4 == 0)
	  {
	    PlaySound(609, "Lancer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Crystal Curator:    I'd love to join you in this final fight, but I must stay here and overlook the ward."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial609b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial609b % 4 == 1)
	  {
	    PlaySound(609, "Lancer/Heh", CHAN_AUTO);
	    Hudmessage(s:"Crystal Curator:    After all we've been through, I know one thing - If someone can kill the Baron, it's you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial609b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial609b % 4 == 2)
	  {
		PlaySound(609, "Lancer/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Crystal Curator:    Retrieve the Crystal Disk at all costs. Victory is pointless if we return to a dying home."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial609b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial609b % 4 == 3)
	  {
	    Hudmessage(s:"Crystal Curator:    Equip yourself well now. You'll have to use your weapons and artifacts to their fullest."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial609b += 1;
	    Delay(2*35);
	  }
	}
	else
    If(dial609 % 6 == 0)
	{
	  PlaySound(609, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    I hope Grund wasn't as harsh with you as she was with me. But she is right. We had orders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
	else
	If(dial609 % 6 == 1)
	{
	  PlaySound(609, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    I should have steadied my desire to recover the Disk... alas, we risked and we failed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
	else
	If(dial609 % 6 == 2)
	{
	  Hudmessage(s:"Crystal Curator:    Our bloodlust is a double-edged blade. If we lose our wits, it turns against us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
	else
	If(dial609 % 6 == 3)
	{
	  PlaySound(609, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    If Nithriel is here, then so is the Disk. We have one last chance to set things right."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
	else
	If(dial609 % 6 == 4)
	{
	  PlaySound(609, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    I can't believe how reckless Tiati was, blowing that ship up. I pray the Disk is intact."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
	else
	If(dial609 % 6 == 5)
	{
	  PlaySound(609, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    The Gods have shielded you from the blast!... your crystal amulet must've helped too."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial609 += 1;
	  Delay(2*35);
	}
  }
}

//Breaza Dialogue
int dial654 = 8;
int dial654b = 8;
int dial654c = 4;
int spec654 = 0;
Script 654 (void)
{
	If(spec654 == 0)
	{
	  spec654 += 1;
	  PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
      Hudmessage(s:"Grand Earth Mother Breaza:    I see my prayers have been answered once again. So relieved to see you, Zan..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial654c % 4 == 0)
	  {
	    PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    Saying our farewells? Don't make this too hard for me, Zan..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
        dial654c += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654c % 4 == 1)
	  {
		PlaySound(654, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    Whatever you do, return from the citadel alive. Don't make me come after you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
        dial654c += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654c % 4 == 2)
	  {
        Hudmessage(s:"Grand E.M. Breaza:    I have no advice left to give. You've been long preparing for this... you know the best."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654c += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654c % 4 == 3)
	  {
		PlaySound(654, "EarthMother/Hmph", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    The warriors are waiting for you... and so does your destiny. Make us proud."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 1.5);
        dial654c += 1;
	    Delay(2*35);
	  }
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 2 && spec116b > 0)
	{
	  If(spec654 == 1)
	  {
	    spec654 += 1;
	    PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    You're looking for an Elixir of Life? Grund has one, but she'd never part with it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 0)
	  {
	    PlaySound(654, "EarthMother/Hmph", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    Over five hundred rotations ago, the Iron Division was born from the Fountain of Life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 1)
	  {
        Hudmessage(s:"Grand E.M. Breaza:    A group of warriors discovered the legendary fountain. The water revived our dying clan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 2)
	  {
		PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    The elixir flows in our very blood now, granting us strength... and life. A very long life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 3)
	  {
		PlaySound(654, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    We must protect the secret of our nature. The elixir is as sacred to us as the Crystal Disk."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 4)
	  {
		PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    The water enlightened our minds. It led us underground, where we discovered the Crystal Heart."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 5)
	  {
        Hudmessage(s:"Grand E.M. Breaza:    Grund speaks true... we can't let the elixir fall into demon hands. It would be dishonorable."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 6)
	  {
		PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    If there is no other way... I won't interfere. But think about it twice before you... take it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial654b % 8 == 7)
	  {
		PlaySound(654, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    We broke the old orcish laws when we drank the water. And for that, we paid the price."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial654b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial654 % 8 == 0)
	{
	  PlaySound(654, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    We're exhausted from having to fly over the fire sea... it was quite a task guiding the ship."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 1)
	{
	  PlaySound(654, "EarthMother/Hm", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    There is no time to rest. We will grow this grove against all odds, until it drains us dead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 2)
	{
      PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    Now I see what Hell is like... if we don't slay the Baron, our home will look just the same."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 3)
	{
      Hudmessage(s:"Grand E.M. Breaza:    Keeping this crystal ward alive is no easy task... if only we had our Sacred Disk back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 4)
	{
	  PlaySound(654, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    I felt something was wrong with Tiati. I tried to keep her close but alas, she slipped off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 5)
	{
	  PlaySound(654, "EarthMother/Hmm", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    We did our best to heal Tiati's mind, but we aren't versed in the schools of self magic."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 6)
	{
      Hudmessage(s:"Grand E.M. Breaza:    Our elemental might is great, but nature has laws. We don't cure madness, nor raise dead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
	else
	If(dial654 % 8 == 7)
	{
	  PlaySound(654, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"Grand E.M. Breaza:    Be careful, Zan. You may be strong, but our foes are close to their source of power here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial654 += 1;
	  Delay(2*35);
	}
}

//Minotaur Axeman Miner Dialogue
//int dial655 = 4;
int spec655 = 0;
Script 655 (void)
{
	If(IsTIDUsed(585) && spec655 == 0)
	{
		PlaySound(585, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    The tunnel leading to Grund's camp has collapsed, you'll have to wait for me to clear it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 1.5);
        spec655 += 1;
	    Delay(4*35);
	}
	else
	If(dial655 % 4 == 0)
	{
	  If(IsTIDUsed(585))
	  {
	    PlaySound(585, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    *Sings* Strike the earth, strike the stone. Strike until the gold's your own!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(655, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    Remember your oaths, warrior. You are here to remove the Baron, not take his place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  If(spec146 > 0)
	  {
	    PlaySound(655, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    We are all doing our duty. Grund's warg has shown a temper worthy of a true warrior."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(655, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    It took me a while to clear the tunnel. We should have brought more pickaxes with us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial655 % 4 == 1)
	{
	  If(IsTIDUsed(585))
	  {
	    PlaySound(585, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    I keep grinding my horns against the rock. Mining was easier when I was a calf..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  If(CheckInventory("QuestMap18EnterPortal") > 0 || CheckInventory("InventoryElixirOfLife") > 0 || CheckInventory("QuestMap20BluePrimarch") == 1)
	  {
	    PlaySound(655, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    We may be few, but we're ready to fight to the last. Our sacrifices will be remembered."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  If(spec146 > 0)
	  {
	    PlaySound(655, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    If you require access to the warlord's quarters, you better get her permission."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(655, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    Mining is a rite of passage for our calves. Adults are too big to fit through a gallery."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial655 % 4 == 2)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(655, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    I witnessed a cultist peeking at us from above the canyons. They are afraid of us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  If(spec146 > 0)
	  {
	    PlaySound(655, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    I caught that shady Fixer poking around here earlier. She's never up to any good."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(655, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Minotaur Axeman:    I bet it was the demons who collapsed the tunnel. They don't dare fight us fairly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
        dial655 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial655 % 4 == 3)
	{
	  PlaySound(655, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Minotaur Axeman:    It is an honor to be here. We shall cleanse the fire sea from demons and avenge our dead!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial655 += 1;
	  Delay(2*35);
	}
}
Script 144 (void)
{
	SetLineSpecial(596, 0, 0, 0, 0, 0, 0);
	If(CheckSight(655, 0, 0) > 0)
	{
	  Hudmessage(s:"Minotaur Axeman:    *Squints at you*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 2.5, 0.2, 2.5);
	}
}

//Earth Mother Chanter Dialogue
Script 658 (void)
{
	Hudmessage(s:"Earth Mother:    *Chanting*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	Delay(2*35);
}

//Ingrim Dialogue
int dial659 = 6;
int dial659b = 4;
int spec659b = 0;
int spec659c = 0;
Script 659 (void)
{
  If(GetActorZ(0) < 311.0)
  {
	If(CheckInventory("InventoryBagOfYeast") > 0)
	{
		TakeInventory("InventoryBagOfYeast", 1);
		If(IsTIDUsed(658))
		{
		  PlaySound(662, "Inventory/PickBase", CHAN_AUTO);
		  SpawnSpotForced("IDBag", 662, 664, 0);
		  SetActorProperty(664, APROP_ScaleX, 0.5);
		  SetActorProperty(664, APROP_ScaleY, 0.5);
		  Delay(24);
		  PlaySound(658, "Witch/Hm", CHAN_AUTO);
	      Hudmessage(s:"Lady Ingrim:    Oh, you found yeast? I'm cut off from the still, but once the tunnel is cleared, I'll get brewin'."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      Delay(2*35);
		  Thing_Activate(669);
		}
		else
		{
		  PlaySound(663, "Inventory/PickBase", CHAN_AUTO);
		  SpawnSpotForced("IDBag", 663, 665, 0);
		  SetActorProperty(665, APROP_ScaleX, 0.5);
		  SetActorProperty(665, APROP_ScaleY, 0.5);
		  Delay(24);
	      PlaySound(659, "Witch/Hm", CHAN_AUTO);
	      Hudmessage(s:"Lady Ingrim:    Oh, you found yeast? This'll lift our spirits! I'll get brewin', drop by later for a drink."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      Delay(2*35);
		  Thing_Activate(669);
		}
	}
	else
	If(spec659 > 0 && IsTIDUsed(667) == 0 && CheckInventory("QuestMap18EnterPortal") == 0)
	{
	  PlaySound(659, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    Fresh brew, coming right up!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 3.5, 0.2, 2.5);
	  PlaySound(666, "Inventory/PickShort", CHAN_AUTO);
	  SpawnSpotForced("HealthAle", 666, 667, 0);
	  spec659 = 0;
	  Delay(2*35);
	  If(spec659b == 0)
	  {
		Delay(2*35);
		spec659b += 1;
		PlaySound(659, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"I also found this potion inside the yeast bag. Heh, you must have stumbled upon a smuggler's den."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 2.5);
		PlaySound(668, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("InventoryPotionOfStoneskin", 668, 0, 0);
		Delay(2*35);
	  }
	}
	else
	If(spec659b == 0 && IsTIDUsed(667) == 0 && CheckInventory("QuestMap18EnterPortal") > 0 && IsTIDused(665))
	{
	  PlaySound(659, "Witch/Hm", CHAN_AUTO);
	  spec659b += 1;
	  Hudmessage(s:"Lady Ingrim:    Hmm, I found this potion inside the yeast bag. A sign that you need to equip yourself well."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 2.5);
	  PlaySound(668, "Inventory/PickBase", CHAN_AUTO);
	  SpawnSpotForced("InventoryPotionOfStoneskin", 668, 0, 0);
	  Delay(2*35);
	}
	else
	If(spec659c == 0 && CheckInventory("PraakGrabbed") > 0 && IsTIDUsed(658) == 0)
	{
		PlaySound(659, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Sorry, praaks aren't allowed to drink here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Spec659c += 1;
		Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial659b % 4 == 0)
	  {
	    PlaySound(659, "EarthMother/Hmph", CHAN_AUTO);
	    Hudmessage(s:"Lady Ingrim:     I'd give you a drink, but the fate of our world should remain in the hands of someone sober."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial659b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial659b % 4 == 1)
	  {
	    Hudmessage(s:"Lady Ingrim:    You are more than prepared for this, champion. Your finest moment of glory is in reach."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial659b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial659b % 4 == 2)
	  {
	    PlaySound(659, "Witch/Hm", CHAN_AUTO);
	    Hudmessage(s:"Lady Ingrim:    My late lord would have yearned to be here now. I know he's watching. All our fallen are."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial659b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial659b % 4 == 3)
	  {
	    Hudmessage(s:"Lady Ingrim:    Don't tarry. You'll have plenty of time for drinks and tales after you return. Victoriously."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    dial659b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial659 % 6 == 0)
	{
	  PlaySound(658, "EarthMother/Hmph", CHAN_AUTO);
	  PlaySound(659, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    I couldn't miss the chance to be here and see my fallen avenged. We're living a historic moment."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
	else
	If(dial659 % 6 == 1)
	{
	  PlaySound(658, "Witch/Hm", CHAN_AUTO);
	  PlaySound(659, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    Icepeak will fight to the last drop of blood. One way or another, we'll carve a notch in history."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
	else
	If(dial659 % 6 == 2)
	{
	  PlaySound(658, "EarthMother/Hmph", CHAN_AUTO);
	  PlaySound(659, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    Grund wasn't fond of taking us non-combatants here, but I made her a good point about morale."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
	else
	If(dial659 % 6 == 3)
	{
	  PlaySound(658, "Witch/Hm", CHAN_AUTO);
	  PlaySound(659, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    I may not have the best ingredients and utensils, but still, I won't let our army march hungry."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
	else
	If(dial659 % 6 == 4)
	{
	  Hudmessage(s:"Lady Ingrim:    The cultists here look more malnourished than the usual. No wonder... all they eat is fungi."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
	else
	If(dial659 % 6 == 5)
	{
	  PlaySound(658, "Witch/Hm", CHAN_AUTO);
	  PlaySound(659, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Lady Ingrim:    My family brewed fungus ale during hard times. The Brewer Guild has averted a lot of unrest."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial659 += 1;
	  Delay(2*35);
	}
  }
}
Script 660 (void)
{
	Thing_Remove(661);
	Thing_Remove(814);
	PlaySound(658, "Witch/Hm", CHAN_AUTO);
	PlaySound(659, "Witch/Hm", CHAN_AUTO);
	Hudmessage(s:"Lady Ingrim:    Look who made it! Help yourself to what you can. Our champion needs to be in top shape now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
}
Script 661 (void)
{
	Thing_Remove(670);
	PlaySound(659, "Witch/Hmm", CHAN_AUTO);
	Hudmessage(s:"Lady Ingrim:    [...] pungent yellow root?... are you sure?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.90, 3.5, 0.2, 0.5);
    Delay(4*35);
    PlaySound(671, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Maid:    If it worked for my mother, it should work for you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 4.5, 0.2, 2.5);
}

//Maid Dialogue
int dial671 = 4;
Script 671 (void)
{
  If(GetActorZ(0) < 311.0)
  {
	If(dial671 % 4 == 0)
	{
	  PlaySound(671, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Maid:    This place is a nightmare. The ashes make me miss brooming some good ol' dust."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial671 += 1;
	  Delay(2*35);
	}
	else
	If(dial671 % 4 == 1)
	{
	  PlaySound(671, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Maid:    I don't even know why they dragged me here. Lady Ingrim said my presence lifts the spirits. Hah."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial671 += 1;
	  Delay(2*35);
	}
	else
	If(dial671 % 4 == 2)
	{
	  PlaySound(671, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Maid:    These cultist animals always make a mess! They don't give a praak's ass about keeping things tidy."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial671 += 1;
	  Delay(2*35);
	}
	else
	If(dial671 % 4 == 3)
	{
      Hudmessage(s:"Maid:    Are you really going into the Baron's castle all alone? What can I say, may the Gods protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial671 += 1;
	  Delay(2*35);
	}
  }
}

//Dwarf Militia Locksmith Dialogue
int dial672 = 4;
Script 672 (void)
{
  If(GetActorZ(0) < 320.0)
  {
    If(dial672 % 4 == 0)
	{
		PlaySound(672, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    W...what do you want... hic! Demon! Have you... come to take me? Hic! Hahahah!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial672 += 1;
		Delay(2*35);
	}
	else
	If(dial672 % 4 == 1)
	{
		PlaySound(672, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    Go on... hic! Drag me away in chains. Hic! I'll pick their lock when I'm sober, hahaha! Hic."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
		dial672 += 1;
		Delay(2*35);
	}
	else
	If(dial672 % 4 == 2)
	{
		PlaySound(672, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    Hic!... are you lost? If you can't find it in a cupboard, look it up in a book! Hic!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial672 += 1;
		Delay(2*35);
	}
	else
	If(dial672 % 4 == 3)
	{
		Hudmessage(s:"Dwarf Militia:    ...aye! Fate may lead you astray, but you own the legs that walk her path... hic!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial672 += 1;
		Delay(2*35);
	}
  }
}

//Jaromir Dialogue
//int dial651 = 6;
int dial651b = 4;
int spec651 = 0;
Script 651 (void)
{
	If(spec651 == 0)
	{
	  PlaySound(651, "Jaromir/Heh", CHAN_AUTO);
      Hudmessage(s:"High Priest Jaromir:    How was the baptism in the sea of flames? Fire Himself has forged you into a steel titan!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  spec651 += 1;
	  Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial651b % 4 == 0)
	  {
	    PlaySound(651, "Jaromir/Hmm", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    The chisel rests upon the stone, waiting for the hammer to strike. Strike victory, lass."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial651b % 4 == 1)
	  {
		PlaySound(651, "Jaromir/Heh", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    Don't let hesitation erode you. Your fate is already uttered, you need only write its words."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial651b % 4 == 2)
	  {
	    PlaySound(651, "Jaromir/Hah", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    The millstone turns slowly, but it always makes a full turn. A new future is born today."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial651b % 4 == 3)
	  {
		PlaySound(651, "Andrik/Laugh", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    Do you need to hear more inspiring words? If not, then what're ya waiting for? Off with ye!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial651 % 6 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(651, "Jaromir/Hmm", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    Demons keep throwing bodies at us. They feast on others' fear, but now... they are the ones afraid."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(651, "Andrik/Laugh", CHAN_AUTO);
        Hudmessage(s:"H. Priest Jaromir:    Stay awhile and rest your heels. But don't rest for too long, or the demons will get us! Hehe."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial651 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial651 % 6 == 1)
	{
	  PlaySound(651, "Jaromir/Hmm", CHAN_AUTO);
      Hudmessage(s:"H.Priest Jaromir:    You can't reach the Baron's citadel  yet because your heart's virtue trumps your half-blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial651 += 1;
	  Delay(2*35);
	}
	else
	If(dial651 % 6 == 2)
	{
      Hudmessage(s:"H.Priest Jaromir:    If the primarchs try to trick you, trick them back! That'll prove them you're demon enough."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial651 += 1;
	  Delay(2*35);
	}
	else
	If(dial651 % 6 == 3)
	{
	  PlaySound(651, "Jaromir/Heh", CHAN_AUTO);
      Hudmessage(s:"H.Priest Jaromir:    The Queen of Wrath will have an easier time getting there... but can we trust her motives?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial651 += 1;
	  Delay(2*35);
	}
	else
	If(dial651 % 6 == 4)
	{
      Hudmessage(s:"H.Priest Jaromir:    Like icy water breaking the rock apart, the primarchs will undoubtedly try to erode your heart."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial651 += 1;
	  Delay(2*35);
	}
	else
	If(dial651 % 6 == 5)
	{
	  PlaySound(651, "Jaromir/Hah", CHAN_AUTO);
      Hudmessage(s:"H.Priest Jaromir:    I hope you built your walls strong, lass. May they protect your soul in the trial that lies ahead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial651 += 1;
	  Delay(2*35);
	}
}

//Campfire Dwarf Shieldguard Dialogue
int dial751 = 4;
int spec751 = 0;
Script 751 (void)
{
  If(GetActorProperty(751, APROP_Health) > 0)
  {
	If(spec751 == 0)
	{
	  spec751 += 1;
	  PlaySound(751, "Andrik/Grumble", CHAN_AUTO);
      Hudmessage(s:"Dwarf Shieldguard:    Hey lass, here, I found this tank in a locker before we left out ancient town."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(3*35);
	  SpawnSpotForced("InventoryDivingSuitAirTank", 817, 0, 0);
	  PlaySound(817, "Inventory/PickShort", CHAN_AUTO);
	  Delay(2*35);
	  PlaySound(751, "Andrik/Mumble", CHAN_AUTO);
      Hudmessage(s:"There ain't much water to drown in around Hell, but I heard the fungus caves to the west are full of gas!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
	  Delay(4*35);
	}
	else
	If(dial751 % 4 == 0)
	{
	  PlaySound(751, "Andrik/Grumble", CHAN_AUTO);
      Hudmessage(s:"Dwarf Shieldguard:    Arf! Hell's worthy of its denizens. Look at this place! Despicable! Dirty! Barren!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial751 += 1;
	  Delay(2*35);
	}
	else
	If(dial751 % 4 == 1)
	{
      Hudmessage(s:"Dwarf Shieldguard:    If I slay two more dozen chaots, I'll surely make a name for meself! Let me at 'em!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial751 += 1;
	  Delay(2*35);
	}
	else
	If(dial751 % 4 == 2)
	{
	  PlaySound(751, "Andrik/Laugh", CHAN_AUTO);
      Hudmessage(s:"Dwarf Shieldguard:    Bonebreaker... is it true ya got yer name from wrestling down a warg barehanded?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial751 += 1;
	  Delay(2*35);
	}
	else
	If(dial751 % 4 == 3)
	{
	  PlaySound(751, "Andrik/Mumble", CHAN_AUTO);
      Hudmessage(s:"Dwarf Shieldguard:    I already miss our lost town. At least the cold didn't make me want to throw my armor off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial751 += 1;
	  Delay(2*35);
	}
  }
}

//Guard Tower Reaver Dialogue
int dial673 = 4;
Script 673 (void)
{
  If(GetActorProperty(673, APROP_Health) > 0 && GetActorZ(0) > 325.0)
  {
	If(dial673 % 4 == 0)
	{
	  If(GetActorProperty(640, APROP_Health) <= 0)
	  {
	    PlaySound(673, "Reaver/Huh", CHAN_AUTO);
        Hudmessage(s:"Reaver:    I can't believe the lookouts failed to send a runner back! Grund should've sent me up there instead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial673 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(673, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver:    If the Baron is so powerful, why doesn't he just come out of his lair? He must be up to something..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial673 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial673 % 4 == 1)
	{
	  PlaySound(673, "Reaver/Hm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    Our forest scouts have located the Baron's citadel. It's guarded by a cursed gate that boils your blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial673 += 1;
	  Delay(2*35);
	}
	else
	If(dial673 % 4 == 2)
	{
	  PlaySound(673, "Reaver/Huh", CHAN_AUTO);
      Hudmessage(s:"Reaver:    Not sure if I'm losing my mind or not, but I saw beams of light erupting from the citadel's direction."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial673 += 1;
	  Delay(2*35);
	}
	else
	If(dial673 % 4 == 3)
	{
      Hudmessage(s:"Reaver:    We would all love to challenge the Baron, but it looks like you're going to have to face him alone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  dial673 += 1;
	  Delay(2*35);
	}
  }
}

//Workshop Boss Dialogue
//int dial674 = 6;
Script 674 (void)
{
  If(GetActorZ(0) < 95.0)
  {
	If(dial674 % 6 == 0)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(674, "Fixer/Hm", CHAN_AUTO);
        Hudmessage(s:"Workshop Boss:    Going up against the Baron? Remember, the mind freaks can't do shit against our sentry guns."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial674 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(674, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Workshop Boss:    What's up, big girl? Aren't you supposed to be searching for the primarch shrines or something?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial674 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial674 % 6 == 1)
	{
	  PlaySound(674, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Workshop Boss:    This place sucks. I'd rather be sweating my ass over the Great Forge back home, thank you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial674 += 1;
	  Delay(2*35);
	}
	else
	If(dial674 % 6 == 2)
	{
      Hudmessage(s:"Workshop Boss:    We couldn't carry our siege weapons here. We might have to... relieve the demons of their own."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial674 += 1;
	  Delay(2*35);
	}
	else
	If(dial674 % 6 == 3)
	{
	  PlaySound(674, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Workshop Boss:    I took a good look at the Paingun. Crazy how the demons have managed to copy our crystal designs."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial674 += 1;
	  Delay(2*35);
	}
	else
	If(dial674 % 6 == 4)
	{
	  PlaySound(674, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Workshop Boss:    I wonder if Nithriel... I mean she's an elf... and the crystals... and the temple you found..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial674 += 1;
	  Delay(2*35);
	}
	else
	If(dial674 % 6 == 5)
	{
	  If(GetSectorCeilingZ(358, 0, 0) == 295.0)
	  {
        Hudmessage(s:"Workshop Boss:    It's hard to stay focused in here. I gotta hurry up and fix this sentry before our scouts return."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial674 += 1;
	    Delay(2*35);
	  }
	  else
	  {
        Hudmessage(s:"Workshop Boss:    Breaking this Paingun down was easy... now, to put it back together... ugh, I can't stay focused."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial674 += 1;
	    Delay(2*35);
	  }
	}
  }
}

//Hectus Dialogue
//int dial675 = 6;
Script 675 (void)
{
  If(GetActorZ(0) < 295.0)
  {
	If(CheckInventory("InventoryIronBoundTome") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(12);
		SetWeapon("Fists");

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryIronBoundTome", 1);

		SetActorState(675, "Rest", 0);

		PlaySound(675, "Murguth/Ha", CHAN_AUTO);
		Hudmessage(s:"Hectus:    You found an Iron-Bound Tome? Show me!... "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Delay(3*35);
		Hudmessage(s:"*Browses the tome and squints*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.5, 0.2, 1.5);
		Delay(16);
		PlaySound(675, "Inventory/PickKey", CHAN_AUTO, 0.8);
		Delay(8);
		PlaySound(675, "Inventory/PickKey", CHAN_AUTO, 0.6);
		Delay(35);
		PlaySound(675, "Inventory/Paper", CHAN_AUTO, 0.8);
		Delay(35);
		PlaySound(675, "Inventory/Paper", CHAN_AUTO, 0.6);
		Delay(35);
		PlaySound(675, "Inventory/Paper", CHAN_AUTO, 0.7);
		Delay(105);
		PlaySound(675, "Murguth/Growl", CHAN_AUTO);
		Hudmessage(s:"If only I had the materials to craft some of these weapons. Ah, but there is one little thing I can make..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 2.5);
        Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(4*35);
		Thing_Remove(805);
		PlaySound(675, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(35);
		PlaySound(675, "Interaction/AnvilHit", CHAN_AUTO, 0.9);
		Delay(35);
		PlaySound(675, "Interaction/AnvilHit", CHAN_AUTO, 0.7);
		Delay(16);
		PlaySound(675, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(16);
		PlaySound(675, "Ammo/DepletedShardBounce", CHAN_AUTO, 1.0);
		Delay(16);
		PlaySound(675, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(50);
		PlaySound(675, "Interaction/RopeTie", CHAN_AUTO, 0.4);
		Delay(24);
		PlaySound(675, "Interaction/RopeTie", CHAN_AUTO, 0.5);
		Delay(16);
		SpawnSpotForced("DemonBookF", 678, 680, 0);
		Thing_Remove(683);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(1*35);
		PlaySound(675, "Murguth/Unf", CHAN_AUTO);
		Hudmessage(s:"A token of my gratitude. This ring will make you kick harder than a minotaur and punch like a god."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 2.5);
		Delay(1*35);
		SpawnSpotForced("InventoryRingOfTheRedMonk", 679, 0, 0);
		PlaySound(679, "Ammo/DepletedShardBounce", CHAN_AUTO);
		PlaySound(679, "Inventory/PickShort", CHAN_AUTO);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		Delay(5*35);
		dial675 = 9;
		SetActorState(675, "Spawn", 0);
	}
	else
	If(dial675 % 6 == 0)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
		PlaySound(675, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Hectus:    If you're going to challenge the Baron, remember - the sharpest weapon is your wit."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
        dial675 += 1;
	    Delay(2*35);
	  }
	  else
	  {
	    PlaySound(675, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Warlord Grund was displeased with your recklessness. But yet, you emerged from the fire, forged anew."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial675 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial675 % 6 == 1)
	{
	  PlaySound(675, "Murguth/Growl", CHAN_AUTO);
      Hudmessage(s:"Hectus:    Watch how gently I strike. Steady your arm, and the steel will bend. Strike too hard... and boom."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial675 += 1;
	  Delay(2*35);
	}
	else
	If(dial675 % 6 == 2)
	{
      Hudmessage(s:"Hectus:    We couldn't carry many supplies here. I'm forced to work with pig iron scrapped from the cultists."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial675 += 1;
	  Delay(2*35);
	}
	else
	If(dial675 % 6 == 3)
	{
	  If(IsTIDUSed(680))
	  {
		PlaySound(675, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    I am grateful for the tome, but it serves us little purpose other than being a peculiar showpiece."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial675 += 1;
	    Delay(2*35);
	  }
	  else
	  {
		PlaySound(675, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Legends tell of an iron-bound tome with forbidden schematics that was lost in the libraries of Hell..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial675 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial675 % 6 == 4)
	{
      Hudmessage(s:"Hectus:    This is but one island of Hell's archipelago. How many dark secrets have the demons buried here?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial675 += 1;
	  Delay(2*35);
	}
	else
	If(dial675 % 6 == 5)
	{
	  PlaySound(675, "Murguth/Unf", CHAN_AUTO);
      Hudmessage(s:"Hectus:    Meddling with the primarchs is beneath us... but I won't question Lord Murguth's findings. Carry on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial675 += 1;
	  Delay(2*35);
	}
  }
}

//Earth Mother bendi Dialogue
//int dial684 = 6;
int spec684 = 0;
int spec684b = 0;
Script 684 (void)
{
	If(spec684b == 0 && GetSectorCeilingZ(684, 0, 0) > 270.0)
	{
	  PlaySound(684, "EarthMother/Hm", CHAN_AUTO);
      Hudmessage(s:"E. M. Bendi:    Oh, dear, that's a lot of mana! I don't condone the use of cursed artifacts, but... just this once."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 1.5);
      spec684b += 1;
	  Delay(7*35);
	  PlaySound(684, "Lancer/Hmm", CHAN_AUTO);
      Hudmessage(s:"I kept these scrolls for desperate times, but now that we have mana, you can have them! Earth's blessings!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 2.5);
      SpawnSpotForced("InventoryScrollEarthNourish", 688, 0, 0);
	  PlaySound(688, "Inventory/PickShort", CHAN_AUTO);
	  dial684 = 7;
	  Delay(2*35);
	}
	else
	If(spec684 == 0)
	{
	  PlaySound(684, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"Earth Mother Bendi:    Watch your step, please! The seeds have a hard time sprouting as it is..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 2.5);
      spec684 += 1;
	  Delay(2*35);
	}
	else
	If(CheckInventory("InventorySpiritGem") > 0 && CheckInventory("InventoryChargedPsiCrown") < 100)
	{
		TakeInventory("InventorySpiritGem", 1);
		SpawnSpotForced("CultGemSpirit", 811,812,0);
		PlaySound(811, "Ammo/DepletedShardBounce", CHAN_AUTO, 0.5);
		SetWeapon("Fists");

		Delay(16);

        TakeInventory("InventoryChargedPsiCrown", 100);
		TakeInventory("InventoryChargedPsiCrown", 1);
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO, 0.5);

		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
		SetActorProperty(0, APROP_SPEED, 0.0);

		Delay(16);
		PlaySound(684, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Earth Mother Bendi:    ...A Spirit Gem? Oh, right! Give me a moment and I'll have your Psi Crown recharged!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(2*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(4*35);
		Thing_Remove(812);
		PlaySound(811, "Magic/Earth1", CHAN_AUTO);
		Delay(35);
		PlaySound(811, "Magic/Dispel", CHAN_AUTO);
		Delay(16);
		PlaySound(811, "Magic/Spark", CHAN_AUTO);
		Delay(70);
		SpawnSpotForced("InventoryChargedPsiCrown", 811,0,0);
		FadeTo(0, 0, 0, 0.0, 3.0);
		PlaySound(402, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"There you go! This should protect you from the Baron's mind magic... at least for a while."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
    If(dial684 % 6 == 0)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0 && CheckInventory("InventoryChargedPsiCrown") > 0)
	  {
	    PlaySound(684, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"E.M. Bendi:    So you're off to fight the Baron? Remember, he's a mind master. Shield yourself with the Psi Crown!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial684 += 1;
	    Delay(2*35);
	  }
	  else
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	    PlaySound(684, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"E.M. Bendi:    So you're off to fight the Baron? The Psi Crown would have been useful, but alas, you'll make do."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial684 += 1;
	    Delay(2*35);
	  }
	  else
	  {
        Hudmessage(s:"E.M. Bendi:    The soil is cursed, no plant can grow by itself in this inferno. We're using magic to form a grove."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial684 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial684 % 6 == 1)
	{
	  If(GetSectorCeilingZ(684, 0, 0) > 258.0)
	  {
	    PlaySound(684, "Lancer/Ha", CHAN_AUTO);
        Hudmessage(s:"E.M. Bendi:    Thanks for providing us with mana. It's nice that we won't have to drain ourselves to death... yet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial684 += 1;
	    Delay(2*35);
	  }
	  else
	  {
		PlaySound(684, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"E.M. Bendi:    Water alone can't nurture the seeds here - mana has been helpful, but our reserves are spent."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial684 += 1;
	    Delay(2*35);
	  }
	}
	else
	If(dial684 % 6 == 2)
	{
	  PlaySound(684, "Lancer/Hmm", CHAN_AUTO);
      Hudmessage(s:"E.M. Bendi:    Our magics were aided by crystals when growing Valc's Grove. Without the Disk, we are feeble."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial684 += 1;
	  Delay(2*35);
	}
	else
	If(dial684 % 6 == 3)
	{
      Hudmessage(s:"E.M. Bendi:    The Cult is terrible at growing crops or keeping livestock. They rely on demons to keep them fed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial684 += 1;
	  Delay(2*35);
	}
	else
	If(dial684 % 6 == 4)
	{
      PlaySound(684, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"E.M. Bendi:    There's nothing to hunt here. Except for demons, of course... but they certainly taste terrible!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial684 += 1;
	  Delay(2*35);
	}
	else
    If(dial684 % 6 == 5)
	{
	  Hudmessage(s:"E.M. Bendi:    Did you know that demons can go without eating for ages? As long as they leech on peoples' misery..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial684 += 1;
	  Delay(2*35);
	}
}

//FOB Fixer Dialogue
int dial700 = 4;
Script 700 (void)
{
  If(GetActorProperty(700, APROP_Health) > 0 && GetActorZ(0) > 388.0)
  {
	If(ThingCount(T_NONE, 710) > 1 || ThingCount(T_NONE, 718) > 0)
	{
	  PlaySound(700, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    Not now, sarge! We've got demons to kill!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 2.5);
	  Delay(8*35);
	  dial700 = 7;
	}
	else
	If(dial700 % 4 == 0)
	{
	  PlaySound(700, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    I wonder who built these portals. They don't look demon-made, and cultists don't seem to use them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial700 += 1;
	  Delay(2*35);
	}
	else
	If(dial700 % 4 == 1)
	{
      Hudmessage(s:"Fixer:    This island hides a lot of secrets. Have you seen the obelisks? They have some sort of code going on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial700 += 1;
	  Delay(2*35);
	}
	else
	If(dial700 % 4 == 2)
	{
	  PlaySound(700, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    I think juxtaposing the obelisks' inscriptions will reveal the riddle. If only we could find them all..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial700 += 1;
	  Delay(2*35);
	}
	else
	If(dial700 % 4 == 3)
	{
      Hudmessage(s:"Fixer:    I heard ancient humans once fought the demons here. They must've long been converted into cultists."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial700 += 1;
	  Delay(2*35);
	}
  }
}

//FOB Bear Warrior Dialogue
int dial701 = 4;
Script 701 (void)
{
  If(GetActorProperty(701, APROP_Health) > 0)
  {
	If(ThingCount(T_NONE, 710) > 1 || ThingCount(T_NONE, 718) > 0)
	{
	  PlaySound(701, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Give them no ground! For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 2.5);
	  Delay(8*35);
	  dial701 = 4;
	}
	else
	If(dial701 % 4 == 0)
	{
	  PlaySound(701, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Hold your axe high, Bonebreaker! Strike the beast's heart, we'll keep the rabble off your back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial701 += 1;
	  Delay(2*35);
	}
	else
	If(dial701 % 4 == 1)
	{
	  PlaySound(701, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Hell looks scarred from infighting. Without the Baron's fist, demons would be killing each other."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial701 += 1;
	  Delay(2*35);
	}
	else
	If(dial701 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    A week wouldn't pass here without some local pit lord trying to overthrow the seat of power."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial701 += 1;
	  Delay(2*35);
	}
	else
	If(dial701 % 4 == 3)
	{
	  PlaySound(701, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Cultists may be assholes, but at least they don't backstab their kin in the middle of a fight."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial701 += 1;
	  Delay(2*35);
	}
  }
}

//FOB Witch Dialogue
int dial702 = 4;
Script 702 (void)
{
  If(GetActorProperty(702, APROP_Health) > 0)
  {
	If(ThingCount(T_NONE, 710) > 1 || ThingCount(T_NONE, 718) > 0)
	{
	  PlaySound(702, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Watch out for the Forge Elementals! They're trying to flank us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(8*35);
	  dial702 = 7;
	}
	else
	If(dial702 % 4 == 0)
	{
	  PlaySound(672, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    The dark citadel is guarded by a blood gate. When we approached it, our veins began to burn."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial702 += 1;
	  Delay(2*35);
	}
	else
	If(dial702 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    Demons are masters of torture. Some things I've seen here make the testing labs in Valc look pleasant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial702 += 1;
	  Delay(2*35);
	}
	else
	If(dial702 % 4 == 2)
	{
	  PlaySound(702, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Cultists have grown accustomed to pain, so their masters need fresh spirits to feed upon the misery of."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial702 += 1;
	  Delay(2*35);
	}
	else
	If(dial702 % 4 == 3)
	{
	  PlaySound(702, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Nothing motivates a demon like hunger. The Baron has promised an endless feast through conquest."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial702 += 1;
	  Delay(2*35);
	}
  }
}

//Minotaur Pyromancer Dialogue
int dial719 = 4;
Script 719 (void)
{
  If(GetActorProperty(719, APROP_Health) > 0)
  {
	If(dial719 % 4 == 0)
	{
	  PlaySound(719, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Minotaur Pyromancer:    Tread lightly, Halfblood. The dead have no rest down here, in Hell."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial719 += 1;
	  Delay(2*35);
	}
	else
	If(dial719 % 4 == 1)
	{
      Hudmessage(s:"Minotaur Pyromancer:    The soil is cursed. We can't bury our dead here, so I preserve their bodies in amber."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial719 += 1;
	  Delay(2*35);
	}
	else
	If(dial719 % 4 == 2)
	{
	  PlaySound(719, "Murguth/Unf", CHAN_AUTO);
      Hudmessage(s:"Minotaur Pyromancer:    Our fallen deserve a proper burial. But until we return home, their spirits fight on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial719 += 1;
	  Delay(2*35);
	}
	else
	If(dial719 % 4 == 3)
	{
      Hudmessage(s:"Minotaur Pyromancer:    A worthy warrior will live forever among the Gods. Embrace your death with honor!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial719 += 1;
	  Delay(2*35);
	}
  }
}

//Wounded Fixer
Script 738 (void)
{
	If(GetActorProperty(738, APROP_Health) > 0)
	{
	Hudmessage(s:"Wounded Fixer:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	Delay(2*35);
	}
}

//Wounded Dwarf Shieldguard Dialogue
int dial739 = 4;
Script 739 (void)
{
  If(GetActorProperty(739, APROP_Health) > 0)
  {
	If(dial739 % 4 == 0)
	{
	  PlaySound(739, "Andrik/Grumble", CHAN_AUTO);
      Hudmessage(s:"Wounded Shieldguard:    Nay, I won't remove me armor! What if the demons gate in right next to me?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial739 += 1;
	  Delay(2*35);
	}
	else
	If(dial739 % 4 == 1)
	{
      Hudmessage(s:"Wounded Shieldguard:    I'd rather die from one o' the blue babes. Me shield won't stop 'er bullets anyway."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial739 += 1;
	  Delay(2*35);
	}
	else
	If(dial739 % 4 == 2)
	{
	  PlaySound(739, "Andrik/Laugh", CHAN_AUTO);
      Hudmessage(s:"Wounded Shieldguard:    Have ya' seen them blazing? The pretty flesh burns off, leaving ugly bones behind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial739 += 1;
	  Delay(2*35);
	}
	else
	If(dial739 % 4 == 3)
	{
	  PlaySound(739, "Andrik/Mumble", CHAN_AUTO);
      Hudmessage(s:"Wounded Shieldguard:    Fifty of me ancestors died by demon claw! I've two more to kill to clear our name!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial739 += 1;
	  Delay(2*35);
	}
  }
}

//Gate Guard Bear Warrior Dialogue
int dial633 = 4;
Script 633 (void)
{
  If(GetActorProperty(633, APROP_Health) > 0)
  {
	If(dial633 % 4 == 0)
	{
	  PlaySound(633, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I can't believe you blew up the Baron's ship! Bet he had to fly for the rest of the trip."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial633 += 1;
	  Delay(2*35);
	}
	else
	If(dial633 % 4 == 1)
	{
	  PlaySound(633, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We fished Tiati from a piece of debris. When she told us what happened, Grund locked her up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial633 += 1;
	  Delay(2*35);
	}
	else
	If(dial633 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    Thank the Earth you survived. We can stomp the serpent's body, but only you can cut the head."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial633 += 1;
	  Delay(2*35);
	}
	else
	If(dial633 % 4 == 3)
	{
	  PlaySound(633, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    The Queen of Wrath is already out there mingling with those primarchs. You better catch up!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial633 += 1;
	  Delay(2*35);
	}
  }
}

//Gate Guard Minotaur Axeman Miner Dialogue
int dial631 = 4;
Script 631 (void)
{
    If(dial631 % 4 == 0)
	{
	  PlaySound(631, "Murguth/Ha", CHAN_AUTO);
      Hudmessage(s:"Minotaur Axeman:    Travel swiftly out there. Our foes have many doors, while we have few eyes."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial631 += 1;
	  Delay(2*35);
	}
	else
	If(dial631 % 4 == 1)
	{
	  PlaySound(631, "Murguth/Unf", CHAN_AUTO);
      Hudmessage(s:"Minotaur Axeman:    Hell burns with the souls of countless sacrifices. If you hear them call, move faster."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial631 += 1;
	  Delay(2*35);
	}
	else
	If(dial631 % 4 == 2)
	{
      Hudmessage(s:"Minotaur Axeman:    The hearth of the Underworld shall be purged of demons and restored to the true god - Fire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial631 += 1;
	  Delay(2*35);
	}
	else
	If(dial631 % 4 == 3)
	{
	  PlaySound(631, "Murguth/Growl", CHAN_AUTO);
      Hudmessage(s:"Minotaur Axeman:    Beware of deceivers. The most evil demons are not the ones who fight, but the ones who talk."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial631 += 1;
	  Delay(2*35);
	}
}

//Ship Segment Friendlies Dialogue
int dial601 = 4;
int dial602 = 4;
int dial603 = 4;
int dial604 = 4;
int dial605 = 4;
int dial606 = 4;
int dial607 = 4;
int dial608 = 4;
Script 601 (void) //Fixer 1
{
  If(GetActorProperty(601, APROP_Health) > 0)
  {
	If(dial601 % 4 == 0)
	{
	  PlaySound(601, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    When the Baron's ship exploded, the fleet was thrown off course. Heh, you and Tiati caused a mess."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial601 += 1;
	  Delay(2*35);
	}
	else
	If(dial601 % 4 == 1)
	{
      Hudmessage(s:"Fixer:    We've travelled very far. I came all the way from the Parapet and ended at the bottom of the earth..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial601 += 1;
	  Delay(2*35);
	}
	else
	If(dial601 % 4 == 2)
	{
	  PlaySound(601, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    I never liked the Underworld that much. I miss chilling by the mountain side and watching the stars."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial601 += 1;
	  Delay(2*35);
	}
	else
	If(dial601 % 4 == 3)
	{
      Hudmessage(s:"Fixer:    The Overworld doesn't even know what's going on down here... yet here's where their fate is decided."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial601 += 1;
	  Delay(2*35);
	}
  }
}
Script 605 (void) //Fixer 2
{
  If(GetActorProperty(605, APROP_Health) > 0)
  {
    If(dial605 % 4 == 0)
	{
	  PlaySound(605, "Fixer/Hm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    I never imagined I'd see someone jump from ship to ship like you did. Y-you're a real badass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial605 += 1;
	  Delay(2*35);
	}
	else
	If(dial605 % 4 == 1)
	{
	  PlaySound(605, "Fixer/Huh", CHAN_AUTO);
      Hudmessage(s:"Fixer:    Grund yelled at us for leaving our troops behind. Hey, we were just trying to stop the Baron!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial605 += 1;
	  Delay(2*35);
	}
	else
	If(dial605 % 4 == 2)
	{
	  PlaySound(605, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    She's right though, I'm pretty sure I'm not supposed to be here. T-this place is so scary!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial605 += 1;
	  Delay(2*35);
	}
	else
	If(dial605 % 4 == 3)
	{
	  PlaySound(605, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Fixer:    The heat makes me think of the frost goblins who live near Icepeak. I'd rather be among them now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial605 += 1;
	  Delay(2*35);
	}
  }
}
Script 602 (void) //Earth Mother
{
  If(GetActorProperty(602, APROP_Health) > 0)
  {
	If(dial602 % 4 == 0)
	{
	  PlaySound(602, "EarthMother/Hmm", CHAN_AUTO);
      Hudmessage(s:"Earth Mother:    We're all relieved to see you made it. I wish I could join you again, but I'm needed here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial602 += 1;
	  Delay(2*35);
	}
	else
	If(dial602 % 4 == 1)
	{
	  PlaySound(602, "EarthMother/Hm", CHAN_AUTO);
      Hudmessage(s:"Earth Mother:    We're almost out of mana so it's back to using the good old plants to heal the wounded."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial602 += 1;
	  Delay(2*35);
	}
	else
	If(dial602 % 4 == 2)
	{
      Hudmessage(s:"Earth Mother:    At least I don't need to wait for the herbs to dry... the plants here are already dry as dust."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial602 += 1;
	  Delay(2*35);
	}
	else
	If(dial602 % 4 == 3)
	{
      PlaySound(602, "EarthMother/Hmph", CHAN_AUTO);
      Hudmessage(s:"Earth Mother:    I doubt I'll find any fae to shake dust out of down here. At least the fungi grow aplenty."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial602 += 1;
	  Delay(2*35);
	}
  }
}
Script 603 (void) //Bear Warrior 1
{
  If(GetActorProperty(603, APROP_Health) > 0)
  {
	If(dial603 % 4 == 0)
	{
	  PlaySound(603, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    You worked wonders using the demons' cannons against them. I mean... you are a siege engineer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial603 += 1;
	  Delay(2*35);
	}
	else
	If(dial603 % 4 == 1)
	{
	  PlaySound(603, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    You gonna go back to drafting catapult parts once this is over? War has changed quite a bit..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial603 += 1;
	  Delay(2*35);
	}
	else
	If(dial603 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    I fought to defend Valc. I fought to avenge our fallen sisters. I'll fight to save our world."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial603 += 1;
	  Delay(2*35);
	}
	else
	If(dial603 % 4 == 3)
	{
	  PlaySound(603, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Argh, I'm thinking to much about home! We still have one more fight to make it out of."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial603 += 1;
	  Delay(2*35);
	}
  }
}
Script 604 (void) //Bear Warrior 2
{
  If(GetActorProperty(604, APROP_Health) > 0)
  {
	If(dial604 % 4 == 0)
	{
	  PlaySound(604, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Iron shield you! With you back at our side, we have new hope to claim our victory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial604 += 1;
	  Delay(2*35);
	}
	else
	If(dial604 % 4 == 1)
	{
	  Hudmessage(s:"Bear Warrior:    Grund scolded us for going after the Baron by ourselves. We did kinda give in to bloodlust..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial604 += 1;
	  Delay(2*35);
	}
	else
	If(dial604 % 4 == 2)
	{
	  PlaySound(604, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    This is a legendary moment! Our deeds here will forever remain engraved in stone!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial604 += 1;
	  Delay(2*35);
	}
	else
	If(dial604 % 4 == 3)
	{
	  PlaySound(604, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Fight hard and we might become warlords ourselves... take on the mantle of our fallen leaders!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial604 += 1;
	  Delay(2*35);
	}
  }
}
Script 606 (void) //Reaver 1
{
  If(GetActorProperty(606, APROP_Health) > 0)
  {
	If(dial606 % 4 == 0)
	{
	  PlaySound(606, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    We're close to putting an end to this campaign. I expect some desperate moves from the demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial606 += 1;
	  Delay(2*35);
	}
	else
	If(dial606 % 4 == 1)
	{
      Hudmessage(s:"Reaver:    I really hate Hellions and their Painguns... our shield amulets can't keep up with the bullets."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial606 += 1;
	  Delay(2*35);
	}
	else
	If(dial606 % 4 == 2)
	{
	  PlaySound(606, "Reaver/Huh", CHAN_AUTO);
      Hudmessage(s:"Reaver:    I wonder if guns will become popular with the demons now. So far, they've mostly stuck to magic."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial606 += 1;
	  Delay(2*35);
	}
	else
	If(dial606 % 4 == 3)
	{
	  PlaySound(606, "Reaver/Hm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    The demon grunts surely love their Hellclaws. I heard the glove part is made from their own skin grafts."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial606 += 1;
	  Delay(2*35);
	}
  }
}
Script 607 (void) //Reaver 2
{
  If(GetActorProperty(607, APROP_Health) > 0)
  {
	If(dial607 % 4 == 0)
	{
	  PlaySound(607, "Reaver/Hm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    It was great fighting alongside you, but Grund wants us to hold the camp, so you're solo now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial607 += 1;
	  Delay(2*35);
	}
	else
	If(dial607 % 4 == 1)
	{
	  PlaySound(607, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    I don't regret us going after the Baron on our own... it was worth a shot, and you lived anyway."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial607 += 1;
	  Delay(2*35);
	}
	else
	If(dial607 % 4 == 2)
	{
	  PlaySound(607, "Reaver/Huh", CHAN_AUTO);
      Hudmessage(s:"Reaver:    If the Baron didn't fear for his life, he wouldn't be holed up in his cursed citadel, right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial607 += 1;
	  Delay(2*35);
	}
	else
	If(dial607 % 4 == 3)
	{
      Hudmessage(s:"Reaver:    Nobody seems to trust the Queen of Wrath anymore. She obviously has her own agenda."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial607 += 1;
	  Delay(2*35);
	}
  }
}
Script 608 (void) //Witch
{
  If(GetActorProperty(608, APROP_Health) > 0 && GetActorZ(0) > 320.0)
  {
	If(dial608 % 4 == 0)
	{
	  PlaySound(608, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    For half a millenia I've worked on explosives and I've never seen a fireball as big as the one you caused."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial608 += 1;
	  Delay(2*35);
	}
	else
	If(dial608 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    We earned a worthy victory in the port town, given they were surprisingly well prepared for our attack."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial608 += 1;
	  Delay(2*35);
	}
	else
	If(dial608 % 4 == 2)
	{
	  PlaySound(608, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Zura must've had a fit when she found out the Seed was gone. Lucklily for Tiati, she's not around now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial608 += 1;
	  Delay(2*35);
	}
	else
	If(dial608 % 4 == 3)
	{
	  PlaySound(608, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    I'd love to join you again, but Grund wants us here. After Tiati's episode, she's keeping a keen eye on us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial608 += 1;
	  Delay(2*35);
	}
  }
}

//Eraanthe Dialogue
int dial752 = 8;
int dial752b = 4;
int dial752c = 4;
int spec752a = 0;
int spec752b = 0;
int spec752c = 0;
Script 752 (void)
{
  If(GetActorProperty(752, APROP_Health) > 0)
  {
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  If(dial752b % 4 == 0)
	  {
	    PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
        Hudmessage(s:"Eraanthe:    How did you even acquire the taints so quickly? And why are you rubbing it in my face now?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial752b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial752b % 4 == 1)
	  {
	    PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
        Hudmessage(s:"Eraanthe:    Oh, you want to tease me, don't you? *Pouts her lips* You're such a tough smurf, aren't you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial752b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial752b % 4 == 2)
	  {
		PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
        Hudmessage(s:"Eraanthe:    In case you haven't noticed, I haven't given my sword away yet! Do you really want to taste it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
        dial752b += 1;
	    Delay(2*35);
	  }
	  else
	  If(dial752b % 4 == 3)
	  {
        Hudmessage(s:"Eraanthe:    Don't you have a Baron to kill? Afraid it's you who's going to die? Don't worry, I'll do the job."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
        dial752b += 1;
	    Delay(2*35);
	  }
	}
	else
	If(CheckInventory("QuestMap19PurplePrimarch") == 2 && CheckInventory("ScriptYzbethRejected") > 0)
	{
		If(CheckInventory("InventorySacrificialSword") > 0)
		{
		  SetActorProperty(0, APROP_SPEED, 0.0);
		  SetActorProperty(0, APROP_Friction, 0.1);

		  SetWeapon("Fists");
		  Delay(12);

		  ACS_Execute(48, 0, 0, 0, 0);

		  TakeInventory("InventorySacrificialSword", 1);
		  PlaySound(761, "Conscript/Attack1", CHAN_AUTO);
		  SpawnSpotForced("DemonSwordB", 761, 761, 0);

		  Delay(35);

		  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
		  Hudmessage(s:"Eraanthe:    *Gasps* You actually found it? Wait for me behind the antechamber, I'll be there in a moment."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(1*35);

		  TakeInventory("QuestMap18GetSacrificialSword", 1);
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	      Log(s:"Journal updated.");

		  Delay(3*35);
		  FadeTo(0, 0, 0, 1.0, 3.0);
		  Delay(3*35);

		  //SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
		  SetWeapon("Fists");
		  ACS_NamedExecuteWithResult("TakeWeapons");
		  Thing_Remove(761);
		  Thing_Remove(752);
		  SpawnSpotForced("NPCEraantheRegular", 763, 752, 128);
		  Teleport_NoFog(762, 1, 0);
		  SetActorPitch(0, 2048);
		  SetActorAngle(0, 1.0);

		  Delay(3*35);
		  FadeTo(0, 0, 0, 0.0, 3.0);
		  Delay(35);
		  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
		  Hudmessage(s:"Eraanthe:    There we go. Now, for my end of the deal... let's get this over with. I have a Baron to kill!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 6.5, 0.2, 2.5);
		  Delay(6*35);

		  SetActorState(752, "Tease", 0);
		  PlaySound(752, "Inventory/PickShort", CHAN_AUTO, 0.2);
		  Delay(3*35);
		  PlaySound(752, "Inventory/PickShort", CHAN_AUTO);
		  FadeTo(0, 0, 0, 1.0, 0.0);

		  SetMugshotState("Grinning");
		  Delay(1*35);
		  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO, 1.0);
		  Delay(3*35);
		  PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO, 1.0);
		  Delay(2*35);
		  PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO, 1.0);
		  SetMugshotState("Ouch");
		  Delay(1*35);

		  SetMugshotState("Sleep");

		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
          GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);
		  GiveInventory("HealthBonus", 2);
		  Delay(4);

		  Delay(70);

		  Thing_Remove(752);
		  SpawnSpotForced("InventoryLockOfHair", 764, 0, 0);
		  Teleport_NoFog(765, 1, 0);
		  SetActorPitch(0, 4096);
		  SetActorAngle(0, 0.5);

		  SetMugshotState("Normal");
		  PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
		  FadeTo(0, 0, 0, 0.0, 4.0);

		  //SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
		  ACS_NamedExecuteWithResult("GiveWeapons");
		  SetActorProperty(0, APROP_SPEED, 1.0);
		  SetActorProperty(0, APROP_Friction, 1.0);

		  Delay(70);
		  If(CheckInventory("InventoryPrimarchAvatar") > 0)
		  {
		    PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
			Hudmessage(s:"Elzriel:    ...hot."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.90, 1.5, 0.2, 1.5);
		  }

		  Delay(35);
	      SetMusic("HTrack31", 0, 0);

		}
		else
		If(spec752b == 0)
		{
		  spec752b += 1;
		  spec752c += 1;
		  SetActorProperty(0, APROP_SPEED, 0.0);
		  SetActorProperty(0, APROP_Friction, 0.1);
		  If(spec752a > 0)
		  {
		    PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
            Hudmessage(s:"Eraanthe:    You know... I've been thinking about your request and we might be able to help each other out..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
		    Delay(8*35);
		  }
		  else
		  {
		    PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
            Hudmessage(s:"Eraanthe:    What? Adur wants you to bed a demonblood? Hah! Or maybe?... maybe we could help each other out..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
		    Delay(8*35);
		  }
		  PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
		  Hudmessage(s:"Gaun will let me keep my sword if I offer an equally precious one instead. A ruby sacrificial sword more exactly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
		  Delay(8*35);
		  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
		  Hudmessage(s:"I was given this key. Allegedly, there's a tomb down in the salt mine to the north east where the sword could be."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
		  Delay(3*35);

		  SpawnSpotForced("BloodyAxeKey", 761, 0, 0);
		  PlaySound(761, "Inventory/PickKey", CHAN_AUTO);
		  Delay(3*35);
		  GiveInventory("QuestMap18GetSacrificialSword", 2);
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	      Log(s:"Journal updated.");

		  Delay(2*35);
		  PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
		  Hudmessage(s:"Be a dear and have a look for it. Save me the effort and I might just use that energy to help you out. Hmph."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 2.5);

		  SetActorProperty(0, APROP_SPEED, 1.0);
		  SetActorProperty(0, APROP_Friction, 1.0);
		  Delay(2*35);
		}
		else
		If(dial752c % 4 == 0)
	    {
	      PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
          Hudmessage(s:"Eraanthe:    Why are you still here?! Do you want to work this deal out or not?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 5.5, 0.2, 0.5);
          dial752c += 1;
	      Delay(2*35);
	    }
	    else
	    If(dial752c % 4 == 1)
	    {
	      PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
          Hudmessage(s:"Eraanthe:    As I said, the tomb is down below in the salt mine, north east of here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 5.5, 0.2, 0.5);
          dial752c += 1;
	      Delay(2*35);
	    }
	    else
	    If(dial752c % 4 == 2)
	    {
		  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
          Hudmessage(s:"Eraanthe:    Now, I don't know whether the sword even exists or not. That's why I'm sending you after it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
          dial752c += 1;
	      Delay(2*35);
	    }
	    else
	    If(dial752c % 4 == 3)
	    {
          Hudmessage(s:"Eraanthe:    I'm still bargaining with Gaun, by the way. Hurry up and find that sword before the deal's off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
          dial752c += 1;
	      Delay(2*35);
	    }
	}
	else
	If(spec752c == 0 && CheckInventory("QuestMap18GreenPrimarch") == 1)
	{
	  spec752c += 1;
	  PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
	  Hudmessage(s:"Eraanthe:    A salt statue?! Really? That's it? Oh, he's given you an easy task just to spite me, I bet!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 1.5);
	  dial752 = 12;
	  Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap19PurplePrimarch") == 2 && spec752a == 0 && spec752b == 0)
	{
	  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    What? Adur asked you to rut a demon and you came to me?... Hah! I'm not that desperate... yet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      spec752a += 1;
	  dial752 = 9;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 0)
	{
	  PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    Dumb oaf! What were you thinking?! Blowing the Baron's ship only gave him a push to fly away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 1)
	{
	  PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    What do you want now? Can't you see I'm in the middle of something? Stay out of my pentagram!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 2)
	{
      Hudmessage(s:"Eraanthe:    It turns out we halfbloods aren't demon enough to enter the Baron's citadel. Us? Too pure? Pft!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 3)
	{
	  PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    Must I really put up with the demands of the demon primarchs to prove that I'm worthy of passage?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	  //If(CheckInventory("QuestMap18GetPrimarchsTaint") == 0)
	  //{
		  //Delay(3*35);
		  //GiveInventory("QuestMap18GetPrimarchsTaint", 2);
		  //PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	      //Log(s:"Journal updated.");
	  //}
	}
	else
	If(dial752 % 8 == 4)
	{
      Hudmessage(s:"Eraanthe:    I have already appeased four of the primarchs, but this maggot won't let me challenge the Baron!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 5)
	{
	  PlaySound(752, "Eraanthe/Mmf", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    Gaun won't give me the taint unless I offer my sword on the altar. I can't relinquish my weapon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 6)
	{
	  PlaySound(752, "Eraanthe/Mm", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    Enjoy the time you have to catch up. Sooner or later, I'll convince this worm to grant me passage."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
	else
	If(dial752 % 8 == 7)
	{
	  PlaySound(752, "Eraanthe/Urgh", CHAN_AUTO);
      Hudmessage(s:"Eraanthe:    I won't let you steal my pleasure of slitting the Baron's throat! Stop getting in the way already!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
      dial752 += 1;
	  Delay(2*35);
	}
  }
}

//Forest Attack Dialogue
int spec789 = 0;
Script 789 (void)
{
  If(GetActorProperty(790, APROP_Health) > 0 && spec789 == 0)
  {
	SetLineSpecial(789, 0, 0, 0, 0, 0, 0);
	PlaySound(790, "Reaver/Hm", CHAN_AUTO);
	Hudmessage(s:"Reaver:    We're ready for action. Let's crush the demons for a thousand years to come!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 2.5);
  }
  else
  If(GetActorProperty(790, APROP_Health) > 0)
  {
	SetLineSpecial(789, 0, 0, 0, 0, 0, 0);
	PlaySound(790, "Reaver/Huh", CHAN_AUTO);
	Hudmessage(s:"Reaver:    Cleared the way already? It sounded like a hell of a fight out there."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 2.5);
  }
}
Script 791 (void)
{
   If(CheckProximity(0, "IDBearWarrior", 1920.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1920.0, 1) || CheckProximity(0, "IDBearWarriorRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Bear Warrior:    Hold your axes high! Hack them into pieces!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 1920.0, 1) || CheckProximity(0, "IDLancerGuarding", 1920.0, 1) || CheckProximity(0, "IDLancerRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Lancer:    For our fallen sisters! Crush them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDWitch", 1920.0, 1) || CheckProximity(0, "IDWitchGuarding", 1920.0, 1) || CheckProximity(0, "IDWitchRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Witch:    For Valc! Grind the chaos scum into paste!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDReaver", 1920.0, 1) || CheckProximity(0, "IDReaverGuarding", 1920.0, 1) || CheckProximity(0, "IDReaverRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Reaver:    Avenge our sisters! Mow them down!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixer", 1920.0, 1) || CheckProximity(0, "IDFixerGuarding", 1920.0, 1) || CheckProximity(0, "IDFixerRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Fixer:    Hahaha! Sweet revenge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMother", 1920.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 1920.0, 1) || CheckProximity(0, "IDEarthMotherRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(791, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Earth Mother:    Strike them down! Feed them to the earth!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
}
Script 792 (void)
{
   If(CheckProximity(0, "IDBearWarrior", 1920.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1920.0, 1) || CheckProximity(0, "IDBearWarriorRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Bear Warrior:    Spill their blood! Stomp their skulls!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDFixer", 1920.0, 1) || CheckProximity(0, "IDFixerGuarding", 1920.0, 1) || CheckProximity(0, "IDFixerRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Fixer:    Hahaha! Eat shrapnel, demons!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDReaver", 1920.0, 1) || CheckProximity(0, "IDReaverGuarding", 1920.0, 1) || CheckProximity(0, "IDReaverRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Reaver:    Valc lives! Put the chaots down!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 1920.0, 1) || CheckProximity(0, "IDLancerGuarding", 1920.0, 1) || CheckProximity(0, "IDLancerRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Lancer:    For the Iron Division! Slay these beasts!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDWitch", 1920.0, 1) || CheckProximity(0, "IDWitchGuarding", 1920.0, 1) || CheckProximity(0, "IDWitchRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Witch:    Chaos filth! Tear them limb from limb!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMother", 1920.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 1920.0, 1) || CheckProximity(0, "IDEarthMotherRecruitable", 1920.0, 1))
	  {
		SetLineSpecial(792, 0, 0, 0, 0, 0, 0);
	    HudmessageBold(s:"Earth Mother:    Earth strengthen you! Strike them down!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
}
Script 793 (void)
{
    If(CheckProximity(0, "IDReaver", 920.0, 1) || CheckProximity(0, "IDReaverGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Reaver:    We're close! The portal is just to the north!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDWitch", 920.0, 1) || CheckProximity(0, "IDWitchGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Witch:    We're close to the portal! I can already feel my blood boil..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 920.0, 1) || CheckProximity(0, "IDLancerGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Lancer:    The portal is close! I can feel its foul aura from here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
    else
	If(CheckProximity(0, "IDEarthMother", 920.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Earth Mother:    We're near the portal! I can feel the spirits of the sacrificed writhe already."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDBearWarrior", 920.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Bear Warrior:    The portal is right around the corner! Charge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixer", 920.0, 1) || CheckProximity(0, "IDFixerGuarding", 920.0, 1))
	  {
		SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Fixer:    The portal is close! You can do it, Zan!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
}
Script 794 (void)
{
  If(ThingCountName("SniperHellion", 776) < 6 && ThingCount(T_NONE, 787) == 0)
  {

	SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	spec789 += 1;

	If(CheckProximity(0, "IDLancer", 920.0, 1) || CheckProximity(0, "IDLancerGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Lancer:    This is as far as my body can go, Zan. Only you can end this war now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 2.5);
	  }
    else
	If(CheckProximity(0, "IDEarthMother", 920.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Earth Mother:    We can't go any further, Zan. Only you can end this war! May the Gods protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 2.5);
	  }
	else
	If(CheckProximity(0, "IDFixer", 920.0, 1) || CheckProximity(0, "IDFixerGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Fixer:    Urgh! I don't think I'm getting any closer to that citadel, Zan. You're on your own now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 2.5);
	  }
	else
    If(CheckProximity(0, "IDReaver", 920.0, 1) || CheckProximity(0, "IDReaverGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Reaver:    This is as far as we can go, sergeant. Once you pass that portal, you're on your own."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 2.5);
	  }
	else
	If(CheckProximity(0, "IDWitch", 920.0, 1) || CheckProximity(0, "IDWitchGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Witch:    Ugh. I can feel my veins writhe! I won't go far past that portal and live, Bonebreaker."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
	  }
	else
	If(CheckProximity(0, "IDBearWarrior", 920.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 920.0, 1))
	  {
		SetLineSpecial(794, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Bear Warrior:    I hate staying back, but we can't get past the portal. It's up to you now, sarge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 2.5);
	  }
  }
}


//DEBUG
Script 997 (void) //Journal Quests
{
	GiveInventory("InventoryJournal", 1);
	GiveInventory("JournalScrawnSketch", 1);
	GiveInventory("QuestMap18Survive", 1);
	GiveInventory("QuestMap18GetPrimarchsTaint", 1);
	GiveInventory("QuestMap18GreenPrimarch", 1);
	GiveInventory("QuestMap19PurplePrimarch", 1);
	GiveInventory("QuestMap18GetSacrificialSword", 1);
	GiveInventory("QuestMap19YellowPrimarch", 1);
	GiveInventory("QuestMap20BluePrimarch", 1);
	GiveInventory("QuestMap20RedPrimarch", 1);
	GiveInventory("QuestMap18HelpWoundedBearWarrior", 1);
	GiveInventory("QuestMap18HelpPitLordEberon", 1);
	GiveInventory("QuestMap18HelpFlameBeaconGhost", 1);
	GiveInventory("QuestMap20GetSoulKeyFragments", 1);
	GiveInventory("QuestMap19RescueLancer", 1);
	GiveInventory("QuestMap18EnterPortal", 1);
}
Script 998 (void) //Attack Baron's Citadel
{
	GiveInventory("QuestMap18GetPrimarchsTaint", 2);
	GiveInventory("QuestMap18GreenPrimarch", 1);
	GiveInventory("QuestMap19YellowPrimarch", 1);
	GiveInventory("QuestMap19PurplePrimarch", 1);
	GiveInventory("QuestMap20BluePrimarch", 1);
    GiveInventory("QuestMap20RedPrimarch", 1);
	GiveInventory("InventoryAngelFeather", 1);
}
Script 999 (void) //Level Start
{
	//ENTER
	//Friendly Spawner
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 741, 601, 160);
	}
	If(CheckInventory("IDEarthMotherCounter") > 0)
	{
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMotherStationary", 742, 602, 160);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 743, 603, 0);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 744, 604, 0);
	}
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 745, 605, 112);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 746, 606, 0);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 747, 607, 64);
	}
	If(CheckInventory("IDWitchCounter") > 0)
	{
		TakeInventory("IDWitchCounter", 1);
		SpawnSpotForced("IDWitchStationary", 748, 608, 32);
	}
	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
	{
		SpawnSpotForced("IDLancerStationary", 749, 609, 0);
	}
	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") > 0)
	{
		SpawnSpotForced("DwarfShieldguard", 750, 751, 0);
	}





	//RETURN
	//Reaver Envoy
	If(CheckInventory("InventoryAngelFeather") > 0 && CheckInventory("QuestMap18GetPrimarchsTaint") == 2 && CheckInventory("QuestMap18GreenPrimarch") == 1 && CheckInventory("QuestMap19PurplePrimarch") == 1 && CheckInventory("QuestMap19YellowPrimarch") == 1 && CheckInventory("QuestMap20BluePrimarch") == 1 && CheckInventory("QuestMap20RedPrimarch") == 1)
    {
	  SetLineSpecial(766, ACS_execute, 766, 0, 0, 0, 0);
	}

	//Blue Portal
	If(CheckInventory("ScriptHasActivatedRebelHideoutPortal") > 0)
	{
		SetLineSpecial(437, ACS_Execute, 84, 0, 0, 0, 0);
		SetLineTexture(437, SIDE_FRONT, TEXTURE_MIDDLE, "Portal01");
		SetLineTexture(437, SIDE_BACK, TEXTURE_MIDDLE, "Portal01");
		SpawnSpotForced("HedonTeleportFog", 438, 0, 0);
	}

	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

    //Salt Mine Elevator
	If(CheckProximity(0, "IDBannerBlacksmith", 360.0, 1, CPXF_NOZ))
	{
		FadeTo(0, 0, 0, 1.0, 0.0);
		Ceiling_MoveToValue(174, 9999, 1015, 1);
		Floor_MoveToValue(179, 9999, 1010, 1);
		Ceiling_MoveToValue(179, 9999, 1000, 1);
		Floor_MoveToValue(183, 9999, 906, 1);
		Ceiling_MoveToValue(183, 9999, 896, 1);
		TagWait(183);
		Thing_Move(0,341,1);
		FadeTo(0, 0, 0, 0.0, 5.0);
		Ceiling_MoveToValue(174, 32, 70, 1);
		Ceiling_MoveToValue(183, 32, 49, 0);
		Floor_MoveToValue(183, 32, 39, 0);
		Ceiling_MoveToValue(179, 32, 55, 1);
		Floor_MoveToValue(179, 32, 65, 1);
	}
	else
	{
		Ceiling_MoveToValue(174, 9999, 70, 1);
		Ceiling_MoveToValue(183, 9999, 49, 0);
		Floor_MoveToValue(183, 9999, 39, 0);
		Ceiling_MoveToValue(179, 9999, 55, 1);
		Floor_MoveToValue(179, 9999, 65, 1);
	}

	//Dialogue Resets
	dial629 = 8;

	//Ingrim Brew
	If(IsTIDUsed(665))
	{
		spec659 = 1;
	}

	//Bendi Garden
	If(GetSectorCeilingZ(684, 0, 0) > 271.0)
	{
		If(spec683 == 0)
		{
		  spec683 += 1;
		  Ceiling_MoveToValue(684, 999, 272, 0);
		  SetActorFlag(681, "INVISIBLE", 0);
		  Thing_Remove(682);
		}
		If(IsTIDUsed(687) == 0)
		{
		  SpawnSpotForced("HealthTomato", 686, 687, 0);
		}
	}

	//Small Port Lighthouse On
	If(CheckInventory("QuestMap20GetSoulKeyFragments") > 0 && Spec73a == 0)
	{
	Spec73a += 1;
	SetLineSpecial(519, 0, 0, 0, 0, 0, 0);
	Floor_RaiseByValue(394, 999, 96);
	FloorAndCeiling_LowerByValue(395, 999, 128);
	Sector_SetColor(419, 255, 255, 255, 0);
	Thing_Activate(420);
	SetActorFlag(397, "INVISIBLE", 0);
	Thing_Remove(396);
	Thing_Activate(398);
	ChangeFloor(399, "Crate4");
	Floor_RaiseByvalue(399, 999, 32);
	Sector_SetFloorScale2(399, 0.5, 0.5);
	ChangeFloor(400, "Crate4");
	Floor_RaiseByvalue(400, 999, 64);
	ChangeFloor(401, "Crate4");
	Floor_RaiseByvalue(401, 999, 96);
	Sector_SetFloorScale2(401, 0.5, 0.5);
	TagWait(401);
	SpawnSpotForced("AmmoBox", 402, 0, 0);
	SpawnSpotForced("Initiate", 403, 0, 128);
	SpawnSpotForced("Cultist", 404, 0, 96);
	SpawnSpotForced("Hellion", 405, 0, 96);
	SpawnSpotForced("Hellblaze", 406, 0, 80);
	Thing_Remove(409);
	Line_SetBlocking(408, 0, BLOCKF_PLAYERS);
	}

	//Shady Fixer Shop
	If(CheckInventory("QuestMap19YellowPrimarch") == 1 && Spec73b == 0)
	{
	Spec73b += 1;
	SpawnSpotForced("NPCShadyFixer", 523, 635, 192);
	SetActorFlag(524, "INVISIBLE", 0);
	SetActorFlag(525, "INVISIBLE", 0);
	SetActorFlag(528, "INVISIBLE", 0);
	ChangeFloor(344, "Stone05");
	Floor_MoveToValue(344, 999, 167, 0);
	ChangeFloor(345, "Crate4");
	ChangeFloor(346, "Crate1");
	ChangeFloor(347, "Crate2");
	ChangeFloor(348, "Crate3");
	SetLineTexture(349, SIDE_FRONT, TEXTURE_BOTTOM, "Crate4");
	SetLineTexture(350, SIDE_FRONT, TEXTURE_BOTTOM, "Crate1");
	SetLineTexture(351, SIDE_FRONT, TEXTURE_BOTTOM, "Crate3");
	SetLineTexture(352, SIDE_FRONT, TEXTURE_BOTTOM, "Crate2");
	Line_SetBlocking(527, BLOCKF_PLAYERS, 0);
	}

	//Bury the Dead
	ACS_Execute(718, 0, 0, 0, 0);
}