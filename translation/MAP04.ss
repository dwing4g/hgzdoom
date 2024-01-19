#include "zcommon.acs"


//LEVEL START

Script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  Thing_Move(0,2,1);

  SetActorFlag(186, "COUNTITEM", 0);
  SetActorFlag(186, "NOTONAUTOMAP", 1);

  GiveActorInventory(226, "IsGhost", 1);
  SetActorFlag(226, "NOTONAUTOMAP", 1);
  SetActorFlag(226, "NOBLOOD", 1);
  SetActorFlag(226, "NOPAIN", 1);
  SetActorFlag(226, "NOFEAR", 1);
  SetActorFlag(226, "DONTDRAIN", 1);
  SetActorFlag(226, "NOTIMEFREEZE", 1);
  SetActorFlag(226, "DONTTHRUST", 1);
  SetActorFlag(226, "SOLID", 0);

  SetActorProperty(271, APROP_Health, 1);

  If(ThingCountName("IDBearWarrior", 0) > 0)
  {
	  Delay(3*35);
	  Hudmessage(s:"Bear Warrior:    You okay, sarge?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	  PlaySound(690, "BearWarrior/Huh", CHAN_AUTO);
	  Delay(5*35);
	  Hudmessage(s:"Looks like we're at the Forge... hey, is that a Sentry? We could use one of these."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
  }

  //Forge Weapon Machines
  If(GameSkill() > SKILL_VERY_HARD)
  {
	  SetLineSpecial(229, ACS_Execute, 47, 0, 0, 0, 0);
	  SetLineSpecial(233, 0, 0, 0, 0, 0, 0);
	  Thing_Remove(231);
	  SpawnSpotForced("IDPressureCounterBAnimated", 234, 0, 0);
      SpawnSpotForced("IDPressureCounterBAnimated", 235, 0, 64);
	  SpawnSpotForced("IDPressureCounterB", 228, 0, 0);
      SpawnSpotForced("IDPressureCounterB", 230, 0, 64);
	  Floor_RaiseByValue(112, 8, 19);
	  Floor_RaiseByValue(113, 8, 27);
	  Floor_RaiseByValue(117, 8, 19);
	  Floor_RaiseByValue(118, 8, 27);
	  Floor_RaiseByValue(191, 8, 19);
	  Floor_RaiseByValue(192, 8, 27);
  }
  else
  {
  SetLineSpecial(237, ACS_Execute, 47, 0, 0, 0, 0);
  SetLineSpecial(236, 0, 0, 0, 0, 0, 0);
  Thing_Remove(232);
  SpawnSpotForced("IDPressureCounterBAnimated", 228, 0, 0);
  SpawnSpotForced("IDPressureCounterBAnimated", 230, 0, 64);
  SpawnSpotForced("IDPressureCounterB", 234, 0, 0);
  SpawnSpotForced("IDPressureCounterB", 235, 0, 64);
  Floor_RaiseByValue(241, 8, 19);
  Floor_RaiseByValue(242, 8, 27);
  Floor_RaiseByValue(245, 8, 19);
  Floor_RaiseByValue(246, 8, 27);
  Floor_RaiseByValue(251, 8, 19);
  Floor_RaiseByValue(252, 8, 27);
  }
}

Script 54 ENTER
{
  Floor_Waggle(149, 64, 48, 16, 0);
}

Script 55 ENTER
{
  Floor_Waggle(150, 48, 48, 32, 0);
}

Script 56 ENTER
{
  Floor_Waggle(151, 128, 32, 8, 0);
}

//PORTAL EASTER EGG THING
//Portal
Script 77 (void)
{
  Thing_Remove(42);
  FadeTo(255, 255, 255, 1.0, 0.1);
  Delay(16);
  SetLineTexture(43, SIDE_FRONT, TEXTURE_MIDDLE, "-");
  ChangeCamera(180, 0, 0);
  PlaySound(180, "Ambient/BuildUp", CHAN_AUTO);
  FadeTo(255, 255, 255, 0.0, 3.0);
  Delay(4*35);
  FadeTo(255, 255, 255, 1.0, 19.0);
  Delay(20*35);
  ChangeCamera(0, 0, 0);
  Teleport(187, 0, 0);
  SetActorAngle(0, 0.5);
  ThrustThing(128, 15, 1, 0);
  Radius_Quake(1, 70, 0, 1, 0);
  FadeTo(255, 255, 255, 0.0, 2.0);
}

//Tiati
Script 78 (void)
{
	Thing_Remove(42);
	SpawnSpot("NPCTiatiRegular", 183, 691, 0);
	PlaySound(187, "Misc/Teleport", CHAN_AUTO);
}

Script 79 (void)
{
	If(IsTIDUsed(691))
	{
	  Delay(8);
	  FadeTo(0, 0, 0, 1.0, 3.0);
	  PlaySound(691, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Tiati:   ...sorry Zan, but I just can't trust you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 10, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 8.0);
	  Delay(4*35);
	  PlaySound(691, "Weapons/SpikeGunFire", CHAN_AUTO);
	  Delay(6);
	  //Thing_Damage(0, 3*random(5,7), MOD_UNKNOWN);
	  DamageActor(0, 0, 0, AAPTR_NULL, 3*random(5,7), "Tiati");
	  PlaySound(691, "Weapons/SpikeGunFire", CHAN_AUTO);
	  Delay(6);
	  //Thing_Damage(0, 3*random(5,7), MOD_UNKNOWN);
	  DamageActor(0, 0, 0, AAPTR_NULL, 3*random(5,7), "Tiati");
	  PlaySound(691, "Weapons/SpikeGunFire", CHAN_AUTO);
	  Delay(6);
	  //Thing_Damage(0, 300, MOD_UNKNOWN);
	  DamageActor(0, 0, 0, AAPTR_NULL, 300, "Tiati");
	  //Delay(8*35);
	  //Hudmessage(s:"Press ESC to load."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 9999.0, 0.2, 0.5);
	}
}

int spec74 = 0;
Script 80 (void)
{
	If(IsTIDUsed(42))
	{
	  Delay(35);
	  PlaySound(42, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Tiati:   How did you?... okay, go through the portal, I'll be right behind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 10, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	  spec74 += 1;
	}
}

//BEAR DIALOGUE
Script 74 (void)
{
  If(spec74 == 0 && IsTIDUsed(42))
  {
    Hudmessage(s:"Reaver Tiati:    *Knocks on glass*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 10, CR_DARKRED, 1.5, 0.82, 3.0, 0.2, 1.5);
    PlaySound(44, "Step/GlassLeft", CHAN_AUTO, 0.8, false, ATTN_NONE);
    Delay(8);
    PlaySound(44, "Step/GlassLeft", CHAN_AUTO, 0.9, false, ATTN_NONE);
    Delay(12);
    PlaySound(44, "Step/GlassRight", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Delay(50);
  }
  If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1) && IsTIDUsed(42))
  {
	Hudmessage(s:"Bear Warrior:    Hey, is that Tiati? Looks like she's trapped in there..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
	SetLineSpecial(173, 0, 0, 0, 0, 0, 0);
  }
    Delay(175);
}

Script 75 (void)
{
  If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1) && IsTIDUsed(42)==0)
  {
	Hudmessage(s:"Bear Warrior:    Damn it, we're too late! Looks like we'll have to find yet another way around..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	SetLineSpecial(174, 0, 0, 0, 0, 0, 0);
  }
}

Script 104 (void)
{
  If(CheckProximity(0, "IDBearWarrior", 620.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 620.0, 1))
  {
	Hudmessage(s:"Bear Warrior:    Now I'm glad I brought my fire boots along..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
	Thing_Remove(256);
  }
}

//LAVA DAMAGE
Script 71 ENTER
{
	SectorDamage(167, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(262, 1000, "Falling", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//WATER WAGGLE
Script 67 ENTER
{
	Ceiling_Waggle(164, 4, 24, 0, 0);
}

//TIATI & PORTAL
Script 12 (void)
{
	If (CheckInventory("IronKey") > 0 && ISTIDUsed(667))
	{
	  Thing_Remove(667);
	  Thing_Remove(42);
	  Thing_Remove(45);
	  Thing_Remove(47);
	  Thing_Remove(49);
	  Delay(1);
	  SpawnSpot("ShadowAbhaothStanding", 41, 666);
	  SetLineSpecial(43, 0, 0, 0, 0, 0, 0);
	  SetLineTexture(43, SIDE_FRONT, TEXTURE_MIDDLE, "-");
	  SpawnSpotForced("IDScrollA", 38, 0, 0);
	  If(GameSkill() != 6)
	  {
	  SpawnSpotForced("SpikeMag", 39, 0, 0);
	  SpawnSpotForced("SpikeMag", 40, 0, 0);
	  }
	  else
	  {
	  SpawnSpotForced("JunkEmptySpikeMag", 39, 0, 0);
	  SpawnSpotForced("JunkEmptySpikeMag", 40, 0, 0);
	  }
	  SpawnSpotForced("EarthKey", 46, 0, 0);
	  SpawnSpotForced("DemonMessage", 44, 0, 128);
	  SpawnSpotForced("IDPressureCounterB", 48, 0, 64);
	}
}

Script 13 (void)
{
	Thing_Remove(666);
}

//BUBBLE BATH
Script 66 (void)
{
	If(IsTIDUsed(161) && GetActorProperty(0, APROP_Health) <= 199)
	 {
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 Thing_Remove(161);
	 }
}

//POWER GENERATOR
Script 2 (void)
{
	If (CheckInventory("InventoryPowerCore") > 0 && GetSectorCeilingZ(8, 0, 0) < -454.0)
	{
	  SetLineTexture(9, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_0");
	  TakeInventory("InventoryPowerCore", 1);
	  PlaySound(0, "Switches/Switch1");
	  Door_Open(8, 24, 0);
	}
	else
	If (GetSectorCeilingZ(8, 0, 0) < -454.0)
	{
	    Print(s:"The switch is out of power.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 3 (void)
{
	//Door_Close(8, 24, 0);
	Ceiling_LowerAndCrush(8, 24, 200, 0);
	TagWait(8);
	Ceiling_LowerByValue(8, 24, 8);
}

Script 4 (void)
{
	GiveInventory("ScriptHasRestoredPower", 1);
	SpawnSpot("ShadowAbhaothStanding", 22, 665);
	Floor_RaiseByValue(10, 8, 32);
	Delay(50);
	Floor_Waggle(11, 32, 32, 0, 0);
	SpawnSpot("ForgeLightSmall", 13, 0, 0);
	PlaySound(13, "Interaction/FireBlow");
	ChangeCeiling(23, "Iron_05");
	Delay(50);
	SpawnSpot("ForgeLightSmall", 15, 0, 0);
	PlaySound(15, "Interaction/FireBlow");
	ChangeCeiling(24, "Iron_05");
	Delay(50);
	SpawnSpot("ForgeLightSmall", 17, 0, 0);
	PlaySound(17, "Interaction/FireBlow");
	ChangeCeiling(25, "Iron_05");
	Delay(50);
	SpawnSpot("ForgeLightSmall", 19, 0, 0);
	PlaySound(19, "Interaction/FireBlow");
	ChangeCeiling(26, "Iron_05");
	Delay(50);
	Thing_Destroy(665);
	Door_Open(20, 16, 0);
	Delay(8);
	Thing_Activate(21);
	NoiseAlert(0, 0);
	SpawnSpot("ForgeLightSmall", 12, 0, 0);
	SpawnSpot("ForgeLightLarge", 14, 0, 0);
	ChangeCeiling(16, "Iron_05");
	Light_Fade(18, 110, 1);
	Light_Fade(27, 100, 1);
	SpawnSpot("IronUrchin", 50, 0, 0);
	Delay(210);
	Door_Open(8, 24, 0);
	Door_Open(30, 24, 0);
}

Script 21 (void)
{
	Thing_Destroy(665);
}

//Iron Shrine
Script 60 (void)
{
	SetLineSpecial(195, 0, 0, 0, 0, 0, 0);
	Delay(35);
	Thing_Remove(162);
	Thing_Remove(194);
	ChangeCeiling(163, "Iron_05b");
}

//MINING
Script 16 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && GetSectorFloorZ(55, 0, 0) > -374.0)
  {
	SetWeapon("Fists");
    Floor_LowerByValue(55, 999, 80);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	Thing_Remove(56);
	SpawnSpotForced("DustCloud", 188, 0, 0);
  }
    else
	  If (GetSectorFloorZ(55, 0, 0) > -374.0)
	  {
	      Print(s:"This cracked wall looks like it could be broken with the right tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 400 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(600))
  {
	SetWeapon("Fists");
    Thing_Remove(600);
	SpawnSpotForced("DustPuff", 601, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryMithrilOre", 601, 0, 0);
  }
    else
	  If (IsTIDUsed(600))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 402 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(602) && GetActorZ(0) > -820.0)
  {
	SetWeapon("Fists");
    Thing_Remove(602);
	SpawnSpotForced("DustPuff", 603, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryMithrilOre", 603, 0, 0);
  }
    else
	  If (IsTIDUsed(602) && GetActorZ(0) > -820.0)
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 404 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(604))
  {
	SetWeapon("Fists");
    Thing_Remove(604);
	SpawnSpotForced("DustPuff", 605, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryMithrilOre", 605, 0, 0);
	SpawnSpotForced("JunkMetalPlateA", 157, 670, 0);
	Delay(1);
	SetActorProperty(670, APROP_Gravity, 0.0);
	SetActorProperty(670, APROP_Speed, 0.0);
  }
    else
	  If (IsTIDUsed(604))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 500 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(500))
  {
	SetWeapon("Fists");
    Thing_Remove(500);
	SpawnSpotForced("DustPuff", 501, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 501, 0, 0);
  }
    else
	  If (IsTIDUsed(500))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 502 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(502))
  {
	SetWeapon("Fists");
    Thing_Remove(502);
	SpawnSpotForced("DustPuff", 503, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 503, 0, 0);
  }
    else
	  If (IsTIDUsed(502))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 504 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(504))
  {
	SetWeapon("Fists");
    Thing_Remove(504);
	SpawnSpotForced("DustPuff", 505, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 505, 0, 0);
  }
    else
	  If (IsTIDUsed(504))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 506 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(506))
  {
	SetWeapon("Fists");
    Thing_Remove(506);
	SpawnSpotForced("DustPuff", 507, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 507, 0, 0);
  }
    else
	  If (IsTIDUsed(506))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 508 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(508))
  {
	SetWeapon("Fists");
    Thing_Remove(508);
	SpawnSpotForced("DustPuff", 509, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 509, 0, 0);
  }
    else
	  If (IsTIDUsed(508))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 510 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(510))
  {
	SetWeapon("Fists");
    Thing_Remove(510);
	SpawnSpotForced("DustPuff", 511, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 511, 0, 0);
  }
    else
	  If (IsTIDUsed(510))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 512 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(512))
  {
	SetWeapon("Fists");
    Thing_Remove(512);
	SpawnSpotForced("DustPuff", 513, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 513, 0, 0);
  }
    else
	  If (IsTIDUsed(512))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 514 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(514))
  {
	SetWeapon("Fists");
    Thing_Remove(514);
	SpawnSpotForced("DustPuff", 515, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnspotForced("InventoryIronOre", 515, 0, 0);
  }
    else
	  If (IsTIDUsed(514))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

//AXE MAZE
//Walls
Script 86 (void)
{
	PlaySound(210, "Switches/Switch2", CHAN_AUTO);
	Delay(8);
	Floor_LowerByValue(207, 2, 32);
}
Script 87 (void)
{
	PlaySound(211, "Switches/Switch2", CHAN_AUTO);
	Delay(8);
	Floor_LowerByValue(205, 2, 32);
}
Script 88 (void)
{
	PlaySound(212, "Switches/Switch2", CHAN_AUTO);
	Delay(8);
	Floor_LowerByValue(208, 2, 32);
}
Script 89 (void)
{
	PlaySound(213, "Switches/Switch2", CHAN_AUTO);
	Delay(8);
	Floor_LowerByValue(206, 2, 32);
}
//Lever
Script 90 (void)
{
	If(GetSectorFloorZ(205, 0, 0) < -833.0 && GetSectorFloorZ(206, 0, 0) < -833.0 && GetSectorFloorZ(207, 0, 0) < -833.0 && GetSectorFloorZ(208, 0, 0) < -833.0)
	{
		SetLineSpecial(214, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(218, 0, 0, 0, 0, 0, 0);
		SetActorPitch(216, 0.85);
		PlaySound(216, "Interaction/MachineOn", CHAN_AUTO);
		Delay(50);
		PlaySound(215, "Magic/Dispel", CHAN_AUTO);
		Delay(4);
		Line_SetBlocking(209, 0, BLOCKF_EVERYTHING);
		SetLineTexture(209, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(209, SIDE_BACK, TEXTURE_MIDDLE, "");
		Delay(35);

		Thing_Destroy(220);
		Thing_Remove(219);
		Line_SetBlocking(218, 0, BLOCKF_EVERYTHING);
		Delay(16);
		Hudmessage(s:"The Forgotten One:   ...thank...you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 2.0, 0.4, 3.0);

		Delay(35);
		Thing_Move(221, 222, 1);
		Thing_Move(224, 223, 1);
		Thing_Remove(222);
		Thing_Activate(223);
		Delay(4*35);
		If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1))
        {
	     Hudmessage(s:"Bear Warrior:    Rest well, ghost."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
		}
    }
	else
	{
	  Print(s:"The lever won't budge.");
	  PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	  Delay(70);
	}
}
Script 96 ENTER //(void)
{
	SetActorFlag(221, "FLOATBOB", 1);
	Delay(32);
	PlaySound(221, "Metal/Bounce", CHAN_AUTO, 1.0, 0, ATTN_STATIC);
	SpawnSpot("SparkToss", 224, 0, 0);
	SpawnSpot("SparkToss", 224, 0, 0);
	SpawnSpot("SparkToss", 224, 0, 0);
	Delay(33);
	Restart;
}
//The Forgotten One Dialogue
Script 91 (void)
{
	Thing_Remove(217);
	Delay(12);
    Hudmessage(s:"The Forgotten One:   *Ghastly* ...who steps into my maze?... a... fellow immortal?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 4.0, 1.0, 1.5);
}
Script 92 (void)
{
    Hudmessage(s:"The Forgotten One:   Demonblood... you must help me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 3.0, 0.4, 0.8);
	{
	Delay(5*35);
    If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    A Minotaur ghost? I wonder what he wants..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
}
}
Script 93 (void)
{
	SetLineSpecial(218, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"The Forgotten One:   ...I was a legendary axesmith... they sealed away my anvil..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 3.0, 0.4, 0.8);
	Delay(4*35);
	SetLineSpecial(218, ACS_Execute, 94, 0, 0, 0, 0);
}
Script 94 (void)
{
	SetLineSpecial(218, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"The Forgotten One:   ...the walls here... they speak... they hold the key to freedom..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 4.0, 0.4, 0.8);
	Delay(5*35);
    If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    Well I did notice some odd looking walls around here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
	  Delay(5*35);
    }
	SetLineSpecial(218, ACS_Execute, 95, 0, 0, 0, 0);
}
Script 95 (void)
{
	SetLineSpecial(218, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"The Forgotten One:   ...I cannot have rest... I need my anvil... help me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKGRAY, 1.5, 0.86, 3.0, 0.4, 0.8);
	Delay(4*35);
	SetLineSpecial(218, ACS_Execute, 93, 0, 0, 0, 0);
}

//Acid Pox Tip
Script 97 (void)
{
	If(GameSkill() < SKILL_VERY_HARD)
	{
		SetFont("SMALLFONT");
		Hudmessage(s:"Tip: You can switch between ammo types by pressing the Potion Launcher key \c[White](DEFAULT: 6)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 6.0);
	}
	SpawnSpot("ForgeElemental", 225, 0, 0);
}

//DRAWBRIDGE
Script 20 (void)
{
  FloorAndCeiling_LowerByValue(66, 16, 152);
  FloorAndCeiling_LowerByValue(139, 16, 168);
  Floor_LowerByValue(67, 16, 112);
  Thing_Move(68, 69, 1);
  Thing_Move(70, 71, 1);
  Thing_Move(72, 73, 1);
  Thing_Move(74, 75, 1);
  Thing_Move(140, 141, 1);
  Thing_Move(142, 143, 1);
  Thing_Move(144, 145, 1);
  Thing_Move(146, 147, 1);
}

//MONSTER SPAWNS
//Forge Elemental
Script 24 (void)
{
	//NoiseAlert(0,0);
	Delay(35);
	Thing_Activate(61);
	Delay(1);
	ThrustThingZ(61, 10, 0, 0);

}

Script 53 (void)
{
	SpawnSpot("ForgeElemental", 148, 0, 0);
}

Script 59 (void)
{
	Radius_Quake(5, 105, 0, 1, 0);
	SpawnSpot("ForgeElemental", 155, 64, 0);
	Delay(1);
	NoiseAlert(0, 0);
}

//Pox Ambush
Script 42 (void)
{
	If(IsTIDUsed(97) == 0 && IsTIDUsed(160))
	{
	Thing_Remove(160);
	SpawnSpot("Conscript", 98, 0, 64);
	SpawnSpot("Cerberus", 99, 0, 64);
	}
}

//Iron Shrine Ambush
Script 61 (void)
{
	Thing_Spawn(156, 65000, 160, 0);
	NoiseAlert(0, 0);
}

//Five Mithril Monster Spawn
Script 68 (void)
{
	If(CheckInventory("InventoryMithrilOre") == 5 )
	{
		SpawnSpot("IronUrchin", 168, 0, 64);
		SpawnSpot("Initiate", 169, 0, 192);
		Terminate;
	}
	Delay(105);
	Restart;
}

//LIFT CRUSHER
Script 72 ENTER
{
	SectorDamage(171, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//ELEVATORS & DOORS
Script 5 (void)
{
	If(CheckInventory("ScriptHasRestoredPower") > 0 && GetSectorCeilingZ(5, 0, 0) > -355.0)
	{
	FloorAndCeiling_LowerByValue(5, 4, 32);
	Tagwait(5);
	PlaySound(28, "Interaction/Spark");
	SpawnSpot("SparkDie", 28, 0);
	Delay(4);
	SpawnSpot("SparkDie", 28, 0);
	Delay(4);
	SpawnSpot("SparkDie", 28, 0);
	Delay(4);
	SpawnSpot("SparkGenerator", 28, 0);
	}
	    else
		If(CheckInventory("ScriptHasRestoredPower") == 0)
		{
		Print(s:"Looks like the main power has been shut down.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		}
}

Script 8 (void)
{
	If(CheckInventory("InventoryToolkit") > 0 && GetSectorFloorZ(31, 0, 0) > -344.0)
	{
	SetWeapon("Fists");
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(16);
	ACS_NamedExecuteWithResult("TakeWeapons");
	TakeInventory("InventoryToolkit", 1);
	PlaySound(0, "Metal/Bounce2");
	SpawnSpotForced("DustPuff", 270, 0, 0);
	Delay(35);
	PlaySound(0, "Metal/Bounce3");
	SpawnSpotForced("DustPuff", 270, 0, 0);
	Delay(16);
	PlaySound(0, "Metal/Bounce2");
	SpawnSpotForced("DustPuff", 270, 0, 0);
	Delay(35);
	SpawnSpotForced("IDToolkit", 32, 0, 0);
	PlaySound(0, "Switches/Switch1");
	SetLineTexture(166, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_DN");
	ACS_NamedExecuteWithResult("GiveWeapons");
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	Delay(35);
	Floor_LowerByValue(31, 8, 116);
	}
	    else
		If(GetSectorFloorZ(31, 0, 0) > -344.0)
		{
		Print(s:"The switch is stuck. Seems like you'll need the proper tools to unjam it without damaging it.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		}
}

Script 9 (void)
{
If(CheckInventory("IronKey") < 1)
Print(s:"This switch requires an Iron key to open the door.");
  else
  If ((GetActorZ(0) < -321.0) && CheckInventory("IronKey") > 0 && GetSectorFloorZ(35, 0, 0) > -342.0)
  Floor_LowerByValue(35, 8, 112);

}

Script 38 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
	Generic_Door(80, 16, 0, 34, 0);
	Delay(50);
	Thing_Destroy(664);
	}
	    else
		Print(s:"This door requires an Earth key to open.");
}

Script 39 (void)
{
	If(CheckInventory("EarthKey") > 0)
	Generic_Door(81, 16, 0, 34, 0);
	    else
		Print(s:"This door requires an Earth key to open.");
}

Script 40 (void)
{
	Door_Open(86, 16, 0);
}

Script 58 (void)
{
	If(CheckInventory("EarthKey") > 0 )
	{
	FloorAndCeiling_LowerByValue(171, 16, 120);
	FloorAndCeiling_LowerByValue(154, 16, 120);
	Tagwait(171);
	Tagwait(154);
	Delay(105);
	FloorAndCeiling_RaiseByValue(154, 16, 120);
	FloorAndCeiling_RaiseByValue(171, 16, 120);
	Tagwait(154);
	Tagwait(171);
	}
	    else
		Print(s:"This switch requires the Earth key to activate the lift.");
}

Script 63 (void)
{
	Floor_LowerByValue(159, 8, 92);
	Tagwait(159);
	Delay(385);
	Floor_RaiseByValue(159, 8, 92);
	Tagwait(159);
}

Script 83 (void)
{
	If(CheckInventory("AxeKey") > 0)
	{
	SetLineSpecial(197, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(196, 8, 40);
	Ceiling_RaiseByValue(196, 8, 64);
	}
	    else
		{
		Print(s:"This strange door has an axe-shaped keyhole to the side.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(35);
		}
}

Script 84 (void)
{
	If(CheckInventory("AxeKey") > 0)
	{
	SetLineSpecial(199, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(198, 8, 40);
	Ceiling_RaiseByValue(198, 8, 64);
	}
	    else
		{
		Print(s:"This strange door has an axe-shaped keyhole to the side.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(35);
		}
}

Script 85 (void)
{
	If(CheckInventory("AxeKey") > 0)
	{
	SetLineSpecial(201, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(200, 8, 40);
	Ceiling_RaiseByValue(200, 8, 64);
	}
	    else
		{
		Print(s:"This strange door has an axe-shaped keyhole to the side.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(35);
		}
}

//SWINGING DOORS
Script 269 (void)
{
If (GetActorZ(0) < -441.0)
Polyobj_DoorSwing(269,16,64,105);
}

Script 270 (void)
{
If (GetActorZ(0) < -441.0)
Polyobj_DoorSwing(270,16,64,105);
}

Script 271 (void)
{
If (GetActorZ(0) < -441.0)
Polyobj_DoorSwing(271,16,64,105);
}

Script 272 (void)
{
If (GetActorZ(0) < -368.0)
Polyobj_DoorSwing(272,16,64,105);
SetLineSpecial(172, ACS_Execute, 272, 0, 0, 0, 0);
}

//MUSIC
Script 14 (void)
{
	SetMusic("HTrack06");
}

//MISSION ENDING
Script 41 (void)
{
	If(CheckInventory("InventoryMithrilGear") > 0)
	{
	SetWeapon("Fists");
	SetLineSpecial(178, 0, 0, 0, 0, 0, 0);
	TakeInventory("InventoryPowerCore", 1);
	FloorAndCeiling_LowerByValue(94, 16, 16);
	Floor_LowerByValue(85, 16, 16);
	TagWait(84);
	If(CheckProximity(0, "IDBearWarrior", 900.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 900.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    Fire in the hole!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	Delay(35);
	SpawnSpotForced("SparkToss", 87, 0, 0);
	PlaySound(87, "Interaction/Spark");
	Delay(16);
	SpawnSpotForced("SparkToss", 88, 0, 0);
	PlaySound(88, "Interaction/Spark");
	Delay(16);
	SpawnSpotForced("SparkToss", 89, 0, 0);
	PlaySound(89, "Interaction/Spark");
	Delay(16);
	SpawnSpotForced("SparkToss", 90, 0, 0);
	PlaySound(90, "Interaction/Spark");
	SpawnSpotForced("SparkToss", 91, 0, 0);
	PlaySound(91, "Interaction/Spark");
	Delay(8);
	PlaySound(93, "Weapons/SpikeShotDeath");
	Delay(35);
	PlaySound(93, "Weapons/SpikeShotDeath");
	Delay(35);
	Radius_Quake(5, 300, 3, 30, 89);
	FadeTo(0,0,0, 1.0, 4.5);
	SpawnSpotForced("ExplosionMedium", 92, 0, 0);
	SpawnSpotForced("ExplosionMedium", 95, 0, 0);
	SpawnSpotForced("ExplosionMedium", 96, 0, 0);
	Thing_Remove(93);
	Delay(6);
	SetLineTexture(258, SIDE_FRONT, TEXTURE_TOP, "Ash2");
	Delay (16);
	SpawnSpotForced("ExplosionMedium", 95, 0, 0);
	Delay (12);
	SpawnSpotForced("ExplosionMedium", 96, 0, 0);
	Delay (16);
	SpawnSpotForced("ExplosionLarge", 92, 0, 0);
	Delay (10);
	SpawnSpotForced("ExplosionLarge", 95, 0, 0);
	Delay (14);
	SpawnSpotForced("ExplosionHuge", 96, 0, 0);
	Delay (18);
	SpawnSpotForced("ExplosionHuge", 92, 0, 0);
	Delay (12);
	SpawnSpotForced("ExplosionHuge", 95, 0, 0);
	Delay (16);
	SpawnSpotForced("ExplosionHuge", 96, 0, 0);
	Delay (14);
	SpawnSpotForced("ExplosionHuge", 92, 0, 0);
	Delay (16);
	SpawnSpotForced("ExplosionHuge", 95, 0, 0);
	Delay (10);
	SpawnSpotForced("ExplosionHuge", 96, 0, 0);
	Delay (16);
	SpawnSpotForced("ExplosionHuge", 92, 0, 0);
	Delay (18);
	SpawnSpotForced("ExplosionHuge", 95, 0, 0);
	Delay (16);
	SpawnSpotForced("ExplosionHuge", 96, 0, 0);
	Delay (12);

	ACS_NamedExecuteWithResult("FriendlyCounter");

	TakeInventory("InventoryGreatForgeInstructions", 1);
	TakeInventory("InventoryPickAxe", 1);
	TakeInventory("InventoryIronOre", 9999);
	TakeInventory("InventoryIronBar", 9999);
	TakeInventory("InventoryRedCrystal",9999);

	Exit_Normal(0);
	}
	else
	Print(s:"You should grab the gear from the anvil before you leave.");
	PlaySound(0, "Character/ZanSigh");
	Delay(70);
}





//SMELTING & SMITHING
//Dwarf Forge
Script 43 (void)
{
	If(CheckInventory("InventoryIronOre") == 0)
	{
	Print(s:"You don't have any Iron Ore to smelt.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(400))
	  Print(s:"You must claim the Iron Ingot before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronOre") > 0)
		{
			TakeInventory("InventoryIronOre", 1);
			SpawnSpotForced("IDIronOre", 100, 401, 0);
			PlaySound(100, "Metal/Land");
			Delay(16);
			PlaySound(100, "Interaction/MachineOn");
			Delay(8);
			Ceiling_RaiseByValue(104, 4, 12);
			TagWait(104);
			PlaySound(100, "Weapons/FlameDeath");
			Thing_Remove(401);
			Delay(16);
			Ceiling_LowerByValue(104, 4, 12);
			Ceiling_RaiseByValue(105, 2, 6);
			TagWait(105);
			SpawnSpotForced("SteamPuffMedium", 101, 0, 0);
			PlaySound(101, "Weapons/SteamHiss");
			Ceiling_LowerByValue(105, 9999, 6);
			TagWait(105);
			SpawnSpotForced("InventoryIronBar", 101, 400, 0);
		}
}
//Iron Key Machine
Script 44 (void)
{
  If(CheckInventory("IronKey") > 0)
  Print(s:"You already have an Iron Key.");
  else
	If(CheckInventory("InventoryIronBar") == 0)
	{
	Print(s:"You don't have any Iron Ingots.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(403))
	  Print(s:"The Iron Key is ready to be picked.");
	  else
	    If(CheckInventory("InventoryIronBar") > 0)
		{
			TakeInventory("InventoryIronBar", 1);
			SpawnSpotForced("IDIronBar", 106, 402, 0);
			PlaySound(106, "Metal/Bounce3");
			Delay(35);
			PlaySound(106, "Interaction/MachineOn");
			Floor_RaiseByValue(108, 4, 19);
			Floor_RaiseByValue(109, 4, 27);
			TagWait(109);
			PlaySound(107, "Weapons/FlameDeath");
			Thing_Remove(402);
			Delay(105);
			ChangeFloor(119, "Molten01");
			Floor_LowerByValue(108, 4, 19);
			Floor_LowerByValue(109, 4, 27);
			TagWait(109);
			Delay(8);
			PlaySound(107, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 107, 0, 0);
			Delay(1);
			ChangeFloor(119, "Iron1_G");
			SpawnSpotForced("IronKey", 107, 403, 0);
		}
}
//Fragfire Can Machine
Script 82 (void)
{
	If(CheckInventory("InventoryIronBar") == 0)
	{
	Print(s:"You don't have any Iron Ingots.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(417))
	  Print(s:"You must claim the Fragfire Can before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") > 0)
		{
			TakeInventory("InventoryIronBar", 1);
			SpawnSpotForced("IDIronBar", 189, 416, 0);
			PlaySound(189, "Metal/Bounce3");
			Delay(16);
			PlaySound(189, "Interaction/MachineOn");
			Floor_RaiseByValue(191, 8, 19);
			Floor_RaiseByValue(192, 8, 27);
			TagWait(192);
			PlaySound(189, "Weapons/FlameDeath");
			Thing_Remove(416);
			Floor_RaiseByValue(193, 4, 16);
			Tagwait(193);
			Floor_LowerByValue(193, 4, 16);
			TagWait(193);
			Delay(8);
			PlaySound(190, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 190, 0, 0);
			Delay(1);
			//ChangeFloor(120, "Iron1_G");
			SpawnSpotForced("FragfireCan", 190, 417, 0);
			//ChangeFloor(120, "Molten01");
			Floor_LowerByValue(191, 8, 19);
			Floor_LowerByValue(192, 8, 27);
			TagWait(192);
		}
}
//Boltmag Machine
Script 46 (void)
{
	If(CheckInventory("InventoryIronBar") == 0 || CheckInventory("InventoryRedCrystal") < 3 )
	{
	Print(s:"You don't have all the required materials.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(408))
	  Print(s:"You must claim the Boltmag before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") > 0 && CheckInventory("InventoryRedCrystal") >= 3 )
		{
			TakeInventory("InventoryIronBar", 1);
			TakeInventory("InventoryRedCrystal", 3);
			SpawnSpotForced("IDIronBar", 115, 406, 0);
			SpawnSpotForced("CaveCrystalRedA", 114, 407, 0);
			PlaySound(115, "Metal/Bounce3");
			Delay(16);
			PlaySound(115, "Interaction/MachineOn");
			Floor_RaiseByValue(117, 8, 19);
			Floor_RaiseByValue(118, 8, 27);
			TagWait(118);
			PlaySound(115, "Weapons/FlameDeath");
			Delay(16);
			PlaySound(115, "Metal/Bounce1");
			Delay(8);
			PlaySound(115, "Metal/Bounce2");
			Delay(8);
			PlaySound(115, "Metal/Land");
			Thing_Remove(406);
			Thing_Remove(407);
			Delay(35);
			PlaySound(116, "Weapons/SteamHiss");
			Floor_LowerByValue(117, 8, 19);
			Floor_LowerByValue(118, 8, 27);
			TagWait(118);
			SpawnSpotForced("Boltmag", 116, 408, 0);
		}
}

//Spike Machine
Script 45 (void)
{
	If(CheckInventory("InventoryIronBar") == 0)
	{
	Print(s:"You don't have any Iron Ingots.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(405))
	  Print(s:"You must claim all the Spikes before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") > 0)
		{
			TakeInventory("InventoryIronBar", 1);
			SpawnSpotForced("IDIronBar", 110, 404, 0);
			PlaySound(110, "Metal/Bounce3");
			Delay(16);
			PlaySound(110, "Interaction/MachineOn");
			Floor_RaiseByValue(112, 8, 19);
			Floor_RaiseByValue(113, 8, 27);
			TagWait(113);
			PlaySound(110, "Weapons/FlameDeath");
			Thing_Remove(404);
			Delay(35);
			ChangeFloor(120, "Molten01");
			Floor_LowerByValue(112, 8, 19);
			Floor_LowerByValue(113, 8, 27);
			TagWait(113);
			PlaySound(111, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 111, 0, 0);
			Delay(1);
			ChangeFloor(120, "Iron1_G");
			SpawnSpotForced("AmmoCultistSpike", 111, 405, 0);
		}
}
//Fire Hammer Machine
Script 98 (void)
{
	If(CheckInventory("InventoryIronBar") == 0 || CheckInventory("InventoryRedCrystal") < 6 )
	{
	Print(s:"You don't have all the required materials.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(418))
	  Print(s:"You must claim the Fire Hammer before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") >= 1 && CheckInventory("InventoryRedCrystal") >= 6 )
		{
			TakeInventory("InventoryIronBar", 1);
			TakeInventory("InventoryRedCrystal", 6);
			SpawnSpotForced("IDIronBar", 238, 419, 0);
			SpawnSpotForced("CaveCrystalRedA", 239, 419, 0);
			PlaySound(238, "Metal/Bounce3");
			Delay(16);
			PlaySound(244, "Interaction/MachineOn");
			Floor_RaiseByValue(241, 8, 19);
			Floor_RaiseByValue(242, 8, 27);
			TagWait(242);
			PlaySound(240, "Weapons/FlameDeath");
			Thing_Remove(419);
			Floor_RaiseByValue(243, 4, 16);
			Tagwait(243);
			Floor_LowerByValue(243, 4, 16);
			TagWait(243);
			Delay(32);
			PlaySound(240, "Metal/Bounce1");
			Delay(16);
			PlaySound(240, "Metal/Bounce2");
			Delay(16);
			PlaySound(240, "Metal/Land");
			Delay(8);
			PlaySound(240, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 240, 0, 0);
			Delay(1);
			//ChangeFloor(120, "Iron1_G");
			SpawnSpotForced("FireHammer", 240, 418, 0);
			//ChangeFloor(120, "Molten01");
			Floor_LowerByValue(241, 8, 19);
			Floor_LowerByValue(242, 8, 27);
			TagWait(242);
		}
}
//Great Axe Machine
Script 100 (void)
{
	If(CheckInventory("InventoryIronBar") < 8 )
	{
	Print(s:"You don't have enough Iron Ingots.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(420))
	  Print(s:"You must claim the Great Axe before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") >= 8 )
		{
			TakeInventory("InventoryIronBar", 8);
			SpawnSpotForced("IDIronBar", 247, 421, 0);
			PlaySound(247, "Metal/Bounce3");
			Delay(16);
			PlaySound(250, "Interaction/MachineOn");
			Floor_RaiseByValue(245, 8, 19);
			Floor_RaiseByValue(246, 8, 27);
			TagWait(246);
			PlaySound(247, "Weapons/FlameDeath");
			Thing_Remove(421);
			Floor_RaiseByValue(249, 4, 16);
			TagWait(249);
			Floor_LowerByValue(249, 4, 16);
			TagWait(249);
			Delay(32);
			PlaySound(248, "Metal/Bounce1");
			Delay(32);
			PlaySound(248, "Metal/Bounce2");
			Delay(32);
			PlaySound(248, "Metal/Bounce3");
			Delay(32);
			PlaySound(248, "Metal/Land");
			Delay(8);
			PlaySound(248, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 248, 0, 0);
			Delay(1);
			//ChangeFloor(120, "Iron1_G");
			SpawnSpotForced("GreatAxe", 248, 420, 0);
			//ChangeFloor(120, "Molten01");
			Floor_LowerByValue(245, 8, 19);
			Floor_LowerByValue(246, 8, 27);
			TagWait(246);
		}
}
//Axe Machine
Script 102 (void)
{
	If(CheckInventory("InventoryIronBar") == 0 )
	{
	Print(s:"You don't have any Iron Ingots.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(IsTIDUsed(422))
	  Print(s:"You must claim the Axe before using the machine again.");
	  else
	    If(CheckInventory("InventoryIronBar") > 0 )
		{
			TakeInventory("InventoryIronBar", 1);
			SpawnSpotForced("IDIronBar", 253, 423, 0);
			PlaySound(253, "Metal/Bounce3");
			Delay(16);
			PlaySound(253, "Interaction/MachineOn");
			Floor_RaiseByValue(251, 8, 19);
			Floor_RaiseByValue(252, 8, 27);
			TagWait(252);
			PlaySound(247, "Weapons/FlameDeath");
			Thing_Remove(423);
			Floor_RaiseByValue(254, 4, 16);
			Tagwait(254);
			Floor_LowerByValue(254, 4, 16);
			TagWait(254);
			Delay(32);
			PlaySound(255, "Metal/Bounce1");
			Delay(16);
			PlaySound(255, "Metal/Bounce2");
			Delay(16);
			PlaySound(255, "Metal/Bounce3");
			Delay(16);
			PlaySound(255, "Metal/Land");
			Delay(8);
			PlaySound(255, "Weapons/SteamHiss");
			SpawnSpotForced("SteamPuffMedium", 248, 0, 0);
			Delay(1);
			//ChangeFloor(120, "Iron1_G");
			SpawnSpotForced("Axe", 255, 422, 0);
			//ChangeFloor(120, "Molten01");
			Floor_LowerByValue(251, 8, 19);
			Floor_LowerByValue(252, 8, 27);
			TagWait(252);
		}
}

//Great Forge Smelting Machine
Script 49 (void)
{
If(IsTIDUsed(410))
  Print(s:"The Mithril Ingot is ready to be picked.");
  else
  If(CheckInventory("InventoryMithrilOre") == 0)
  {
  Print(s:"You don't have any Mithril Ore to smelt.");
  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
  else
	If(CheckInventory("InventoryMithrilBar") == 1)
	Print(s:"You already have a Mithril Bar.");
	else
	  If(CheckInventory("InventoryMithrilOre") < 5)
	  {
	  Print(s:"You need five lumps of Mithril Ore to smelt an Ingot.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
	  else
	    If(CheckInventory("InventoryMithrilOre") == 5)
		{
			TakeInventory("InventoryMithrilOre", 5);
			SpawnSpotForced("IDMithrilOre", 123, 409, 0);
			PlaySound(123, "Metal/Land");
			Delay(35);
			PlaySound(0, "Interaction/MachineOn");
			Delay(16);
			Ceiling_RaiseByValue(126, 2, 16);
			TagWait(126);
			PlaySound(123, "Weapons/FlameDeath");
			Thing_Remove(409);
			Delay(35);
			Ceiling_LowerByValue(126, 2, 16);
			Ceiling_RaiseByValue(127, 1, 6);
			TagWait(127);
			FloorAndCeiling_LowerByValue(128, 2, 20);
			Tagwait(128);
			Delay(35);
			PlaySound(129, "Weapons/SteamHiss");
			FloorAndCeiling_RaiseByValue(128, 2, 20);
			Delay(4);
			Ceiling_LowerByValue(127, 9999, 6);
			TagWait(127);
			SpawnSpotForced("InventoryMithrilBar", 129, 410, 0);
		}
}

//Great Forge Cauldron
Script 50 (void)
{
  If(IsTIDUsed(413))
  Print(s:"The Mould is filled and ready to be picked.");
  else
	If(IsTIDUsed(411) == 0)
	{
    Print(s:"You must place the empty mould under the tap first.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
    else
      If(CheckInventory("InventoryMithrilBar") == 0)
	  {
      Print(s:"You don't have any Mithril Ingots to cast.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
      else
	    If(CheckInventory("InventoryMithrilBar") > 0)
		{
			TakeInventory("InventoryMithrilBar", 1);
			SpawnSpotForced("IDMithrilBar", 131, 412, 0);
			PlaySound(131, "Metal/Bounce2");
			Delay(35);
			PlaySound(130, "Interaction/MachineOn");
			Delay(16);
			Ceiling_RaiseByValue(133, 2, 8);
			TagWait(133);
			PlaySound(131, "Weapons/FlameDeath");
			Thing_Remove(412);
			Delay(35);
			Ceiling_LowerByValue(133, 2, 16);
			TagWait(133);
			FloorAndCeiling_LowerByValue(133, 2, 20);
			Tagwait(133);
			PlaySound(130, "Weapons/SteamHiss");
			Thing_Remove(411);
			Delay(1);
			SpawnSpotForced("InventoryGearMouldFilled", 130, 413, 0);
		}
}

//Mould Placement
Script 51 (void)
{
  If(IsTIDUsed(411))
  Print(s:"The Gear Mould is placed and ready to be filled.");
  else
	If(CheckInventory("InventoryGearMouldEmpty") == 0)
	{
	Print(s:"You don't have any Mould to place.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(CheckInventory("InventoryGearMouldEmpty") == 1)
	  {
	  TakeInventory("InventoryGearMouldEmpty", 1);
	  SpawnSpotForced("IDMould", 130, 411, 0);
	  PlaySound(130, "Metal/Bounce3");
	  }
}

//Great Anvil
Script 52 (void)
{
  If(IsTIDUsed(415))
  Print(s:"The Mithril Gear has been finally finished and is ready to be picked up.");
  else
	If(CheckInventory("InventoryGearMouldFilled") == 0)
	{
	Print(s:"You don't have anything that needs to be hammered on the Great Forge's Anvil.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	  If(CheckInventory("InventoryGearMouldFilled") == 1)
	  {
	  SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
	  Autosave();
	  SetWeapon("Fists");
	  ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  Delay(16);
	  ACS_NamedExecuteWithResult("TakeWeapons");
	  Delay(16);
	  TakeInventory("InventoryGearMouldFilled", 1);
	  PlaySound(0, "Weapons/FragReloadA");
	  Delay(8);
	  SpawnSpotForced("IDMould", 135, 0, 0);
	  PlaySound(135, "Metal/Bounce3");
	  Delay(16);
	  SpawnSpotForced("IDMithrilGear", 134, 414, 0);
	  PlaySound(134, "Metal/Bounce1");
	  Delay(50);
	  Thing_Remove(136);
	  Delay(35);
	  PlaySound(134, "Metal/Land");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(35);
	  PlaySound(134, "Metal/Land");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(35);
	  PlaySound(134, "Metal/Land");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(35);
	  PlaySound(134, "Metal/Bounce3");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(16);
	  PlaySound(134, "Metal/Bounce2");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(16);
	  PlaySound(134, "Metal/Bounce1");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(16);
	  PlaySound(134, "Metal/Bounce2");
	  SpawnSpotForced("DustPuff", 134, 0, 0);
	  Delay(16);
	  Thing_Remove(414);
	  Delay(1);
	  SpawnSpotForced("InventoryMithrilGear", 134, 415, 0);
	  If(CheckInventory("InventoryGreatForgeInstructions") > 0)
	  {
	    TakeInventory("InventoryGreatForgeInstructions", 1);
	    ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);
	    SpawnSpotForced("IDScrollA", 259, 0, 0);
	    PlaySound(259, "Inventory/Paper", CHAN_AUTO);
		SetLineSpecial(264, ACS_Execute, 105, 0, 0, 0, 0);
		SetLineSpecial(265, ACS_Execute, 106, 0, 0, 0, 0);
	  }
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  SpawnSpotForced("IDHammer", 137, 0, 0);
	  ACS_NamedExecuteWithResult("GiveWeapons");
	  Delay(130);
	  Radius_Quake(4, 350, 0, 1, 0);
	  Delay(70);
	  Floor_LowerByValue(138, 4, 112);
	  }
}


//PRINTS
Script 6 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I couldn't help but see you struggle with herding the Forge Elementals by the lava pools. "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
    Hudmessage(s:"Take this magic ring,  we dwarves use it to protect ourselves from the might of the fire...  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"Perhaps we could take a stroll through the caverns tomorrow? I'll show you how to use it."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
    Hudmessage(s:"Maybe stop by the tavern to have a drink too?  I will wait for you by the forge. - Thorvald"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 7 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Birth of the Earthborn - Chapter 7: The Pact"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"[...]    and now when they were forced to watch the ruins of their civilisation, both the Dwarves and     "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"the Minotaurs understood that there was no more place for petty quarrels. Only now were their eyes  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"open as they were forced to gaze over the smoldering ruins of their once great home towns. But alas,  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"t'was too late. The few who survived the Demon invasion were scattered throughout Hedon's caverns,"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"forced to live like scrawny nomads, struggling to survive day by day. No longer did they have the will "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"to fight each other, knowing how the Demons used the seed of subterfuge to divide and conquer them. "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"The incompetent and corrupt leaders were already dead. It was time for the strong to take lead once"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"more. And those new leaders had a great thirst for vengeance. Great enough to forge an alliance with"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"the ones they once despised. [...] Now both Dwarves and Minotaurs stand by the same purpose. To fight"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"the Demons and rebuild their fallen prosperity. And here, the Iron Division Orcs make them an offer[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 10 (void)
{
    Print(s:"It will probably take days before the portal recharges enough power to be activated again.");
}

Script 11 (void)
{
	If (CheckInventory("IronKey") > 0)
	    {
		SetFont("SMALLFONT");
	    Hudmessage(s:"(Tiati is gone, looks like you were too late and the portal has closed)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
        Hudmessage(s:"(A new message lies on the glass, written in strange dark marks. Oddly enough, you can read it)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 25.0);
	    Hudmessage(s:"You will follow me... you will remember me..."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 25.0);
	    }
	    else
		  If (CheckInventory("IronKey") == 0)
		  {
		  spec74 += 1;
	      SetFont("SMALLFONT");
	      Hudmessage(s:"(You see Tiati on the other side of the window. She nods at you, but doesn't look"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
          Hudmessage(s:"very relieved to see you.  A finger-traced message lies on the reinforced glass) "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 25.0);
	      Hudmessage(s:"Locked me in. Threw key. Portal running out. Hurry."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 25.0);
		  PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
		  }

}

Script 15 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice a rolled parchment right by the portal. Tiati's writing style is already familiar to you)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"The portal gate is fading out, so I really have to go.  I'm not sure if you'll get here anytime soon,  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"but if you read this, know that your only hope to reach the Crystal Heart now lies inside the Grove."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"The portal there should still be functional since it has a stronger power source... however, I think you "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
    Hudmessage(s:"have also noticed that the park gate leading to it got sabotaged by the cultists back in the Plaza...   "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"The main gear that was operating the gate mechanism was broken. You will have to search around for  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"spare parts. Head to the workshop, there has to be some information about what kind of gear you need "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"to replace. Or at least how to craft it. Take this key, and a couple spare mags I had. You'll need them."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice a rolled parchment right by the portal. Tiati's writing style is already familiar to you.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"The portal gate is fading out, so I really have to go.  I'm not sure if you'll get here anytime soon,  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"but if you read this, know that your only hope to reach the Crystal Heart now lies inside the Grove."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"The portal there should still be functional since it has a stronger power source... however, I think you "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
    Hudmessage(s:"have also noticed that the park gate leading to it got sabotaged by the cultists back in the Plaza...    "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"The \c[Gold]main gear\c- that was operating the gate mechanism was broken. You will have to search around for   "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"spare parts. Head to the \c[Gold]workshop\c-, there has to be some information about what kind of gear you need "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"to replace. Or at least how to craft it. Take this key, and a couple spare mags I had. You'll need them."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
    }
}

Script 22 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I can't take this pressure anymore!  First, the Forge Elementals suddenly tried to kill me"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"for no reason and now these giant hungry worms popped out of nowhere! Vica went out to "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
    Hudmessage(s:"inspect some odd noises and the next thing I know,  I'm running over her body towards       "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"the nearest hiding hole.   Of course, I had no time to pick up my gun...  Oh, Fire and Iron,     "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"how have we angered you this time? Haven't we offered our best metal and flame to you?"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"Maybe I can sneak by through the vents. Guess I'll have to leave my stuff here, then...    "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 45.0);

}

Script 23 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You recover a burnt fragment of a scroll. Most of the text has been ruined)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 15.0);
	Hudmessage(s:".. don't harves.. red crystal clusters..nly the single one ..n't explode when pulled o.."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);

}

Script 25 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"GATE & DRAWBRIDGE CONTROL"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 26 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"WORKSHOP"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 27 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"MOULD FORGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 28 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"DWARVEN FORGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 29 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"REPAIR BAY"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Some stupid Iron Urchin wandered into one of the testing caves yesterday and the Sentry"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 35.0);
	Hudmessage(s:"started shooting at it.     Little fucker didn't shy away and charged right at it,  blowing    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 35.0);
    Hudmessage(s:"it to bits. As you can see,  the Sentry's messed up,  but I reckon you can fix the hull...       "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 35.0);
	Hudmessage(s:"I'll handle its brain once you're done here.  Clearly I need to talk to the Lancers, since it  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 35.0);
    Hudmessage(s:"seems they forgot to program the damn thing to not shoot at our own maintenance drones."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"Anyway, I've dropped you a working Sentry for reference. Remember that once you deploy"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"it, you will need the right tools to unpack it or it will self destruct.   Call me for help.   -V."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 35.0);

}

Script 31 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"It will be long until we return from the war against the demons, but as always, you    "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"have to learn the reins of patience, my son. You've been fulfilling your apprenticeship"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"well, so I will allow you to finally reach beyond our old ways of smelting. At last, you"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"may finally use the Smelting Machine to make precise iron bars.   Drop the iron ore into"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"the red hot hearth and marvel as it melts and drips into the shape of an ingot.   Don't  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"forsake your duty, and do not envy mine.   Your task here is as difficult as fighting a   "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"horde of foul beasts, and I trust that you'll stand up to our name. Stone be with you."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"It will be long until we return from the war against the demons, but as always, you    "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"have to learn the reins of patience, my son. You've been fulfilling your apprenticeship"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"well, so I will allow you to finally reach beyond our old ways of smelting. At last, you"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"may finally use the \c[Gold]Smelting Machine\c- to make precise iron bars.   Drop the \c[Gold]iron ore\c- into"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"the red hot hearth and marvel as it melts and drips into the shape of an ingot.   Don't  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"forsake your duty, and do not envy mine.   Your task here is as difficult as fighting a   "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"horde of foul beasts, and I trust that you'll stand up to our name. Stone be with you."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
    }
}

Script 32 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 55.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This parchment bears the seal of Witch Chieftain Zura. It must be of some importance)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 55.0);
	Hudmessage(s:"My dear Fixer, I hope you have well received this new box of potions. You must be allured"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 55.0);
    Hudmessage(s:"by their scent and color...  and so will our enemies be.  Ah, the sweet smell of death. But  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 55.0);
	Hudmessage(s:"I digress. We've come up with a new bottle design, so the Potion Launcher must be tested"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 55.0);
    Hudmessage(s:"to shoot it accordingly. One week should be enough time for you to find any possible flaws."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 55.0);
	Hudmessage(s:"If not, then perhaps I can give you some incentive and let you know that we're looking for"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.86, 55.0);
	Hudmessage(s:"goblins to test our...  other products on.  Oh, and one final warning. Do not break the cans "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.88, 55.0);
	Hudmessage(s:"if there is any big fire nearby. The pink gas can be quite volatile... such tragic outcomes..."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 55.0);

}

Script 33 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(The schematics depict some mechanisms the Fixers were working on)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 34 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 55.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"I've finally repaired the Key Machine.   Tell the minotaurs to come haul it back  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"to the mould forge, this thing makes so much noise I can't hear my own thoughts."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 55.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"I've finally repaired the \c[Gold]Key Machine\c-.   Tell the minotaurs to come haul it back  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"to the mould forge, this thing makes so much noise I can't hear my own thoughts."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
    }
}

Script 35 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"IRON KEY MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an Iron Ingot inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Key from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
    }
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"IRON KEY MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an \c[Gold]Iron Ingot\c- inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Key from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
    }
}

Script 36 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"SPIKE MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an Iron Ingot inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Spikes from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 37 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"BOLTMAG MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an Iron Ingot inside the hearth and three Red Crystals into the sockets"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the crafting process is complete, remove the Boltmag from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 81 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"FRAGFIRE CAN MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an Iron Ingot inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Fragfire Can from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 99 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"FIRE HAMMER MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert one Iron Ingot and six Red Crystals inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Fire Hammer from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 101 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"GREAT AXE MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert Eight Iron Ingots inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Great Axe from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 103 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"AXE MOULD MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"1. Insert an Iron Ingot inside the hearth and close the hatch"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
	Hudmessage(s:"2. Once the right hatch is open, remove the Axe from the mould"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 15.0);
}

Script 47 (void)
{
    Print(s:"This machine does not appear to be functional.");
}

Script 48 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 55.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Gate Mechanisms - Gear A2"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 55.0);
	Hudmessage(s:"A2 type gears are the main component of many mechanical gate engines. Unlike the other"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 55.0);
    Hudmessage(s:"ones,  however,  they must be forged out of Mithril to be able to last through extended  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.68, 55.0);
	Hudmessage(s:"use without being deformed or damaged. Crafting Mithril Gears requires the Great Forge."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.70, 55.0);
    Hudmessage(s:"Firstly, drop five lumps of Mithril Ore into the Forge's Smelting Machine to obtain an Ingot."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.74, 55.0);
    Hudmessage(s:"Secondly, you must place the corresponding Mould under the Forge's Cauldron and cast the Gear."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 55.0);
	Hudmessage(s:"Last step involves hammering the crude gear on the Forge's Anvil, to correct any imperfections."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 55.0);
	Hudmessage(s:"Once the final notch is hammered, allow the finished gear to cool down before using it."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 55.0);

	  If(IsTIDused(261))
	  {
	  Hudmessage(s:"(You notice a parchment with detailed diagrams sitting next to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.92, 55.0);
	  }
	  else
	  {
	  Hudmessage(s:"(You've already taken the diagram parchment that was attached to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.92, 55.0);
	  }
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 55.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Gate Mechanisms - Gear A2"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 55.0);
	Hudmessage(s:"A2 type gears are the main component of many mechanical gate engines. Unlike the other"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 55.0);
    Hudmessage(s:"ones,  however,  they must be forged out of Mithril to be able to last through extended  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.68, 55.0);
	Hudmessage(s:"use without being deformed or damaged. Crafting Mithril Gears requires the \c[Gold]Great Forge\c-."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.70, 55.0);
    Hudmessage(s:"Firstly, drop \c[Gold]five lumps of Mithril Ore\c- into the \c[Gold]Forge's Smelting Machine\c- to obtain an Ingot."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.74, 55.0);
    Hudmessage(s:"Secondly, you must place the corresponding Mould under the \c[Gold]Forge's Cauldron\c- and cast the Gear."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 55.0);
	Hudmessage(s:"Last step involves hammering the crude gear on the \c[Gold]Forge's Anvil\c-, to correct any imperfections."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 55.0);
	Hudmessage(s:"Once the final notch is hammered, allow the finished gear to cool down before using it."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 55.0);

	  If(IsTIDused(261))
	  {
	  Hudmessage(s:"(You notice a parchment with detailed diagrams sitting next to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.92, 55.0);
	  }
	  else
	  {
	  Hudmessage(s:"(You've already taken the diagram parchment that was attached to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.92, 55.0);
	  }
    }
}

Script 57 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Demons! Wretched scum, it all makes sense now... They waited for our forces to leave..."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 35.0);
	Hudmessage(s:"They corrupted the Forge Elementals.    They have sent the giant worms to weaken our"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 35.0);
    Hudmessage(s:"crystal barriers...  everyone's been slain... if only I could warn the minotaurs...  Hell, if "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"only my leg weren't a charred mess... if only I had that ring Thorvald gave me...  urgh..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
    Hudmessage(s:"What a shitty way to go... at least I can write my last thoughts down... I'm so thirsty..."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 35.0);

}

Script 62 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I saw a mithril vein gleaming in the dark while I was resting next to the dark chasm last     "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 55.0);
	Hudmessage(s:"week.  No, not the one inside Iron's shrine which we don't mine due to stupid superstitions, I"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 55.0);
    Hudmessage(s:"already said I'd stop trying to convince our goblin friend to jump inside there and get it.    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 55.0);
	Hudmessage(s:"...come to think of it, maybe we can get her to climb around the chasm's walls and get this  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 55.0);
    Hudmessage(s:"other vein! Maybe you can talk to her though, she's still upset over *that* incident. Heh.   "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.82, 55.0);
	Hudmessage(s:"P.S. What's with all the tension brewing up lately? Ever since the tremors started, you guys  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.86, 55.0);
	Hudmessage(s:"have been losing your shit. I even saw the barkeeper haul in this weird looking gun along with"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.88, 55.0);
	Hudmessage(s:"some giant boxes. He's keeping it in his secret spot I bet. I also bet he'll never get to use it.  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 55.0);

}

Script 64 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"TO VALC'S PLAZA"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 65 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The strange parchment seems to be written in demonic tongue. You easily translate it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 35.0);
	Hudmessage(s:"IDIOTS!  That's NOT the tunnel you were supposed to cave in! How are we supposed to get back"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
    Hudmessage(s:"up to the orcish plaza now?    Get the spare powder kegs here RIGHT NOW.   And try not to blow "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"yourselves up now, how many times do I have to tell you to get a longer fuse and STAY AWAY!!!"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 35.0);

}

script 69 (void)
{
	SetFont("SMALLFONT");
	//Hudmessage(s:"Tip: You can deploy Sentry Turrets from your inventory."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
    //Hudmessage(s:"You can move them around afterwards, but not undeploy them back, so use them wisely."; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 15.0);
}

script 70 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: You can pick up Sentry Turrets with \c[White](DEFAULT: E)\c- and drop them with \c[White](DEFAULT: LMB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	//Hudmessage(s:"Once you pick them up, you can place them back down using primary fire (DEFAULT: LMB)"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 15.0);
}

Script 73 (void)
{
	Print(s:"This door seems to be locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 76 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ELEVATOR TO ICEPEAK"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}


//MESSAGE SCALE
Script 902 (void)
{
If(GetScreenWidth() >= 1440 && GetScreenWidth() < 2560)
  {
	  SetCVar("con_scaletext", 2);
  }
  else
  {
	If(GetScreenWidth() >= 2560)
    {
	SetCVar("con_scaletext", 3);
    }
  }
}





//DRAWING
Script "OpenDrawing2" (void)
{
	SetFont ("OLAYTDRB");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	SetFont ("OLAYTDR2");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
}

Script "CloseJournal" (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}

Script 105 (void)
{
	SetFont ("OLAYTDRB");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	SetFont ("OLAYTDR2");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	PlaySound(0, "Inventory/Paper", CHAN_AUTO);
}

Script 106 (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	//PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
}