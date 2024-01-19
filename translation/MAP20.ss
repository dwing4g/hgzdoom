#include "zcommon.acs"

//Gold - 200 + 70s
//TIDs - 650, 651, 652, 653... 689... 800... 803

//LEVEL START
Script 1 ENTER
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Actor Changes
	SetActorFlag(98, "INVISIBLE", 1);

	SetActorFlag(358, "FLOATBOB", 1);
	SetActorFlag(388, "NOCLIP", 1);
	SetActorFlag(398, "INVISIBLE", 1);

	SetActorFlag(444, "WALLSPRITE", 0);
	SetActorFlag(444, "FLATSPRITE", 1);

	SetActorFlag(458, "INVISIBLE", 1);

	SetActorFlag(466, "INVISIBLE", 1);
	SetActorFlag(466, "NOBLOCKMAP", 1);

	SetActorProperty(479, Aprop_Health, 4000);
	SetActorFlag(479, "DROPOFF", 1);
	SetActorFlag(479, "NOINFIGHTING", 1);
	SetActorProperty(480, Aprop_Health, 1500);
	//SetActorProperty(480, Aprop_Speed, 75.0);
	SetActorFlag(480, "DROPOFF", 1);
	SetActorFlag(480, "NOINFIGHTING", 1);
	SetActorFlag(481, "DROPOFF", 1);
	SetActorFlag(482, "DROPOFF", 1);
	SetActorFlag(479, "FULLVOLACTIVE", 0);
	SetActorFlag(480, "FULLVOLACTIVE", 0);

	SetActorFlag(488, "NOCLIP", 1);
	SetActorFlag(488, "NOINTERACTION", 1);

	SetActorFlag(524, "NOCLIP", 1);
	SetActorFlag(524, "NOINTERACTION", 1);

	SetActorFlag(536, "INVISIBLE", 1);

	SetActorFlag(543, "INVISIBLE", 1);

	SetActorFlag(608, "NOINTERACTION", 1);

	SetActorFlag(551, "NOBLOCKMAP", 1);
	SetActorFlag(551, "RELATIVETOFLOOR", 1);
	SetActorFlag(551, "MOVEWITHSECTOR", 1);
	SetActorFlag(551, "SOLID", 0);
	SetActorFlag(551, "FLOORCLIP", 0);
	SetActorFlag(551, "NOCLIP", 1);
	SetActorFlag(551, "DONTSPLASH", 1);

	SetActorFlag(700, "NODAMAGE", 1);
	SetActorFlag(750, "NODAMAGE", 1);
	SetActorFlag(706, "NODAMAGE", 1);
	SetActorFlag(708, "NODAMAGE", 1);
	SetActorFlag(711, "NODAMAGE", 1);
	SetActorFlag(712, "NODAMAGE", 1);
	SetActorFlag(713, "NODAMAGE", 1);
	SetActorFlag(714, "NODAMAGE", 1);
	SetActorFlag(715, "NODAMAGE", 1);
	SetActorFlag(716, "NODAMAGE", 1);
	SetActorFlag(717, "NODAMAGE", 1);
	SetActorFlag(718, "NODAMAGE", 1);
	SetActorFlag(719, "NODAMAGE", 1);
	SetActorFlag(734, "NODAMAGE", 1);
	SetActorFlag(737, "NODAMAGE", 1);
	SetActorFlag(740, "NODAMAGE", 1);

	SetActorFlag(619, "NOTONAUTOMAP", 1);
	SetActorFlag(620, "NOTONAUTOMAP", 1);
	SetActorFlag(685, "NOTONAUTOMAP", 1);

	SetActorFlag(646, "INVISIBLE", 1);

	SetActorFlag(689, "WALLSPRITE", 0);
	SetActorFlag(689, "FLATSPRITE", 1);


	//Ghosts
	GiveActorInventory(50, "IsGhost", 1);
	SetActorProperty(50, APROP_Alpha, 0.0);
	SetActorFlag(50, "NOTONAUTOMAP", 1);
	SetActorFlag(50, "NOBLOOD", 1);
	SetActorFlag(50, "NOPAIN", 1);
	SetActorFlag(50, "NOFEAR", 1);
	SetActorFlag(50, "DONTDRAIN", 1);
	SetActorFlag(50, "NOTIMEFREEZE", 1);
	SetActorFlag(50, "DONTTHRUST", 1);
	SetActorFlag(50, "SOLID", 0);

	GiveActorInventory(84, "IsGhost", 1);
	SetActorFlag(84, "NOBLOOD", 1);
	SetActorFlag(84, "NOPAIN", 1);
	SetActorFlag(84, "NOFEAR", 1);
	SetActorFlag(84, "DONTDRAIN", 1);
	SetActorFlag(84, "NOTIMEFREEZE", 1);
	SetActorFlag(84, "DONTTHRUST", 1);
	SetActorFlag(84, "SOLID", 0);

	GiveActorInventory(264, "IsGhost", 1);
	SetActorProperty(264, APROP_Alpha, 0.0);
	SetActorFlag(264, "NOTONAUTOMAP", 1);
	SetActorFlag(264, "NOBLOOD", 1);
	SetActorFlag(264, "NOPAIN", 1);
	SetActorFlag(264, "NOFEAR", 1);
	SetActorFlag(264, "DONTDRAIN", 1);
	SetActorFlag(264, "NOTIMEFREEZE", 1);
	SetActorFlag(264, "DONTTHRUST", 1);
	SetActorFlag(264, "SOLID", 0);
}


//RETURN
int spec44a = 0;
int spec44b = 0;
int dial115 = 5;
int dial110 = 18;
int dial113 = 16;
Script 44 RETURN
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Teleport Fog
	SpawnSpotForced("HedonTeleportFog", 656, 0, 0);

	//Dialogue Resets
	dial115 = 5;
	dial110 = 19;
	If(CheckInventory("QuestMap18EnterPortal") > 0)
	{
	  dial113 = 27;
	}

	//Elevator Start & Reset
	If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	{
	    FadeTo(0, 0, 0, 1.0, 0.0);
		Ceiling_MoveToValue(383, 9999, 896, 1);
		Floor_MoveToValue(383, 9999, 906, 1);
		Ceiling_MoveToValue(379, 9999, 1000, 1);
		Floor_MoveToValue(379, 9999, 1010, 1);
		Ceiling_MoveToValue(374, 9999, 1015, 1);
		TagWait(374);
		Thing_Move(0,359,1);
		FadeTo(0, 0, 0, 0.0, 5.0);
		Ceiling_MoveToValue(374, 32, 2207, 1);
		Ceiling_MoveToValue(383, 32, 2088, 1);
		Floor_MoveToValue(383, 32, 2098, 1);
		Ceiling_MoveToValue(379, 32, 2192, 1);
		Floor_MoveToValue(379, 32, 2202, 1);
	}
	else
	{
		Ceiling_MoveToValue(374, 9999, 2207, 1);
		Floor_MoveToValue(383, 9999, 2098, 1);
		Ceiling_MoveToValue(383, 9999, 2088, 1);
		Floor_MoveToValue(379, 9999, 2202, 1);
		Ceiling_MoveToValue(379, 9999, 2192, 1);
	}

	//Monster Spawns
	If(CheckInventory("DarkKey") > 0 && spec44a == 0)
	{
		spec44a += 1;
		SpawnSpotForced("Warlock", 673, 0, 64);
		SpawnSpotForced("Golem", 674, 0, 64);
	}
	If(CheckInventory("BloodKey") > 0 && spec44b == 0)
	{
		spec44b += 1;
		SpawnSpotForced("Concsript", 675, 677, 192);
		SpawnSpotForced("Initiate", 676, 0, 192);
		SetActorFlag(677, "FRIGHTENED", 1);
	}
}

//LEVEL END
//Portal Exit
Script 119 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	GiveInventory("ScriptHasActivatedRebelHideoutPortal", 1);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map18", 4, CHANGELEVEL_NOINTERMISSION, -1);
}
//Dirt Crypt Exit
Script 118 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map19", 5, CHANGELEVEL_NOINTERMISSION, -1);
}
//New Crypt Exit
Script 45 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map18", 3, CHANGELEVEL_NOINTERMISSION, -1);
}
//Elevator Exit
Script 43 (void)
{
	If(GetSectorCeilingZ(374, 0, 0) == -2207.0)
	{
	  PlaySound(380, "Interaction/RopeTie", CHAN_AUTO);
	  Ceiling_LowerByValue(373, 16, 16);
	  FloorAndCeiling_LowerByvalue(378, 16, 16);
	  Line_SetBlocking(381, BLOCKF_PLAYERS, 0);
	  TagWait(373);
	  TagWait(378);
	  Ceiling_RaiseByValue(373, 8, 16);
	  FloorAndCeiling_RaiseByvalue(378, 8, 16);

	  Ceiling_MoveToValue(374, 32, 1015, 1);
	  Ceiling_MoveToValue(383, 32, 896, 1);
	  Floor_MoveToValue(383, 32, 906, 1);
	  Ceiling_MoveToValue(379, 32, 1000, 1);
	  Floor_MoveToValue(379, 32, 1010, 1);

	  Delay(70);
	  If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	  {
		  FadeTo(0, 0, 0, 1.0, 5.0);
	  }

	  TagWait(374);
	  Line_SetBlocking(381, 0, BLOCKF_PLAYERS);
	  ChangeFloor(366, "Ash1");

	  If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	  {
	    ACS_NamedExecuteWithResult("KeyCheck");
		ACS_NamedExecuteWithResult("TakePowerups");
		ACS_NamedExecuteWithResult("CloseJournal");
		Delay(4);
	    Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	    Delay(4);
	    ChangeLevel("Map18", 2, CHANGELEVEL_NOINTERMISSION, -1);
	  }
	}
}

//LIFT CRUSHER
Script 9 ENTER
{
	SectorDamage(90, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(803, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(103, 6, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(159, 3, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(163, 3, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(167, 3, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(171, 3, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}


//NEW CRYPTS
//New Crypt Traps
Script 2 (void)
{
	Floor_LowerByValue(43, 8, 4);
	TagWait(43);
	SpawnProjectile(41, "ProjectileSpiritMissile", 64, 120, 0, 0, 0);
	SpawnProjectile(42, "ProjectileSpiritMissile", 192, 120, 0, 0, 0);
	Delay(8);
	Floor_RaisebyValue(43, 1, 4);
	TagWait(43);
}
Script 3 (void)
{
	Floor_LowerByValue(46, 8, 4);
	TagWait(46);
	SpawnProjectile(44, "ProjectileSpiritMissile", 64, 120, 0, 0, 0);
	SpawnProjectile(45, "ProjectileSpiritMissile", 192, 120, 0, 0, 0);
	Delay(8);
	Floor_RaisebyValue(46, 1, 4);
	TagWait(46);
}
Script 5 (void)
{
	If(GetActorZ(0) < -744.0)
	{
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(48, "ProjectileHellblazeHellBall", 10, 120, 0, 0, 0);
	Delay(3);
	SpawnProjectile(49, "ProjectileHellblazeHellBall", 118, 120, 0, 0, 0);
	Delay(3);
	}
}
Script 6 (void)
{
	SpawnProjectile(51, "ProjectileSawblade", 192, 200, 0, 0, 650);
	PlaySound(51, "Magic/Shrapnel", CHAN_AUTO);
	Delay(1);
	SpawnProjectile(52, "ProjectileSawblade", 64, 200, 0, 0, 650);
	PlaySound(52, "Magic/Shrapnel", CHAN_AUTO);
	Delay(1);
	SetActorFlag(650, "THRUSPECIES", 0);
	Delay(16);
}

//New Crypt Rope Arrow
Script 61 (void)
{
	If(GetActorZ(0) > -712.0 && GetActorZ(0) < -499.0)
	{
		PlaySound(471, "Interaction/RopeTie", CHAN_AUTO, random(0.2, 0.8));
		Delay(16);
	}
}

//New Crypt Bone Pit Ghosts
Script 4 (void)
{
	SetLineSpecial(47, 0, 0, 0, 0, 0, 0);
	Thing_Activate(50);
	SetActorProperty(50, APROP_Alpha, 0.05);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(50, APROP_Alpha, 0.4);
	Delay(4);
}

//New Crypt Grates Raise
Script 7 (void)
{
	SpawnSpotForced("IronMaiden", 475, 0, 64);
	SpawnSpotForced("Cultist", 474, 0, 192);
	SpawnSpotForced("Crawler", 473, 0, 128);
	SpawnSpotForced("Initiate", 472, 0, 0);
	Ceiling_RaiseByValue(20, 8, 90);
	Ceiling_RaiseByValue(470, 3, 90);
	Ceiling_RaiseByValue(477, 2, 90);
	Ceiling_RaiseByValue(36, 4, 128);
	Thing_Activate(84);
	Delay(350);
	Thing_Hate(84, 0, 4);
}

//New Crypt Wraparound Ambush
Script 62 (void)
{
	If(GetSectorCeilingZ(470,0,0) > -400.0)
	{
		SetLineSpecial(478, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("Initiate", 476, 0, 0);
	}
}

//New Crypt Chapel Ambush
Script 13 (void)
{
	SetLineSpecial(111, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(111, 0, BLOCKF_SIGHT);

	Delay(8);
	Thing_Remove(112);
	Delay(8);

	Light_Fade(100, 120, 16);
	PlaySound(98, "Interaction/FireBlow", CHAN_AUTO);
	Thing_Activate(104);
	SetActorFlag(98, "INVISIBLE", 0);
	SetActorState(683, "Special", 0);
	Thing_Remove(684);
}

//New Crypt Chapel Wells
Script 14 (void)
{
	If(CheckInventory("InventoryCursedChalice") > 0 || CheckInventory("InventoryCursedChaliceBlood") > 0 || CheckInventory("InventoryCursedChaliceMana") > 0)
	{
		TakeInventory("InventoryCursedChalice", 1);
		TakeInventory("InventoryCursedChaliceBlood", 1);
		TakeInventory("InventoryCursedChaliceMana", 1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Delay(12);
		SpawnSpotForced("InventoryCursedChaliceOil", 116, 0, 0);
		PlaySound(116, "Metal/Land", CHAN_AUTO);
	}
	else
	If(CheckInventory("InventoryCursedChalice") == 0 || CheckInventory("InventoryCursedChaliceBlood") == 0 || CheckInventory("InventoryCursedChaliceMana") == 0 || CheckInventory("InventoryCursedChaliceOil") > 0)
	{
		Print(s:"The demonic well burns with hellfire oil.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 15 (void)
{
	If(CheckInventory("InventoryCursedChalice") > 0 || CheckInventory("InventoryCursedChaliceOil") > 0 || CheckInventory("InventoryCursedChaliceMana") > 0)
	{
		TakeInventory("InventoryCursedChalice", 1);
		TakeInventory("InventoryCursedChaliceOil", 1);
		TakeInventory("InventoryCursedChaliceMana", 1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Delay(12);
		SpawnSpotForced("InventoryCursedChaliceBlood", 115, 0, 0);
		PlaySound(115, "Metal/Land", CHAN_AUTO);
	}
	else
	If(CheckInventory("InventoryCursedChalice") == 0 || CheckInventory("InventoryCursedChaliceOil") == 0 || CheckInventory("InventoryCursedChaliceMana") == 0 || CheckInventory("InventoryCursedChaliceBlood") > 0)
	{
		Print(s:"The demonic well bubbles with sacrificial blood.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}

//New Crypt Body Gem
Script 16 (void)
{
	If(CheckInventory("InventoryBodyGem") > 0 && GetSectorFloorZ(106, 0, 0) == -5.0)
	{
		TakeInventory("InventoryBodyGem", 1);
		PlaySound(113, "Ammo/DepletedShardBounce", CHAN_AUTO, 1.0);
		SetLineTexture(114, SIDE_FRONT, TEXTURE_BOTTOM, "SLAB6");

		Delay(16);
		Floor_MoveToValue(106, 8, 100, 1);
		TagWait(106);
	}
	else
	If(GetSectorFloorZ(106, 0, 0) == -5.0)
	{
		Print(s:"The stone socle appears to be missing a gem.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}

//New Crypt Unholy Elevator
Script 8 (void)
{
	Floor_MoveToValue(85, 12, 485, 1);
	Ceiling_MoveToValue(85, 12, 469, 1);
	Floor_MoveToValue(90, 12, 486, 1);
	Ceiling_MoveToValue(90, 12, 485, 1);
	Floor_MoveToValue(86, 12, 481, 1);
	Ceiling_MoveToValue(86, 12, 473, 1);
	TagWait(90);
	TagWait(85);
	Delay(70);
	Floor_MoveToValue(85, 12, 125, 1);
	Ceiling_MoveToValue(85,12, 109, 1);
	Ceiling_MoveToValue(90,12, 125, 1);
	Floor_MoveToValue(90, 12, 126, 1);
	Floor_MoveToValue(86, 12, 121, 1);
	Ceiling_MoveToValue(86, 12, 113, 1);
	TagWait(85);
	TagWait(90);
	Delay(70);
	Restart;
}

//New Crypt Stairs Puzzle
int spec24 = 0;
int spec25 = 0;
int spec26 = 0;
int spec27 = 0;
Script 21 (void)
{
  If(GetSectorCeilingZ(159, 0, 0) == -733.0 && GetSectorCeilingZ(163, 0, 0) == -733.0 && GetSectorCeilingZ(167, 0, 0) == -733.0 && GetSectorCeilingZ(171, 0, 0) == -733.0)
  {
	If(Spec24 == 1 && Spec25 == 1 && Spec26 == 1 && Spec27 == 1)
	{
	SetLineSpecial(183, 0, 0, 0, 0, 0, 0);
	Delay(16);
	Radius_Quake(1, 105, 0, 10, 182);
	Delay(16);

	Ceiling_RaiseByValue(176, 8, 80);

	Floor_MoveTovalue(140, 16, 561, 1);
	Floor_MoveTovalue(141, 16, 569, 1);
	Floor_MoveTovalue(142, 16, 577, 1);
	Floor_MoveTovalue(143, 16, 585, 1);
	Floor_MoveTovalue(144, 16, 593, 1);
	Floor_MoveTovalue(145, 16, 601, 1);
	Floor_MoveTovalue(146, 16, 609, 1);
	Floor_MoveTovalue(147, 16, 617, 1);

	Floor_MoveTovalue(148, 16, 625, 1);
	Floor_MoveTovalue(149, 16, 633, 1);
	Floor_MoveTovalue(150, 16, 641, 1);
	Floor_MoveTovalue(151, 16, 649, 1);
	Floor_MoveTovalue(152, 16, 657, 1);
	Floor_MoveTovalue(153, 16, 665, 1);
	Floor_MoveTovalue(154, 16, 673, 1);
	Floor_MoveTovalue(155, 16, 681, 1);
	}
	else
	{
		SpawnSpotForced("SmokeGenerator", 160, 651, 0);
		SpawnSpotForced("SmokeGenerator", 164, 652, 0);
		SpawnSpotForced("SmokeGenerator", 168, 653, 0);
		SpawnSpotForced("SmokeGenerator", 172, 654, 0);
		Delay(16);
		Spec24 = 0;
		Ceiling_MoveToValue(159, 8, 745, 1);
		Spec25 = 0;
		Ceiling_MoveToValue(163, 8, 745, 1);
		Spec26 = 0;
		Ceiling_MoveToValue(167, 8, 745, 1);
		Spec27 = 0;
		Ceiling_MoveToValue(171, 8, 745, 1);

		Thing_Remove(651);
		Thing_Deactivate(161);
		PlaySound(160, "Interaction/Smother", CHAN_AUTO);
		Thing_Remove(652);
		Thing_Deactivate(165);
		PlaySound(164, "Interaction/Smother", CHAN_AUTO);
		Thing_Remove(653);
		Thing_Deactivate(169);
		PlaySound(168, "Interaction/Smother", CHAN_AUTO);
		Thing_Remove(654);
		Thing_Deactivate(173);
		PlaySound(172, "Interaction/Smother", CHAN_AUTO);
	}
  }
}
Script 24 (void)
{
	If(CheckInventory("InventoryCursedChaliceOil") > 0 && GetSectorCeilingZ(159, 0, 0) == -745.0)
	{
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(159, 8, 733, 1);
		TagWait(159);
		SpawnSpotForced("FireTinyLooping", 160, 651, 0);
		SetActorProperty(651, APROP_ScaleX, 2.0);
		SetActorProperty(651, APROP_ScaleY, 2.0);
		PlaySound(160, "Weapons/FlameDeath", CHAN_AUTO);
		Thing_Activate(161);
		If(spec24 == 0 && spec25 == 0 && spec26 == 0 && spec27 == 0)
		{
			Spec24 = 1;
		}
		else
		{
		    Spec24 = 0;
		}
		ACS_Execute(21, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryCursedChaliceOil") == 0)
	  {
	      Print(s:"The bottom of the font has a few drops of burning oil.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}
Script 25 (void)
{
	If(CheckInventory("InventoryCursedChaliceOil") > 0 && GetSectorCeilingZ(163, 0, 0) == -745.0)
	{
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(163, 8, 733, 1);
		TagWait(163);
		SpawnSpotForced("FireTinyLooping", 164, 652, 0);
		SetActorProperty(652, APROP_ScaleX, 2.0);
		SetActorProperty(652, APROP_ScaleY, 2.0);
		PlaySound(164, "Weapons/FlameDeath", CHAN_AUTO);
		Thing_Activate(165);
		If(spec24 == 1 && spec25 == 0 && spec26 == 0 && spec27 == 1)
		{
			Spec25 = 1;
		}
		else
		{
		    Spec25 = 0;
		}
		ACS_Execute(21, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryCursedChaliceOil") == 0)
	  {
	      Print(s:"The bottom of the font has a few drops of burning oil.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}
Script 26 (void)
{
	If(CheckInventory("InventoryCursedChaliceOil") > 0 && GetSectorCeilingZ(167, 0, 0) == -745.0)
	{
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(167, 8, 733, 1);
		TagWait(167);
		SpawnSpotForced("FireTinyLooping", 168, 653, 0);
		SetActorProperty(653, APROP_ScaleX, 2.0);
		SetActorProperty(653, APROP_ScaleY, 2.0);
		PlaySound(168, "Weapons/FlameDeath", CHAN_AUTO);
		Thing_Activate(169);
		If(spec24 == 1 && spec25 == 1 && spec26 == 0 && spec27 == 1)
		{
			Spec26 = 1;
		}
		else
		{
		    Spec26 = 0;
		}
		ACS_Execute(21, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryCursedChaliceOil") == 0)
	  {
	      Print(s:"The bottom of the font has a few drops of burning oil.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}
Script 27 (void)
{
	If(CheckInventory("InventoryCursedChaliceOil") > 0 && GetSectorCeilingZ(171, 0, 0) == -745.0)
	{
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(171, 8, 733, 1);
		TagWait(171);
		SpawnSpotForced("FireTinyLooping", 172, 654, 0);
		SetActorProperty(654, APROP_ScaleX, 2.0);
		SetActorProperty(654, APROP_ScaleY, 2.0);
		PlaySound(172, "Weapons/FlameDeath", CHAN_AUTO);
		Thing_Activate(173);
		If(spec24 == 1 && spec25 == 0 && spec26 == 0 && spec27 == 0)
		{
			Spec27 = 1;
		}
		else
		{
		    Spec27 = 0;
		}
		ACS_Execute(21, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryCursedChaliceOil") == 0)
	  {
	      Print(s:"The bottom of the font has a few drops of burning oil.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//Teleports
Script 22 (void)
{
	Teleport_Nofog(180, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 180, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 23 (void)
{
	Teleport_Nofog(181, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 181, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 41 (void)
{
	Teleport_Nofog(285, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 285, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 42 (void)
{
	Teleport_Nofog(286, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 286, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}





//OLD CRYPTS
//Old Crypt Primarch Cathedral Doors
Script 65 (void)
{
	If(GetSectorFloorZ(503,0,0) == -588.0 && CheckInventory("IronKey") > 0)
	{
		SetLineSpecial(801, 0, 0, 0, 0, 0, 0);
		Floor_LowerByValue(504, 16, 90);
		Delay(16);
		Floor_MoveToValue(503, 10, 682, 1);
	}
	else
	If(GetSectorFloorZ(503,0,0) == -588.0 && CheckInventory("IronKey") == 0)
	{
		Print(s:"This switch requires an Iron key to operate.");
		Delay(35);
	}
}
Script 66 (void)
{
	If(GetSectorCeilingZ(505,0,0) == -558.0 && CheckInventory("IronKey") > 0)
	{
		SetLineSpecial(802, 0, 0, 0, 0, 0, 0);
		Ceiling_RaiseByValue(505, 8, 76);
	}
	else
	If(GetSectorCeilingZ(505,0,0) == -558.0 && CheckInventory("IronKey") == 0)
	{
		Print(s:"This switch requires an Iron key to operate.");
		Delay(35);
	}
}
Script 67 (void)
{
	If(CheckInventory("IronKey") > 0 && GetActorZ(0) < -571.0)
	{
		SetLineSpecial(507, 0, 0, 0, 0, 0, 0);
		Floor_LowerByValue(506, 8, 48);
		TagWait(506);
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		Floor_LowerByValue(508, 8, 120);
		TagWait(508);
		Ceiling_RaiseByvalue(497, 8, 104);
	}
	else
	If(CheckInventory("IronKey") == 0 && GetActorZ(0) < -571.0)
	{
		Print(s:"This switch requires an Iron key to operate.");
		Delay(35);
	}
}



//Old Crypt Chapel Secret
Script 28 (void)
{
	If(CheckInventory("InventoryCursedChaliceBlood") > 0 && GetSectorCeilingZ(195, 0, 0) == -549.0)
	{
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_RaiseByValue(195, 4, 24);
		TagWait(195);
		Thing_Activate(196);
		PlaySound(196, "interaction/Boil", CHAN_AUTO);
		Radius_Quake(1, 210, 0, 1, 0);
		Delay(35);
		Floor_LowerByvalue(197, 8, 24);
		Floor_LowerByvalue(198, 8, 48);
		Floor_LowerByvalue(199, 8, 72);
		Floor_LowerByvalue(200, 8, 96);
		Floor_LowerByvalue(201, 8, 120);
		Floor_LowerByvalue(202, 8, 144);
		TagWait(202);
		Thing_Activate(205);
		SetActorState(206, "Special", 0);
		PlaySound(206, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(35);
		SpawnSpotForced("HedonTeleportFogDemon", 204, 0, 0);
	    PlaySound(204, "misc/teleport", CHAN_AUTO);
        Delay(8);
	    SpawnSpotForced("PitLord", 204, 0, 192);
		SpawnSpotForced("HedonTeleportFogDemon", 203, 0, 0);
	    PlaySound(203, "misc/teleport", CHAN_AUTO);
        Delay(8);
	    SpawnSpotForced("Hellblaze", 203, 0, 192);
	}
	else
	If(CheckInventory("InventoryCursedChaliceBlood") == 0 && GetSectorCeilingZ(195, 0, 0) == -549.0)
	  {
	      Print(s:"The bottom of the font has a few drops of blood.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//DIRT CRYPTS
//Breakable Wall
Script 12 (void)
{
  If((CheckInventory("InventoryPickaxe") > 0 || CheckInventory("InventorySledgehammer") > 0)  && GetSectorCeilingZ(108, 0, 0) == 20.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(108, 9999, 100);
	PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
	SpawnSpotForced("DustCloud", 110, 0, 0);
	Thing_Remove(109);
  }
    else
	  If(GetSectorCeilingZ(108, 0, 0) == 20.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//BLUE PRIMARCH
//Dialogue
int spec102 = 3;
int spec102b = 0;
int dial102 = 4;
int dial102b = 4;
Script 104 (void)
{
	If(CheckInventory("InventoryManaPotion") > 0 || CheckInventory("InventoryCursedChaliceMana") > 0)
	{
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
      Hudmessage(s:"Grimy Primacrh Avatar:    ...who are you?...you have mana?... I need... mana..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 1.5, 1.2, 2.5);
	}
	else
	{
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
      Hudmessage(s:"Grimy Primacrh Avatar:    ...who are you?... who am I?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 1.5, 1.2, 2.5);
	}
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
	  Delay(6*35);
	  PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    Scorlag, you pathetic, decrepit wretch..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.90, 4.5, 0.2, 1.5);
	}
}
Script 102 (void)
{
	If(CheckInventory("QuestMap20BluePrimarch") == 1)
	{
		Print(s:"The primarch's avatar remains silent.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	    Delay(35);
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 0 && CheckInventory("InventoryManaPotion") > 0)
	{
		SetWeapon("Fists");
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(16);

		SpawnSpotForced("WaterSplashGenerator", 621, 658, 0);
		Delay(8);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		Delay(16);
		Thing_Remove(658);

		Delay(35);
		SpawnSpotForced("IDEmptyPotionGlass", 681, 0, 0);
		PlaySound(681, "Ammo/FragfireCanBounce", CHAN_AUTO);

		PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	    Hudmessage(s:"Scorlag:    ...uegh!!! Why torment me with such a tiny sip?!... there is an Everflowing Chalice in the upper crypts... use it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 1.2, 2.5);
		Delay(6*35);
		spec102b += 1;
		spec102 = 4;
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 0 && CheckInventory("InventoryCursedChaliceMana") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(8);

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(35);

		SpawnSpotForced("WaterSplashGenerator", 621, 658, 0);
		Delay(8);

		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 230, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		TranslucentLine(622, 215, 0);
		Delay(16);
		PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	    Hudmessage(s:"Scorlag:    ...yes!!! Give Scorlag more mana!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		SpawnSpotForced("CaveOreVeinB", 623, 659, 0);
		SetActorFlag(659, "INVISIBLE", 1);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 190, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 165, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 140, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 115, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 90, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 65, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 40, 0);
		Delay(16);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 15, 0);
		Delay(16);
		TakeInventory("InventoryCursedChaliceMana", 1);
		GiveInventory("InventoryCursedChalice", 1);
		PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	    Hudmessage(s:"Sweet mana...I can see now! Wait... who ARE you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 0.2, 2.5);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 10, 0);
		Delay(16);
		Thing_Remove(658);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO, random(0.4,1.0));
		TranslucentLine(622, 10, 0);
		Delay(16);
		Delay(3*35);
		Radius_Quake(5, 210, 0, 1, 0);
		FadeTo(80, 200, 255, 1.0, 3.0);
		Thing_Remove(659);
		PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	    Hudmessage(s:"YOU'RE AN INTRUDER! HELP! HEEELP!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 0.2, 1.5);
		Thing_Remove(625);
		Thing_Activate(624);
		PlaySound(624, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(3*35);
		SetLineSpecial(636, ACS_Execute, 107, 0, 0, 0, 0);
		SetLineTexture(627, SIDE_FRONT, TEXTURE_MIDDLE, "Water_G1");
		Line_SetBlocking(627, BLOCKF_EVERYTHING, 0);
		Delay(35);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		PlaySound(0, "HellMine/Burst", CHAN_AUTO, 0.4);
		PlaySound(0, "Magic/Dispel", CHAN_AUTO);
		ThrustThing(0, 50, 1, 0);
		ThrustThingZ(0, 15, 0, 1);
		FadeTo(80, 200, 255, 0.0, 0.5);
		Delay(16);

		Delay(35);
		SpawnSpotForced("HedonTeleportFogDemon", 630, 660, 0);
		PlaySound(630, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpotForced("PitLord", 630, 660, 0);
		NoiseAlert(0,0);

		Delay(70);
		SpawnSpotForced("HedonTeleportFogDemon", 629, 660, 0);
		PlaySound(629, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpotForced("Hellion", 629, 660, 128);
		NoiseAlert(0,0);

		Delay(105);
		Thing_Activate(628);

		Delay(280);
		SpawnSpotForced("HedonTeleportFogDemon", 626, 660, 0);
		PlaySound(626, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpotForced("Hellblaze", 626, 0, 128);
		NoiseAlert(0,0);

		Delay(105);
		Thing_Activate(631);

		Delay(280);
		SpawnSpotForced("HedonTeleportFogDemon", 632, 660, 0);
		PlaySound(632, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpotForced("Glutton", 632, 660, 0);
		NoiseAlert(0,0);

		Delay(105);
		Thing_Activate(633);

		Delay(280);
		SpawnSpotForced("HedonTeleportFogDemon", 634, 660, 0);
		PlaySound(634, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpotForced("Cerberus", 634, 660, 0);
		NoiseAlert(0,0);

		Delay(105);
		Thing_Activate(635);
		SetLineSpecial(636, 0, 0, 0, 0, 0, 0);
		ACS_Execute(106, 0, 0, 0, 0);

    }
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 0 && CheckInventory("InventoryCursedChaliceMana") == 0)
	{
	  If(spec102 % 3 == 0)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Grimy Primarch:    ...who are you?...do you have mana?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
	  spec102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(spec102 % 3 == 1 && spec102b > 0)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Grimy Primarch:    ...the grime...mana...I need mana...bring it to me in the Chalice..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 1.2, 2.5);
	  spec102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(spec102 % 3 == 1)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Grimy Primarch:    ...the grime...mana...I need mana..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
	  spec102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(spec102 % 3 == 2)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Grimy Primarch:    ...a thirst that burns so deeply..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
	  spec102 += 1;
	  Delay(2*35);
	  }
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 2 && CheckInventory("InventoryElixirOfDeath") == 0)
	{
	  If(dial102 % 4 == 0)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...oil...mana...poison...green...pink...phylactery...death..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102 % 4 == 1)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...hell oil...mana...poison...swiftly kills the body."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102 % 4 == 2)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...green and pink arcane...extinguishes the soul."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102 % 4 == 3)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...pour it in a phylactery...a liquid so foul..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	  }
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 2 && CheckInventory("InventoryElixirOfDeath") > 0 && CheckInventory("InventoryElixirOfLife") > 0)
	{
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...life and death...you have them...you feel their power...so alluring...offer them to me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 2.5);
	  Delay(12*35);
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") == 2 && CheckInventory("InventoryElixirOfDeath") > 0)
	{
	  If(dial102b % 4 == 0)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...you bring me death...but where is life?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial102b += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102b % 4 == 1)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...the vision...remember...the vision..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial102b += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102b % 4 == 2)
	  {
	  PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...what is death without life?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial102b += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial102b % 4 == 3)
	  {
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Hudmessage(s:"Scorlag:    ...you've seen it...the vision...the shewolf of your clan carries life..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102b += 1;
	  Delay(2*35);
	  }
	}
}
Script 107 (void)
{
	PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
    Hudmessage(s:"Grimy Primacrh Avatar:    NOOO!!! LEAVE ME ALONE!!! HELP!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 1.5);
	Delay(8*35);
}
Script 106 (void)
{
	If(ThingCount(T_NONE, 660) == 0 && ThingCount(T_NONE, 628) == 0 && ThingCount(T_NONE, 631) == 0 && ThingCount(T_NONE, 633) == 0 && ThingCount(T_NONE, 635) == 0)
	{
		Delay(70);
		PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
        Hudmessage(s:"Scorlag:    You have demonic blood running through your veins... but there is more than meets the eye..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
		Delay(5*35);
		Radius_Quake(6, 385, 0, 20, 624);
		ACS_Execute(48, 0, 0, 0, 0);
		Delay(3*35);
		PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
        Hudmessage(s:"...let us see... who ARE you?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 4.5);
		FadeTo(80, 200, 255, 1.0, 5.0);
		Delay(5*35);
		SetMugshotState("Sleep");
		FadeTo(0, 0, 0, 1.0, 3.0);
		ACS_NamedExecuteWithResult("TakeWeapons");
	    ACS_NamedExecuteWithResult("TakeConsumables");
		Delay(3*35);
		Teleport_NoFog(637, 1, 0);
		Thing_Activate(668);
		FadeTo(0, 0, 0, 0.0, 2.0);
		SetMugshotState("Normal");
		Delay(70);
		Terminate;

	}
	Delay(16);
	Restart;
}
Script 105 (void)
{
	Thing_Remove(638);

	SetLineTexture(627, SIDE_FRONT, TEXTURE_MIDDLE, "");
	Line_SetBlocking(627, 0, BLOCKF_EVERYTHING);
	SetLineSpecial(636, ACS_Execute, 102, 0, 0, 0, 0);

	ACS_Execute(108, 0, 0, 0, 0);
	Delay(70);
	PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	Hudmessage(s:"Scorlag:    ...the orcs who defied their nature...the orcs who broke their mortal bonds."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
	PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	Hudmessage(s:"...their bold quest reaching its climax as they drank from the Fountain of Life... eternal Life. Beauty. Strength."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
    PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	Hudmessage(s:"We share something... for I am the Primarch of Transformation... the patron of alchemy... the vessel of alteration."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
    PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
	Hudmessage(s:"You seek to slay the Blue Baron in pursuit of your own kind's salvation... I am not to judge your motivations..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
	Delay(8*35);
	PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	Hudmessage(s:"...but if you wish to prove worthy of dethroning him... bring me the Elixir of Death... and the Elixir of Life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 1.2, 2.5);
	Delay(9*35);
	Hudmessage(s:"...go now. It is time for you to defy your nature..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 1.2, 4.5);
	Delay(1*35);

	GiveInventory("QuestMap20BluePrimarch", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");
	Delay(2*35);

	FadeTo(0, 0, 0, 1.0, 5.0);
    Delay(5*35);
	SetMugshotState("Sleep");
	Floor_RaiseByValue(618, 999, 88);
	Delay(3*35);

	ChangeCamera(639, 0, 0);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Delay(35);
	SetMugshotState("Normal");

	PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	Hudmessage(s:"Old Orc:    You are awake. I could hear Scorlag reaching out to you during my meditation."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 1.2, 3.0);
	Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
    Delay(3*35);

    Thing_Remove(620);
	Thing_Remove(668);
	SetActorAngle(0, 0.55);
	SetActorPitch(0, 0);
	Delay(1);
	Teleport_NoFog(640, 1, 0);
	//TeleportOther(0, 640, 0);
	ChangeCamera(0, 0, 0);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	Delay(16);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Delay(35);

    PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
    Hudmessage(s:"Old Orc:    So. The rumors are true. You are one of them..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 1.2, 2.5);
	ACS_NamedExecuteWithResult("GiveWeapons");
	ACS_NamedExecuteWithResult("GiveConsumables");

	Delay(2*35);

	SetMusic("HTrack33", 0, 0);
	Autosave();
}
Script 108 (void)
{
	SetActorProperty(619, APROP_Alpha, 0.95);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.90);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.85);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.80);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.75);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.70);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.65);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.60);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.55);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.50);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.45);
	SetActorProperty(685, APROP_Alpha, 0.95);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.40);
	SetActorProperty(685, APROP_Alpha, 0.90);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.35);
	SetActorProperty(685, APROP_Alpha, 0.85);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.30);
	SetActorProperty(685, APROP_Alpha, 0.80);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.25);
	SetActorProperty(685, APROP_Alpha, 0.75);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.20);
	SetActorProperty(685, APROP_Alpha, 0.70);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.15);
	SetActorProperty(685, APROP_Alpha, 0.65);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.10);
	SetActorProperty(685, APROP_Alpha, 0.60);
	Delay(8);
	SetActorProperty(619, APROP_Alpha, 0.05);
	SetActorProperty(685, APROP_Alpha, 0.55);
	Delay(8);
	Thing_Remove(619);
	SetActorProperty(685, APROP_Alpha, 0.50);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.45);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.40);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.35);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.30);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.25);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.20);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.15);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.10);
	Delay(8);
	SetActorProperty(685, APROP_Alpha, 0.05);
	Delay(8);
	Thing_Remove(685);
}

//Taint Offering
Script 103 (void)
{
	If(CheckInventory("QuestMap20BluePrimarch") == 2 && CheckInventory("InventoryElixirOfDeath") > 0 && CheckInventory("InventoryElixirOfLife") > 0)
	{
		SetLineSpecial(636, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(8);

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(16);
		TakeInventory("InventoryElixirOfDeath", 1);
		PlaySound(643, "Metal/Bounce2", CHAN_AUTO);
		SpawnSpotForced("DemonPhylactery", 643, 661, 0);
		SetActorFlag(661, "NODAMAGE", 1);
		SetActorFlag(661, "NOBLOOD", 1);

		Delay(35);

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(16);
		TakeInventory("InventoryElixirOfLife", 1);
		PlaySound(643, "Metal/Bounce3", CHAN_AUTO);
		SpawnSpotForced("IDElixirOfLife", 644, 661, 0);
		SetActorFlag(661, "NODAMAGE", 1);
		SetActorFlag(661, "NOBLOOD", 1);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
        Hudmessage(s:"Scorlag:    ...pure life and pure death... now you know what kind of powers await... if only you dare...consume them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 1.2, 2.5);
		Delay(6*35);

		FadeTo(80, 200, 255, 1.0, 0.2);
		Delay(7);
		SpawnSpotForced("BloodCloudBlack", 643, 0, 0);
		SpawnSpotForced("JunkDestructibleSplashLightBlue", 644, 0, 0);
		PlaySound(643, "Interaction/Boil", CHAN_AUTO);
		PlaySound(644, "Magic/Icicle", CHAN_AUTO);
		Thing_Remove(661);

		FadeTo(80, 200, 255, 0.0, 0.6);
		Delay(2);
		SpawnSpotForced("FireTinyDie1", 643, 0, 0);
		SpawnSpotForced("FireTinyDie2", 644, 0, 0);
		Delay(35);

		PlaySound(0, "Primarch/BlueA", CHAN_AUTO);
		Hudmessage(s:"...and so, you carry my taint... go now... I need...to rest..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 4.5);
		Delay(2*35);

		TakeInventory("QuestMap20BluePrimarch", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(4*35);
		SetLineSpecial(636, ACS_Execute, 102, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("QuestMap20BluePrimarch") != 1)
	{
		Print(s:"A primarch offering altar.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}





//REBEL TEMPLE
//Rebel Temple Wall Reveal
Script 69 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSightRebel") > 0)
	{
	SetLineSpecial(540, 0, 0, 0, 0, 0, 0);

	Hudmessage(s:"Rebel's Pendant of True Sight:    *Resonates as it reveals the illusory walls*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	Delay(35);

	If(CheckInventory("IronKey") > 0)
	{
		Thing_Remove(686);
	}

	Line_SetBlocking(523, 0, BLOCKF_EVERYTHING);
	PlaySound(541, "Magic/Dispel", CHAN_AUTO);

	TranslucentLine(523, 245, 0);
	Delay(2);
	TranslucentLine(523, 235, 0);
	Delay(2);
	TranslucentLine(523, 225, 0);
	Delay(2);
	TranslucentLine(523, 215, 0);
	Delay(2);
	TranslucentLine(523, 205, 0);
	Delay(2);
	TranslucentLine(523, 195, 0);
	Delay(2);
	TranslucentLine(523, 185, 0);
	Delay(2);
    TranslucentLine(523, 175, 0);
	Delay(2);
	TranslucentLine(523, 165, 0);
	Delay(2);
	TranslucentLine(523, 155, 0);
	Delay(2);
	TranslucentLine(523, 145, 0);
	Delay(2);
	TranslucentLine(523, 135, 0);
	Delay(2);
	TranslucentLine(523, 125, 0);
	Delay(2);
	TranslucentLine(523, 115, 0);
	//Delay(2);
	//TranslucentLine(523, 105, 0);
	//Delay(2);
	//TranslucentLine(523, 95, 0);
	//Delay(2);
	//TranslucentLine(523, 85, 0);
	//Delay(2);
	//TranslucentLine(523, 75, 0);
	//Delay(2);

	Delay(70);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    You are close... I can sense my brothers nearby... free them... so I can rest..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 1.2, 2.5);
	}
}
Script 126 (void)
{
  If(CheckInventory("IronKey") > 0)
  {
	Thing_Remove(686);
	Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Hudmessage(s:"Flame Beacon Ghost:    Release my brothers from this tomb... I must know what fate has befallen them..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 1.2, 2.5);
  }
}

//Rebel Temple Access
Script 68 (void)
{
	If(CheckInventory("IronKey") > 0)
	{
		SetLineSpecial(537, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		Delay(8);

		PlaySound(536, "Interaction/Locked", CHAN_AUTO);
		Delay(4);

        Radius_Quake(1, 16, 0, 1, 0);
		SpawnSpotForced("DustPuff", 538, 0, 0);
		PlaySound(536, "Metal/Land", CHAN_AUTO);
		PlaySound(536, "Interaction/MachineOn", CHAN_AUTO);

		ChangeFloor(531, "STONE10");
		Floor_LowerByValue(531, 999, 1);
		ChangeFloor(532, "IRON_20");
		Floor_RaiseByValue(532, 999, 1);

		SetActorFlag(536, "INVISIBLE", 0);
		Thing_Remove(535);
		PlaySound(536, "Inventory/PickKey", CHAN_AUTO);

		Delay(8);
		Floor_RaiseByvalue(534, 4, 20);
		TagWait(534);
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		SetActorFlag(588, "INVISIBLE", 1);
		Floor_LowerByvalue(533, 4, 124);

		Playsound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
		Hudmessage(s:"Flame Beacon Ghost:    ...they are safe!... thank you, Halfblood... the flame burns once again..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 1.2, 2.5);

        Delay(140);
		TakeInventory("QuestMap18HelpFlameBeaconGhost", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(140);
		Playsound(645, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"Rebel:    Breathe out, brothers. I don't believe this demon is here to slay us... come in. Let us talk."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 3.5, 0.2, 3.5);


		Delay(105);
		FadeTo(0, 0, 0, 1.0, 3.0);
		ACS_Execute(48, 0, 0, 0, 0);
		Delay(105);
		TakeInventory("IsPlaying", 1);
		Thing_Remove(587);
		SetActorFlag(588, "INVISIBLE", 0);
		TakeInventory("InventoryPendantOfTrueSightRebel", 1);
		SetActorFlag(646, "INVISIBLE", 0);

		Teleport_NoFog(539, 0, 0);
		SetActorAngle(0, 1.0);
		SetActorPitch(0, 0.0);
		SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);



		ACS_Execute(109, 0, 0, 0, 0); //Skip Briefing
		Delay(145);
		GiveInventory("IsPlaying", 1);

		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(35);
		Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"Abedun:    Welcome, Halfblood. I am Abedun, disgraced noble of the Kingdom of Sun... a distant place in the Overworld..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Ugh", CHAN_AUTO);
		Hudmessage(s:"I see the beacon keeper's pendant has helped you find us. It pains me to learn that we're the only rebels left alive..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Ha", CHAN_AUTO);
		Hudmessage(s:"...regardless, we have a strong ally in you. Your name is spoken in hushed tones around here. We know what you seek."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		//Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"Any enemy of the Baron is a friend of ours. And we cannot defeat him alone. Before you try to face him, know this:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Ugh", CHAN_AUTO);
		Hudmessage(s:"Rumor has it, after merging forces with Nithriel, the Baron has come into the possession of an immense power..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		//Playsound(588, "Abedun/Ugh", CHAN_AUTO);
		Hudmessage(s:"To guard the source of this power, he has built a vault that can only be opened by three soul key fragments."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"He clearly doesn't trust the elf, as the fragments were given for keeping to Yzbeth, a mad succubus matron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		//Playsound(588, "Abedun/Ugh", CHAN_AUTO);
		Hudmessage(s:"Yzbeth uses illusions to guard her secrets. The fake walls you passed through? It's her magics that inspired us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Ugh", CHAN_AUTO);
		Hudmessage(s:"If you wish to pass her walls, you'll need to enchant a Pendant of True Sight with the mind of someone close to her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 8.5, 0.2, 0.5);
	    Delay(9*35);
		Hudmessage(s:"Someone who knows her secrets... and here lies the issue. Her servants are not just loyal, but enamored with her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"Most demons control us through fear. But not Yzbeth. Her servants are... very willing. You won't take any alive."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		Playsound(588, "Abedun/Ha", CHAN_AUTO);
		Hudmessage(s:"But let us not despair. You wouldn't have gotten so far without being resourceful. You must find a way, Halfblood..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(5*35);

		GiveInventory("QuestMap20GetSoulKeyFragments", 2);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(3*35);
		Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"...and find it quickly. The Baron is holding a ritual as we speak. Who knows what evils he will unearth if not stopped?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 1.5);
	    Delay(4*35);

		SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	    SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		Delay(8);
	    SetMusic("HTrack33");
	    Delay(3*35);
	    Autosave();
	}
	else
	{
		Print(s:"This mithril padlock requires an Iron key to open.");
        PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	}

}
//skip Briefing
int SkipTimer = 0;
int SkipTimerDisplay = 0;
Script 109 (void)
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
	ACS_Terminate(68, 0);

    GiveInventory("IsPlaying", 1);
    FadeTo(0, 0, 0, 0.0, 3.0);
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Playsound(588, "Abedun/Heh", CHAN_AUTO);
	Hudmessage(s:"Abedun:    You need Yzbeth's soul key fragments to defeat the Baron. Use your wits, Halfblood, you're our only hope."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 2.5);
	Delay(4*35);

	GiveInventory("QuestMap20GetSoulKeyFragments", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");

	Delay(8);
	SetMusic("HTrack33");
	Delay(3*35);
	Autosave();
}

//Rebel Temple Mana Font
Script 70 (void)
{
	//If(CheckWeapon("StormStaff"))
	//{
	//	GiveInventory("ManaBall", 100);
	//	Delay(35);
	//}
	If(CheckInventory("InventoryCursedChalice") > 0 || CheckInventory("InventoryCursedChaliceOil") > 0 || CheckInventory("InventoryCursedChaliceBlood") > 0)
	{
		TakeInventory("InventoryCursedChalice", 1);
		TakeInventory("InventoryCursedChaliceOil", 1);
		TakeInventory("InventoryCursedChaliceBlood", 1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Delay(12);
		SpawnSpotForced("InventoryCursedChaliceMana", 556, 0, 0);
		PlaySound(556, "Metal/Land", CHAN_AUTO);
	}
	else
	If(CheckInventory("InventoryCursedChalice") == 0 || CheckInventory("InventoryCursedChaliceOil") == 0 || CheckInventory("InventoryCursedChaliceBlood") == 0 || CheckInventory("InventoryCursedChaliceMana") > 0)
	{
		Print(s:"The humming well bubbles with mana.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
int spec122 = 0;
Script 122 (void)
{
	If(spec122 > 0)
	{
		SetLineSpecial(680, 0, 0, 0, 0, 0, 0);
		Thing_Remove(679);
	}
	else
	If(ThingCount(T_NONE, 679) < 3 && spec122 == 0)
	{
		spec122 += 1;
		Playsound(588, "Abedun/Heh", CHAN_AUTO);
		Hudmessage(s:"Abedun:    Please, Halfblood, we need the bottles for when we depart. If you need mana, take it from the fountain."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 2.5);
	    //Delay(9*35);
		Terminate;
	}
	Delay(16);
	Restart;
}




//DIALOGUE
//Abedun Dialogue
//int dial110 = 18;
Script 110 (void)
{
	If(CheckInventory("QuestMap20GetSoulKeyFragments") == 2 && CheckInventory("InventorySoulKeyFragment") >= 3)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);

		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Oh! You have the fragments. I bow before you, Halfblood. If anyone can save us all, it is you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(5*35);

		TakeInventory("QuestMap20GetSoulKeyFragments", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");
		Delay(2*35);

		Hudmessage(s:"Once inside the Baron's citadel, look for the vault where the power source is. It can't be too hard to find."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"Who knows... maybe you can even acquire the power for yourself. It may as well aid you in slaying the tyrant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		Hudmessage(s:"I will be praying for you... but before you go, I wish to offer you something..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 4.5, 0.2, 0.5);
		Delay(3*35);

		PlaySound(647, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("InventoryAngelFeather", 647, 0, 0);
		Delay(2*35);

		PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"...the feather of an angel. It will aid you when you need it the most. Now go. May Air lighten your step."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 2.5);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		dial110 = 19;
	}
	else
	If(dial110 % 18 == 0)
	{
	  PlaySound(588, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Nobody knows what the Baron's power source is. Or where it came from. Is it an object? Or a creature?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else

	If(dial110 % 18 == 1)
	{
	  If(CheckInventory("QuestMap20GetSoulKeyFragments") == 1)
	  {
	    PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    You have the fragments. Now gain entry to the Baron's citadel and bring his reign to an end..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  {
	    PlaySound(588, "Abedun/Heh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Appeasing the primarchs isn't enough to defeat the Baron. His new power makes him invincible."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	}

	else

	If(dial110 % 18 == 2)
	{
	  If(CheckInventory("QuestMap20GetSoulKeyFragments") == 1)
	  {
		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    You have travelled far and fought hard. The Gods have made you our champion. Bring us our freedom!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventorySoulKeyFragment") == 1)
	  {
		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Yes! That must be one of the soul fragments. You will have to find the other two now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventorySoulKeyFragment") == 2)
	  {
		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    You found two of the soul fragments! Once you have all three, you'll be able to open the Baron's vault!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventoryPendantOfTrueSightServant") > 0)
	  {
		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Your wit lights your path, Halfblood. I'm impressed. Use that pendant and find the soul fragments."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	  {
		PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Finding a pure pendant is a good start, but you still need to enchant it with a servant's mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  {
	    PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    The beacon keeper's pendant is of no use to you now. You'll need to find a pure one to enchant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	}

	else

	If(dial110 % 18 == 3)
	{
	  If(CheckInventory("QuestMap20GetSoulKeyFragments") == 1)
	  {
		PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Do not tarry. If the Baron completes his ritual, he might end up too powerful to defeat at all."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventorySoulKeyFragment") == 1)
	  {
		PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    The other two fragments must be close to where the first one was. Go back there and keep searching."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventorySoulKeyFragment") == 2)
	  {
		PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Yzbeth must be keeping the third fragment close to her. Go back to her mansion and search for it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventoryPendantOfTrueSightServant") > 0)
	  {
		//PlaySound(0, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Yzbeth must be hiding the fragments inside her cathedral. Rumors say the building itself is an illusion."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  If(CheckInventory("InventoryScrollSpiritEnchantTrinket") > 0)
	  {
		//PlaySound(0, "Abedun/Ha", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    When you find someone who knows Yzbeth's secrets, use the scroll to bind his mind to the pendant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	  else
	  {
	    //PlaySound(0, "Abedun/Heh", CHAN_AUTO);
	    Hudmessage(s:"Abedun:    Aside from a Pendant of True Sight, you'll need an Enchant Trinket scroll. Try the crypt keeper's office."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 8.5, 0.2, 0.5);
	    dial110 += 1;
		Delay(2*35);
	  }
	}

	else
	If(dial110 % 18 == 4)
	{
	  PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    I wish I knew more about the Baron's intentions for the ritual. All I know that Nithriel is also involved..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 5)
	{
	  //PlaySound(0, "Abedun/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    There is a giant salt mine below us. The slaves have been worked to death to gather rare salts for the ritual."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 6)
	{
	  PlaySound(588, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Demons use salt as currency in the Overworld kingdoms. But since the slaves are dead, the mine is on hold..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 7)
	{
	  //PlaySound(0, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Political intrigues have made me lose my place among nobles. I ended up being the mine foreman here in Hell."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 8)
	{
	  PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    The horrors I have witnessed have left me scarred. All this pain and suffering that they feast upon..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 9)
	{
	  PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    I bear the guilt, for I have sold many of my kin to the demons. I will forever atone for my sins..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 10)
	{
	  //PlaySound(0, "Abedun/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Seeing that I could no longer bear the insanity, they forced me to join the Cult. At first, I agreed..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 11)
	{
	  PlaySound(588, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Cult initiates have their eyes removed so they can't read. Through worship, they build a hellish new sight."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 12)
	{
	  PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    After my first eye was removed, a third one opened. I... suddenly became aware of how oblivious I have been."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 13)
	{
	  //PlaySound(0, "Abedun/Ha", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    As the last group of slaves was rounded up for sacrifice, I backstabbed the guards and started a rebellion."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 14)
	{
	  PlaySound(588, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    We ran as far as we could... me, the old orc and Scrawn the sculptor made it to this ancient sanctuary."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 15)
	{
	  PlaySound(588, "Abedun/Ha", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    We survive thanks to fungi and the mana from this well. They give us enlightenment and vivid dreams."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 16)
	{
	  //PlaySound(0, "Abedun/Ha", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    We fight in the name of the Elemental Gods now. Only They can redeem us from the demonic corruption."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(dial110 % 18 == 17)
	{
	  PlaySound(588, "Abedun/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    When the Baron fulfils the role of the Icon and unites the demons under him, our world will fall..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
}
Script 112 (void)
{
	dial110 = 19;
}

//Old Orc Dialogue
//int dial113 = 16;
Script 113 (void)
{
  If(CheckInventory("QuestMap20BluePrimarch") > 0)
  {
	If(dial113 % 16 == 0)
	{
	  PlaySound(641, "OldOrc/Urgh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    The Iron Division... our grandfathers would often tell the tale... you bear half of their blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 1)
	{
	  //PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    The demons brought me to the salt mine as a liaison. To keep the other orc slaves from revolting."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 2)
	{
	  PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    A while ago, demons came in with a few of your sisters. Prisoners, taken after your failed assault."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 3)
	{
	  //PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    I was intrigued to see them, but alas... even after all this time, our kinds do not see eye to eye."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 4)
	{
	  PlaySound(641, "OldOrc/Urgh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    You know well what the fate of an honourless orc is. I tried to pacify my brethren, but to no avail..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 5)
	{
	  PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    The tale of your tribe still burns... you lost your men in fair battle, and sought to cheat fate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 6)
	{
	  //PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    Instead of giving in, your ancestors abandoned our lands in search of the forbidden Fountain of Life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 7)
	{
	  PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    Your ancestors succeeded in their quest. The Fountain made them born anew. Strong. Beautiful. Proud."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 8)
	{
	  PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    Eternal life is a curse. A transgression of our birth path. Your kind was banished from our lands."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 9)
	{
	  //PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    I see that the Iron Division has thrived in the underground... how long has it been? Five centuries?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 10)
	{
	  PlaySound(641, "OldOrc/Urgh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    I do not begrudge you. After all, I see no surface orc marching against the demons now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 11)
	{
	  If(CheckInventory("QuestMap18EnterPortal") > 0)
	  {
	  PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    Has the moment come for you to challenge the Baron? Fight well, warrior. Show us you're a true orc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	  }
	  else
	  {
	  //PlaySound(641, "OldOrc/Urgh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    As you may know, the surface world is rife with demonic corruption. Even orcs have succumbed to it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	  }
	}
	else
	If(dial113 % 16 == 12)
	{
	  PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    I am but a worthless slave. I may be unchained, but I am not free. Our hope lies with you, warrior."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 13)
	{
	  PlaySound(641, "OldOrc/Ugh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    If the Iron Division defeats the Baron here, I shall praise your clan for the remainder of my life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 14)
	{
	  //PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    There are others like me, Scrawn and Abedun in the world... lost souls who wait to be awakened."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(dial113 % 16 == 15)
	{
	  PlaySound(641, "OldOrc/Aegh", CHAN_AUTO);
	  Hudmessage(s:"Old Orc:    If we fail, let us fail fighting. For the sake of our blood and our honor! The Gods are watching us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
  }
  else
  {
	  Hudmessage(s:"Old Orc:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 0.2, 0.5);
	  Delay(4*35);
  }
}

//Scrawn Dialogue
int dial114 = 0;
Script 114 (void)
{
	If(CheckInventory("QuestMap18GreenPrimarch") == 2 && CheckInventory("JournalScrawnSketch") == 0 && CheckInventory("InventoryCrimsonSaltStatue") == 0 && CheckInventory("InventoryMithrilChisel") == 0 && IsTIDUsed(800) == 0)
	{
	    SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);

		PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	    Hudmessage(s:"Scrawn:    *Squints as he measures you top to bottom, pondering briefly*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 0.5);
		Delay(5*35);

		Hudmessage(s:"Scrawn:    *Snatches away your journal and starts sketching something*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 3.5, 0.2, 3.5);
		FadeTo(0, 0, 0, 1.0, 2.0);
		TakeInventory("InventoryJournal", 1);
		ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(1*35);
		//SetActorFlag(651, "INVISIBLE", 1);
		PlaySound(642, "Inventory/PickShort", CHAN_AUTO);
		Delay(1*35);

		PlaySound(642, "Inventory/Writing", CHAN_7, 0.7);
		Delay(8);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.6);
		Delay(12);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.8);
		Delay(10);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.6);
		Delay(8);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.5);
		Delay(12);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.7);
		Delay(6);
		PlaySound(642, "Inventory/Writing", CHAN_7, 0.8);
		Delay(50);

		FadeTo(0, 0, 0, 0.0, 2.0);

		PlaySound(642, "Scrawn/Mmf", CHAN_AUTO);
		Hudmessage(s:"Scrawn:    *Hands your journal back and points at it*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 1.5);
		//SetActorFlag(651, "INVISIBLE", 0);
		GiveInventory("InventoryJournal", 1);
		GiveInventory("JournalScrawnSketch", 1);
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Log(s:"Journal updated.");

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("QuestMap18GreenPrimarch") == 2 && CheckInventory("InventoryMithrilChisel") > 0)
	{
		TakeInventory("InventoryMithrilChisel", 1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);

		SpawnSpotForced("CultChisel", 543, 662, 0);
		PlaySound(543, "Ammo/DepletedShardBounce", CHAN_AUTO);
		PlaySound(543, "Metal/Bounce1", CHAN_AUTO, 0.5);

		Delay(16);
		PlaySound(642, "Scrawn/Mmf", CHAN_AUTO);
		Hudmessage(s:"Scrawn:    *Brings his palms together and bows his head in gratitude*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 0.5);
		If(CheckInventory("InventoryCrimsonSaltRock") >= 7)
		{
		  SetActorProperty(0, APROP_SPEED, 0.0);
	      SetActorProperty(0, APROP_Friction, 0.1);
		}
		Delay(3*35);
	}
	If(CheckInventory("QuestMap18GreenPrimarch") == 2 && IsTIDUsed(662) && CheckInventory("InventoryCrimsonSaltRock") >= 7)
		{
		  SetActorProperty(0, APROP_SPEED, 0.0);
	      SetActorProperty(0, APROP_Friction, 0.1);

		  SetWeapon("Fists");
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		  Delay(12);
		  TakeInventory("InventoryCrimsonSaltRock", 7);
		  SpawnSpotForced("CaveCrimsonSaltRock", 648, 649, 0);
		  PlaySound(648, "Rock/Land", CHAN_AUTO);
		  Delay(58);

		  PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	      Hudmessage(s:"Scrawn:    *Nods and motions you to step in the middle of the room and strike a pose*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 3.5, 0.2, 1.5);
		  Delay(2*35);
		  FadeTo(0, 0, 0, 1.0, 3.0);
		  Delay(3*35);
		  SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
		  ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);

		  Teleport_NoFog(650, 1, 0);
		  SetActorAngle(0, 0.5);
		  SetActorPitch(0, 0);

		  Delay(35);
		  PlaySound(642, "Inventory/PickShort", CHAN_AUTO);
		  Delay(16);

		  Thing_Remove(649);
		  ChangeFloor(700, "STONE10");
		  Floor_LowerByValue(700, 8, 1);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.7);
		  Delay(8);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.6);
		  Delay(12);
		  PlaySound(642, "Interaction/WallPick", CHAN_7, 0.8);
		  Delay(10);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.6);
		  Delay(8);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.5);
		  Delay(12);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.7);
		  Delay(6);
		  PlaySound(642, "Interaction/WallPick", CHAN_7, 0.8);
		  Delay(10);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.7);
		  Delay(8);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.6);
		  Delay(12);
		  PlaySound(642, "Interaction/WallPick", CHAN_7, 0.8);
		  Delay(10);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.6);
		  Delay(8);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.5);
		  Delay(12);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.7);
		  Delay(6);
		  PlaySound(642, "Interaction/AnvilHit", CHAN_7, 0.8);

		  Delay(35);
		  PlaySound(642, "Interaction/RopeTie", CHAN_7, 0.6);
		  Delay(12);
		  PlaySound(642, "Interaction/RopeTie", CHAN_7, 0.8);
		  Delay(10);
		  PlaySound(642, "Interaction/RopeTie", CHAN_7, 0.7);
		  Delay(16);
		  SpawnSpotForced("DustCloud", 678, 0, 0);
		  Delay(16);

		  SpawnSpotForced("InventoryCrimsonSaltStatue", 678, 800, 0);

		  FadeTo(0, 0, 0, 0.0, 3.0);
		  TakeInventory("JournalScrawnSketch", 1);
		  SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
		  SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
		  Delay(35);

		  PlaySound(642, "Scrawn/Mmf", CHAN_AUTO);
	      Hudmessage(s:"Scrawn:    *Wipes his forehead, glancing at his work of art with satisfaction*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 2.5);
		}
	else
	If(CheckInventory("JournalScrawnSketch") > 0 && CheckInventory("InventoryMithrilChisel") == 0 && IsTIDUsed(662) == 0 && CheckInventory("InventoryCrimsonSaltRock") < 7)
	{
		PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	    Hudmessage(s:"Scrawn:    *Points at the drawing in your journal*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 3.5, 0.2, 1.5);
		Delay(6*35);
	}
	else
	If(CheckInventory("QuestMap18GreenPrimarch") == 2 && IsTIDUsed(662) == 1 && CheckInventory("InventoryCrimsonSaltRock") < 7 && CheckInventory("InventoryCrimsonSaltStatue") == 0 && IsTIDUsed(800) == 0)
	{
		PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	    Hudmessage(s:"Scrawn:    *Points at the nearby crimson salt rock, then shows you seven fingers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 1.5);
		Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap18GreenPrimarch") == 2 && IsTIDUsed(662) == 0 && CheckInventory("InventoryCrimsonSaltRock") >= 7)
	{
		PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	    Hudmessage(s:"Scrawn:    *Points at the marked spot in your journal, and mimics striking a chisel with his hammer*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(9*35);
	}
	else
	If(dial114 == 0)
	{
	  PlaySound(642, "Scrawn/Mumble", CHAN_AUTO);
	  Hudmessage(s:"Scrawn:    *Mumbles*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 2.5, 0.2, 0.5);
	  dial114 = 1;
	  Delay(2*35);
	}
	else
	If(dial114 == 1)
	{
	  PlaySound(642, "Scrawn/Mmf", CHAN_AUTO);
	  Hudmessage(s:"Scrawn:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 2.5, 0.2, 0.5);
	  dial114 = 0;
	  Delay(2*35);
	}
}







//ALCHEMY MACHINE
//Alchemy Machine Tank Refil
Script 91 (void)
{
	If(GetSectorCeilingZ(563,0,0) < -502.0 && CheckInventory("InventoryCursedChaliceOil") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(563, 8, 502, 1);
		TagWait(563);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(GetSectorCeilingZ(563,0,0) == -550.0)
	{
		Print(s:"The tank barely has a few drops of hellfire oil sizzling at the bottom.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	{
		Print(s:"The tank contains enough hellfire oil for any concoction.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 92 (void)
{
	If(GetSectorCeilingZ(564,0,0) < -502.0 && CheckInventory("InventoryCursedChaliceMana") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(564, 8, 502, 1);
		TagWait(564);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(GetSectorCeilingZ(564,0,0) < -502.0 && CheckInventory("InventoryManaPotion") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);

		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_RaiseByValue(564, 8, 8);
		TagWait(564);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		SpawnSpotForced("IDEmptyPotionGlass", 682, 0, 0);
		PlaySound(682, "Ammo/FragfireCanBounce", CHAN_AUTO);
	}
	else
	If(GetSectorCeilingZ(564,0,0) == -550.0)
	{
		Print(s:"The tank barely has a few drops of mana pooling at the bottom.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	{
		Print(s:"The tank contains enough mana for any concoction.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 93 (void)
{
	If(GetSectorCeilingZ(569,0,0) < -502.0 && CheckInventory("InventoryDeadlyPoison") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		TakeInventory("InventoryDeadlyPoison", 1);
		SetWeapon("Fists");
		SpawnSpotForced("IDGlassB", 616, 0, 0);
		GiveInventory("ScriptHasFilledPoisonTank", 1);
		PlaySound(616, "Ammo/DepletedShardBounce", CHAN_AUTO);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_RaiseByValue(569, 8, 8);
		TagWait(569);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(GetSectorCeilingZ(569,0,0) == -550.0)
	{
		Print(s:"The tank barely has a few drops of poison lingering at the bottom.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	{
		Print(s:"The tank contains enough poison for any concoction.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 94 (void)
{
	If(GetSectorCeilingZ(570,0,0) < -502.0 && CheckInventory("InventoryCursedChaliceBlood") > 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(12);
		PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
		Ceiling_MoveToValue(570, 8, 502, 1);
		TagWait(564);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(GetSectorCeilingZ(570,0,0) == -550.0)
	{
		Print(s:"The tank barely has a few drops of sacrificial blood boiling at the bottom.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	{
		Print(s:"The tank contains enough sacrificial blood for any concoction.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
int OilTank = 0;
int ManaTank = 0;
int PoisonTank = 0;
int BloodTank = 0;
//Alchemy Machine Tank Toggle
Script 95 (void)
{
  If(GetActorPitch(0) > 0.07)
  {
	If(GetSectorCeilingZ(563,0,0) == -550.0 && OilTank == 0)
	{
		Print(s:"The tank needs to be filled first.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	If(OilTank == 0)
	{
	  SetLineTexture(574, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_UP");
	  PlaySound(573, "Switches/Switch1", CHAN_AUTO, 1.0);
	  Floor_MoveToValue(571, 4, 541, 1);
	  TagWait(571);
	  OilTank = 1;
	  Thing_Activate(572);
	  PlaySound(572, "Interaction/FireBlow", CHAN_AUTO, 0.5);
	  Delay(4);
	}
	else
	If(OilTank == 1)
	{
	  SetLineTexture(574, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_DN");
	  PlaySound(573, "Switches/Switch1", CHAN_AUTO, 0.5);
	  Floor_MoveToValue(571, 4, 549, 1);
	  TagWait(571);
	  OilTank = 0;
	  Thing_Deactivate(572);
	  PlaySound(572, "Interaction/Smother", CHAN_AUTO, 0.5);
	  Delay(4);
	}
  }
  else
  ACS_Execute(91, 0, 0, 0, 0);
}
Script 96 (void)
{
  If(GetActorPitch(0) > 0.07)
  {
	If(GetSectorCeilingZ(564,0,0) == -550.0 && ManaTank == 0)
	{
		Print(s:"The tank needs to be filled first.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	If(ManaTank == 0)
	{
	  SetLineTexture(578, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_UP");
	  PlaySound(577, "Switches/Switch1", CHAN_AUTO, 1.0);
	  Floor_MoveToValue(575, 4, 541, 1);
	  TagWait(575);
	  ManaTank = 1;
	  Thing_Activate(576);
	  PlaySound(576, "Interaction/FireBlow", CHAN_AUTO, 0.5);
	  Delay(4);
	}
	else
	If(ManaTank == 1)
	{
	  SetLineTexture(578, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_DN");
	  PlaySound(577, "Switches/Switch1", CHAN_AUTO, 0.5);
	  Floor_MoveToValue(575, 4, 549, 1);
	  TagWait(575);
	  ManaTank = 0;
	  Thing_Deactivate(576);
	  PlaySound(576, "Interaction/Smother", CHAN_AUTO, 0.5);
	  Delay(4);
	}
  }
  else
  ACS_Execute(92, 0, 0, 0, 0);
}
Script 97 (void)
{
  If(GetActorPitch(0) > 0.07)
  {
	If(GetSectorCeilingZ(569,0,0) == -550.0 && PoisonTank == 0)
	{
		Print(s:"The tank needs to be filled first.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	If(PoisonTank == 0)
	{
	  SetLineTexture(582, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_UP");
	  PlaySound(581, "Switches/Switch1", CHAN_AUTO, 1.0);
	  Floor_MoveToValue(579, 4, 541, 1);
	  TagWait(579);
	  PoisonTank = 1;
	  Thing_Activate(580);
	  PlaySound(580, "Interaction/FireBlow", CHAN_AUTO, 0.5);
	  Delay(4);
	}
	else
	If(PoisonTank == 1)
	{
	  SetLineTexture(582, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_DN");
	  PlaySound(581, "Switches/Switch1", CHAN_AUTO, 0.5);
	  Floor_MoveToValue(579, 4, 549, 1);
	  TagWait(579);
	  PoisonTank = 0;
	  Thing_Deactivate(580);
	  PlaySound(580, "Interaction/Smother", CHAN_AUTO, 0.5);
	  Delay(4);
	}
  }
  else
  ACS_Execute(93, 0, 0, 0, 0);
}
Script 98 (void)
{
  If(GetActorPitch(0) > 0.07)
  {
	If(GetSectorCeilingZ(570,0,0) == -550.0 && BloodTank == 0)
	{
		Print(s:"The tank needs to be filled first.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
	else
	If(BloodTank == 0)
	{
	  SetLineTexture(586, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_UP");
	  PlaySound(585, "Switches/Switch1", CHAN_AUTO, 1.0);
	  Floor_MoveToValue(583, 4, 541, 1);
	  TagWait(583);
	  BloodTank = 1;
	  Thing_Activate(584);
	  PlaySound(584, "Interaction/FireBlow", CHAN_AUTO, 0.5);
	  Delay(4);
	}
	else
	If(BloodTank == 1)
	{
	  SetLineTexture(586, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_DN");
	  PlaySound(585, "Switches/Switch1", CHAN_AUTO, 0.5);
	  Floor_MoveToValue(583, 4, 549, 1);
	  TagWait(583);
	  BloodTank = 0;
	  Thing_Deactivate(584);
	  PlaySound(584, "Interaction/Smother", CHAN_AUTO, 0.5);
	  Delay(4);
	}
  }
  else
  ACS_Execute(94, 0, 0, 0, 0);
}
int GreenPan = 0;
int PinkPan = 0;
int CyanPan = 0;
//Alchemy Machine Pans
Script 86 (void)
{
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(590,0,0) == -533.0)
	{
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("GreenSalt", 591, 0, 0);
		Delay(8);
		GreenPan = 1;
		Floor_MoveToValue(590, 3, 524, 1);
		TagWait(590);

	}
	else
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(590,0,0) == -524.0)
	{
		PlaySound(0, "Interaction/DustCloud", CHAN_AUTO, 1.0);
		SpawnSpotForced("JunkDestructibleSplashGreen", 596, 0, 0);
		GreenPan = 0;
		Floor_MoveToValue(590, 999, 533, 1);
		TagWait(590);
	}
	else
	If(CheckInventory("InventoryArcaneSalts") == 0)
	{
		Print(s:"The pan's rim glows with bright green hues.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 87 (void)
{
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(592,0,0) == -533.0)
	{
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("PinkSalt", 593, 0, 0);
		Delay(8);
		PinkPan = 1;
		Floor_MoveToValue(592, 3, 524, 1);
		TagWait(592);

	}
	else
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(592,0,0) == -524.0)
	{
		PlaySound(0, "Interaction/DustCloud", CHAN_AUTO, 1.0);
		SpawnSpotForced("JunkDestructibleSplashPurple", 597, 0, 0);
		PinkPan = 0;
		Floor_MoveToValue(592, 999, 533, 1);
		TagWait(592);
	}
	else
	If(CheckInventory("InventoryArcaneSalts") == 0)
	{
		Print(s:"The pan's rim glows with bright pink hues.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 88 (void)
{
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(594,0,0) == -533.0)
	{
		SetWeapon("Fists");
		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("CyanSalt", 595, 0, 0);
		Delay(8);
		CyanPan = 1;
		Floor_MoveToValue(594, 3, 524, 1);
		TagWait(594);

	}
	else
	If(CheckInventory("InventoryArcaneSalts") > 0 && GetSectorFloorZ(594,0,0) == -524.0)
	{
		PlaySound(0, "Interaction/DustCloud", CHAN_AUTO, 1.0);
		SpawnSpotForced("JunkDestructibleSplashCyan", 598, 0, 0);
		CyanPan = 0;
		Floor_MoveToValue(594, 999, 533, 1);
		TagWait(594);
	}
	else
	If(CheckInventory("InventoryArcaneSalts") == 0)
	{
		Print(s:"The pan's rim glows with bright cyan hues.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}


//Alchemy Machine Main Lever
Script 78 (void)
{
	//Mystery Potion
	If(OilTank == 1 && ManaTank == 1 && PoisonTank == 1 && BloodTank == 1 && GreenPan == 1 && PinkPan == 1 && CyanPan == 1)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(563, 2, 8); //oil
	  Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(569, 2, 8); //poison
	  Ceiling_LowerByvalue(570, 2, 8); //blood
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink
	  SpawnSpotForced("SteamPuffMedium", 598, 0, 0);
	  PlaySound(598, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  CyanPan = 0;
	  Floor_MoveToValue(594, 2, 533, 1); //cyan

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(602, 2, 535, 1);
	  TagWait(602);

		If(IsTIDUsed(700))
	    {
		  PlaySound(0, "Character/ZanGiggle", CHAN_AUTO);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(700);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(602, 8, 543, 1);
	      TagWait(602);
	      Delay(16);
	      SpawnSpotForced("InventoryMysteryPotion", 701, 0, 0);
	      PlaySound(701, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  If(GetSectorCeilingZ(569,0,0) == -550.0)
	      {
		    GiveInventory("ScriptPoisonTankEmpty", 1);
	      }
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(602, 8, 543, 1);
	      TagWait(602);
	      Delay(16);
		  Ceiling_RaiseByvalue(563, 2, 8); //oil
	      Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(569, 2, 8); //poison
	      Ceiling_RaiseByvalue(570, 2, 8); //blood
		  TagWait(570);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Potion of Might
	If(OilTank == 1 && ManaTank == 1 && PoisonTank == 0 && BloodTank == 1 && GreenPan == 0 && PinkPan == 1 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(563, 2, 8); //oil
	  Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(570, 2, 8); //blood
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(609, 2, 535, 1);
	  TagWait(609);

		If(IsTIDUsed(702))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(702);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryPotionOfMight", 703, 0, 0);
	      PlaySound(703, "Metal/land", CHAN_AUTO);
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
		  Ceiling_RaiseByvalue(563, 2, 8); //oil
	      Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(570, 2, 8); //blood
		  TagWait(570);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Potion Of Stoneskin
	If(OilTank == 0 && ManaTank == 1 && PoisonTank == 0 && BloodTank == 1 && GreenPan == 1 && PinkPan == 0 && CyanPan == 1)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(570, 2, 8); //blood
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green
	  SpawnSpotForced("SteamPuffMedium", 598, 0, 0);
	  PlaySound(598, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  CyanPan = 0;
	  Floor_MoveToValue(594, 2, 533, 1); //cyan

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(610, 2, 535, 1);
	  TagWait(610);

		If(IsTIDUsed(704))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(704);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(610, 8, 543, 1);
	      TagWait(610);
	      Delay(16);
	      SpawnSpotForced("InventoryPotionOfStoneskin", 705, 0, 0);
	      PlaySound(705, "Rock/Land", CHAN_AUTO);
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(610, 8, 543, 1);
	      TagWait(610);
	      Delay(16);
	      Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(570, 2, 8); //blood
		  TagWait(570);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Potion Of Haste
	If(OilTank == 1 && ManaTank == 0 && PoisonTank == 0 && BloodTank == 1 && GreenPan == 0 && PinkPan == 1 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(563, 2, 8); //oil
	  Ceiling_LowerByvalue(570, 2, 8); //blood
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(611, 2, 535, 1);
	  TagWait(611);

		If(IsTIDUsed(706))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(706);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
	      SpawnSpotForced("InventoryPotionOfHaste", 707, 0, 0);
	      PlaySound(707, "Metal/Bounce", CHAN_AUTO);
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		If(IsTIDUsed(708))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(708);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
	      SpawnSpotForced("InventoryPotionOfHaste", 709, 0, 0);
	      PlaySound(709, "Metal/Bounce", CHAN_AUTO);
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
		  Ceiling_RaiseByvalue(563, 2, 8); //oil
	      Ceiling_RaiseByvalue(570, 2, 8); //blood
		  TagWait(570);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Vial Of Healing
	If(OilTank == 0 && ManaTank == 0 && PoisonTank == 0 && BloodTank == 1 && GreenPan == 1 && PinkPan == 1 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(570, 2, 8); //blood
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(609, 2, 535, 1);
	  TagWait(609);

		If(IsTIDUsed(711))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(711);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 538, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 721, 0, 0);
	      PlaySound(721, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(712);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 541, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 722, 0, 0);
	      PlaySound(722, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(713);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 723, 0, 0);
	      PlaySound(723, "Ammo/DepletedShardBounce", CHAN_AUTO);

		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		If(IsTIDUsed(714))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(714);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 538, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 724, 0, 0);
	      PlaySound(724, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(715);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 541, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 725, 0, 0);
	      PlaySound(725, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(716);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 726, 0, 0);
	      PlaySound(726, "Ammo/DepletedShardBounce", CHAN_AUTO);

		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		If(IsTIDUsed(717))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(717);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 538, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 727, 0, 0);
	      PlaySound(727, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(718);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 541, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 728, 0, 0);
	      PlaySound(728, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  Delay(12);
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(719);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
	      SpawnSpotForced("InventoryVialOfHealing", 729, 0, 0);
	      PlaySound(729, "Ammo/DepletedShardBounce", CHAN_AUTO);

		  ACS_Execute(98, 0, 0, 0, 0); //blood
		  TagWait(583);
	    }
		else
		{
		  Print(s:"There are no more anointed vials to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(609, 8, 543, 1);
	      TagWait(609);
	      Delay(16);
	      Ceiling_RaiseByvalue(570, 2, 8); //blood
		  TagWait(570);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Fragfire Can
	If(OilTank == 1 && ManaTank == 0 && PoisonTank == 0 && BloodTank == 0 && GreenPan == 1 && PinkPan == 0 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(563, 2, 8); //oil
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(611, 2, 535, 1);
	  TagWait(611);

		If(IsTIDUsed(730))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(730);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
	      SpawnSpotForced("FragfireCan", 731, 0, 0);
	      PlaySound(731, "Metal/Land", CHAN_AUTO);
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  TagWait(571);
	    }
		else
		If(IsTIDUsed(732))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(732);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
	      SpawnSpotForced("FragfireCan", 733, 0, 0);
	      PlaySound(733, "Metal/Land", CHAN_AUTO);
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  TagWait(571);
	    }
		else
		{
		  Print(s:"There are no more anointed cans to pour this concoction into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(611, 8, 543, 1);
	      TagWait(611);
	      Delay(16);
		  Ceiling_RaiseByvalue(563, 2, 8); //oil
		  TagWait(63);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Acid Potions
	If(OilTank == 0 && ManaTank == 0 && PoisonTank == 1 && BloodTank == 0 && GreenPan == 1 && PinkPan == 0 && CyanPan == 1)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(569, 2, 8); //poison
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green
	  SpawnSpotForced("SteamPuffMedium", 598, 0, 0);
	  PlaySound(598, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  CyanPan = 0;
	  Floor_MoveToValue(594, 2, 533, 1); //cyan

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(612, 2, 535, 1);
	  TagWait(612);

		If(IsTIDUsed(735))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(734);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(612, 8, 543, 1);
	      TagWait(612);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(735);
		  Delay(16);
	      SpawnSpotForced("PotionBoxAcid", 736, 0, 0);
	      PlaySound(736, "Metal/Land", CHAN_AUTO);
		  //If(GetSectorCeilingZ(569,0,0) == -550.0)
	      //{
		    //GiveInventory("ScriptPoisonTankEmpty", 1);
	      //}
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		If(IsTIDUsed(738))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(737);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(612, 8, 543, 1);
	      TagWait(612);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(738);
		  Delay(16);
	      SpawnSpotForced("PotionBoxAcid", 739, 0, 0);
	      PlaySound(739, "Metal/Land", CHAN_AUTO);
		  //If(GetSectorCeilingZ(569,0,0) == -550.0)
	      //{
		    //GiveInventory("ScriptPoisonTankEmpty", 1);
	      //}
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		If(IsTIDUsed(741))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(740);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(612, 8, 543, 1);
	      TagWait(612);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(741);
		  Delay(16);
	      SpawnSpotForced("PotionBoxAcid", 742, 0, 0);
	      PlaySound(742, "Metal/Land", CHAN_AUTO);
		  If(GetSectorCeilingZ(569,0,0) == -550.0)
	      {
		    GiveInventory("ScriptPoisonTankEmpty", 1);
	      }
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this concoction into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(612, 8, 543, 1);
	      TagWait(612);
	      Delay(16);
	      Ceiling_RaiseByvalue(569, 2, 8); //poison
		  TagWait(569);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Toxic Potions
	If(OilTank == 0 && ManaTank == 1 && PoisonTank == 1 && BloodTank == 0 && GreenPan == 0 && PinkPan == 1 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

      Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(569, 2, 8); //poison
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(613, 2, 535, 1);
	  TagWait(613);

		If(IsTIDUsed(735))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(734);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(613, 8, 543, 1);
	      TagWait(612);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(735);
		  Delay(16);
	      SpawnSpotForced("PotionBoxToxic", 736, 0, 0);
	      PlaySound(736, "Metal/Land", CHAN_AUTO);
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		If(IsTIDUsed(738))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(737);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(613, 8, 543, 1);
	      TagWait(613);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(738);
		  Delay(16);
	      SpawnSpotForced("PotionBoxToxic", 739, 0, 0);
	      PlaySound(739, "Metal/Land", CHAN_AUTO);
		  //If(GetSectorCeilingZ(569,0,0) == -550.0)
	      //{
		    //GiveInventory("ScriptPoisonTankEmpty", 1);
	      //}
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		If(IsTIDUsed(741))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(740);
	      Delay(16);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(613, 8, 543, 1);
	      TagWait(613);
	      Delay(16);
		  PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
	      Thing_Remove(741);
		  Delay(16);
	      SpawnSpotForced("PotionBoxToxic", 742, 0, 0);
	      PlaySound(742, "Metal/Land", CHAN_AUTO);
		  If(GetSectorCeilingZ(569,0,0) == -550.0)
	      {
		    GiveInventory("ScriptPoisonTankEmpty", 1);
	      }
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this concoction into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(613, 8, 543, 1);
	      TagWait(613);
	      Delay(16);
		  Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(569, 2, 8); //poison
		  TagWait(569);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Sleeping Potion
	If(OilTank == 0 && ManaTank == 1 && PoisonTank == 1 && BloodTank == 0 && GreenPan == 0 && PinkPan == 0 && CyanPan == 1)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(569, 2, 8); //poison
	  SpawnSpotForced("SteamPuffMedium", 598, 0, 0);
	  PlaySound(598, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  CyanPan = 0;
	  Floor_MoveToValue(594, 2, 533, 1); //cyan

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(614, 2, 535, 1);
	  TagWait(614);

		If(IsTIDUsed(750))
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      Thing_Remove(750);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(614, 8, 543, 1);
	      TagWait(614);
	      Delay(16);
	      SpawnSpotForced("InventorySleepingPotion", 751, 0, 0);
	      PlaySound(751, "Ammo/DepletedShardBounce", CHAN_AUTO);
		  If(GetSectorCeilingZ(569,0,0) == -550.0)
	      {
		    GiveInventory("ScriptPoisonTankEmpty", 1);
	      }
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		{
		  Print(s:"There are no more anointed bottles to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(614, 8, 543, 1);
	      TagWait(614);
	      Delay(16);
	      Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(569, 2, 8); //poison
		  TagWait(569);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	//Elixir of Death
	If(OilTank == 1 && ManaTank == 1 && PoisonTank == 1 && BloodTank == 0 && GreenPan == 1 && PinkPan == 1 && CyanPan == 0)
	{
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  SetWeapon("Fists");
	  Line_SetBlocking(605, BLOCKF_USE, 0);
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(16);
	  PlaySound(603, "Ambient/Lava1", CHAN_AUTO);

	  Ceiling_LowerByvalue(563, 2, 8); //oil
	  Ceiling_LowerByvalue(564, 2, 8); //mana
	  Ceiling_LowerByvalue(569, 2, 8); //poison
	  SpawnSpotForced("SteamPuffMedium", 596, 0, 0);
	  PlaySound(596, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  GreenPan = 0;
	  Floor_MoveToValue(590, 2, 533, 1); //green
	  SpawnSpotForced("SteamPuffMedium", 597, 0, 0);
	  PlaySound(597, "Weapons/AcidSizzle", CHAN_AUTO, 0.4);
	  PinkPan = 0;
	  Floor_MoveToValue(592, 2, 533, 1); //pink

	  Delay(19);
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  Delay(70);

	  PlaySound(604, "Interaction/Boil", CHAN_AUTO);
	  Ceiling_MoveToValue(615, 2, 535, 1);
	  TagWait(615);

		If(CheckInventory("InventoryAnointedPhylactery") > 0)
	    {
		  PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	      TakeInventory("InventoryAnointedPhylactery", 1);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(615, 8, 543, 1);
	      TagWait(615);
	      Delay(16);
	      SpawnSpotForced("InventoryElixirOfDeath", 753, 0, 0);
	      PlaySound(753, "Rock/Land", CHAN_AUTO);
		  If(GetSectorCeilingZ(569,0,0) == -550.0)
	      {
		    GiveInventory("ScriptPoisonTankEmpty", 1);
	      }
		  ACS_Execute(95, 0, 0, 0, 0); //oil
		  ACS_Execute(96, 0, 0, 0, 0); //mana
		  ACS_Execute(97, 0, 0, 0, 0); //poison
		  TagWait(579);
	    }
		else
		{
		  Print(s:"There is no Anointed Phylactery to pour this potion into.");
	      PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	      Delay(35);
	      PlaySound(604, "Gore/BloodJut", CHAN_AUTO);
	      Ceiling_MoveToValue(615, 8, 543, 1);
	      TagWait(615);
	      Delay(16);
		  Ceiling_RaiseByvalue(563, 2, 8); //oil
	      Ceiling_RaiseByvalue(564, 2, 8); //mana
	      Ceiling_RaiseByvalue(569, 2, 8); //poison
		  TagWait(569);
	    }

	  Line_SetBlocking(605, 0, BLOCKF_USE);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	}
    ////////
	else
	{
	  ChangeFloor(600, "Sw05_DN");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO);
	  Delay(35);
	  Print(s:"You hear a low rumble but the machine does nothing.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  ChangeFloor(600, "Sw05_UP");
	  PlaySound(599, "Switches/Switch1", CHAN_AUTO, 0.6);
	}
}







//SALT CRYPT
//Salt Crypt Entrance Genii
Script 38 (void)
{
	If(CheckInventory("QuestMap18GetSacrificialSword") > 0)
	{
	SetLineSpecial(276, 0, 0, 0, 0, 0, 0);

	Thing_Activate(230);
	Delay(8);
	Thing_remove(277);
	Delay(70);
	Thing_Activate(278);
	Delay(8);
	Thing_remove(279);
	}
}
//Salt Crypt Entrance
Script 30 (void)
{
	If(GetSectorCeilingZ(245, 0, 0) == -1475.0 && CheckInventory("BloodyAxeKey") > 0)
	{
	//Radius_Quake(1, 280, 0, 1, 252);
	Radius_Quake2(252, 1, 280, 0, 640, "world/quake");

	PlaySound(252, "Switches/Switch4", CHAN_AUTO);
	ChangeFloor(253, "Gate8L1D");

	Floor_MoveToValue(245, 2, 1532, 1);
	Ceiling_MoveToValue(245, 2, 1443, 1);
	Delay(8);

	Floor_MoveToValue(242, 2, 1534, 1);
	Ceiling_MoveToValue(242, 2, 1432, 1);
	Delay(8);

	Floor_MoveToValue(241, 3, 1536, 1);
	//Ceiling_MoveToValue(241, 2, 1424, 1);
	Delay(8);

	Floor_MoveToValue(243, 2, 1524, 1);
	Ceiling_MoveToValue(243, 2, 1456, 1);
	Delay(8);

	Floor_MoveToValue(244, 2, 1531, 1);
	Ceiling_MoveToValue(244, 2, 1448, 1);
	Delay(8);

	Floor_MoveToValue(246, 2, 1531, 1);
	Ceiling_MoveToValue(246, 2, 1432, 1);
	Delay(8);

	Floor_MoveToValue(247, 2, 1520, 1);
	Ceiling_MoveToValue(247, 2, 1472, 1);
	Delay(8);

	Floor_MoveToValue(248, 2, 1512, 1);
	Ceiling_MoveToValue(248, 2, 1468, 1);
	Delay(8);

	Floor_MoveToValue(249, 2, 1533, 1);
	Ceiling_MoveToValue(249, 2, 1440, 1);
	Delay(8);

	Floor_MoveToValue(250, 2, 1496, 1);
	Ceiling_MoveToValue(250, 2, 1440, 1);
	Delay(8);

	Floor_MoveToValue(251, 2, 1496, 1);
	Ceiling_MoveToValue(251, 2, 1464, 1);
	Delay(8);
	}
	else
	If(CheckInventory("BloodyAxeKey") == 0)
	{
      Print(s:"This switch requires a Bloody Axe key to operate.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

//Salt Crypt Demon Spawn
Script 31 (void)
{
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(35);

	SpawnSpotForced("HedonTeleportFogDemon", 254, 0, 0);
	PlaySound(254, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpotForced("PitLord", 254, 0, 64);
	SpawnSpotForced("Hellblaze", 255, 655, 128);
	SpawnSpotForced("Hellblaze", 256, 0, 128);
}

//Hellblaze Trap Shoot
Script 32 (void)
{
	If(GetActorProperty(655, APROP_Health) > 0)
	{
		SetActorState(655, "Missile", 0);
		Delay(105);
	}
}

//Salt Crypt Inner Crypt Entrance
Script 33 (void)
{
	SetLineSpecial(257, 0, 0, 0, 0, 0, 0);
	SetLineTexture(257, SIDE_FRONT, TEXTURE_MIDDLE, "GATE8_DN");

	//Floor_MoveToValue(258, 4, 1442, 1);
	Ceiling_MoveToValue(258, 8, 1332, 1);
	Delay(8);

	Floor_MoveToValue(259, 4, 1442, 1);
	Ceiling_MoveToValue(259, 4, 1321, 1);
	Delay(8);

	Floor_MoveToValue(260, 4, 1429, 1);
	Ceiling_MoveToValue(260, 4, 1348, 1);
}

//Salt Crypt Sword Ambush
Script 34 (void)
{
	If(IsTIDUsed(262) == 0)
	{
		Thing_Remove(263);
		SetLineSpecial(261, 0, 0, 0, 0, 0, 0);
		Radius_Quake(1, 105, 0, 1, 0);

		SpawnSpotForced("Genius", 280, 0, 0);

		Delay(35);

		Thing_Activate(264);
		SetActorProperty(264, APROP_Alpha, 0.05);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.1);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.15);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.2);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.25);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.3);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.35);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.4);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.45);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.50);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.55);
		Delay(4);
		SetActorProperty(264, APROP_Alpha, 0.60);
	}
}
Script 35 (void)
{
	If(IsTIDUsed(262) == 0)
	{
		SetLineSpecial(268, 0, 0, 0, 0, 0, 0);
		SetLineTexture(269, SIDE_FRONT, TEXTURE_MIDDLE, "GATE8_DN");

		//Floor_MoveToValue(265, 8, 1434, 1);
		Ceiling_MoveToValue(265, 16, 1332, 1);
		Delay(8);

		Floor_MoveToValue(266, 12, 1426, 1);
		Ceiling_MoveToValue(266, 12, 1356, 1);
		Delay(8);

		Floor_MoveToValue(267, 12, 1418, 1);
		Ceiling_MoveToValue(267, 12, 1343, 1);
	}
}
Script 36 (void)
{
	If(IsTIDUsed(262) == 0)
	{
	SetLineSpecial(270, 0, 0, 0, 0, 0, 0);

	Thing_Activate(271);
	Delay(8);
	Thing_remove(272);
	}
}
Script 37 (void)
{
	If(IsTIDUsed(262) == 0)
	{
	SetLineSpecial(275, 0, 0, 0, 0, 0, 0);

	Thing_Activate(273);
	Delay(8);
	Thing_remove(274);
	}
}


//SALT CAVERNS & SALT MINE
//Salt Caverns Rusty Elevator
Script 29 (void)
{
	If(GetActorZ(0) > -635.0)
	{
		ACS_Execute(48, 0, 0, 0, 0);
		PlaySound(223, "Ambient/Rust", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Radius_Quake(10, 35, 0, 1, 0);
		Ceiling_LowerByValue(221, 48, 128);
		FloorAndCeiling_LowerByValue(220, 48, 128);
		Scroll_Ceiling(222, 0, -384, 0);
		TagWait(220);
		//TagWait(221);

		Thing_Activate(672);
		Thing_Activate(263);

		PlaySound(223, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Radius_Quake(4, 210, 0, 1, 0);
		Ceiling_LowerByValue(221, 4, 96);
		FloorAndCeiling_LowerByValue(220, 4, 96);
		Ceiling_LowerByValue(224, 4, 96);
		Scroll_Ceiling(222, 0, -16, 0);

		//TagWait(221);
		//TagWait(222);
		//TagWait(224);
		//Ceiling_LowerByValue(221, 8, 64);
		//FloorAndCeiling_LowerByValue(220, 8, 64);
		//Ceiling_LowerByValue(224, 8, 64);
		//Scroll_Ceiling(222, 0, -32, 0);

		//TagWait(221);
		//TagWait(222);
		TagWait(224);
		SpawnSpotForced("DustCloud", 225, 0, 0);
		PlaySound(223, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
		PlaySound(223, "Weapons/CrushbowFire", CHAN_AUTO, 0.4, false, ATTN_NONE);
		Radius_Quake(8, 35, 0, 1, 0);
		FloorAndCeiling_LowerByValue(220, 64, 690);
		Scroll_Ceiling(222, 0, 0, 0);
		SetMusic("HTrack34", 0, 0);

		TagWait(220);
		Radius_Quake(10, 70, 0, 1, 0);
		SpawnSpotForced("BloodCloud", 226, 0, 0);
		PlaySound(227, "Ambient/Crash", CHAN_AUTO);
		PlaySound(226, "Gore/BloodJut", CHAN_AUTO);
		FloorAndCeiling_LowerByValue(220, 32, 23);

		TagWait(220);
		FloorAndCeiling_LowerByValue(220, 16, 20);

		TagWait(220);
		FloorAndCeiling_LowerByValue(220, 8, 200);

		TagWait(220);
		PlaySound(229, "Metal/Land", CHAN_AUTO);
	}
}

//Salt Mine Elevator Ambush
Script 46 (void)
{
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(15);

	SpawnSpotForced("HedonTeleportFogDemon", 360, 0, 0);
	PlaySound(360, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpotForced("Cerberus", 360, 0, 0);
	SetActorproperty(484, APROP_Speed, 17.0);

	Delay(39);

	SetLineSpecial(367, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 362, 0, 0);
	PlaySound(362, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpotForced("ForgeElemental", 362, 0, 128);
	NoiseAlert(0,0);

	Radius_Quake(6, 70, 0, 30, 362);
	SpawnSpotForced("ExplosionHuge", 363, 0, 0);
	SpawnProjectile(363, "JunkBrokenWoodA", random(112,140), random(20,30), random(10,20), 10, 0);
	Delay(2);
	Ceiling_LowerByValue(352, 999, 122);
	Delay(6);
	SpawnSpotForced("ExplosionLarge", 364, 0, 0);
	SpawnProjectile(364, "JunkBrokenWoodB", random(72,120), random(20,30), random(10,20), 10, 0);
	Delay(12);
	SpawnSpotForced("ExplosionMedium", 365, 0, 0);
	SpawnProjectile(365, "JunkWoodenPlank", random(96,160), random(20,30), random(10,20), 10, 0);

	Delay(70);

	SpawnSpotForced("HedonTeleportFogDemon", 361, 0, 0);
	PlaySound(361, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpotForced("Glutton", 361, 0, 128);
}

//Salt Mine Iron maiden Move
Script 63 (void)
{
	SetActorproperty(481, APROP_Speed, 17.0);
}

//Salt Mine Mini Boss Aggro Failsafe
Script 64 (void)
{
	SetLineSpecial(688, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(483, 0, BLOCKF_SOUND);
	Thing_SetGoal(479, 687, 0, 0);
	Thing_SetGoal(480, 687, 0, 0);
}

//Pickaxe Hammer Drop
Script 121 (void)
{
	If(CheckInventory("InventorySledgeHammer") > 0 && IsTIDUsed(665) == 0)
	{
	  SetLineSpecial(664, 0, 0, 0, 0, 0, 0);
	  Delay(12);
	  TakeInventory("InventorySledgeHammer", 1);
	  SpawnSpotForced("CultSledgehammer", 666, 0, 0);
	  PlaySound(666, "Rock/Land", CHAN_AUTO);
	}
}

//Salt Crusher
Script 51 (void)
{
	If(CheckInventory("InventoryIronLever") > 0 && GetSectorCeilingZ(387, 0, 0) == -1432.0)
	{
		TakeInventory("InventoryIronLever", 1);
		SpawnSpotForced("IDLever", 667, 669, 64);
		SetActorPitch(669, 0.75);
		PlaySound(669, "Metal/Bounce1", CHAN_AUTO);
		Delay(16);
		SetActorPitch(669, 0.65);
	    PlaySound(669, "Interaction/MachineOn", CHAN_AUTO);
		Delay(12);
		Ceiling_LowerByValue(387, 24, 92);
		Radius_Quake(1, 70, 0, 1, 0);
		TagWait(387);
		Radius_Quake(7, 35, 0, 1, 0);

		FloorAndCeiling_LowerByValue(389, 999, 128);
		TagWait(389);
		//ThrustThingZ(388, 10, 1, 1);
		SetActorFlag(388, "NOCLIP", 0);
		SpawnSpotForced("DustCloud", 388, 0, 0);
		ChangeFloor(390, "Salt1");
		Sector_SetFloorScale2(390, 0.5, 0.5);
	}
	else
	If(CheckInventory("InventoryIronLever") == 0 && GetSectorCeilingZ(387, 0, 0) == -1432.0)
	{
		Print(s:"The mechanism lacks an operation lever.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}

//Salt Caverns Grates
Script 52 (void)
{
	PlaySound(393, "Ambient/Rust", CHAN_AUTO);
	Ceiling_RaiseByValue(391, 12, 96);
}
Script 55 (void)
{
	PlaySound(393, "Ambient/Rust", CHAN_AUTO);
	Ceiling_RaiseByValue(436, 10, 80);
}
Script 57 (void)
{
	PlaySound(393, "Ambient/Rust", CHAN_AUTO);
	Ceiling_RaiseByValue(455, 11, 88);
}

//Salt Caverns Conscript Dismemberment
Script 53 (void)
{
	SetLineSpecial(397, 0, 0, 0, 0, 0, 0);
	SpawnProjectile(395, "GoreConscriptHead", 0, 150, 30, 5, 0);
	Delay(12);
	PlaySound(398,"Gore/BloodSplat", CHAN_AUTO);
	SetActorFlag(398, "INVISIBLE", 0);
	Radius_Quake(1, 8, 0, 15, 398);
    Delay(16);
	Line_SetBlocking(396, 0, BLOCKF_EVERYTHING);
}

//Salt Caverns Winch Pick & Golem Ambushes
Script 54 (void)
{
	If(IsTIDUsed(400) == 0)
	{
		SetLineSpecial(401, 0, 0, 0, 0, 0, 0);

		PlaySound(459, "Projectile/GolemShardDeath", CHAN_AUTO);
		PlaySound(402,"Interaction/GlassBreak", CHAN_7, 1.0);
		Radius_Quake(1, 35, 0, 1, 0);
		Thing_Remove(403);
		Thing_Activate(457);
		Light_Fade(399, 120, 8);
		SpawnProjectile(404, "MagicSparkRed", random(0,255), random(10,40), random(0,20), random(5,10), 0);
		SpawnProjectile(404, "MagicSparkRed", random(0,255), random(10,40), random(0,20), random(5,10), 0);
		SpawnProjectile(404, "MagicSparkRed", random(0,255), random(10,40), random(0,20), random(5,10), 0);
		SpawnProjectile(404, "MagicSparkRed", random(0,255), random(10,40), random(0,20), random(5,10), 0);
		SpawnProjectile(404, "MagicSparkRed", random(0,255), random(10,40), random(0,20), random(5,10), 0);
		SetActorFlag(458, "INVISIBLE", 0);
		Delay(8);
		StopSound(402, CHAN_7);
	}
}
Script 58 (void)
{
	If(IsTIDUsed(458) && IsTIDUsed(400) == 0)
	{
	  Print(s:"The cracked window could easily be shattered.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  Delay(35);
	}
}
Script 59 (void)
{
	If(IsTIDUsed(458) && IsTIDUsed(400) == 0)
	{
	Thing_Remove(458);
	PlaySound(459,"Weapons/PotionDie", CHAN_AUTO);
	SetLineTexture(456, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(456, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Line_SetBlocking(456, 0, BLOCKF_EVERYTHING);
	Radius_Quake(5, 16, 0, 2, 459);
	SpawnSpotForced("DustCloud", 459, 0, 0);
	SpawnProjectile(459, "JunkBrokenGlassA", random(0,32), random(10,20), 0, random(10,20), 0);
	SpawnProjectile(459, "JunkBrokenGlassB", random(0,32), random(10,20), 0, random(10,20), 0);
	SpawnProjectile(459, "JunkBrokenGlassA", random(224,256), random(10,20), 0, random(10,20), 0);
	}
}
Script 60 (void)
{
	If(isTIDUsed(400) == 0)
	{
		SetLineSpecial(467, 0, 0, 0, 0, 0, 0);
		SetActorFlag(466, "INVISIBLE", 0);
		SetActorFlag(466, "NOBLOCKMAP", 0);
		SetActorFlag(466, "NOINFIGHTING", 1);
		SetActorFlag(462, "NOINFIGHTING", 1);
		SetActorFlag(463, "NOINFIGHTING", 1);
		SetActorFlag(464, "NOINFIGHTING", 1);
		SetActorProperty(466, APROP_Alpha, 0.0);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.1);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.2);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.3);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.4);
		Delay(4);
		Thing_Activate(466);
		NoiseAlert(0,0);
		SetActorProperty(466, APROP_Alpha, 0.5);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.6);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.7);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.8);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 0.9);
		Delay(4);
		SetActorProperty(466, APROP_Alpha, 1.0);

		FloorAndCeiling_LowerByvalue(461, 9999, 72);
		Floor_RaiseByValue(460, 64, 64);
		SetActorFlag(462, "NOBLOCKMONST", 1);
		SetActorFlag(463, "NOBLOCKMONST", 1);
		SetActorFlag(464, "NOBLOCKMONST", 1);
		SetActorFlag(466, "NOBLOCKMONST", 1);
		SetActorProperty(462, APROP_Gravity, 0.3);
		SetActorProperty(463, APROP_Gravity, 0.3);
		SetActorProperty(464, APROP_Gravity, 0.3);
		TagWait(460);

		SpawnSpotForced("BloodCloud", 465, 0, 0);

		Radius_Quake(3, 16, 0, 1, 0);

		PlaySound(462, "HellMine/Burst", CHAN_AUTO);
		Thing_Activate(462);
		SetActorState(462, "AirTime", 0);
		PlaySound(463, "Gore/BloodJut", CHAN_AUTO);
		Thing_Activate(463);
		SetActorState(463, "AirTime", 0);
		PlaySound(464, "Gore/BloodJut", CHAN_AUTO);
		Thing_Activate(464);
		SetActorState(464, "AirTime", 0);

		ThrustThing(32, 50, 1, 462);
		ThrustThingZ(462, 5, 0, 1);
		ThrustThing(245, 25, 1, 463);
		ThrustThingZ(463, 60, 0, 1);
		ThrustThing(112, 20, 1, 464);
		ThrustThingZ(464, 80, 0, 1);

		Delay(24);
		SetActorFlag(462, "NOBLOCKMONST", 0);
		SetActorFlag(464, "NOBLOCKMONST", 0);
		SetActorProperty(462, APROP_Gravity, 1.0);
		SetActorProperty(464, APROP_Gravity, 1.0);
		Delay(12);
		SetActorFlag(463, "NOBLOCKMONST", 0);
		SetActorProperty(463, APROP_Gravity, 1.0);

		SpawnSpotForced("Crawler", 468, 466, 0);
		SpawnSpotForced("Crawler", 469, 466, 128);
		SetActorFlag(466, "NOINFIGHTING", 1);
		If(GameSkill() > SKILL_VERY_EASY)
		{
			Delay(105);
			SpawnSpotForced("Crawler", 468, 466, 0);
		    SpawnSpotForced("Crawler", 469, 466, 128);
			SetActorFlag(466, "NOINFIGHTING", 1);
			Delay(70);
			SpawnSpotForced("Crawler", 469, 0, 128);
			SetActorFlag(466, "NOINFIGHTING", 1);
		}
		If(GameSkill() > SKILL_HARD)
		{
			Delay(175);
			SpawnSpotForced("Crawler", 468, 466, 0);
		    SpawnSpotForced("Crawler", 469, 466, 128);
			SetActorFlag(466, "NOINFIGHTING", 1);
		}
	}
}

//Clogged Reservoir
Script 56 (void)
{
    If(GetActorZ(0) > -764.0 && GetActorZ(0) < -688.0 && GetSectorCeilingZ(451,0,0) == -537.0)
	{
		If(CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickaxe") > 0 || CheckInventory("InventoryShovel") > 0 || CheckInventory("InventoryShovelB") > 0)
		{
			SetWeapon("Fists");
			FloorAndCeiling_LowerByValue(441, 9999, 1000);
			PlaySound(0, "Interaction/WallBreak", CHAN_AUTO);
			Radius_Quake(4, 105, 0, 1, 0);
			Radius_Quake(10, 35, 0, 1, 0);
			ThrustThingZ(0, 50, 1, 0);
			Thing_Remove(444);
			Thing_Remove(442);
			Thing_Activate(443);
			SpawnSpotForced("DustCloud", 445, 0, 0);
			SpawnSpotForced("DustCloud", 446, 0, 0);
			SpawnSpotForced("DustCloud", 447, 0, 0);
			SpawnSpotForced("DustCloud", 448, 0, 0);
			SpawnSpotForced("DustCloud", 449, 0, 0);
			SpawnSpotForced("DustCloud", 450, 0, 0);
			SpawnSpotForced("InventoryCrimsonSaltRock", 454, 657, 0);
			SpawnProjectile(445, "JunkStoneA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "JunkStoneB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkBrokenWoodA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "JunkBrokenWoodB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "JunkBrokenGlassA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "JunkBrokenGlassB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "JunkEmptyFragfireCan", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "JunkDepletedPowerShard", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkMetalPlateA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "JunkMetalPlateB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "JunkMetalPlateC", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "JunkMetalPlateD", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "JunkMetalScraps", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "JunkMetalSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkWoodenPlank", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "CultRag", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "IDRag", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkBrokenWoodA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "JunkBrokenWoodB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "JunkBrokenGlassA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "JunkBrokenGlassB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "JunkEmptyFragfireCan", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "JunkDepletedPowerShard", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkMetalPlateA", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "JunkMetalPlateB", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "JunkMetalPlateC", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "JunkMetalPlateD", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "JunkMetalScraps", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "JunkMetalSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "JunkWoodenPlank", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "CultRag", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "IDRag", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "CultFork", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "PowerShard", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "PowerShard", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "PowerShard", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(448, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(449, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(450, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(445, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(446, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);
			SpawnProjectile(447, "AmmoCultistSpike", random(0,255), random(10,50), random(-10,-5), random(5,20), 656);

			Ceiling_MoveTovalue(451, 8, 713, 1);
			Ceiling_MoveTovalue(452, 8, 713, 1);
			Floor_MoveTovalue(452, 80, 1464, 1);
			Delay(1);
			SetActorFlag(656, "NOGRAVITY", 0);
			SetActorFlag(657, "NOGRAVITY", 0);
			//ThrustThing(random(0,255), 3, 0, 657);
			Delay(69);
			Ceiling_MoveTovalue(417, 9, 1472, 1);
			//SetLineSpecial(453, ACS_Execute, 57, 0, 0, 0, 0);
			SetLineSpecial(453, 128, 0, 7, 0, 0, 0);
			TagWait(451);
			FloorAndCeiling_LowerByvalue(452, 64, 1000);
			TagWait(452);
			Thing_Remove(443);

		}
		else
		{
	 	Print(s:"The debris clogging the reservoir could be dislodged with a proper tool.");
        PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	    Delay(35);
		}
	}
}


//CRIMSON SALT MINING
Script 71 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(557))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(557);
	SpawnSpotForced("DustPuff", 558, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryCrimsonSaltRock", 558, 0, 0);
  }
    else
	  If(IsTIDUsed(557))
	  {
	      Print(s:"The crimson salt chunk could be dislodged with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 72 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(559))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(559);
	SpawnSpotForced("DustPuff", 560, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryCrimsonSaltRock", 560, 0, 0);
  }
    else
	  If(IsTIDUsed(559))
	  {
	      Print(s:"The crimson salt chunk could be dislodged with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 73 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(561))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(561);
	SpawnSpotForced("DustPuff", 562, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryCrimsonSaltRock", 562, 0, 0);
  }
    else
	  If(IsTIDUsed(561))
	  {
	      Print(s:"The crimson salt chunk could be dislodged with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 75 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(565))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(565);
	SpawnSpotForced("DustPuff", 566, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryCrimsonSaltRock", 566, 0, 0);
  }
    else
	  If(IsTIDUsed(565))
	  {
	      Print(s:"The crimson salt chunk could be dislodged with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 76 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(567))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(567);
	SpawnSpotForced("DustPuff", 568, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryCrimsonSaltRock", 568, 0, 0);
  }
    else
	  If(IsTIDUsed(567))
	  {
	      Print(s:"The crimson salt chunk could be dislodged with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}



//RED PRIMARCH
//Dialogue
//int dial115 = 6;
Script 117 (void)
{
	SetLineSpecial(652, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(653, 0, 0, 0, 0, 0, 0);
	Delay(105);
	PlaySound(0, "Primarch/RedB", CHAN_AUTO);
    Hudmessage(s:"Erudin:    Who steps inside my lair? The aspiring usurper? I must say, you look good drenched in red."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 1.2, 3.5);
	Delay(6*35);
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
	  PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    You'd do well to hang around Erudin. You might learn a lesson or two."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GOLD, 1.5, 0.90, 4.5, 0.2, 0.5);
	  Delay(5*35);
	  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    She is capable enough already, Elzriel. After all, she is half-demon..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(5*35);
	}
	PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	Hudmessage(s:"But where are my manners? Let me introduce myself: I am Erudin, Primarch of Subterfuge..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 0.2, 0.5);
	Delay(6*35);
	PlaySound(0, "Primarch/RedB", CHAN_AUTO);
    Hudmessage(s:"Don't be intimidated. I only have a simple task for you: if you so much desire to bear my taint..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	Hudmessage(s:"Betray someone important. Spill blood. Prove me that you have what it takes to rival the Baron's skill."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	Hudmessage(s:"Simple enough, isn't it? Just make sure your betrayal involves... lots of bloodshed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 0.2, 2.5);
	Delay(4*35);

	GiveInventory("QuestMap20RedPrimarch", 2);
	PlaySound(0, "Inventory/Writing", CHAN_AUTO);
	Log(s:"Journal updated.");
	SetLineSpecial(653, ACS_Execute, 115, 0, 0, 0, 0);
}
Script 115 (void)
{
	If(CheckInventory("QuestMap20RedPrimarch") == 1)
	{
		Print(s:"The primarch's avatar remains silent.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	    Delay(35);
	}
	else

	  If(dial115 % 6 == 0)
	  {
		If(CheckInventory("ScriptHasBetrayedID") == 2 && CheckInventory("ScriptHasBetrayedPitLord") == 1)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    You betrayed both your sisters and the demons? Preposterous. Where is the proof?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("ScriptHasBetrayedID") == 2)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    You carried out the betrayal against your sisters? Where is the proof?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("ScriptHasBetrayedPitLord") == 1)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    You betrayed a pit lord? I want proof of this treacherous deed! Show me his useless head!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 1.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 1 && CheckInventory("QuestMap18HelpPitLordEberon") == 1)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    You tricked a pit lord into sending his army to certain death? Bring me his useless head..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 1.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("ScriptHasKilledGrundsWarg") > 0)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    Poisoning your warlord's warg is awfully cruel, but it's hardly the bloody betrayal that I seek."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		If(CheckInventory("ScriptHasBetrayedID") == 1)
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    Putting one of your sisters out of her misery doesn't count, dear. I asked for bloodshed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	      dial115 += 1;
	      Delay(2*35);
		}
		else
		{
		  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	      Hudmessage(s:"Erudin:    What's holding you back, dear? Your sisters have a whole camp above, waiting to be ambushed..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	      dial115 += 1;
	      Delay(2*35);
		}
	  }

	  else
	  If(dial115 % 6 == 1)
	  {
	  PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    If you can't handle my task, how could you handle politics? Might as well leave the Baron to it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial115 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial115 % 6 == 2)
	  {
	  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    Time belongs to the victor. History is shaped by the victor. Truth is decided by the victor."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial115 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial115 % 6 == 3)
	  {
	  PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    To manipulate, you need not hide one truth among nine lies, but one lie among nine truths."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial115 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial115 % 6 == 4)
	  {
	  PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    If you seek the favor of the masses, remember... perception is worth a lot more than reality."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial115 += 1;
	  Delay(2*35);
	  }
	  else
	  If(dial115 % 6 == 5)
	  {
	  PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  Hudmessage(s:"Erudin:    When you're powerless you owe everyone a favor. I asked you for a betrayal... and make it bloody."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
	  dial115 += 1;
	  Delay(2*35);
	  }
}
//Taint Offering
Script 116 (void)
{
	If(CheckInventory("QuestMap20RedPrimarch") == 1)
	{
		Delay(35);
		Terminate;
	}
	If(CheckInventory("InventoryDepletedArmorAmulet") > 0 || CheckInventory("InventoryPitLordHead") > 0)
	{
		SetLineSpecial(653, 0, 0, 0, 0, 0, 0);

		If(CheckInventory("InventoryDepletedArmorAmulet") > 0 && CheckInventory("InventoryPitLordHead") > 0)
		{
			PlaySound(654, "Inventory/PickShort", CHAN_AUTO);
			SetWeapon("Fists");
			Delay(12);
			TakeInventory("InventoryDepletedArmorAmulet", 1);
			PlaySound(654, "Ammo/DepletedShardBounce", CHAN_AUTO);
			SpawnSpotForced("IDArmorAmulet", 654, 663, 0);

			Delay(16);
			TakeInventory("InventoryPitLordHead", 1);
			SpawnSpotForced("GorePitLordCommanderHead", 655, 663, 0);
			PlaySound(655, "Inventory/PickShort", CHAN_AUTO);

			Delay(24);

			PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	        Hudmessage(s:"Erudin:    Oh, my, two betrayals? Truly nobody can stay in your way to success, Halfblood!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 3.5, 0.2, 1.5);
	        Delay(5*35);
		}
		else
		If(CheckInventory("InventoryDepletedArmorAmulet") > 0)
		{
			PlaySound(654, "Inventory/PickShort", CHAN_AUTO);
			SetWeapon("Fists");
			Delay(12);
			TakeInventory("InventoryDepletedArmorAmulet", 1);
			PlaySound(654, "Ammo/DepletedShardBounce", CHAN_AUTO);
			SpawnSpotForced("IDArmorAmulet", 654, 663, 0);

			Delay(24);

			PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	        Hudmessage(s:"Erudin:    How did it feel?... ripping that amulet from one of the many orcs you got killed?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 0.2, 1.5);
	        Delay(7*35);
		}
		else
		If(CheckInventory("InventoryPitLordHead") > 0)
		{
			PlaySound(655, "Inventory/PickShort", CHAN_AUTO);
			SetWeapon("Fists");
			Delay(12);
			TakeInventory("InventoryPitLordHead", 1);
			SpawnSpotForced("GorePitLordCommanderHead", 655, 663, 0);
			PlaySound(655, "Inventory/PickShort", CHAN_AUTO);

			Delay(24);

			PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	        Hudmessage(s:"Erudin:    So... you earned a pit lord's trust only to get his men butchered and bring me his head..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 0.2, 0.5);
	        Delay(6*35);
			PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	        Hudmessage(s:"You beat me at my own game, Halfblood. I'd say you are prepared."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 3.5, 0.2, 1.5);
	        Delay(5*35);
		}
		FadeTo(220, 0, 0, 1.0, 0.2);
		Delay(7);
		PlaySound(655, "Gore/FragShotDeath", CHAN_AUTO);
		PlaySound(654, "Magic/Sparks", CHAN_AUTO);
		SpawnSpotForced("BloodCloud", 654, 0, 0);
		SpawnSpotForced("BloodCloud", 655, 0, 0);
		Thing_Remove(663);
		FadeTo(220, 0, 0, 0.0, 0.6);
		Delay(2);
		SpawnSpotForced("FireTinyDie1", 654, 0, 0);
		SpawnSpotForced("FireTinyDie2", 655, 0, 0);
		Delay(35);

		PlaySound(0, "Primarch/RedA", CHAN_AUTO);
		Hudmessage(s:"For my end of the deal... red taint you shall receive. The Baron better watch out for you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 5.5, 1.2, 2.5);
		Delay(5*35);

		TakeInventory("QuestMap20RedPrimarch", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(4*35);
		SetLineSpecial(653, ACS_Execute, 115, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("QuestMap20RedPrimarch") != 1)
	{
		Print(s:"A primarch offering altar.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}






//LOCKED DOORS
Script 47 (void)
{

  If(GetActorZ(0) < -2112.0)
    {
      Print(s:"This gates won't budge.");
      PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	  Delay(35);
    }
}
//ROTATING DOORS
Script 89 (void)
{
  If(GetActorZ(0) < -1522.0 && CheckInventory("BloodKey") > 0)
  {
    Polyobj_DoorSwing(89,16,64,175);
  }
  else
  If(GetActorZ(0) < -1522.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 90 (void)
{
  If(GetActorZ(0) < -472.0 && CheckInventory("DarkKey") > 0)
  {
    Polyobj_DoorSwing(90,16,64,175);
  }
  else
  If(GetActorZ(0) < -472.0 && CheckInventory("DarkKey") == 0)
    {
      Print(s:"This door requires a Dark key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 135 (void)
{
  If(GetSectorCeilingZ(417,0,0) > -1640.0)
  {
	Print(s:"The liquid is pressuring the door shut.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
  }
  else
  If(GetActorZ(0) < -1496.0 && CheckInventory("BloodKey") > 0)
  {
    Polyobj_DoorSwing(135,16,64,175);
  }
  else
  If(GetActorZ(0) < -1496.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 270 (void)
{
  If(GetActorZ(0) < -472.0 && CheckInventory("DarkKey") > 0)
  {
    Polyobj_DoorSwing(270,-16,64,175);
  }
  else
  If(GetActorZ(0) < -472.0 && CheckInventory("DarkKey") == 0)
    {
      Print(s:"This door requires a Dark key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 360 (void)
{
  If(GetActorZ(0) < -542.0 && CheckInventory("BloodKey") > 0)
  {
    Polyobj_DoorSwing(360,16,64,175);
  }
  else
  If(GetActorZ(0) < -542.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}



//READABLES
Script 10 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"SACRIFICIAL BLOOD"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 11 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"HELLFIRE OIL"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 20 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"EVERFLOWING CHALICE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.5);
}

Script 123 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"KEEPER OF ALL GRATES"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 49 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The scroll is full of crude drawings depicting various salt block cutting techniques)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 10.0);
}

Script 50 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 80.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(An old parchment seems to have been preserved by a crust of salt. It cracks as you unroll it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 80.0);

	Hudmessage(s:"The cultists were right, they have eyes everywhere. The Baron himself must have shook the tunnel down to trap me."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 80.0);
	Hudmessage(s:"This is what I deserve for trying to escape.  But what choice do I have?   The slaves can barely survive weeks before"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 80.0);
    Hudmessage(s:"being sacrificed on the brink of starvation.    Their blood flows everywhere, gushing out as we strike the salt walls.  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 80.0);
	Hudmessage(s:"What sort of cursed place is this? How could a noble man like me end up here?...I should have joined the Cult while..."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 80.0);
	Hudmessage(s:"(The rest of the writing trails off into an incoherent smudge)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 80.0);
}

Script 77 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Call of Chaos - First Chant"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.52, 120.0);


	Hudmessage(s:"T'wards the gates of initiation"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.58, 120.0);
	Hudmessage(s:"Marching as we chant"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.60, 120.0);

    Hudmessage(s:"Call the younglings and the dimwits"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.64, 120.0);
	Hudmessage(s:"Join us in our chant"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.66, 120.0);

	Hudmessage(s:"Rip them from their stiffened roots"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.70, 120.0);
	Hudmessage(s:"Marching as we chant"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.72, 120.0);

    Hudmessage(s:"Read to them the call of chaos"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 120.0);
	Hudmessage(s:"Join us in our chant"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 120.0);

	Hudmessage(s:"For, to pass the initiation"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.82, 120.0);
	Hudmessage(s:"Marching as we chant"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.84, 120.0);

    If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"First, we must consume the Knowledge"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	}
	else
	{
	  Hudmessage(s:"First, we must consume the \c[Gold]Knowledge\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	}
	Hudmessage(s:"Join us in our chant"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 79 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Path to Chaos - Chapter III"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 120.0);

	Hudmessage(s:"Knowing the right teachings gives us the key to open the path.     Devotion gives us the strength to start walking it.  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 120.0);

	If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"But only a lifetime of Hedonism will soften the body, the mind and the spirit in anticipation for the chaotic embrace"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
	else
	{
	  Hudmessage(s:"But only a lifetime of \c[Gold]Hedonism\c- will soften the body, the mind and the spirit in anticipation for the chaotic embrace"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
	Hudmessage(s:"that awaits us.     Only when life becomes pain, and pain becomes pleasure can we fulfil our purpose.     For how else  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"would we prepare to descend into the blissful womb of afterlife, if we aren't yearning for its never-ending warmth?"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 80 (void)
{
  If(GetActorZ(0) < -690.0)
  {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"For the Worthless - 2nd Verse"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 120.0);

	Hudmessage(s:"For the ones who worshipped Demons before learning the Call of Chaos"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 120.0);
	If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"For the ones who indulged themselves to a life of pleasure before pledging to Worship"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
	else
	{
	  Hudmessage(s:"For the ones who indulged themselves to a life of pleasure before pledging to \c[Gold]Worship\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
	Hudmessage(s:"For the ones who fell into afterlife before preparing themselves for chaos' embrace"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"You have no worth, and still we remember you."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
  }
}

Script 81 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Embrace of the Afterlife - Final Word"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 120.0);

	Hudmessage(s:"[...]  but ultimately, we are not immortal. Unlike the Demon, who lives within the embrace of chaos, we have to"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
	If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"die for it.    And for those who devote their lives to this final moment, Death itself will end their journey and   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	}
	else
	{
	  Hudmessage(s:"die for it.    And for those who devote their lives to this final moment, \c[Gold]Death\c- itself will end their journey and   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	}
	Hudmessage(s:"lower them below the earth, where the tendrils of chaos will tear them limb from limb and set their spirit free."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 82 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"KNOWLEDGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 83 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"WORSHIP"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 84 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"HEDONISM"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 85 (void)
{	SetFont("SMALLFONT");
	Hudmessage(s:"DEATH"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 2.0);
}

Script 74 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"ALCHEMY MACHINE INSTRUCTIONS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.34, 180.0);

	Hudmessage(s:"For our devotion and sacrifice, our Demon masters have bestowed upon us this alchemy machine - a contraption that"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.40, 180.0);
	Hudmessage(s:"will allow even the most foolish of initiates to prepare the substances required for rituals. Observe the components:"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.42, 180.0);

    If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"The four tanks are destined for prime fluids - oil, mana, poison and blood. Do not mismatch them! For a tank to lend"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.46, 180.0);
	}
	else
	{
	  Hudmessage(s:"\c[Gold]The four tanks are destined for prime fluids - oil, mana, poison and blood.\c- Do not mismatch them! For a tank to lend"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.46, 180.0);
	}
	Hudmessage(s:"its content to the final concoction, the switch must be flipped up.      Opposingly, flipping it down will close the tap.  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.48, 180.0);
	If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"The three kegs are destined for arcane salts. Once again, do not mismatch the color! Simply pour the salts into the"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.50, 180.0);
	}
	else
	{
	  Hudmessage(s:"\c[Gold]The three kegs are destined for arcane salts.\c- Once again, do not mismatch the color! Simply pour the salts into the"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.50, 180.0);
	}
	Hudmessage(s:"top pan, and they will be ready to catalyse the final concoction.  When everything is prepared, pull the main lever."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.52, 180.0);

    Hudmessage(s:"(A note appears to have been recently added at the bottom)"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.58, 180.0);

	Hudmessage(s:"It appears that some of us have taken excessive advantage of this great machine and produced potions for their own"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 180.0);
	Hudmessage(s:"private benefit. In order to combat contraband, our Demon masters have cursed the machine so that it may only lend"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.64, 180.0);
	Hudmessage(s:"its product to special anointed bottles. Do not squander these bottles, as they are reserved for the important rites."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.66, 180.0);
}

Script 99 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

    SetFont("SMALLFONT");
	Hudmessage(s:"Healing - mix blood with green and pink arcane salts, pour result in vials"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 120.0);
	Hudmessage(s:"Haste - hellfire oil, sacrificial blood and pink arcane salts, store in the labelled bottles"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 120.0);
	If(GameSkill() != 5)
	{
    Hudmessage(s:"Hellfire cans - mix hellfire oil with green arcane salts and store in metal cans"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
	Hudmessage(s:"The instructions are clear now. If the cerberi run out of breath during the ritual, the guilt falls upon you."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 100 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

    SetFont("SMALLFONT");
	Hudmessage(s:"[...] to brew a fine Potion of Stoneskin, an alchemist must make use of his finest reserve of mana.    But much like any "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 120.0);
	Hudmessage(s:"strengthening potion, the boon this substance offers must be paid for with blood, which should be mixed in equal part"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 120.0);
    Hudmessage(s:"with the mana. The potency of this potion is guaranteed by adding arcane salts - namely the green and cyan ones [...]"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 120.0);
}

Script 101 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 150.0);

    SetFont("SMALLFONT");
	Hudmessage(s:"(You browse through what looks like an alchemist's notebook. The last entry details how to brew a sleep potion)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.72, 150.0);

	Hudmessage(s:"[...]  Of course, the answer lied with the old masters!      The risks I have taken stealing the books shall soon  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 150.0);
	Hudmessage(s:"pay off! And after studying them carefully, I've learned how they could create an effective sleeping potion"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 150.0);
    Hudmessage(s:"from any kind of green poison, by mixing it with mana and then adding cyan salts. As soon as I get full access"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 150.0);
    Hudmessage(s:"to the new alchemy machine, I shall craft it!    No longer will the wailing of the dying slaves torment my rest."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 150.0);

    Hudmessage(s:"(An additional note is scribbled at the bottom)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 150.0);
	Hudmessage(s:"Taking it on an empty stomach causes frightening hallucinations. I should infuse it into some meat and eat it."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 150.0);
}

int spec111 = 0;
Script 111 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 300.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The book appears to have been written a millenia ago. An old demonic seal marks it as forbidden knowledge)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 300.0);

	Hudmessage(s:"Chronicles of the Schism - Dawn of the First Century"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 300.0);

	Hudmessage(s:"[...]  as their numbers kept dwindling, the Old God worshipping pagans were forced to relinquish their beliefs, or lose"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 300.0);
    Hudmessage(s:"the favor of the Church of Self.     Their dated ways were truly a thorn in the side of their brethren, who rejected  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.56, 300.0);
	Hudmessage(s:"to bow before the caprices of the Elemental Gods.    The ones who insisted on keeping their old beliefs were shunned "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.58, 300.0);
    Hudmessage(s:"and cast away from their community. Scholars have discovered that they had scurried into the Underworld, where"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.60, 300.0);
	Hudmessage(s:"they sought shelter from the enlightened world.     While the followers of Self took fate into their own hands, they  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.62, 300.0);
	Hudmessage(s:"cowered in fear before floods and earthquakes. While we were building roads and ports, they slaved away erecting"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.64, 300.0);
    Hudmessage(s:"lavish underground temples.     While we were furthering our art and knowledge, they garnished their caves full of "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.66, 300.0);
	Hudmessage(s:"statues depicting angels.  While we were reaping the bountiful harvest under the sun, they chanted and called for"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.68, 300.0);
	Hudmessage(s:"their long lost glorious past, like blind maggots writhing in the gutters, further away than ever from the light.        "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.70, 300.0);

    Hudmessage(s:"The first century has been a period of prosperity for us. The magical arts of Body, Mind and Spirit have expanded"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.74, 300.0);
    Hudmessage(s:"far beyond the savage elements, healing and soothing our existence far more reliably than any God could. Every"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.76, 300.0);
    Hudmessage(s:"time nature has punished us, we pushed it back to its place with our own powers, instead of praying it away.  But,"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.78, 300.0);
    Hudmessage(s:"as we know, every garden has its weeds.  In the last years, more and more rumors have been mentioning the name"; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.80, 300.0);
    Hudmessage(s:"of a heretical Cult growing in the shadow of the Self.   Drunkards fill the taverns with talk of humans being lured"; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.82, 300.0);
    Hudmessage(s:"into a perverted belief spun by demons. But in lack of any proper evidence, we can only believe this Cult to be      "; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.84, 300.0);
    Hudmessage(s:"an easy way out for the lowlifes and miscreants who aren't capable of honing their Self in order to ascend to a     "; HUDMSG_PLAIN | HUDMSG_LOG, 18, CR_UNTRANSLATED, 1.5, 0.86, 300.0);
    Hudmessage(s:"superior life.  Besides, demons have long been conquered and driven below the earth, where they fester and fight"; HUDMSG_PLAIN | HUDMSG_LOG, 19, CR_UNTRANSLATED, 1.5, 0.88, 300.0);
    Hudmessage(s:"with the pagans, the dwarves and all the other stubborn rats who couldn't withstand the might of our light.  [...]"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.90, 300.0);
    Hudmessage(s:" "; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_UNTRANSLATED, 1.5, 0.92, 0.1);

    If(spec111 == 0)
	{
      Delay(70*35);
	  Playsound(588, "Abedun/Heh", CHAN_AUTO);
	  Hudmessage(s:"Abedun:    Enjoying the read? My kin saw the worshipers of Air as foolish pagans... but I now believe otherwise."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.94, 6.5, 0.2, 3.5);
      Spec111 += 1;
	}
}

Script 124 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 80.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The perfumed note is signed by the succubus matron Yzbeth)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 80.0);

	Hudmessage(s:"My dear crypt keeper, if your morbid curiosity has pushed you here, I beg you, don't go any further.    There are three"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 80.0);
	Hudmessage(s:"giant rats trapped beyond.    I am sure you have seen plenty of fat rats circling the tombs, but these are not the kind"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 80.0);
    Hudmessage(s:"that you can swiftly catch and eat.   There is barely any flesh on their bones, for they've been starving. You wouldn't"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 80.0);
	Hudmessage(s:"want to release a pack of giant hungry rats upon you, would you?  Please, if you hear them scratch at the wall, then"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.54, 80.0);
	Hudmessage(s:"come see me at my mansion, as I have the only key to the padlock. Worry not - I have the power to tame these beasts."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.56, 80.0);
}

Script 125 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 80.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The letter bears the scent of succubus matron Yzbeth)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 80.0);

	Hudmessage(s:"Oh, crypt keeper, be a dear and do me a favor.  If the Halfblood comes knocking at your door, be as kind as to give her"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 80.0);
	If(GameSkill() == SKILL_HARD)
	{
	  Hudmessage(s:"one of your Trinket Enchantment scrolls.     Don't worry about aiding your master's foe, it's very unlikely that she will"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 80.0);
      Hudmessage(s:"know what to do with the scroll.   Unless, of course, she's carrying a Pendant of True Sight.    But even then... whether"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 80.0);
	}
	else
	{
	  Hudmessage(s:"one of your \c[Gold]Trinket Enchantment scrolls\c-.     Don't worry about aiding your master's foe, it's very unlikely that she will"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 80.0);
      Hudmessage(s:"know what to do with the scroll.   Unless, of course, she's carrying a \c[Gold]Pendant of True Sight\c-.    But even then... whether"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 80.0);
	}
	Hudmessage(s:"you anger the Cult and the Baron, or the local Matron, the price of disobeying will be high.   Weigh your choices.   Mwah!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 80.0);
}

//Obelisk Riddle
int Spec120 = 0;
Script 120 (void)
{
	If(Spec120 == 0)
	{
	  Spec120 += 1;
	  PlaySound(0, "Interaction/HarpA", CHAN_AUTO);
	  GiveInventory("ScriptObeliskCount", 1);
	}

	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"At long last, I can write down my frustration! I went through such an arduous journey, enduring whip and"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 120.0);
	Hudmessage(s:"starvation as I disguised myself among the cultists.      I braved the Sea of Flames, with only a sliver of   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 120.0);
	Hudmessage(s:"hope to give me enough force to endure the heat. Still, my grandfathers showed a will of steel by building"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 120.0);
	Hudmessage(s:"their place of worship in Hell, against all the demonic presence.     I must show that I am worthy of finding"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 120.0);
	Hudmessage(s:"their treasure - except I wasn't expecting such a cryptic riddle!    I thought the obelisks would just show"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 120.0);
    Hudmessage(s:"me the way! I wish I had thought of writing their codes on parchment earlier. Now I have to travel back..."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 120.0);

    Hudmessage(s:"(The nearby obelisk's riddle is scribbled in charcoal below)"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 120.0);

	Hudmessage(s:"__ _ _A____O_ __ _I__, __E_ _ __R___ _L____G ___. _E__ __ O__,"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"__D ____N_ ___T____D_, ___E ____E ____S ___ _T___ _O ___.        "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
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



	//////////////////////////////
	ACS_Terminate(111, 0); //Abedun's reaction
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
