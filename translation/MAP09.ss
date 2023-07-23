#include "zcommon.acs"

//LEVEL START
Script 1 ENTER
{
  //ACS_NamedExecuteWithResult("FriendlySpawner");

  FadeTo(0, 0, 0, 1.0, 0.0);
  FadeTo(0, 0, 0, 0.0, 8.0);

  TakeInventory("InventoryKegOfDragonbrew", 1);

  PlaySound(0, "Character/ZanWeak", CHAN_AUTO);

  SetActorFlag(9, "NOGRAVITY", 1);
  SetActorFlag(9, "RELATIVETOFLOOR", 1);
  ThrustThingZ(9, 0, 1, 0);
  Thing_Activate(9);

  SetActorFlag(34, "NOBLOCKMAP", 1);
  SetActorFlag(34, "SOLID", 0);
  SetActorFlag(34, "NOINTERACTION", 0);

  SetActorFlag(53, "INVULNERABLE", 1);
  SetActorFlag(240, "NOINTERACTION", 1);
  SetActorFlag(240, "NOBLOCKMAP", 1);
  SetActorFlag(240, "COUNTITEM", 0);

  SetActorFlag(74, "NOBLOCKMAP", 1);

  SetActorFlag(146, "NOGRAVITY", 1);
  SetActorFlag(146, "RELATIVETOFLOOR", 1);
  ThrustThingZ(146, 0, 1, 0);
  SetActorFlag(146, "FLOATBOB", 1);

  SetActorFlag(150, "NOBLOCKMAP", 1);

  SetActorFlag(176, "FLOATBOB", 1);

  SetActorFlag(234, "Invulnerable", 1);

  SetFogDensity(174, 8);

  Scroll_Ceiling(14, -64, 0, 0);
  //Sector_setCurrent(14, 80, 128, 0); doesn't work?
  //Sector_setCurrent(11, 80, 128, 0);

  Scroll_Ceiling(73, 0, 64, 0);

  Thing_Damage(78, 1, 0);
  Thing_Damage(95, 1, 0);

  Ceiling_Waggle(3, 8, 16, 4, 35);
  Ceiling_Waggle(54, 16, 24, 4, 35);


  If(CheckInventory("InventoryShovel") > 0)
  {
	  TakeInventory("InventoryShovel", 1);
	  SpawnSpotForced("JunkBrokenShovel", 241, 0, 0);
  }

  If(GameSkill() == 5)
  {
	  //Floor_LowerByValue(246, 8, 2);
	  //Floor_LowerByValue(249, 4, 1);
	  //ChangeFloor(246, "Iron_08");
	  //ChangeFloor(249, "Iron_08");
  }

  Delay(70);
  PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
}

//LEVEL EXIT
Script 44 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		SetLineSpecial(230, 0, 0, 0, 0, 0, 0);
		Autosave();
	}
}

Script 45 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		//ACS_NamedExecuteWithResult("FriendlyCounter");

		Exit_Normal(0);
	}
	else
	{
	Print(s:"This gate requires a Crystal key to open.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//LITH END
Script 38 (void)
{
	SetWeapon("Fists");
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	//ACS_NamedExecuteWithResult("TakeWeapons");
	ACS_NamedExecute("TakeWeapons", 0, 0, 0, 0);
	//ACS_NamedExecuteWithResult("TakeConsumables");
	ACS_NamedExecute("TakeConsumables", 0, 0, 0, 0);
    Thing_Remove(185);
	Thing_Remove(231);
	Door_Open(159, 32, 0);
	Delay(8);
	//ACS_NamedExecuteWithResult("TakeWeapons");
	Delay(16);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorState(170, "Shoot", 1);
	Delay(16);
	PlaySound(170, "Weapons/PoxFire", CHAN_AUTO);
	FadeTo(0, 0, 0, 1.0, 0.0);
	//Delay(4);
	//PlaySound(0, "Character/ZanLandHard", CHAN_AUTO);

    Delay(5*35);
	PlaySound(0, "Ambient/CreepyPitch", CHAN_AUTO);
	Teleport_NoFog(187, 0, 0, 0);
	Delay(2*35);
	PlaySound(0, "Character/ZanSleep", CHAN_AUTO);
	Teleport_NoFog(171, 0, 0, 0);
	//PlaySound(172, "Switches/Switch2", CHAN_AUTO, 0.4);
	SetActorAngle(0, 0.75);
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	FadeTo(0, 0, 0, 0.0, 10.0);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	Thing_Remove(170);

	Delay(35*10);
	Hudmessage(s:"Lith:   *Hums*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_PURPLE, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(175, "Lith/Hum", CHAN_AUTO);
	Delay(35);
	PlaySound(171, "Interaction/MachineOn", CHAN_AUTO, 0.8);
	Delay(70);
	Ceiling_RaiseByValue(174, 2, 104);
	Delay(35);
	//SpawnSpotForced("BoilBubbleGenerator", 171, 664, 0);
	TagWait(174);
	Delay(35*6);
	FadeTo(0, 0, 0, 1.0, 8.0);

	Delay(35*6);
	Hudmessage(s:"Abhaoth:   Not yet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 2.0, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(35*5);
	Teleport_NoFog(187, 0, 0, 0);
	//Thing_Remove(664);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	//TakeInventory("Fists", 1);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	ChangeCamera(177, 0, 0);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(5*35);
	Hudmessage(s:"Nithriel has found me. She has dampened my strength..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 1.5, 1.5);
	PlaySound(177, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(35*2);
	Thing_Remove(239);
	PlaySound(0, "Ambient/BuildUp", CHAN_AUTO, 1.0, 0, ATTN_NONE);
	Delay(35*6);
	Hudmessage(s:"...you're close... but I cannot guide you any longer..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 1.0, 1.5);
	PlaySound(177, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(35*7);
	Hudmessage(s:"...hold onto your breath. Someone is about to redeem herself."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 1.0, 1.5);
	PlaySound(177, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(35*7);
	Door_Close(159, 99999, 0);

	FadeTo(0, 0, 0, 1.0, 5.0);
	Delay(5*35);
	ChangeCamera(0, 0, 0);
	Teleport_NoFog(171, 0, 0, 0);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	//GiveInventory("Fists", 1); //doesn't work for some people for some reason?
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	Delay(16);
	PlaySound(178, "Metal/Bounce3", CHAN_AUTO);
	FloorAndCeiling_LowerByValue(179, 99999, 140);
	Delay(16);
	PlaySound(178, "Metal/Land", CHAN_AUTO);
	Delay(8);
	Hudmessage(s:"Lith:   *Gasps*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_PURPLE, 1.5, 0.86, 2.0, 0.2, 0.2);
	PlaySound(175, "Lith/Gasp", CHAN_AUTO);
	Delay(16);
	SpawnSpotForced("NPCTiatiRegular", 178, 665, 64);
	PlaySound(665, "Weapons/SpikeGunFire", CHAN_AUTO, 0.8);
	Delay(8);
	PlaySound(665, "Weapons/SpikeGunFire", CHAN_AUTO, 0.8);
	Delay(8);
	PlaySound(665, "Weapons/SpikeGunFire", CHAN_AUTO, 0.8);
	Delay(16);
	PlaySound(665, "Weapons/SpikeGunFire", CHAN_AUTO, 0.8);
	Delay(16);
	PlaySound(665, "Weapons/SpikeGunFire", CHAN_AUTO, 0.8);
	SpawnSpotForced("BloodSplashWall1", 180, 663, 64);
	SetActorFlag(175, "INVULNERABLE", 0);
	Thing_Destroy(175, 0, 0);

	Delay(2*35);
	SetActorAngle(0, 0.75);
	SetActorPitch(0, 0.0);
	SetMusic("HTrack16", 0, 0);
	//SetMusicVolume(2.0);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(4*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	PlaySound(172, "Switches/Switch2", CHAN_AUTO, 0.4);
	Thing_Remove(665);
	SpawnSpotForced("NPCTiatiRegular", 186, 665, 64);
	Delay(16);
	SetActorAngle(0, 0.75);
	SetActorPitch(0, 0.0);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(4*35);
	FadeTo(0, 0, 0, 1.0, 2.0);
	Delay(4*35);
	Ceiling_LowerByValue(174, 3, 104);
	FadeTo(0, 0, 0, 1.0, 2.0);
	Thing_Remove(665);
	Thing_Move(182, 178, 1);
	SetActorAngle(182, 0.65);
	//Thing_Remove(663);
	//SpawnSpotForced("DemonMessage", 180, 0, 64);
	Delay(3*35);
	PlaySound(0, "Character/ZanGasp", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 5.0);
	TagWait(174);
	Ceiling_RaiseByValue(183, 16, 72);
	SpawnSpotForced("SparkGenerator", 184, 0, 0);

	//ACS_NamedExecuteWithResult("GiveWeapons");
	//ACS_NamedExecuteWithResult("GiveConsumables");

	//Delay(4);

	//SetWeapon("SpikeGun");

}
int spec52 = 0;
Script 52 (void)
{
	//ACS_NamedExecuteWithResult("GiveWeapons");
	ACS_NamedExecute("GiveWeapons", 0, 0, 0, 0);
	//ACS_NamedExecuteWithResult("GiveConsumables");
	ACS_NamedExecute("GiveConsumables", 0, 0, 0, 0);

	Delay(4);

    If(spec52 == 0)
	{
	  SetWeapon("SpikeGun");
	  spec52 += 1;
	}
}

//GOLEM FIGHT
Script 39 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
	SetLineSpecial(193, 0, 0, 0, 0, 0, 0);
	Delay(16);
	Thing_Destroy(181, 0, 0);
	SpawnSpotForced("Golem", 188, 660, 192);
	Thing_Damage2(660, 1, "PodSpawn");
	Delay(8*35);

	Radius_Quake(3, 70, 0, 1, 0);
	Delay(70);
	Thing_Destroy(258, 0, 0);
	Radius_Quake(5, 105, 0, 1, 0);
	Delay(16);
	SpawnSpotForced("ExplosionMedium", 259, 0, 0);
	Delay (12);
	SpawnSpotForced("ExplosionMedium", 260, 0, 0);
	FloorAndCeiling_LowerByValue(262, 999, 64);
	Delay (8);
	SpawnSpotForced("ExplosionLarge", 260, 0, 0);
	Delay (6);
	SpawnSpotForced("ExplosionLarge", 260, 0, 0);
	Delay (10);
	SpawnSpotForced("ExplosionHuge", 260, 0, 0);

	PlaySound(261,"Weapons/PotionDie", CHAN_AUTO);
	SetLineTexture(257, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(257, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Line_SetBlocking(257, 0, BLOCKF_EVERYTHING);
	Delay(4);
	SpawnSpotForced("DustCloud", 261, 0, 0);
	SpawnProjectile(261, "JunkBrokenGlassA", random(112,144), random(10,20), 0, random(10,20), 0);
	SpawnProjectile(261, "JunkBrokenGlassB", random(112,144), random(10,20), 0, random(10,20), 0);
	SpawnProjectile(261, "JunkBrokenGlassA", random(112,144), random(10,20), 0, random(10,20), 0);

	Delay(24);
	Thing_Destroy(189, 0, 0);
	SpawnSpotForced("Golem", 190, 661, 192);
	Thing_Damage2(661, 1, "PodSpawn");
	Delay(2*35);
	Thing_Destroy(192, 0, 0);
	SpawnSpotForced("Golem", 191, 662, 128);
	Thing_Damage2(662, 1, "PodSpawn");
	Delay(35*12);
	Radius_Quake(2, 175, 0, 1, 0);
	Door_Open(154, 16, 0);
	Door_Open(159, 16, 0);
	}
}

//ESCAPE
Script 34 (void)
{
	Autosave();

	//Crystal Key Containment
	Ceiling_RaiseByValue(169, 16, 70);

	Delay(35);
	Radius_Quake(3, 210, 0, 1, 0);

	//Start Music Changer Remove
	Thing_Remove(168);

	//Acid Bars
	ChangeFloor(45, "ASH1");
	ChangeCeiling(45, "ASH1");
	ChangeFloor(46, "ASH1");
	ChangeCeiling(46, "ASH1");
	ChangeFloor(49, "ASH1");
	ChangeCeiling(49, "ASH1");
	ChangeFloor(48, "ASH1");
	ChangeCeiling(48, "ASH1");
	Ceiling_RaiseByValue(44, 16, 104);

	//Security Post Weapons
	Ceiling_RaiseByValue(165, 16, 48);

	//Weapon Testing Doors
	SetLineSpecial(161, 0, 0, 0, 0, 0, 0);
	//Door_Open(154, 16, 0);
	Door_Open(155, 16, 0);
	Door_Open(156, 16, 0);
	Door_Open(157, 16, 0);
	Door_Open(158, 16, 0);

	//Crylance Containment
	Ceiling_RaiseByValue(160, 16, 72);

	//Prison Doors
	Ceiling_RaiseByValue(110, 16, 72);
	Ceiling_RaiseByValue(111, 16, 72);
	Ceiling_RaiseByValue(138, 16, 72);
	Ceiling_RaiseByValue(140, 16, 64);
	Thing_Remove(124);
	Thing_Remove(125);
	Thing_Remove(126);
	Thing_Remove(127);
	Thing_Remove(128);
	Thing_Remove(129);
	Thing_Remove(491);
	Thing_Remove(229);

	//Golem Pods & Tanks
	Thing_Remove(233);
	Thing_Destroy(95);
	Ceiling_LowerByValue(148, 16, 112);
	Thing_Remove(147);
	Thing_Remove(146);
	Ceiling_RaiseByValue(144, 16, 72);
	Thing_Destroy(143);
	Thing_Destroy(74);
	SetActorFlag(234, "Invulnerable", 0);

	//MONSTER SPAWNS

	//Weapons Lab
	SpawnSpot("Golem", 194, 0, 0);

	//Containment Tank Chamber
	SpawnSpot("IronMaiden", 196, 296, 192);
	Thing_Deactivate(296);
	SpawnSpot("Initiate", 197, 297, 192);
	Thing_Deactivate(297);
	SpawnSpot("Cerberus", 198, 298, 192);
	SetActorFlag(298, "FRIENDLY", 1);
	Thing_Deactivate(298);
	SpawnSpot("Golem", 199, 299, 64);
	Thing_Deactivate(299);
	SpawnSpot("Golem", 200, 300, 0);
	Thing_Deactivate(300);

	//Specimen Surgery Chamber
	SpawnSpot("Initiate", 201, 301, 128);
	Thing_Deactivate(301);
	SpawnSpot("Cultist", 202, 302, 128);
	Thing_Deactivate(302);
	SpawnSpot("IronMaiden", 203, 303, 128);
	Thing_Deactivate(303);
	SpawnSpot("Golem", 204, 304, 0);
	Thing_Deactivate(304);

	//Hallway
	SpawnSpot("Golem", 205, 305, 0);
	Thing_Deactivate(305);
	//SpawnSpot("IronMaiden", 207, 307, 0);
	//SetActorFlag(307, "DORMANT", 1);
	SpawnSpot("SniperCultist", 208, 308, 0);
	Thing_Deactivate(308);
	SpawnSpot("Initiate", 209, 309, 0);
	Thing_Deactivate(309);

	//Botany Lab
	SpawnSpot("Golem", 206, 306, 64);
	Thing_Deactivate(306);

	//Universal Mixer
	SpawnSpot("Cultist", 211, 311, 128);
	SetActorFlag(311, "AMBUSH", 1);
	SpawnSpot("Initiate", 212, 312, 64);
	SetActorFlag(312, "AMBUSH", 1);
	SpawnSpot("IronMaiden", 213, 313, 192);
	SetActorFlag(313, "AMBUSH", 1);

	//Prison
	SpawnSpot("Cultist", 216, 316, 128);
	SetActorFlag(316, "AMBUSH", 1);

	//Kitchen
	SpawnSpot("Cultist", 218, 318, 0);
	SetActorFlag(318, "AMBUSH", 1);

	//Meeting Room
	SpawnSpot("Golem", 219, 319, 0);
	SetActorFlag(319, "AMBUSH", 1);

	//Lounge
	SpawnSpot("SniperCultist", 220, 320, 0);
	Thing_Deactivate(320);
	//SetActorFlag(320, "AMBUSH", 1);
	SpawnSpot("Initiate", 221, 321, 0);
	Thing_Deactivate(321);
	//SetActorFlag(321, "AMBUSH", 1);

	//Dormitory
    SpawnSpot("Golem", 207, 307, 192);
	SetActorFlag(307, "AMBUSH", 1);

	//Lobby
	SpawnSpot("Initiate", 222, 322, 192);
	Thing_Deactivate(322);
	SpawnSpot("IronMaiden", 223, 323, 192);
	Thing_Deactivate(323);
	SpawnSpot("Golem", 224, 324, 64);
	Thing_Deactivate(324);
	SpawnSpot("Crawler", 225, 325, 64);
	Thing_Deactivate(325);

	//Outside
	SpawnSpot("Golem", 227, 327, 0);
	SetActorFlag(327, "AMBUSH", 1);
	SpawnSpot("Crawler", 228, 328, 0);
	SetActorFlag(328, "AMBUSH", 1);
}

//MONSTER FIGHTS
Script 40 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		//SetLineSpecial(195, 0, 0, 0, 0, 0, 0);
		Thing_Activate(296);
		Thing_Activate(297);
		Thing_Activate(299);
		Thing_Activate(300);
		Delay(1);
		Thing_Hate(296, 0, 0);
		Thing_Hate(296, 300, 0);
		Thing_Hate(296, 299, 0);
		Thing_Hate(299, 0, 0);
		Thing_Hate(299, 297, 0);
		Thing_Hate(299, 296, 0);
		Thing_Hate(297, 0, 0);
		Thing_Hate(297, 299, 0);
		Thing_Hate(297, 300, 0);
		Thing_Hate(300, 0, 0);
		Thing_Hate(300, 296, 0);
		Thing_Hate(300, 297, 0);

		Thing_Activate(301);
		Thing_Activate(302);
		Thing_Activate(303);
		Thing_Activate(304);
		Delay(1);
		Thing_Hate(301, 0, 0);
		Thing_Hate(302, 0, 0);
		Thing_Hate(303, 0, 0);
		Thing_Hate(301, 304, 0);
		Thing_Hate(302, 304, 0);
		Thing_Hate(303, 304, 0);
		Thing_Hate(304, 0, 0);
		Thing_Hate(304, 301, 0);
		Thing_Hate(304, 303, 0);
		Thing_Hate(304, 302, 0);

		Thing_Activate(305);
		//Thing_Activate(307);
		Thing_Activate(308);
		Thing_Activate(309);
		Delay(1);
		Thing_Hate(305, 0, 0);
		Thing_Hate(305, 308, 0);
		Thing_Hate(305, 309, 0);
		//Thing_Hate(307, 305, 3);
		Thing_Hate(308, 0, 0);
		Thing_Hate(309, 0, 0);
		Thing_Hate(308, 305, 0);
		Thing_Hate(309, 305, 0);
	}
}

Script 41 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		Thing_Remove(210);
		Thing_Activate(306);
		ACS_Execute(31, 0, 0, 0, 0);
	}
}

Script 42 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		//SetLineSpecial(217, 0, 0, 0, 0, 0, 0);
		//Thing_Activate(316);
		Thing_Activate(298);
		Delay(1);
		Thing_Hate(316, 0, 0);
		Thing_Hate(316, 298, 0);
	}
}

Script 43 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		//SetLineSpecial(226, 0, 0, 0, 0, 0, 0);
		Thing_Activate(320);
		Thing_Activate(321);
		Thing_Activate(322);
		Thing_Activate(323);
		Thing_Activate(324);
		Thing_Activate(325);
		Delay(1);
		Thing_Hate(320, 0, 0);
		Thing_Hate(320, 324, 0);
		Thing_Hate(320, 325, 0);
		Thing_Hate(321, 0, 0);
		Thing_Hate(321, 324, 0);
		Thing_Hate(321, 325, 0);
		Thing_Hate(323, 0, 0);
		Thing_Hate(323, 325, 0);
		Thing_Hate(323, 324, 0);
		Thing_Hate(324, 0, 0);
		Thing_Hate(324, 320, 0);
		Thing_Hate(324, 321, 0);
		Thing_Hate(324, 322, 0);
		Thing_Hate(324, 323, 0);
		Thing_Hate(322, 0, 0);
		Thing_Hate(322, 324, 0);
		Thing_Hate(322, 325, 0);
		Thing_Hate(325, 0, 0);
		Thing_Hate(325, 320, 0);
		Thing_Hate(325, 321, 0);
		Thing_Hate(325, 323, 0);
		Thing_Hate(325, 322, 0);
	}
}

//CHIEFTAIN ZURA TANK
Script 37 (void)
{
    Print(s:"You see Chieftain Zura inside the tank. She doesn't seem to be conscious.");
	PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
}

//PRISON
//Cerberus Growl
Script 32 (void)
{
	Hudmessage(s:"Cerberus:    *Whines*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_FIRE, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(124, "Cerberus/Pain", CHAN_AUTO);
	Delay(16);
	PlaySound(124, "Cerberus/Death", CHAN_AUTO);
	Delay(105);
}
//Initiate Mumble
Script 33 (void)
{
	PlaySound(125, "Initiate/Active", CHAN_AUTO);
	Delay(35);
	SetActorAngle(127, 0.75);
	Delay(16);
	SetActorAngle(126, 0.75);
}
//Cultist Mumble
Script 35 (void)
{
	PlaySound(129, "Cultist/Active", CHAN_AUTO);
}

//STARVING CERBERUS
Script 36 (void)
{
	If(CheckInventory("InventoryHunkOfFlesh") == 0)
	{
		Print(s:"The starving Cerberus seems to be gnawing on a key.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	}
	else
	If(CheckInventory("InventoryHunkOfFlesh") > 0)
	{
		SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(130, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryHunkOfFlesh", 1);
		SpawnSpotForced("GoreFleshMediumA", 131, 490, 0);
		Delay(16);
		PlaySound(124, "Cerberus/Sight", CHAN_AUTO);
		Thing_Activate(124);
		SetActorFlag(124, "NODAMAGE", 1);
		Thing_SetGoal(124, 135, 0, 1);
		Thing_Remove(132);

		Delay(20);
		//Thing_Deactivate(124);
		SpawnSpotForced("AxeKey", 133, 0, 0);
		//Thing_Activate(124);
		Thing_Remove(490);
        Thing_SetGoal(124, 136, 0, 1);
		Delay(16);
		SetActorState(124, "Spawn", 1);
		Thing_Deactivate(124);
		SetActorAngle(124, 0.68);
		PlaySound(124, "Cerberus/Active", CHAN_AUTO);
		SpawnSpotForced("GoreFleshMediumA", 134, 491, 0);
	}

}

//PRISON WALL EXPLOSION
Script 31 (void)
{
	Thing_Remove(123);

	Radius_Quake(1, 105, 0, 1, 0);
	SpawnSpotForced("ExplosionHuge", 119, 0, 0);

	Floor_RaiseByValue(120, 99999, 32);
	ChangeFloor(120, "IRON_10");
	Floor_LowerByValue(118, 99999, 32);
	ChangeFloor(118, "ASH2");

	Floor_LowerByValue(121, 99999, 56);
	Floor_RaiseByValue(122, 99999, 56);
	ChangeFloor(122, "IRON_09");

	Floor_lowerByValue(113, 99999, 40);
	Floor_lowerByValue(114, 99999, 56);
	Floor_lowerByValue(115, 99999, 72);
	Floor_lowerByValue(116, 99999, 56);
	Floor_lowerByValue(117, 99999, 48);

	Thing_Remove(240);
	SpawnSpotForced("HealthBread", 247, 0, 0);
	SpawnSpotForced("WaterDropGenerator", 248, 0, 0);

	SpawnSpotForced("BurnDecal", 119, 0, 0);
	SpawnSpotForced("SteamGenerator", 112, 0, 0);
}

//CRAWLER CRY
Script 6 (void)
{
	PlaySound(35, "Crawler/Death", CHAN_AUTO);
}

//ACID BAR DOOR
Script 9 (void)
{
	If(CheckInventory("InventoryJarOfCorrosiveAcid") > 0)
	{
		SetWeapon("Fists");
		SetLineSpecial(43, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(242, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryJarOfCorrosiveAcid", 1);
		PlaySound(50, "Weapons/AcidSizzle", CHAN_AUTO);
		PlaySound(50, "Interaction/Smother", CHAN_AUTO);
		Floor_LowerByValue(45, 8, 32);
		Floor_LowerByValue(46, 7, 28);
		Floor_LowerByValue(48, 9, 52);
		Floor_LowerByValue(49, 8, 56);
		SetActorFlag(51, "NOBLOCKMAP", 1);
		SetActorFlag(51, "MOVEWITHSECTOR", 1);
		Delay(4);
		SpawnSpotForced("SteamPuffSmall", 51, 0, 0);
		Delay(8);
		SpawnSpot("IDLabJarA", 52, 0, 0);
		PlaySound(52, "Metal/Bounce1", CHAN_AUTO);
		Delay(8);
		PlaySound(50, "Weapons/AcidSizzle", CHAN_AUTO);
	}
	else
	{
	Print(s:"The steel bars look scratched and worn out.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
	}
}

Script 50 (void)
{
	Print(s:"The switch appears to be functional but the security bars won't budge.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
}

//BLISTER KILL
Script 20 (void)
{
	Thing_Destroy(78, 0, 0);
}

//SEWER DOOR
Script 15 (void)
{
    If(GetSectorCeilingZ(72, 0, 0) < -972.0 && GetSectorFloorZ(63, 0, 0) > -824.0 && GetSectorFloorZ(71, 0, 0) > -789.0)
	{
		PlaySound(68, "Interaction/MachineOn", CHAN_AUTO);
		SetActorPitch(68, 0.65);
		Floor_LowerByValue(63, 24, 76);
		TagWait(63);
	}
	else
	If(GetSectorCeilingZ(72, 0, 0) < -972.0 && GetSectorFloorZ(63, 0, 0) < 898.0 && GetSectorFloorZ(71, 0, 0) > -789.0)
	{
		PlaySound(68, "Interaction/MachineOn", CHAN_AUTO);
		SetActorPitch(68, 0.85);
		Floor_RaiseAndCrush(63, 24, 1000, 0);
		TagWait(63);
	}
	else
	If(GetSectorCeilingZ(72, 0, 0) > -973.0 && GetSectorFloorZ(63, 0, 0) < 898.0 && GetSectorFloorZ(71, 0, 0) < -789.0)
	{
		SetLineSpecial(75, 0, 0, 0, 0, 0, 0);
		PlaySound(68, "Interaction/MachineOn", CHAN_AUTO);
		SetActorPitch(68, 0.85);
		Floor_RaiseByValue(63, 24, 76);
		//TagWait(63);
		TagWait(72);
        Thing_Remove(70);
		Ceiling_RaiseByValue(72, 4, 248);

	}

}

//SEWER WATER
Script 16 (void)
{
	//Delay(50);
	PlaySound(232, "Ambient/Impact", CHAN_AUTO);
	Thing_Remove(66);
	SpawnSpotForced("IDPressureCounterBAnimated", 67, 0, 128);
    Floor_LowerByValue(71, 16, 240);
	Delay(16);
	Ceiling_RaiseByValue(72, 4, 75);
	TagWait(72);
	Ceiling_RaiseByValue(73, 99999, 306);
	Thing_Move(70, 69, 1);
}

//LITH SIGHTING WINDOW
Script 51 (void)
{
	SetLineSpecial(244, 0, 0, 0, 0, 0, 0);
	Delay(50);
	Ceiling_LowerByValue(19, 8, 80);
	TagWait(19);
	Thing_Remove(245);
}

//LAB HALL LITH DOOR
Script 23 (void)
{
	SetLineSpecial(88, 0, 0, 0, 0, 0, 0);
	PlaySound(243, "Ambient/CreepyWhistle", CHAN_AUTO);
	Delay(24);
	Door_Close(82, 8, 0);
	TagWait(82);
	Thing_Remove(83);
	Light_Fade(84, 120, 1);
	Thing_Remove(85);
	ChangeCeiling(86, "IRON_14B");
	SpawnSpotForced("SparkGenerator", 87, 0, 0);
}

//LAB HALL DOORS
Script 22 (void)
{
	SetLineSpecial(79, 0, 0, 0, 0, 0, 0);
	Door_Open(80, 16, 0);
	Door_Open(82, 16, 0);
	TagWait(81);
	Door_Open(81, 16, 0);

	TagWait(99);
	Door_Open(99, 16, 0);

	TagWait(137);
	Door_Open(137, 16, 0);
}

//BOTANY LAB MONTCHARGE
Script 24 (void)
{
	TagWait(96);
	TagWait(97);
	If(GetSectorFloorZ(97, 0, 0) > -539.0)
	{
		Floor_LowerByValue(96, 4, 48);
		Floor_LowerByValue(97, 4, 48);
	}
	else
	{
	Floor_RaiseByValue(96, 4, 48);
	Floor_RaiseByValue(97, 4, 48);
	}
}

//DOORS & ELEVATORS
Script 4 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
		Generic_Door(18, 16, 0, 34, 0);
		TagWait(18);
	}
	else
	Print(s:"This door requires an Earth key to open.");
}

Script 5 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
		Generic_Door(19, 16, 0, 69, 0);
		TagWait(19);
	}
	else
	Print(s:"This door requires an Earth key to open.");
}

Script 21 (void)
{
	If(CheckInventory("AxeKey") > 0)
	{
		Generic_Door(76, 16, 0, 34, 0);
		TagWait(76);
	}
	else
	Print(s:"This door requires an Axe key to open.");
}

Script 29 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		Generic_Door(22, 16, 0, 69, 0);
		TagWait(22);
	}
	else
	Print(s:"This door requires a Crystal key to open.");
}



//PRINTS
Script 2 (void)
{
  Print(s:"The switch does nothing, but you don't have much need for a portal anymore.");
}

Script 3 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ELEVATOR TO ICEPEAK"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 3.0);
}


Script 7 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(An elegantly ornated ledger lies open on the desk.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 25.0);
	Hudmessage(s:"Valc Clinic Logbook"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
    Hudmessage(s:"Rot. 509 Day 204; Bear Captain Dura: finger reattachment surgery, 120 gold pieces     "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"Rot. 509 Day 208; Tectus the Minotaur Pyromancer: horn regrowth, 350 gold pieces     "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"Rot. 509 Day 228-245; Witch Cosena: aesthetic treatment, 2400 gold pieces, 1000 adv."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 8 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"To: Witch Chieftain Adjunct Lith"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"From: Witch Doctor Adena"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
    Hudmessage(s:"There appears to be an issue with the lab storage doors in the southern operation rooms. The switches seem"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"to open the door across instead of the door they're next to.        If this is some sort of farce, then I assure "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
    Hudmessage(s:"you that neither me nor Cosena's melting face find it funny.   I need a Fixer to come sort this out quickly.  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 10 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 65.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A lengthy briefing details the first phase of the Iron Division campaign)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 65.0);
	Hudmessage(s:"Assault on Outpost 3"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 65.0);
	Hudmessage(s:"[...]    Once our covert squads are in position and the crystal light signal is given, the bulk of the force will           "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 65.0);
	Hudmessage(s:"commence the assault. Using our newly researched toxic gas, the forward units will attack the palisades (while"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 65.0);
	Hudmessage(s:"the Division advances) and hinder the defenders.   It is a known risk that the gas might spread within the outpost"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 65.0);
    Hudmessage(s:"but since the inhabitants have been confirmed to be possessed, 'civilian' casualties are more than acceptable.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 65.0);
	Hudmessage(s:"The assault is expected to be over in few hours, with no losses on our side.     We do not expect the humans to be "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 65.0);
	Hudmessage(s:"in shape to defend themselves, let alone suspect our sudden strike.     However, it is likely that the demons will "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 65.0);
	Hudmessage(s:"become aware of our intentions as soon as we run their first batch of slaves through the blade, and therefore,  "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
	Hudmessage(s:"the Lancer Council has instructed us to preserve as many resources as possible to avoid future logistic strains."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 11 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"COUNCIL ROOM"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 3.0);
}

Script 12 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CHIEFTAIN ADJUNCT'S OFFICE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 3.0);
}

Script 13 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"VALC LABORATORIES - NO UNAUTHORISED PERSONNEL ALLOWED"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 53 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"EMERGENCY ONLY"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.10, 4.0);
}

Script 14 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 125.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The diary appears to belong to Witch Chieftain Adjunct Lith. Many of the final pages seem to have been torn away...)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 125.0);
	Hudmessage(s:"Day 188. No. No! NO! That wretch Zura has denied my project! Dangerous?! I would have expected anyone but HER to"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 125.0);
	Hudmessage(s:"say such an ineptitude! She was the one supposed to bring my ideas to the Council... no, no, no, I will see the Lancers"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 125.0);
	Hudmessage(s:"myself tomorrow. They will see beyond the veil, yes, they are much smarter than Zura! They do not fear the future."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 125.0);
	Hudmessage(s:"Day 189. I cannot believe... the feeling... two weeks...  two weeks and they set off to their doom!  They would rather"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 125.0);
    Hudmessage(s:"throw themselves at death than take my plan into consideration.     For the first time, I saw it in their eyes, yes...    "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 125.0);
	Hudmessage(s:"fear. They fear all my ideas. They fear the creation of the perfect warrior... a warrior that would surely overthrow"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.60, 125.0);
	Hudmessage(s:"these weaklings.  Zura knows it too.  Oh, I understand now... that snake wants to steal my work and take Valc over!"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.62, 125.0);
	Hudmessage(s:"Day 190. Oh, the swine... she asked the Council to remain in Valc during the campaign. Further her weapon research..."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.66, 125.0);
	Hudmessage(s:"What a worthless lie! I can already feel her coming for my work... [...] The voice! The sweet cure... I passed out while"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.68, 125.0);
	Hudmessage(s:"working in the midst of dark fumes.  Her words were soothing... an Elf.  A beautiful, pale Elf! I thought they had been"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.70, 125.0);
	Hudmessage(s:"all eradicated by the Demons!   Yes, she hated the Demons with such passion, and had been watching me for so long..."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.72, 125.0);
	Hudmessage(s:"(The next few pages appear to have been violently torn away.)"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.76, 125.0);
	Hudmessage(s:"Day 196. It's been almost a week and Zura still hasn't approached me.  I have no time for her nonsense! Nithriel will "; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.80, 125.0);
	Hudmessage(s:"help me fulfill my research.  Yes, she still talks to me in my dreams...  words so old and true.  And only I can help her"; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.82, 125.0);
	Hudmessage(s:"crush the Demons, all while my ignorant sisters litter the battlefield.    Yes, Nithriel is right.   Today, it all begins...  "; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.84, 125.0);
    Hudmessage(s:"Day 197. They are beautiful! And Zura still hasn't noticed the missing Goblins... no, she was not there to see my dear"; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.88, 125.0);
	Hudmessage(s:"Crawlers rise from their worthless flesh! Yes, yes, I can already see them swarm Hell itself! Just like in the dreams!"; HUDMSG_PLAIN | HUDMSG_LOG, 18, CR_UNTRANSLATED, 1.5, 0.90, 125.0);
}

Script 25 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 65.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Universal Alchemist - Mixer Guide"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.54, 65.0);
	Hudmessage(s:"(You skim through the book for useful recipes. It also looks like one of the pages has been torn away)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.56, 65.0);
	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.60, 65.0);
	Hudmessage(s:"Potion of Greater Healing"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.64, 65.0);
	Hudmessage(s:"1, 2 - Vial of Healing"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.66, 65.0);
	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.70, 65.0);
	Hudmessage(s:"Potion of Haste"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 65.0);
    Hudmessage(s:"1, 5 - Vial of Healing"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 65.0);
	If(GameSkill() != 5)
	{
	Hudmessage(s:"7 - A couple of Fragfire Cans"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 65.0);
	}
	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.82, 65.0);
	Hudmessage(s:"Potion of Stoneskin"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.86, 65.0);
	Hudmessage(s:"8 - Potion of Might"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
	Hudmessage(s:"9, 10 - Power Shard"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 26 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A few entries from Lith's diary lie scattered on the dirty mattress)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.60, 95.0);
	Hudmessage(s:"Day 202: I can hear them marching from here! Cluck cluck cluck! How dare they disturb my quiet sewer!?... oh!"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.64, 95.0);
    Hudmessage(s:"They are leaving Valc!   The mighty Iron Division and their dim witted allies headed for the meat grinder.  This"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
	Hudmessage(s:"means that I can finally fulfill the next part of Nithriel's plan. (The next sentences have been scratched off) "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
    Hudmessage(s:"Day 203:   Ah, I can finally spend more and more time on my work now that the clinic barely gets any visitors.  I"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"have lost count of how many sleepless nights I have toiled here in the dark.   No dreams, yet I can still hear it."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"Her words guide me. The Crawlers were mere child's play.   Now, it is time for me to create the perfect warrior."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"(The third entry seems to be almost a month apart. The writing looks significantly shakier and harder to read) "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"Day 231:    This is it.  Zura knows for sure now.  She's noted my absences, oh she knows for sure.  She knows about"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"those missing Fixers, oh yes...     She will have me killed as soon as I finish the project.   Then SHE will claim it for"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"herself!    But Nithriel knows too...   tonight, Zura will bow to me.    Then, I shall leave to turn the Parapet Ward"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"off. Yes, enough dreams. Nithriel wants to see me in person, and the Crawlers aren't working fast enough for her."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 27 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A watered-down bit of parchment is clinging to the moist stone)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 25.0);
	Hudmessage(s:"To: Chieftain Adjunct Lith"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
    Hudmessage(s:"None of the Fixers have shown up for work today. I don't recall being informed about their... leave?"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"(The rest of the text is illegible or missing)"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 28 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 65.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This looks like a torn page from a recipe book. A new layer of shaky text covers the diagrams)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.72, 65.0);
	Hudmessage(s:"Potion of Might"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 65.0);
    Hudmessage(s:"1, 2, 3, 4 - Vial of Healing"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 65.0);
	Hudmessage(s:"6 - Potion of Haste"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 65.0);
    Hudmessage(s:"(Lith's write-over looks distressed. You notice many unequal heights and widths between letters)"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 65.0);
	Hudmessage(s:"Day 239:  All my sisters are dead now!  Nithriel's powers are truly inspiring! She took Valc over in a mere few hours."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
	Hudmessage(s:"And look what she's gifted me! My own stock of human slaves. Just what I needed to make the final adjustments..."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A bloodied note lies by the dead Witch)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
	Hudmessage(s:"Lith has gone completely mad!   She was behind the missing staff members...  and this dark slime...   She's somehow  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
    Hudmessage(s:"managed to make it grow and expand... for how long has she been doing this? Chieftain Zura is nowhere to be found"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"and (the text stops briefly). Humans! Warping in everywhere, we've been betrayed, we are falling back to Icepeak!  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 46 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(An ominous, dark sludge stains the side of the diary page. The smudgy text looks as if it were written with it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"Day 240: It breaks my heart to see them go... Nithriel had her henchmen ship samples of my corruption along with"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
    Hudmessage(s:"my first generation of the successful experiment. My beautiful Golems... humans, orcs, all the same. Perfected."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"Yes, I have made them all perfect, all beautiful! And right now, they are on their way to put an end to the scum"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"of Hell!    And after my foolish sisters retreat from the demons, I shall embrace them!    They will be perfect too!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"Day 241: It cannot be!   My children!   Stupid, stupid, stupid!   She jumped from a ledge to her own death!   This is"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"how they reward me for dulling their sense of pain!   Carelessness!   Do they believe they can FLY now?!   Stupid!!!"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"Day 242: They are angry. No matter how hard I try, they fail to respect their mother. Traces of their precursor"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"self.  Oh, how they struggle!  Silly dolls, you have long transcended individuality.  You are part of the web now. "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 47 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A blood-soiled diary page rests on the floor. The raw, red letters look freshly written)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"Day 244:     What a delightful guest have I had visiting today! The Demonblood in person! Oh, I must prepare"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
    Hudmessage(s:"her a proper welcome... no, no, she is so close, and my hair is such a greasy mess! Where'd I put that comb?..."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

//SWINGING DOORS

Script 90 (void)
{
If (GetActorZ(0) < -586.0)
{
  Polyobj_DoorSwing(90,-16,64,105);
}
}

//UNIVERSAL ALCHEMIST
//Vials
Script 501 (void)
{
	If(CheckInventory("InventoryVialOfHealing") > 0 && IsTIDUsed(511) == 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		SpawnSpotForced("InventoryVialOfHealing", 501, 511, 0);
		PlaySound(511, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(511, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryVialOfHealing") == 0 && IsTIDUsed(511) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 502 (void)
{
	If(CheckInventory("InventoryVialOfHealing") > 0 && IsTIDUsed(512) == 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		SpawnSpotForced("InventoryVialOfHealing", 502, 512, 0);
		PlaySound(512, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(512, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryVialOfHealing") == 0 && IsTIDUsed(512) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 503 (void)
{
	If(CheckInventory("InventoryVialOfHealing") > 0 && IsTIDUsed(513) == 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		SpawnSpotForced("InventoryVialOfHealing", 503, 513, 0);
		PlaySound(513, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(513, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryVialOfHealing") == 0 && IsTIDUsed(513) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 504 (void)
{
	If(CheckInventory("InventoryVialOfHealing") > 0 && IsTIDUsed(514) == 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		SpawnSpotForced("InventoryVialOfHealing", 504, 514, 0);
		PlaySound(514, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(514, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryVialOfHealing") == 0 && IsTIDUsed(514) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 505 (void)
{
	If(CheckInventory("InventoryVialOfHealing") > 0 && IsTIDUsed(515) == 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		SpawnSpotForced("InventoryVialOfHealing", 505, 515, 0);
		PlaySound(515, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(515, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryVialOfHealing") == 0 && IsTIDUsed(515) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Haste
Script 506 (void)
{
	If(CheckInventory("InventoryPotionOfHaste") > 0 && IsTIDUsed(516) == 0)
	{
		TakeInventory("InventoryPotionOfHaste", 1);
		SpawnSpotForced("InventoryPotionOfHaste", 506, 516, 0);
		PlaySound(516, "Metal/Bounce2", CHAN_AUTO);
		SetActorFlag(516, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryPotionOfHaste") == 0 && IsTIDUsed(516) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//FragfireCans
Script 507 (void)
{
	If(CheckInventory("FragfireCan") >= 160 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && GameSkill() != 5)
	{
		TakeInventory("FragfireCan", 160);
		SpawnSpotForced("FragfireCan", 507, 517, 0);
		SpawnSpotForced("FragfireCan", 526, 527, 0);
		PlaySound(517, "Metal/Bounce1", CHAN_AUTO);
		PlaySound(527, "Metal/Bounce1", CHAN_AUTO);
		SetActorFlag(517, "COUNTITEM", 0);
		SetActorFlag(527, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("FragfireCan") >= 80 && CheckInventory("FragfireGunLoaded") >= 80 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && GameSkill() != 5)
	{
		TakeInventory("FragfireCan", 80);
		TakeInventory("FragfireGunLoaded", 80);
		SpawnSpotForced("FragfireCan", 507, 517, 0);
		SpawnSpotForced("FragfireCan", 526, 527, 0);
		PlaySound(517, "Metal/Bounce1", CHAN_AUTO);
		PlaySound(527, "Metal/Bounce1", CHAN_AUTO);
		SetActorFlag(517, "COUNTITEM", 0);
		SetActorFlag(527, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("FragfireCan") < 160 || (CheckInventory("FragfireCan") < 80 &&  CheckInventory("FragfireGunLoaded") < 80) && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && GameSkill() != 5)
	{
		Print(s:"You don't have any ingredients for these sockets.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Might
Script 508 (void)
{
	If(CheckInventory("InventoryPotionOfMight") > 0 && IsTIDUsed(518) == 0)
	{
		TakeInventory("InventoryPotionOfMight", 1);
		SpawnSpotForced("InventoryPotionOfMight", 508, 518, 0);
		PlaySound(518, "Metal/Land", CHAN_AUTO);
		SetActorFlag(518, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("InventoryPotionOfMight") == 0 && IsTIDUsed(518) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//PowerShard
Script 509 (void)
{
	If(CheckInventory("Armor") >=3 && IsTIDUsed(519) == 0)
	{
		TakeInventory("Armor", 3);
		TakeInventory("DepletedShard", 15);
		SpawnSpotForced("PowerShard", 509, 519, 0);
		PlaySound(519, "Ammo/DepletedShardBounce", CHAN_AUTO);
		SetActorFlag(519, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("Armor") < 3  && IsTIDUsed(519) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 510 (void)
{
	If(CheckInventory("Armor") >=3 && IsTIDUsed(520) == 0)
	{
		TakeInventory("Armor", 3);
		TakeInventory("DepletedShard", 15);
		SpawnSpotForced("PowerShard", 510, 520, 0);
		PlaySound(520, "Ammo/DepletedShardBounce", CHAN_AUTO);
		SetActorFlag(520, "COUNTITEM", 0);
	}
	else
	If(CheckInventory("Armor") < 3  && IsTIDUsed(520) == 0)
	{
		Print(s:"You don't have any ingredient for this socket.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//Mixer
Script 520 (void)
{
	//Check
	If(IsTIDUsed(499))
	{
		Print(s:"You must claim the potion from the tray first.");
	}
	else

	//Potion of Greater Healing
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 1 && IsTIDUsed(513) == 0 && IsTIDUsed(514) == 0 && IsTIDUsed(515) == 0 && IsTIDUsed(516) == 0 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && IsTIDUsed(518) == 0 && IsTIDUsed(519) == 0 && IsTIDUsed(520) == 0)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(512);
		SpawnSpotForced("HealthPotionOfGreaterHealing", 500, 499, 0);
		SetActorFlag(499, "INVENTORY.ALWAYSPICKUP", 1);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
	}
	else
	//Potion of Haste
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 0 && IsTIDUsed(513) == 0 && IsTIDUsed(514) == 0 && IsTIDUsed(515) == 1 && IsTIDUsed(516) == 0 && IsTIDUsed(517) == 1 && IsTIDUsed(527) == 1 && IsTIDUsed(518) == 0 && IsTIDUsed(519) == 0 && IsTIDUsed(520) == 0 && GameSkill() != 5)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(515);
		Thing_Remove(517);
		Thing_Remove(527);
		SpawnSpotForced("InventoryPotionOfHaste", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
	}
	else
	//Potion of Haste Bearzerk
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 0 && IsTIDUsed(513) == 0 && IsTIDUsed(514) == 0 && IsTIDUsed(515) == 1 && IsTIDUsed(516) == 0 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && IsTIDUsed(518) == 0 && IsTIDUsed(519) == 0 && IsTIDUsed(520) == 0 && GameSkill() == 5)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(515);
		//If(GameSkill() != 5)
		//{
		//Thing_Remove(517);
		//Thing_Remove(527);
		//}
		SpawnSpotForced("InventoryPotionOfHaste", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
	}
	else
	//Potion of Might
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 1 && IsTIDUsed(513) == 1 && IsTIDUsed(514) == 1 && IsTIDUsed(515) == 0 && IsTIDUsed(516) == 1 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && IsTIDUsed(518) == 0 && IsTIDUsed(519) == 0 && IsTIDUsed(520) == 0)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(512);
		Thing_Remove(513);
		Thing_Remove(514);
		Thing_Remove(516);
		SpawnSpotForced("InventoryPotionOfMight", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
	}
	else
	//Potion of Stoneskin
	If(IsTIDUsed(511) == 0 && IsTIDUsed(512) == 0 && IsTIDUsed(513) == 0 && IsTIDUsed(514) == 0 && IsTIDUsed(515) == 0 && IsTIDUsed(516) == 0 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && IsTIDUsed(518) == 1 && IsTIDUsed(519) == 1 && IsTIDUsed(520) == 1)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(518);
		Thing_Remove(519);
		Thing_Remove(520);
		SpawnSpotForced("InventoryPotionOfStoneskin", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
	}
	else
	//MysteryPotion
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 1 && IsTIDUsed(513) == 1 && IsTIDUsed(514) == 1 && IsTIDUsed(515) == 1 && IsTIDUsed(516) == 1 && IsTIDUsed(517) == 1 && IsTIDUsed(527) == 1 && IsTIDUsed(518) == 1 && IsTIDUsed(519) == 1 && IsTIDUsed(520) == 1 && GameSkill() != 5)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(512);
		Thing_Remove(513);
		Thing_Remove(514);
		Thing_Remove(515);
		Thing_Remove(516);
		Thing_Remove(517);
		Thing_Remove(527);
		Thing_Remove(518);
		Thing_Remove(519);
		Thing_Remove(520);
		SpawnSpotForced("InventoryMysteryPotion", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
		TagWait(104);
		PlaySound(0, "Character/ZanGiggle", CHAN_AUTO);
	}
	else
	//MysteryPotion Bearzerk
	If(IsTIDUsed(511) == 1 && IsTIDUsed(512) == 1 && IsTIDUsed(513) == 1 && IsTIDUsed(514) == 1 && IsTIDUsed(515) == 1 && IsTIDUsed(516) == 1 && IsTIDUsed(517) == 0 && IsTIDUsed(527) == 0 && IsTIDUsed(518) == 1 && IsTIDUsed(519) == 1 && IsTIDUsed(520) == 1 && GameSkill() == 5)
	{
		Line_SetBlocking(106, 32, 0);
		SetActorFlag(511, "NOBLOCKMAP", 1);
	    SetActorFlag(512, "NOBLOCKMAP", 1);
	    SetActorFlag(513, "NOBLOCKMAP", 1);
	    SetActorFlag(514, "NOBLOCKMAP", 1);
	    SetActorFlag(515, "NOBLOCKMAP", 1);
	    SetActorFlag(516, "NOBLOCKMAP", 1);
	    SetActorFlag(517, "NOBLOCKMAP", 1);
	    SetActorFlag(527, "NOBLOCKMAP", 1);
	    SetActorFlag(518, "NOBLOCKMAP", 1);
	    SetActorFlag(519, "NOBLOCKMAP", 1);
	    SetActorFlag(520, "NOBLOCKMAP", 1);
		Ceiling_LowerByValue(103, 8, 56);
		Ceiling_LowerByValue(104, 8, 56);
		Ceiling_LowerByValue(105, 16, 48);
		TagWait(104);
		Delay(35);
		Ceiling_RaiseByValue(105, 4, 48);
		TagWait(105);
		Thing_Remove(511);
		Thing_Remove(512);
		Thing_Remove(513);
		Thing_Remove(514);
		Thing_Remove(515);
		Thing_Remove(516);
		//If(GameSkill() != 5)
		//{
		//Thing_Remove(517);
		//Thing_Remove(527);
		//}
		Thing_Remove(518);
		Thing_Remove(519);
		Thing_Remove(520);
		SpawnSpotForced("InventoryMysteryPotion", 500, 499, 0);
		PlaySound(500, "Weapons/AcidSizzle", CHAN_AUTO);
		Ceiling_RaiseByValue(103, 8, 56);
        Ceiling_RaiseByValue(104, 8, 56);
		Line_SetBlocking(106, 0, 32);
	    SetActorFlag(511, "NOBLOCKMAP", 0);
	    SetActorFlag(512, "NOBLOCKMAP", 0);
	    SetActorFlag(513, "NOBLOCKMAP", 0);
	    SetActorFlag(514, "NOBLOCKMAP", 0);
	    SetActorFlag(515, "NOBLOCKMAP", 0);
	    SetActorFlag(516, "NOBLOCKMAP", 0);
		SetActorFlag(517, "NOBLOCKMAP", 0);
	    SetActorFlag(527, "NOBLOCKMAP", 0);
	    SetActorFlag(518, "NOBLOCKMAP", 0);
	    SetActorFlag(519, "NOBLOCKMAP", 0);
	    SetActorFlag(520, "NOBLOCKMAP", 0);
		TagWait(104);
		PlaySound(0, "Character/ZanGiggle", CHAN_AUTO);
	}
	else
	//Fail
	{
	Line_SetBlocking(106, 32, 0);
	SetActorFlag(511, "NOBLOCKMAP", 1);
	SetActorFlag(512, "NOBLOCKMAP", 1);
	SetActorFlag(513, "NOBLOCKMAP", 1);
	SetActorFlag(514, "NOBLOCKMAP", 1);
	SetActorFlag(515, "NOBLOCKMAP", 1);
	SetActorFlag(516, "NOBLOCKMAP", 1);
	SetActorFlag(517, "NOBLOCKMAP", 1);
	SetActorFlag(527, "NOBLOCKMAP", 1);
	SetActorFlag(518, "NOBLOCKMAP", 1);
	SetActorFlag(519, "NOBLOCKMAP", 1);
	SetActorFlag(520, "NOBLOCKMAP", 1);
	Ceiling_LowerByValue(103, 8, 56);
	Ceiling_LowerByValue(104, 8, 56);
	Ceiling_LowerByValue(105, 16, 48);
	TagWait(104);
	Delay(35);
	Ceiling_RaiseByValue(105, 32, 48);
	TagWait(105);
	PlaySound(500, "Weapons/SteamHiss", CHAN_AUTO);
	Print(s:"You fail to brew anything.");
	Ceiling_RaiseByValue(103, 8, 56);
	Ceiling_RaiseByValue(104, 8, 56);
	Line_SetBlocking(106, 0, 32);
	SetActorFlag(511, "NOBLOCKMAP", 0);
	SetActorFlag(512, "NOBLOCKMAP", 0);
	SetActorFlag(513, "NOBLOCKMAP", 0);
	SetActorFlag(514, "NOBLOCKMAP", 0);
	SetActorFlag(515, "NOBLOCKMAP", 0);
	SetActorFlag(516, "NOBLOCKMAP", 0);
	SetActorFlag(517, "NOBLOCKMAP", 0);
	SetActorFlag(527, "NOBLOCKMAP", 0);
	SetActorFlag(518, "NOBLOCKMAP", 0);
	SetActorFlag(519, "NOBLOCKMAP", 0);
	SetActorFlag(520, "NOBLOCKMAP", 0);
	TagWait(104);
	PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
    }

	TagWait(103);
	TagWait(104);
	TagWait(105);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 13, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 14, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 15, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 16, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 17, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 18, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//MUSIC FADE
Script 48 (void)
{
	If(CheckInventory("CrystalKey") > 0)
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
}

Script 49 (void)
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

//GEAR CONTROL
//Take Gear
Script "TakeWeapons" (void)
{
    TakeInventory("HoldingAxe", 1);
	TakeInventory("HoldingSpikeGun", 1);
	TakeInventory("HoldingFragfireGun", 1);
	TakeInventory("HoldingCrushbow", 1);
	TakeInventory("HoldingPotionLauncher", 1);
	TakeInventory("HoldingCrylance", 1);
	TakeInventory("HoldingPaingun", 1);
	If(CheckInventory("SentryGrabbed") > 0)
	{
		TakeInventory("SentryGrabbed", 1);
		//GiveInventory("ScriptGiveSentryGrabbed", 1);
	}
	If(CheckInventory("Axe") > 0)
	{
		TakeInventory("Axe", 1);
		TakeInventory("ThrowingAxe", 1);
		GiveInventory("ScriptGiveAxe", 1);
	}
	If(CheckInventory("SpikeGun") > 0)
	{
		TakeInventory("SpikeGun", 1);
		GiveInventory("ScriptGiveSpikeGun", 1);

	}
	If(CheckInventory("FragfireGun") > 0)
	{
		TakeInventory("FragfireGun", 1);
		GiveInventory("ScriptGiveFragfireGun", 1);
	}
	If(CheckInventory("Crushbow") > 0)
	{
		TakeInventory("Crushbow", 1);
		GiveInventory("ScriptGiveCrushbow", 1);
	}
	If(CheckInventory("PotionLauncherToxic") > 0)
	{
		TakeInventory("PotionLauncherToxic", 1);
		GiveInventory("ScriptGivePotionLauncherToxic", 1);
	}
	If(CheckInventory("PotionLauncherAcid") > 0)
	{
		TakeInventory("PotionLauncherAcid", 1);
		GiveInventory("ScriptGivePotionLauncherAcid", 1);
	}
	If(CheckInventory("Crylance") > 0)
	{
		TakeInventory("Crylance", 1);
		GiveInventory("ScriptGiveCrylance", 1);
	}
	If(CheckInventory("Hellclaw") > 0)
	{
		TakeInventory("Hellclaw", 1);
		GiveInventory("ScriptGiveHellclaw", 1);
	}
	If(CheckInventory("Paingun") > 0)
	{
		TakeInventory("Paingun", 1);
		GiveInventory("ScriptGivePaingun", 1);
	}
    If(CheckInventory("HatchetAndShield") > 0)
	{
		TakeInventory("HatchetAndShield", 1);
		GiveInventory("ScriptGiveHatchetAndShield", 1);
	}
    If(CheckInventory("BearzerkAxe") > 0)
	{
		TakeInventory("BearzerkAxe", 1);
		TakeInventory("BearzerkThrowingAxe", 1);
		GiveInventory("ScriptGiveBearzerkAxe", 1);
	}
	If(CheckInventory("GreatAxe") > 0)
	{
		TakeInventory("GreatAxe", 1);
		GiveInventory("ScriptGiveGreatAxe", 1);
	}
	If(CheckInventory("ForcePike") > 0)
	{
		TakeInventory("ForcePike", 1);
		GiveInventory("ScriptGiveForcePike", 1);
	}
	If(CheckInventory("FireHammer") > 0)
	{
		TakeInventory("FireHammer", 1);
		TakeInventory("ThrowingFireHammer", 1);
		GiveInventory("ScriptGiveFireHammer", 1);
	}
	If(CheckInventory("StormStaff") > 0)
	{
		TakeInventory("StormStaff", 1);
		GiveInventory("ScriptGiveStormStaff", 1);
	}
	//Ammo
	While(CheckInventory("ThrowingAxe") > 0)
	{
		TakeInventory("ThrowingAxe", 1);
		GiveInventory("ScriptGiveThrowingAxe", 1);
	}
	While(CheckInventory("BearzerkThrowingAxe") > 0)
	{
		TakeInventory("BearzerkThrowingAxe", 1);
		GiveInventory("ScriptGiveBearzerkThrowingAxe", 1);
	}
	While(CheckInventory("ThrowingFireHammer") > 0)
	{
		TakeInventory("ThrowingFireHammer", 1);
		GiveInventory("ScriptGiveThrowingFireHammer", 1);
	}
	While(CheckInventory("SpikeGunLoaded") > 0)
	{
		TakeInventory("SpikeGunLoaded", 1);
		GiveInventory("ScriptGiveSpikeGunLoaded", 1);
	}
	While(CheckInventory("SpikeMag") > 0)
	{
		TakeInventory("SpikeMag", 1);
		GiveInventory("ScriptGiveSpikeMag", 1);
	}
	While(CheckInventory("FragfireGunLoaded") > 0)
	{
		TakeInventory("FragfireGunLoaded", 1);
		GiveInventory("ScriptGiveFragfireGunLoaded", 1);
	}
	While(CheckInventory("FragfireCan") > 0)
	{
		TakeInventory("FragfireCan", 1);
		GiveInventory("ScriptGiveFragfireCan", 1);
	}
	While(CheckInventory("CrushbowLoaded") > 0)
	{
		TakeInventory("CrushbowLoaded", 1);
		GiveInventory("ScriptGiveCrushbowLoaded", 1);
	}
	While(CheckInventory("BoltMag") > 0)
	{
		TakeInventory("BoltMag", 1);
		GiveInventory("ScriptGiveBoltMag", 1);
	}
	While(CheckInventory("PotionLauncherToxicLoaded") > 0)
	{
		TakeInventory("PotionlauncherToxicLoaded", 1);
		GiveInventory("ScriptGivePotionLauncherToxicLoaded", 1);
	}
	While(CheckInventory("PotionBoxToxic") > 0)
	{
		TakeInventory("PotionBoxToxic", 1);
		GiveInventory("ScriptGivePotionBoxToxic", 1);
	}
	While(CheckInventory("PotionLauncherAcidLoaded") > 0)
	{
		TakeInventory("PotionlauncherAcidLoaded", 1);
		GiveInventory("ScriptGivePotionLauncherAcidLoaded", 1);
	}
	While(CheckInventory("PotionBoxAcid") > 0)
	{
		TakeInventory("PotionBoxAcid", 1);
		GiveInventory("ScriptGivePotionBoxAcid", 1);
	}
	While(CheckInventory("CrylanceLoaded") > 0)
	{
		TakeInventory("CrylanceLoaded", 1);
		GiveInventory("ScriptGiveCrylanceLoaded", 1);
	}
	While(CheckInventory("DepletedShard") > 0)
	{
		TakeInventory("DepletedShard", 1);
		GiveInventory("ScriptGiveDepletedShard", 1);
	}
	While(CheckInventory("AmmoBox") > 0)
	{
		TakeInventory("AmmoBox", 1);
		GiveInventory("ScriptGiveAmmoBox", 1);
	}
	While(CheckInventory("HellEnergy") > 0)
	{
		TakeInventory("HellEnergy", 1);
		GiveInventory("ScriptGiveHellEnergy", 1);
	}
	While(CheckInventory("ManaBall") > 0)
	{
		TakeInventory("ManaBall", 1);
		GiveInventory("ScriptGiveManaBall", 1);
	}
}
Script "TakeConsumables" (void)
{
	While(CheckInventory("InventoryVialOfHealing") > 0)
	{
		TakeInventory("InventoryVialOfHealing", 1);
		GiveInventory("ScriptGiveInventoryVialOfHealing", 1);
	}
	While(CheckInventory("InventoryTimeShard") > 0)
	{
		TakeInventory("InventoryTimeShard", 1);
		GiveInventory("ScriptGiveInventoryTimeShard", 1);
	}
	While(CheckInventory("InventoryFixerGoggles") > 0)
	{
		TakeInventory("InventoryFixerGoggles", 1);
		GiveInventory("ScriptGiveInventoryFixerGoggles", 1);
	}
	While(CheckInventory("InventoryPotionOfStoneskin") > 0)
	{
		TakeInventory("InventoryPotionOfStoneskin", 1);
		GiveInventory("ScriptGiveInventoryPotionOfStoneskin", 1);
	}
	While(CheckInventory("InventoryScrollAirWizardsEye") > 0)
	{
		TakeInventory("InventoryScrollAirWizardsEye", 1);
		GiveInventory("ScriptGiveInventoryScrollAirWizardsEye", 1);
	}
	While(CheckInventory("InventoryElementalRing") > 0)
	{
		TakeInventory("InventoryElementalRing", 1);
		GiveInventory("ScriptGiveInventoryElementalRing", 1);
	}
	While(CheckInventory("InventoryPotionOfMight") > 0)
	{
		TakeInventory("InventoryPotionOfMight", 1);
		GiveInventory("ScriptGiveInventoryPotionOfMight", 1);
	}
	While(CheckInventory("InventoryPotionOfHaste") > 0)
	{
		TakeInventory("InventoryPotionOfHaste", 1);
		GiveInventory("ScriptGiveInventoryPotionOfHaste", 1);
	}
	While(CheckInventory("InventorySentryGun") > 0)
	{
		TakeInventory("InventorySentryGun", 1);
		GiveInventory("ScriptGiveInventorySentryGun", 1);
	}
	While(CheckInventory("InventoryAmuletOfShadows") > 0)
	{
		TakeInventory("InventoryAmuletOfShadows", 1);
		GiveInventory("ScriptGiveInventoryAmuletOfShadows", 1);
	}
	While(CheckInventory("InventoryChokerOfTheBeast") > 0)
	{
		TakeInventory("InventoryChokerOfTheBeast", 1);
		GiveInventory("ScriptGiveInventoryChokerOfTheBeast", 1);
	}
	While(CheckInventory("InventoryBracerOfTheRevenant") > 0)
	{
		TakeInventory("InventoryBracerOfTheRevenant", 1);
		GiveInventory("ScriptGiveInventoryBracerOfTheRevenant", 1);
	}
	While(CheckInventory("InventoryScrollFireMagmaBall") > 0)
	{
		TakeInventory("InventoryScrollFireMagmaBall", 1);
		GiveInventory("ScriptGiveInventoryScrollFireMagmaBall", 1);
	}
	While(CheckInventory("InventoryScrollFireInferno") > 0)
	{
		TakeInventory("InventoryScrollFireInferno", 1);
		GiveInventory("ScriptGiveInventoryScrollFireInferno", 1);
	}
	While(CheckInventory("InventoryScrollEarthNourish") > 0)
	{
		TakeInventory("InventoryScrollEarthNourish", 1);
		GiveInventory("ScriptGiveInventoryScrollEarthNourish", 1);
	}
	While(CheckInventory("InventoryMysteryPotion") > 0)
	{
		TakeInventory("InventoryMysteryPotion", 1);
		GiveInventory("ScriptGiveInventoryMysteryPotion", 1);
	}
	While(CheckInventory("InventoryDivingSuit") > 0)
	{
		TakeInventory("InventoryDivingSuit", 1);
		GiveInventory("ScriptGiveInventoryDivingSuit", 1);
	}
	While(CheckInventory("InventoryChargedPsiCrown") > 0)
	{
		TakeInventory("InventoryChargedPsiCrown", 1);
		GiveInventory("ScriptGiveInventoryChargedPsiCrown", 1);
	}
	While(CheckInventory("InventoryBootsOfJourney") > 0)
	{
		TakeInventory("InventoryBootsOfJourney", 1);
		GiveInventory("ScriptGiveInventoryBootsOfJourney", 1);
	}
	While(CheckInventory("InventoryRingOfTheRedMonk") > 0)
	{
		TakeInventory("InventoryRingOfTheRedMonk", 1);
		GiveInventory("ScriptGiveInventoryRingOfTheRedMonk", 1);
	}
}


//Give Gear
Script "GiveWeapons" (void)
{
	If(CheckInventory("ScriptGiveAxe") > 0)
	{
		TakeInventory("ScriptGiveAxe", 1);
		GiveInventory("Axe", 1);
	}
	If(CheckInventory("ScriptGiveSpikeGun") > 0)
	{
		TakeInventory("ScriptGiveSpikeGun", 1);
		GiveInventory("SpikeGun", 1);
		TakeInventory("SpikeMag", 18);
	}
	If(CheckInventory("ScriptGiveFragfireGun") > 0)
	{
		TakeInventory("ScriptGiveFragfireGun", 1);
		GiveInventory("FragfireGun", 1);
		TakeInventory("FragfireCan", 40);
	}
	If(CheckInventory("ScriptGiveCrushbow") > 0)
	{
		TakeInventory("ScriptGiveCrushbow", 1);
		GiveInventory("Crushbow", 1);
		TakeInventory("BoltMag", 3);
	}
	If(CheckInventory("ScriptGivePotionLauncherToxic") > 0)
	{
		TakeInventory("ScriptGivePotionLauncherToxic", 1);
		GiveInventory("PotionLauncherToxic", 1);
		TakeInventory("PotionBoxToxic", 4);
	}
	If(CheckInventory("ScriptGivePotionLauncherAcid") > 0)
	{
		TakeInventory("ScriptGivePotionLauncherAcid", 1);
		GiveInventory("PotionLauncherAcid", 1);
		TakeInventory("PotionBoxAcid", 4);
	}
	If(CheckInventory("ScriptGiveCrylance") > 0)
	{
		TakeInventory("ScriptGiveCrylance", 1);
		GiveInventory("Crylance", 1);
		TakeInventory("DepletedShard", 15);
	}
	If(CheckInventory("ScriptGiveHellclaw") > 0)
	{
		TakeInventory("ScriptGiveHellclaw", 1);
		GiveInventory("Hellclaw", 1);
		TakeInventory("Hellenergy", 30);
	}
	If(CheckInventory("ScriptGivePaingun") > 0)
	{
		TakeInventory("ScriptGivePaingun", 1);
		GiveInventory("Paingun", 1);
		TakeInventory("AmmoBox", 100);
	}
	If(CheckInventory("ScriptGiveHatchetAndShield") > 0)
	{
		TakeInventory("ScriptGiveHatchetAndShield", 1);
		GiveInventory("HatchetAndShield", 1);
	}
	If(CheckInventory("ScriptGiveBearzerkAxe") > 0)
	{
		TakeInventory("ScriptGiveBearzerkAxe", 1);
		GiveInventory("BearzerkAxe", 1);
	}
	If(CheckInventory("ScriptGiveGreatAxe") > 0)
	{
		TakeInventory("ScriptGiveGreatAxe", 1);
		GiveInventory("GreatAxe", 1);
	}
	If(CheckInventory("ScriptGiveForcePike") > 0)
	{
		TakeInventory("ScriptGiveForcePike", 1);
		GiveInventory("ForcePike", 1);
	}
	If(CheckInventory("ScriptGiveFireHammer") > 0)
	{
		TakeInventory("ScriptGiveFireHammer", 1);
		GiveInventory("FireHammer", 1);
	}
	If(CheckInventory("ScriptGiveStormStaff") > 0)
	{
		TakeInventory("ScriptGiveStormStaff", 1);
		GiveInventory("StormStaff", 1);
	}

	//If(CheckInventory("ScriptGiveSentryGrabbed") > 0) //keep at the end
	//{
	//	TakeInventory("ScriptGiveSentryGrabbed", 1);
	//	GiveInventory("SentryGrabbed", 1);
	//	SetWeapon("SentryGrabbed");
	//}
	//Ammo
	While(CheckInventory("ScriptGiveThrowingAxe") > 0)
	{
		TakeInventory("ScriptGiveThrowingAxe", 1);
		GiveInventory("ThrowingAxe", 1);
	}
	While(CheckInventory("ScriptGiveSpikegunLoaded") > 0)
	{
		TakeInventory("ScriptGiveSpikegunLoaded", 1);
		GiveInventory("SpikegunLoaded", 1);
	}
	While(CheckInventory("ScriptGiveSpikeMag") > 0)
	{
		TakeInventory("ScriptGiveSpikeMag", 1);
		GiveInventory("SpikeMag", 1);
	}
	While(CheckInventory("ScriptGiveFragfiregunLoaded") > 0)
	{
		TakeInventory("ScriptGiveFragfireGunLoaded", 1);
		GiveInventory("FragfireGunLoaded", 1);
	}
	While(CheckInventory("ScriptGiveFragfireCan") > 0)
	{
		TakeInventory("ScriptGiveFragfireCan", 1);
		GiveInventory("FragfireCan", 1);
	}
	While(CheckInventory("ScriptGiveCrushbowLoaded") > 0)
	{
		TakeInventory("ScriptGiveCrushbowLoaded", 1);
		GiveInventory("CrushbowLoaded", 1);
	}
	While(CheckInventory("ScriptGiveBoltMag") > 0)
	{
		TakeInventory("ScriptGiveBoltMag", 1);
		GiveInventory("BoltMag", 1);
	}
	While(CheckInventory("ScriptGivePotionLauncherToxicLoaded") > 0)
	{
		TakeInventory("ScriptGivePotionlauncherToxicLoaded", 1);
		GiveInventory("PotionLauncherToxicLoaded", 1);
	}
	While(CheckInventory("ScriptGivePotionBoxToxic") > 0)
	{
		TakeInventory("ScriptGivePotionBoxToxic", 1);
		GiveInventory("PotionBoxToxic", 1);
	}
	While(CheckInventory("ScriptGivePotionLauncherAcidLoaded") > 0)
	{
		TakeInventory("ScriptGivePotionlauncherAcidLoaded", 1);
		GiveInventory("PotionLauncherAcidLoaded", 1);
	}
	While(CheckInventory("ScriptGivePotionBoxAcid") > 0)
	{
		TakeInventory("ScriptGivePotionBoxAcid", 1);
		GiveInventory("PotionBoxAcid", 1);
	}
	While(CheckInventory("ScriptGiveCrylanceLoaded") > 0)
	{
		TakeInventory("ScriptGiveCrylanceLoaded", 1);
		GiveInventory("CrylanceLoaded", 1);
	}
	While(CheckInventory("ScriptGiveDepletedShard") > 0)
	{
		TakeInventory("ScriptGiveDepletedShard", 1);
		GiveInventory("DepletedShard", 1);
	}
	While(CheckInventory("ScriptGiveHellEnergy") > 0)
	{
		TakeInventory("ScriptGiveHellEnergy", 1);
		GiveInventory("HellEnergy", 1);
	}
	While(CheckInventory("ScriptGiveAmmoBox") > 0)
	{
		TakeInventory("ScriptGiveAmmoBox", 1);
		GiveInventory("AmmoBox", 1);
	}
	While(CheckInventory("ScriptGiveBearzerkThrowingAxe") > 0)
	{
		TakeInventory("ScriptGiveBearzerkThrowingAxe", 1);
		GiveInventory("BearzerkThrowingAxe", 1);
	}
	While(CheckInventory("ScriptGiveThrowingFireHammer") > 0)
	{
		TakeInventory("ScriptGiveThrowingFireHammer", 1);
		GiveInventory("ThrowingFireHammer", 1);
	}
	While(CheckInventory("ScriptGiveManaBall") > 0)
	{
		TakeInventory("ScriptGiveManaBall", 1);
		GiveInventory("ManaBall", 1);
	}

}
Script "GiveConsumables" (void)
{
	While(CheckInventory("ScriptGiveInventoryVialOfHealing") > 0)
	{
		TakeInventory("ScriptGiveInventoryVialOfHealing", 1);
		GiveInventory("InventoryVialOfHealing", 1);
	}
	While(CheckInventory("ScriptGiveInventoryTimeShard") > 0)
	{
		TakeInventory("ScriptGiveInventoryTimeShard", 1);
		GiveInventory("InventoryTimeShard", 1);
	}
	While(CheckInventory("ScriptGiveInventoryFixerGoggles") > 0)
	{
		TakeInventory("ScriptGiveInventoryFixerGoggles", 1);
		GiveInventory("InventoryFixerGoggles", 1);
	}
	While(CheckInventory("ScriptGiveInventoryPotionOfStoneskin") > 0)
	{
		TakeInventory("ScriptGiveInventoryPotionOfStoneskin", 1);
		GiveInventory("InventoryPotionOfStoneskin", 1);
	}
	While(CheckInventory("ScriptGiveInventoryScrollAirWizardsEye") > 0)
	{
		TakeInventory("ScriptGiveInventoryScrollAirWizardsEye", 1);
		GiveInventory("InventoryScrollAirWizardsEye", 1);
	}
	While(CheckInventory("ScriptGiveInventoryElementalRing") > 0)
	{
		TakeInventory("ScriptGiveInventoryElementalRing", 1);
		GiveInventory("InventoryElementalRing", 1);
	}
	While(CheckInventory("ScriptGiveInventoryPotionOfMight") > 0)
	{
		TakeInventory("ScriptGiveInventoryPotionOfMight", 1);
		GiveInventory("InventoryPotionOfMight", 1);
	}
	While(CheckInventory("ScriptGiveInventoryPotionOfHaste") > 0)
	{
		TakeInventory("ScriptGiveInventoryPotionOfHaste", 1);
		GiveInventory("InventoryPotionOfHaste", 1);
	}
	While(CheckInventory("ScriptGiveInventorySentryGun") > 0)
	{
		TakeInventory("ScriptGiveInventorySentryGun", 1);
		GiveInventory("InventorySentryGun", 1);
	}
	While(CheckInventory("ScriptGiveInventoryAmuletOfShadows") > 0)
	{
		TakeInventory("ScriptGiveInventoryAmuletOfShadows", 1);
		GiveInventory("InventoryAmuletOfShadows", 1);
	}
	While(CheckInventory("ScriptGiveInventoryChokerOfTheBeast") > 0)
	{
		TakeInventory("ScriptGiveInventoryChokerOfTheBeast", 1);
		GiveInventory("InventoryChokerOfTheBeast", 1);
	}
	While(CheckInventory("ScriptGiveInventoryBracerOfTheRevenant") > 0)
	{
		TakeInventory("ScriptGiveInventoryBracerOfTheRevenant", 1);
		GiveInventory("InventoryBracerOfTheRevenant", 1);
	}
	While(CheckInventory("ScriptGiveInventoryScrollFireMagmaBall") > 0)
	{
	    TakeInventory("ScriptGiveInventoryScrollFireMagmaBall", 1);
		GiveInventory("InventoryScrollFireMagmaBall", 1);
	}
	While(CheckInventory("ScriptGiveInventoryScrollFireInferno") > 0)
	{
		TakeInventory("ScriptGiveInventoryScrollFireInferno", 1);
		GiveInventory("InventoryScrollFireInferno", 1);
	}
	While(CheckInventory("ScriptGiveInventoryScrollEarthNourish") > 0)
	{
		TakeInventory("ScriptGiveInventoryScrollEarthNourish", 1);
		GiveInventory("InventoryScrollEarthNourish", 1);
	}
	While(CheckInventory("ScriptGiveInventoryMysteryPotion") > 0)
	{
		TakeInventory("ScriptGiveInventoryMysteryPotion", 1);
		GiveInventory("InventoryMysteryPotion", 1);
	}
	While(CheckInventory("ScriptGiveInventoryDivingSuit") > 0)
	{
		TakeInventory("ScriptGiveInventoryDivingSuit", 1);
		GiveInventory("InventoryDivingSuit", 1);
	}
	While(CheckInventory("ScriptGiveInventoryChargedPsiCrown") > 0)
	{
		TakeInventory("ScriptGiveInventoryChargedPsiCrown", 1);
		GiveInventory("InventoryChargedPsiCrown", 1);
	}
	While(CheckInventory("ScriptGiveInventoryBootsOfJourney") > 0)
	{
		TakeInventory("ScriptGiveInventoryBootsOfJourney", 1);
		GiveInventory("InventoryBootsOfJourney", 1);
	}
	While(CheckInventory("ScriptGiveInventoryRingOfTheRedMonk") > 0)
	{
		TakeInventory("ScriptGiveInventoryRingOfTheRedMonk", 1);
		GiveInventory("InventoryRingOfTheRedMonk", 1);
	}
}
Script "GivePowerups" (void)
{
    If(CheckInventory("ScriptGivePowerRingOfTheRedMonk") > 0)
	{
		TakeInventory("ScriptGivePowerRingOfTheRedMonk", 1);
		GiveInventory("PowerRingOfTheRedMonk", 1);
	}
	If(CheckInventory("ScriptGivePowerBootsOfJourney") > 0)
	{
		TakeInventory("ScriptGivePowerBootsOfJourney", 1);
		GiveInventory("PowerBootsOfJourney", 1);
	}
}