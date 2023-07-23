#include "zcommon.acs"

//TESTING
Script 430 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Welcome to Hedon's beta testing hub!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"Select a level by jumping in one of the pits and using the front wall."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 35.0);
	Hudmessage(s:"You will get the standard gear for the level once you jump, but you can"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
	Hudmessage(s:"grab more items from the room here, though it's not advised for 1st runs."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 35.0);
    Hudmessage(s:"Please give me all your feedback and report bugs through ModDB comments"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 35.0);
	Hudmessage(s:"or email at hedongame@yahoo.com . Thanks, and enjoy yourself! - Zan"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 35.0);
}


Script 402 (void)
{
	ChangeLevel("MAP02", 0, 0, -1);
}

Script 403 (void)
{
	ChangeLevel("MAP03", 0, 0, -1);
}

Script 404 (void)
{
	ChangeLevel("MAP04", 0, 0, -1);
}

Script 405 (void)
{
	ChangeLevel("MAP05", 0, 0, -1);
}

Script 406 (void)
{
	ChangeLevel("MAP06", 0, 0, -1);
}

Script 407 (void)
{
	ChangeLevel("MAP07", 0, 0, -1);
}

Script 408 (void)
{
	ChangeLevel("MAP08", 0, 0, -1);
}

Script 409 (void)
{
	ChangeLevel("MAP09", 0, 0, -1);
}

Script 410 (void)
{
	ChangeLevel("MAP10", 0, 0, -1);
}

Script 431 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map01 - Cold Rock ->Play Normally"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 432 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map02 - Plaza (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 433 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map03 - Barracks (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 434 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map04 - Technical Space (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 435 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map05 - Grove (Moderate Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 436 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map06 - Errant Signal (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 437 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map07 - Parapet (Moderate Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 438 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map08 - Pale Wind (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 439 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map09 - Research and Decay (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 440 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map10 - Crystal Heart (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
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

//LEVEL START
Script 1337 (void) //old start spot
{
	Teleport_Nofog(69, 0, 0, 0);
}

script 9 (void) //Cave Start
{
  FadeTo(0, 0, 0, 1.0, 3.0);
  Delay(105);
  SetActorProperty(0, APROP_Speed, 0.0);
  SetActorProperty(0, APROP_Friction, 0.1);
  SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
  SetWeapon("Fists");
  Delay(35);
  //TakeInventory("IsPlaying", 1);
  SetMugshotState("Sleep");
  Teleport_Nofog(69, 0, 0, 0);
  Delay(105);

    TakeInventory("HoldingSentry", 1);
	TakeInventory("HoldingAxe", 1);
	TakeInventory("HoldingFragfireGun", 1);
	TakeInventory("HoldingHellclaw", 1);
	TakeInventory("Axe", 100);
	TakeInventory("ThrowingAxe", 9999);
	TakeInventory("BearzerkAxe", 100);
	TakeInventory("BearzerkThrowingAxe", 9999);
	TakeInventory("FireHammer", 100);
	TakeInventory("ThrowingFireHammer", 9999);
	TakeInventory("HatchetAndShield", 1);
	TakeInventory("ForcePike", 1);
	TakeInventory("GreatAxe", 1);
	TakeInventory("SpikeGun", 1);
	TakeInventory("SpikeGunLoaded", 100);
	TakeInventory("FragfireGun", 1);
	TakeInventory("FragfireGunLoaded", 100);
	TakeInventory("Crushbow", 1);
	TakeInventory("CrushbowLoaded", 100);
	TakeInventory("PotionLauncherAcid", 1);
	TakeInventory("PotionLauncherAcidLoaded", 100);
	TakeInventory("PotionLauncherToxic", 1);
	TakeInventory("PotionLauncherToxicLoaded", 100);
	TakeInventory("Crylance", 1);
	TakeInventory("CrylanceLoaded", 100);
	TakeInventory("Hellclaw", 1);
	TakeInventory("SpikeMag", 9999);
	TakeInventory("FragfireCan", 9999);
	TakeInventory("BoltMag", 9999);
	TakeInventory("PotionBoxAcid", 9999);
	TakeInventory("DepletedPowerShard", 9999);
	TakeInventory("HellEnergy", 9999);
	TakeInventory("InventoryPotionOfStoneskin", 100);
	TakeInventory("InventoryElementalRing", 100);
	TakeInventory("InventoryPotionOfMight", 100);
	TakeInventory("InventoryPotionOfHaste", 100);
	TakeInventory("InventorySentryGun", 100);
	TakeInventory("InventoryAmuletOfShadows", 100);

	TakeInventory("InventoryChokerOfTheBeast", 9999);
	TakeInventory("PowerChokerOfTheBeastA", 100);
	TakeInventory("PowerChokerOfTheBeastB", 100);

	TakeInventory("BloodyAxeKey", 100);

	TakeInventory("Armor", 999);

	SetActorProperty(0,APROP_HEALTH, 20);


  Hudmessage(s:"???:   ...wake up..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 0.4);
  PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
  Delay(175);
  Hudmessage(s:"???:   ...wake. Up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 2.0);
  PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
  Delay(245);

  SetActorAngle(0, 0.82);
  SetActorPitch(0, 0.0);
  SetActorProperty(0, APROP_SPEED, 1.0);
  SetActorProperty(0, APROP_Friction, 1.0);
  SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
  PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
  //GiveInventory("IsPlaying", 1);
  SetMugshotState("Normal");
  GiveInventory("HoldingFists", 1);
  Autosave();
  Delay(5);
  FadeTo(0, 0, 0, 0.0, 10.0);
  Delay(3*35);
  SetMusic("HTrack01", 0, 0);
  Delay(7*35);
  CancelFade();

}

Script 32 (void) //ENTER - triggered via the gamma calibration script
{
	//SetActorProperty(0,APROP_HEALTH, 72);
	//FadeTo(0, 0, 0, 1.0, 0.0);
	ACS_Execute(55, 0, 0, 0, 0);

	ACS_NamedExecuteWithResult("FriendlySpawner");
	SetActorFlag(75, "NOTONAUTOMAP", 1);
    SetActorFlag(75, "COUNTITEM", 0);
	SetActorFlag(82, "NOTONAUTOMAP", 1);
	SetActorFlag(99, "NOTONAUTOMAP", 1);
	SetActorFlag(25, "NOTONAUTOMAP", 1);

	SetActorFlag(175, "NOGRAVITY", 1);
	SetActorFlag(175, "NOLIFTDROP", 1);
	SetActorFlag(175, "RELATIVETOFLOOR", 0);
	SetActorFlag(175, "MOVEWITHSECTOR", 0);

	SetActorFlag(188, "COUNTKILL", 0);
	SetActorFlag(188, "FLOATBOB", 0);
	SetActorFlag(188, "NOBLOCKMAP", 0);

	SetActorFlag(234, "NOBLOCKMAP", 0);

	SetActorFlag(213, "BRIGHT", 1);

	Ceiling_Waggle(125, 6, 64, 0, 0);

	Delay(4);
	Floor_LowerByValue(176, 999, 1108);

}

Script 55 (void)
{
	Delay(16);
	If(CheckInventory("IsPlaying") == 0)
	{
	  GiveInventory("IsPlaying", 1);
	}
	PlaySound(0, "Character/ZanSleep", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 4.0);
	Delay(35);
	PlaySound(141, "Hellblaze/Death", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(35);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

    Delay(50);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Sight", CHAN_AUTO, 1.0, false, 0.2);

	ACS_Execute(53, 0, 0, 0, 0);
}

Script 53 (void) //Hellblaze Door Pound
{
	Delay(50);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Active", CHAN_AUTO, 1.0, false, 0.2);

	Delay(70);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(115);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(105);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Pain", CHAN_AUTO, 1.0, false, 0.2);

	Delay(105);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(100);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(95);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Active", CHAN_AUTO, 1.0, false, 0.2);

	Delay(100);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(105);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Sight", CHAN_AUTO, 1.0, false, 0.2);

	Delay(95);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(90);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Pain", CHAN_AUTO, 1.0, false, 0.2);

	Delay(85);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(95);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(80);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Active", CHAN_AUTO, 1.0, false, 0.2);

	Delay(75);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(80);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(70);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Sight", CHAN_AUTO, 1.0, false, 0.2);

	Delay(60);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Attack", CHAN_AUTO, 1.0, false, 0.2);

	Delay(55);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 0.5, false, 0.4);
	SpawnSpotForced("DustPuff", 135, 0, 0);
	Radius_Quake(2, 16, 0, 15, 134);

	Delay(16);
	PlaySound(141, "Hellblaze/Pain", CHAN_AUTO, 1.0, false, 0.2);

	SetLineSpecial(142, 0, 0, 0, 0, 0, 0);
	ACS_Execute(54, 0, 0, 0, 0);PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SpawnSpotForced("ExplosionMedium", 136, 0, 0);
	Radius_Quake(3, 8, 2, 16, 136);
	Delay(8);
	SpawnSpotForced("ExplosionMedium", 137, 0, 0);
	Radius_Quake(4, 8, 2, 16, 137);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 138, 0, 0);
	Radius_Quake(6, 8, 2, 16, 138);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 139, 0, 0);
	Radius_Quake(8, 8, 1, 16, 139);

	Thing_Remove(133);
	SpawnSpotForced("DustCloud", 135, 0, 0);
	Ceiling_RaiseByValue(127, 999, 120);
	ChangeFloor(128, "Gate8_BL");
	Floor_RaiseByValue(128, 999, 6);
	ChangeFloor(129, "Gate8_BL");
	Floor_RaiseByValue(129, 999, 3);
	ChangeFloor(130, "Gate8_BL");
	Floor_RaiseByValue(130, 999, 4);
	ChangeFloor(131, "Ash2");
	Floor_RaiseByValue(131, 999, 1);
	ChangeFloor(132, "Gate8_BL");
	Floor_RaiseByValue(132, 999, 2);

	SpawnSpotForced("ExplosionLarge", 140, 0, 0);
	Radius_Quake(8, 16, 1, 16, 140);
	Delay(16);

	ThrustThing(128, 15, 0, 141);
	ThrustThingZ(141, 11, 0, 0);
	Delay(8);
	Thing_Activate(141);
	Thing_Hate(141, 0, 0);
	PlaySound(141, "Hellblaze/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
}


Script 54 (void) //Door Explode
{
	If(CheckInventory("Axe") > 0 || CheckInventory("HatchetAndShield") > 0)
	{
	ACS_Terminate(55, 0);
	CancelFade();
	ACS_Terminate(53, 0);
	SetLineSpecial(142, 0, 0, 0, 0, 0, 0);
	PlaySound(134, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, 0.2);
	PlaySound(134, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SpawnSpotForced("ExplosionMedium", 136, 0, 0);
	Radius_Quake(3, 8, 2, 16, 136);
	Delay(8);
	SpawnSpotForced("ExplosionMedium", 137, 0, 0);
	Radius_Quake(4, 8, 2, 16, 137);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 138, 0, 0);
	Radius_Quake(6, 8, 2, 16, 138);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 139, 0, 0);
	Radius_Quake(8, 8, 1, 16, 139);

	Thing_Remove(133);
	SpawnSpotForced("DustCloud", 135, 0, 0);
	Ceiling_RaiseByValue(127, 999, 120);
	ChangeFloor(128, "Gate8_BL");
	Floor_RaiseByValue(128, 999, 6);
	ChangeFloor(129, "Gate8_BL");
	Floor_RaiseByValue(129, 999, 3);
	ChangeFloor(130, "Gate8_BL");
	Floor_RaiseByValue(130, 999, 4);
	ChangeFloor(131, "Ash2");
	Floor_RaiseByValue(131, 999, 1);
	ChangeFloor(132, "Gate8_BL");
	Floor_RaiseByValue(132, 999, 2);

	SpawnSpotForced("ExplosionLarge", 140, 0, 0);
	Radius_Quake(8, 16, 1, 16, 140);
	Delay(16);

	ThrustThing(128, 20, 0, 141);
	ThrustThingZ(141, 12, 0, 0);
	Delay(8);
	Thing_Activate(141);
	Thing_Hate(141, 0, 0);
	PlaySound(141, "Hellblaze/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
}

//F1 TUTORIAL PROMPT CLEAR
Script 86 (void)
{
	SetLineSpecial(232, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:" "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 0.1);
	Hudmessage(s:" "; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 0.1);
}

//LAVA DAMAGE
Script 56 ENTER
{
	SectorDamage(144, 8, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(24);
	Restart;
}

//AXE KEY DOOR
Script 57 (void)
{
	If(CheckInventory("BloodyAxeKey") > 0)
	  {
	  Door_Open(121, 16, 0);
	  Delay(9*35);
	  Door_Close(121, 16, 0);
	  TagWait(121);
	  }
	  else
        {
	    Print(s:"This door requires an Axe key to open.");
	    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
        }
}

//TORTURE CHAMBER PLATFORM RISE
Script 60 (void)
{
	Delay(12);
	FloorAndCeiling_RaiseByValue(169, 16, 236);
	FloorAndCeiling_RaiseByValue(174, 14, 240);
	ThrustThingZ(170, 4, 0, 0);
	Delay(35);
	ThrustThingZ(171, 10, 0, 0);
	Delay(24);
	ThrustThingZ(172, 8, 0, 0);
	Delay(105);
	Thing_Remove(170);
	Thing_Remove(171);
	Thing_Remove(172);
}

Script 61 (void) //Floor Hatch
{
	If(GetSectorFloorZ(182, 0, 0) > -218.0)
	{
		TagWait(182);
		FloorAndCeiling_LowerByValue(182, 16, 96);
		TagWait(182);
	}
}

//SECRET SHELF
Script 93 (void)
{
	If (GetSectorFloorZ(165, 0, 0) == -248.0)
	  {
	      Print(s:"The shelf won't budge.");
		  PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
		  Delay(70);
	  }
}

//CATHEDRAL TELEPORTATION
Script 62 (void)
{
	Teleport_Nofog(187, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 187, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);

	If(GetSectorFloorZ(182, 0, 0) < -122.0)
	{
		TagWait(182);
		FloorAndCeiling_RaiseByValue(182, 16, 96);
		TagWait(182);
	}

}

//CATHEDRAL GATE BARS
Script 58 (void)
{
	Ceiling_RaiseByValue(145, 24, 336);
    Ceiling_RaiseByValue(146, 16, 224);
}
//CATHEDRAL ALTAR
Script 59 (void)
{
	Thing_Remove(149);
	Floor_LowerByValue(148, 2, 10);
	TagWait(148);
	Delay(8);
	Thing_Activate(150);
	PlaySound(151, "Weapons/Flamedeath", CHAN_AUTO);
	PlaySound(153, "Weapons/Flamedeath", CHAN_AUTO);
	//Thing_Remove(163);
	SpawnSpotForced("LightDemonBrazzier", 151, 0, 0);
	Thing_Move(152, 151, 1);
	SpawnSpotForced("LightDemonBrazzier", 153, 0, 0);
	Thing_Move(154, 153, 1);

	SpawnSpotForced("LightDemonHangingBrazzier", 164, 462, 0);
	SetActorProperty(462, APROP_ScaleX, 0.96);
	SetActorProperty(462, APROP_ScaleY, 0.96);
	Thing_Move(156, 155, 1);
	Thing_Move(158, 157, 1);
	Thing_Move(160, 159, 1);
	Thing_Move(162, 161, 1);
	PlaySound(155, "Weapons/FlameDeath", CHAN_AUTO);
	PlaySound(157, "Weapons/FlameDeath", CHAN_AUTO);
	PlaySound(159, "Weapons/FlameDeath", CHAN_AUTO);
	PlaySound(161, "Weapons/FlameDeath", CHAN_AUTO);

	Delay(50);
    Floor_lowerByValue(147, 16, 76);
}

//BATTLEFIELD
//Large Cathedral Doors
Script 85 (void)
{
  Print(s:"The massive doors are jammed shut.");
  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  Delay(50);
}
//Cannon
Script 82 (void)
{
	If (CheckInventory("InventoryPowerCore") > 0 )
	{
	  SetLineSpecial(213, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(243, 0, 0, 0, 0, 0, 0);
	  SetLineTexture(213, SIDE_FRONT, TEXTURE_BOTTOM, "Sw01_UP");
	  TakeInventory("InventoryPowerCore", 1);
	  PlaySound(214, "Metal/Bounce1", CHAN_AUTO);
	  Delay(8);
	  PlaySound(214, "Weapons/CrylanceReady", CHAN_AUTO);
	  SetLineSpecial(213, ACS_Execute, 83, 0, 0, 0, 0);
	  SetLineSpecial(243, ACS_Execute, 83, 0, 0, 0, 0);
	  Thing_Activate(225);
	}
	else
	{
	    Print(s:"The gun socket is missing a power source.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}
Script 83 (void)
{
	SetLineTexture(213, SIDE_FRONT, TEXTURE_BOTTOM, "Sw01_DN");
	PlaySound(214, "Switches/Switch1", CHAN_AUTO);
	SpawnSpotForced("HedonTeleportFogDemon", 196, 0, 0);
    PlaySound(196, "misc/teleport", CHAN_AUTO);
    Delay(8);
	SpawnSpot("PitLord", 196, 463, 192);
	//SetActorProperty(463, APROP_Speed, 0.0);
	Thing_Deactivate(463);
	//If(GetActorProperty(463, APROP_Health) > 0)
	//{
	PlaySound(196, "PitLord/Sight", 1.0, 1.0, false, ATTN_NONE);
	//}

    Radius_Quake(1, 65, 0, 3, 214);
	Delay(35);
	//If(GetActorProperty(463, APROP_Health) > 0)
	//{
	//SetActorState(463, "Melee", 0);
	//PlaySound(196, "PitLord/Rage", 1.0, 1.0, false, ATTN_NONE);
	//}

	PlaySound(216, "Weapons/CrylanceAltFire", CHAN_AUTO);
	Thing_Move(219, 216, 1);
	SpawnSpotForced("SparkDie", 216, 0, 0);
	Delay(4);
	Thing_Move(220, 217, 1);
	SpawnSpotForced("SparkDie", 217, 0, 0);
	SpawnSpotForced("SparkDie", 217, 0, 0);
	Delay(4);
	Thing_Move(221, 218, 1);
	SpawnSpotForced("SparkDie", 218, 0, 0);
	SpawnSpotForced("SparkDie", 218, 0, 0);
	SpawnSpotForced("SparkDie", 218, 0, 0);
	Delay(6);
	SpawnSpotForced("SteampuffLarge", 216, 0, 0);
    SpawnSpotForced("SteampuffMedium", 217, 0, 0);
    SpawnSpotForced("SteampuffSmall", 218, 0, 0);
	SpawnProjectile(215, "SpecialCryBallCannon", 64, 250, 30, 1, 0);
	Delay(2);
	Thing_Remove(219);
	Delay(2);
	Thing_Remove(220);
	Delay(2);
	Thing_Remove(221);

    Thing_Activate(463);
    If(GetActorProperty(463, APROP_Health) > 0)
	{
	SetActorState(463, "Melee", 0);
	PlaySound(196, "PitLord/Rage", 1.0, 1.0, false, ATTN_NONE);
	}

	Delay(35);
	SpawnSpot("ExplosionLarge", 222, 0, 0);
	Delay(8);
	SetLineSpecial(212, 0, 0, 0, 0, 0, 0);
	Floor_lowerByValue(226, 9999, 270);
	SpawnSpotForced("DustCloud", 227, 0, 0);
	SpawnSpot("ExplosionHuge", 223, 0, 0);
	Delay(4);
	SpawnSpot("ExplosionLarge", 224, 0, 0);

	Thing_Remove(228);
	Thing_Activate(229);

    Delay(70);
	SetLineSpecial(213, ACS_Execute, 84);
	SetLineSpecial(243, ACS_Execute, 84);
}

Script 84 (void)
{
  Print(s:"The gun is too overheated to be fired again.");
  PlaySound(214, "Interaction/Smother", CHAN_AUTO);
  SpawnSpotForced("SteampuffLarge", 216, 0, 0);
  SpawnSpotForced("SteampuffMedium", 217, 0, 0);
  SpawnSpotForced("SteampuffSmall", 218, 0, 0);
  Delay(70);

}

//MONSTER AMBUSHES
Script 64 (void)
{
	SetLineSpecial(198, 0, 0, 0, 0, 0, 0);
	Delay(16);

    SpawnSpotForced("HedonTeleportFogDemon", 197, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 196, 0, 0);
    PlaySound(197, "misc/teleport", CHAN_AUTO);
	PlaySound(196, "misc/teleport", CHAN_AUTO);
    Delay(8);
    SpawnSpot("Hellblaze", 197, 0, 192);
	SpawnSpot("Cerberus", 196, 0, 192);
}

Script 65 (void)
{
	SetLineSpecial(204, 0, 0, 0, 0, 0, 0);
	Delay(4);

    SpawnSpotForced("HedonTeleportFogDemon", 205, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 206, 0, 0);
    PlaySound(205, "misc/teleport", CHAN_AUTO);
	PlaySound(206, "misc/teleport", CHAN_AUTO);
    Delay(8);
    SpawnSpot("Hellblaze", 205, 0, 128);
	SpawnSpotForced("Hellblaze", 206, 0, 230);

    If(GetActorProperty(199, APROP_Health) > 0)
	{
	//SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	SetActorAngle(199, 0.5);
	Hudmessage(s:"Bear Warrior:    Look out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 3.0, 0.2, 0.5);
	PlaySound(199, "BearWarrior/Rage2", CHAN_AUTO, 1.0, false, 0.5);
	}
	else
	If(GetActorProperty(200, APROP_Health) > 0)
	  {
	  //SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	  SetActorAngle(199, 0.5);
	  Hudmessage(s:"Reaver:    Look out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	  PlaySound(200, "Reaver/Hm", CHAN_AUTO, 1.0, false, 0.4);
	  }

}

Script 77 (void)
{
	SetLineSpecial(207, 0, 0, 0, 0, 0, 0);
	Delay(16);

    SpawnSpotForced("HedonTeleportFogDemon", 208, 0, 0);
    PlaySound(208, "misc/teleport", CHAN_AUTO);
    Delay(8);
	SpawnSpot("Cerberus", 208, 0, 64);

	SpawnSpotForced("HedonTeleportFogDemon", 230, 0, 0);
    PlaySound(230, "misc/teleport", CHAN_AUTO);
    Delay(8);
	SpawnSpot("Hellblaze", 230, 0, 128);
}

Script 78 (void)
{
	SpawnSpot("ForgeElemental", 209, 0, 32);

	Thing_Remove(239);

	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);

	If(GetActorProperty(199, APROP_Health) > 0)
	{
	Thing_Remove(199);
	SpawnSpotForced("VoidBearWarriorShooting", 210, 0, 128);
	SetLineSpecial(202, ACS_Execute, 79, 0, 0, 0, 0);
	}

	If(GetActorProperty(200, APROP_Health) > 0)
	{
	Thing_Remove(200);
	SpawnSpotForced("VoidReaverShooting", 211, 0, 128);
	SetLineSpecial(203, ACS_Execute, 80, 0, 0, 0, 0);
	}
}


//FRIENDLIES DIALOGUE
//Hail
Script 66 (void)
{
	SetLineSpecial(201, 0, 0, 0, 0, 0, 0);

	If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Orc:    Zan! Over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 1.5);
	PlaySound(199, "BearWarrior/Huh", CHAN_AUTO, 1.0, false, 0.4);
	Delay(1*35);
	SetLineSpecial(202, ACS_Execute, 67, 0, 0, 0, 0);
	SetLineSpecial(203, ACS_Execute, 72, 0, 0, 0, 0);
	PlaySound(199, "BearWarrior/Rage1", CHAN_AUTO, 1.0, false, 0.4);
	}
	else
	  If(GetActorProperty(200, APROP_Health) > 0)
	  {
	  SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Goblin:    Over here, sergeant!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 1.5);
	  PlaySound(200, "Reaver/Huh", CHAN_AUTO, 1.0, false, 0.4);
	  Delay(1*35);
	  SetLineSpecial(202, ACS_Execute, 67, 0, 0, 0, 0);
	  SetLineSpecial(203, ACS_Execute, 72, 0, 0, 0, 0);
	  }
}
//Bear Warrior
Script 67 (void)
{
If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    Am I glad to see you, sarge! The demons got us trapped in here, we need help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 0.5);
	PlaySound(199, "BearWarrior/Ha", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(202, ACS_Execute, 68, 0, 0, 0, 0);
	}
}
Script 68 (void)
{
If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    The horned bastards have sealed off every exit! There's no way we can get out of here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(202, ACS_Execute, 69, 0, 0, 0, 0);
	}
}
Script 69 (void)
{
If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    These bars are way too thick, I can't break them. Help us figure something out, sarge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 0.5);
	PlaySound(199, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(202, ACS_Execute, 70, 0, 0, 0, 0);
	}
}
Script 70 (void)
{
If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	SetActorAngle(199, 0.5);
	Hudmessage(s:"Bear Warrior:    All these ambushes... our squad got separated and torn apart one by one."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(202, ACS_Execute, 71, 0, 0, 0, 0);
	}
}
Script 71 (void)
{
If(GetActorProperty(199, APROP_Health) > 0)
	{
	SetLineSpecial(202, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    We're running out of ammo and time. Soon, they'll be all over us! Do something!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 5.0, 0.2, 0.5);
	PlaySound(199, "BearWarrior/Huh", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(202, ACS_Execute, 68, 0, 0, 0, 0);
	}
}
//Reaver
Script 72 (void)
{
	If(GetActorProperty(200, APROP_Health) > 0)
	{
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    Hey, Zan, good to see you in one piece. We're cornered in here, you have to help us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(200, "Reaver/Huh", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(203, ACS_Execute, 73, 0, 0, 0, 0);
	}
}
Script 73 (void)
{
	If(GetActorProperty(200, APROP_Health) > 0)
	{
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    The demons have blocked all the access points to the cathedral, separating us from our squad."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(203, ACS_Execute, 74, 0, 0, 0, 0);
	}
}
Script 74 (void)
{
	If(GetActorProperty(200, APROP_Health) > 0)
	{
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    I tried squeezing through these bars but no dice. We don't have much time until they come..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(200, "Reaver/Hm", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(203, ACS_Execute, 75, 0, 0, 0, 0);
	}
}
Script 75 (void)
{
	If(GetActorProperty(200, APROP_Health) > 0)
	{
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    I can already hear the Cerberi howling... We're just sitting ducks in here! Darn it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(203, ACS_Execute, 76, 0, 0, 0, 0);
	}
}
Script 76 (void)
{
	If(GetActorProperty(200, APROP_Health) > 0)
	{
	SetLineSpecial(203, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    We've lost so many sisters... I hope our main force is having better fortune. Screw this mess..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(200, "Reaver/Hmm", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(203, ACS_Execute, 73, 0, 0, 0, 0);
	}
}
//Stare
Script 79 (void)
{
	Hudmessage(s:"Ghastly Bear Warrior:    *Stares blankly*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 3.0, 0.2, 0.5);
	Delay(3*35);
}
Script 80 (void)
{
	Hudmessage(s:"Ghastly Reaver:    *Stares blankly*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
    Delay(3*35);
}

//LEVEL END
Script 39 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	TakeInventory("InventoryMoondropFlower", 1);

	Exit_Normal(0);
}

//SMALL QUAKES
Script 33 (void)
{
	Delay (1050);
	Radius_Quake(3, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(2, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(1, 35, 0, 1, 0);
	Delay(35);
	Delay (2100);
	Radius_Quake(2, 105, 0, 1, 0);
	Delay(35*3);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(35*3);
	Delay (3150);
	Radius_Quake(1, 105, 0, 1, 0);
}

//WATER WAGGLE
Script 35 ENTER
{
	Ceiling_Waggle(70, 8, 24, 0, 0);
}

//LIFT
script 2 (void)
{
FloorAndCeiling_LowerByValue(74, 16, 242);
FloorAndCeiling_LowerByValue(8, 16, 242);
Tagwait(74);
Tagwait(8);
delay(60);
FloorAndCeiling_RaiseByValue(8, 16, 242);
FloorAndCeiling_RaiseByValue(74, 16, 242);
Tagwait(8);
Tagwait(74);
}

//LIFT CRUSHER
Script 38 ENTER
{
	SectorDamage(74, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//FLOOD GATE
script 30 (void)
{
SetLineSpecial(115, 0, 0, 0, 0, 0, 0);
Ceiling_RaiseByValue(18,3,77);
Delay(140);
}
//Flood Gate Candlefly
int spec87 = 0;
Script 87 (void)
{
	If(GetSectorCeilingZ(18, 0, 0) > 72.0)
	{
	  spec87 += 1;
      ThrustThing(145, 8, 0, 242);
	  Delay(8);
	  Thing_Activate(242);
	  Terminate;
	}
	Delay(8);
	Restart;
}

//SHUTTER
Script 45 (void)
{
	Ceiling_RaiseByValue(17, 8, 64);
	Ceiling_RaiseByValue(108, 8, 64);

	//Ceiling_RaiseByValue(110, 8, 64);
	//Floor_RaiseByValue(110, 8, 64);
	//TagWait(17);
	TagWait(108);
	TagWait(110);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(40*35);
	}
	else
	If(GameSkill() == SKILL_EASY)
	{
	  Delay(35*35);
	}
	else
	If(GameSkill() == SKILL_NORMAL)
	{
	  Delay(30*35);
	}
	else
	If(GameSkill() > SKILL_NORMAL)
	{
	  Delay(25*35);
	}

	//Ceiling_LowerByValue(17, 4, 64);
	//Ceiling_LowerByValue(108, 4, 64);
	Ceiling_LowerAndCrush(17, 8, 1000, 0);
	Ceiling_LowerAndCrush(108, 8, 1000, 0);
	//Ceiling_LowerByValue(110, 8, 1000, 2);
	//Floor_LowerByValue(110, 8, 64);
	//TagWait(17);
	TagWait(108);
	//TagWait(110);
	Ceiling_LowerByValue(17, 8, 8);
	Ceiling_LowerByValue(108, 8, 8);
	//TagWait(17);
	TagWait(108);
}

//SHUTTER BREAK
Script 46 (void)
{
 If(IsTIDused(241) == 0)
 {
	SetLineSpecial(240, 0, 0, 0, 0, 0, 0);
	//TagWait(17);
	//TagWait(108);
	ACS_Terminate(45, 0);
	Ceiling_LowerAndCrush(17, 9999, 1000, 0);
	Ceiling_LowerAndCrush(108, 9999, 1000, 0);
	//Ceiling_LowerByValue(110, 8, 1000, 2);
	//Floor_LowerByValue(110, 8, 64);
	TagWait(17);
	TagWait(108);
	Ceiling_LowerByValue(17, 9999, 8);
	Ceiling_LowerByValue(108, 9999, 8);
	TagWait(17);
	TagWait(108);
	Ceiling_RaiseByValue(110, 9999, 128);
	Floor_RaiseByValue(110, 9999, 128);
	Ceiling_RaiseByValue(108, 9999, 32);
	SpawnSpot("Crawler", 111, 0, 128);
	SetLineSpecial(114, ACS_Execute, 49, 0, 0, 0, 0);
	Radius_Quake(2, 105, 0, 1, 0);
  }
}

Script 49 (void)
{
	TagWait(17);
	TagWait(108);
	TagWait(110);
	SetLineSpecial(114, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(17, 4, 36);
	Ceiling_RaiseByValue(108, 4, 36);
	Ceiling_RaiseByValue(110, 4, 36);
	Floor_RaiseByValue(110, 4, 36);
	TagWait(17);
	TagWait(108);
	TagWait(110);
	SpawnSpotForced("SparkGenerator", 113, 0, 0);
}

Script 51 (void)
{
	SetLineSpecial(116, 0, 0, 0, 0, 0, 0);
}

//SWINGING DOORS
Script 88 (void)
{
  Print(s:"This door is locked from the other side.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
Script 180 (void)
{
  If (GetActorZ(0) < 280.0)
  {
	SetLineSpecial(247, ACS_Execute, 180, 0, 0, 0, 0);
    Polyobj_DoorSwing(180,-16,64,105);
  }
}

Script 136 (void)
{
If (GetActorZ(0) < 286.0)
{
Polyobj_DoorSwing(136,16,64,105);
}
}

Script 134 (void)
{
If (GetActorZ(0) < 286.0)
Polyobj_DoorSwing(134,16,64,105);
}

Script 1001 (void)
{
If (GetActorZ(0) < 468.0)
Polyobj_DoorSwing(1,16,64,105);
}

Script 269 (void)
{
If (GetActorZ(0) < 280.0)
Polyobj_DoorSwing(269,16,64,105);
}

Script 271 (void)
{
If (GetActorZ(0) < 280.0)
{
  Polyobj_DoorSwing(271,16,64,105);
}
If(IsTIDUsed(72))
{
	Thing_Remove(72);
	SpawnSpot("ShadowAbhaothStanding", 71, 660, 0);
	Delay(60);
	Thing_Destroy(660);
}
}

Script 272 (void)
{
If (GetActorZ(0) < 474.0)
  Polyobj_DoorSwing(272,16,64,105);
}

Script 315 (void)
{
If ((GetActorZ(0) < 288.0) && CheckInventory("IronKey") > 0)
Polyobj_DoorSwing(315,16,64,105);
else
{
Print(s:"This door requires an Iron key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 359 (void)
{
If ((GetActorZ(0) < 280.0) && CheckInventory("StoneKey") > 0)
Polyobj_DoorSwing(359,-16,64,105);
else
{
Print(s:"This door requires a Stone key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 539 (void)
{
If (GetActorZ(0) < 820.0)
{
Polyobj_DoorSwing(539,16,64,105);
Polyobj_DoorSwing(719,-16,64,105);
}
}

Script 540 (void)
{
If (GetActorZ(0) < 820.0)
{
Polyobj_DoorSwing(540,-16,64,105);
Polyobj_DoorSwing(720,16,64,105);
}
}

Script 541 (void)
{
If (GetActorZ(0) < 820.0)
{
Polyobj_DoorSwing(541,-16,64,105);
Polyobj_DoorSwing(721,16,64,105);
}
}

//POWER CORE FAILSAFE REMOVE
Script 36 (void)
{
	TakeInventory("InventoryPowerCore", 2);
}

//SKIP TRAINING "BUTTON"
Script 37 (void)
{
	Line_SetBlocking(73, 0, 32);
	PlaySound(0, "Ambient/CaveWind", CHAN_AUTO);
}


//POWER CORE SWITCHES

/*Script 8 (void)
{
	If (CheckInventory("InventoryPowerCore") > 0 && GetSectorCeilingZ(15, 0, 0) < 186.0)
	{
	  SetLineTexture(14, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_0");
	  TakeInventory("InventoryPowerCore", 1);
	  PlaySound(0, "Switches/Switch1", CHAN_AUTO);
	  Door_Open(15, 24, 0);
	  //Ceiling_RaiseByValue(15, 24, 80);
	}
	else
	If (GetSectorCeilingZ(15, 0, 0) < 186.0)
	{
	    Print(s:"The switch is out of power.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}*/

Script 8 (void)
{
	If (CheckInventory("InventoryPowerCore") > 0 )
	{
	  SetLineSpecial(14, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(100, 0, 0, 0, 0, 0, 0);
	  SetLineTexture(14, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_UP");
	  TakeInventory("InventoryPowerCore", 1);
	  PlaySound(104, "Metal/Bounce1", CHAN_AUTO);
	  Delay(8);
	  PlaySound(104, "Weapons/CrylanceReady", CHAN_AUTO);
	  SetLineSpecial(14, ACS_Execute, 2, 0, 0, 0, 0);
	}
	else
	{
	    Print(s:"The switch is out of power.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}

Script 10 (void)
{
	If (CheckInventory("InventoryPowerCore") > 0 && GetSectorFloorZ(30, 0, 0) > 327.0)
	{
	  SetLineTexture(31, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_0");
	  TakeInventory("InventoryPowerCore", 1);
	  PlaySound(0, "Switches/Switch1");
	  Floor_LowerByValue(30, 4, 102);
	  //Ceiling_RaiseByValue(15, 24, 80);
	}
	else
	If (GetSectorFloorZ(30, 0, 0) > 327.0)
	{
	    Print(s:"The switch is out of power.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}

//BREAKABLE WALLS
Script 4 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && GetSectorFloorZ(13, 0, 0) > 300.0)
  {
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
    Floor_LowerByValue(13, 999, 80);
	PlaySound(0, "Interaction/WallPick");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
	SpawnSpot("CaveRockD",26, 0, 0);
    SpawnSpot("CaveRockD",28, 0, 0);
	SpawnSpot("DustCloud",26, 0, 0);
    SpawnSpot("DustCloud",28, 0, 0);
  }
    else
	  If (GetSectorFloorZ(13, 0, 0) > 300.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper pickaxe.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

Script 5 (void)
{
If (CheckInventory("InventoryPickAxe") > 0 && GetSectorFloorZ(19, 0, 0) > 223.0)
  {
  SetLineSpecial(117, 0, 0, 0, 0, 0, 0);
  SetLineSpecial(236, 0, 0, 0, 0, 0, 0);
  SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
  Thing_Remove(81);
  Floor_LowerInstant(19, 0, 96);
  PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
  Radius_Quake2(0, 2, 24, 0, 64, 0);
  SpawnSpot("CaveRockD",22, 0, 0);
  SpawnSpot("CaveRockD",24, 0, 0);
  SpawnSpot("DustCloud",22, 0, 0);
  SpawnSpot("DustCloud",24, 0, 0);
  Line_SetBlocking(240, 0, BLOCKF_MONSTERS);
  }
  else
    If (GetSectorFloorZ(19, 0, 0) > 223.0)
	     {
	        Print(s:"This wall looks like it could be broken with a proper pickaxe.");
			PlaySound(0, "Character/ZanThink", CHAN_AUTO);
			Delay(50);
	    }
}

Script 92 (void)
{
	If (GetSectorFloorZ(19, 0, 0) > 223.0)
	     {
	        Print(s:"This wall looks like it could be broken with a proper pickaxe.");
			PlaySound(0, "Character/ZanThink", CHAN_AUTO);
			Delay(50);
	    }
}

Script 1 (void)
{
If (CheckInventory("InventoryPickAxe") > 0 && GetSectorFloorZ(29, 0, 0) > 209.0)
  {
  SetLineSpecial(236, 0, 0, 0, 0, 0, 0);
  Floor_LowerInstant(29, 0, 96);
  PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
  Radius_Quake2(0, 2, 24, 0, 64, 0);
  SpawnSpot("CaveRockD",53, 0, 0);
  SpawnSpot("CaveRockD",54, 0, 0);
  SpawnSpot("DustCloud",53, 0, 0);
  SpawnSpot("DustCloud",54, 0, 0);
  }
  else
    If (GetSectorFloorZ(29, 0, 0) > 209.0)
	     {
	        Print(s:"This wall looks like it could be broken with a proper pickaxe.");
			PlaySound(0, "Character/ZanThink", CHAN_AUTO);
			Delay(50);
	    }
}

//PRINTS
Script 50 (void)
{
  Print(s:"This seems to be activated somewhere else.");
  PlaySound(0, "Character/ZanFail2", CHAN_VOICE);
  Delay(50);
}

Script 3 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 25.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"I think that tremor from two days ago is related to these giant worms that have been pestering   "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
	Hudmessage(s:"us.    Since I already need to head back to Valc and drop by the Clinic to have my finger checked  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 25.0);
    Hudmessage(s:"on, I might as well inform the Lancer Council about our problems here. Be back in two days. -Dura"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 25.0);
}

Script 6 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 20.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"Chieftain Zura, I have news. We managed to capture one of the worms that have been troubling us"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 20.0);
	Hudmessage(s:"lately.   You could send in one of your Witches now, we will do our best to aid her research. I hope  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 20.0);
    Hudmessage(s:"we find a way to deter them before they cave in all our tunnels, and fi - (the text ends abruptly)  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.9, 20.0);
}

Script 7 (void)
{
	If(GameSkill() == SKILL_VERY_EASY)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Given the recent events, the shutter has been set to close back after a short period."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
	Hudmessage(s:"Don't use it unless you can signal someone to let you back in.        The \c[Gold]waterfall gate\c-  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 25.0);
    Hudmessage(s:"is to remain closed until the Witch arrives.   We can't let that accursed worm escape."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 25.0);
    }
	else
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Given the recent events, the shutter has been set to close back after a short period."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
	Hudmessage(s:"Don't use it unless you can signal someone to let you back in.        The waterfall gate  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 25.0);
    Hudmessage(s:"is to remain closed until the Witch arrives.   We can't let that accursed worm escape."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 25.0);
    }
}

Script 11 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 15.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"The dwarven prospector should arrive by the end of the moon."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 15.0);
	Hudmessage(s:"If he is wearing an elemental ring signet,  you may let him in.   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
}

Script 13 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I'm writing this with my dying breath..this woman.. came out of nowhere and snuffed everyone out before we"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 35.0);
    Hudmessage(s:"could even draw our weapons...  I was the only survivor...She vanished as quickly as she appeared, and left"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"some odd pentagrams...then cultists started gating from them! Killed a few but one stabbed me in the leg..."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
    Hudmessage(s:"If any sister reads this...   rush to Valc...  if Demons are behind this, they must be after the Crystal Heart... "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.9, 35.0);

}

Script 16 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"POWER CRYSTAL STORAGE ROOM"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 18 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 40.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"As you may know,  we have been called to join our sisters in the Iron Division's campaign.      We will likely be away     "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 40.0);
    Hudmessage(s:"for months, and someone needs to tend to the camp this time.   I know you're eager to further your apprenticeship, "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 40.0);
	Hudmessage(s:"but we cannot take everyone with us.   Tend well to our home, and make sure to gather some firewood, as the cold  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 40.0);
    Hudmessage(s:"moon is almost upon us. Earth Mother Druga has also left you a task, she needed some help with finishing an amulet."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 40.0);
	Hudmessage(s:"I'll leave you my Spike Gun,  you know where to find the extra mags.     And try not to drink all the wine this time.    "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.54, 40.0);
}

Script 20 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"As your mastress has probably informed you, I need you to finish making an amulet for me. I've "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 60.0);
    Hudmessage(s:"brought a crystal to the shrine of the Moon Goddess, and I expect the final magical processes "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 60.0);
	Hudmessage(s:"to be complete in a month and a week from now. All that is left for you to do is offer a Moondrop"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.48, 60.0);
    Hudmessage(s:"Flower on the pedestal. It's a pale flower akin to a lotus, I've recently witnessed one blooming"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.50, 60.0);
	Hudmessage(s:"near the stone circle.  Once you get the amulet, look behind the fern upstairs for a switch that "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 60.0);
	Hudmessage(s:"opens the secret path to Valc. Head to the Grove, and leave it to the Reavers in charge. -Druga"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 60.0);
    }
	else
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"As your mastress has probably informed you, I need you to finish making an amulet for me. I've "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 60.0);
    Hudmessage(s:"brought a crystal to the shrine of the Moon Goddess, and I expect the final magical processes "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 60.0);
	Hudmessage(s:"to be complete in a month and a week from now. All that is left for you to do is offer a Moondrop"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.48, 60.0);
    Hudmessage(s:"Flower on the pedestal. It's a pale flower akin to a lotus, I've recently witnessed one blooming"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.50, 60.0);
	Hudmessage(s:"near the stone circle.  Once you get the amulet, look behind \c[Gold]the fern upstairs\c- for a switch that "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 60.0);
	Hudmessage(s:"opens the secret path to Valc. Head to the Grove, and leave it to the Reavers in charge. -Druga"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 60.0);
	}
}

Script 21 (void)
{
	//SetFont ("OLAYTBOT");
    //HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 4.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The parchment is scribbled with various alchemical diagrams)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 4.0);
}

Script 22 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I've finally received one of those crystals from the Lancers. They call them Time Shards. Quaint object,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 60.0);
    Hudmessage(s:"it seems to have no bond with darkness, nor gravity.   Wherever I place it, it will float peacefully in time"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 60.0);
	Hudmessage(s:"and space. I was instructed not to fiddle around with it while not wearing my protective crystal amulet,"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 60.0);
    Hudmessage(s:"for I'd burst into ash in mere moments if I were to break it by accident. I need to find some time to study"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 60.0);
	Hudmessage(s:"it further.    If only my sisters hadn't decided to begin their campaign and call us all to arms right now... "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 60.0);
}

Script 25 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"B. I've managed to get one of those odd protection amulets from the Orcs. However, I'll need the "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 60.0);
    Hudmessage(s:"proper crystals to recharge it.   I know it's no job for a fence,  but see if you can nab some glowing "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 60.0);
	Hudmessage(s:"shards when they prepare the supply caravan, and drop them at the spot we agreed on, along with"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 60.0);
    Hudmessage(s:"the rest of my gear.   I will pitch in with this nice ruby I've... acquired.   Make it worthwhile.   -   G. "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 60.0);

}

Script 31 (void)
{
	SetLineSpecial(105, 0, 0, 0, 0, 0, 0);

	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 40.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(You unroll a damp note. Someone has probably dropped it without noticing)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 40.0);
	Hudmessage(s:"Captain Dura's Log - Rot. 509 Day 238"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 40.0);
	Hudmessage(s:"I really don't like these small quakes.    Earth forbid we wake up with more cave-ins.   And the  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 40.0);
    Hudmessage(s:"crystals seem to be acting weird too. The Power Cores have been running out unusually fast... "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 40.0);
	Hudmessage(s:"Gah,  this place makes me feel so claustrophobic.      I did tell the goblins to carve the ceilings  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 40.0);
	Hudmessage(s:"higher, but they kept going on about the heat going out faster that way. I miss working in Valc."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 40.0);
}

Script 34 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"[...]   and now everyone's nervous while waiting for that dwarf to arrive.     We've suspended the mining "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"operations, lest more quakes bury us inside the tunnels along with those wretched worms.   They're big"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"enough to swallow a goblin whole! We were making such smooth progress... these caverns are chock full"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"of crystals, almost as many as there are rumored to be inside the Crystal Heart.  No wonder that the "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"Lancers have sensed the power in here and sent us in. Maybe we manage to dig up more than those cyan"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"magnetic formations or the yellow power shards.  Hope the dwarf will be able to sniff out some mithril."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 63 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 50.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A wrinkly parchment rests on the floor. You translate the demonic language with ease)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 50.0);
    Hudmessage(s:"My faithful servant, you were indeed right.     The Iron Division orcs and their allies have launched      "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 50.0);
	Hudmessage(s:"a full scale assault on our hellish domain. Once this bold affront is dealt with, I shall send my Demon "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 50.0);
    Hudmessage(s:"troops to reclaim your shattered outposts and deliver the punishment for your failure to stop them..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 50.0);
    Hudmessage(s:"Make sure nobody leaves your petty little town, or the consequences will be worse than death. - B.B. "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 50.0);
}

Script 90 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 145.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Rotation 509 - Day 233"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.52, 145.0);
	Hudmessage(s:"We had a huge tremor today. I went out to check on the others and was surprised to see the elevator was  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.54, 145.0);
	Hudmessage(s:"not working.   After exchanging a few shouts with the goblins up inside the mine barracks, we figured out it"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.56, 145.0);
	Hudmessage(s:"was the switch that needed a new power core - good thing we had a bunch stocked up in the storage room.  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.58, 145.0);
	Hudmessage(s:"It's times like these when I'm so glad I asked Earth Mother Druga to grow the steel-vine doors for me. I'd"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.60, 145.0);
	Hudmessage(s:"rather rely on ancestral magic than some wacky goblin switch. Speaking of crystal magic, the veggies are "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.62, 145.0);
	Hudmessage(s:"growing very quickly, and the chick eggs are about to hatch!    We won't need food from Valc for a while...   "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.64, 145.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.68, 145.0);

	Hudmessage(s:"Rotation 509 - Day 237  ?"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.72, 145.0);
	Hudmessage(s:"That blasted worm's hissing is driving me crazy! It tried chewing through the vines, but they're too solid"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.74, 145.0);
	Hudmessage(s:"to yield. I can't get too close or it will spit this freezing cold slime at me... Gods, what is this creature?"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.76, 145.0);

	Hudmessage(s:"Rotation 509 - Day 238  ?"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.80, 145.0);
	Hudmessage(s:"I woke up to a screech today? Hard to tell the time down here anymore.  The worm has found the chick"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.82, 145.0);
	Hudmessage(s:"hiding behind the shelf...  that poor bird didn't stand a chance.  I'd go in and gut that beast, but Dura "; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.84, 145.0);
	Hudmessage(s:"wants to get a Witch from Valc to study it first.   What an ordeal...  I tried going up to get a drink, but"; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.86, 145.0);
	Hudmessage(s:"the elevator is out yet again. At this rate we'll run out of power cores, and the goblins are too scared"; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.88, 145.0);
	Hudmessage(s:"of cave-ins to go break more walls. Oh, Earth, why so furious? Have none of our offerings pleased You?"; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.90, 145.0);
}

//HUDMESSAGE CLEAR
Script 17 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 3, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 4, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 5, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 6, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

Script 91 (void)
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


//MOONDROP ALTAR

Script 12 (void)
{
	If (CheckInventory("InventoryMoondropFlower") > 0 && GetSectorFloorZ(37, 0, 0) > 359.0)
	{
	  Ceiling_RaiseByValue(95, 99999, 144);
	  Ceiling_RaiseByValue(96, 99999, 112);

	  SpawnSpot("NatureFlowerMoondrop",36, 10516, 45);
	  Spawnspot("Conscript", 38, 0, 0);
	  Spawnspot("Cultist", 39, 0, 0);
	  Spawnspot("Conscript", 40, 0, 0);
	  Spawnspot("Conscript", 41, 0, 0);
	  Spawnspot("Conscript", 42, 0, 0);
	  Spawnspot("Conscript", 43, 0, 0);
	  Spawnspot("Cultist", 44, 0, 0);
	  Spawnspot("Cultist", 75, 0, 192);
	  Spawnspot("Cultist", 83, 0, 128);
	  TakeInventory("InventoryMoondropFlower", 1);
	  GiveInventory("ScriptPotionQuestComplete", 1);
	  Radius_Quake(1, 120, 0, 10, 0);
	  Floor_LowerByValue(37, 8, 130);
	  Delay(150);
	  Thing_Spawn(50, 65001, 0, 0);
	  Thing_Spawn(51, 65000, 0, 0);
	  Thing_Spawn(76, 65003, 0, 0);

	  }
	  else
	  If (GetSectorFloorZ(37, 0, 0) > 359.0)
	  {
	      Print(s:"An empty pedestal.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//PENTAGRAM SPAWNS
Script 14 (void)
{
	Thing_Spawn(45, 65000, 0, 0);
	Thing_Spawn(46, 65000, 128, 0);
	Thing_Spawn(47, 65000, 128, 0);
	Thing_Spawn(48, 65000, 0, 0);
	Thing_Spawn(49, 65000, 0, 0);
}

Script 19 (void)
{
	Thing_Spawn(58, 65001, 0, 0);
	Thing_Spawn(59, 65003, 180, 0);
	Thing_Spawn(60, 65001, 180, 0);
}
//CRAWLER SPAWN
Script 15 (void)
{
	If(CheckInventory("StoneKey") > 0)
	{
	SetLineSpecial(235, 0, 0, 0, 0, 0, 0);
	Radius_Quake(3, 150, 0, 1, 0);
	Thing_Spawn(21, 65003, 192, 0);
	Thing_Spawn(23, 65003, 192, 0);
	Thing_Spawn(261, 65003, 0, 0);
	Thing_Spawn(27, 65003, 64, 0);
	Thing_Spawn(80, 65003, 192, 0);
	Line_SetBlocking(77, 0, BLOCKF_PLAYERS);
	Thing_Remove(78);
	}
}

int spec41 = 0;
Script 41 (void)
{
  If(CheckInventory("InventoryPickaxe") > 0 && spec41 == 0)
  {
	spec41 += 1;

	If(GetCVar("sv_Tips") == 1)
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: Remember that you can inspect the selected inventory item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 10.0);
    }

	SpawnSpotForced("Crawler", 256, 661, 0);
	SpawnSpotForced("Crawler", 84, 0, 192);
	SpawnSpotForced("Crawler", 85, 0, 0);
	Delay(140);
	Radius_Quake(3, 105, 0, 1, 0);
	Delay(70);
	PlaySound(85, "Crawler/Active", CHAN_AUTO);
	Delay(35);
	Thing_SetGoal(661, 257, 0, 0);
  }
}

//CRAWLER CRY
Script 40 (void)
{
	PlaySound(79, "Crawler/Active", CHAN_AUTO);
}

Script 43 (void)
{
	If(CheckInventory("InventoryPowerCore") > 0)
	{
	Thing_Remove(102);
	PlaySound(103, "Crawler/Active", CHAN_AUTO);
	SpawnSpot("Crawler", 118, 0, 64);
	}
}

Script 47 (void)
{
	PlaySound(112, "Crawler/Active", CHAN_AUTO);
}

Script 52 (void)
{
	SetLineSpecial(120, 0, 0, 0, 0, 0, 0);
	PlaySound(119, "Crawler/Sight", CHAN_AUTO);
}

//EARTH TABLET
Script 89 (void)
{
  If(IsTIDUsed(254))
  {
	  PlaySound(253, "Inventory/Paper");
	  Thing_Remove(254);
	  Delay(24);
	  PlaySound(253, "Magic/Earth1");
	  SpawnSpot("ExplosionMagicGreen", 255, 0, 0);
	  Delay(24);
	  Ceiling_RaiseByValue(252, 2, 72);
 }
  else
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You already recited the spell)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
  }
}

//CREEPY SOUND
Script 23 (Void)
{
	Floor_LowerByValue(32,2,100);
	Delay(200);
	PlaySound(0, "Ambient/Creepy", CHAN_AUTO);
}

//RUBBLE
Script 24 (Void)
{
	PlaySound(0, "Ambient/Rocks", CHAN_AUTO);
}

//ABHAOTH SIGHTINGS
Script 26 (void)
{
//Thing_SetGoal(65 , 25, 0);
Thing_Hate(65, 25, 6);
Delay(430);
Thing_Destroy(65);
}

Script 42 (void)
{
Delay(35);
Thing_Destroy(97);
Thing_Activate(98);
NoiseAlert(0, 0);
}

Script 27 (void)
{
If (CheckInventory("ScriptPotionQuestComplete") > 0)
  {
	  SpawnSpot("ShadowAbhaothStanding", 67, 69, 0);
	  TakeInventory("ScriptPotionQuestComplete", 1);
  }
}

Script 28 (void)
{
  Delay(70);
  Thing_Destroy(69);
}

Script 29 (void)
{
  Delay(30);
  Thing_Destroy(66);
}



//TIPS
script 1000 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Press \c[White]F1\c- to view the quick reference screen."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 12.0);
	Hudmessage(s:"All messages can be reviewed in the console \c[White](default: Tilde)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 12.0);
	//Hudmessage(s:"You can increase the size of this text in:   Options - HUD options - Scaling Options - Messages"; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.18, 20.0);
	//Hudmessage(s:"If your screen resolution is 1920x1080 set the slider to 2; If it's 4K, set it to 3."; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_RED, 1.5, 0.20, 20.0);
	}
}

script 1005 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: You won't get far without a map \c[White](default: TAB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 16.5);
	Hudmessage(s:"It has an overlay and normal mode that can be configured from: Options - Automap Options"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 16.5);
	Hudmessage(s:"While in normal mode, you can zoom in/out \c[White](default: MWheel)\c- and mark your current position with \c[White](default: M)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.16, 16.5);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
}
script 1002 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(CheckInventory("inventoryPowerCore") > 0)
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Quest Items are not required to be manually selected."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 6.0);
	Hudmessage(s:"They are used automatically with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 6.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_ORANGE, 1.5, 0.18, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_ORANGE, 1.5, 0.18, 0.1);
	}
}
script 1003 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Use consumables with \c[White](default: F)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 35.0);
	Hudmessage(s:"Consumables and Quest Items are stored in your inventory. Scroll through it with \c[White](default: Z/X)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 35.0);
	Hudmessage(s:"You can inspect the currently selected item for a brief description with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.16, 35.0);
	Hudmessage(s:"You can also set hotkeys for these items, or see the default ones in the help screen \c[White](default: F1)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_ORANGE, 1.5, 0.18, 35.0);
    }
}
//script 1004 (void)
//{
//	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
//	Terminate;
//	else
//	{
//	SetFont("SMALLFONT");
//  Hudmessage(s:"Tip: Certain objects like switches, doors or machinery can be activated with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 5.0);
//  Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
//  Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
//	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
//    }
//}
script 1006 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: Crystal Amulets provide you with a set amount of armor."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 9.0);
	Hudmessage(s:"Small Power Shards can provide a further bonus to your armor reserve."; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 9.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1007 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	  If(CheckInventory("Axe") < 1 && CheckInventory("BearzerkAxe") < 1)
	  {
	  //SetLineSpecial(106, 0, 0, 0, 0, 0, 0);
	  SetFont("SMALLFONT");
	  Hudmessage(s:"Tip: Every weapon has an alternative attack mode \c[White](default: RMB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 15.0);
      Hudmessage(s:"You can perform quick kick attacks with \c[White](default: Q)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 15.0);
	  Hudmessage(s:"You can also perform jump kick and crouch-slide kick combos."; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 15.0);
	  Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
      }
	}
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("Axe") > 0)
	{
		Hudmessage(s:"Tip: You can only carry one Axe without a Bag of Holding."; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.18, 5.0);
	}
}
script 1008 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SpawnSpotForced("MarkerIronKey", 107, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: \c[White]Keys\c- show at the bottom right of the HUD."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 8.0);
	Hudmessage(s:"Locked doors have a corresponding icon that can be seen on the map \c[White](default: TAB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 8.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.16, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Thing_Remove(101);
    }
}

Script 44 (void)
{
	SpawnSpotForced("MarkerIronKey", 107, 0, 0);
}

script 1009 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Read scrolls, signs, tablets and books with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 8.0);
    //Hudmessage(s:"You can increase the size of the text in:   Options - HUD options - Scaling Options - Messages"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 12.0);
	//Hudmessage(s:"If your screen resolution is 1920x1080 set the slider to 2; If it's 4K, set it to 3."; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_RED, 1.5, 0.16, 12.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_RED, 1.5, 0.16, 1.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_RED, 1.5, 0.16, 1.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_RED, 1.5, 0.16, 1.0);
    }
}

script 1010 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: You can avoid alerting groups of enemies by attacking with your fists \c[White](default: 1)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 7.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}

script 1011 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
	//Hudmessage(s:"Tip: Remember that you can always press \c[White]F1\c- for a quick default key bind screen."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 7.0);
    //Hudmessage(s:"You can also learn more by consulting the gameplay manual."; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 7.0);
	//Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.01, 0.1);
    }
}
script 1012 (void)
{
	Thing_Remove(86);
	SetLineSpecial(120, ACS_Execute, 52, 0, 0, 0, 0);
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(CheckInventory("InventoryVialOfhealing") > 0 || CheckInventory("InventoryFixerGoggles") > 0 )
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Scroll through your inventory with \c[White](default: Z/X)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 12.0);
	Hudmessage(s:"Inspect your currently selected item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 12.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Inspect your currently selected item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 5.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.12, 0.1);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
}
script 1013 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: You can toggle sprinting with \c[White](default: Caps Lock)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 3.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1014 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Use the door with the Fist Symbol to end the level."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 5.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1015 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: \c[White]Consumables\c- can be used anytime with \c[White](default: F)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 8.0);
    Hudmessage(s:"They can also be bound to hotkeys in the options."; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 8.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1016 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(CheckInventory("InventoryPickaxe") > 0)
	{
	SetLineSpecial(236, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Quest Items are not required to be manually selected."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 6.0);
	Hudmessage(s:"They are used automatically with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 6.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_ORANGE, 1.5, 0.18, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_ORANGE, 1.5, 0.18, 0.1);
	}
}

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}

//MESSAGE SCALE
Script "MessageScale" (void)//ENTER
{
If(GetScreenWidth() >= 1440) // && GetScreenWidth() < 2560)
  {
	  SetCVar("con_scaletext", 2);
  }
  //else
  //{
	//If(GetScreenWidth() >= 2560)
    //{
	//SetCVar("con_scaletext", 3);
    //}
  //}
}

//GAMMA CALIBRATION
Script "GammaCalibration" ENTER
{
	If(GetCVar("sv_Clbr") == 1)
	{
	  SetCVar("sv_Clbr", 0);
	  SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
      TakeInventory("IsPlaying", 1);

      FadeTo(0, 0, 0, 1.0, 0.0);
	  ChangeCamera(909, 1, 0);

	  ACS_Execute(910, 0, 0, 0, 0);
	  Delay(4);
	  TakeInventory("IsPlaying", 1);
	  ACS_Execute(911, 0, 0, 0, 0);
	  ACS_Execute(912, 0, 0, 0, 0);
	  ACS_Execute(913, 0, 0, 0, 0);
	  FadeTo(0, 0, 0, 0.0, 3.0);
	}
    else
	{
	  FadeTo(0, 0, 0, 1.0, 0.0);
	  SetActorProperty(0,APROP_HEALTH, 72);
	  ACS_Execute(32, 0, 0, 0, 0);
	}
}

int CurrentGamma = 0.0;
Script 910 (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:"If you can't see the plant in the background, increase the gamma so that it's barely visible"; HUDMSG_FADEINOUT, 910, CR_UNTRANSLATED, 1.5, 0.20, 9999.0, 3.2, 0.8);
	//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 3.2, 0.8);
    Hudmessage(s:"Press \c[Gold]Strafe Left\c- (default: \c[Gold]A\c-) to decrease gamma"; HUDMSG_FADEINOUT, 913, CR_UNTRANSLATED, 1.5, 0.63, 9999.0, 3.2, 0.8);
	Hudmessage(s:"Press \c[Gold]Strafe Right\c- (default: \c[Gold]D\c-) to increase gamma"; HUDMSG_FADEINOUT, 914, CR_UNTRANSLATED, 1.5, 0.65, 9999.0, 3.2, 0.8);
	Hudmessage(s:"Press \c[Gold]Use\c- (default: \c[Gold]E\c-) to continue"; HUDMSG_FADEINOUT, 915, CR_UNTRANSLATED, 1.5, 0.86, 9999.0, 3.2, 0.8);
	Hudmessage(s:"You can always adjust this setting from Options - Display Options"; HUDMSG_FADEINOUT, 916, CR_UNTRANSLATED, 1.5, 0.90, 9999.0, 3.2, 0.8);
	CurrentGamma = GetCVar("vid_gamma");
}
Script 911 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_MOVELEFT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_MOVELEFT) || (GetPlayerInput(-1, INPUT_BUTTONS) & BT_LEFT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_LEFT))
    {
        SetCVar("vid_gamma", CurrentGamma - 0.1);
		CurrentGamma = GetCVar("vid_gamma");
		Delay(8);
		//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 0.0, 0.8);
    }
	Delay(1);
	Restart;
}
Script 912 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_MOVERIGHT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_MOVERIGHT) || (GetPlayerInput(-1, INPUT_BUTTONS) & BT_RIGHT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_RIGHT))
    {
        SetCVar("vid_gamma", CurrentGamma + 0.1);
		CurrentGamma = GetCVar("vid_gamma");
		Delay(8);
		//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 0.0, 0.8);
    }
	Delay(1);
	Restart;
}
Script 913 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
	  ACS_Terminate(911, 0);
	  ACS_Terminate(912, 0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 910, CR_GOLD, 1.5, 0.20, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 912, CR_GOLD, 1.5, 0.80, 0.0, 0.0, 0.0);
      Hudmessage(s:""; HUDMSG_FADEINOUT, 912, CR_GOLD, 1.5, 0.80, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 913, CR_GOLD, 1.5, 0.83, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 914, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 915, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 916, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  FadeTo(0, 0, 0, 1.0, 2.0);
	  Delay(105);
	  Hudmessage(s:"Somewhere in Hell..."; HUDMSG_FADEINOUT, 917, CR_UNTRANSLATED, 1.5, 0.50, 2.0, 1.0, 1.0);
	  Delay(4*35);
	  SetActorProperty(0,APROP_HEALTH, 72);
	  SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
      GiveInventory("IsPlaying", 1);
	  ChangeCamera(0, 1, 1);
	  ACS_Execute(32, 0, 0, 0, 0);
	  Terminate;
    }
	Delay(1);
	Restart;
}
