#include "zcommon.acs"
//TIDs Used - 650, 651, 652... 792... 852, 853

//LEVEL START
Script 1 ENTER
{
	/*
	//Soul Key Fragments
	If(CheckInventory("InventorySoulKeyFragment") == 0)
	{
		GiveInventory("InventorySoulKeyFragment", 3);
	}
	If(CheckInventory("InventoryAngelFeather") == 0)
	{
		GiveInventory("InventoryAngelFeather", 1);
	}

	//Music
	SetMusic("HTrack35", 0);

	//Actor Changes
	SetActorFlag(55, "COUNTKILL", 0);
	SetActorFlag(97, "COUNTKILL", 0);
	SetActorFlag(143, "FLOORCLIP", 0);
	SetActorFlag(144, "SOLID", 0);

	SetActorFlag(244, "FLOATBOB", 1);

	SetActorFlag(315, "NOBLOOD", 1);

	SetActorFlag(362, "NOBLOCKMAP", 1);
	SetActorFlag(364, "NOBLOCKMAP", 1);
	SetActorFlag(374, "NOBLOCKMAP", 1);

	SetActorFlag(404, "INVISIBLE", 1);

	SetActorFlag(423, "INVISIBLE", 1);

	SetActorFlag(439, "FLOATBOB", 0);

	SetActorFlag(517, "WALLSPRITE", 0);
	SetActorFlag(517, "FLATSPRITE", 1);

	SetActorFlag(593, "COUNTITEM", 0);


	//Ghosts
	GiveActorInventory(150, "IsGhost", 1);
	GiveActorInventory(362, "IsGhost", 1);
	GiveActorInventory(364, "IsGhost", 1);
	GiveActorInventory(374, "IsGhost", 1);

	//Main Gate
	Floor_RaiseByValue(70, 5, 360);*/


    //Soul Key Fragments
	If(CheckInventory("InventorySoulKeyFragment") == 0)
	{
		GiveInventory("InventorySoulKeyFragment", 3);
	}

	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Actor Changes
	SetActorFlag(55, "COUNTKILL", 0);
	SetActorFlag(97, "COUNTKILL", 0);
	SetActorFlag(143, "FLOORCLIP", 0);
	SetActorFlag(144, "SOLID", 0);

	SetActorFlag(244, "FLOATBOB", 1);

	SetActorFlag(315, "NOBLOOD", 1);

	SetActorFlag(362, "NOBLOCKMAP", 1);
	SetActorFlag(364, "NOBLOCKMAP", 1);
	SetActorFlag(374, "NOBLOCKMAP", 1);

	SetActorFlag(404, "INVISIBLE", 1);

	SetActorFlag(423, "INVISIBLE", 1);

	SetActorFlag(439, "FLOATBOB", 0);

	SetActorFlag(517, "WALLSPRITE", 0);
	SetActorFlag(517, "FLATSPRITE", 1);

	SetActorFlag(593, "COUNTITEM", 0);

	SetActorFlag(851, "INVISIBLE", 1);
	SetActorFlag(851, "FLOATBOB", 1);

	SetActorFlag(853, "FLOATBOB", 1);

	//Ghosts
	GiveActorInventory(150, "IsGhost", 1);
	GiveActorInventory(362, "IsGhost", 1);
	GiveActorInventory(364, "IsGhost", 1);
	GiveActorInventory(374, "IsGhost", 1);


	//Hole Entry
	    SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
		FadeTo(0, 0, 0, 1.0, 0.0);
		//If(spec34b == 0)
		//{
		  TakeInventory("InventoryAngelFeather", 1);
		  PlaySound(0, "Magic/Flight", CHAN_AUTO);
		  GiveInventory("PowerAngelFeather", 1);
		  //Thing_Remove(901);
		  SetMusic("Htrack10", 0, 0);
		//}
		Delay(70);
		SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
		Teleport_NoFog(400, 1, 0);
		SetActorFlag(0, "NOGRAVITY", 0);
		Delay(8);
		FadeTo(0, 0, 0, 0.0, 3.0);

        //If(spec34b == 0)
		//{
		  Thing_Remove(193);
		  SetActorPitch(0, 0.0);
		  SpawnSpotForced("IDAngelFeather", 399, 658, 0);
		  SetActorProperty(658, APROP_Gravity, 0.05);
	      SetActorProperty(0, APROP_JumpZ, 15.0);
	      Sector_SetWind(270, 400, 0, 0);
	      ACS_Execute(41, 0, 0, 0, 0);
		  SetActorProperty(0, APROP_Gravity, 0.1);
		  Delay(70);
		  SetActorProperty(0, APROP_Gravity, 0.2);
		  Delay(50);
		  SetActorProperty(0, APROP_Gravity, 0.3);
		  Delay(35);
		  SetActorProperty(0, APROP_Gravity, 0.4);
		  Delay(16);
		  SetActorProperty(0, APROP_Gravity, 0.5);
		  ACS_Execute(58, 0, 0, 0, 0);
		  //spec34b += 1;
		//}


}

//LIFT CRUSHER
Script 3 ENTER
{
	SectorDamage(76, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//RETURN
Script 122 RETURN
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Teleport Fog
	SpawnSpotForced("HedonTeleportFogDemon", 403, 0, 0);
    PlaySound(403, "misc/teleport", CHAN_AUTO, 1.0, false, ATTN_STATIC);

    //Angel Feather
	If(CheckInventory("InventoryAngelFeather") == 0)
	{
		GiveInventory("PowerAngelFeather", 1);
	}

	//Clear Loading...
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);

	//Pit Return
	If(CheckProximity(0, "IDBannerBlacksmith", 256.0, 1, CPXF_NOZ))
	{
		FadeTo(0, 0, 0, 1.0, 0.0);
		SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
		Teleport_NoFog(400, 1, 0);
		SetActorFlag(0, "NOGRAVITY", 0);
		Delay(8);
		FadeTo(0, 0, 0, 0.0, 3.0);
	}
}

//UPPER CITADEL MONSTER SPAWNS
//Pit Lord Commander Barks
Script 27 (void)
{
	Delay(16);
	Hudmessage(s:"Pit Lord Commander:    The Halfblood has arrived! Prepare for your final stand, fools!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
}
Script 30 (void)
{
	Delay(70);
	Hudmessage(s:"Pit Lord Commander:    How is she still alive?!! COME ON!!! It's just ONE. FUCKING. ORC!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
}
Script 32 (void)
{
	SetLineSpecial(185, 0, 0, 0, 0, 0, 0);
	Delay(16);
	If(GetActorProperty(124, APROP_Health) > 0)
	{
	Hudmessage(s:"Pit Lord Commander:    Where did she go?! We can't lose track of her!!! Arrgh, too much blood clouding my vision!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 5.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
}

//Iron Maiden Wall
Script 23 (void)
{
	SetLineSpecial(170, 0, 0, 0, 0, 0, 0);
	HudmessageBold(s:"Pit Lord Commander:    We can't allow her interrupt the Baron now! Attack!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
	NoiseAlert(0, 0);
	Delay(105);
	SetActorProperty(150, APROP_Speed, 17.0);
	Delay(70);
	SpawnSpotForced("SniperHellion", 149, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 149, 0, 0);
    PlaySound(149, "misc/teleport", CHAN_AUTO);
	Delay(175);
	SpawnSpotForced("Hellblaze", 151, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 151, 0, 0);
    PlaySound(151, "misc/teleport", CHAN_AUTO);
}
//Citadel Court Spawns
Script 25 (void)
{
	Thing_Remove(184);
	Thing_Activate(118);
	Delay(35);
	Hudmessage(s:"Pit Lord Commander:    No!!! We can't let her get any closer! Do something!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(70);
	SpawnSpotForced("SniperHellion", 154, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 154, 0, 0);
    PlaySound(154, "misc/teleport", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("Hellblaze", 155, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 155, 0, 0);
    PlaySound(155, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 156, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 156, 0, 0);
    PlaySound(156, "misc/teleport", CHAN_AUTO);
	Delay(105);
	Thing_Activate(157);
	Delay(105);
	Thing_Activate(158);
	Delay(105);
	Thing_Activate(159);
	Delay(105);
	Thing_Activate(160);
}
//Tower Suspended Ring Ambush
Script 26 (void)
{
	Delay(35);
	SpawnSpotForced("PitLord", 161, 0, 225);
	SpawnSpotForced("HedonTeleportFogDemon", 161, 0, 0);
    PlaySound(161, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Genius", 162, 0, 225);
	SpawnSpotForced("HedonTeleportFogDemon", 162, 0, 0);
    PlaySound(162, "misc/teleport", CHAN_AUTO);
}
//Pentagram cerberi Waves
Script 24 (void)
{
	SetLineSpecial(164, 0, 0, 0, 0, 0, 0);
	If(GetActorProperty(124, APROP_Health) > 0)
	{
	HudmessageBold(s:"Pit Lord Commander:    Summon the cerberi! Throw in everything we have!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
	Delay(70);
	SpawnSpotForced("PitLordCommander", 165, 0, 64);
	NoiseAlert(0, 0);
	Delay(70);
	SpawnSpotForced("Cerberus", 152, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 152, 0, 0);
    PlaySound(152, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(105);
	SpawnSpotForced("Cerberus", 153, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 153, 0, 0);
    PlaySound(152, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(105);
	SpawnSpotForced("Cerberus", 152, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 152, 0, 0);
    PlaySound(152, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(105);
	SpawnSpotForced("Cerberus", 153, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 153, 0, 0);
    PlaySound(152, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(105);
	SpawnSpotForced("Cerberus", 152, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 152, 0, 0);
    PlaySound(152, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(105);
	If(GameSkill() >= SKILL_VERY_HARD)
	{
	  SpawnSpotForced("Cerberus", 153, 0, 64);
	  SpawnSpotForced("HedonTeleportFogDemon", 153, 0, 0);
      PlaySound(152, "misc/teleport", CHAN_AUTO);
	  NoiseAlert(0, 0);
	  Delay(105);
	  SpawnSpotForced("Hellblaze", 152, 0, 64);
	  SpawnSpotForced("HedonTeleportFogDemon", 152, 0, 0);
      PlaySound(152, "misc/teleport", CHAN_AUTO);
	  SpawnSpotForced("Hellblaze", 163, 0, 64);
	  SpawnSpotForced("HedonTeleportFogDemon", 163, 0, 0);
      PlaySound(163, "misc/teleport", CHAN_AUTO);
	  NoiseAlert(0, 0);
	}
}
//Cathedral Ambush
Script 31 (void)
{
	SetLineSpecial(183, 0, 0, 0, 0, 0, 0);
	HudmessageBold(s:"Pit Lord Commander:    She's inside the cathedral! Corner her, damn it! Don't let her get away!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 5.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(70);
	PlaySound(192, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Radius_Quake(2, 16, 0, 1, 0);
	Delay(24);
	PlaySound(192, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Radius_Quake(3, 20, 0, 1, 0);
	Delay(24);
	PlaySound(192, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Radius_Quake(4, 24, 0, 1, 0);
	Delay(24);
	PlaySound(192, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Radius_Quake(5, 70, 0, 1, 0);
	Delay(105);
	SpawnSpotForced("PsiDemon", 186, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 186, 0, 0);
    PlaySound(186, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 187, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 187, 0, 0);
    PlaySound(187, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 188, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 188, 0, 0);
    PlaySound(188, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 189, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 189, 0, 0);
    PlaySound(189, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	Delay(8*35);
	SpawnSpotForced("Cerberus", 191, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 191, 0, 0);
    PlaySound(191, "misc/teleport", CHAN_AUTO);
}
//Bell Tower Ambush
Script 29 (void)
{
	SetLineSpecial(171, 0, 0, 0, 0, 0, 0);
	Thing_Remove(172);
	If(GetActorProperty(124, APROP_Health) > 0)
	{
	HudmessageBold(s:"Pit Lord Commander:    Do something! Surround her! Use your rotten brains for once!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 1.5);
	PlaySound(124, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
	Delay(70);
	SpawnSpotForced("PitLord", 177, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 177, 0, 0);
    PlaySound(177, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 178, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 178, 0, 0);
    PlaySound(178, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 179, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 179, 0, 0);
    PlaySound(179, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 180, 0, 96);
	SpawnSpotForced("HedonTeleportFogDemon", 180, 0, 0);
    PlaySound(180, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 181, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 181, 0, 0);
    PlaySound(181, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 182, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 182, 0, 0);
    PlaySound(182, "misc/teleport", CHAN_AUTO);
}
//Magic Tower
Script 28 (void)
{
	SetLineSpecial(169, 0, 0, 0, 0, 0, 0);
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(50);
	SpawnSpotForced("PitLord", 173, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 173, 0, 0);
    PlaySound(173, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 174, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 174, 0, 0);
    PlaySound(174, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 175, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 175, 0, 0);
    PlaySound(175, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 176, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 176, 0, 0);
    PlaySound(176, "misc/teleport", CHAN_AUTO);
}
//Post Patreon Gallery Ambush
Script 35 (void)
{
	SetLineSpecial(194, 0, 0, 0, 0, 0, 0);
	Polyobj_Move(89, 16, 192, 56);
	Polyobj_Move(271, 16, 64, 56);
	Polyobj_Move(90, 16, 192, 56);
	Polyobj_Move(270, 16, 64, 56);
	Polyobj_Move(91, 16, 192, 56);
	Polyobj_Move(269, 16, 64, 56);
	SpawnSpotForced("Ironmaiden", 195, 652, 0);
	SetActorProperty(652, APROP_RenderStyle, STYLE_Shadow);
	GiveActorInventory(652, "IsGhost", 1);
	SpawnSpotForced("PitLord", 196, 0, 0);
	SpawnSpotForced("Cerberus", 197, 0, 0);
}

//UPPER CITADEL
//Blood Key Armor
Script 11 (void)
{
  SetLineSpecial(99, 0, 0, 0, 0, 0, 0);
  SetActorState(100, "Special", 0);
  Delay(12);
  SpawnSpotForced("BloodKey", 98, 650, 0);
  ThrustThing(212, 2, 0, 650);
}

//Unholy Book & Citadel Main Door
Script 14 (void)
{
  If(IsTIDUsed(119))
  {
	Thing_Remove(119);
	SetActorState(120, "Special", 0);
	SetLineSpecial(121, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(122, ACS_Execute, 16, 0, 0, 0, 0);
	Delay(16);
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(16);
	Hudmessage(s:"Pit Lord Commander:    NO!!! How is this possible?!... we have failed the Baron!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 2.5);
	PlaySound(124, "PitLord/Death", CHAN_AUTO, 1.0, false, ATTN_NONE);

  }
}
Script 15 (void)
{
	Print(s:"A powerful magic ward keeps the gate sealed.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
}
Script 16 (void)
{
	SetLineSpecial(122, 0, 0, 0, 0, 0, 0);
	Radius_Quake(1, 16, 0, 1, 0);
	Delay(12);
	PlaySound(124, "Ambient/Crash", CHAN_AUTO);
	Polyobj_Move(180, 96, 0, 56);
	Polyobj_Move(360, 96, 128, 56);
	Thing_Activate(124);
	HudmessageBold(s:"Pit Lord Commander:    DIE!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 1.5, 0.2, 0.5);
	SetActorState(124, "Melee", 0);
	Radius_Quake(6, 24, 0, 1, 0);
	ThrustThing(192, 40, 1, 0);
	ThrustThingZ(0, 20, 0, 0);
	Delay(8);
	SpawnSpotForced("DustPuff", 127, 0, 0);
	SetActorState(124, "Melee", 0);
	PlaySound(123, "Ambient/Impact", CHAN_AUTO);
	SpawnSpotForced("ExplosionHuge", 128, 0, 0);
	Delay(4);
	SpawnSpotForced("ExplosionLarge", 129, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 130, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 131, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionMedium", 132, 0, 0);
	SetActorState(124, "Melee", 0);
}

//Cathedral Door Explosion
Script 13 (void)
{
  If(IsTIDUsed(119) == 0 && IsTIDUsed(190))
  {
	Thing_Remove(190);
	Radius_Quake(1, 24, 0, 1, 0);
	Delay(24);
	Radius_Quake(5, 90, 0, 20, 103);
	Floor_MoveToValue(102, 9999, 226, 0);
	SpawnSpotForced("ExplosionHuge", 103, 0, 0);
	TagWait(102);
	SpawnSpotForced("FireTinyDie1", 104, 0, 0);
	SpawnProjectile(103, "JunkBrokenWoodA", random(160, 224), random(30,60), random(5,15), random(10,20), 0);
	SpawnProjectile(103, "JunkBrokenWoodA", random(160, 224), random(30,60), random(5,15), random(10,20), 0);
	SpawnProjectile(103, "JunkBrokenWoodB", random(160, 224), random(30,60), random(5,15), random(10,20), 0);
	SpawnProjectile(103, "JunkBrokenWoodB", random(160, 224), random(30,60), random(5,15), random(10,20), 0);
	SpawnProjectile(103, "JunkBrokenWoodB", random(160, 224), random(30,60), random(5,15), random(10,20), 0);
	SpawnSpotForced("Cerberus", 107, 651, 192);
	ThrustThing(192, 35, 1, 651);
	ThrustThingZ(651, 10, 0, 1);
	SpawnSpotForced("Cerberus", 112, 0, 192);
	//SpawnSpotForced("Hellblaze", 113, 0, 192);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 105, 0, 0);
	Delay(10);
	SpawnSpotForced("ExplosionLarge", 106, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 103, 0, 0);
	Delay(4);
	SpawnSpotForced("ExplosionMedium", 105, 0, 0);
  }
}

//Stables Cerberi
Script 10 (void)
{
	PlaySound(97, "Cerberus/Sight", CHAN_AUTO);
	Delay(35);
	SetActorAngle(97, 0.25);
	Delay(105);
	PlaySound(97, "Cerberus/Active", CHAN_AUTO);
}

//UPPER CITADEL THRONE ROOM
//Giant Elevator Shaft
int spec34 = 0;
int spec34b = 0;
Script 34 (void)
{
	If(GetActorZ(0) < 360.0)
	{
		FadeTo(0, 0, 0, 1.0, 1.5);
		If(IsTIDUsed(193) && spec34 == 0)
		{
		  Hudmessage(s:"Blue Baron:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 0.5, 1.0, 3.5);
		  ACS_Terminate(67, 0);
		  ACS_Execute(48, 0, 0, 0, 0);
		}

		Delay(55);
		Thing_Stop(0);
		SetActorFlag(0, "NOGRAVITY", 1);
        SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
		Teleport_NoFog(398, 0, 0);
		//PlaySound(0, "Character/ZanFal1", CHAN_AUTO);
		Delay(210);
		If(spec34b == 0)
		{
		  TakeInventory("InventoryAngelFeather", 1);
		  PlaySound(0, "Magic/Flight", CHAN_AUTO);
		  GiveInventory("PowerAngelFeather", 1);
		  Thing_Remove(901);
		  SetMusic("Htrack10", 0, 0);
		}
		Delay(70);
		SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
		Teleport_NoFog(400, 1, 0);
		SetActorFlag(0, "NOGRAVITY", 0);
		Delay(8);
		FadeTo(0, 0, 0, 0.0, 3.0);

        If(spec34b == 0)
		{
		  Thing_Remove(193);
		  SetActorPitch(0, 0.0);
		  SpawnSpotForced("IDAngelFeather", 399, 658, 0);
		  SetActorProperty(658, APROP_Gravity, 0.05);
	      SetActorProperty(0, APROP_JumpZ, 15.0);
	      Sector_SetWind(270, 400, 0, 0);
	      ACS_Execute(41, 0, 0, 0, 0);
		  SetActorProperty(0, APROP_Gravity, 0.1);
		  Delay(70);
		  SetActorProperty(0, APROP_Gravity, 0.2);
		  Delay(50);
		  SetActorProperty(0, APROP_Gravity, 0.3);
		  Delay(35);
		  SetActorProperty(0, APROP_Gravity, 0.4);
		  Delay(16);
		  SetActorProperty(0, APROP_Gravity, 0.5);
		  ACS_Execute(58, 0, 0, 0, 0);
		  spec34b += 1;
		}

		Terminate;
	}
	Delay(4);
	Restart;
}
//Blue Baron Vault Shaft
Script 67 (void)
{
	Hudmessage(s:"Blue Baron:    Tell me, Halfblood - how much does a fly know of the world around the rotten fruit it feasts upon?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 6.5, 1.5, 2.5);
    PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	Delay(12*35);
    Hudmessage(s:"You had the chance to burrow yourself away from the horrors of the Void... but you persisted."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 6.5, 1.5, 0.5);
    PlaySound(0, "BlueBaron/Growl", CHAN_AUTO);
	Delay(8*35);
	Hudmessage(s:"...and every insect that lives to irritate is doomed to the same fate..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 6.5, 0.2, 0.5);
    PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	ACS_Execute(48, 0, 0, 0, 0);
	Delay(2*35);
	Radius_Quake(3, 210, 0, 1, 0);
	FadeTo(255, 0, 0, 1.0, 4.0);
	Delay(5*35);
	Hudmessage(s:"...it gets squashed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 2.5, 0.2, 3.5);
    PlaySound(0, "BlueBaron/Ha", CHAN_AUTO);
	Delay(8);
	SetActorPitch(0, 0.0);
	Teleport_Nofog(428, 1, 0);
	FadeTo(255, 0, 0, 0.0, 0.5);
	SpawnSpotForced("HedonTeleportFogDemon", 147, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
	Thing_Destroy(193, 0, 0);
	spec34 += 1;
}




//LOWER CITADEL DIALOGUE
//Entry
int spec58 = 0;
int spec64 = 0;
Script 58 (void)
{
	spec58 += 1;
	Delay(70);
	Hudmessage(s:"Abhaoth:    Good. You made it. Quickly, now! Use the soul key fragments to free me from the Baron's vault."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 1.5, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(9*35);
	Hudmessage(s:"Primarch Adur:    ...my, oh my! I had no clue you're in cahoots with her! Of course..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.84, 3.5, 1.5, 2.5);
	PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	Delay(8*35);
	Hudmessage(s:"Primarch Elzriel:    Are you sure you wanna free her? It's not too late to join the winning side!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.84, 5.5, 0.5, 2.5);
	PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	Delay(9*35);
	Hudmessage(s:"Primarch Erudin:    Let her pursue her delusions. It should at least entertain us..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.5, 2.5);
	PlaySound(0, "Primarch/RedA", CHAN_AUTO);
	Delay(8*35);
	Hudmessage(s:"Abhaoth:    This forsaken place will erode your sanity. Don't let them sway you from your task."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(8*35);
	spec58 -= 1;
}
//Intermediary Taunts
int spec65 = 0;
Script 65 (void)
{
	If(spec58 > 0)
	{
		ScriptWait(58);
	}
	If(spec64 > 0)
	{
		ScriptWait(64);
	}
	If(spec65 == 0 && CheckInventory("InventorySoulKeyFragment") == 3)
	{
	  spec65 += 1;
	  Hudmessage(s:"Primarch Gaun:    A warrior of your magnitude, taking orders from a shadowy rat. Pathetic."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.84, 5.5, 0.5, 1.5);
	  PlaySound(0, "Primarch/GreenB", CHAN_AUTO);
	  Delay(7*35);
	  Hudmessage(s:"Primarch Elzriel:    Hmph. Warrior of magnitude... if it wasn't for that slimy goblin, she'd be rotting in my vault now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.84, 7.5, 0.5, 1.5);
	  PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
	  Delay(9*35);
	  Hudmessage(s:"Abhaoth:    Focus."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 2.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(4*35);
	}
	else
	If(spec65 == 1 && CheckInventory("InventorySoulKeyFragment") == 2)
	{
	  spec65 += 1;
	  If(CheckInventory("ScriptYzbethRejected") > 0)
	  {
	    Hudmessage(s:"Primarch Adur:    ...don't you miss the warm embrace of the Queen of Wrath? She's up there fighting the Baron alone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.84, 6.5, 1.5, 0.5);
	    PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	  }
	  else
	  {
	    Hudmessage(s:"Primarch Adur:    ...Yzbeth has been missing you. You'd have such a good time among demons... if only you joined us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.84, 6.5, 1.5, 0.5);
	    PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	  }
	  Delay(9*35);
	  Hudmessage(s:"Abhaoth:    The other soul locks must be nearby. Make haste and release me already!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 6.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(4*35);
	}
	else
	If(spec65 == 2 && CheckInventory("InventorySoulKeyFragment") == 1)
	{
	  spec65 += 1;
	  If(CheckInventory("ScriptHasBetrayedID") == 2)
	  {
	    Hudmessage(s:"Primarch Erudin:    You already betrayed your sisters for me. Do you still think there is a way back?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 6.5, 1.5, 1.5);
	    PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  }
	  else
	  If(CheckInventory("ScriptHasBetrayedID") == 1)
	  {
	    Hudmessage(s:"Primarch Erudin:    You're a cold heart killer. Your orc sisters know it too. They are afraid of you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 6.5, 1.5, 1.5);
	    PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  }
	  else
	  {
	    Hudmessage(s:"Primarch Erudin:     You sunk so low, jumping through all our hoops only so you could die here. Was it worth it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 6.5, 1.5, 1.5);
	    PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  }
	 Delay(9*35);
	  Hudmessage(s:"Abhaoth:    We all have to sacrifice something to preserve our world."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 6.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	  Delay(5*35);
	}
	else
	If(spec65 == 3 && CheckInventory("InventorySoulKeyFragment") == 0)
	{
	  spec65 += 1;
	  If(CheckInventory("ScriptHasKilledGrundsWarg") > 0)
	  {
	    Hudmessage(s:"Primarch Scorlag:    You value death more than you value life... but is your death worth more than your life?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 6.5, 1.5, 1.5);
	  }
	  else
	  {
		Hudmessage(s:"Primarch Scorlag:    You value life more than you value death... but is your life worth more than your death?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 6.5, 1.5, 1.5);
	  }
	  PlaySound(0, "Primarch/BlueB", CHAN_AUTO);
	  Delay(9*35);
	  Hudmessage(s:"Abhaoth:    All our lives will be worthless if we fail to stop them, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(5*35);
	}
}
//Final Call
Script 66 (void)
{
	ACS_Terminate(56, 0);
	ACS_Execute(48, 0, 0, 0, 0);
	Hudmessage(s:"Abhaoth:    At long last... release the cell lock! I believe the time has come for us to meet in the flesh."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
}
//Soul Keys
Script 64 (void)
{
  ACS_Terminate(58, 0);
  spec64 += 1;
  If(CheckInventory("InventorySoulKeyFragment") == 2)
  {
	  Hudmessage(s:"Abhaoth:    Yes! That's one of the soul locks! Keep going..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 4.5, 0.2, 0.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	  Delay(5*35);
	  Hudmessage(s:"Primarch Elzriel:    Come now, oh great Bonebreaker! Can you really trust the shadow?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.84, 7.5, 0.2, 0.5);
	  PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
	  Delay(8*35);
	  Hudmessage(s:"Primarch Erudin:    Can she trust any of us at all?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.84, 4.5, 0.2, 2.5);
	  PlaySound(0, "Primarch/RedB", CHAN_AUTO);
	  Delay(8*35);
  }
  else
  If(CheckInventory("InventorySoulKeyFragment") == 1)
  {
	  Hudmessage(s:"Abhaoth:    You are getting closer! One last lock to go."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 0.2, 0.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	  Delay(6*35);
	  Hudmessage(s:"Primarch Gaun:    Hurry up, mongrel! Charge, slash, kill! You can still earn yourself a forgotten hero's death!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.84, 7.5, 0.5, 1.5);
	  PlaySound(0, "Primarch/GreenA", CHAN_AUTO);
	  Delay(9*35);
  }
  else
  If(CheckInventory("InventorySoulKeyFragment") == 0)
  {
	  Hudmessage(s:"Abhaoth:    Yes! The vault is open! Come! Release me from this torturous cell..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 0.2, 0.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	  Delay(6*35);
	  Hudmessage(s:"Primarch Adur:    The prison tower is in your reach, noble knight! But is it a princess you're freeing? Or a hag?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.84, 7.5, 0.5, 1.5);
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Delay(9*35);
  }
  spec64 -= 1;
}
//Abhaoth Dialogue
int dial68 = 8;
Script 68 (void)
{
  If(dial68 % 8 == 0)
  {
	Hudmessage(s:"Abhaoth:    Now that he can no longer siphon my powers, you may stand a chance! Go! Slay the Baron!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	PlaySound(423, "Abhaoth/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 1)
  {
	Hudmessage(s:"Abhaoth:    Nithriel is attempting to summon her ancestors from beyond the Void... you must stop her!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	//PlaySound(423, "Reaver/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 2)
  {
	Hudmessage(s:"Abhaoth:    You have no time to waste! If they succeed in their mad plan, we will all be decimated!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	PlaySound(423, "Abhaoth/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 3)
  {
	Hudmessage(s:"Abhaoth:    I am too weak to join you... the burden of our future rests upon your shoulders now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	//PlaySound(423, "Reaver/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 4)
  {
	Hudmessage(s:"Abhaoth:    I tried to stop them... guess you can tell how that went. But there is still hope in you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	//PlaySound(423, "Reaver/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 5)
  {
	Hudmessage(s:"Abhaoth:    If demons don't overtake the world, then Nithriel will. She is vulnerable now... kill her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	PlaySound(423, "Abhaoth/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 6)
  {
	Hudmessage(s:"Abhaoth:    I will do everything I can to protect you from their mind tricks. Keep me in your mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	//PlaySound(423, "Reaver/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
  else
  If(dial68 % 8 == 7)
  {
	Hudmessage(s:"Abhaoth:    Go, Zan... take the elevator to the top of the spire. That's where the summoning takes place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.2, 0.5);
	PlaySound(423, "Abhaoth/Hmm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	dial68 += 1;
	Delay(2*35);
  }
}


//LOWER CITADEL
//Abhaoth Vault
int spec37 = 0;
Script 37 (void)
{
	SetLineSpecial(413, 0, 0, 0, 0, 0, 0);
	PlaySound(414, "Switches/Switch2", CHAN_AUTO);
	FloorAndCeiling_LowerByValue(223, 9999, 32);
	FloorAndCeiling_RaiseByValue(221, 9999, 32);
	Radius_Quake(1, 12, 0, 1, 0);
	SetWeapon("Fists");
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(16);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(50);
	PlaySound(0, "Ambient/BuildUp", CHAN_AUTO);
	FloorAndCeiling_LowerByValue(221, 4, 22);
	FloorAndCeiling_LowerByValue(223, 4, 22);
	Floor_LowerByValue(415, 4, 22);
	TagWait(415);
	ChangeFloor(215, "MoltenSp");
	PlaySound(414, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(4, 16, 0, 1, 0);
	Delay(50);
	ChangeFloor(213, "MoltenSp");
	ChangeCeiling(213, "MoltenSp");
	ChangeCeiling(224, "MoltenSp");
	PlaySound(416, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(3, 20, 0, 1, 0);
	Delay(50);
	ChangeFloor(212, "MoltenSp");
	PlaySound(417, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(2, 24, 0, 1, 0);

	Delay(70);
	PlaySound(203, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(1, 24, 0, 1, 0);
	Thing_Remove(200);
	Thing_Activate(203);
	SetLineTexture(206, SIDE_FRONT, TEXTURE_BOTTOM, "MoltenSp");
	Delay(70);
	PlaySound(204, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(1, 24, 0, 1, 0);
	Thing_Remove(201);
	Thing_Activate(204);
	SetLineTexture(207, SIDE_FRONT, TEXTURE_BOTTOM, "MoltenSp");
	Delay(70);
	PlaySound(205, "Interaction/FireBlow", CHAN_AUTO);
	Radius_Quake(1, 24, 0, 1, 0);
	Thing_Remove(202);
	Thing_Activate(205);
	SetLineTexture(208, SIDE_FRONT, TEXTURE_BOTTOM, "MoltenSp");
	Delay(105);
	PlaySound(419, "Ambient/Impact", CHAN_AUTO);
	SetLineTexture(422, SIDE_FRONT, TEXTURE_BOTTOM, "MoltenSp");
	SetLineTexture(422, SIDE_FRONT, TEXTURE_TOP, "MoltenSp");
	Radius_Quake(6, 24, 0, 1, 0);
	Delay(35);
	Floor_LowerByValue(418, 16, 96);
	Ceiling_RaiseByValue(418, 16, 96);
	SpawnSpotForced("DustPuff", 419, 0, 0);
	TagWait(418);
	PlaySound(419, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(1, 70, 0, 1, 0);
	Delay(70);
	Floor_LowerByValue(230, 6, 176);
	Ceiling_RaiseByValue(420, 6, 176);
	Ceiling_LowerByValue(427, 2, 91);
	SetActorFlag(421, "NOGRAVITY", 0);
	SetActorFlag(421, "FLOAT", 0);
	SetActorFlag(421, "FLOATBOB", 0);
	SetActorFlag(423, "NOGRAVITY", 0);
	FadeTo(255, 255, 255, 1.0, 7.0);
	Radius_Quake(2, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(3, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(4, 35, 0, 1, 0);
	SetMusic("Htrack10", 0, 0);
	Delay(35);
	Radius_Quake(5, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(6, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(7, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(8, 35, 0, 1, 0);
	Delay(35);
	Radius_Quake(9, 35, 0, 1, 0);
	Delay(6*35);
    SetActorAngle(0, 0.25);
    SetActorPitch(0, 0.0);
	Thing_Remove(421);
	SetActorFlag(423, "INVISIBLE", 0);
	SetLineTexture(425, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(425, SIDE_BACK, TEXTURE_MIDDLE, "");
	Teleport_NoFog(424, 1, 0);
	Delay(35);
	Thing_Destroy(850, 1, 0);
	FadeTo(255, 255, 255, 0.0, 3.0);
	Delay(110);
	Hudmessage(s:"Abhaoth:    Well... who did you expect?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 3.0, 0.5, 5.0);
	PlaySound(423, "Abhaoth/Hm", CHAN_AUTO, 1.0, false, ATTN_NONE);
	FadeTo(0, 0, 0, 1.0, 6.0);
	Delay(6*35);
	Delay(210);
	FadeTo(0, 0, 0, 0.0, 5.0);
	SetActorState(423, "Exhausted", 0);
	Hudmessage(s:"Abhaoth:    I... they drained me of all power. Go without me! Take the elevator to the top of the spire..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 7.5, 0.5, 3.5);
	PlaySound(423, "Reaver/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);

    Delay(50);
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);

    spec37 += 1;
	FloorAndCeiling_RaiseByValue(211, 9999, 64);
	Thing_Activate(406);
	Thing_Activate(407);
	//PlaySound(407, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);
    SetLineTexture(405, SIDE_FRONT, TEXTURE_BOTTOM, "Mural04B");
	SetLineSpecial(401, ACS_Execute, 59, 0, 0, 0, 0);
	SetActorFlag(404, "INVISIBLE", 0);
	SetActorFlag(851, "INVISIBLE", 0);
	SpawnSpotForced("DemonPortalPentagram", 408, 0, 0);
	SpawnSpotForced("MarkerExitAlt", 408, 0, 0);
}
//Abhaoth Vault Forcefields
int spec63 = 0;
Script 63 (void)
{
	Print(s:"The soul screen blocks your passage.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
	If(spec63 == 0 && spec58 == 0)
	{
	  spec63 += 1;
	  Delay(70);
	  Hudmessage(s:"Abhaoth:    The barrier won't yield until you put all three soul fragments in place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 0.5, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	  Delay(6*35);
	}
}

//West Vault
Script 52 (void)
{
  If(GetActorZ(0) > -2785.0)
  {
	 spec37 += 1;
	 SetWeapon("Fists");
	 SetLineSpecial(327, 0, 0, 0, 0, 0, 0);
	 TakeInventory("InventorySoulkeyFragment", 1);
	 PlaySound(0, "Magic/ShadowsActivate", CHAN_AUTO);
	 Thing_Activate(331);
	 Radius_Quake(1, 350, 0, 1, 0);
	 FadeTo(150, 50, 140, 1.0, 1.0);
	 Delay(35);
	 SetActorFlag(0, "NODAMAGE", 1);
	 SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	 Delay(35);
	 ACS_Execute(64, 0, 0, 0, 0);
	 Delay(8*35);
	 SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	 SetActorFlag(0, "NODAMAGE", 0);
	 SpawnSpotForced("DemonSoulFragment", 332, 0, 0);
	 SpawnSpotForced("ExplosionMagicPurple", 332, 0, 0);
	 Thing_Activate(333);
	 PlaySound(332, "Magic/Dispel", CHAN_AUTO);
     Radius_Quake(6, 35, 0, 1, 0);
	 FloorAndCeiling_RaiseByValue(344, 9999, 2000);
	 FadeTo(255, 150, 200, 0.0, 0.5);
	 SetLineSpecial(322, 0, 0, 0, 0, 0, 0);
	 Line_SetBlocking(322, 0, BLOCKF_EVERYTHING);
	 SetLineTexture(322, SIDE_FRONT, TEXTURE_MIDDLE, "");
	 SetLineTexture(322, SIDE_BACK, TEXTURE_MIDDLE, "");

	 Delay(85);
	 SpawnSpotForced("Glutton", 341, 0, 128);
	 SpawnSpotForced("HedonTeleportFogDemon", 341, 0, 0);
     PlaySound(341, "misc/teleport", CHAN_AUTO);
	 NoiseAlert(0, 0);
	 Delay(35);
	 SpawnSpotForced("Hellion", 342, 0, 128);
	 SpawnSpotForced("HedonTeleportFogDemon", 342, 0, 0);
     PlaySound(342, "misc/teleport", CHAN_AUTO);
	 NoiseAlert(0, 0);
	 Radius_Quake(5, 140, 0, 1, 0);

	 SetLineTexture(340, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	 SetLineTexture(340, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
     SpawnProjectile(338, "JunkBrokenGlassA", random(96,160), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(338, "JunkBrokenGlassB", random(96,160), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 338, 0, 0);
	 PlaySound(338, "Interaction/GlassBreak", CHAN_AUTO);
     SpawnProjectile(339, "JunkBrokenGlassA", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(339, "JunkBrokenGlassB", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 339, 0, 0);
	 PlaySound(339, "Interaction/GlassBreak", CHAN_AUTO);
	 Delay(12);

	 SetLineTexture(345, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	 SetLineTexture(345, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
     SpawnProjectile(346, "JunkBrokenGlassA", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnProjectile(346, "JunkBrokenGlassB", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnSpotForced("DustCloud", 346, 0, 0);
	 PlaySound(346, "Interaction/GlassBreak", CHAN_AUTO);
     SpawnProjectile(347, "JunkBrokenGlassA", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(347, "JunkBrokenGlassB", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 347, 0, 0);
	 PlaySound(347, "Interaction/GlassBreak", CHAN_AUTO);
	 Delay(16);

	 SetLineTexture(348, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	 SetLineTexture(348, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
     SpawnProjectile(349, "JunkBrokenGlassA", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnProjectile(349, "JunkBrokenGlassB", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnSpotForced("DustCloud", 349, 0, 0);
	 PlaySound(349, "Interaction/GlassBreak", CHAN_AUTO);
     SpawnProjectile(350, "JunkBrokenGlassA", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(350, "JunkBrokenGlassB", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 350, 0, 0);
	 PlaySound(350, "Interaction/GlassBreak", CHAN_AUTO);
	 Delay(24);

	 SetLineTexture(351, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	 SetLineTexture(351, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
     SpawnProjectile(352, "JunkBrokenGlassA", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnProjectile(352, "JunkBrokenGlassB", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnSpotForced("DustCloud", 352, 0, 0);
	 PlaySound(352, "Interaction/GlassBreak", CHAN_AUTO);
     SpawnProjectile(353, "JunkBrokenGlassA", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(353, "JunkBrokenGlassB", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 353, 0, 0);
	 PlaySound(353, "Interaction/GlassBreak", CHAN_AUTO);
	 Delay(20);

	 SetLineTexture(354, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	 SetLineTexture(354, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
     SpawnProjectile(355, "JunkBrokenGlassA", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnProjectile(355, "JunkBrokenGlassB", random(96,160), random(10,20), random(-3,0), 20, 0);
	 SpawnSpotForced("DustCloud", 355, 0, 0);
	 PlaySound(355, "Interaction/GlassBreak", CHAN_AUTO);
     SpawnProjectile(356, "JunkBrokenGlassA", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnProjectile(356, "JunkBrokenGlassB", random(random(0,48),random(208,255)), random(10,20), random(-3,0), 20, 901);
	 SpawnSpotForced("DustCloud", 356, 0, 0);
	 PlaySound(356, "Interaction/GlassBreak", CHAN_AUTO);

	 If(spec37 == 3)
	 {
		 //Thing_Spawn(357, 65010, 192, 850);
	     //Thing_Spawn(358, 65051, 192, 850);
	 }
  }
}
//West Vault Monster Spawn
Script 53 (void)
{
	SetLineSpecial(361, 0, 0, 0, 0, 0, 0);
	If(GameSkill() > SKILL_VERY_HARD)
	{
	SetActorFlag(362, "NOBLOCKMAP", 0);
	PlaySound(362, "Magic/ShadowsActivate", CHAN_AUTO, 0.4);
	SetActorProperty(362, APROP_Alpha, 0.05);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.1);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.15);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.2);
	Delay(5);
	Thing_Activate(362);
	SetActorProperty(362, APROP_Alpha, 0.25);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.3);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.35);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.4);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.45);
	Delay(5);
	SetActorProperty(362, APROP_Alpha, 0.5);
	Delay(50);
	SpawnSpotForced("Genius", 359, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 359, 0, 0);
	PlaySound(359, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 360, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 360, 0, 0);
	PlaySound(360, "misc/teleport", CHAN_AUTO);
	Delay(8*35);
	Thing_Spawn(431, 65010, 64, 0);
	SpawnSpotForced("Hellblaze", 363, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 363, 0, 0);
	PlaySound(363, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	}
}

//South Vault
Script 51 (void)
{
  If(GetActorZ(0) > -2337.0)
  {
	 spec37 += 1;
	 SetWeapon("Fists");
	 SetLineSpecial(326, 0, 0, 0, 0, 0, 0);
	 TakeInventory("InventorySoulkeyFragment", 1);
	 PlaySound(0, "Magic/ShadowsActivate", CHAN_AUTO);
	 Thing_Activate(328);
	 Radius_Quake(1, 350, 0, 1, 0);
	 FadeTo(150, 50, 140, 1.0, 1.0);
	 Delay(35);
	 SetActorFlag(0, "NODAMAGE", 1);
	 SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	 Delay(35);
	 ACS_Execute(64, 0, 0, 0, 0);
	 Delay(8*35);
	 SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	 SetActorFlag(0, "NODAMAGE", 0);
	 SpawnSpotForced("DemonSoulFragment", 329, 0, 0);
	 SpawnSpotForced("ExplosionMagicPurple", 329, 0, 0);
	 Thing_Activate(330);
	 PlaySound(329, "Magic/Dispel", CHAN_AUTO);
     Radius_Quake(6, 35, 0, 1, 0);
	 FadeTo(255, 150, 200, 0.0, 0.5);
	 SetLineSpecial(323, 0, 0, 0, 0, 0, 0);
	 Line_SetBlocking(323, 0, BLOCKF_EVERYTHING);
	 SetLineTexture(323, SIDE_FRONT, TEXTURE_MIDDLE, "");
	 SetLineTexture(323, SIDE_BACK, TEXTURE_MIDDLE, "");

	 Delay(70);
	 Radius_Quake(1, 70, 0, 1, 0);
	 Delay(35);
	 Thing_Destroy(371, 1, 0);
	 PlaySound(371, "Interaction/CorruptDeath", CHAN_AUTO, 1.0, false, ATTN_NONE);
	 Delay(35);
	 Thing_Destroy(370, 1, 0);
	 PlaySound(370, "Interaction/CorruptDeath", CHAN_AUTO, 1.0, false, ATTN_NONE);
	 Radius_Quake(6, 140, 0, 1, 0);
	 Delay(50);
	 FloorAndCeiling_RaiseByValue(295, 8, 1280);
	 SetLineSpecial(429, 0, 0, 0, 0, 0, 0);
	 SetLineSpecial(378, ACS_Execute, 55, 0, 0, 0, 0);
	 Thing_Destroy(300, 1, 0);
	 PlaySound(300, "Interaction/CorruptDeath", CHAN_AUTO, 1.0, false, ATTN_NONE);
	 Thing_Destroy(301, 1, 0);
	 SpawnSpotForced("Golem", 302, 655, 0);
	 SetActorState(655, "AttackRoll", 0);
	 Delay(105);

	 If(spec37 == 3)
	 {
		 //Thing_Spawn(357, 65010, 192, 0);
	     //Thing_Spawn(358, 65051, 192, 0);
	 }
  }
}
//South Vault Monster Spawn
Script 55 (void)
{
	 SetLineSpecial(378, 0, 0, 0, 0, 0, 0);
	 Thing_Spawn(375, 65004, 192, 0);
	 Delay(35);
	 SpawnSpotForced("Hellblaze", 372, 0, 192);
	 SpawnSpotForced("HedonTeleportFogDemon", 372, 0, 0);
	 PlaySound(372, "misc/teleport", CHAN_AUTO);
	 Delay(35);
	 SpawnSpotForced("PitLord", 373, 0, 192);
	 SpawnSpotForced("HedonTeleportFogDemon", 373, 0, 0);
	 PlaySound(373, "misc/teleport", CHAN_AUTO);
	 Delay(35);
	 SpawnSpotForced("ForgeElemental", 376, 0, 64);
	 SpawnSpotForced("HedonTeleportFogDemon", 376, 0, 0);
	 PlaySound(376, "misc/teleport", CHAN_AUTO);
	 Delay(35);

     Thing_Spawn(377, 65000, 128, 0);
	 SetActorFlag(374, "NOBLOCKMAP", 0);
	 PlaySound(374, "Magic/ShadowsActivate", CHAN_AUTO, 0.4);
	 SetActorProperty(374, APROP_Alpha, 0.05);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.1);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.15);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.2);
	 Delay(5);
	 Thing_Activate(374);
	 SetActorProperty(374, APROP_Alpha, 0.25);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.3);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.35);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.4);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.45);
	 Delay(5);
	 SetActorProperty(374, APROP_Alpha, 0.5);
}

//East Vault
int spec50 = 0;
Script 50 (void)
{
  If(GetActorZ(0) > -2577.0)
  {
    If(spec50 > 0)
	{
	  spec37 += 1;
	  SetWeapon("Fists");
	  SetLineSpecial(325, 0, 0, 0, 0, 0, 0);
	  TakeInventory("InventorySoulkeyFragment", 1);
	  PlaySound(0, "Magic/ShadowsActivate", CHAN_AUTO);
	  Thing_Activate(334);
	  Radius_Quake(1, 350, 0, 1, 0);
	  FadeTo(150, 50, 140, 1.0, 1.0);
	  Delay(35);
	  SetActorFlag(0, "NODAMAGE", 1);
	  SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	  Delay(35);
	  ACS_Execute(64, 0, 0, 0, 0);
	  Delay(8*35);
	  SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	  SetActorFlag(0, "NODAMAGE", 0);
	  SpawnSpotForced("DemonSoulFragment", 335, 0, 0);
	  SpawnSpotForced("ExplosionMagicPurple", 335, 0, 0);
	  Thing_Activate(336);
	  PlaySound(332, "Magic/Dispel", CHAN_AUTO);
      Radius_Quake(6, 35, 0, 1, 0);
	  FadeTo(255, 150, 200, 0.0, 0.5);
	  SetLineSpecial(324, 0, 0, 0, 0, 0, 0);
	  Line_SetBlocking(324, 0, BLOCKF_EVERYTHING);
	  SetLineTexture(324, SIDE_FRONT, TEXTURE_MIDDLE, "");
	  SetLineTexture(324, SIDE_BACK, TEXTURE_MIDDLE, "");
	  Line_SetBlocking(337, 0, BLOCKF_EVERYTHING);
	  SetLineTexture(337, SIDE_FRONT, TEXTURE_MIDDLE, "");
	  SetLineTexture(337, SIDE_BACK, TEXTURE_MIDDLE, "");

	  SpawnSpotForced("Glutton", 397, 0, 0);
	  SpawnSpotForced("HedonTeleportFogDemon", 397, 0, 0);
      PlaySound(397, "misc/teleport", CHAN_AUTO);
	  SpawnSpotForced("Hellblaze", 396, 0, 0);
	  SpawnSpotForced("HedonTeleportFogDemon", 396, 0, 0);
      PlaySound(396, "misc/teleport", CHAN_AUTO);

	  If(spec37 == 3)
	  {
		 //Thing_Spawn(357, 65051, 192, 0);
	     //Thing_Spawn(358, 65010, 192, 0);
	  }
	}
	else
	{
	  Print(s:"The soul key crystals are not aligned.");
      PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  Delay(35);
	}
  }
}
Script 39 (void)
{
	If(GetActorZ(0) < -4824.0)
	{
		SetLineSpecial(254, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(386, ACS_Execute, 57, 0, 0, 0, 0);
		FloorAndCeiling_LowerByvalue(255, 64, 48);
		PlaySound(0, "Switches/Switch1", CHAN_AUTO);
		Line_SetBlocking(337, BLOCKF_EVERYTHING, 0);
	    SetLineTexture(337, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	    SetLineTexture(337, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
		TagWait(255);
		Radius_Quake(5, 105, 0, 1, 0);
		Delay(20);
		//Autosave();
		Delay(70);
		Floor_RaiseByValue(256, 4, 2296);
		Delay(1*35);
		ACS_Execute(56, 0, 0, 0, 0);
		Delay(3*35);
		ACS_Execute(40, 0, 0, 0, 0);
		Radius_Quake(5, 90, 0, 1, 0);
		Delay(70);
		PlaySound(259, "Interaction/Boil", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Ceiling_LowerByValue(249, 9999, 65);
		Ceiling_RaiseByValue(250, 9999, 65);
		TagWait(250);
		Ceiling_RaiseByValue(250, 6, 1680);
		TagWait(256);
		spec50 += 1;
	}
}
//East Vault Monster Spawn
Script 56 (void)
{
	SpawnSpotForced("HedonTeleportFog", 379, 0, 0);
	SpawnSpotForced("IronMaiden", 379, 656, 128);
	GiveActorInventory(656, "IsGhost", 1);
	SetActorProperty(656, APROP_RENDERSTYLE, STYLE_Shadow);
	Delay(24);
	SpawnSpotForced("PitLord", 380, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 380, 0, 0);
    PlaySound(380, "misc/teleport", CHAN_AUTO);
	Delay(16);
	SpawnSpotForced("Glutton", 381, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 381, 0, 0);
    PlaySound(381, "misc/teleport", CHAN_AUTO);
	Delay(35);
	Thing_spawn(385, 65001, 192, 0);
	Delay(35);
	SpawnSpotForced("SniperHellion", 383, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 383, 0, 0);
    PlaySound(383, "misc/teleport", CHAN_AUTO);
	Delay(70);
	Thing_spawn(382, 65000, 128, 0);
	Delay(105);
	Thing_spawn(384, 65004, 0, 0);
}
Script 57 (void)
{
	SetLineSpecial(386, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("PitLord", 387, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 387, 0, 0);
    PlaySound(387, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 388, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 388, 0, 0);
    PlaySound(388, "misc/teleport", CHAN_AUTO);
	Delay(2*35);
	SpawnSpotForced("Cerberus", 390, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 390, 0, 0);
    PlaySound(390, "misc/teleport", CHAN_AUTO);
	Delay(2*35);
	Thing_spawn(392, 65004, 0, 0);
	Delay(2*35);
	Thing_spawn(393, 65014, 0, 0);
	Delay(6*35);
	SpawnSpotForced("Hellblaze", 389, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 389, 0, 0);
    PlaySound(389, "misc/teleport", CHAN_AUTO);
	Delay(6*35);
	SpawnSpotForced("Glutton", 394, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 394, 0, 0);
    PlaySound(394, "misc/teleport", CHAN_AUTO);
	Delay(6*35);
	If(GameSkill() >= SKILL_VERY_HARD)
	{
	  Thing_spawn(395, 65008, 0, 657);
	  GiveActorInventory(657, "IsGhost", 1);
	  SetActorProperty(657, APROP_RENDERSTYLE, STYLE_Shadow);
	  Delay(6*35);
	}
	Delay(6*35);
	SpawnSpotForced("Glutton", 390, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 390, 0, 0);
    PlaySound(390, "misc/teleport", CHAN_AUTO);
	Delay(12*35);
	Thing_spawn(391, 65010, 0, 0);
	Delay(12*35);
	SpawnSpotForced("Hellion", 392, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 392, 0, 0);
    PlaySound(392, "misc/teleport", CHAN_AUTO);
	Delay(12*35);
	SpawnSpotForced("Hellblaze", 388, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 388, 0, 0);
    PlaySound(388, "misc/teleport", CHAN_AUTO);
}

//Great Spire Elevator
Script 61 (void)
{
  If(GetActorZ(0) < -2896.0)
  {
	If(spec37 > 3)
	{
		Line_SetBlocking(792, BLOCKF_EVERYTHING, 0);
		Line_SetBlocking(792, BLOCKF_PROJECTILES, 0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(16);
		SetPlayerProperty(0, 1, PROP_FROZEN);
		Floor_LowerByValue(410, 64, 44);
		TagWait(410);
		Radius_Quake(5, 16, 0, 1, 0);
		PlaySound(406, "Ambient/Impact", CHAN_AUTO);
		Thing_Remove(407);
		Delay(32);
		PlaySound(406, "Ambient/Rust", CHAN_AUTO);
		Floor_LowerByValue(410, 32, 40);
		Floor_LowerByValue(411, 32, 40);
		TagWait(411);
		Delay(50);
		Floor_LowerByValue(410, 32, 16);
		Floor_LowerByValue(411, 32, 16);
		Floor_LowerByValue(412, 32, 16);
		TagWait(412);
		PlaySound(409, "Ambient/Crash", CHAN_AUTO);
		SpawnSpotForced("DustPuff", 409, 0, 0);
		Thing_Remove(406);
		Radius_Quake(10, 35, 0, 1, 0);
		Delay(105);
		SetActorFlag(853, "RELATIVETOFLOOR", 1);
		Floor_RaiseByValue(410, 8, 640);
		Floor_RaiseByValue(411, 8, 640);
		Floor_RaiseByValue(412, 8, 640);
		Delay(105);
		FadeTo(0, 0, 0, 1.0, 10.0);
		Delay(8*35);
		ACS_Execute(48, 0, 0, 0, 0);
		Delay(2*35);
		SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
		SetActorAngle(0, 0.25);
		SetActorPitch(0, 0.0);
		TakeInventory("IsPlaying", 1);
		Thing_Remove(901);
		If(GetActorProperty(0, APROP_Health) <= 0)
		{
			Terminate;
		}
		Delay(35);

		SetActorState(702, "SpawnLoopHostile", 0);
		TakeInventory("IsPlaying", 1);
		FadeTo(0, 0, 0, 1.0, 0.0);
		FadeTo(0, 0, 0, 0.0, 5.0);

		Teleport_NoFog(700, 1, 0);
		SetActorPitch(0, 0.0);

		  If(CheckInventory("ScriptYzbethRejected") > 0)
	      {
		  ChangeCamera(836, 0, 0);
		  Thing_Activate(836);

		  Delay(35);

		  Hudmessage(s:"Eraanthe:    Urgh! You slithering sack of slugs! This isn't over!!! One day, I will have my revenge..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.5, 1.0);
	      PlaySound(701, "Eraanthe/Urgh", CHAN_AUTO);
	      Delay(6*35);
		  SetActorFlag(701, "INVULNERABLE", 0);
		  SetActorFlag(701, "NODAMAGE", 0);
		  SetActorFlag(701, "BUDDHA", 0);
		  Delay(25);
		  Thing_Destroy(701, 0, 0);
		  Delay(45);
		  //SpawnSpotForced("HedonTeleportFogDemon", 701, 0, 0);
		  //Thing_Remove(701);
	      //PlaySound(701, "misc/teleport", CHAN_AUTO);
		  }
		  else
		  {
			  Thing_Remove(701);
			  SetActorAngle(702, 0.75);
		  }

		  ChangeCamera(846, 0, 0);
		  Thing_Activate(846);

		  Delay(16);

          If(CheckInventory("ScriptYzbethRejected") > 0)
	      {
		    Hudmessage(s:"Nithriel:    Stomp her, you fool! Why did you let her escape?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 1.5);
          }
		  else
		  {
		    Hudmessage(s:"Nithriel:    She has released Abhaoth! Fool! How could you let this happen!?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 4.5, 0.2, 1.5);
          }
		  PlaySound(506, "Nithriel/Active", CHAN_AUTO);
		  Delay(6*35);


		  Hudmessage(s:"Blue Baron:    Your tone is ripe with arrogance. You would do well to uphold our pact."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.0, 1.2, 2.0);
          PlaySound(702, "BlueBaron/Growl", CHAN_AUTO);
		  Delay(2*35);
		  Floor_RaiseByvalue(432, 5, 664);
		  Delay(5*35);
		  FadeTo(0, 0, 0, 1.0, 1.0);
		  Delay(1*35);

		  ChangeCamera(856, 0, 0);
		  Thing_Activate(856);
		  FadeTo(0, 0, 0, 0.0, 1.0);

		  Hudmessage(s:"Nithriel:    Oh, dear Baron. As long as our interests remain aligned, I have no reason to do otherwise."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 6.5, 0.2, 0.5);
          PlaySound(506, "Nithriel/Laugh", CHAN_AUTO);
		  Delay(7*35);
		  Hudmessage(s:"The beacon has enough energy. Activate the Disk! Let us not keep our progenitors waiting."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 6.5, 0.2, 1.5);
          PlaySound(506, "Nithriel/Active", CHAN_AUTO);
		  Delay(3*35);
		  Floor_LowerByValue(438, 8, 128);
		  Delay(35);
		  FadeTo(0, 0, 0, 1.0, 4.0);
		  Delay(4*35);

		  ChangeCamera(866, 0, 0);
		  Thing_Activate(866);
		  Delay(35);

		  Hudmessage(s:"Blue Baron:    Travelling without full power poses a great risk. Stay the course... I won't allow her to interfere."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.0, 1.2, 3.0);
          PlaySound(702, "BlueBaron/Grr", CHAN_AUTO, 1.0, false, ATTN_NONE);
		  Delay(35);
		  FadeTo(0, 0, 0, 0.0, 8.0);
		  Thing_Remove(702);
		  TagWait(432);
		  Radius_Quake(1, 8, 0, 10, 866);
		  Delay(16);
		  SpawnSpotForced("BlueBaron", 703, 666, 192);
		  FadeTo(255, 255, 255, 1.0, 4.0);
		  Radius_Quake(3, 175, 0, 10, 866);
		  Delay(35);

		  Delay(35);
		  Thing_Deactivate(666);
		  Delay(50);
		  Autosave();
		  Delay(20);
		  Thing_Remove(666);
		  FadeTo(255, 255, 255, 0.0, 0.4);

		ChangeCamera(0, 0, 1);
		GiveInventory("IsPlaying", 1);
		SetPlayerProperty(0, 0, PROP_FROZEN);
		SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
		SetActorProperty(0, APROP_Friction, 1.0);
		SetActorProperty(0, APROP_Speed, 1.0);

		SpawnSpotForced("BlueBaron", 703, 666, 192);
		SetActorFlag(666, "BUDDHA", 1);
		SetMusic("HTrack36", 0);
		ACS_Execute(118, 0, 0, 0, 0);
		ACS_Execute(119, 0, 0, 0, 0);
		Delay(35);
		Line_SetBlocking(739, 0, BLOCKF_SIGHT);
		ACS_Execute(109, 0, 0, 0, 0);
		ACS_Execute(110, 0, 0, 0, 0);
		Delay(35);
		ACS_Execute(120, 0, 0, 0, 0);
		SpawnSpotForced("PitLordCommander", 762, 667, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 762, 0, 0);
	    PlaySound(762, "misc/teleport", CHAN_AUTO);
		Delay(35);
		SpawnSpotForced("Glutton", 763, 667, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 763, 0, 0);
	    PlaySound(763, "misc/teleport", CHAN_AUTO);
		Delay(5*35);
		SpawnSpotForced("Hellion", 764, 667, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 764, 0, 0);
	    PlaySound(764, "misc/teleport", CHAN_AUTO);
		Delay(8);
		NoiseAlert(0, 0);
		Delay(20*35);
		SpawnSpotForced("Hellblaze", 765, 667, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 765, 0, 0);
	    PlaySound(765, "misc/teleport", CHAN_AUTO);
		Delay(8);
		NoiseAlert(0, 0);

	}
	else
	{
	  Print(s:"The elevator isn't powered up.");
      PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  Delay(35);
	}
  }
}

//Lava Damage
Script 40 (void)
{
	SectorDamage(250, 8, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//Jump Pads
Script 38 (void)
{
	PlaySound(0, "Magic/Dispel", CHAN_AUTO);
	SpawnSpotForced("ExplosionMagicPurple", 0, 0, 0);
}

//Giant Vent
Script 41 (void)
{
	SpawnProjectile(random(271, 274), "MagicSparkCyan", 0, 400, 0, 0, 0);
	SectorDamage(277, 1000, "Normal", "", DAMAGE_NONPLAYERS);
	Delay(8);
	Restart;
}
int spec42 = 0;
Script 42 (void)
{
  If(GetActorZ(0) < -2888.0)
  {
   If(spec42 == 0)
   {
	   spec42 = 1;
	   PlaySound(0, "Interaction/MachineOn", CHAN_AUTO);
	   SetLineTexture(278, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_UP");
	   ACS_Terminate(41, 0);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 400, 0, 0, 0);
	   Delay(1);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 390, 0, 0, 0);
	   Delay(2);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 380, 0, 0, 0);
	   Delay(3);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 370, 0, 0, 0);
	   Delay(4);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 360, 0, 0, 0);
	   Delay(5);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 350, 0, 0, 0);
	   Delay(6);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 340, 0, 0, 0);
	   Delay(7);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 330, 0, 0, 0);
	   Delay(8);

	   Sector_SetWind(270, 0, 0, 0);

	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 320, 0, 0, 0);
	   Delay(9);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 280, 0, 0, 0);
	   Delay(10);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 240, 0, 0, 0);
	   Delay(11);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 200, 0, 0, 0);
	   Delay(12);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 160, 0, 0, 0);
	   Delay(13);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 120, 0, 0, 0);
	   Delay(14);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 80, 0, 0, 0);
	   Delay(15);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 80, 0, 0, 0);
	   Delay(16);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   Thing_Deactivate(276);
   }
   else
   {
	   spec42 = 0;
	   PlaySound(0, "Interaction/MachineOn", CHAN_AUTO);
	   SetLineTexture(278, SIDE_FRONT, TEXTURE_BOTTOM, "SW05_DN");
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   Delay(16);
	   Thing_Activate(276);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   Delay(15);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 80, 0, 0, 0);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 120, 0, 0, 0);
	   Delay(14);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 160, 0, 0, 0);
	   Delay(13);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 200, 0, 0, 0);
	   Delay(12);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 240, 0, 0, 0);
	   Delay(11);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 280, 0, 0, 0);
	   Delay(10);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 320, 0, 0, 0);
	   Delay(9);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 330, 0, 0, 0);
	   Delay(8);

	   Sector_SetWind(270, 400, 0, 0);

	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 340, 0, 0, 0);
	   Delay(7);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 350, 0, 0, 0);
	   Delay(6);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 360, 0, 0, 0);
	   Delay(5);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 370, 0, 0, 0);
	   Delay(4);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 380, 0, 0, 0);
	   Delay(3);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A2");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 390, 0, 0, 0);
	   Delay(2);
	   SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Vent1_A1");
	   SpawnProjectile(random(271, 274), "MagicSparkCyan", 0 , 400, 0, 0, 0);
	   Delay(1);
	   ACS_Execute(41, 0, 0, 0, 0);
   }
  }
}
//Giant Vent Monster Spawn
Script 54 (void)
{
	SpawnSpotForced("Cerberus", 365, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 365, 0, 0);
	PlaySound(365, "misc/teleport", CHAN_AUTO);
	Thing_Spawn(366, 65000, 192, 0);
	Thing_Spawn(367, 65008, 192, 0);
	Delay(35);
	SetActorFlag(364, "NOBLOCKMAP", 0);
	PlaySound(364, "Magic/ShadowsActivate", CHAN_AUTO, 0.4);
	SetActorProperty(364, APROP_Alpha, 0.05);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.1);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.15);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.2);
	Delay(5);
	Thing_Activate(364);
	SetActorProperty(364, APROP_Alpha, 0.25);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.3);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.35);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.4);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.45);
	Delay(5);
	SetActorProperty(364, APROP_Alpha, 0.5);
	Delay(6*35);
	SpawnSpotForced("Hellion", 368, 0, 0);
	SpawnSpotForced("Hellblaze", 369, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 369, 0, 0);
	PlaySound(369, "misc/teleport", CHAN_AUTO);
}

//Experiment Vats
Script 44 (void)
{
	SetLineSpecial(299, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("Crawler", 310, 0, 64);
	Delay(16);
	Radius_Quake(3, 140, 0, 1, 0);
	Delay(105);
	Thing_Destroy(303, 1, 0);
	Thing_Remove(304);
	Delay(35);
	FloorAndCeiling_RaiseByValue(305, 4, 172);
	Thing_Activate(306);
	Ceiling_RaiseByValue(307, 16, 96);
	NoiseAlert(0, 0);
	Delay(70);
	Thing_Destroy(309, 1, 0);
	SpawnSpotForced("Golem", 308, 653, 64);
	SetActorState(653, "AttackRoll", 0);
}
Script 45 (void)
{
	Delay(16);
	PlaySound(311, "Interaction/Smother", CHAN_AUTO);
	SpawnSpotForced("SmokeGenerator", 311, 654, 0);
	Delay(35);
	Thing_Activate(311);
	Delay(70);
	Thing_Damage2(311, 1000, "Fire");
	Thing_Remove(654);
}
Script 46 (void)
{
	Delay(16);
	PlaySound(312, "Magic/RevenantActivate", CHAN_AUTO);
	SetActorProperty(313, APROP_Alpha, 0.1);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.2);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.3);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.4);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.5);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.6);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.7);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.8);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 0.9);
	Delay(5);
	SetActorProperty(313, APROP_Alpha, 1.0);
	Delay(5);
	SpawnSpotForced("FrozenHellblaze", 312, 0, 0);
	PlaySound(313, "Misc/Freeze", CHAN_AUTO);
	Thing_Remove(312);
	Delay(70);
	Thing_Damage2(312, 1000, "Ice");
}
Script 47 (void)
{
	Delay(16);
	Radius_Quake(3, 140, 0, 1, 0);
	Delay(105);
	Thing_Activate(314);
	Thing_Destroy(314, 1, 0);
}
Script 49 (void)
{
	Delay(16);
	PlaySound(316, "Interaction/Smother", CHAN_AUTO);
	SetActorProperty(316, APROP_Alpha, 0.1);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.2);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.3);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.4);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.5);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.6);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.7);
	Delay(5);
	Thing_Activate(315);
	SetActorProperty(316, APROP_Alpha, 0.8);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 0.9);
	Delay(5);
	SetActorProperty(316, APROP_Alpha, 1.0);
	Delay(5);
}

//Crystal Lab Shelves
Script 43 (void)
{
	SetLineSpecial(317, 0, 0, 0, 0, 0, 0);
	Thing_Activate(288);
	PlaySound(288, "Interaction/FireBlow", CHAN_AUTO);
	Delay(24);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(50);
	Ceiling_RaiseByValue(286, 16, 272);
	TagWait(286);
	Delay(35);
    SpawnSpotForced("Glutton", 318, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 318, 0, 0);
    PlaySound(318, "misc/teleport", CHAN_AUTO);
	Delay(105);
	Thing_Spawn(319, 65004, 192, 0);
	If(GameSkill() > SKILL_VERY_HARD)
	{
	Delay(12*35);
	Thing_Spawn(430, 65010, 192, 0);
	Delay(12*35);
	SpawnSpotForced("Hellion", 320, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 320, 0, 0);
    PlaySound(320, "misc/teleport", CHAN_AUTO);
	Delay(4*35);
	SpawnSpotForced("Cerberus", 321, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 321, 0, 0);
    PlaySound(321, "misc/teleport", CHAN_AUTO);
	}
}







//BOSS FIGHT
//SPIRE TOP
//Jump Pad Monster Corrections
Script 70 (void)
{
	SetActorFlag(0, "NOCLIP", 1);
	Delay(45);
	SetActorFlag(0, "NOCLIP", 0);
}
Script 71 (void)
{
	Delay(45);
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(15);
	SetActorProperty(0, APROP_Friction, 1.0);
}
//Drop Respawner
Script 109 (void)
{
	If(IsTIDUsed(638) == 0)
	{
		SpawnSpotForced("PowerShard", 639, 638, 0);
		SpawnSpotForced("HedonTeleportFog", 639, 0, 0);
	}
	If(IsTIDUsed(640) == 0)
	{
		SpawnSpotForced("PowerShard", 641, 640, 0);
		SpawnSpotForced("HedonTeleportFog", 641, 0, 0);
	}
	If(IsTIDUsed(642) == 0)
	{
		SpawnSpotForced("PowerShard", 643, 642, 0);
		SpawnSpotForced("HedonTeleportFog", 643, 0, 0);
	}
	If(IsTIDUsed(644) == 0)
	{
		SpawnSpotForced("PowerShard", 645, 644, 0);
		SpawnSpotForced("HedonTeleportFog", 645, 0, 0);
	}
	If(IsTIDUsed(646) == 0)
	{
		SpawnSpotForced("HealthPotionOfGreaterHealing", 647, 646, 0);
		SpawnSpotForced("HedonTeleportFog", 647, 0, 0);
	}
	If(IsTIDUsed(648) == 0)
	{
		If(GameSkill() >= SKILL_VERY_HARD || GameSkill() == SKILL_VERY_EASY)
		{
		  SpawnSpotForced("HealthPotionOfGreaterHealing", 649, 648, 0);
		}
		else
		{
		  SpawnSpotForced("HealthPotionOfGreaterHealing", 649, 648, 0);
		}
		SpawnSpotForced("HedonTeleportFog", 649, 0, 0);
	}
	If(IsTIDUsed(668) == 0)
	{
		If(GameSkill() >= SKILL_VERY_HARD || GameSkill() == SKILL_VERY_EASY)
		{
		  SpawnSpotForced("HealthPotionOfGreaterHealing", 669, 668, 0);
		}
		else
		{
		  SpawnSpotForced("HealthPotionOfGreaterHealing", 669, 668, 0);
		}
		SpawnSpotForced("HedonTeleportFog", 669, 0, 0);
	}
	If(IsTIDUsed(670) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("AmmoBox", 671, 670, 0);
		SpawnSpotForced("HedonTeleportFog", 671, 0, 0);
	}
	If(IsTIDUsed(672) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("Hellclaw", 673, 672, 0);
		SpawnSpotForced("HedonTeleportFog", 673, 0, 0);
	}
	If(IsTIDUsed(674) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("SpikeMag", 675, 674, 0);
		SpawnSpotForced("HedonTeleportFog", 675, 0, 0);
	}
	If(IsTIDUsed(676) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("FragfireCan", 677, 676, 0);
		SpawnSpotForced("HedonTeleportFog", 677, 0, 0);
	}
	If(IsTIDUsed(678) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("Boltmag", 679, 678, 0);
		SpawnSpotForced("HedonTeleportFog", 679, 0, 0);
	}
	If(IsTIDUsed(680) == 0 && GameSkill() != 5)
	{
		SpawnSpotForced("PotionBoxAcid", 681, 680, 0);
		SpawnSpotForced("HedonTeleportFog", 681, 0, 0);
	}
	Delay(20*35);
	Restart;
}
//Boss Teleporter
Script 120 (void)
{
	Switch(random(1,5))
	{
		Case 1:
		SetActorState(666, "Shift", 0);
		Delay(20);
		TeleportOther(666, 756, 0);
		Break;

		Case 2:
		SetActorState(666, "Shift", 0);
		Delay(20);
		TeleportOther(666, 757, 0);
		Break;

		Case 3:
		SetActorState(666, "Shift", 0);
		Delay(20);
		TeleportOther(666, 758, 0);
		Break;

		Case 4:
		SetActorState(666, "Shift", 0);
		Delay(20);
		TeleportOther(666, 759, 0);
		Break;

		Case 5:
		SetActorState(666, "Shift", 0);
		Delay(20);
		TeleportOther(666, 760, 0);
		Break;
	}
	Delay(random(8,24)*35);
	Restart;
}

int spec110 = 35;
//Monster Respawner
Script 110 (void)
{
	SpawnSpotForced("Cerberus", 683, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 683, 0, 0);
    PlaySound(683, "misc/teleport", CHAN_AUTO);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	SpawnSpotForced("Hellblaze", 682, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 682, 0, 0);
    PlaySound(682, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	SpawnSpotForced("Hellion", 684, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 684, 0, 0);
    PlaySound(684, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	SpawnSpotForced("Genius", 689, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 689, 0, 0);
    PlaySound(689, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

    If(ThingCountName("Glutton", 667) < 4)
	{
	SpawnSpotForced("Glutton", 685, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 685, 0, 0);
    PlaySound(685, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	}

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	SpawnSpotForced("PitLord", 686, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 686, 0, 0);
    PlaySound(686, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	SpawnSpotForced("ForgeElemental", 687, 667, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 687, 0, 0);
    PlaySound(687, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	Thing_Spawn(688, 65003, 0, 667);
	NoiseAlert(0, 0);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	  Delay(55*spec110);
	}
	else
	If(GameSkill() >= SKILL_VERY_HARD && GameSkill() != 5)
	{
	  Delay(35*spec110);
	}
	else
	Delay(40*spec110);

	Restart;
}

//BOSS HEALTH & PHASES
int mtid = 666;
Script 119 (void)
{
    int hdisp;
    int monhp = GetActorProperty(mtid, APROP_Health);
    int mmaxhp = GetActorProperty(mtid, APROP_SpawnHealth);
    SetFont ("NORMAL");
    hdisp = (monhp * 100 / mmaxhp);
    If (hdisp <= 0)
	{
        hdisp = 0;
	}

    SetHudSize (1366, 768, TRUE);//(1366, 768, FALSE);
    HudMessage (i:hdisp; HUDMSG_FADEOUT, 101, CR_WHITE, 10.0, 48.0, 0.1, 1.0);

    int acounter;
    int bcounter;

	SetFont ("OLAYBLUA");
    HudMessage (s:"a"; HUDMSG_FADEOUT, 103, CR_UNTRANSLATED, 80.0, 50.0, 0.1, 1.0);

    SetFont ("BIGFONT");
    HudMessage (s:"Blue Baron"; HUDMSG_FADEOUT, 102, CR_BLACK, 100.0, 22.0, 0.1, 1.0);

    For (acounter = 0; acounter <= hdisp; acounter++)
    {
        If (hdisp <= 0)
		{
		  break;
		}

        bcounter = bcounter + 2.0;
        SetFont ("BARGREEN");

        If (hdisp < 80)
		{
		  SetFont ("BARYELOW");
		}

        If (hdisp < 50)
		{
	      SetFont ("BARORANG");
		}

        If (hdisp < 30)
		{
		  SetFont ("BARRED");
		}

        HudMessage (s:"a"; HUDMSG_FADEOUT, acounter, CR_GREEN, 30.0 + bcounter, 48.0, 0.1, 1.0);
    }
    bcounter = 0;
    acounter = 0;
    Delay (1);
    Restart;
}

//Phases
int spec118 = 0;
Script 118 (void)
{
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth) - GetActorProperty(666, APROP_SpawnHealth)/4) && spec118 == 0)
	{
	  spec118 = 1;
	  SetActorFlag(666, "NODAMAGE", 1);
	  ACS_Execute(72, 0, 0, 0, 0);
	  //GiveActorInventory(666, "BaronIsFlying", 1);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth) - GetActorProperty(666, APROP_SpawnHealth)/2 - GetActorProperty(666, APROP_SpawnHealth)/10) && spec118 == 1)
	{
	  spec118 = 2;
	  Autosave();
	  SetActorFlag(666, "NODAMAGE", 1);
	  ACS_Execute(77, 0, 0, 0, 0);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= GetActorProperty(666, APROP_SpawnHealth)/4 && spec118 == 2)
	{
	  spec118 = 3;
	  SetActorFlag(666, "NODAMAGE", 1);
	  ACS_Execute(82, 0, 0, 0, 0);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth)/4 - GetActorProperty(666, APROP_SpawnHealth)/20*1) && spec118 == 3)
	{
	  spec118 = 4;
	  SetActorFlag(666, "NODAMAGE", 1);
	  Delay(8);
	  ACS_Execute(82, 0, 0, 0, 0);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth)/4 - GetActorProperty(666, APROP_SpawnHealth)/20*2) && spec118 == 4)
	{
	  spec118 = 5;
	  SetActorFlag(666, "NODAMAGE", 1);
	  Delay(8);
	  ACS_Execute(82, 0, 0, 0, 0);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth)/4 - GetActorProperty(666, APROP_SpawnHealth)/20*3) && spec118 == 5)
	{
	  spec118 = 6;
	  SetActorFlag(666, "NODAMAGE", 1);
	  Delay(8);
	  ACS_Execute(82, 0, 0, 0, 0);
	  Terminate;
	}
	If(GetActorProperty(666, APROP_Health) <= (GetActorProperty(666, APROP_SpawnHealth)/4 - GetActorProperty(666, APROP_SpawnHealth)/20*4) && spec118 == 6)
	{
	  spec118 += 1;
	  SetActorFlag(666, "NODAMAGE", 1);
	  ACS_Execute(84, 0, 0, 0, 0);
	  Terminate;
	}
	Delay(8);
	Restart;
}

//ENDLESS SEA
Script 72 (void)
{
	ACS_Terminate(109, 0);
	ACS_Terminate(110, 0);
	ACS_Terminate(120, 0);
	//ACS_Terminate(118, 0);
	ACS_Terminate(119, 0);
	SetActorFlag(724, "INVULNERABLE", 1);
	SetActorFlag(724, "WALLSPRITE", 1);
	SetActorFlag(0, "NODAMAGE", 1);
	Hudmessage(s:"Blue Baron:    Grrrh... enough of this!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 1.2, 1.5);
    PlaySound(0, "BlueBaron/Growl", CHAN_AUTO);
    Delay(2*35);
	PlaySound(0, "PsiDemon/AttackA", CHAN_AUTO);
	Radius_Quake(5, 140, 0, 1, 0);
	FadeTo(255, 100, 180, 1.0, 4.0);
	Delay(1*35);
	Delay(3*35);
	SetActorFlag(0, "NODAMAGE", 0);
	FadeTo(0, 0, 0, 1.0, 4.0);
	Teleport_NoFog(775, 1, 0);
	SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	SetWeapon("Fists");
	Autosave();
	Delay(2*35);
	SetActorState(666, "ForgetTarget", 0);
	PlaySound(441, "Ambient/Thunder", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"I will show you the true horror of my world!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
    PlaySound(0, "BlueBaron/Ha", CHAN_AUTO);
	Delay(2*35);
	SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	FadeTo(0, 0, 0, 0.0, 4.0);
	Teleport_NoFog(722, 1, 0);
	SetActorPitch(0, 0.0);
	Floor_MoveToValue(723, 48, 3256, 1);
	Thing_Activate(441);
	Thing_Activate(443);
	ACS_Execute(73, 0, 0, 0, 0);
	Delay(1*35);
	Radius_Quake(1, 35, 0, 1, 0);
	Delay(1*35);
	Radius_Quake(2, 35, 0, 1, 0);
	Delay(1*35);
	Radius_Quake(3, 35, 0, 1, 0);
	Delay(1*35);
	Radius_Quake(5, 35, 0, 1, 0);
	Delay(1*35);
	SetActorState(724, "SummonWaves", 0);
	SpawnProjectile(755, "MassiveSeaWave", 192, 120, 0, 0, 0);
	ACS_Execute(111, 0, 0, 0, 0);
	Radius_Quake(7, 35, 0, 1, 0);
	Delay(2*35);
	Radius_Quake(9, 105, 0, 1, 0);
	If(GetActorZ(0) < 24.0)
	{
	  Hudmessage(s:"Abhaoth:    Dive!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 1.5, 1.2, 3.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	}
	else
	{
	  Hudmessage(s:"Abhaoth:    Look out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 1.5, 1.2, 3.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	}
	Delay(2*35);
	SpawnProjectile(755, "MassiveSeaWave", 192, 120, 0, 0, 0);
    Radius_Quake(7, 70, 0, 1, 0);
	Delay(2*35);
	Radius_Quake(5, 35, 0, 1, 0);
	Delay(1*35);
	SpawnProjectile(755, "MassiveSeaWave", 192, 120, 0, 0, 0);
	Radius_Quake(3, 35, 0, 1, 0);
	Delay(1*35);
	Radius_Quake(2, 35, 0, 1, 0);
	Delay(1*35);
	Radius_Quake(1, 35, 0, 1, 0);
	Delay(4*35);
	Hudmessage(s:"Darn it!... Okay... find a way to climb the spires and turn the beacons off!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 5.5, 1.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	Delay(8*35);
	Thing_Spawn(727, 65004, 192, 725);
    SpawnSpotForced("Cerberus", 728, 725, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 728, 0, 0);
    PlaySound(728, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(16*35);
	Thing_Spawn(726, 65010, 192, 725);
	NoiseAlert(0, 0);
}
Script 111 (void)
{
	Light_Fade(476, 256, 8);
	Delay(8);
	Light_Fade(476, 136, 16);
	Delay(random(50, 105));
	PlaySound(441, "Ambient/Thunder", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(random(1*35, 10*35));
	Restart;
}
int spec73 = 0;
int spec73b = 23;
Script 73 (void)
{
	If(spec73 >= 3)
	{
	  ACS_Terminate(72, 0);
	  Radius_Quake(1, 175, 0, 1, 0);
	  SetActorFlag(0, "BUDDHA", 1);
	  Delay(2*35);
	  Hudmessage(s:"Blue Baron:    Your struggle has been entertaining, but I am the master of your destiny... now perish!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 1.2, 3.5);
      PlaySound(0, "BlueBaron/Ha", CHAN_AUTO);
	  Delay(3*35);
	  PlaySound(0, "PsiDemon/AttackA", CHAN_AUTO);
	  Radius_Quake(5, 105, 0, 1, 0);
	  FadeTo(255, 100, 180, 1.0, 3.0);
	  Delay(1*35);
	  SetActorFlag(0, "NODAMAGE", 1);
	  ACS_Terminate(74, 0);
	  ACS_Terminate(75, 0);
	  ACS_Terminate(76, 0);
	  Delay(2*35);
	  Thing_Destroy(725, 1, 0);
	  Thing_Destroy(737, 1, 0);
	  Teleport_NoFog(722, 1, 0);
	  SetWeapon("Fists");
	  Radius_Quake(9, 10*35, 0, 1, 0);
	  FadeTo(255, 100, 180, 0.0, 3.0);
	  Delay(1*35);
	  SetActorFlag(0, "NODAMAGE", 0);
	  //SetActorFlag(0, "BUDDHA", 1);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 1, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 2, "Drowning");
	  Delay(1*35);
	  If(CheckInventory("PowerDivingSuitA") > 0)
	  {
	    TakeInventory("PowerDivingSuitA", 1);
	    TakeInventory("PowerDivingSuitB", 1);
	    ACS_NamedExecuteWithResult("DivingSuitOverlayClear");
	  }
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 4, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 8, "Drowning");
	  FadeTo(80, 120, 255, 1.0, 7.0);
	  Hudmessage(s:"Abhaoth:    Zan!!!... No!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 1.5, 1.2, 6.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 16, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 32, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 64, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  Thing_Damage2(0, 128, "Drowning");
	  Delay(1*35);
	  ThrustThingZ(0, 200, 1, 1);
	  ACS_Execute(48, 0, 0, 0, 0);
	  Delay(2*35);
	  Thing_Remove(441);
	  Thing_Remove(443);
	  Thing_Remove(659);
	  ACS_Terminate(111, 0);
	  Thing_Remove(725);
	  Thing_Remove(737);
	  Thing_Remove(901);
	  SetActorFlag(0, "BUDDHA", 0);
	  Teleport_NoFog(398, 1, 0);
	  SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	  PlaySound(0,"Character/ZanCrashLand", CHAN_AUTO);
	  FadeTo(0, 0, 0, 1.0, 6.0);
	  SetMugShotState("Sleep");
	  SetWeapon("Fists");
	  Delay(6*35);
	  If(GetActorProperty(0, APROP_Health) <= 0)
	  {
		  Terminate;
	  }
	  SetMugShotState("Sleep");
	  ACS_Execute(79, 0, 0, 0, 0);

	  Terminate;
	}
	If(GetActorZ(0) > -64.0)
	{
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SpawnSpotForced("RainDropGenerator", 0, 659, 0);
	  SetActorFlag(659, "NOBLOCKMAP", 0);
	  ThrustThingZ(659, 100, 0, 1);
	  Thing_Activate(443);
	}
    If(spec73b % 2 == 0)
	{
	  SpawnProjectile(442, "SeaWaveEndless", 192, 100, 0, 0, 0);
	}
    If(spec73b % 6 == 0)
	{
	  SpawnProjectile(755, "MassiveSeaWave", 192, 120, 0, 0, 0);
	}
	Delay(random(70, 140));
	Thing_Deactivate(443);
	Thing_Remove(659);

    If(spec73b % 22 == 0)
	{
	  SpawnSpotForced("Genius", 736, 737, 192);
	  SpawnSpotForced("HedonTeleportFogDemon", 736, 0, 0);
	  PlaySound(736, "misc/teleport", CHAN_AUTO);
	  ThrustThing(192, 15, 0, 737);
	}
	spec73b += 1;

	Restart;
}
Script 74 (void)
{
    If(GetActorZ(0) > 1493.0 && GetActorZ(0) < 1616.0)
	{
		SetLineSpecial(470, 0, 0, 0, 0, 0, 0);
		SetLineTexture(470, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(470, SIDE_BACK, TEXTURE_MIDDLE, "");
		PlaySound(0, "Switches/Switch5", CHAN_AUTO);
		SetLineTexture(471, SIDE_FRONT, TEXTURE_MIDDLE, "Sw07_DN");
		spec73 += 1;
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		Thing_Spawn(731, 65014, 192, 725);
		Thing_Spawn(730, 65014, 192, 725);
        SpawnSpotForced("Hellion", 733, 725, 48);
	    SpawnSpotForced("HedonTeleportFogDemon", 731, 0, 0);
        PlaySound(731, "misc/teleport", CHAN_AUTO);
	    NoiseAlert(0, 0);
		Delay(2*35);
		If(spec73 == 1)
		{
		  Hudmessage(s:"Abhaoth:    One down, two more to go!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 2.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
		}
		else
		If(spec73 == 2)
		{
		  Hudmessage(s:"Abhaoth:    Two down, get the last one before it's too late!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 3.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
		}
		Delay(8*35);
		Thing_Spawn(726, 65014, 192, 725);
		NoiseAlert(0, 0);
		SpawnSpotForced("Cerberus", 734, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 734, 0, 0);
        PlaySound(734, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Delay(8*35);
		SpawnSpotForced("Genius", 726, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 726, 0, 0);
		PlaySound(726, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
	}
}
Script 75 (void)
{
    If(GetActorZ(0) > 741.0 && GetActorZ(0) < 880.0)
	{
		SetLineSpecial(472, 0, 0, 0, 0, 0, 0);
		SetLineTexture(472, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(472, SIDE_BACK, TEXTURE_MIDDLE, "");
		PlaySound(0, "Switches/Switch5", CHAN_AUTO);
		SetLineTexture(473, SIDE_FRONT, TEXTURE_MIDDLE, "Sw07_DN");
		spec73 += 1;
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		Thing_Spawn(729, 65014, 48, 725);
		Thing_Spawn(730, 65014, 48, 725);
        SpawnSpotForced("Glutton", 738, 725, 48);
	    SpawnSpotForced("HedonTeleportFogDemon", 738, 0, 0);
        PlaySound(738, "misc/teleport", CHAN_AUTO);
	    NoiseAlert(0, 0);
		Delay(2*35);
		If(spec73 == 1)
		{
		  Hudmessage(s:"Abhaoth:    One down, two more to go!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 2.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
		}
		else
		If(spec73 == 2)
		{
		  Hudmessage(s:"Abhaoth:    Two down, get the last one before it's too late!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 3.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
		}
		Delay(8*35);
		SpawnSpotForced("Genius", 726, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 726, 0, 0);
        PlaySound(726, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Delay(8*35);
		SpawnSpotForced("Genius", 732, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 732, 0, 0);
        PlaySound(732, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
	}
}
Script 76 (void)
{
    If(GetActorZ(0) > 381.0 && GetActorZ(0) < 488.0)
	{
		SetLineSpecial(474, 0, 0, 0, 0, 0, 0);
		SetLineTexture(474, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(474, SIDE_BACK, TEXTURE_MIDDLE, "");
		PlaySound(0, "Switches/Switch5", CHAN_AUTO);
		SetLineTexture(475, SIDE_FRONT, TEXTURE_MIDDLE, "Sw07_DN");
		spec73 += 1;
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(16);
		Thing_Spawn(729, 65014, 128, 725);
		Thing_Spawn(731, 65014, 128, 725);
        SpawnSpotForced("Hellblaze", 735, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 735, 0, 0);
        PlaySound(735, "misc/teleport", CHAN_AUTO);
	    NoiseAlert(0, 0);
		Delay(2*35);
		If(spec73 == 1)
		{
		  Hudmessage(s:"Abhaoth:    One down, two more to go!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 2.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
		}
		else
		If(spec73 == 2)
		{
		  Hudmessage(s:"Abhaoth:    Two down, get the last one before it's too late!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 3.5, 1.2, 2.5);
	      PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
		}
		Delay(8*35);
		SpawnSpotForced("Genius", 732, 725, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 732, 0, 0);
        PlaySound(732, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
	}
}

//GREAT STUMP & GROVE
int spec79 = 0;
Script 79 (void)
{
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	//SetMugShotState("Sleep");
	//SetWeapon("Fists");
	Thing_Activate(513);
	TakeInventory("PowerPotionOfStoneskin", 100);
	TakeInventory("PowerTimeShard", 100);
	TakeInventory("PowerElementalRingA", 100);
	TakeInventory("PowerElementalRingB", 100);
	TakeInventory("PowerPotionOfMightA", 100);
	TakeInventory("PowerPotionOfMightB", 100);
	TakeInventory("PowerPotionOfHaste", 100);
	TakeInventory("PowerAmuletOfShadowsA", 100);
	TakeInventory("PowerAmuletOfShadowsB", 100);
	TakeInventory("PowerChokerOfTheBeastA", 100);
	TakeInventory("PowerChokerOfTheBeastB", 100);
	TakeInventory("PowerBracerOfTheRevenant", 100);
	TakeInventory("PowerAngelFeather", 1);
	SetActorProperty(0, APROP_JumpZ, 8.0);
	SetActorProperty(0, APROP_Gravity, 1.0);
	Teleport_NoFog(552, 1, 0);
	SetActorPitch(0, 0.0);
	ChangeCamera(553, 0, 0);
	Delay(140);
	FadeTo(0, 0, 0, 0.0, 0.4);
	PlaySound(0, "Character/ZanTired", CHAN_AUTO);
	SetMugShotState("Normal");
	Delay(50);
	PlaySound(518, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    Zan!!! Thank the Earth!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 1.5, 0.2, 2.5);
	Delay(35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(105);
	FadeTo(0, 0, 0, 0.0, 2.0);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	ChangeCamera(0, 0, 1);
	Delay(105);
	PlaySound(518, "EarthMother/Hmm", CHAN_AUTO);
	Hudmessage(s:"Grand E. M. Breaza:    Easy now... walk a bit if you can. Your body has weakened a lot ever since..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(2*35);
	spec79 += 1;
}
int spec1002 = 0;
Script 1002 (void)
{
  If (GetActorZ(0) < 29.0 && CheckInventory("VineKey") > 0)
  {
	ACS_Terminate(92, 0);
	SetWeapon("Fists");
	PlaySound(0, "Inventory/PickKey", CHAN_AUTO);
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(16);
	SetActorProperty(0, APROP_Speed, 0.0);
	PlaySound(536, "Hellion/Active", CHAN_AUTO);
	Hudmessage(s:"Hellion:    Are you ready now, my green darlings? Open the door slowly. Don't try anything naughty!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 1.5);
	Delay(5*35);
    Polyobj_RotateLeft(2,2,40);
    Polyobj_RotateRight(182,2,40);
	Delay(55);
	Hudmessage(s:"Abhaoth:    Make. Them. Pay."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 1.5, 1.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(70);
	Radius_Quake(1, 35, 0, 1, 0);
	FadeTo(255, 160, 40, 1.0, 1.0);
	PlaySound(0, "Weapons/FlameDeath", CHAN_AUTO);
	SetActorAngle(521, 0.25);
	Delay(35);
	SetMusic("HTrack36", 0);
	FadeTo(255, 160, 40, 0.0, 0.2);
	Radius_Quake(6, 95, 0, 1, 0);
	SpawnSpotForced("ExplosionHuge", 536, 0, 0);
	Thing_Activate(536);
	Thing_Destroy(536, 1, 0);
	Polyobj_RotateLeft(2,64,24);
    Polyobj_RotateRight(182,64,24);
	//Polyobj_DoorSwing(2,64,32,0x7FFFFFFF);
    //Polyobj_DoorSwing(182,-64,32,0x7FFFFFFF);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 537, 0, 0);
	Thing_Activate(537);
	Thing_Destroy(537, 1, 0);
	Delay(12);
	SpawnSpotForced("ExplosionLarge", 546, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionLarge", 547, 0, 0);
	Delay(24);
	SpawnSpotForced("ExplosionMedium", 547, 0, 0);
	Delay(50);
	PlaySound(545, "Fixer/Huh", CHAN_AUTO, 1.0, false, 0.6);
	Hudmessage(s:"Fixer:    No!!! What have you done?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 0.5);
    SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	spec1002 += 1;
	Delay(3*35);
	PlaySound(521, "Lancer/Heh", CHAN_AUTO, 1.0, false, 0.6);
	Hudmessage(s:"Earth Mother:    Saved you. Come, sisters! With Zan here, we may stand a chance!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);

	Thing_Remove(691);
	SpawnSpotForced("IDBearWarrior", 539, 691, 64);
	SpawnSpotForced("IDBearWarrior", 540, 691, 64);
	SpawnSpotForced("IDWitch", 541, 691, 64);
	SpawnSpotForced("IDReaver", 542, 691, 64);
	SpawnSpotForced("IDLancer", 543, 691, 64);
	SpawnSpotForced("IDReaver", 544, 691, 64);
	SpawnSpotForced("IDFixer", 545, 691, 64);
	SpawnSpotForced("IDEarthMother", 521, 691, 64);
	Thing_Remove(521);

	Delay(2*35);
	Autosave();
	Delay(3*35);
	Hudmessage(s:"Reaver:   Demon reinforcements will be here any moment now. What do we do, sarge?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 1.5);
	Delay(6*35);
	Hudmessage(s:"Abhaoth:    ...defend yourselves..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 1.5, 1.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(5*35);
	//Autosave();
	spec1002 = 0;
  }
  else
  {
    Print(s:"This door requires a Vine key to open.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}
Script 103 (void)
{
	SetLineSpecial(549, 0, 0, 0, 0, 0, 0);
	SetLineTexture(773, SIDE_FRONT, TEXTURE_MIDDLE, "Vines1");
	Line_SetBlocking(773, BLOCKF_EVERYTHING, 0);

	If(spec1002 > 0)
	{
		ScriptWait(1002);
	}

	If(CheckProximity(0, "IDWitch", 1600.0, 1) || CheckProximity(0, "IDWitchGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Witch:    ...are we seriously going to fend off waves of demons from a flimsy crate barricade?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);
	}
	If(CheckProximity(0, "IDReaver", 1600.0, 1) || CheckProximity(0, "IDReaverGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Reaver:    Hey, a bunch of crates and barrels is all we could put together without arousing suspicion!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);
	}

	PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(140);

	If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Bear Warrior:    Get ready. They'll be swarming us any moment now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 1.5);
		Delay(4*35);
	}

	PlaySound(0, "PsiDemon/Active2", CHAN_AUTO);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(350);

	Radius_Quake(1, 105, 0, 1, 0);
	Delay(70);
	PlaySound(0, "PsiDemon/Active3", CHAN_AUTO);
	Delay(175);

	SpawnSpotForced("PitLord", 550, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 550, 0, 0);
    PlaySound(550, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	Delay(35);
	If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1600.0, 1))
	{
		PlaySound(691, "BearWarrior/Rage", CHAN_AUTO);
		Hudmessage(s:"Bear Warrior:    FOR THE IRON DIVISION!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.80, 3.5, 0.2, 1.5);
	}

	SpawnSpotForced("Cerberus", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("Cerberus", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("Cerberus", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("ForgeElemental", 554, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 554, 0, 0);
    PlaySound(554, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("ForgeElemental", 554, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 554, 0, 0);
    PlaySound(554, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("Cerberus", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(2*35);
	SpawnSpotForced("Cerberus", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Glutton", 550, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 550, 0, 0);
    PlaySound(550, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	If(CheckProximity(0, "IDLancer", 1600.0, 1) || CheckProximity(0, "IDLancerGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Lancer:    Fight to the last breath, sisters! Show them that we'll never yield!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.80, 6.5, 0.2, 2.5);
	}

	Delay(4*35);
	SpawnSpotForced("Hellblaze", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Hellblaze", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Cerberus", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Cerberus", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	If(CheckProximity(0, "IDEarthMother", 1600.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Earth Mother:    You've drained the Earth of her blood! Now we shall feed her yours!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.80, 5.5, 0.2, 2.5);
	}

	Delay(4*35);
	SpawnSpotForced("Hellion", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Hellion", 555, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 555, 0, 0);
    PlaySound(555, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Genius", 554, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 554, 0, 0);
    PlaySound(554, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Genius", 554, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 554, 0, 0);
    PlaySound(554, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	If(CheckProximity(0, "IDReaver", 1600.0, 1) || CheckProximity(0, "IDReaverGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Reaver:    Damn it, they won't stop pouring in!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.80, 3.5, 0.2, 0.5);
	}
	Delay(4*35);
	If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Bear Warrior:    We'll kill every single demon if we have to! Keep firing!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.80, 4.5, 0.2, 2.5);
	}
	Delay(4*35);
	SpawnSpotForced("Glutton", 550, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 550, 0, 0);
    PlaySound(550, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Cerberus", 551, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 551, 0, 0);
    PlaySound(551, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	SpawnSpotForced("Genius", 554, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 554, 0, 0);
    PlaySound(554, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	Thing_Spawn(557, 65000, 192, 512);
	Thing_Spawn(558, 65008, 192, 512);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(4*35);
	Thing_Spawn(557, 65000, 192, 512);
	Thing_Spawn(558, 65008, 192, 512);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(8*35);
	If(CheckProximity(0, "IDFixer", 1600.0, 1) || CheckProximity(0, "IDFixerGuarding", 1600.0, 1))
	{
		Hudmessage(s:"Fixer:    Look! Cultists! Keep fighting, they must be getting desperate!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.80, 4.5, 0.2, 2.5);
	}
	Delay(8*35);
	SpawnSpotForced("PsiDemon", 556, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 556, 0, 0);
    PlaySound(556, "misc/teleport", CHAN_AUTO);
	//NoiseAlert(0, 0);
	Thing_SetGoal(512, 790, 0, 0);

	Delay(12*35);

	If(CheckProximity(0, "IDReaver", 1920.0, 1) || CheckProximity(0, "IDReaverGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Reaver:    They stopped reinforcing! Quick, let's assault the Reaver HQ, we can escape from there!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMother", 1920.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Earth Mother:    They're yielding! Quickly, let us head to the Reaver Headquarters and escape!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDFixer", 1920.0, 1) || CheckProximity(0, "IDFixerGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Fixer:    They're slowing down! Let's push for the Reaver HQ, we can use the tunnels to escape!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDBearWarrior", 1920.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Bear Warrior:    We're crushing them! Quickly, let's push for the Reaver HQ and take it over!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 1920.0, 1) || CheckProximity(0, "IDLancerGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Lancer:    They're falling before us! Let us push forward! Take the Reaver Headquarters back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }
    else
    If(CheckProximity(0, "IDWitch", 1920.0, 1) || CheckProximity(0, "IDWitchGuarding", 1920.0, 1))
	  {
	    HudmessageBold(s:"Witch:    Fuck me, we're actually doing it! Let's keep pushing, we can bunker up in the Reaver HQ!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
	  }

	Delay(6*35);
	SetLineSpecial(560, ACS_Execute, 106, 0, 0, 0, 0);

}
Script 106 (void)
{
	SetLineSpecial(560, 0, 0, 0, 0, 0, 0);
	Delay(35);

	SpawnSpotForced("SniperHellion", 561, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 561, 0, 0);
    PlaySound(561, "misc/teleport", CHAN_AUTO);

	SpawnSpotForced("Hellion", 562, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 562, 0, 0);
    PlaySound(562, "misc/teleport", CHAN_AUTO);

	Thing_Spawn(564, 65008, 128, 512);

	SpawnSpotForced("Cerberus", 565, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 565, 0, 0);
    PlaySound(565, "misc/teleport", CHAN_AUTO);

	Delay(50);
	Floor_LowerByValue(559, 12, 104);

	If(CheckProximity(0, "IDWitch", 1600.0, 1) || CheckProximity(0, "IDWitchGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Witch:    Looks like we'll be taking the HQ over the hard way! Charge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDLancer", 1600.0, 1) || CheckProximity(0, "IDLancerGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Lancer:    The battle has only began! Charge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Bear Warrior:    Bring it, chaos filth! Challenge our might!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMother", 1600.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Earth Mother:    Fight to the last breath! Send the scum back to Hell!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDReaver", 1600.0, 1) || CheckProximity(0, "IDReaverGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Reaver:    Damn it, they're well entrenched! What now, sarge?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
	else
	If(CheckProximity(0, "IDFixer", 1600.0, 1) || CheckProximity(0, "IDFixerGuarding", 1600.0, 1))
	  {
	    HudmessageBold(s:"Fixer:    They're prepared for our counterattack! Fuck it, here goes nothing!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 1.5);
	  }
}
int spec107 = 0;
Script 107 (void)
{
	spec107 += 1;

	Hudmessage(s:"Blue Baron:    *Growls*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
    PlaySound(0, "BlueBaron/Growl", CHAN_AUTO);
	Radius_Quake(1, 175, 0, 1, 0);

	Delay(105);

	SpawnSpotForced("Glutton", 563, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 563, 0, 0);
    PlaySound(563, "misc/teleport", CHAN_AUTO);

	Delay(105);

	Hudmessage(s:"Abhaoth:    ...you're weakening him. Keep fighting."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 1.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);

	Delay(105);

	SpawnSpotForced("ForgeElemental", 566, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 566, 0, 0);
    PlaySound(566, "misc/teleport", CHAN_AUTO);

	Delay(105);

	SpawnSpotForced("Hellblaze", 567, 512, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 567, 0, 0);
    PlaySound(567, "misc/teleport", CHAN_AUTO);

	spec107 -= 1;
}
Script 108 (void)
{
	SetLineSpecial(568, 0, 0, 0, 0, 0, 0);

	If(spec107 > 0)
	{
	  ScriptWait(107);
	}
	Delay(50);
	Thing_Spawn(569, 65011, 192, 512);
	SpawnSpotForced("PsiDemon", 570, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 570, 0, 0);
    PlaySound(570, "misc/teleport", CHAN_AUTO);

	Delay(140);

	Hudmessage(s:"Abhaoth:    Push. Him. Out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 1.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);

	Delay(8*35);
	SpawnSpotForced("Hellblaze", 571, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 571, 0, 0);
    PlaySound(571, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 572, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 572, 0, 0);
    PlaySound(572, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 573, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 573, 0, 0);
    PlaySound(573, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	Hudmessage(s:"Blue Baron:    *Groans*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.2, 2.5);
    PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	Radius_Quake(1, 175, 0, 1, 0);

	Delay(6*35);
	Hudmessage(s:"Abhaoth:    Purge him out of your mind! Fight!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 1.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(2*35);

	SpawnSpotForced("Hellblaze", 571, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 571, 0, 0);
    PlaySound(571, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 572, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 572, 0, 0);
    PlaySound(572, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 573, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 573, 0, 0);
    PlaySound(573, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

	PlaySound(0, "Ambient/BuildUp", CHAN_AUTO);
	Delay(8*35);
	SpawnSpotForced("Hellblaze", 571, 661, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 571, 0, 0);
    PlaySound(571, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 572, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 572, 0, 0);
    PlaySound(572, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 573, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 573, 0, 0);
    PlaySound(573, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(7*35);
	SpawnSpotForced("Hellblaze", 571, 661, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 571, 0, 0);
    PlaySound(571, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 572, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 572, 0, 0);
    PlaySound(572, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 573, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 573, 0, 0);
    PlaySound(573, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	Delay(6*35);
	SpawnSpotForced("Hellblaze", 571, 661, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 571, 0, 0);
    PlaySound(571, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 572, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 572, 0, 0);
    PlaySound(572, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 573, 512, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 573, 0, 0);
    PlaySound(573, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);

    Hudmessage(s:"Blue Baron:    *Cries in pain*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 1.5, 1.2, 1.5);
    PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
    Radius_Quake(4, 4*35, 0, 1, 0);
	Delay(3*35);
	Autosave();
	Delay(35);
	Hudmessage(s:"Abhaoth:    Yes!!! Destroy him!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	FadeTo(255, 160, 40, 1.0, 3.0);
	Delay(35);
	Radius_Quake(9, 4*35, 0, 1, 0);
	Thing_Destroy(661, 1, 0);
	SpawnSpotForced("ExplosionHuge", 661, 0, 0);
	Delay(20);
	Thing_Destroy(512, 1, 0);
	SpawnSpotForced("ExplosionLarge", 661, 0, 0);
	Delay(15);
	SpawnSpotForced("ExplosionMedium", 661, 0, 0);
	GiveActorInventory(666, "BaronIsFlying", 1);
	Delay(35);
	Teleport_NoFog(503, 1, 0);
	TeleportOther(666, 700, 0);
	SetActorFlag(666, "NODAMAGE", 0);
	If(IsTIDUsed(788) == 0 && GameSkill() > SKILL_VERY_HARD)
	{
	  SpawnSpotForced("InventoryBracerOfTheRevenant", 789, 788, 0);
	}
	ACS_Execute(118, 0, 0, 0, 0);
	ACS_Execute(119, 0, 0, 0, 0);
	Delay(1);
	SetActorPitch(0, 0.0);
	ThrustThing(64, 70, 1, 0);
	ThrustThingZ(0, 80, 0, 0);

	SetActorProperty(0, APROP_JumpZ, 15.0);
	SetActorProperty(0, APROP_Gravity, 0.5);
	GiveInventory("PowerAngelFeather", 1);
	Thing_Remove(512);
	Thing_Remove(517);
	Thing_Remove(513);
	Thing_Remove(536);
	Thing_Remove(537);
	Thing_Remove(661);
	Thing_Remove(691);
	Thing_Remove(901);
	TakeInventory("VineKey", 1);

	FadeTo(255, 160, 40, 0.0, 0.2);

	Delay(140);
	If(GetActorProperty(0, APROP_Health) > 0)
	{
	  Hudmessage(s:"Nithriel:    No! You almost had her! Arrrgh! Abhaoth, you mingling rat!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
      PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
	else
	{
	  Hudmessage(s:"Nithriel:    Hahahah! And so dies the mighty Halfblood! Well done, my dear Baron..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 3.5);
      PlaySound(506, "Nithriel/Laugh", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}

    ACS_Execute(109, 0, 0, 0, 0);
	spec110 = 30;
	ACS_Execute(110, 0, 0, 0, 0);

	Delay(4*35);
	SpawnSpotForced("ForgeElemental", 767, 667, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 767, 0, 0);
	PlaySound(767, "misc/teleport", CHAN_AUTO);
	Delay(8);
	NoiseAlert(0, 0);
	Delay(12*35);
	SpawnSpotForced("Cerberus", 682, 667, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 682, 0, 0);
	PlaySound(682, "misc/teleport", CHAN_AUTO);
	Delay(8);
	NoiseAlert(0, 0);
	Delay(20*35);
	SpawnSpotForced("Genius", 777, 667, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 777, 0, 0);
	PlaySound(777, "misc/teleport", CHAN_AUTO);
	Delay(8);
	NoiseAlert(0, 0);
}
int spec87 = 0;
Script 87 (void)
{
	Thing_Remove(518);
	Thing_Remove(519);
    Delay(70);
	PlaySound(520, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Lancer Dendra:    Zan! Over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.5, 0.2, 1.5);
	Delay(4*35);

	PlaySound(520, "Lancer/Heh", CHAN_AUTO);
	Hudmessage(s:"Lancer Dendra:    Good to see you've regained your consciousness. It's been a while-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.1);
	Delay(3*35);

	Hudmessage(s:"???:    *Knocks at the main entrance*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 1.5, 0.2, 1.5);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.6);
	Delay(8);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.6);
	Delay(8);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.6);
	Delay(10);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.6);
	Delay(10);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.6);
	Delay(11);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.6);
	Delay(11);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.6);
	Delay(12);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.6);
	Delay(1*35);

	PlaySound(520, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Lancer Dendra:    Oh, no. They're back already. Quick, gather our sisters here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
	Delay(2*35);
	spec87 += 1;
	Delay(4*35);

	PlaySound(536, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.6);
	Hudmessage(s:"Hellion:    Hey there, dearies! You know what we're here for, so don't try to delay the fun!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_LIGHTBLUE, 1.5, 0.90, 5.5, 0.2, 2.5);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.6);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.6);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.6);
	Delay(24);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.6);
	Delay(1*35);
	ACS_Execute(92, 0, 0, 0, 0);
}
Script 92 (void)
{
	Delay(6*35);
    PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.8);
	Delay(24);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.8);
	Delay(35);
	If(CheckProximity(0, "SniperHellion", 1500.0, 1))
	{
	  PlaySound(536, "Hellion/Pain", CHAN_AUTO, 1.0, false, 0.8);
	  Hudmessage(s:"Hellion:    Come now, babes. The more you keep us waiting, the slower the sacrifice will be!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_LIGHTBLUE, 1.5, 0.90, 5.5, 0.2, 2.5);
	}
	Delay(12*35);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.8);
	Delay(24);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.8);
	Delay(35);
	If(CheckProximity(0, "SniperHellion", 1500.0, 1))
	{
	  PlaySound(536, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.8);
	  Hudmessage(s:"Hellion:    What's taking you so long? This isn't the time to put on makeup."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_LIGHTBLUE, 1.5, 0.90, 5.5, 0.2, 2.5);
	}
	Delay(12*35);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.8);
	Delay(24);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.8);
	Delay(35);
	Delay(16*35);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.7, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.9, false, 0.8);
	Delay(23);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 0.8, false, 0.8);
	Delay(24);
	PlaySound(538, "Interaction/Footstep", CHAN_AUTO, 1.0, false, 0.8);
	Delay(35);
	If(CheckProximity(0, "SniperHellion", 1500.0, 1))
	{
	  PlaySound(536, "Hellion/Pain", CHAN_AUTO, 1.0, false, 0.8);
	  Hudmessage(s:"Hellion:    If you don't appease us soon, I'll have my lovely brute here open the door..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_LIGHTBLUE, 1.5, 0.90, 6.5, 0.2, 2.5);
	}
}
int spec94 = 0;
Script 94 (void)
{
	If(spec94 == 3)
	{
	  spec94 += 1;
	  Thing_Remove(520);
	  SpawnSpotForced("VineKey", 535, 0, 0);
	  Delay(35);
	  PlaySound(521, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Earth Mother:    ...the key is over there. Open the doors now, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 1.5);
	  Delay(5*35);
	  Hudmessage(s:"Abhaoth:    ...you are their only hope..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.82, 1.5, 1.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	}
}

//Great Stump Dialogues
Script 85 (void) //Reaver + Fixer
{
	PlaySound(522, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Reaver:    ...who do you think they will take away today?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	Delay(5*35);

	PlaySound(523, "Fixer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Fixer:    I don't know... why can't they just leave us alone?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 2.5);
}
int spec89 = 0;
Script 89 (void)
{
  If(spec87 > 0 && spec89 == 0)
  {
	spec89 += 1;
	SetActorProperty(0, APROP_Friction, 0.1);
	PlaySound(522, "Reaver/Huh", CHAN_AUTO);
	Hudmessage(s:"Reaver:    The demons are knocking at our gate already?... Okay. Let's go..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 2.5);

    Delay(35);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(5*35);
	spec94 += 1;
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
    SpawnSpotForced("IDFixerStationary", 545, 691, 32);
	SpawnSpotForced("IDReaverStationary", 544, 691, 230);
	Thing_Remove(522);
	Thing_Remove(523);
  }
}
int spec86 = 0;
int spec86b = 0;
Script 86 (void) //Bear Warrior + Witch
{
  If(spec87 == 0 && spec86 == 0)
  {
	spec86 += 1;
	PlaySound(527, "BearWarrior/Huh", CHAN_AUTO);
	Hudmessage(s:"Bear Warrior:    Hey, look who's here! Our fallen hero. Pay up, ladies, I won the bet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 5.5, 0.2, 0.5);
	Delay(6*35);

	PlaySound(526, "Witch/Hmm", CHAN_AUTO);
	Hudmessage(s:"Witch:    Oh, shut up... help yourself to some food, sarge. There aren't many mouths left to feed as of late."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.90, 6.5, 0.2, 1.5);
  }
  else
  If(spec87 > 0 && spec86b == 0 && spec86 == 0)
  {
	spec86b += 1;
	SetActorProperty(0, APROP_Friction, 0.1);
	PlaySound(527, "BearWarrior/Huh", CHAN_AUTO);
	Hudmessage(s:"Bear Warrior:    Hey, look who's here! Our fallen hero... wait. It's the time, right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 5.5, 0.2, 0.5);
	Delay(35);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(5*35);

	PlaySound(526, "Witch/Hmm", CHAN_AUTO);
	Hudmessage(s:"Witch:    Good thing I'm drunk enough. Let's go, ladies. The culling awaits."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.90, 5.5, 0.2, 1.5);

    Delay(35);
	Delay(2*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(5*35);
	spec94 += 1;
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
    SpawnSpotForced("IDBearWarriorStationary", 539, 691, 140);
	SpawnSpotForced("IDBearWarriorStationary", 540, 691, 112);
	SpawnSpotForced("IDWitchStationary", 541, 691, 128);
	SpawnSpotForced("IDReaverStationary", 542, 691, 96);
	Thing_Remove(524);
	Thing_Remove(525);
	Thing_Remove(526);
	Thing_Remove(527);
  }
  else
  If(spec87 > 0 && spec86b == 0)
  {
	spec86b += 1;
	SetActorProperty(0, APROP_Friction, 0.1);
	PlaySound(524, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Reaver:    You're back... the time has come, right?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.90, 4.5, 0.2, 0.5);
	Delay(35);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(5*35);

	PlaySound(526, "Witch/Hmm", CHAN_AUTO);
	Hudmessage(s:"Witch:    Well, I guess I'm drunk enough now. Let's go, ladies. The culling awaits."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.90, 5.5, 0.2, 2.5);

    Delay(35);
	Delay(2*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(5*35);
	spec94 += 1;
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
    SpawnSpotForced("IDBearWarriorStationary", 539, 691, 140);
	SpawnSpotForced("IDBearWarriorStationary", 540, 691, 112);
	SpawnSpotForced("IDWitchStationary", 541, 691, 128);
	SpawnSpotForced("IDReaverStationary", 542, 691, 96);
	Thing_Remove(524);
	Thing_Remove(525);
	Thing_Remove(526);
	Thing_Remove(527);
  }
}
int spec88 = 0;
Script 88 (void) //Lancer
{
  If(spec87 == 0 && spec88 == 0)
  {
	spec88 += 1;
	PlaySound(534, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Lancer:    I knew you'd recover... alas, the fight against the Baron has let us all scarred."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
  }
  else
  If(spec87 > 0 && spec88 == 1)
  {
	spec88 += 1;
	SetActorProperty(0, APROP_Friction, 0.1);
	PlaySound(534, "Lancer/Heh", CHAN_AUTO);
	Hudmessage(s:"Lancer:    The demons have come?... Well then... let us gather up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 2.5);

    Delay(35);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(5*35);
	spec94 += 1;
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
    SpawnSpotForced("IDLancerStationary", 543, 691, 192);
	Thing_Remove(534);
  }
  else
  If(spec87 > 0 && spec88 == 0)
  {
	spec88 += 2;
	SetActorProperty(0, APROP_Friction, 0.1);
	PlaySound(534, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Lancer:    Zan! I knew you'd recover!... Oh... the demons are here? I see. Let us gather up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 2.5);

    Delay(35);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(2*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(5*35);
	spec94 += 1;
	SetActorProperty(0, APROP_Friction, 1.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
    SpawnSpotForced("IDLancerStationary", 543, 691, 192);
	Thing_Remove(534);
  }
}
int dial104 = 4;
Script 104 (void)
{
  If(IsTIDUsed(534) && spec87 == 0)
  {
	If(dial104 % 4 == 0)
	{
	  PlaySound(534, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    We are all that is left... I suppose cheating fate has only lasted us so long."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial104 += 1;
	  Delay(2*35);
	}
	else
	If(dial104 % 4 == 1)
	{
	  PlaySound(534, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    The Crystal Heart has fallen. Our world has almost entirely withered away..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial104 += 1;
	  Delay(2*35);
	}
	else
	If(dial104 % 4 == 2)
	{
	  PlaySound(534, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    The demons have allowed us to preserve our library here, but we must pay in blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial104 += 1;
	  Delay(2*35);
	}
	else
	If(dial104 % 4 == 3)
	{
	  PlaySound(534, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Lancer:    Every several days they return and choose one of us for sacrifice. A slow, sad end..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial104 += 1;
	  Delay(2*35);
	}
  }
}
int dial90 = 4;
Script 90 (void) //Dendra
{
  If(spec87 > 0 && IsTIDUsed(520))
  {
	If(dial90 % 4 == 0)
	{
	  PlaySound(520, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Lancer Dendra:    Why are you still here?! Go, we can't keep them waiting!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
      dial90 += 1;
	  Delay(2*35);
	}
	else
	If(dial90 % 4 == 1)
	{
	  PlaySound(520, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Lancer Dendra:    Please, Zan. We have no means of opposing them anymore. Just do as I say..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
      dial90 += 1;
	  Delay(2*35);
	}
	else
	If(dial90 % 4 == 2)
	{
	  PlaySound(520, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Lancer Dendra:    We can't negotiate with them! If we don't offer one of our own, they will kill us all!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial90 += 1;
	  Delay(2*35);
	}
	else
	If(dial90 % 4 == 3)
	{
	  PlaySound(520, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Lancer Dendra:    Our sisters are upstairs. Gather them here at once!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
      dial90 += 1;
	  Delay(2*35);
	}
  }
}
int spec91 = 0;
Script 91 (void) //Abhaoth
{
  If(spec87 > 0 && spec91 == 0)
  {
	spec91 += 1;
    Hudmessage(s:"Abhaoth:    ...what kind of life is this?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.78, 2.5, 1.2, 3.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
  }
}
int spec93 = 0;
Script 93 (void)
{
  If(spec87 > 0 && spec93 == 0)
  {
	spec93 += 1;
    Hudmessage(s:"Abhaoth:    ...you can't let the Baron's grasp tighten..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.78, 2.5, 1.2, 3.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
  }
}
int dial95 = 4;
Script 95 (void) //Breaza
{
  If(IsTIDUsed(518) && spec79 > 0)
  {
	If(dial95 % 4 == 0)
	{
	  PlaySound(518, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Grand E. M. Breaza:    Don't push yourself too hard now. Go upstairs and get something to eat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 4.5, 0.2, 0.5);
      dial95 += 1;
	  Delay(2*35);
	}
	else
	If(dial95 % 4 == 1)
	{
	  PlaySound(518, "EarthMother/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Grand E. M. Breaza:    I did everything in my power to heal you. You've been out for months..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 5.5, 0.2, 0.5);
      dial95 += 1;
	  Delay(2*35);
	}
	else
	If(dial95 % 4 == 2)
	{
	  Hudmessage(s:"Grand E. M. Breaza:    You did everything you could. Try not to think about it right now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 6.5, 0.2, 0.5);
      dial95 += 1;
	  Delay(2*35);
	}
	else
	If(dial95 % 4 == 3)
	{
	  PlaySound(518, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Grand E. M. Breaza:    It's a miracle that I was able to recover your body. Alas, we had to retreat..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 4.5, 0.2, 0.5);
      dial95 += 1;
	  Delay(2*35);
	}
  }
}
int dial96 = 4;
Script 96 (void) //Advisor
{
  If(IsTIDUsed(519))
  {
	If(dial96 % 4 == 0)
	{
	  PlaySound(519, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    Are you feeling well, Bonebreaker? Your presence here will certainly lift the spirits."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial96 += 1;
	  Delay(2*35);
	}
	else
	If(dial96 % 4 == 1)
	{
	  PlaySound(519, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    The demons have conquered the Underworld. There is nowhere left to hide... or maybe..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
      dial96 += 1;
	  Delay(2*35);
	}
	else
	If(dial96 % 4 == 2)
	{
	  PlaySound(519, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    Hmm... I doubt the Overworld is any safer. The human kingdoms have long been subdued..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
      dial96 += 1;
	  Delay(2*35);
	}
	else
	If(dial96 % 4 == 3)
	{
	  PlaySound(519, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    The north-western peaks are hard to reach... perhaps the frost goblins could shelter us?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
      dial96 += 1;
	  Delay(2*35);
	}
  }
}
int dial97 = 4;
Script 97 (void) //Reaver 1
{
  If(IsTIDUsed(522) && spec87 == 0)
  {
	If(dial97 % 4 == 0)
	{
	  PlaySound(522, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    It's nice to have you back, sergeant. Don't be too hard on yourself about our defeat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial97 += 1;
	  Delay(2*35);
	}
	else
	If(dial97 % 4 == 1)
	{
	  PlaySound(522, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    I heard you fought valiantly against the Baron. We all did everything we could to stop him."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial97 += 1;
	  Delay(2*35);
	}
	else
	If(dial97 % 4 == 2)
	{
	  PlaySound(522, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    We knew it was a losing battle... we never had a chance. Still, it was worth giving it a shot."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial97 += 1;
	  Delay(2*35);
	}
	else
	If(dial97 % 4 == 3)
	{
	  Hudmessage(s:"Reaver:    Might as well kick back and enjoy what's left of our world. It's going to end soon enough."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial97 += 1;
	  Delay(2*35);
	}
  }
}
int dial98 = 4;
Script 98 (void) //Fixer
{
  If(IsTIDUsed(523) && spec87 == 0)
  {
	If(dial98 % 4 == 0)
	{
	  PlaySound(523, "Fixer/Hm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Every week, they come take one of us away. I can't bear this anymore!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 1)
	{
	  PlaySound(523, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    They're treating us like cattle... they won't stop until we're all sacrificed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 2)
	{
	  PlaySound(523, "Fixer/Huh", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Is there any chance you could save us?... But where will we flee to?... they're everywhere!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
      dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 3)
	{
	  Hudmessage(s:"Fixer:    *Shivers and breathes anxiously*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
      dial98 += 1;
	  Delay(2*35);
	}
  }
}
int dial99 = 4;
Script 99 (void) //Reaver 2
{
  If(IsTIDUsed(524) && spec87 == 0)
  {
	If(dial99 % 4 == 0)
	{
	  PlaySound(524, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    This is pointless. We're trapped in here like a bunch of startled praaks."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial99 += 1;
	  Delay(2*35);
	}
	else
	If(dial99 % 4 == 1)
	{
	  Hudmessage(s:"Reaver:    We should've fled the Underworld while we still had a chance. I guess we'll die alongside Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial99 += 1;
	  Delay(2*35);
	}
	else
	If(dial99 % 4 == 2)
	{
	  PlaySound(524, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    You've been unconscious for quite long, haven't you? Here's a tip - try not to look outside."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial99 += 1;
	  Delay(2*35);
	}
	else
	If(dial99 % 4 == 3)
	{
	  Hudmessage(s:"Reaver:    The Baron's influence has spread like wildfire. Nothing can stop the demons now that they're united."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial99 += 1;
	  Delay(2*35);
	}
  }
}
int dial100 = 4;
Script 100 (void) //Witch
{
  If(IsTIDUsed(526) && spec87 == 0)
  {
	If(dial100 % 4 == 0)
	{
	  PlaySound(526, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    You look like you could really use a drink. It'll help you more than any potion at this point."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial100 += 1;
	  Delay(2*35);
	}
	else
	If(dial100 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    There aren't many fun things left to do around here. The demons have taken everything away..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial100 += 1;
	  Delay(2*35);
	}
	else
	If(dial100 % 4 == 2)
	{
	  PlaySound(526, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Yeah, yeah, we tried to fight back. It's just suicide at this point. Fuck it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial100 += 1;
	  Delay(2*35);
	}
	else
	If(dial100 % 4 == 3)
	{
	  PlaySound(526, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Hey, guess we can pride ourselves with how far we got. Too bad history won't remember us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial100 += 1;
	  Delay(2*35);
	}
  }
}
int dial101 = 4;
Script 101 (void) //Bear Warrior 1
{
  If(IsTIDUsed(527) && spec87 == 0)
  {
	If(dial101 % 4 == 0)
	{
	  PlaySound(527, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    How did the fight with the Baron go? I mean... we know how it ended. But it must've been close!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial101 += 1;
	  Delay(2*35);
	}
	else
	If(dial101 % 4 == 1)
	{
	  Hudmessage(s:"Bear Warrior:    The demons let us escape back here only so they could watch us die slowly. Sick bastards..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial101 += 1;
	  Delay(2*35);
	}
	else
	If(dial101 % 4 == 2)
	{
	  PlaySound(527, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I hate to just stay here and take this shit! Breaza is too cowardly to rally us to battle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial101 += 1;
	  Delay(2*35);
	}
	else
	If(dial101 % 4 == 3)
	{
	  PlaySound(527, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    You've slain more demons than all of us combined! Don't tell me you're willing to accept defeat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial101 += 1;
	  Delay(2*35);
	}
  }
}
int dial102 = 4;
Script 102 (void) //Bear Warrior 2
{
  If(IsTIDUsed(525) && spec87 == 0)
  {
	If(dial102 % 4 == 0)
	{
	  PlaySound(525, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Who's it going to be next, huh? I bet they'll leave you last. They want you to suffer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	}
	else
	If(dial102 % 4 == 1)
	{
	  PlaySound(525, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I'll gladly take a painful death over living on in this shitty new world..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	}
	else
	If(dial102 % 4 == 2)
	{
	  PlaySound(525, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Hey... if you wanna try doing something stupid... we've got your back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	}
	else
	If(dial102 % 4 == 3)
	{
	  PlaySound(525, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Do we really wanna die like a bunch of mongrels? What happened to our warrior spirit?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial102 += 1;
	  Delay(2*35);
	}
  }
}
int dial105 = 4;
Script 105 (void) //Earth Mother
{
  If(IsTIDUsed(521) && spec94 < 3)
  {
	If(dial105 % 4 == 0)
	{
	  PlaySound(521, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Earth Mother:    Make peace with the Gods, warrior. Stay true and they will embrace you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
      dial105 += 1;
	  Delay(2*35);
	}
	else
	If(dial105 % 4 == 1)
	{
	  PlaySound(521, "EarthMother/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Earth Mother:    We cannot outlive the Earth... the demons have poisoned her beyond hope."; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
      dial105 += 1;
	  Delay(2*35);
	}
	else
	If(dial105 % 4 == 2)
	{
	  Hudmessage(s:"Earth Mother:    All that matters now is the memory we leave behind. It will carry our soul onwards."; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
      dial105 += 1;
	  Delay(2*35);
	}
	else
	If(dial105 % 4 == 3)
	{
	  PlaySound(521, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Earth Mother:    The Iron Division will not live in chains. I'm ready to die with honor, if so are you. *Winks*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
      dial105 += 1;
	  Delay(2*35);
	}
  }
}



//GRINDER
Script 77 (void)
{
	Delay(16);
	Hudmessage(s:"Blue Baron:    Your grasp over reality is weak... come... jump into the abyss..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 3.5, 1.2, 1.5);
    PlaySound(0, "BlueBaron/Growl", CHAN_AUTO);
    SetActorFlag(0, "NODAMAGE", 1);
	Delay(2*35);
	PlaySound(0, "PsiDemon/AttackA", CHAN_AUTO);
	FadeTo(255, 100, 180, 1.0, 4.0);
	Delay(3*35);
	//Autosave(); crashes
	Delay(1*35);
	SetActorFlag(0, "NODAMAGE", 0);
	FadeTo(0, 0, 0, 1.0, 4.0);
	SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	Teleport_NoFog(775, 1, 0);
	ACS_Terminate(109, 0);
	ACS_Terminate(110, 0);
	//ACS_Terminate(118, 0);
	ACS_Terminate(119, 0);
	Delay(2*35);
	SetActorState(666, "ForgetTarget", 0);
	//Autosave(); crashes
	Delay(2*35);
	SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	ACS_Execute(78, 0, 0, 0, 0);
	Teleport_NoFog(485, 1, 0);
	FadeTo(0, 0, 0, 0.0, 2.0);
	SetActorFlag(0, "NOGRAVITY", 1);
	SetActorPitch(0, 0.25);
	Radius_Quake(1, 9*35, 0, 1, 0);
	Scroll_Wall(505, 0.0, 16.0, 0, 4);
	SetWeapon("Fists");
	Delay(1*35);
	PlaySound(0, "Character/ZanFall", CHAN_AUTO);
	Delay(2*35);
	//Autosave(); crashes
	Delay(3*35);

	Hudmessage(s:"The razors will grind your flesh... the fire will consume your soul..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.84, 4.5, 1.5, 2.5);
    PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	Delay(2*35);
	//Autosave(); crashes
	Delay(35);

	Floor_LowerByValue(504, 9999, 960);
	Scroll_Wall(505, 0.0, 0.0, 0, 4);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Activate(484);
	Scroll_Wall(483, 8.0, 16.0, 0, 2);
	Radius_Quake(9, 35, 0, 1, 0);
	Delay(35);
	FloorAndCeiling_RaiseByValue(487, 80, 9600);
	Radius_Quake(3, 20*35, 0, 1, 0);
	Delay(20*35);

	Hudmessage(s:"Abhaoth:    Over here! Catch my hands!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 4.5, 1.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	SpawnSpotForced("NPCAbhaothFalling", 502, 660, 0);

	Radius_Quake(2, 6*35, 0, 1, 0);
	Delay(5*35);
	Delay(20);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Radius_Quake(6, 35, 0, 1, 0);
	//FadeTo(0, 0, 0, 1.0, 0.1);
	ACS_Terminate(78, 0);
	Thing_Remove(484);
	Thing_Remove(660);
	//Delay(4);
	SetActorFlag(0, "NOGRAVITY", 0);
	Teleport_NoFog(503, 1, 0);
	TeleportOther(666, 700, 0);
	SetActorFlag(666, "NODAMAGE", 0);
	If(IsTIDUsed(769) == 0 && GameSkill() > SKILL_VERY_HARD)
	{
	  SpawnSpotForced("InventoryBracerOfTheRevenant", 770, 769, 0);
	}

	ACS_Execute(118, 0, 0, 0, 0);
	ACS_Execute(119, 0, 0, 0, 0);

	Delay(1);
	SetActorPitch(0, 0.0);
	ThrustThing(64, 70, 1, 0);
	ThrustThingZ(0, 80, 0, 0);
	//FadeTo(0, 0, 0, 0.0, 0.2);
	Scroll_Wall(483, 0.0, 0.0, 0, 2);
	Delay(35);
	//Autosave();
	Delay(105);
	Hudmessage(s:"Nithriel:    Finish her off already! We're too close to lose everything now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
    PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);

	ACS_Execute(109, 0, 0, 0, 0);
	spec110 = 25;
	ACS_Execute(110, 0, 0, 0, 0);
}
Script 78 (void)
{
	FloorAndCeiling_LowerByValue(479, 9999, 960);
	FloorAndCeiling_RaiseByValue(480, 9999, 960);
	ThrustThingZ(0, 15, 0, 0);
	ThrustThingZ(660, 20, 0, 0);
	If(GetActorPitch(0) < 0.12)
	{
	  SetActorPitch(0, 0.125);
	}
	SectorDamage(487, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(500, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_IN_AIR | DAMAGE_NO_ARMOR);
	Delay(4);
	FloorAndCeiling_LowerByValue(480, 9999, 960);
	FloorAndCeiling_RaiseByValue(479, 9999, 960);
	ThrustThingZ(0, 15, 0, 0);
	ThrustThingZ(660, 20, 0, 0);
	//SetActorPitch(0, 0.25);
	If(GetActorPitch(0) < 0.12)
	{
	  SetActorPitch(0, 0.125);
	}
	SectorDamage(487, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(500, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_IN_AIR | DAMAGE_NO_ARMOR);
	Delay(4);
	If(GetActorProperty(0, APROP_Health) <= 0)
	{
	  FadeTo(255, 0, 0, 1.0, 0.6);
	  ACS_Terminate(77, 0);
	}
	Restart;
}

//SPACE ARENA
int spec82 = 0;
Script 82 (void)
{
	ACS_Terminate(118, 0);
	PlaySound(0, "PsiDemon/AttackA", CHAN_AUTO);
	Radius_Quake(5, 156, 0, 1, 0);
	//SetActorFlag(666, "NODAMAGE", 1); //in script 118
	FadeTo(255, 100, 180, 1.0, 3.0);
	Delay(1*35);
	SetActorFlag(0, "NODAMAGE", 1);
	Delay(2*35);
	SetActorFlag(0, "NODAMAGE", 0);
	FadeTo(255, 180, 120, 0.0, 0.4);
	Teleport_NoFog(533, 1, 0);
	ThrustThing(192, 30, 0, 0);
	ACS_Terminate(119, 0);
	ACS_Execute(83, 0, 0, 0, 0);
	Delay(1);
	SetActorPitch(0, 0.0);
	Delay(70);
	//SetActorState(666, "ForgetTarget", 0);
	Ceiling_RaiseByValue(530, 16, 688);
	TagWait(530);
	Radius_Quake(2, 35, 0, 1, 0);
	Delay(105);
	Radius_Quake(9, 90, 0, 1, 0);
	PlaySound(531, "Ambient/Grinder", CHAN_AUTO);
	Ceiling_LowerByValue(530, 160, 688);
	TagWait(530);
	PlaySound(0, "Ambient/Crash", CHAN_AUTO);
	//Teleport_NoStop(532, 0, 0);
	Teleport_NoFog(776, 1, 0);
	If(spec82 == 0)
	{
	  SetActorAngle(666, 0.75);
	  TeleportOther(666, 700, 0);
	}
	//SetActorFlag(666, "NODAMAGE", 0);
	Delay(1);
	ThrustThingZ(0, 64, 0, 0);
	//ACS_Execute(118, 0, 0, 0, 0);
	//ACS_Execute(119, 0, 0, 0, 0);

	SetActorState(704, "ForgetTarget", 0);
    Thing_Remove(707);
    ChangeFloor(705, "Ice4");
	Thing_Deactivate(706);
	Line_SetBlocking(708, 0, BLOCKF_PROJECTILES);
	SetLineTexture(708, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(708, SIDE_BACK, TEXTURE_MIDDLE, "");
	ChangeFloor(709, "Ice4");
	Thing_Deactivate(710);
	Line_SetBlocking(711, 0, BLOCKF_PROJECTILES);
	SetLineTexture(711, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(711, SIDE_BACK, TEXTURE_MIDDLE, "");
	ChangeFloor(712, "Ice4");
	Thing_Deactivate(713);
	Line_SetBlocking(714, 0, BLOCKF_PROJECTILES);
	SetLineTexture(714, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(714, SIDE_BACK, TEXTURE_MIDDLE, "");
	ChangeFloor(715, "Ice4");
	Thing_Deactivate(716);
	Line_SetBlocking(717, 0, BLOCKF_PROJECTILES);
	SetLineTexture(717, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(717, SIDE_BACK, TEXTURE_MIDDLE, "");

	spec82 += 1;

	Delay(70);
	If(spec82 == 1)
	{
	  ACS_Execute(120, 0, 0, 0, 0);
	  If(GetActorProperty(0, APROP_Health) > 0)
	  {
	    Hudmessage(s:"Nithriel:    I have no use for weak allies, Baron! Finish. Her. Off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
        PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	  }
	  else
	  {
	    Hudmessage(s:"Nithriel:    Finally! She was far too close, dear Baron! I expected more from you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
        PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	  }
	}
	else
	If(spec82 == 2)
	{
	  Hudmessage(s:"Nithriel:    Yes! I'm so close! I can feel the Void overtaking me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
      PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	  Autosave();
	}
	else
	If(spec82 == 3)
	{
	  Hudmessage(s:"Nithriel:    The beacon is ready! I just need a little bit more..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
      PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
	else
	If(spec82 == 4)
	{
	  ACS_Terminate(120, 0);
	  ACS_Terminate(110, 0);
	  Hudmessage(s:"Nithriel:    Oh, great precursors, I am coming! I shall guide you back to our world!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 1.5);
      PlaySound(506, "Nithriel/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}

	SetActorFlag(666, "NODAMAGE", 0);
	Delay(8);
	ACS_Execute(118, 0, 0, 0, 0);
	ACS_Execute(119, 0, 0, 0, 0);
}
Script 83 (void)
{
	If(spec82 == 0)
	{
	  ChangeSky("Sky11", "Sky11");

	  Hudmessage(s:"Blue Baron:    There is no escape from here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.0, 1.0, 1.0);
      PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	  Delay(4*35);

      SetActorState(666, "ForgetTarget", 0);
	  TeleportOther(666, 700, 0);
	  TakeActorInventory(666, "BaronIsFlying", 1);

	  ChangeFloor(705, "MoltenSp");
	  Thing_Activate(706);
	  PlaySound(706, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  Hudmessage(s:"Abhaoth:    Quick! Take cover behind me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.78, 3.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(2*35);

	  SetActorState(704, "SpawnLoop", 0);
	  PlaySound(704, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  SpawnSpotForced("NPCAbhaothChanneling", 706, 707, 64);
	  Line_SetBlocking(708, BLOCKF_PROJECTILES, 0);
	  SetLineTexture(708, SIDE_FRONT, TEXTURE_MIDDLE, "Red2");
	  SetLineTexture(708, SIDE_BACK, TEXTURE_MIDDLE, "Red2");
	  TranslucentLine(708, 15, 0);
	  Delay(4);
	  TranslucentLine(708, 30, 0);
	  Delay(4);
	  TranslucentLine(708, 45, 0);
	  Delay(4);
	  TranslucentLine(708, 60, 0);
	  Delay(4);
	  TranslucentLine(708, 75, 0);
	  Delay(4);
	  TranslucentLine(708, 90, 0);
	  Delay(4);
	  TranslucentLine(708, 105, 0);
	  Delay(4);
	  TranslucentLine(708, 120, 0);
	  Delay(4);
	  TranslucentLine(708, 135, 0);
	  Delay(4);
	  TranslucentLine(708, 150, 0);
	  Delay(4);
	}
	else
	If(spec82 == 1)
	{
	  Hudmessage(s:"Blue Baron:    Why do you resist?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.0, 1.0, 1.0);
      PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	  Delay(4*35);

	  SetActorState(704, "SpawnLoop", 0);
	  PlaySound(704, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  ChangeFloor(709, "MoltenSp");
	  Thing_Activate(710);
	  PlaySound(710, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  Hudmessage(s:"Abhaoth:    Over here! I will absorb the damage..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.78, 3.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(2*35);

	  SpawnSpotForced("NPCAbhaothChanneling", 710, 707, 0);
	  Line_SetBlocking(711, BLOCKF_PROJECTILES, 0);
	  SetLineTexture(711, SIDE_FRONT, TEXTURE_MIDDLE, "Red2");
	  SetLineTexture(711, SIDE_BACK, TEXTURE_MIDDLE, "Red2");
	  TranslucentLine(711, 15, 0);
	  Delay(4);
	  TranslucentLine(711, 30, 0);
	  Delay(4);
	  TranslucentLine(711, 45, 0);
	  Delay(4);
	  TranslucentLine(711, 60, 0);
	  Delay(4);
	  TranslucentLine(711, 75, 0);
	  Delay(4);
	  TranslucentLine(711, 90, 0);
	  Delay(4);
	  TranslucentLine(711, 105, 0);
	  Delay(4);
	  TranslucentLine(711, 120, 0);
	  Delay(4);
	  TranslucentLine(711, 135, 0);
	  Delay(4);
	  TranslucentLine(711, 150, 0);
	  Delay(4);
	}
	else
	If(spec82 == 2)
	{
	  Hudmessage(s:"Blue Baron:    You... you cannot defeat us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.0, 1.0, 1.0);
      PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	  Delay(2*35);

	  SetActorState(704, "SpawnLoop", 0);
	  PlaySound(704, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
	  Delay(2*35);

	  ChangeFloor(712, "MoltenSp");
	  Thing_Activate(713);
	  PlaySound(710, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  Hudmessage(s:"Abhaoth:    Hurry up! Ngh... I don't know for how long I can keep doing this!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.78, 3.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Delay(2*35);

	  SpawnSpotForced("NPCAbhaothChanneling", 713, 707, 0);
	  Line_SetBlocking(714, BLOCKF_PROJECTILES, 0);
	  SetLineTexture(714, SIDE_FRONT, TEXTURE_MIDDLE, "Red2");
	  SetLineTexture(714, SIDE_BACK, TEXTURE_MIDDLE, "Red2");
	  TranslucentLine(714, 15, 0);
	  Delay(4);
	  TranslucentLine(714, 30, 0);
	  Delay(4);
	  TranslucentLine(714, 45, 0);
	  Delay(4);
	  TranslucentLine(714, 60, 0);
	  Delay(4);
	  TranslucentLine(714, 75, 0);
	  Delay(4);
	  TranslucentLine(714, 90, 0);
	  Delay(4);
	  TranslucentLine(714, 105, 0);
	  Delay(4);
	  TranslucentLine(714, 120, 0);
	  Delay(4);
	  TranslucentLine(714, 135, 0);
	  Delay(4);
	  TranslucentLine(714, 150, 0);
	  Delay(4);
	}
	else
	If(spec82 == 3)
	{
	  Hudmessage(s:"Blue Baron:    Arrrrrgh!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.0, 1.0, 1.0);
      PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	  Delay(1*35);

	  SetActorState(704, "SpawnLoop", 0);
	  PlaySound(704, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
	  Delay(2*35);

	  ChangeFloor(715, "MoltenSp");
	  Thing_Activate(716);
	  PlaySound(710, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);

	  Delay(1*35);

	  Hudmessage(s:"Abhaoth:    *Pants in exhaustion* Zan... get behind me... I..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.78, 5.5, 0.2, 2.5);
	  PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	  Line_SetBlocking(717, BLOCKF_PROJECTILES, 0);
	  Delay(2*35);

	  SpawnSpotForced("NPCAbhaothChanneling", 716, 707, 0);
	  SetLineTexture(717, SIDE_FRONT, TEXTURE_MIDDLE, "Red2");
	  SetLineTexture(717, SIDE_BACK, TEXTURE_MIDDLE, "Red2");
	  TranslucentLine(717, 15, 0);
	  Delay(4);
	  TranslucentLine(717, 30, 0);
	  Delay(4);
	  TranslucentLine(717, 45, 0);
	  Delay(4);
	  TranslucentLine(717, 60, 0);
	  Delay(4);
	  TranslucentLine(717, 75, 0);
	  Delay(4);
	  TranslucentLine(717, 90, 0);
	  Delay(4);
	  TranslucentLine(717, 105, 0);
	  Delay(4);
	  TranslucentLine(717, 120, 0);
	  Delay(4);
	  TranslucentLine(717, 135, 0);
	  Delay(4);
	  TranslucentLine(717, 150, 0);
	  Delay(4);
	}
}

//BOSS FINALE
Script 84 (void)
{
    If(GetActorProperty(0, APROP_Health) <= 0)
	{
		Hudmessage(s:"Nithriel:    Finally! Well done, my dear Baron! Nothing can stop us now! Prepare this world for my return..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.84, 6.5, 0.2, 3.5);
        PlaySound(506, "Nithriel/Laugh", CHAN_AUTO, 1.0, false, ATTN_NONE);
		FadeTo(255, 255, 255, 1.0, 7.0);
		Delay(10*35);
		Terminate;
	}
	ACS_Terminate(109, 0);
	ACS_Terminate(110, 0);
	ACS_Terminate(118, 0);
	ACS_Terminate(119, 0);
	ACS_Terminate(120, 0);
	ACS_Terminate(82, 0);
	ACS_Terminate(83, 0);
	PlaySound(0, "Ambient/BuildUp", CHAN_AUTO, 1.0, false, ATTN_NONE);
	FadeTo(255, 100, 180, 1.0, 3.0);
	Radius_Quake(5, 156, 0, 1, 0);
	Thing_Destroy(667, 1, 0);
	SetActorFlag(666, "NODAMAGE", 1);
	SetActorFlag(0, "NODAMAGE", 1);
	SetActorFlag(0, "NOPAIN", 1);
	SetActorState(666, "PainLoop", 1);
	Hudmessage(s:"Blue Baron:    Noooooo!!! This... how could I fail so?... This cannot... this cannot be-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.8, 1.0, 0.5);
	PlaySound(0, "BlueBaron/Grr", CHAN_AUTO);
	Delay(3*35);
	SetWeapon("Fists");
	SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	Teleport_NoFog(532, 0, 0);
	Thing_Remove(666);
	SetLineTexture(718, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(718, SIDE_BACK, TEXTURE_MIDDLE, "");
	Thing_Remove(704);
	Delay(35);
	TakeInventory("IsPlaying", 1);
	SpawnSpotForced("BlueBaron", 719, 666, 64);
	SetActorProperty(666, APROP_ScaleX, 0.5);
	SetActorProperty(666, APROP_ScaleY, 0.5);
	Thing_Destroy(666, 0, 0);
	FadeTo(255, 100, 180, 0.0, 0.5);

	ChangeCamera(720, 0, 0);
	Delay(50);
	TakeInventory("IsPlaying", 1);
	ChangeCamera(721, 0, 0);
	Delay(45);
	TakeInventory("IsPlaying", 1);
	ChangeCamera(720, 0, 0);
	Delay(40);
	ChangeCamera(721, 0, 0);
	Delay(35);
	ChangeCamera(720, 0, 0);
	Delay(30);
	ChangeCamera(721, 0, 0);
	Delay(25);
	ChangeCamera(720, 0, 0);
	Delay(20);
	ChangeCamera(721, 0, 0);
	Delay(15);
	ChangeCamera(720, 0, 0);
	Delay(10);
	ChangeCamera(721, 0, 0);
	Delay(5);
	ChangeCamera(720, 0, 0);
	Delay(5);
	//12 sec so far
	ACS_Execute(48, 0, 0, 0, 0);
	Delay(3*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);
	//18 sec so far
	TakeInventory("IsPlaying", 1);
	ChangeCamera(876, 0, 0);
	Thing_Activate(876);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Radius_Quake(3, 105, 0, 10, 506);
	Hudmessage(s:"Nithriel:    Good job getting rid of him, Halfblood, but you are always too late! Enjoy peace! It won't last long..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 6.5, 0.2, 1.5);
	PlaySound(506, "Nithriel/Active", CHAN_AUTO);
	Delay(3*35);
	Radius_Quake(8, 105, 0, 10, 506);
	FadeTo(255, 255, 255, 1.0, 3.0);
	Delay(3*35);
	//24 sec
	PlaySound(506, "Nithriel/Laugh", CHAN_AUTO);
	Delay(3*35);

    SetWeapon("Fists");
	GiveInventory("ScriptHasDefeatedBlueBaron", 1);
	Delay(16);
	ChangeLevel("Map21", 5, CHANGELEVEL_NOINTERMISSION, -1);
	/*

	TakeInventory("IsPlaying", 1);

	FadeTo(0, 0, 0, 1.0, 6.0);
	Delay(2*35);
	Hudmessage(s:"Battered and bloodied from head to toe, Zan gazed upon the Icon's body as it twitched and spurted purple slime.   "; HUDMSG_TYPEON | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.30, 44.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"It was no mind trick... the Baron was truly dead.      A shadowy figure darted over the Halfblood's head, shaking her"; HUDMSG_TYPEON | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.32, 36.0, 0.06, 5.0);
	Delay(7*35);
	Delay(12);
	Hudmessage(s:"out of her trance.      All she could hear next was Nithriel's rasp laughter.   Abhaoth conjured dark tendrils, lashing"; HUDMSG_TYPEON | HUDMSG_LOG, 3, CR_WHITE, 1.5, 0.34, 28.0, 0.06, 5.0);
	Delay(7*35);
	Delay(12);
	Hudmessage(s:"them at the pod with fury and desperation, but alas, it was hopeless. As she collapsed to the ground in exhaustion,"; HUDMSG_TYPEON | HUDMSG_LOG, 4, CR_WHITE, 1.5, 0.36, 20.0, 0.06, 5.0);
	Delay(7*35);
	Delay(12);
	Hudmessage(s:"the image of bright rays of light decomposing the Elf's body was ingrained in her fading vision.      Zan hopped next to"; HUDMSG_TYPEON | HUDMSG_LOG, 5, CR_WHITE, 1.5, 0.38, 12.0, 0.06, 5.0);
	Delay(7*35);
	Delay(12);
	Hudmessage(s:"her and pounded on the glass, but it was too late...                                                                                                                                 "; HUDMSG_TYPEON | HUDMSG_LOG, 6, CR_WHITE, 1.5, 0.40, 0.1, 0.06, 4.0);
	Delay(12*35);
	Delay(15);
	SetMusic("HTrack37", 0);
	Delay(20);
	FadeTo(0, 0, 0, 0.0, 8.0);


    //Spaceship
	SetActorFlag(741, "INVISIBLE", 1);
	ChangeCamera(886, 0, 0);
	Thing_Activate(886);
	SetActorProperty(740, APROP_Friction, 6.0);
	ThrustThing(192, 1, 0, 740);
	Delay(9*35);
	FadeTo(255, 255, 255, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(740);

    FadeTo(255, 255, 255, 0.0, 2.0);
    ChangeCamera(906, 0, 0);
	Thing_Activate(906);
	Hudmessage(s:"Nithriel:    Masters! Your daughter has arrived!... Wait... No!... What happened here?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 3.0, 2.0, 4.0);
	Delay(2*35);
	FloorAndCeiling_RaiseByValue(745, 48, 160);
	Ceiling_RaiseByValue(744, 48, 160);
    PlaySound(748, "Nithriel/Active", CHAN_AUTO);
	Delay(3*35);
	FadeTo(0, 0, 0, 1.0, 4.0);
	Delay(4*35);

    FadeTo(0, 0, 0, 0.0, 2.0);
	SetActorFlag(741, "INVISIBLE", 0);
	Thing_Activate(896);
	ChangeCamera(896, 0, 0);
	Delay(4*35);
	SetActorState(741, "PowerOn", 0);
	Delay(6*35);

    ChangeCamera(907, 0, 0);
	Thing_Activate(752);
	ChangeSky("Sky11", "Sky11");
	SetSkyScrollSpeed(1, -155);
    Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 4.0);
	Delay(4*35);
	Thing_Remove(752);

	//Chariot
	ChangeCamera(793, 0, 0);
	//Thing_Activate(793);
	//Radius_Quake2(793, 1, 700, 0, 64, "misc/silence");
	ACS_Execute(81, 0, 0, 0, 0);
	Scroll_Floor(577, -320, -80, SCROLL);
	Scroll_Wall(578, -10.0, 0.0, 0, 4);
	Scroll_Wall(579, 10.0, 0.0, 0, 4);
	Hudmessage(s:"As the Baron's dying echoes riled up the spirits of the sacrificed, Zan made her swift escape back to the camp."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 10.0, 3.0, 2.0);
	Delay(2*35);
	Thing_Activate(793);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(2*35);
	If(CheckInventory("ScriptBadKarma") == 0)
	{
	  Hudmessage(s:"Having overcome all the hellish trials through wit and might, her heart pounded proudly. She was victorious."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 7.0, 2.0, 2.0);
	}
	else
	If(CheckInventory("ScriptBadKarma") == 1)
	{
	  Hudmessage(s:"Having overcome many of the hellish trials through wit and might, her heart eased with relief. She had won."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 7.0, 2.0, 2.0);
	}
	else
	If(CheckInventory("ScriptBadKarma") == 2)
	{
	  Hudmessage(s:"Now that the hellish trials she had endured were finally behind, her heart's beat would mellow. It was over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 7.0, 2.0, 2.0);
	}
	else
	If(CheckInventory("ScriptBadKarma") > 2)
	{
	  Hudmessage(s:"The hellish trials she had endured had left her heart scarred. She glanced back briefly. It was finally over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 7.0, 2.0, 2.0);
	}
	Delay(9*35);
	Hudmessage(s:"ART, ANIMATION, PROGRAMMING, WRITING, LEVEL DESIGN, SOUND DESIGN, PUBLISHING"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.14, 4.0, 1.0, 1.0);
    Hudmessage(s:"by Zan_HedonDev"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.16, 4.0, 1.0, 1.0);
	Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(35);
	Scroll_Floor(577, 0, 0, SCROLL);
	Scroll_Wall(578, 0.0, 0.0, 0, 4);
	Scroll_Wall(579, 0.0, 0.0, 0, 4);
	ACS_Terminate(81, 0);

	//Demons
	ChangeCamera(779, 0, 0);
	Thing_Activate(779);
	FadeTo(0, 0, 0, 0.0, 1.0);
	SpawnSpotForced("NPCYzbethRegular", 580, 665, 192);
	SetActorFlag(580, "NOBLOCKMAP", 1);
	SetActorFlag(580, "NODAMAGE", 1);
	SpawnSpotForced("SniperHellion", 581, 663, 0);
	SpawnSpotForced("Cerberus", 582, 663, 224);
	SpawnSpotForced("Glutton", 583, 663, 192);
	SpawnSpotForced("Cerberus", 584, 664, 128);
	SpawnSpotForced("Hellblaze", 585, 664, 64);
	Thing_Hate(663, 664, 4);
	Thing_Hate(664, 663, 4);
	Hudmessage(s:"After losing their Icon, the hordes of chaos were quick to turn on each other, driven by their lust for power."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 11.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"As the plan for a united invasion was ruined, their foul influence over the world would soon begin to dwindle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 7.0, 2.0, 2.0);
	Delay(1*35);
	SpawnSpotForced("PitLord", 586, 663, 0);
	SpawnSpotForced("Cerberus", 588, 663, 192);
	SpawnSpotForced("PitLord", 587, 664, 128);
	Thing_Hate(663, 664, 4);
	Thing_Hate(664, 663, 4);
	Delay(3*35);
	SpawnSpotForced("SniperHellion", 589, 663, 128);
	SpawnSpotForced("SniperHellion", 590, 664, 0);
	Thing_Hate(663, 664, 4);
	Thing_Hate(664, 663, 4);
	Delay(6*35);
	Hudmessage(s:"SOUNDTRACK"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.14, 7.0, 1.0, 2.0);
    Hudmessage(s:"Akhzul"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.16, 7.0, 1.0, 2.0);
	Hudmessage(s:"Alexander Brandon"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.18, 7.0, 1.0, 2.0);
	Hudmessage(s:"Breathelast"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.20, 7.0, 1.0, 2.0);
	Hudmessage(s:"Doomnezeu"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.22, 7.0, 1.0, 2.0);
	Hudmessage(s:"Methadone Skies"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.24, 7.0, 1.0, 2.0);
	Hudmessage(s:"Michiel van den Bos"; HUDMSG_FADEINOUT | HUDMSG_LOG, 106, CR_WHITE, 1.5, 0.26, 7.0, 1.0, 2.0);
	Hudmessage(s:"Mumble Etc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 107, CR_WHITE, 1.5, 0.28, 7.0, 1.0, 2.0);
	Hudmessage(s:"Zan_HedonDev"; HUDMSG_FADEINOUT | HUDMSG_LOG, 108, CR_WHITE, 1.5, 0.30, 7.0, 1.0, 2.0);
	Delay(5*35);
	PlaySound(665, "Hellion/Active", CHAN_AUTO);
	Delay(4*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(663);
	Thing_Remove(664);
	Thing_Remove(665);

    //Minotaurs
    ChangeCamera(796, 0, 0);
	Thing_Activate(796);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Thing_Activate(592);
    Hudmessage(s:"The demons may have been defeated, but the scars they left behind burned like painful embers."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 10.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"Lord Murguth journeyed to his ancestral home, hoping to recover the heritage lost among the ruins."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 6.0, 2.0, 2.0);
	Delay(9*35);
	Hudmessage(s:"Cover art by Dario Martinez, Pau Barz"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.36, 4.0, 1.0, 1.0);
	Hudmessage(s:"Extra posters & paintings by Eraanthe, Jessy Ruiz, JustSomeNoob, Pyss"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.38, 4.0, 1.0, 1.0);
	Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(592);

	//Dwarves
    ChangeCamera(806, 0, 0);
	Thing_Activate(806);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Thing_Activate(595);
	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") == 0)
	{
		Thing_Remove(606);
	}
    Hudmessage(s:"The dwarves returned to Icepeak, hoping to be able to repopulate their ancient towns one day."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 9.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"Lady Ingrim soon gave birth to her late lord's son, sparking hope for a brighter future."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 5.0, 2.0, 2.0);
	Delay(8*35);
	Hudmessage(s:"VOICE ACTING"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.16, 6.0, 1.0, 1.0);
    Hudmessage(s:"Zan - Olivia Steele"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.18, 6.0, 1.0, 1.0);
	Hudmessage(s:"Bear Warrior - Sara Mears"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.20, 6.0, 1.0, 1.0);
	Hudmessage(s:"Lancer - Emaline Tuck"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.22, 6.0, 1.0, 1.0);
	Hudmessage(s:"Reaver - SB Steagall"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.24, 6.0, 1.0, 1.0);
	Hudmessage(s:"Fixer - Sophia Rosie"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.26, 6.0, 1.0, 1.0);
	Hudmessage(s:"Witch - Midnight Datura"; HUDMSG_FADEINOUT | HUDMSG_LOG, 106, CR_WHITE, 1.5, 0.28, 6.0, 1.0, 1.0);
	Hudmessage(s:"Earth Mother - Katie Otten"; HUDMSG_FADEINOUT | HUDMSG_LOG, 107, CR_WHITE, 1.5, 0.30, 6.0, 1.0, 1.0);
	Hudmessage(s:"The King (easter egg) - Jon St. John "; HUDMSG_FADEINOUT | HUDMSG_LOG, 108, CR_WHITE, 1.5, 0.32, 6.0, 1.0, 1.0);
	Delay(7*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(595);

	//Crystal Heart
    ChangeCamera(773, 0, 0);
	Thing_Activate(773);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Thing_Activate(596);
	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
	{
		Hudmessage(s:"Under the Curator's care, the Disk worked to revigorate the dying crystal formations."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 9.0, 2.0, 2.0);
	}
	else
	{
	  Thing_Remove(597);
      Hudmessage(s:"The Disk was returned just in time to revigorate the dying energy crystal formations."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 9.0, 2.0, 2.0);
	}
	Delay(4*35);
	Hudmessage(s:"The Lancers discussed the future of their caste, wondering how they'd replace their fallen."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 5.0, 2.0, 2.0);
	Delay(4*35);
	SetActorAngle(791, 1.0);
	Delay(4*35);
	Hudmessage(s:"Thanks to all the dedicated testers for their feedback and suggestions:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 6.0, 1.0, 1.0);
	Hudmessage(s:"Mr Red, DevouredOne, Anna_Maniac, Eraanthe, Bluefire, TaBby, KECG, Hatguy, Badguy292"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 6.0, 1.0, 1.0);
	Hudmessage(s:"Sykomancer, spart_n, Red Charge, The Individualist, Corn on the Macabre, Stormyface"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 6.0, 1.0, 1.0);
	Delay(7*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(596);

	//Nature
    ChangeCamera(768, 0, 0);
	Thing_Activate(768);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Thing_Activate(599);
	Thing_Activate(615);
	SpawnSpotForced("LeafFallgenerator", 754, 0, 0);
	Hudmessage(s:"As the crystals nourished the underworld with heat and light, the flora began to recover."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 9.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"This allowed for many dissidents of the Cult to survive and lay the foundation for a free life."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 5.0, 2.0, 2.0);
	Delay(4*35);
	Thing_Activate(598);
	Delay(4*35);
	Hudmessage(s:"SPECIAL THANKS TO"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.20, 6.0, 1.0, 1.0);
	Hudmessage(s:"iamfailtacular - bits of character and lore inspiration"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.22, 6.0, 1.0, 1.0);
	Hudmessage(s:"Mr. Red - proof reading"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.24, 6.0, 1.0, 1.0);
	Hudmessage(s:"Vostyok, JaywalkingKnight, DoomKrakken, Nuke - help with technical issues"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.26, 6.0, 1.0, 1.0);
	Hudmessage(s:"Sgt_Mark_IV - brutal AI code base"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.28, 6.0, 1.0, 1.0);

	Hudmessage(s:"And thanks to everyone who made Hedon fanart and memes!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.32, 6.0, 1.0, 1.0);
	Delay(7*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(598);
	Thing_Remove(599);

	//Council
    ChangeCamera(816, 0, 0);
	Thing_Activate(816);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Thing_Activate(602);
	If(CheckInventory("ScriptHasKilledGrundsWarg") > 0)
	{
		Thing_Remove(603);
	}
	Hudmessage(s:"The Iron Division leaders held council to assess their victory, and discuss the future of their clan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 8.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"Chieftain Zura brought up the dark corruption. It was one of the many threats that still loomed over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 4.0, 2.0, 2.0);
	Delay(7*35);
	Hudmessage(s:"GZDOOM ENGINE"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.34, 5.0, 1.0, 1.0);
    Hudmessage(s:"Graf Zahl - lead development"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.36, 5.0, 1.0, 1.0);
	Hudmessage(s:"The Doom Community - feedback and contributions"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.38, 5.0, 1.0, 1.0);
	Hudmessage(s:"John Carmack - original id Tech 1 Engine"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.40, 5.0, 1.0, 1.0);
	Hudmessage(s:"Rachael - hGZDoom (Hedon specific GZDoom fork)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.42, 5.0, 1.0, 1.0);

	Hudmessage(s:"Daniel Jenssen - Hedon Linux version compilation & testing"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.46, 5.0, 1.0, 1.0);
	Delay(6*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);
	Thing_Remove(602);

	//Plaza
    ChangeCamera(826, 0, 0);
	Thing_Activate(826);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Hudmessage(s:"A plan was devised to rebuild Valc into a stronghold worthy of those who stood brave against the Demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.88, 9.0, 2.0, 2.0);
	Delay(4*35);
	Hudmessage(s:"Visitors came eager to trade goods and war stories. The legend of the Iron Division spread far and wide."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.90, 5.0, 2.0, 2.0);
	Delay(8*35);
	PlaySound(751, "ForgeElemental/Active", CHAN_AUTO);
	SetActorFlag(751, "FLOATBOB", 0);
	ThrustThingZ(751, 5, 0, 1);
	ThrustThing(192, 1, 0, 751);

	Hudmessage(s:"SLADE3 DOOM EDITOR by Simon Judd"; HUDMSG_FADEINOUT | HUDMSG_LOG, 109, CR_WHITE, 1.5, 0.12, 5.0, 1.0, 1.0);

    Hudmessage(s:"GZDOOM BUILDER"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.16, 5.0, 1.0, 1.0);
    Hudmessage(s:"MaxED - design and programming"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.18, 5.0, 1.0, 1.0);
	Hudmessage(s:"Gez - game configurations"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.20, 5.0, 1.0, 1.0);

	Hudmessage(s:"ULTIMATE DOOM BUILDER"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.24, 5.0, 1.0, 1.0);
	Hudmessage(s:"boris, ZZYZX - programming"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.26, 5.0, 1.0, 1.0);
	Hudmessage(s:"dpJudas - OpenGL renderer"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.28, 5.0, 1.0, 1.0);
	Hudmessage(s:"StrikerMan780 - 64 bit version"; HUDMSG_FADEINOUT | HUDMSG_LOG, 106, CR_WHITE, 1.5, 0.30, 5.0, 1.0, 1.0);
	Hudmessage(s:"Talon1024 - Linux compatibility"; HUDMSG_FADEINOUT | HUDMSG_LOG, 107, CR_WHITE, 1.5, 0.32, 5.0, 1.0, 1.0);
	Hudmessage(s:"anotak - performance optimizations"; HUDMSG_FADEINOUT | HUDMSG_LOG, 108, CR_WHITE, 1.5, 0.34, 5.0, 1.0, 1.0);
	Delay(6*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);

    //Patreon Gallery
	ChangeCamera(799, 0, 0);
	Thing_Activate(799);
	FadeTo(0, 0, 0, 0.0, 2.0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Thanks to EVERYONE who financially supported Hedon on Patreon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.08, 18.0, 1.0, 1.0);

	Hudmessage(s:"\c[Blue]LukeB\c-     \c[LightBlue]Eisenhorn\c-     \c[Purple]Sleepy Mei\c-     \c[DarkGreen]Murdo McClelland\c-     Red Charge     \c[LightBlue]Simon P\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.14, 18.0, 1.0, 1.0);
	Hudmessage(s:"Danyx992     \c[Gray]ekwood\c-     \c[Cyan]Infab\c-     \c[DarkRed]SuggestiveBox\c-     \c[Red]Badguy292\c-     \c[Olive]Burchy\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.16, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Purple]Elzevir Mensk\c-     \c[Brick]D1SoveR\c-     Vdubs     \c[DarkGreen]Chaos Embrace\c-     \c[Cyan]Willag_mac\c-     Christian Morris"; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.18, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[LightBlue]Gary_#23\c-     Jacob Markley     \c[cream]papyLaPlage\c-     \c[LightBlue]Anna_Maniac\c-     Daniel Jewell     \c[Purple]KitsuneNZ\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.20, 18.0, 1.0, 1.0);
	Hudmessage(s:"Robert Phair     Karitan Aegis     \c[Green]adamboye\c-     \c[DarkGray]strange desire\c-     Kyurae Minasaki     \c[Gold]KnobGoblin\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.22, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Cyan]Mortician175\c-     \c[DarkRed]Alex 'Razor' Penn\c-     \c[Blue]KECG\c-     Metazealot     Darth-Morella     Albatross"; HUDMSG_FADEINOUT | HUDMSG_LOG, 70, CR_UNTRANSLATED, 1.5, 0.24, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Red]Mr Red\c-     Copper Boltwire     Emotive Remembrancer     Regular Dude     \c[Orange]Mercs\c-     \c[Gold]ArtOfShred\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.26, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Green]DS98\c-     Vodyanoi     Salokin Sekwah     Iceman13     Ion B. Fork     Robopatron"; HUDMSG_FADEINOUT | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.28, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Red]Aegis\c-     \c[Orange]KOL_Freak\c-     Samuel Stacey     William Vicic     CaptainRumia     \c[Purple]Siegfried Pinzer\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.30, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Green]AMIG\c-     \c[Red]Arn\c-     \c[LightBlue]Bluefire\c-     \c[DarkRed]LuzTheBuz~\c-     \c[Olive]CoreySchimpf\c-     Grey"; HUDMSG_FADEINOUT | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.32, 18.0, 1.0, 1.0);
	Hudmessage(s:"ha ha     Scott Schwerdfeger     \c[Purple]screenThief\c-     Spookems     \c[DarkRed]Zixon01\c-     Echo Byrnes"; HUDMSG_FADEINOUT | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.34, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Red]GirlieAllie\c-     Hatty     \c[Cyan]Kevin Fung\c-     Mark Grubich     \c[Olive]Spooks\c-     \c[Brick]Third-Energy\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.36, 18.0, 1.0, 1.0);
	Hudmessage(s:"Father Opossum     \c[Gold]Hatguy\c-     \c[Brick]Julien Grenier\c-     Chainworm Kommando     Paul     \c[Cyan]Stormyface\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.38, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Brick]Willa Grey\c-     \c[Red]BloodRaven\c-     Jessy Ruiz     \c[Purple]puddy1\c-     Alexzerker     BreadMan"; HUDMSG_FADEINOUT | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.40, 18.0, 1.0, 1.0);
	Hudmessage(s:"Frank     Frawlawk     \c[Green]Shroomer\c-     Piklz     Ycoobooveech     Sarah"; HUDMSG_FADEINOUT | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.42, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[Red]RawbGM\c-     \c[Yellow]White Sarcophagus\c-     \c[Purple]Anri_Wanri\c-     Joseph Culbertson     Terrible Gyros     \c[Gold]Nick\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.44, 18.0, 1.0, 1.0);
	Hudmessage(s:"Tadhg Briody     \c[DarkRed]Richard Winfield\c-     \c[Gold]onionknight007\c-     L3GAC7     Lynn"; HUDMSG_FADEINOUT | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.46, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[DarkGreen]William Stowe\c-     M.A. Kerr     Alexander Howard     Benjamin Judah Phelps     SuperShamu     Bradley Greene"; HUDMSG_FADEINOUT | HUDMSG_LOG, 18, CR_UNTRANSLATED, 1.5, 0.48, 18.0, 1.0, 1.0);
	Hudmessage(s:"\c[DarkRed]Flakbait\c-     Conor Ryan     D the Rage     Jawblade     Tyler Brogna     Zephonius"; HUDMSG_FADEINOUT | HUDMSG_LOG, 19, CR_UNTRANSLATED, 1.5, 0.50, 18.0, 1.0, 1.0);
	Hudmessage(s:"Nistal     Knugen     Kiyu 69     Lilium     \c[Purple]Koomi\c-     Hrogue     \c[LightBlue]Ivalera-Pixie\c-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.52, 18.0, 1.0, 1.0);
	Hudmessage(s:"Mathias Andren     Monster Gang     Nano pois0n     null value     Shaeoggath     Abreu"; HUDMSG_FADEINOUT | HUDMSG_LOG, 21, CR_UNTRANSLATED, 1.5, 0.54, 18.0, 1.0, 1.0);
	Hudmessage(s:"Sage Emerald     Casadactyl     Allegory     BeardedDoomGuy     CsOsH     Dark Castle"; HUDMSG_FADEINOUT | HUDMSG_LOG, 22, CR_UNTRANSLATED, 1.5, 0.56, 18.0, 1.0, 1.0);
	Hudmessage(s:"dm3_inks     Doom64Hunter     elm     Kat G     Komen     leebigh"; HUDMSG_FADEINOUT | HUDMSG_LOG, 23, CR_UNTRANSLATED, 1.5, 0.58, 18.0, 1.0, 1.0);
	Hudmessage(s:"neonblitzer     Nothing Here     Robin Law     Agar6     William M"; HUDMSG_FADEINOUT | HUDMSG_LOG, 24, CR_UNTRANSLATED, 1.5, 0.60, 18.0, 1.0, 1.0);
	Hudmessage(s:"awesomepossum     Shiznot     5 Pyr     Cadaver747     Iceman2343"; HUDMSG_FADEINOUT | HUDMSG_LOG, 25, CR_UNTRANSLATED, 1.5, 0.62, 18.0, 1.0, 1.0);
	Hudmessage(s:"Kurreh     Slinks     drauch     Natalie Westland     m8f     David Coleman"; HUDMSG_FADEINOUT | HUDMSG_LOG, 26, CR_UNTRANSLATED, 1.5, 0.64, 18.0, 1.0, 1.0);
	Hudmessage(s:"Rougetaal     Frostburn34     Thomas Read     Cave Johnson     Dege De     ecamber"; HUDMSG_FADEINOUT | HUDMSG_LOG, 27, CR_UNTRANSLATED, 1.5, 0.66, 18.0, 1.0, 1.0);
	Hudmessage(s:"Jess     Joslyn     Keary R Read     Lem     Sakis Lioliosidis     ZombieSweeper     Bender"; HUDMSG_FADEINOUT | HUDMSG_LOG, 28, CR_UNTRANSLATED, 1.5, 0.68, 18.0, 1.0, 1.0);
	Hudmessage(s:"Zeuraith     Techno_Joe     Ugly bastard tag in twitter     Vilhelm Puddintain     Sasha the Lynx"; HUDMSG_FADEINOUT | HUDMSG_LOG, 29, CR_UNTRANSLATED, 1.5, 0.70, 18.0, 1.0, 1.0);
	Hudmessage(s:"Ben Croft     daskbruh     Zerzey     BazookaDre     frog.foot     Henry Harland Proudlock Propsting"; HUDMSG_FADEINOUT | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.72, 18.0, 1.0, 1.0);
	Hudmessage(s:"Joel Acklen     Yizz the Eunuch     Jonathan LiszkaHackzell     dirtygrass     Krimm Fortuna     Sexy Sadie"; HUDMSG_FADEINOUT | HUDMSG_LOG, 31, CR_UNTRANSLATED, 1.5, 0.74, 18.0, 1.0, 1.0);
	Hudmessage(s:"Asura     Bonitz Andras     Seras Ming     Dave Allen     blah     Jim Lewis"; HUDMSG_FADEINOUT | HUDMSG_LOG, 32, CR_UNTRANSLATED, 1.5, 0.76, 18.0, 1.0, 1.0);
	Hudmessage(s:"patreonpatreonpatreon     Snaked     epsaavedra     evergreen     Hans Christian Ruders Damgaard     James Mooney"; HUDMSG_FADEINOUT | HUDMSG_LOG, 33, CR_UNTRANSLATED, 1.5, 0.78, 18.0, 1.0, 1.0);
	Hudmessage(s:"Jeff Cotten     Kammeri     Locorotor     Simon B     Someone Someone     Trent maudier"; HUDMSG_FADEINOUT | HUDMSG_LOG, 34, CR_UNTRANSLATED, 1.5, 0.80, 18.0, 1.0, 1.0);
	Hudmessage(s:"Xev     Deathmarine     Drasticdoggo     Meena D.     John Poole     Killswitch"; HUDMSG_FADEINOUT | HUDMSG_LOG, 35, CR_UNTRANSLATED, 1.5, 0.82, 18.0, 1.0, 1.0);
	Hudmessage(s:"Eric Coutu     homemadepasta     Jkeyes     Mechazaurus     Vince gent     K G"; HUDMSG_FADEINOUT | HUDMSG_LOG, 36, CR_UNTRANSLATED, 1.5, 0.84, 18.0, 1.0, 1.0);
	Hudmessage(s:"Lieutenant Walrus     Timecrash     Arthos     D3str0y3r176     Erika     Evilhalfer"; HUDMSG_FADEINOUT | HUDMSG_LOG, 37, CR_UNTRANSLATED, 1.5, 0.86, 18.0, 1.0, 1.0);
	Hudmessage(s:"JumbaWumba     Kenny     Leth Davidson     Lucas Schulte     Scott Neal Smith     Jackson"; HUDMSG_FADEINOUT | HUDMSG_LOG, 38, CR_UNTRANSLATED, 1.5, 0.88, 18.0, 1.0, 1.0);
	Hudmessage(s:"cache     Grant Ruhoff     Spardajackal     Sunshine     Mozambwa     Clair Redfield"; HUDMSG_FADEINOUT | HUDMSG_LOG, 39, CR_UNTRANSLATED, 1.5, 0.90, 18.0, 1.0, 1.0);
	Hudmessage(s:"Sunshine     Zane Ward     Uncle Fass     Michel Mohr"; HUDMSG_FADEINOUT | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.92, 18.0, 1.0, 1.0);
	Delay(19*35);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(1*35);

	//Outro Text & Tavern
	Hudmessage(s:"After so many months of hardship and struggle, the war was finally won by the greenskins and their allies."; HUDMSG_TYPEON | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.30, 28.0, 0.06, 3.0);
	Delay(8*35);
	Hudmessage(s:"The few remaining Cult towns fell swiftly under the vengeance-thirsty orc blades. The Earth drank well.  "; HUDMSG_TYPEON | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.32, 20.0, 0.06, 4.0);
	Delay(8*35);
	Hudmessage(s:"When the bloodlust cooled off, the war moved from battlefields to taverns, under the ears of the bards."; HUDMSG_TYPEON | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.34, 12.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"And as the warriors recounted their feats against impossible odds, one name would always be uttered...   "; HUDMSG_TYPEON | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.36, 4.0, 0.06, 6.0);

	SetActorState(620, "Pose", 0);
	SetActorState(635, "Rest", 0);
	Thing_Activate(753);
	ACS_Execute(48, 0, 0, 0, 0);
	FadeTo(0, 0, 0, 0.9, 8.0);
	ChangeCamera(783, 0, 0);
	Thing_Activate(783);
	Thing_Activate(637);
	Thing_Remove(636);
    FadeTo(0, 0, 0, 0.0, 10.0);
	Delay(16*35);

	Hudmessage(s:"Everyone:    HAIL THE BONEBREAKER!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_UNTRANSLATED, 1.5, 0.86, 4.0, 0.2, 7.0);
	Radius_Quake(1, 6, 0, 1, 783);
	PlaySound(620, "Character/ZanRage2", CHAN_AUTO);
	Delay(1);
	PlaySound(621, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(1);
	PlaySound(622, "Witch/Ha", CHAN_AUTO);
	Delay(1);
	PlaySound(623, "BearWarrior/Huh", CHAN_AUTO);
	Delay(1);
	PlaySound(624, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(1);
	PlaySound(625, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(1);
	PlaySound(626, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(1);
	PlaySound(627, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(1);
	PlaySound(628, "EarthMother/Rage", CHAN_AUTO);
	Delay(1);
	PlaySound(603, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(1);
	PlaySound(629, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(1);
	PlaySound(630, "Andrik/Grumble", CHAN_AUTO);
	Delay(1);
	PlaySound(631, "Andrik/Mumble", CHAN_AUTO);
	Delay(1);
	PlaySound(632, "Murguth/Ha", CHAN_AUTO);
	Delay(1);
	PlaySound(633, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(1);
	PlaySound(634, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(1);
	PlaySound(633, "BearWarrior/Rage2", CHAN_AUTO);

	Delay(7*35);

	Hudmessage(s:"The end..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_UNTRANSLATED, 1.5, 0.40, 8.0, 1.0, 4.5);
	Delay(6*35);
	Hudmessage(s:"                     ?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_UNTRANSLATED, 1.5, 0.40, 2.0, 1.0, 4.5);
	FadeTo(0, 0, 0, 0.5, 6.0);
	Radius_Quake(1, 6*35, 0, 1, 783);
	Delay(35);
	PlaySound(629, "Praak/Active", CHAN_AUTO);
    Delay(70);
	PlaySound(603, "Cerberus/Active", CHAN_AUTO);
	Delay(105);
	Thing_Remove(637);
	FadeTo(0, 0, 0, 1.0, 0.1);
	Delay(12);
	Thing_Remove(753);
    Delay(2*35);
	Exit_Normal(0);*/
}
Script 81 (void)
{
    SpawnSpotForced("DustPuff", 575, 662, 64);
	ThrustThing(64, 25, 0, 662);
	SetActorRoll(574, GetActorRoll(574) + 0.5);
	SetActorProperty(576, APROP_ScaleX, GetActorProperty(576, APROP_ScaleX) - 0.015);
	SetActorProperty(576, APROP_ScaleY, GetActorProperty(576, APROP_ScaleY) - 0.015);
	Delay(4);
	Restart;
}








//TELEPORTERS
int spec12 = 0;
Script 12 (void)
{
	Teleport_Nofog(86, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 86, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
	If(spec12 == 0)
	{
	  spec12 += 1;
	  Delay(50);
	  Line_SetBlocking(101, 0, BLOCKF_EVERYTHING);
	  TranslucentLine(101, 25, 0);
	  Delay(2);
	  TranslucentLine(101, 20, 0);
	  Delay(2);
	  TranslucentLine(101, 15, 0);
	  Delay(2);
	  TranslucentLine(101, 10, 0);
	  Delay(2);
	  TranslucentLine(101, 5, 0);
	  Delay(2);
	  SetLineTexture(101, SIDE_FRONT, TEXTURE_MIDDLE, "");
	  SetLineTexture(101, SIDE_BACK, TEXTURE_MIDDLE, "");
	}
}

Script 21 (void)
{
	Teleport_Nofog(147, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 147, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 22 (void)
{
	Teleport_Nofog(148, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 148, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}

Script 59 (void)
{
	/*Teleport_Nofog(402, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 402, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);*/

	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	Thing_Stop(0);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map21", 3, CHANGELEVEL_NOINTERMISSION, -1);
}
Script 60 (void)
{
	Teleport_Nofog(403, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 403, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}




//DOORS & ELEVATORS
Script 33 (void)
{
	Print(s:"The tendrils won't move apart.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 20 (void)
{
	Print(s:"These doors won't budge.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 36 (void)
{
	Print(s:"These doors are locked from the other side.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 361 (void)
{
    Polyobj_Move(179, 16, 0, 56);
	Polyobj_Move(361, 16, 128, 56);
}

Script 362 (void)
{
  If(GetActorZ(0) < -96.0 && CheckInventory("BloodKey") > 0)
  {
    Polyobj_DoorSwing(362,16,64,90);
  }
    else
    If(GetActorZ(0) < -96.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 5 (void)
{
  If(CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(88, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(87, 12, 124);
  }
  else
    {
      Print(s:"This door requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 6 (void)
{
  If(CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(89, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(91, 12, 120);
  }
  else
    {
      Print(s:"This door requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 7 (void)
{
  If(CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(90, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(92, 12, 120);
  }
  else
    {
      Print(s:"This door requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 8 (void)
{
  If(CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(93, 12, 124);
  }
  else
    {
      Print(s:"This door requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 9 (void)
{
  //If(CheckInventory("BloodyAxeKey") > 0)
  //{
	SetLineSpecial(95, 0, 0, 0, 0, 0, 0);
	SetLineTexture(95, SIDE_FRONT, TEXTURE_BOTTOM, "GATE8L1D");
	Floor_LowerByValue(96, 12, 128);
  //}
  //else
    //{
      //Print(s:"This door requires a Bloody Axe key to open.");
      //PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    //}
}

Script 2 (void)
{
  If(CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(34, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(33, 10, 121);
  }
  else
    {
      Print(s:"This switch requires a Bloody Axe key to operate.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 4 (void)
{
	If(GetSectorCeilingZ(77, 0, 0) == 235.0)
	{
	  Delay(35);
	  FloorAndCeiling_RaiseByvalue(77, 16, 376);
	  FloorAndCeiling_RaiseByvalue(76, 16, 376);
	  TagWait(76);
	  Delay(70);
	  FloorAndCeiling_LowerByvalue(76, 32, 376);
	  FloorAndCeiling_LowerByvalue(77, 32, 376);
	  TagWait(77);
	}
}





//READABLES
Script 69 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

    SetFont("SMALLFONT");
	Hudmessage(s:"(A journal appears to have been brutally tossed around by an outburst of corrupt tendrils)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 95.0);

	Hudmessage(s:"This is the end of an era. An era of hiding in the dark and seeking a way to summon my dormant"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"ancestors to the world where they belong. Soon enough, the demon thralls will begin to purge"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"any potential opposition and prepare a new world for our people. And I will lead them as their"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
    Hudmessage(s:"rightful queen!  The Baron has come to terms with this plan  -  he knows better than to oppose"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
    Hudmessage(s:"me!  And now that the Corrupt Seed is in my hands, I shall finally ascend.  The void awaits me."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 80 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"South - The Great Stump"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 10.0);
	Hudmessage(s:"East - Reaver Headquarters"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
	Hudmessage(s:"West - Grove Portal Cave"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 10.0);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 70, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 22, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 23, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 24, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 25, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 26, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 27, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 28, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 29, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 30, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 31, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 32, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 33, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 34, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 35, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 36, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 37, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 38, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 39, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 40, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
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

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}










//PATREON
Script 542 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Thanks to EVERYONE who financially supported Hedon on Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.08, 95.0);

	Hudmessage(s:"\c[Blue]LukeB\c-     \c[LightBlue]Eisenhorn\c-     \c[Purple]Sleepy Mei\c-     \c[DarkGreen]Murdo McClelland\c-     Red Charge     \c[LightBlue]Simon P\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.14, 95.0);
	Hudmessage(s:"Danyx992     \c[Gray]ekwood\c-     \c[Cyan]Infab\c-     \c[DarkRed]SuggestiveBox\c-     \c[Red]Badguy292\c-     \c[Olive]Burchy\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.16, 95.0);
	Hudmessage(s:"\c[Purple]Elzevir Mensk\c-     \c[Brick]D1SoveR\c-     Vdubs     \c[DarkGreen]Chaos Embrace\c-     \c[Cyan]Willag_mac\c-     Christian Morris"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.18, 95.0);
	Hudmessage(s:"\c[LightBlue]Gary_#23\c-     Jacob Markley     \c[cream]papyLaPlage\c-     \c[LightBlue]Anna_Maniac\c-     Daniel Jewell     \c[Purple]KitsuneNZ\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.20, 95.0);
	Hudmessage(s:"Robert Phair     Karitan Aegis     \c[Green]adamboye\c-     \c[DarkGray]strange desire\c-     Kyurae Minasaki     \c[Gold]KnobGoblin\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.22, 95.0);
	Hudmessage(s:"\c[Cyan]Mortician175\c- \c[DarkRed]Alex 'Razor' Penn\c-     \c[Blue]KECG\c-     Metazealot     Darth-Morella     Albatross"; HUDMSG_PLAIN | HUDMSG_LOG, 70, CR_UNTRANSLATED, 1.5, 0.24, 95.0);
	Hudmessage(s:"\c[Red]Mr Red\c-     Copper Boltwire     Emotive Remembrancer     Regular Dude     \c[Orange]Mercs\c-     \c[Gold]ArtOfShred\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.26, 95.0);
	Hudmessage(s:"\c[Green]DS98\c-     Vodyanoi     Salokin Sekwah     Iceman13     Ion B. Fork     Robopatron"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.28, 95.0);
	Hudmessage(s:"\c[Red]Aegis\c-     \c[Orange]KOL_Freak\c-     Samuel Stacey     William Vicic     CaptainRumia     \c[Purple]Siegfried Pinzer\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.30, 95.0);
	Hudmessage(s:"\c[Green]AMIG\c-     \c[Red]Arn\c-     \c[LightBlue]Bluefire\c-     \c[DarkRed]LuzTheBuz~\c-     \c[Olive]CoreySchimpf\c-     Grey"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.32, 95.0);
	Hudmessage(s:"ha ha     Scott Schwerdfeger     \c[Purple]screenThief\c-     Spookems     \c[DarkRed]Zixon01\c-     Echo Byrnes"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.34, 95.0);
	Hudmessage(s:"\c[Red]GirlieAllie\c-     Hatty     \c[Cyan]Kevin Fung\c-     Mark Grubich     \c[Olive]Spooks\c-     \c[Brick]Third-Energy\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.36, 95.0);
	Hudmessage(s:"Father Opossum     \c[Gold]Hatguy\c-     c[Brick]Julien Grenier\c-     Chainworm Kommando     Paul     \c[Cyan]Stormyface\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.38, 95.0);
	Hudmessage(s:"\c[Brick]Willa Grey\c-     \c[Red]BloodRaven\c-     Jessy Ruiz     \c[Purple]puddy1\c-     Alexzerker     BreadMan"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.40, 95.0);
	Hudmessage(s:"Frank     Frawlawk     \c[Green]Shroomer\c-     Piklz     Ycoobooveech     Sarah"; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.42, 95.0);
	Hudmessage(s:"\c[Red]RawbmGM\c-     \c[Yellow]White Sarcophagus\c-     \c[Purple]Anri_Wanri\c-     Joseph Culbertson     Terrible Gyros     \c[Gold]Nick\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.44, 95.0);
	Hudmessage(s:"Tadhg Briody     \c[DarkRed]Richard Winfield\c-     \c[Gold]onionknight007\c-     L3GAC7     Lynn"; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.46, 95.0);
	Hudmessage(s:"\c[DarkGreen]William Stowe\c-     M.A. Kerr     Alexander Howard     Benjamin Judah Phelps     SuperShamu     Bradley Greene"; HUDMSG_PLAIN | HUDMSG_LOG, 18, CR_UNTRANSLATED, 1.5, 0.48, 95.0);
	Hudmessage(s:"\c[DarkRed]Flakbait\c-     Conor Ryan     D the Rage     Jawblade     Tyler Brogna     Zephonius"; HUDMSG_PLAIN | HUDMSG_LOG, 19, CR_UNTRANSLATED, 1.5, 0.50, 95.0);
	Hudmessage(s:"Nistal     Knugen     Kiyu 69     Lilium     \c[Purple]Koomi\c-     Hrogue     \c[LightBlue]Ivalera-Pixie\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.52, 95.0);
	Hudmessage(s:"Mathias Andren     Monster Gang     Nano pois0n     null value     Shaeoggath     Abreu"; HUDMSG_PLAIN | HUDMSG_LOG, 21, CR_UNTRANSLATED, 1.5, 0.54, 95.0);
	Hudmessage(s:"Sage Emerald     Casadactyl     Allegory     BeardedDoomGuy     CsOsH     Dark Castle"; HUDMSG_PLAIN | HUDMSG_LOG, 22, CR_UNTRANSLATED, 1.5, 0.56, 95.0);
	Hudmessage(s:"dm3_inks     Doom64Hunter     elm     Kat G     Komen     leebigh"; HUDMSG_PLAIN | HUDMSG_LOG, 23, CR_UNTRANSLATED, 1.5, 0.58, 95.0);
	Hudmessage(s:"neonblitzer     Nothing Here     Robin Law     Agar6     William M"; HUDMSG_PLAIN | HUDMSG_LOG, 24, CR_UNTRANSLATED, 1.5, 0.60, 95.0);
	Hudmessage(s:"awesomepossum     Shiznot     5 Pyr     Cadaver747     Iceman2343"; HUDMSG_PLAIN | HUDMSG_LOG, 25, CR_UNTRANSLATED, 1.5, 0.62, 95.0);
	Hudmessage(s:"Kurreh     Slinks     drauch     Natalie Westland     m8f     David Coleman"; HUDMSG_PLAIN | HUDMSG_LOG, 26, CR_UNTRANSLATED, 1.5, 0.64, 95.0);
	Hudmessage(s:"Rougetaal     Frostburn34     Thomas Read     Cave Johnson     Dege De     ecamber"; HUDMSG_PLAIN | HUDMSG_LOG, 27, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
	Hudmessage(s:"Jess     Joslyn     Keary R Read     Lem     Sakis Lioliosidis     ZombieSweeper     Bender"; HUDMSG_PLAIN | HUDMSG_LOG, 28, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"Zeuraith     Techno_Joe     Ugly bastard tag in twitter     Vilhelm Puddintain     Sasha the Lynx"; HUDMSG_PLAIN | HUDMSG_LOG, 29, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
	Hudmessage(s:"Ben Croft     daskbruh     Zerzey     BazookaDre     frog.foot     Henry Harland Proudlock Propsting"; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"Joel Acklen     Yizz the Eunuch     Jonathan LiszkaHackzell     dirtygrass     Krimm Fortuna     Sexy Sadie"; HUDMSG_PLAIN | HUDMSG_LOG, 31, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"Asura     Bonitz Andras     Seras Ming     Dave Allen     blah     Jim Lewis"; HUDMSG_PLAIN | HUDMSG_LOG, 32, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"patreonpatreonpatreon     Snaked     epsaavedra     evergreen     Hans Christian Ruders Damgaard     James Mooney"; HUDMSG_PLAIN | HUDMSG_LOG, 33, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"Jeff Cotten     Kammeri     Locorotor     Simon B     Someone Someone     Trent maudier"; HUDMSG_PLAIN | HUDMSG_LOG, 34, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"Xev     Deathmarine     Drasticdoggo     Meena D.     John Poole     Killswitch"; HUDMSG_PLAIN | HUDMSG_LOG, 35, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"Eric Coutu     homemadepasta     Jkeyes     Mechazaurus     Vince gent     K G"; HUDMSG_PLAIN | HUDMSG_LOG, 36, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"Lieutenant Walrus     Timecrash     Arthos     D3str0y3r176     Erika     Evilhalfer"; HUDMSG_PLAIN | HUDMSG_LOG, 37, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"JumbaWumba     Kenny     Leth Davidson     Lucas Schulte     Scott Neal Smith     Jackson"; HUDMSG_PLAIN | HUDMSG_LOG, 38, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"cache     Grant Ruhoff     Spardajackal     Sunshine     Mozambwa     Clair Redfield"; HUDMSG_PLAIN | HUDMSG_LOG, 39, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
	Hudmessage(s:"Sunshine     Zane Ward     Uncle Fass     Michel Mohr"; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.92, 95.0);
}
Script 543 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"WELCOME TO HEDON'S BLOODRITE PATREON GALLERY!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 35.0);
	Hudmessage(s:"Do you want to feature in here as a supporter of Hedon?"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"Do you want a chance at having drawn a custom avatar of your choosing?"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 35.0);
	Hudmessage(s:"Do you want to help Hedon grow bigger and hook up to development updates?"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
    Hudmessage(s:"Then join up on Hedon's Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 35.0);
	//Hudmessage(s:"www.patreon.com/hedon"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 35.0);
}

Script 544 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"KatG"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 545 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Sleepy Mei"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 546 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Sleepy Mei (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 547 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Luke Pwner"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 548 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Badguy292"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 549 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Luke Pwner (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 550 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Badguy292 (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 551 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"adamboye"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 552 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"D1soveR (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 553 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Eisenhorn"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 554 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ChainwormKommando"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 555 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Lynn"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 556 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Sleepy Mei (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 557 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Red Charge"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 558 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SuggestiveBox"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 559 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Mr Red"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 560 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Mortician175"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 561 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Arn"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 562 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Bluefire"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 563 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Infab"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 564 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SuggestiveBox (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 565 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Alex 'Razor' Penn"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 566 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 567 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 568 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 569 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 570 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 571 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"x"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}


