#include "zcommon.acs"


//LEVEL START

script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  Floor_RaiseByValue(1,4,38);

  SetActorFlag(155, "NOTONAUTOMAP", 1);
  SetActorFlag(155, "COUNTITEM", 0);
  //SetActorFlag(171, "NOTONAUTOMAP", 1);
  //SetActorFlag(173, "NOTONAUTOMAP", 1);
  //SetActorFlag(21, "NOTONAUTOMAP", 1);
  //SetActorFlag(23, "NOTONAUTOMAP", 1);
  //SetActorFlag(168, "NOTONAUTOMAP", 1);
  //SetActorFlag(75, "NOTONAUTOMAP", 1);
  //SetActorFlag(77, "NOTONAUTOMAP", 1);
  //SetActorFlag(78, "NOTONAUTOMAP", 1);
  //SetActorFlag(79, "NOTONAUTOMAP", 1);

  SetActorFlag(179, "NOBLOCKMAP", 1);

  SetActorFlag(102, "INVISIBLE", 1);

  SetActorFlag(181, "NOCLIP", 1);

  SetActorFlag(202, "INVISIBLE", 1);

  SetActorFlag(20, "INVISIBLE", 1);
}

script 23 ENTER
{
  If(CheckInventory("InventoryPickaxe") == 0)
  {
    SpawnSpot("InventoryPickAxe", 53, 0, 0);
  }
  else
    SpawnSpot("JunkBrokenPickaxe", 53, 0, 0);
}

//LEVEL END
Script 54 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");

	TakeInventory("InventoryEnchantedPurpleInkRecipe", 1);
	TakeInventory("InventoryBowlOfFaeDust", 1);
	TakeInventory("InventoryPurpleRoot", 3);
	TakeInventory("InventoryCanOfEnchantedPurpleInk", 1);

	Exit_Normal(0);
}

//Lava Damage
Script 61 ENTER
{
	SectorDamage(180, 12, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//WATER WAGGLE
Script 50 ENTER
{
	Ceiling_Waggle(139, 8, 24, 0, 0);
}
//TAVERN MONSTER SPAWN //Unused - shows missing door top texture
//Script 59 (void)
//{
//	SpawnSpot("Cultist", 170, 676, 64);
//	Delay(8);
//	NoiseAlert(0, 171);
//	Thing_SetGoal(676, 171, 0, 1);
//}

//IRON KEY MONSTER SPAWN
Script 53 (void)
{
	If(CheckInventory("IronKey") > 0)
	{
	SetLineSpecial(177, 0, 0, 0, 0, 0, 0);
    SpawnSpot("SniperCultist", 158, 0, 128);
	SpawnSpot("Initiate", 159, 0, 128);
	SetLineTexture(207, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(207, SIDE_BACK, TEXTURE_MIDDLE, "");
	SetLineTexture(206, SIDE_FRONT, TEXTURE_MIDDLE, "CURTAIN");
	SetLineTexture(206, SIDE_BACK, TEXTURE_MIDDLE, "CURTAIN");
	}
}

//PURPLE ROOT MONSTER SPAWNS
//Store
Script 56 (void)
{
	If(IsTIDUsed(164) == 0 && GameSkill() >= SKILL_VERY_HARD)
	{
		SetLineSpecial(163, 0, 0, 0, 0, 0, 0);
		SpawnSpot("Initiate", 161, 0, 192);
		SpawnSpot("TeleportFog", 161, 0, 192);
		SpawnSpot("Conscript", 162, 0, 192);
		SpawnSpot("TeleportFog", 162, 0, 192);
		SpawnSpot("Cerberus", 178, 0, 192);
		SpawnSpot("TeleportFog", 178, 0, 192);
	}
}

//Tavern
Script 57 (void)
{
	SetLineSpecial(165, 0, 0, 0, 0, 0, 0);
	SpawnSpot("Cultist", 162, 0, 64);
	SpawnSpot("Conscript", 166, 0, 64);
}

//ABHAOTH SIGHTINGS
Script 2 (void) //Mission Start
{
SetActorFlag(20, "INVISIBLE", 0);
Thing_Activate(20);
Delay(1);
Thing_Hate(20, 21, 6);
Delay(70);
Thing_Destroy(20);
}

Script 44 (void) //Mission Start Failsafe
{
Thing_Destroy(20);
}

Script 24 (void) //Library Terace
{
Thing_Remove(666);
}

Script 33 (void) //Library Staircase
{
Thing_Destroy(70);
}

Script 45 (void) //Alchemist's Room
{
Thing_Destroy(102);
}

//CONSCRIPT ATTACKING SWITCH
Script 4 (void)
{
If (IsTIDUsed(128))
  {
   Thing_Remove(128);
   Thing_Move(22,33,1);
   Delay(4);
   Thing_Hate(22, 23, 3);
  }
}

//CRAWLER CAVE AMBUSH + ABHAOTH SIGHTING
Script 12 (void)
{
	If(GetSectorFloorZ(37,0,0) > 27)
	{
	Delay(20);
    Floor_LowerByValue(37, 999, 103);
	Floor_LowerByValue(68, 999, 104);
    Thing_Remove(38);
	Thing_Remove(69);
    PlaySound(0, "Ambient/Rocks");
	SpawnSpot("CaveRockD",39, 0, 0);
	SpawnSpot("ShadowAbhaothStanding",44, 666, 0);
	SpawnSpot("SniperCultist",126, 0, 64);
	SpawnSpot("IronMaiden",127, 667, 64);
	SpawnSpot("Initiate",201, 0, 64);
	Floor_RaiseByValue(40, 999, 18);
	Floor_RaiseByValue(41, 999, 12);
	Floor_RaiseByValue(42, 999, 8);
	SetActorFlag(667, "AMBUSH", 1);
	Delay(60);
	Radius_Quake(2,90,0,200,0);
	GiveInventory("ScriptYouWillFollowMe", 1);
	Thing_Remove(146);
	SpawnSpot("DemonBookA", 147, 0, 100);
	}

}

//MONSTER SPAWN FINALE
Script 47 (void)
{
  If (CheckInventory("StoneKey") > 0)
  {
	Radius_Quake(3,35,0,200,0);
	SetLineSpecial(152, 0, 0, 0, 0, 0, 0);
  }
}

Script 51 (void)
{
  If (CheckInventory("StoneKey") > 0)
  {
	Radius_Quake(3,35,0,200,0);
	SetLineSpecial(153, 0, 0, 0, 0, 0, 0);
  }
}

Script 46 (void)
{
  If (CheckInventory("StoneKey") > 0 && IsTIDUsed(125))
  {
	//Floor_RaiseByValue(24, 16, 104);
	Floor_MoveToValue(24, 16, 92, 0);
	//Floor_RaiseByValue(52, 16, 114);
	Floor_MoveToValue(52, 16, 93, 0);
	Thing_Move(140, 141, 1);
	Thing_Move(142, 143, 1);
	Thing_Move(144, 145, 1);
	Thing_Remove(125);
	Radius_Quake(5,150,0,200,0);
	Delay(105);
	SetMusic("HTrack05");
	Thing_Spawn(104, 65004, 0, 0);
	Thing_Spawn(105, 65004, 0, 0);
	Thing_Spawn(106, 65004, 0, 0);
    Thing_Spawn(107, 65001, 0, 0);
	Thing_Spawn(108, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(275);
	Thing_Spawn(109, 65002, 0, 0);
	Thing_Spawn(110, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(105);
	Thing_Spawn(111, 65005, 0, 0);
	Thing_Spawn(112, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(105);
	Thing_Spawn(113, 65002, 0, 0);
	Thing_Spawn(114, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(140);
	Thing_Spawn(104, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(105, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(106, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
    Thing_Spawn(104, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(105, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(106, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(275);
	Thing_Spawn(129, 65000, 0, 0);
	Thing_Spawn(130, 65000, 0, 0);
	Thing_Spawn(131, 65000, 0, 0);
	Thing_Spawn(132, 65004, 0, 0);
	Thing_Spawn(133, 65004, 0, 0);
	Thing_Spawn(134, 65004, 0, 0);
	Thing_Spawn(109, 65002, 0, 0);
	Thing_Spawn(110, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(105);
	Thing_Spawn(111, 65002, 0, 0);
	Thing_Spawn(112, 65001, 0, 0);
	NoiseAlert(0,0);
	Delay(105);
	Thing_Spawn(113, 65002, 0, 0);
	Thing_Spawn(114, 65005, 0, 0);
	NoiseAlert(0,0);
	Delay(105);
	Thing_Spawn(104, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(105, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(106, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
    Thing_Spawn(104, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(105, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(50);
	Thing_Spawn(106, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(275);
	Thing_Spawn(113, 65004, 0, 0);
	NoiseAlert(0,0);
	Delay(35);
	Floor_LowerByValue(99, 4, 116);
	NoiseAlert(0,0);
	Delay(455);
	Floor_LowerByValue(100, 4, 116);
	Delay(350);
	Thing_Spawn(115, 65000, 192, 0);
	Thing_Spawn(116, 65000, 192, 0);
	Thing_Spawn(117, 65005, 192, 0);
    Thing_Spawn(118, 65004, 192, 0);
	Thing_Spawn(119, 65000, 192, 0);
	Delay(200);
	Thing_Spawn(115, 65000, 192, 0);
	Thing_Spawn(116, 65004, 192, 0);
	Thing_Spawn(117, 65004, 192, 0);
    Thing_Spawn(118, 65000, 192, 0);
	Thing_Spawn(119, 65000, 192, 0);
	Delay(350);
	Thing_Spawn(107, 65004, 0, 128);
	Thing_Spawn(108, 65004, 0, 128);
	Delay(150);
	Thing_Spawn(120, 65004, 0, 0);
	Thing_Spawn(121, 65004, 0, 0);
	Thing_Spawn(122, 65004, 0, 0);
    Thing_Spawn(123, 65004, 0, 0);
	Thing_Spawn(124, 65004, 0, 0);
  }
}

//MUSIC FADE
Script 48 (void)
{
	SetMusicVolume(0.9);
	Delay(16);
	SetMusicVolume(0.8);
	Delay(16);
	SetMusicVolume(0.7);
	Delay(16);
	SetMusicVolume(0.6);
	Delay(16);
	SetMusicVolume(0.5);
	Delay(16);
	SetMusicVolume(0.4);
	Delay(16);
	SetMusicVolume(0.3);
	Delay(16);
	SetMusicVolume(0.2);
	Delay(16);
	SetMusicVolume(0.1);
	Delay(16);
	SetMusicVolume(0.0);
	SetMusic("");
	Delay(16);
	SetMusicVolume(1.0);
}


//FOUNTAIN CHAIN SOUND
Script 31 (void)
{
	If (GetActorZ(0) > -175.0)
	{
    PlaySound(0, "Inventory/PickKey");
	}
}

//PRISON GATES
Script 58 (void)
{
	Ceiling_RaiseByValue(3, 2, 84);
	Delay(35);
	Thing_SetGoal(167, 168, 0, 1);
}

//BREAKABLE WALL
Script 10 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && GetSectorFloorZ(27, 0, 0) > 115.0)
  {
	SetWeapon("Fists");
    Floor_LowerByValue(27, 999, 116);
	FloorAndCeiling_LowerByValue(205, 9999, 256);
	Thing_Remove(32);
	TakeInventory("InventoryPickAxe", 1);
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	PlaySound(0, "Interaction/WallPick");
	SetActorFlag(0, "INVISIBLE", 0);
	SpawnSpotForced("JunkStoneA",28, 0, 0);
    SpawnSpotForced("JunkStoneA",29, 0, 0);
	SpawnSpotForced("DustCloud",28, 0, 0);
    SpawnSpotForced("DustCloud",29, 0, 0);
	Delay(8);
	PlaySound(0, "Metal/Land");
	SpawnSpot("JunkStoneB",30, 0, 0);
    SpawnSpot("JunkBrokenPickaxe",31, 0, 0);
  }
  else
	  If (GetSectorFloorZ(27, 0, 0) > 115.0)
	  {
	      Print(s:"This cracked wall looks like it could be broken with the right tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}


//FAE DUST PICKUP
Script 34 (void)
{
	If (CheckInventory("InventoryBowlOfFaeDust") > 0)
	{
	SetLineSpecial(174, 0, 0, 0, 0, 0, 0);
	//Thing_Remove(72);
	//GiveInventory("InventoryPouchofFaeDust", 1);
	//Log(s:"Gathered a Pouch of Fae Dust.");
	//PlaySound(0, "Inventory/PickBase");
    //SpawnSpotForced("IDBrazzierA", 71, 0, 0);
	//FadeTo(255, 255, 40, 0.1, 0.08);
    //Delay(4);
    //FadeTo(0, 0, 0, 0, 0.08);

	Delay(105);
	Thing_Spawn(172, 65004, 192, 0);
	}
}

//CELLAR DOOR
Script 55 (void)
{
  If (GetSectorFloorZ(35, 0, 0) > 39.0)// || GetSectorFloorZ(160, 0, 0) > 39.0)
  {
    Print(s:"This doesn't seem to open from this side.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
    Delay(35);
  }
}


//SWINGING DOORS
Script 1001 (void) //
{
If (GetActorZ(0) < 76.0)
Polyobj_DoorSwing(1,16,64,105);
}

Script 1002 (void)
{
If ((GetActorZ(0) > 98.0) && CheckInventory("InventoryScrollSpiritDispelMagic") > 0)
  {
  TakeInventory("InventoryScrollSpiritDispelMagic", 1);
  PlaySound(0, "Magic/Dispel");
  Delay(35);
  Thing_Remove(94);
  Thing_Remove(176);
  SpawnSpot("ExplosionMagicPurple", 97);
  FadeTo(240, 80, 210, 0.15, 0.35);
  Delay(4);
  FadeTo(0, 0, 0, 0, 0.35);
  Delay(40);
  Thing_Remove(95);
  Thing_Remove(175);
  SpawnSpot("ExplosionMagicPurple", 97);
  FadeTo(240, 80, 210, 0.25, 0.35);
  Delay(4);
  FadeTo(0, 0, 0, 0, 0.35);
  Delay(48);
  Thing_Remove(96);
  Thing_Remove(98);
  SpawnSpot("ExplosionMagicPurple", 97);
  FadeTo(240, 80, 210, 0.4, 0.35);
  Delay(4);
  FadeTo(0, 0, 0, 0, 0.35);
  Radius_Quake(2,90,0,200,0);
  Delay(10);
  Polyobj_DoorSwing(2,16,64,0x7FFFFFFF);
  }
  else
  {
  Print(s:"You don't have any spell scroll to dispel the magic ward.");
  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 1003 (void)
{
If (GetActorZ(0) < 85.0)
Polyobj_DoorSwing(3,16,64,105);
}

Script 1004 (void)
{
If (GetActorZ(0) < 76.0 && CheckInventory("VineKey") > 0)
Polyobj_DoorSwing(4,16,64,105);
else
{
Print(s:"This door requires a Vine key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 1006 (void)
{
If (GetActorZ(0) < 232.0)
Polyobj_DoorSwing(6,16,64,105);
SetLineSpecial(156, ACS_Execute, 1006, 0, 0, 0, 0);
}

Script 1007 (void)
{
If (GetActorZ(0) < 169.0)
Polyobj_DoorSwing(7,16,64,105);
}

Script 1090 (void)
{
  If (GetActorZ(0) < 82.0)
  Polyobj_DoorSwing(90,16,64,105);
}

Script 177 (void)
{
If (GetActorZ(0) < 185.0)
Polyobj_DoorSwing(177,16,64,105);
}

Script 178 (void)
{
If (GetActorZ(0) < 185.0)
Polyobj_DoorSwing(178,16,64,105);
}

Script 179 (void)
{
If (GetActorZ(0) < 182.0)
{
Polyobj_DoorSwing(179,16,64,105);
SetLineSpecial(157, ACS_Execute, 179, 0, 0, 0, 0);
}
}

Script 180 (void)
{
If ((GetActorZ(0) < 226.0) && CheckInventory("AxeKey") > 0)
Polyobj_DoorSwing(180,16,64,105);
else
{
Print(s:"This door requires an Axe key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 181 (void)
{
If ((GetActorZ(0) < 200.0) && CheckInventory("VineKey") > 0)
Polyobj_DoorSwing(181,16,64,105);
else
{
Print(s:"This door requires a Vine key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 182 (void)
{
If ((GetActorZ(0) < 76.0) && CheckInventory("VineKey") > 0)
Polyobj_DoorSwing(182,-16,64,105);
else
{
Print(s:"This door requires a Vine key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 254 (void)
{
If ((GetActorZ(0) < 187.0) && CheckInventory("StoneKey") > 0)
Polyobj_DoorSwing(254,16,64,105);
else
{
Print(s:"This door requires a Stone key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 269 (void)
{
If ((GetActorZ(0) < 78.0) && CheckInventory("IronKey") > 0)
Polyobj_DoorSwing(269,16,64,105);
else
{
Print(s:"This door requires an Iron key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 270 (void)
{
If(GetActorZ(0) < 77.0 && CheckInventory("VineKey") > 0)
  {
  Polyobj_DoorSwing(270,16,64,105);
  }
  else
  If(GetActorZ(0) < 77.0 && CheckInventory("VineKey") == 0)
  {
    Print(s:"This door requires a Vine key to open.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 271 (void)
{
  If(GetActorZ(0) < 139.0)
  {
    Polyobj_DoorSwing(271,16,64,105);
    SetActorFlag(102, "INVISIBLE", 0);
  }
}

Script 273 (void)
{
If (GetActorZ(0) < 82.0)
Polyobj_DoorSwing(273,16,64,105);
}

Script 305 (void)
{
If ((GetActorZ(0) < 72.0) && CheckInventory("AxeKey") > 0)
  Polyobj_DoorSwing(305,16,64,105);
  else
  {
  If (GetActorZ(0) < 72.0)
  {
  Print(s:"This door requires an Axe key to open.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
  }
}

Script 358 (void)
{
If (GetActorZ(0) < 177.0)
Polyobj_DoorSwing(358,16,64,105);
}

Script 359 (void)
{
If ((GetActorZ(0) < 185.0) && CheckInventory("AxeKey") > 0)
Polyobj_DoorSwing(359,16,64,105);
else
{
Print(s:"This door requires an Axe key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

//MAGIC WARD QUEST

//Script 39 (void) //COOKING POT
//{
//	If (CheckInventory("InventoryPurpleRoot") == 3)
//	{
//	Thing_Remove(80);
//	TakeInventory("InventoryPurpleRoot", 3);
//	Delay(16);
//	PlaySound(0, "Interaction/Boil");
//    SpawnSpot("SteamPuffmedium", 81, 0, 0);
//	Sector_SetColor(138, 240, 40, 210);
//	Delay(16);
//	Thing_Remove(139);
//	Ceiling_LowerByValue(138, 1, 12);
//    Delay(80);
//    SpawnSpot("InventoryBowlofPigment", 82, 0, 0);
//	}
//	else
//	If(IsTIDUsed(139) == 0)
//	Print(s:"The cauldron is empty.");
//	else
//	  If (CheckInventory("InventoryPurpleRoot") < 3 && CheckInventory("InventoryPurpleRoot") > 0)
//	  Print(s:"You'll need three Purple Roots to make a Bowl of Pigment.");
//	    else
//	    Print(s:"The cooking pot has plenty of water boiling in it.");
//}

Script 40 (void) //CAULDRON POWER
{
	If (CheckInventory("InventoryRedCrystal") > 0)
	{
	Thing_Remove(84);
	TakeInventory("InventoryRedCrystal", 1);
	SpawnSpot("CaveCrystalRedA", 83, 0, 0);
	GiveInventory("ScriptCauldronIsPowered", 1);
	Delay(4);
	Floor_RaiseByValue(90,1,4);
	Delay(48);
	PlaySound(0, "Weapons/FlameDeath");
	Delay(16);
	PlaySound(0, "Interaction/Boil");
    SpawnSpot("BoilBubbleGenerator", 85, 0, 0);
	Sector_SetDamage(89, 5, 0, 35, 0);
	}
	else
	If (CheckInventory("ScriptCauldronIsPowered") > 0)
	Print(s:"The Red Crystal radiates waves of heat.");
	  else
	  {
	  Print(s:"The cauldron's power source is missing.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

Script 41 (void) //CAULDRON BREWING
{
	If (CheckInventory("ScriptCauldronIsPowered") == 0)
	{
	Print(s:"The cauldron is not powered.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	  else
	  If (CheckInventory("InventoryPurpleRoot") >= 3 && CheckInventory("InventoryBowlofFaeDust") >= 1)
	  {
	  SetLineSpecial(198, 0, 0, 0, 0, 0, 0);
	  TakeInventory("InventoryPurpleRoot", 3);
	  ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);
	  SetWeapon("Fists");
	  Delay(16);
	  SetActorProperty(0, APROP_SPEED, 0.0);
	  SetActorProperty(0, APROP_Friction, 0.1);
	  ACS_NamedExecuteWithResult("TakeWeapons");
	  Delay(16);
	  SpawnSpot("NaturePurpleRoot", 148, 200);
	  Delay(16);
	  SpawnSpot("NaturePurpleRoot", 149, 200);
	  Delay(16);
	  SpawnSpot("NaturePurpleRoot", 150, 200);
	  Delay(35);
	  SpawnSpot("FaeDust", 151, 0);
	  Delay(35);
	  PlaySound(194, "Metal/Bounce1", CHAN_AUTO);
	  TakeInventory("InventoryBowlofFaeDust", 1);
	  SpawnSpotForced("IDBrazzierA", 194, 0, 0);
	  Delay(35);
	  Thing_Remove(200);
	  PlaySound(88, "Interaction/Boil");
	  SpawnSpot("SteamPuffMedium", 88, 0, 0);
	  Sector_SetColor(89, 240, 40, 210);
	  Delay(70);
	  Thing_Remove(87);
	  PlaySound(88, "Inventory/PickShort");
	  Delay(16);
	  PlaySound(0, "Gore/BloodJut", CHAN_AUTO);
	  Ceiling_LowerByValue(89, 1, 4);
	  Delay(35);
	  SpawnSpot("DustPuff", 86, 0, 0);
	  SpawnSpot("InventoryCanOfEnchantedPurpleInk", 86, 0, 0);
	  PlaySound(86, "Ammo/FragfireCanBounce");
	  If(CheckInventory("InventoryEnchantedPurpleInkRecipe") > 0)
	  {
		Delay(8);
		TakeInventory("InventoryEnchantedPurpleInkRecipe", 1);
	    ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);
	    SpawnSpotForced("IDScrollA", 193, 0, 0);
	    PlaySound(193, "Inventory/Paper", CHAN_AUTO);
	    SetLineSpecial(199, ACS_Execute, 78, 0, 0, 0, 0);
	    SetLineSpecial(200, ACS_Execute, 79, 0, 0, 0, 0);
	  }
	  ACS_NamedExecuteWithResult("GiveWeapons");
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  }
	    else
		If(CheckInventory("InventoryCanOfEnchantedPurpleInk") >= 1)
		{
		//Print(s:"The water is tinted with leftover pigment.");
		}
		  else
		  {
		  Print(s:"You don't have the ingredients to brew anything.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  }
}

Script 42 (void) //SCRIBE TABLE
{
	If(GetActorZ(0) < 93.0)
	{
	  If(CheckInventory("InventoryCanOfEnchantedPurpleInk") > 0) //Dispel
	  {
	    TakeInventory("InventoryCanOfEnchantedPurpleInk", 1);
	    SetWeapon("Fists");
	    Delay(16);
	    SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
	    ACS_NamedExecuteWithResult("TakeWeapons");
	    SpawnSpot("IDColorsC", 92, 0, 0);
	    PlaySound(92, "Ammo/FragfireCanBounce");
	    Delay(16);
	    //Thing_Remove(91);
		Playsound(91, "Inventory/PickShort");
		SetActorAngle(91, random(0.15,0.35));
	    Delay(16);
	    Playsound(0, "Inventory/Writing");
	    Delay(35);
	    SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	    ACS_NamedExecuteWithResult("GiveWeapons");
	    Playsound(93, "Inventory/Paper");
	    SpawnSpot("InventoryScrollSpiritDispelMagic", 93, 0, 0);
	  }
	  else
	  If(CheckInventory("InventoryMortarOfEarthPigment") > 0) //Nourish
	  {
	    TakeInventory("InventoryMortarOfEarthPigment", 1);
	    SetWeapon("Fists");
	    Delay(16);
	    SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
	    ACS_NamedExecuteWithResult("TakeWeapons");
		If(IsTiDUsed(680) == 0)
		{
	      SpawnSpot("IDLabMortarB", 182, 680, 0);
		  SetActorFlag(680, "NODAMAGE", 1);
	      PlaySound(182, "Rock/Land");
		  Delay(16);
		  Playsound(91, "Inventory/PickShort");
		  SetActorAngle(91, random(0.15,0.35));
	      Delay(16);
		  Thing_Remove(680);
		  SpawnSpot("IDLabMortarC", 182, 680, 0);
	      Playsound(0, "Inventory/Writing");
	      Delay(35);
	      SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
	      ACS_NamedExecuteWithResult("GiveWeapons");
	      Playsound(184, "Inventory/Paper");
	      SpawnSpot("InventoryScrollEarthNourish", 184, 0, 0);
		}
		else
		If(IsTiDUsed(681) == 0)
		{
	      SpawnSpot("IDLabMortarB", 183, 681, 0);
		  SetActorFlag(681, "NODAMAGE", 1);
	      PlaySound(183, "Rock/Land");
          Delay(16);
          Playsound(91, "Inventory/PickShort");
		  SetActorAngle(91, random(0.15,0.35));
	      Delay(16);
		  Thing_Remove(681);
		  SpawnSpot("IDLabMortarC", 183, 681, 0);
	      Playsound(0, "Inventory/Writing");
	      Delay(35);
	      SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
	      ACS_NamedExecuteWithResult("GiveWeapons");
	      Playsound(185, "Inventory/Paper");
	      SpawnSpot("InventoryScrollEarthNourish", 185, 0, 0);
		}
	  }
	  else
	  If(CheckInventory("InventoryBowlOfScribeEmbers") > 0) //Magma Ball
	  {
	    TakeInventory("InventoryBowlOfScribeEmbers", 1);
	    SetWeapon("Fists");
	    Delay(16);
	    SetActorProperty(0, APROP_SPEED, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
	    ACS_NamedExecuteWithResult("TakeWeapons");
		If(IsTiDUsed(682) == 0)
		{
	      SpawnSpot("IDBowlC", 186, 682, 0);
		  SetActorFlag(682, "NODAMAGE", 1);
	      PlaySound(186, "Rock/Land", CHAN_AUTO, 0.6);
		  Delay(16);
		  Playsound(91, "Inventory/PickShort");
		  SetActorAngle(91, random(0.15,0.35));
	      Delay(16);
		  Thing_Remove(682);
		  SpawnSpot("IDBowl", 186, 682, 0);
	      Playsound(0, "Inventory/Writing");
	      Delay(35);
	      SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
	      ACS_NamedExecuteWithResult("GiveWeapons");
	      Playsound(189, "Inventory/Paper");
	      SpawnSpot("InventoryScrollFireMagmaBall", 189, 0, 0);
		}
		else
		If(IsTiDUsed(683) == 0)
		{
          SpawnSpot("IDBowlC", 187, 683, 0);
		  SetActorFlag(683, "NODAMAGE", 1);
	      PlaySound(187, "Rock/Land", CHAN_AUTO, 0.6);
		  Delay(16);
		  Playsound(91, "Inventory/PickShort");
		  SetActorAngle(91, random(0.15,0.35));
	      Delay(16);
		  Thing_Remove(683);
		  SpawnSpot("IDBowl", 187, 683, 0);
	      Playsound(0, "Inventory/Writing");
	      Delay(35);
	      SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
	      ACS_NamedExecuteWithResult("GiveWeapons");
	      Playsound(190, "Inventory/Paper");
	      SpawnSpot("InventoryScrollFireMagmaBall", 190, 0, 0);
		}
		else
		If(IsTiDUsed(684) == 0)
		{
          SpawnSpot("IDBowlC", 188, 684, 0);
		  SetActorFlag(684, "NODAMAGE", 1);
	      PlaySound(188, "Rock/Land", CHAN_AUTO, 0.6);
		  Delay(16);
		  Playsound(91, "Inventory/PickShort");
		  SetActorAngle(91, random(0.15,0.35));
	      Delay(16);
		  Thing_Remove(684);
		  SpawnSpot("IDBowl", 188, 684, 0);
	      Playsound(0, "Inventory/Writing");
	      Delay(35);
	      SetActorProperty(0, APROP_SPEED, 1.0);
	      SetActorProperty(0, APROP_Friction, 1.0);
	      ACS_NamedExecuteWithResult("GiveWeapons");
	      Playsound(191, "Inventory/Paper");
	      SpawnSpot("InventoryScrollFireMagmaBall", 191, 0, 0);
		}
	  }
	  else
	  {
	  Print(s:"The table is filled with scribing tools, basic inks and plain parchments.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
	}
}



//READABLES
Script 3 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Warning! Shark Infested Waters"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 5(void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"Rot. 509, Day 237, Reaver Meza"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"Reaver Tiati has brought in a human prisoner. He had no stolen goods on him apparently, but"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"I believe he might be tied to the poachers that have been troubling the forests lately...        "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 6 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Keep in mind that since we've coupled one of the switches to the park gate, the cells are linked.    "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
    Hudmessage(s:"The right switch now opens the park gate, and the left one opens the armory as before. The middle"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 35.0);
	Hudmessage(s:"one, however, opens both cells at once for now.      Do not operate it without someone guarding the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
    Hudmessage(s:"prisoners. If I have to chase any loose captive because of this, you're in for the whip. - Sgt. Barna"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 35.0);

}

Script 7 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This journal appears to have belonged to Sergeant Barna. The last entries catch your attention)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 90.0);
	Hudmessage(s:"Day 232: A month passed since our forces left Valc. Hate I couldn't join in, but since I'm in charge here..."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"Day 236: Since there's not much going on, I might start breaking down that cracked cell wall and fix it."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
    Hudmessage(s:"Day 237: Well damn me, just as I was about to start working, Tiati brings in this scrawny human. Said she'd"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"found him roaming around the forest camp. He doesn't look like a poacher, though... He's not talking either."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"All he does is mumble and groan.    I plucked away a bunch of spikes stuck in his back.   I've got no idea who  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"did this to him, but he seems possessed to me.  His eyes are all dark and empty, and his skin looks so sickly...  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"Day 238: Son of a bitch, he's somehow ripped his own arm off! Found him bleeding out, and had to use a whole  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"healing potion to stabilize him. As I came close to him, he started spasming and mumbling some words for the  "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"first time. Something about an impending doom about to claim us. Can hardly understand what he says given"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"he's missing half his tongue.     He doesn't seem to feel much pain, so we're not sure how to interrogate him...    "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This journal appears to have belonged to Sergeant Barna. The last entries catch your attention)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 90.0);
	Hudmessage(s:"Day 232: A month passed since our forces left Valc. Hate I couldn't join in, but since I'm in charge here..."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"Day 236: Since there's not much going on, I might start breaking down that \c[Gold]cracked cell wall\c- and fix it."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
    Hudmessage(s:"Day 237: Well damn me, just as I was about to start working, Tiati brings in this scrawny human. Said she'd"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"found him roaming around the forest camp. He doesn't look like a poacher, though... He's not talking either."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"All he does is mumble and groan.   I plucked away a bunch of spikes stuck in his back.   I've got no idea who  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"did this to him, but he seems possessed to me.  His eyes are all dark and empty, and his skin looks so sickly...  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"Day 238: Son of a bitch, he's somehow ripped his own arm off! Found him bleeding out, and had to use a whole  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"healing potion to stabilize him. As I came close to him, he started spasming and mumbling some words for the  "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"first time. Something about an impending doom about to claim us. Can hardly understand what he says, given"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"he's missing half his tongue.    He doesn't seem to feel much pain, so we're not sure how to interrogate him...    "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
}

Script 8 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice a parchment in the ventilation shaft, and unroll it. It's signed by Reaver Tiati)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 45.0);
	Hudmessage(s:"Before you curse my cowardly blood, know that I am doing this for our best. I saw Barna die in a"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"split moment. This woman... She looked elven to me. I could hardly see, for I barely had time to"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"lock myself in here.  A powerful warlock, spewing bolts of magic as a swarm of cultists came out"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"of thin air...   I watched through the crystal globes as the whole plaza was swarmed with them."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"All our sisters...  are dead.    I need to reach the Lancers, this is a full on invasion!   And if I die,"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"may these notes stand testament to my intentions.    I need to find out what in hell is going on..."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);

}

Script 9 (void)
{
	//If(GameSkill() == SKILL_HARD)
	//{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Monthly list of crystal requests"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 25.0);
	Hudmessage(s:"20 x Armor Shard --- Barracks"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
    Hudmessage(s:"3 x Power Core --- Mining Outpost"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"4 x Large Cyan Crystal --- Earth Mothers' Grove"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
    Hudmessage(s:"1 x Red Crystal --- Plaza Alchemist"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"1 x Red Crystal --- Plaza Tavern"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
	//}
	//else
	//{
	//SetFont("SMALLFONT");
	//Hudmessage(s:"Monthly list of crystal requests"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 25.0);
	//Hudmessage(s:"20 x Armor Shard --- Barracks"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
    //Hudmessage(s:"3 x Power Core --- Mining Outpost"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	//Hudmessage(s:"4 x Large Cyan Crystal --- Earth Mothers' Grove"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
    //Hudmessage(s:"1 x Red Crystal --- \c[Gold]Plaza Alchemist\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	//Hudmessage(s:"1 x Red Crystal --- Tavern"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
	//}
}

Script 11 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 65.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You carefully unroll the damp parchment. It's hardly legible and the lower part has rotted)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 65.0);
	Hudmessage(s:"If the rum  s  re true, the cave orcs ar     ossession of a massive treas  e. Tons of mag  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 65.0);
    Hudmessage(s:"crystals g  wing all around their dun   n ! We won't be abl  to just wal z in, though, we "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 65.0);
	Hudmessage(s:"gotta  fin  ome alt  ate routes. Make s   to brin  backup  ickaxe, h ard the green  unts  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
    Hudmessage(s:"have som  solid masonry. Something involvin  ench ted sto e. Or perh  s dwar  s are hel  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 13 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The key is outside the secret entrance here if you need it, my dear.  Again, I'm sorry I have  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"to leave for so long, but your sisters need a fine axeman for this campaign, and I'm eager to"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"stomp some demon skulls myself. Take care, I'm sure the tavern will have plenty of visitors"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"even with most of the Iron Division forces away... - Your loyal minotaur blacksmith, Hectus  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 20 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Room 2  -     Striva, the Witch, left two days earlier.   Paid in full.   Should make up for cleanup."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"Room 3  -   Mr. Magnus. Dwarf Prospector guy. Paid in advance, will stay for one moon (or more?)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"Not as many customers as I was hoping for since the campaign started. The tavern is also quiet"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"now.    I pray Hectus will return well.   I know he's strong,  but fighting demons is such a task...  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 21 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Dear Prospector Magnus, we're glad that we have settled upon an agreement, then."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
    Hudmessage(s:"I am sure this new crystal imbued ore will be worth researching,  and we are coming  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"by more veins as we dig deeper.  We await your arrival in few days.  Simply show this  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
    Hudmessage(s:"letter to the gate guard,  along with your signet ring.    -    Captain Dura of the I.D.  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);

}

Script 22 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"To VALC'S PARK, LIBRARY & GROVE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 25 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Making Enchanted Ink is a process that takes two steps:"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
	Hudmessage(s:"First, you will require a Powered Cauldron. Anything less will not be able to get"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
    Hudmessage(s:"the magical ingredients to mix with the pigment well, and the ink will be spoiled."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"Secondly, you must gather the proper ingredients:  a bowl of Fae Dust  -  no more"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
    Hudmessage(s:"than what we offer by the Earth Mother statues   -   and the proper reagents for"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"obtaining the color. You will need at least three of the same type, assuming they  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"have potent pigment. Once you have all the ingredients, mix them in the cauldron."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.86, 95.0);

	  If(IsTIDused(195))
	  {
	  Hudmessage(s:"(You notice a parchment with colorful diagrams sitting next to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
	  }
	  else
	  {
	  Hudmessage(s:"(You've taken the recipe parchment that was attached to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
	  }
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Making Enchanted Ink is a process that takes two steps:"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
	Hudmessage(s:"First, you will require a \c[Gold]Powered Cauldron\c-. Anything less will not be able to get"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
    Hudmessage(s:"the magical ingredients to mix with the pigment well, and the ink will be spoiled."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"Secondly, you must gather the proper ingredients:  a bowl of \c[Gold]Fae Dust\c-  -  no more   "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
    Hudmessage(s:"than what we offer by the Earth Mother statues   -   and the proper reagents for    "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"obtaining the color.  You will need at least \c[Gold]three of the same type\c-, assuming they  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"have potent pigment. Once you have all the ingredients, mix them in the cauldron."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.86, 95.0);

	  If(IsTIDused(195))
	  {
	  Hudmessage(s:"(You notice a parchment with colorful diagrams sitting next to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
	  }
	  else
	  {
	  Hudmessage(s:"(You've already taken the recipe parchment that was attached to the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
	  }
    }
}

Script 26 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice another note hidden in a ventilation shaft. It's signed by Reaver Tiati)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"I've been doing my best to hamper this sudden invasion from the shadows. The ventilation shafts helped"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"me move around unseen.    I have overheard the cultists getting orders to blow up and cave in the exits."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"They're locking down the entire stronghold.  Bastards!...   Nonetheless, I have managed to get inside the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"crystal shop and move all the merchandise upstairs. I must delay them from getting their hands on our"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"tech.   I even trashed a few power cores,  but they heard the noise so I had to break the ladder and go.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"Lucky me, I found a warding scroll in the shopkeeper's room.   Should my sisters need to break the ward, "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"I've read that all you need for a Dispel Magic Scroll is to draw a shattered spiral on a parchment using  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"Enchanted Purple Ink. Sadly, I couldn't find any such ink by the scribing table in here, but the alchemist"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"must have a recipe around her shop.  I pray the demons won't break that seal any time soon. Alas, I must"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"push on... I have to rush for the Forge and make sure they don't get their hands on any of our schematics."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice another note hidden in a ventilation shaft. It's signed by Reaver Tiati.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"I've been doing my best to hamper this sudden invasion from the shadows. The ventilation shafts helped"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"me move around unseen.    I have overheard the cultists getting orders to blow up and cave in the exits."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"They're locking down the entire stronghold.  Bastards!...   Nonetheless, I have managed to get inside the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"crystal shop and move all the merchandise upstairs. I must delay them from getting their hands on our"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"tech.   I even trashed a few power cores,  but they heard the noise so I had to break the ladder and go.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"Lucky me, I found a warding scroll in the shopkeeper's room. Should my sisters need to \c[Gold]break the ward\c-, "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"I've read that all you need for a \c[Gold]Dispel Magic Scroll\c- is to draw a shattered spiral on a parchment using  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"\c[Gold]Enchanted Purple Ink\c-. Sadly, I couldn't find any such ink by the \c[Gold]scribing table\c- in here, but the alchemist"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"must have a recipe around her shop. I pray the demons won't break that seal any time soon. Alas, I must"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"push on... I have to rush for the Forge and make sure they don't get their hands on any of our schematics."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
}

Script 27 (void)
{
  If (GetActorZ(0) < 93.0)
  {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A series of magic runes are carved into the tablet. The lower part is not yet complete)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
  }
}

Script 28 (void)
{
  If (GetActorZ(0) > 93.0)
  {
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
  }
}

Script 29 (void)
{
	If (CheckInventory("ScriptYouWillFollowMe") == 0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Path of the Lancer - Chapter 2"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.72, 45.0);
	Hudmessage(s:"You will keep the balance, for balance is nothing without everything."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"You will keep the secret, for the poor mind will break away the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"crystal held in a clutch of weak stone."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"You will fight with truth"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"For truth shatters the foe from inside."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
	}
}

Script 49 (void)
{
	If (CheckInventory("ScriptYouWillFollowMe") == 1)
    {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The text shifts suddenly, right before your eyes, letters turning into twitching shadows...)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 25.0);
	Hudmessage(s:"Path of the Devil - Chapter 2"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 25.0);
	Hudmessage(s:"You will follow me..."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 25.0);
	Hudmessage(s:"You will follow me..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
	Hudmessage(s:"You will follow me..."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"You will follow me..."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"You will follow me..."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
   }
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"History of the Iron Division - Chapter 4: The Castes"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"[...]   and upon settling within the caves of Hedon, the greenskins were divided into six castes, each"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"responsible with a part of the stability of their no longer nomadic tribe.    They would all use their "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"gifts in various ways,  with the major purpose of erecting Valc from cold stone and turning it into a"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"grand city. No longer would they seek their place, for the crystal caverns gave them everything.   "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"The Lancers became the just keepers of the Crystal Heart."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"The Earth Mothers harnessed the old ways of magic, and kept the orc traditions alive."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"The Bear Warriors held the Division's might high."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"The Witches used their knowledge to push new boundaries."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"The Reavers became feared shadow guardians."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"And the Fixers would make the weakest of metal strong."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 32 (void)
{
	If (GetActorZ(0) < 199.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 16.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"NEIHALL'S DWARVEN GEAR"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 16.0);
	Hudmessage(s:"Closed until the end of the Iron Division campaign."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 16.0);
	Hudmessage(s:"Still open to orders - slip your notes under the door."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 16.0);
    }
}

Script 35 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"To VALC'S BARRACKS AND BATH HOUSE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 36 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"To LOWER VALC"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 37 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"To VALC'S FORGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 38 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Keep both tunnel gates open unless security lockdown in effect."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 43 (void)
{
	SetFont("SMALLFONT");
    Print(s:"The main gear has been broken. You doubt you'll find any replacement around the Plaza.");
}

Script 52 (void)
{
	SetFont("SMALLFONT");
    Print(s:"This door seems to be locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 59 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"CENTRAL PLAZA GATE CONTROLS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 60 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"Mana Potions"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 5.0);
	Hudmessage(s:"Destination: Parapet"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 5.0);
	Hudmessage(s:"Handle with care"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 77 (void)
{
	If(GetActorZ(0) < 93.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Scroll of Magma Ball - 1x bowl of Scribe Embers, basic warm inks, plain parchment"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 60.0);
    Hudmessage(s:"(A drawing stencil depicts a clump of fire and earth shaped into a ball)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 60.0);

	Hudmessage(s:"Scroll of Nourish - 1x mortar of Earth Pigment, basic warm inks, plain parchment"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 60.0);
    Hudmessage(s:"(A drawing stencil depicts a sprouting earth plant)"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 60.0);

	Hudmessage(s:"Scroll of Dispel Magic - 1x can of Enchanted Purple Ink, basic ink, plain parchment"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 60.0);
	Hudmessage(s:"(A drawing stencil depicts a shattered spirit spiral)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 60.0);
    }
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
Script "OpenDrawing1" (void)
{
	SetFont ("OLAYTDRA");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	SetFont ("OLAYTDR1");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
}

Script "CloseJournal" (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}

Script 78 (void)
{
	SetFont ("OLAYTDRA");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	SetFont ("OLAYTDR1");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
	PlaySound(0, "Inventory/Paper", CHAN_AUTO);
}

Script 79 (void)
{
	Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	//PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
	Setfont("SMALLFONT");
}


