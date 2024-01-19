#include "zcommon.acs"

//LEVEL START

Script 1 ENTER
{
  //ACS_NamedExecuteWithResult("FriendlySpawner");

  FadeTo(0, 0, 0, 1.0, 0.0);
  ChangeCamera(4, 1, 0);
  SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
  SetActorProperty(0, APROP_Speed, 0.0);
  SetActorFlag(0, "NODAMAGE", 1);
  SetActorFlag(0, "NOPAIN", 1);


  Delay(8);

  Thing_ChangeTID(901, 900);

  PlaySound(4, "Character/ZanTired", CHAN_AUTO);
  FadeTo(0, 0, 0, 0.0, 3.0);

  Delay(35);

  FloorAndCeiling_LowerByValue(16, 128, 336);
  Delay(20);
  PlaySound(14, "Weapons/ShieldBlock3", CHAN_AUTO, 0.7);
  PlaySound(14, "Gore/FleshLand2", CHAN_AUTO);
  Radius_Quake(1, 6, 0, 1, 4);


  Delay(15);
  ACS_Execute(5, 0, 0, 0, 0);
}

Script 5 (void)
{
  If(CheckInventory("IDLancerCounter") > 0)
  {
  TakeInventory("IDLancerCounter", 1);
  ACS_NamedExecuteWithResult("FriendlySpawner");

  SpawnSpot("NPCCrystalCurator", 3, 600, 64);
  SetActorFlag(600, "INVULNERABLE", 1);
  SetActorFlag(600, "NODAMAGE", 1);
  SetActorState(600, "Falling", 0);
  Delay(25);
  PlaySound(600, "Lancer/Death");
  Radius_Quake(1, 16, 0, 1, 4);
  Delay(10);
  }
  else
    {
	ACS_NamedExecuteWithResult("FriendlySpawner");
    }

  Delay(20);
  PlaySound(5, "Crawler/Active", CHAN_AUTO);
  Delay(5);
  SetActorAngle(5, 0.5);
  Delay(5);
  SetActorAngle(5, 0.25);
  Delay(5);

  FadeTo(0, 0, 0, 1.0, 3.0);
  Delay(35);
  PlaySound(4, "Character/ZanSleep", CHAN_AUTO);
  Delay(70);
  Thing_Move(5, 6, 1);
  Thing_Deactivate(5);
  SetActorAngle(5, 0.25);

  Delay(35);

  FadeTo(0, 0, 0, 0.0, 2.0);
  PlaySound(5, "Crawler/Sight", CHAN_AUTO);
  //SetActorState(5, "Melee", 0);
  Delay(35);
  FloorAndCeiling_LowerByValue(2, 192, 504);
  Delay(18);
  Thing_Activate(5);
  Thing_Destroy(5, 1, 0);
  Radius_Quake(5, 35, 0, 1, 4);
  Delay(35);
  FadeTo(0, 0, 0, 1.0, 3.0);

  Delay(105);

    SpawnSpotForced("Crawler", 7, 601, 40);
    SpawnSpotForced("Crawler", 9, 601, 95);
    SetActorFlag(601, "COUNTKILL", 0);
    Thing_Deactivate(601);
    Delay(35);
    FadeTo(0, 0, 0, 0.0, 2.0);
    Delay(35);
    SpawnSpotForced("Crawler", 8, 601, 75);
    SetActorFlag(601, "COUNTKILL", 0);
    Thing_Deactivate(601);
    Delay(35);
    PlaySound(601, "Crawler/Pain", CHAN_AUTO);
    Delay(35);
    FadeTo(0, 0, 0, 1.0, 2.0);

    Delay(70);

    If(IsTIDUSed(600))
    {
    Thing_Remove(600);
    SpawnSpotForced("IDLancerStationary", 10, 600, 192);
    Delay(70);
    Thing_Activate(601);
    If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Ha", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Halfblood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 1.0, 0.2, 0.5);
    }
    Delay(35);
    FadeTo(0, 0, 0, 0.0, 2.0);
    Delay(70);

    ACS_Execute(2, 0, 0, 0, 0);

    Delay(105);
    FadeTo(0, 0, 0, 1.0, 3.0);

    Delay(35);
    If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Pain", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Halfblood, wake up!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
    }

  Delay(105);
  }

  ChangeCamera(0, 1, 1);
  FadeTo(0, 0, 0, 0.0, 2.0);
  PlaySound(4, "Character/ZanAwake", CHAN_AUTO);
  Delay(20);
  Thing_Activate(601);
  Delay(15);
  //Line_SetBlocking(13, 0, BLOCKF_PROJECTILES);
  //Line_SetBlocking(13, 0, BLOCKF_HITSCAN);
  SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
  SetActorProperty(0, APROP_Speed, 1.0);
  SetActorFlag(0, "NODAMAGE", 0);
  SetActorFlag(0, "NOPAIN", 0);


  Delay(50);

  If(IsTIDUsed(600) == 0)
  {
  ACS_Execute(2, 0, 0, 0, 0);
  }

  If(GetActorProperty(600, APROP_Health) > 0)
  {
  PlaySound(600, "Lancer/Heh", CHAN_AUTO);
  Hudmessage(s:"Crystal Curator:    Aid me! Slay these beasts!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
  }

  Delay(10*35);

  If(GetActorProperty(600, APROP_Health) > 0)
  {
  PlaySound(600, "Lancer/Ha", CHAN_AUTO);
  Hudmessage(s:"Crystal Curator:    They won't stop coming! You have to find a way out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
  }

  Delay(10*35);

  If(GetActorProperty(600, APROP_Health) > 0)
  {
  PlaySound(600, "Lancer/Ha", CHAN_AUTO);
  Hudmessage(s:"Crystal Curator:    That door over there! Try to open it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
  }

  Delay(10*35);

  If(GetActorProperty(600, APROP_Health) > 0)
  {
  PlaySound(600, "Lancer/Heh", CHAN_AUTO);
  Hudmessage(s:"Crystal Curator:    Hurry, Halfblood, I can't hold much longer!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
  }
}

Script 2 (void)
{
	Switch(random(1, 3))
	{

		Case 1:
		SpawnSpotForced("Crawler", 7, 601, 40);
		SetActorFlag(601, "COUNTKILL", 0);
		Delay(24);
		SpawnSpotForced("Crawler", 8, 601, 75);
		SetActorFlag(601, "COUNTKILL", 0);
		Break;

		Case 2:
		SpawnSpotForced("Crawler", 7, 601, 40);
		SetActorFlag(601, "COUNTKILL", 0);
		Delay(24);
        SpawnSpotForced("Crawler", 9, 601, 95);
		SetActorFlag(601, "COUNTKILL", 0);
		Break;

		Case 3:
		SpawnSpotForced("Crawler", 8, 601, 75);
		SetActorFlag(601, "COUNTKILL", 0);
		Delay(24);
        SpawnSpotForced("Crawler", 9, 601, 95);
		SetActorFlag(601, "COUNTKILL", 0);
		Break;

    }
	If(IsTIDUsed(600))
	{
    Delay(80);
	Restart;
	}
	else
	  {
	  Delay(150);
	  Restart;
	  }
}


Script 3 (void)
{
	ACS_Terminate(5, 0);
	ACS_Execute(88, 0 ,0, 0, 0);

	Delay(105);

	If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Ha", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    For the Iron Division!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
    }

	Delay(105);

	//Thing_Destroy(12, 0, 0);

	Delay(210);

	//If(GameSkill() >= SKILL_VERY_HARD)
	//{
	//	Thing_Destroy(13, 0, 0);
	//}

	If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Heh", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    I shall hold them off, go now! Find the Elf!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }

	TagWait(11);
	Delay(105);

	If(CheckProximity(0, "IDLancerStationary", 700.0, 1))
    {
	PlaySound(600, "Lancer/Ha", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Leave, Halfblood! You must retrieve the Disk!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }

	Delay(10*35);

	If(CheckProximity(0, "IDLancerStationary", 700.0, 1))
    {
	PlaySound(600, "Lancer/Ha", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Go already! Our fate lies with you now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }

	Delay(10*35);


    If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Heh", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Don't be a fool, listen to me! Run!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }

	Delay(10*35);

    If(GetActorProperty(600, APROP_Health) > 0)
    {
    PlaySound(600, "Lancer/Pain", CHAN_AUTO);
    Hudmessage(s:"Crystal Curator:    Can't... hold out... much... longer... go! Go!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }
}

Script 88 (void)
{
	If(GetSectorFloorZ(11, 0, 0) > -595.0)
	{
	Floor_LowerByValue(11, 1, 3);
	TagWait(11);
	Restart;
	}
}

Script 4 (void)
{
	Ceiling_RaiseByValue(371, 8, 112);
	ACS_Terminate(88, 0);
	TagWait(11);
	Floor_RaiseAndCrush(11, 16, 1000, 0);
	Tagwait(11);
	If(GetActorProperty(600, APROP_Health) > 0)
	{
		GiveInventory("ScriptCrystalCuratorHasSurvived", 1);
		Thing_Remove(600);
	}

	ACS_Terminate(2, 0);
	ACS_Terminate(3, 0);
	Thing_Remove(901);
	Thing_Destroy(601, 0, 12);
}


//ACTOR CHANGES
Script 13 ENTER
{
	SetActorFlag(77, "BRIGHT", 0);
	SetActorFlag(77, "VISIBILITYPULSE", 0);
	SetActorFlag(77, "SOLID", 0);
	SetActorFlag(77, "SHOOTABLE", 0);

	SetActorFlag(83, "NOCLIP", 1);

    SetActorFlag(85, "INVISIBLE", 1);
	SetActorFlag(85, "INVULNERABLE", 1);
	SetActorFlag(85, "NODAMAGE", 1);
	SetActorFlag(86, "NODAMAGE", 1);
	SetActorFlag(86, "NOCLIP", 1);

	SetActorFlag(234, "NODAMAGE", 1);
	SetActorFlag(234, "INVULNERABLE", 1);
	SetActorFlag(235, "FLOATBOB", 1);
	SetActorFlag(235, "SOLID", 0);

	SetActorFlag(347, "FLOATBOB", 0);

	SetActorFlag(366, "WALLSPRITE", 0);
	SetActorFlag(366, "FLATSPRITE", 1);

	SetActorFlag(372, "SOLID", 0);

	SetActorFlag(373, "INVISIBLE", 1);

	SetActorFlag(385, "INVULNERABLE", 1);



	If (CheckInventory("InventorySledgehammer") == 0)
	{
		SpawnSpotForced("InventorySledgehammer", 248, 0, 0);
	}
	else
	SpawnSpotForced("CultSledgehammer", 248, 0, 0);
}

//LIFT CRUSHER
Script 24 ENTER
{
	SectorDamage(111, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//MUSIC
Script 70 (void)
{
	SetLineSpecial(365, 0, 0, 0, 0, 0, 0);
	Autosave();
	Delay(70);
	SetMusic("HTrack23", 0, 0);
	SetMusicVolume(0.1);
	Delay(8);
	SetMusicVolume(0.2);
	Delay(8);
	SetMusicVolume(0.3);
	Delay(8);
	SetMusicVolume(0.4);
	Delay(8);
	SetMusicVolume(0.5);
	Delay(8);
	SetMusicVolume(0.6);
	Delay(8);
	SetMusicVolume(0.7);
	Delay(8);
	SetMusicVolume(0.8);
	Delay(8);
	SetMusicVolume(0.9);
	Delay(8);
	SetMusicVolume(1.0);
}
//THUNDER & LIGHTNING
int spec53 = 0;
Script 53 (void)
{
	If(spec53 == 0)
	{
	ChangeSky("Sky15", "Sky15");
	SetLineTexture(314, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW14B");
	SetLineTexture(315, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15B");
	If(IsTIDUsed(369))
	{
		SetLineTexture(316, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15B");
	}
	Light_Fade(312, 200, 8);
	Delay(8);
	ChangeSky("Sky14", "Sky14");
	Light_Fade(312, 132, 4);
	SetLineTexture(314, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW14A");
	SetLineTexture(315, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15A");
	If(IsTIDUsed(369))
	{
		SetLineTexture(316, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15A");
	}
	Delay(random(35, 140));
	PlaySound(313, "Ambient/Thunder", CHAN_AUTO, 1.0, false, ATTN_NONE);
	}
	else
	{
	  If(spec53 == 1)
	  {
	  ChangeSky("Sky15", "Sky15");
		SetLineTexture(314, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW14B");
		SetLineTexture(315, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15B");
		If(IsTIDUsed(369))
		{
			SetLineTexture(316, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15B");
		}
		Light_Fade(312, 200, 8);
		Delay(8);
		ChangeSky("Sky14", "Sky14");
		Light_Fade(312, 132, 4);
		SetLineTexture(314, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW14A");
		SetLineTexture(315, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15A");
		If(IsTIDUsed(369))
		{
			SetLineTexture(316, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15A");
		}
		Delay(random(35, 140));
		PlaySound(313, "Ambient/Thunder", CHAN_AUTO, 0.6, false, ATTN_NONE);
	  }
	}

	Delay(random(35*1, 35*20));
	Restart;
}

Script 55 (void)
{
	spec53 = 0;
}
Script 56 (void)
{
	spec53 = 1;
}

Script 54 (void)
{
	ACS_Terminate(53, 0);
	ChangeSky("Sky14", "Sky14");
	Light_Fade(312, 132, 4);
}

Script 87 (void)
{
	ChangeSky("Sky15", "Sky15");
	Light_Fade(312, 200, 8);
	Delay(8);
	ChangeSky("Sky14", "Sky14");
	Light_Fade(312, 132, 4);
	Delay(35);
	PlaySound(313, "Ambient/Thunder", CHAN_AUTO, 1.0, false, ATTN_NONE);
}

//MAGMA BALL TRAP
//Activator
int spec6 = 0;
Script 6 (void)
{
	If(spec6 == 0)
	  {
	  spec6 += 1;
	  ACS_Execute(7, 0, 0, 0, 0);
	  SetActorProperty(0, APROP_Gravity, 0.8);
	  }
	  else
	  {
	  spec6 -= 1;
	  ACS_Terminate(7, 0);
	  SetActorProperty(0, APROP_Gravity, 1.0);
	  }
}
//Deactivator
Script 8 (void)
{
	If(spec6 == 1)
	  {
	  spec6 -= 1;
	  ACS_Terminate(7, 0);
	  SetActorProperty(0, APROP_Gravity, 1.0);
	  }
}
//Shooter
Script 7 (void)
{
	SpawnProjectile(28, "ProjectileMagmaBall", 128, 150, 0, 0, 0);
	Delay(50);
	Restart;
}
//FIRE THORN SOFTLOCK FAILSAFE
int spec98 = 0;
Script 98 (void)
{
	If(GameSkill() == 5)
	{
		If(IsTIDUsed(402) == 0 && CheckInventory("FireHammer") == 0 && spec98 == 0 && GetSectorFloorZ(231, 0, 0) == -148.0)
		{
			spec98 += 1;
			SpawnSpotForced("HedonTeleportFogDemon", 403, 0, 0);
			PlaySound(403, "misc/teleport", CHAN_AUTO);
			Delay(8);
			SpawnSpot("PitLord", 403, 0, 192);
		}
	}
	else
	If(IsTIDUsed(402) == 0 && CheckInventory("FragfireGunLoaded") == 0 && CheckInventory("FragfireCan") == 0 && spec98 == 0 && GetSectorFloorZ(231, 0, 0) == -148.0)
	{
		spec98 += 1;
		SpawnSpotForced("HedonTeleportFogDemon", 403, 0, 0);
		PlaySound(403, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpot("PitLord", 403, 0, 192);
	}
}
Script 99 (void)
{
	Line_SetBlocking(411, 0, BLOCKF_MONSTERS);
}

//WATER TEMPLE HALL MAGMA BALL TRAP
Script 32 (void)
{
	SpawnProjectile(222, "ProjectileMagmaBall", 0, 0, -150, 0, 0);
	Delay(6);
}
//WATER TEMPLE HALL CRYSTAL PEDESTAL GATE
Script 33 (void)
{
	If(CheckInventory("InventoryCyanCrystal") > 0)
	{
		SetLineSpecial(224, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryCyanCrystal", 1);
		SpawnSpotForced("JunkBrokenCyanCrystal", 223, 0, 0);
		PlaySound(223, "Metal/Land", CHAN_AUTO);
		Delay(50);
		Ceiling_RaiseByValue(225, 8, 48);
		Floor_LowerByValue(225, 8, 48);
		TagWait(225);
		Line_SetBlocking(228, 0, BLOCKF_EVERYTHING);
		Ceiling_RaiseByValue(226, 16, 108);
		Floor_LowerByValue(227, 16, 108);
		TagWait(227);
		Delay(16);

	}
	else
	{
	Print(s:"The pedestal is empty.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}

//IRON MAIDEN MOVE - unused
Script 34 (void)
{
	Delay(35);
	SetActorProperty(229, APROP_Speed, 17.0);
}



//BASEMENT PASSWORD
Script 36 (void)
{
	If(CheckInventory("InventoryPasswordScroll") > 0)
	{
		SetLineSpecial(253, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(263, ACS_EXECUTE, 37, 0, 0, 0, 0);
		TakeInventory("InventoryPasswordScroll", 1);
		Thing_Remove(662);
		PlaySound(254, "Inventory/Paper", CHAN_AUTO, 0.8);
		FloorAndCeiling_RaiseByValue(257, 9999, 80);

		Delay(8);
	    PlaySound(254, "Metal/Bounce1", CHAN_AUTO, 0.8);
		Delay(8);
		PlaySound(254, "Metal/Bounce1", CHAN_AUTO, 1.0);
		Delay(8);
		Delay(35);
		PlaySound(255, "Cultist/Sight", CHAN_AUTO, 1.0);
		Delay(16);
		Floor_RaiseByValue(251, 12, 6);
		Delay(50);
		Floor_LowerByValue(251, 12, 6);
		Delay(35);

		Line_SetBlocking(256, 0, BLOCKF_EVERYTHING);
		Line_SetBlocking(261, 0, BLOCKF_PLAYERS);
		Line_SetBlocking(253, 0, BLOCKF_PROJECTILES);
		Thing_Activate(255);
		Thing_Activate(356);

		Ceiling_RaiseByValue(260, 16, 80);
		Ceiling_RaiseByValue(249, 16, 80);
		FloorAndCeiling_RaiseByValue(251, 16, 80);
		FloorAndCeiling_RaiseByValue(252, 16, 80);
		FloorAndCeiling_RaiseByValue(257, 16, 80);

		TagWait(257);
		SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
		Delay(70);

        If(GetActorProperty(255, APROP_HEALTH) > 0)
		{
		Delay(105);

		Line_SetBlocking(262, 0, BLOCKF_MONSTERS);
		Line_SetBlocking(264, 0, BLOCKF_SIGHT);
		}
		else
		{
		  Line_SetBlocking(262, 0, BLOCKF_MONSTERS);
		  Line_SetBlocking(264, 0, BLOCKF_SIGHT);
		}
	}
	else
	{
	PlaySound(254, "Metal/Bounce1", CHAN_AUTO, 0.8);
	Delay(8);
	PlaySound(254, "Metal/Bounce1", CHAN_AUTO, 1.0);
	Delay(35);
	PlaySound(255, "Cultist/Sight", CHAN_AUTO, 1.0);
	Delay(35);
	Delay(16);
	Floor_RaiseByValue(251, 12, 6);
	Delay(50);
	PlaySound(255, "Cultist/Active", CHAN_AUTO, 1.0);
	Hudmessage(s:"Conscript:    *Annoyed mumble*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.86, 2.0, 0.2, 0.5);
	Delay(35);
	Floor_LowerByValue(251, 12, 6);
	Delay(3*35);
	}
}

Script 37 (void)
{
	SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
	PlaySound(0, "Character/ZanGiggle", CHAN_AUTO, 1.0);
}

//Secret Wall Break
Script 38 (void)
{
  If ((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickaxe") > 0) && GetSectorCeilingZ(268, 0, 0) > -306.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(268, 9999, 96);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(270);
	Delay(2);
	SpawnSpot("DustCloud",271, 0, 0);
	Floor_RaiseByvalue(269, 9999, Random(4,8));
	Line_SetBlocking(272, 0, BLOCKF_PROJECTILES);
	Line_SetBlocking(272, 0, BLOCKF_PLAYERS);
	Line_SetBlocking(272, 0, BLOCKF_MONSTERS);
	Line_SetBlocking(272, 0, BLOCKF_SIGHT);
  }
    else
	  If (GetSectorCeilingZ(268, 0, 0) > -306.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

Script 40 (void)
{
  If ((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickaxe") > 0) && GetSectorCeilingZ(275, 0, 0) > -306.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(275, 9999, 96);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(286);
	Delay(2);
	SpawnSpot("DustCloud",279, 0, 0);
	Floor_RaiseByvalue(278, 9999, Random(4,8));
	Line_SetBlocking(277, 0, BLOCKF_PLAYERS);
	Line_SetBlocking(277, 0, BLOCKF_MONSTERS);
  }
    else
	  If (GetSectorCeilingZ(275, 0, 0) > -306.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//WATER TEMPLE BUBBLE BATH
Script 35 (void)
{
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 GiveInventory("HealthBonus", 5);
		 Delay(8);
		 Thing_Remove(233);
}



//KITCHEN MONTCHARGE
Script 23 (void)
{
	If(GetActorZ(0) < -64.0)
	{
	TagWait(51);
	TagWait(118);
	TagWait(111);
	FloorAndCeiling_RaiseByValue(51, 6, 160);
	Floor_RaiseByValue(118, 6, 160);
	FloorAndCeiling_RaiseByValue(111, 6, 160);
	TagWait(51);
	TagWait(118);
	TagWait(111);

	Delay(6*35);
	FloorAndCeiling_LowerByValue(111, 6, 160);
	Floor_LowerByValue(118, 6, 160);
	FloorAndCeiling_LowerByValue(51, 6, 160);
	TagWait(111);
	TagWait(118);
	TagWait(51);
	}
}


//BEDROOM TELEPORTER
Script 100 (void)
{
	If(GetActorZ(0) > -128.0)
	{
		If(GetActorProperty(405, APROP_Health) > 0)
		{
			Thing_Deactivate(405);
		}

		Teleport_Nofog(404, 1, 0, 0);
		SpawnSpotForced("HedonTeleportFogDemon", 404, 0, 0);
		PlaySound(0, "misc/teleport", CHAN_AUTO);
		SetActorAngle(0, 0.25);
		SetActorPitch(0, 0.0);

		If(GetActorProperty(405, APROP_Health) > 0)
		{
			Delay(24);
			Thing_Activate(405);
		}
	}
}


//MUSEUM EXPLOSIVE CRYSTAL
int spec21 = 0;
Script 21 (void)
{
	If(GetActorZ(0) < -32.0 && ThingCount(T_NONE, 85) < 4 && spec21 == 0)
    {
	spec21 += 1;
	Thing_Destroy(85, 1, 0);
	SetActorFlag(86, "NODAMAGE", 0);
	Delay(2);
	Thing_Destroy(86, 0, 0);
	Delay(6);

	Radius_Quake(5, 72, 2, 30, 87);
	SpawnSpotForced("ExplosionMedium", 87, 0, 0);

	Delay(12);
	SpawnSpotForced("ExplosionLarge", 88, 0, 0);

	Delay(16);
	SpawnSpotForced("ExplosionHuge", 89, 0, 0);
	Thing_Remove(85);

	Thing_Remove(83);
	FloorAndCeiling_RaiseByValue(92, 9999, 320);
	FloorAndCeiling_RaiseByValue(388, 9999, 320);

	SetLineTexture(97, SIDE_FRONT, TEXTURE_TOP, "ASH2");


	PlaySound(93, "Weapons/PotionDie", CHAN_AUTO, 1.0);
	SpawnSpotForced("DustCloud", 93, 0, 0);
	SpawnSpotForced("JunkBrokenGlassA", 94, 0, 0);
	SpawnSpotForced("JunkBrokenGlassB", 95, 0, 0);
	Line_SetBlocking(96, 0, BLOCKF_EVERYTHING);
	SetLineTexture(96, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15C");
	SetLineTexture(96, SIDE_BACK, TEXTURE_MIDDLE, "WINDW15C");


	Delay(10);
	SpawnSpotForced("ExplosionLarge", 90, 0, 0);

	Delay(12);
	SpawnSpotForced("ExplosionMedium", 91, 0, 0);

	Delay(10);
	SpawnSpotForced("ExplosionMedium", 90, 0, 0);

	Terminate;
	}
	Delay(8);
	If(spec21 > 0)
	{
		Terminate;
	}
	SetActorFlag(85, "INVULNERABLE", 0);
	SetActorFlag(85, "NODAMAGE", 0);
	Restart;
}



//SOUL STONE PUZZLE
Script 26 (void)
{
    NoiseAlert(0, 0);
	Thing_Hate(905, 0, 4);
	ACS_Execute(27, 0, 0, 0, 0);
}

Script 27 (void) //God I wish I knew math
{
	If(CheckInventory("InventorySoulStone") > 0)
	{
		Thing_Remove(905);
	}

	If(     CheckProximity(0, "CultSoulStonePuzzle", 320.0, 1)
	  &&    (((GetActorAngle(0) >= 0.0 && GetActorAngle(0) <= 0.25)  &&  (GetActorAngle(905) >= 0.50 && GetActorAngle(905) <= 0.75))
	  ||    ((GetActorAngle(0) >= 0.25 && GetActorAngle(0) <= 0.50)  &&  (GetActorAngle(905) >= 0.75 && GetActorAngle(905) <= 1.00))
	  ||    ((GetActorAngle(0) >= 0.50 && GetActorAngle(0) <= 0.75)  &&  (GetActorAngle(905) >= 0.00 && GetActorAngle(905) <= 0.25))
	  ||    ((GetActorAngle(0) >= 0.75 && GetActorAngle(0) <= 1.00)  &&  (GetActorAngle(905) >= 0.25 && GetActorAngle(905) <= 0.50))

	  ||    ((GetActorAngle(0) >= 0.12 && GetActorAngle(0) <= 0.37)  &&  (GetActorAngle(905) >= 0.62 && GetActorAngle(905) <= 0.87))
	  ||    ((GetActorAngle(0) >= 0.37 && GetActorAngle(0) <= 0.62)  &&  ((GetActorAngle(905) >= 0.00 && GetActorAngle(905) <= 0.12) || (GetActorAngle(905) >= 0.87 && GetActorAngle(905) <= 1.00)))
	  ||    ((GetActorAngle(0) >= 0.62 && GetActorAngle(0) <= 0.87)  &&  (GetActorAngle(905) >= 0.12 && GetActorAngle(905) <= 0.37))
	  ||    (((GetActorAngle(0) >= 0.00 && GetActorAngle(0) <= 0.12) || ((GetActorAngle(0) >= 0.87 && GetActorAngle(0) <= 1.00)) &&  (GetActorAngle(905) >= 0.37 && GetActorAngle(905) <= 0.62)))
	  )
	  )
	    {
		  SetActorState(905, "InvisibleSee", 0);
	    }
	Delay(1);
	Restart;
}




//PSI HELMET CRAFTER
Script 59 (void)
{
	If(CheckInventory("InventorySoulstone") > 0)
	{
		SetLineSpecial(330, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventorySoulstone", 1);
		SpawnSpotForced("CultSoulstone", 332, 660, 0);
	}
	else
	If(CheckInventory("InventoryPsishroom") > 0)
	{
		SetLineSpecial(330, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryPsishroom", 1);
		SpawnSpotForced("NaturePsiShroomD", 332, 660, 0);
	}
	else
	Print(s:"You have no reagents to place.");
}

Script 60 (void)
{
	If(CheckInventory("InventorySoulstone") > 0)
	{
		SetLineSpecial(331, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventorySoulstone", 1);
		SpawnSpotForced("CultSoulstone", 333, 661, 0);
	}
	else
	If(CheckInventory("InventoryPsishroom") > 0)
	{
		SetLineSpecial(331, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryPsishroom", 1);
		SpawnSpotForced("NaturePsiShroomD", 333, 661, 0);
	}
	else
	Print(s:"You have no reagents to place.");
}

Script 61 (void)
{
	If(IsTIDUsed(660) && IsTIDUsed(661))
	{
		SetLineSpecial(334, 0, 0, 0, 0, 0, 0);
		SetActorPitch(335, 0.65);
		PlaySound(335, "Interaction/MachineOn");
		Delay(16);
		Floor_LowerByValue(214, 2, 32);
		TagWait(214);
		Ceiling_LowerByValue(336, 2, 24);
		TagWait(336);
		Thing_Remove(660);
		Thing_Remove(661);
		Thing_Remove(337);
		Ceiling_lowerByValue(338, 8, 128);
		TagWait(338);
		PlaySound(339, "Weapons/SteamHiss");
		Ceiling_RaiseByValue(338, 16, 128);
		TagWait(338);
		Ceiling_RaiseByValue(336, 4, 24);
		SpawnSpotForced("InventoryPsiCrown", 339, 0, 0);
		Delay(16);
		SpawnSpotForced("DustPuff", 339, 0, 0);
	}
	else
	{
	Print(s:"The machine is not ready to be used.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}

//PSI FIELD TEMPLE
Script 62 (void)
{
	If(CheckInventory("InventoryPsiCrown") > 0)
	{
		SetLineSpecial(185, 0, 0, 0, 0, 0, 0);
		FadeTo(255, 200, 200, 1.0, 0.5);
		Delay(18);
		FadeTo(255, 200, 200, 0.0, 0.4);
		SpawnSpotForced("ExplosionMagicPurple", 341, 0, 0);
		Line_SetBlocking(185, 0, BLOCKF_EVERYTHING);
		SetLineTexture(185, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(185, SIDE_BACK, TEXTURE_MIDDLE, "");
		Delay(8);
		Thing_Activate(273);
		Thing_Activate(381);
		Thing_Remove(342);
		Delay(8);
		SetActorAngle(273, 1.0);
		ACS_Execute(92, 0, 0, 0, 0);
	}
	else
    {
	Thing_Damage2(0, 1, "Magic");
	Print(s:"The magic field stings your mind painfully.");
	PlaySound(0, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
	FadeTo(255, 200, 200, 0.3, 0.5);
	Delay(18);
	FadeTo(255, 200, 200, 0.0, 0.2);
	Delay(70);
    }
}

//MASTERS DIALOGUE
Script 93 (void)
{
	If(GetActorProperty(382, APROP_Health) > 0)
	{
	SetLineSpecial(383, 0, 0, 0, 0, 0, 0);
	HudmessageBold(s:"Body Master:    Who sent you here, demon?! Kill her, you fools!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	SetActorFlag(0, "NOPAIN", 1);
    }
}

Script 94 (void)
{
	If(GetActorProperty(381, APROP_Health) > 0)
	{
	SetLineSpecial(384, 0, 0, 0, 0, 0, 0);
	HudmessageBold(s:"Mind Master:    What a peculiar intruder... I'd love to split your head open!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 4.5, 0.2, 0.5);
	SetActorFlag(0, "NOPAIN", 1);
    }
}

//HAUNTED PAINTING
Script 92 (void)
{
	If((GetActorProperty(381, APROP_Health) <= 0) && (GetActorProperty(382, APROP_Health) <= 0))
	{
		SetActorState(376, "BothMastersDead", 0);
		Thing_Remove(378);
		SetActorState(377, "Special", 0);
		Thing_Remove(380);
		SetActorState(379, "Special", 0);
	}
	else
	  If((GetActorProperty(381, APROP_Health) <= 0) && (GetActorProperty(382, APROP_Health) > 0))
	  {
		  SetActorState(376, "MindMasterDead", 0);
		  Thing_Remove(378);
		  SetActorState(377, "Special", 0);
	  }
	  else
	    If((GetActorProperty(381, APROP_Health) > 0) && (GetActorProperty(382, APROP_Health) <= 0))
	    {
		    SetActorState(376, "BodyMasterDead", 0);
			Thing_Remove(380);
			SetActorState(379, "Special", 0);
	    }
	Delay(175);
	Restart;
}

//CONCERT HALL HARP
Script 57 (void)
{
	Print(s:"An unholy shield prevents you from reaching the book.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 58 (void)
{
	If(ChecKInventory("ScriptCanPlayHarp") > 0)
	{
		SetLineSpecial(317, 0, 0, 0, 0, 0, 0);
		Thing_Remove(369);
		PlaySound(318, "Interaction/HarpB", CHAN_AUTO);
		Delay(40);
		Radius_Quake(3, 175, 0, 1, 0);
		Delay(12);
		FadeTo(255, 200, 200, 0.8, 0.5);
		Delay(18);
		FadeTo(255, 200, 200, 0.0, 0.3);
		SpawnSpotForced("ExplosionMagicPurple", 321, 0, 0);
		Line_SetBlocking(317, 0, BLOCKF_EVERYTHING);
		SetLineTexture(317, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(317, SIDE_BACK, TEXTURE_MIDDLE, "");

		Delay(16);

		SpawnSpotForced("HedonTeleportFogDemon", 319, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 320, 0, 0);
		PlaySound(319, "misc/teleport", CHAN_AUTO);
		PlaySound(320, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpot("PitLord", 319, 0, 192);
		SpawnSpot("Hellblaze", 320, 659, 0);
		SetActorFlag(695, "AMBUSH", 1);

		Delay(35);

		PlaySound(322, "Weapons/PotionDie", CHAN_AUTO, 1.0);
		SpawnSpotForced("DustCloud", 322, 0, 0);
		SpawnSpotForced("JunkBrokenGlassA", 323, 0, 0);
		SpawnSpotForced("JunkBrokenGlassB", 324, 0, 0);
		Line_SetBlocking(325, 0, BLOCKF_EVERYTHING);
		SetLineTexture(325, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15C");
		SetLineTexture(325, SIDE_BACK, TEXTURE_MIDDLE, "WINDW15C");
		Line_SetBlocking(316, 0, BLOCKF_EVERYTHING);
		SetLineTexture(316, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15C");
		SetLineTexture(316, SIDE_BACK, TEXTURE_MIDDLE, "WINDW15C");
		Delay(1);
		SpawnSpotForced("Cerberus", 326, 658, 0);
		ThrustThing(0, random(15,25), 0, 658);

		Delay(10*35);
		SpawnSpotForced("HedonTeleportFogDemon", 329, 0, 0);
		PlaySound(329, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpot("Hellblaze", 329, 0, 64);
		NoiseAlert(0, 0);

		Delay(15*35);
		SpawnSpotForced("HedonTeleportFogDemon", 327, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 328, 0, 0);
		PlaySound(327, "misc/teleport", CHAN_AUTO);
		PlaySound(328, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpot("Hellblaze", 327, 0, 192);
		SpawnSpot("ForgeElemental", 328, 0, 192);
		NoiseAlert(0, 0);
	}
	else
	{
	  Print(s:"You don't know how to play this instrument.");
      PlaySound(318, "Interaction/HarpA", CHAN_AUTO);
	  //Delay(35);
	}
}


//UNHOLY BOOKS
int spec91 = 5;
Script 91 (void)
{
	If(spec91 == 5)
	{
	Print(s:"The gate is blocked by five unholy seals.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
	else
	  If(spec91 == 4)
	  {
	  Print(s:"The gate is blocked by four unholy seals.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  Delay(35);
	  }
	  else
	    If(spec91 == 3)
	    {
	    Print(s:"The gate is blocked by three unholy seals.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	    }
	    else
		  If(spec91 == 2)
	      {
	      Print(s:"The gate is blocked by two unholy seals.");
	      PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	      Delay(35);
	      }
	      else
		    If(spec91 == 1)
	        {
	        Print(s:"The gate is blocked by one last unholy seal.");
	        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	        Delay(35);
	        }
}

Script 44 (void)
{
	SetLineSpecial(294, 0, 0, 0, 0, 0, 0);
	SetActorState(295, "Special", 0);
	Delay(3);
	Radius_Quake(1, 105, 0, 1, 0);
	Thing_Remove(296);
	spec91 -= 1;
}

Script 45 (void)
{
	SetLineSpecial(297, 0, 0, 0, 0, 0, 0);
	SetActorState(298, "Special", 0);
	Delay(3);
	Radius_Quake(1, 105, 0, 1, 0);
	Thing_Remove(299);
	spec91 -= 1;
}

Script 46 (void)
{
	SetLineSpecial(300, 0, 0, 0, 0, 0, 0);
	SetActorState(301, "Special", 0);
	Delay(3);
	Radius_Quake(1, 105, 0, 1, 0);
	Thing_Remove(302);
	spec91 -= 1;
}

Script 47 (void)
{
	SetLineSpecial(303, 0, 0, 0, 0, 0, 0);
	SetActorState(304, "Special", 0);
	Delay(3);
	Radius_Quake(1, 105, 0, 1, 0);
	Thing_Remove(305);
	spec91 -= 1;
}

Script 49 (void)
{
	SetLineSpecial(306, 0, 0, 0, 0, 0, 0);
	SetActorState(307, "Special", 0);
	Delay(3);
	Radius_Quake(1, 105, 0, 1, 0);
	Thing_Remove(308);
	spec91 -= 1;
}

//FINAL GATE
Script 50 (void)
{
    If(IsTIDUsed(296) == 0 && IsTIDUsed(299) == 0 && IsTIDUsed(302) == 0 && IsTIDUsed(305) == 0 && IsTIDUsed(308) == 0)
	{
		SetLineSpecial(309, 0, 0, 0, 0, 0, 0);
		ACS_Execute(48, 0, 0, 0, 0);
		Floor_LowerByValue(310, 12, 164);
		Delay(70);
		Floor_LowerByValue(311, 12, 164);

		Delay(105);

		If(CheckProximity(0, "IDBearWarriorStationary", 1800.0, 1))
        {
	    PlaySound(234, "BearWarrior/Ha", CHAN_AUTO);
        Hudmessage(s:"Bear Warrior:    Hey! Is that Zan?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
        }
	}
}

Script 51 (void)
{
	PlaySound(234, "BearWarrior/Rage1", CHAN_AUTO);
	Hudmessage(s:"Bear Warrior:    Hold your fire!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
}

//LEVEL END
Script 52 (void)
{
	SetActorProperty(0, APROP_Speed, 0.0);
	PlaySound(234, "BearWarrior/Ha", CHAN_AUTO);
	Hudmessage(s:"Bear Warrior:    Well I'll be damned... the deserter shows up here, of any place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(4*35);
	//SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);

	PlaySound(234, "BearWarrior/Hmm", CHAN_AUTO);
	Hudmessage(s:"Drop your weapons, sergeant. You have some questions to answer..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(2*35);

	FadeTo(0, 0, 0, 1.0, 3.0);

	Delay(5*35);

	//SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
    SetActorProperty(0, APROP_Speed, 1.0);
	CancelFade();
	ACS_NamedExecuteWithResult("FriendlyCounter");
	Exit_Normal(0);
}


//MONSTER FIGHTS
//Lower Courtyards
Script 43 (void)
{
    SetLineSpecial(289, 0, 0, 0, 0, 0, 0);
	Thing_Activate(37);
	Thing_Activate(287);
	Thing_Hate(37, 0, 3);
	Thing_Hate(37, 287, 3);
	Thing_Hate(287, 0, 3);
	Thing_Hate(287, 37, 3);
	Delay(60);
	Thing_Destroy(288);
	Delay(105);
}
//Farm Breach
Script 89 (void)
{
	//SetLineSpecial(215, 0, 0, 0, 0, 0, 0);
    Floor_LowerByValue(216, 9999, 76);
	SpawnSpotForced("ExplosionHuge", 293, 0, 0);
	SpawnSpotForced("FireTinyLooping", 290, 662, 0);
	SetLineTexture(375, SIDE_FRONT, TEXTURE_MIDDLE, "WINDOW11");
	SetLineTexture(375, SIDE_BACK, TEXTURE_MIDDLE, "WINDOW11");
	Line_SetBlocking(375, 0, BLOCKF_EVERYTHING);
	SetActorFlag(373, "INVISIBLE", 0);
	Radius_Quake(2, 35, 0, 1, 0);
	Thing_Activate(291);
	Thing_Activate(292);
	Thing_Hate(291, 292, 3);
	Thing_Hate(292, 291, 3);
	SpawnSpotForced("PitLord", 389, 663, 128);
	SetActorFlag(663, "AMBUSH", 1);
	Delay(24);
	Hudmessage(s:"Pit Lord:    WE'VE HAD ENOUGH OF YOUR SCHEMING, CULTIST SCUM! WHERE ARE YOU HIDING THE BOOKS?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.80, 6.5, 0.2, 1.5);
	PlaySound(663, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);

}
Script 97 (void)
{
	If(GetActorProperty(663, APROP_Health) > 0)
	{
	SetActorState(663, "Melee", 0);
	PlaySound(663, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);
	PlaySound(663, "Projectile/Thud", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Damage(386, 1, 0);
	Radius_Quake(2, 16, 0, 1, 0);
	Hudmessage(s:"Pit Lord:    WRETCHED TRAITORS!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.82, 2.5, 0.2, 1.5);
	}
}


//MONSTER SPAWNS
//Crypt Ambush
Script 9 (void)
{
	SetLineSpecial(35, 0, 0, 0, 0, 0, 0);
	Delay(16);
	SpawnSpotForced("HedonTeleportFogDemon", 33, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 36, 0, 0);
	PlaySound(33, "misc/teleport", CHAN_AUTO);
	PlaySound(36, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpot("Hellblaze", 33, 0, 128);
	SpawnSpot("PitLord", 36, 0, 128);
	NoiseAlert(0, 0);
}
Script 10 (void)
{
	SetLineSpecial(35, 0, 0, 0, 0, 0, 0);
}
Script 11 (void)
{
	SetLineSpecial(35, ACS_Execute, 9, 0, 0, 0, 0);
}

//Mind Temple Crypt Ambush
Script 63 (void)
{
	SpawnSpotForced("HedonTeleportFogDemon", 345, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 346, 0, 0);
	PlaySound(345, "misc/teleport", CHAN_AUTO);
	PlaySound(346, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpot("PitLord", 345, 0, 64);
	SpawnSpot("Hellblaze", 346, 0, 192);
	NoiseAlert(0, 0);
}

//Water Temple Ambush
Script 64 (void)
{
	SetLineSpecial(343, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("ForgeElemental", 344, 0, 0);
	Floor_LowerByValue(231, 8, 84);
}

//Library Ambush Golem
Script 67 (void)
{
	ThrustThing(192, 10, 0, 357);
	ThrustThing(64, 10, 0, 358);
}

//Library Ambush 2 + Lower Courtyard Spawn
Script 65 (void)
{
    If(CheckInventory("WitheredVineKey") > 0)
	{
		SetLineSpecial(348, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("Mentalist", 409, 665, 192);
		SpawnSpotForced("Cerberus", 410, 665, 192);
		SetActorFlag(665, "AMBUSH", 1);
		Delay(16);
		Thing_Activate(349);
		Floor_LowerByValue(142, 8, 64);

		SpawnSpotForced("HedonTeleportFogDemon", 368, 0, 0);
		PlaySound(368, "misc/teleport", CHAN_AUTO);
		Delay(8);
		SpawnSpot("Cerberus", 368, 0, 192);

		SpawnSpot("Cerberus", 361, 0, 0);
		SpawnSpot("Hellblaze", 362, 0, 192);
		SpawnSpot("Hellblaze", 364, 0, 64);
		SpawnSpot("ForgeElemental", 363, 0, 64);

	}
}

//Basement Ambush
Script 69 (void)
{
    SpawnSpotForced("HedonTeleportFogDemon", 359, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 360, 0, 0);
	PlaySound(359, "misc/teleport", CHAN_AUTO);
	PlaySound(360, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpot("Hellblaze", 359, 0, 64);
	SpawnSpot("Hellblaze", 360, 0, 192);
	NoiseAlert(0, 0);
}

//FORGE ELEMENTAL HALLWAY BLOW
Script 66 (void)
{
	If(CheckInventory("ScriptCanPlayHarp") > 0)
	{
		SetLineSpecial(350, 0, 0, 0, 0, 0, 0);
		FloorAndCeiling_RaiseByValue(355, 9999, 320);
		SpawnSpotForced("ForgeElemental", 351, 657, 64);
		Thing_Deactivate(657);
		ThrustThingZ(657, 5, 0, 0);
		Radius_Quake(4, 105, 0, 12, 354);
		SpawnSpot("ExplosionHuge", 352, 0, 0);
		Delay(8);
		SpawnSpot("ExplosionLarge", 353, 0, 0);
		Delay(12);
		SpawnSpot("ExplosionMedium", 354, 0, 0);
		Thing_Activate(657);
	}
}

//BODY MASTER ROOM DOOR ATTACKER
Script 103 (void)
{
	If(CheckInventory("InventoryBodyGem") > 0)
	{
		SetLineSpecial(408, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("Conscript", 406, 664, 0);
        Thing_Hate(664, 407, 3);
	}
}



//BAR GATE LEVERS
Script 41 (void)
{
	SetLineSpecial(280, 0, 0, 0, 0, 0, 0);
	SetActorPitch(282, 0.65);
	PlaySound(282, "Interaction/MachineOn");
	Delay(12);
	Floor_LowerByValue(281, 8, 128);
}

Script 42 (void)
{
	SetLineSpecial(283, 0, 0, 0, 0, 0, 0);
	SetActorPitch(284, 0.65);
	PlaySound(284, "Interaction/MachineOn");
	Delay(12);
	Floor_LowerByValue(285, 8, 108);
}


//MASTER DOORS
Script 28 (void)
{
	Print(s:"The door's lock seems to be more intricate than expected.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
}

Script 104 (void)
{
	Print(s:"The door won't budge.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 29 (void)
{
	Print(s:"The lock appears to have a circular hollow socket.");
}

Script 30 (void)
{
	If(CheckInventory("InventoryBodyGem") > 0)
	{
		SetLineSpecial(162, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryBodyGem", 1);
		PlaySound(153, "Ammo/DepletedShardBounce", CHAN_AUTO, 1.0);
		PlaySound(153, "Interaction/Locked", CHAN_AUTO, 0.5);
		SetLineTexture(162, SIDE_FRONT, TEXTURE_MIDDLE, "SLAB6");
		SetLineSpecial(152, ACS_Execute, 632, 0, 0, 0, 0);
		Thing_remove(407);
		If(GetActorProperty(664, APROP_Health) > 0)
		{
		  PlaySound(664, "Cultist/Sight", CHAN_AUTO);
		  Thing_Hate(664, 0, 3);
	    }
	}
	else
	{
	Print(s:"The lock appears to have a square hollow socket.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}

Script 31 (void)
{
	If(CheckInventory("InventoryMindGem") > 0)
	{
		SetLineSpecial(151, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryMindGem", 1);
		PlaySound(150, "Ammo/DepletedShardBounce", CHAN_AUTO, 1.0);
		PlaySound(150, "Interaction/Locked", CHAN_AUTO, 0.5);
		SetLineTexture(151, SIDE_FRONT, TEXTURE_MIDDLE, "SLAB6");
		SetLineSpecial(149, ACS_Execute, 723, 0, 0, 0, 0);
	}
	else
	{
	Print(s:"The lock appears to have a triangular hollow socket.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}

//LOCKED DOORS
Script 12 (void)
{
	  Print(s:"This door is locked from the inside.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

//ROTATING DOORS
Script 85 (void)
{
	If(GetActorZ(0) < -109.0)
    {
	  SetLineSpecial(71, ACS_Execute, 85, 0, 0, 0, 0);
      Polyobj_DoorSwing(85,16,64,175);
	}
}

Script 86 (void)
{
	If(GetActorZ(0) < -109.0)
    {
      Polyobj_DoorSwing(86,-16,18,175);
	}
}

Script 90 (void)
{
	If(GetActorZ(0) < -109.0)
    {
      Polyobj_DoorSwing(90,16,64,175);
	}
}

Script 177 (void)
{
  If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(363,-16,64,175);
	Polyobj_DoorSwing(177,16,64,175);
  }
    else
    If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 180 (void)
{
	If(GetActorZ(0) < -178.0)
    {
	  SetLineSpecial(209, ACS_EXECUTE, 180, 0, 0, 0, 0);
      Polyobj_DoorSwing(180,16,64,175);
	}
}

Script 182 (void)
{
  If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(358,-16,64,175);
	Polyobj_DoorSwing(182,16,64,175);
  }
    else
    If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

int spec184 = 0;
Script 184 (void)
{
  If(GetActorZ(0) < -146.0 && spec184 == 0)
  {
	  spec184 += 1;
	  ACS_Execute(89, 0, 0, 0, 0);
	  Delay(35);
  }
  else
  If(GetActorZ(0) < -146.0)
  {
    Polyobj_DoorSwing(356,16,64,175);
	Polyobj_DoorSwing(184,-16,64,175);
  }
}


Script 270 (void)
{
  If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(270,16,64,175);
  }
    else
    If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"This door requires a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 271 (void)
{
  If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(271,-16,64,175);
  }
    else
    If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"This door requires a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 272 (void)
{
	If(GetActorZ(0) < -105.0)
    {
      Polyobj_DoorSwing(272,-16,64,175);
	}
}

Script 273 (void)
{
	If(GetActorZ(0) < -105.0)
    {
      Polyobj_DoorSwing(273,16,19,175);
	}
}

Script 359 (void)
{
  If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(359,-16,64,175);
	Polyobj_DoorSwing(181,16,64,175);
	Thing_Hate(37, 0, 0);
  }
    else
    If(GetActorZ(0) < -109.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"These doors require a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 360 (void)
{
	If(GetActorZ(0) < -109.0)
    {
      Polyobj_DoorSwing(360,16,64,175);
	}
}

Script 361 (void)
{
	If(GetActorZ(0) < -109.0)
    {
      Polyobj_DoorSwing(361,16,64,175);
	}
}

Script 362 (void)
{
	If(GetActorZ(0) < -109.0)
    {
      Polyobj_DoorSwing(362,16,64,175);
	}
}

Script 450 (void)
{
	If(GetActorZ(0) < -204.0)
    {
	  SetLineSpecial(208, ACS_EXECUTE, 450, 0, 0, 0, 0);
      Polyobj_DoorSwing(450,-16,64,175);
	}
}

Script 451 (void)
{
  If(GetActorZ(0) < -178.0 && CheckInventory("WitheredVineKey") > 0)
  {
    Polyobj_DoorSwing(451,-16,64,175);
  }
    else
    If(GetActorZ(0) < -178.0 && CheckInventory("WitheredVineKey") == 0)
    {
      Print(s:"This door requires a Withered Vine key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 538 (void)
{
  If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(718,-16,64,175);
	Polyobj_DoorSwing(538,16,64,175);
  }
    else
    If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"These doors require a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 539 (void)
{
  If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(719,16,64,175);
	Polyobj_DoorSwing(539,-16,64,175);
  }
    else
    If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"These doors require a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 540 (void)
{
  If(GetActorZ(0) < -105.0)
  {
    Polyobj_DoorSwing(720,-16,64,175);
	Polyobj_DoorSwing(540,16,64,175);
  }
}

Script 542 (void)
{
  If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(722,-16,64,175);
	Polyobj_DoorSwing(542,16,64,175);
  }
    else
    If(GetActorZ(0) < 67.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"These doors require a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 543 (void)
{
  If((GetActorZ(0) < 216.0) && (GetActorZ(0) > 112.0))
  {
    Polyobj_DoorSwing(543,-16,64,175);
  }
}

Script 630 (void)
{
	If(GetActorZ(0) < 70.0 && GetActorZ(0) > -44.0 && CheckInventory("GoldenKey") > 0)
    {
      Polyobj_DoorSwing(630,-16,64,175);
	}
    else
    If(GetActorZ(0) < 70.0 && GetActorZ(0) > -44.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 631 (void)
{
	If(GetActorZ(0) < 70.0 && GetActorZ(0) > -44.0 && CheckInventory("GoldenKey") > 0)
    {
      Polyobj_DoorSwing(631,16,64,175);
	}
    else
    If(GetActorZ(0) < 70.0 && GetActorZ(0) > -44.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 632 (void)
{
	If(GetActorZ(0) < 68.0)
    {
      Polyobj_DoorSwing(632,16,64,175);
	}
}

Script 721 (void)
{
	If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") > 0)
    {
      Polyobj_DoorSwing(721,-16,64,175);
	}
    else
    If(GetActorZ(0) < -105.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 723 (void)
{
	If(GetActorZ(0) < 68.0)
    {
      Polyobj_DoorSwing(723,-16,64,175);
	}
}

//READABLES
Script 71 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The hefty book seems to have belonged to a demon. Pages decorated with hellish glyphs contain an undated journal)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.32, 120.0);

	Hudmessage(s:"We've arrived at the mansion, following the Blue Baron's command. Hah, how delightful was to see these malformed"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.36, 120.0);
    Hudmessage(s:"bastards give us a royal welcome! They must be scared shitless after hearing the orcs broke out of their caves and"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.38, 120.0);
	Hudmessage(s:"started running their towns through the blade.    We'll be staying here until their pitiful invasion gets torn apart.     "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.40, 120.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.44, 120.0);

	Hudmessage(s:"Few days in and I'm already growing tired of this place.  While setting up the unholy books to protect the main gates, "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.48, 120.0);
	Hudmessage(s:"one of the three brothers who own the place came up to me, asking to allow him to keep the tomes.   I couldn't care    "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"less who holds them as long as they're in the compound but then his sister shows up and starts making a fuss about it."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.52, 120.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.56, 120.0);

	Hudmessage(s:"I see the little shits are trying to fight for dominance now that their old man kicked the bucket.   This should make   "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.60, 120.0);
	Hudmessage(s:"for a little entertainment, as long as they don't push us Demons around.    We're only here to keep the orcs away...   "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.62, 120.0);
	Hudmessage(s:"The greenskin have finally showed up! I don't know what's funnier, them failing at breaking our warded gate, or the"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.64, 120.0);
	Hudmessage(s:"cultists panicking that they are setting up to besiege us.  I wish we could go stomp them, but orders are to stay put."; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.66, 120.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.70, 120.0);

	Hudmessage(s:"Something happened. First, this weird lightning storm brews into the Crystal Dome, and then Mistress Nithriel comes  "; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.74, 120.0);
	Hudmessage(s:"out of nowhere, panicking these bastards even more. Something made those crystals the farmers use fade, and now   "; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_UNTRANSLATED, 1.5, 0.76, 120.0);
	Hudmessage(s:"the crops are dying. Sounds like the orcs holding up outside have suddenly become a problem. I don't like this at all. "; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_UNTRANSLATED, 1.5, 0.78, 120.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 18, CR_UNTRANSLATED, 1.5, 0.82, 120.0);

	Hudmessage(s:"I'm starting to get real pissed off by these siblings and their schemes. The Spirit Wench has vanished all of a sudden,  "; HUDMSG_PLAIN | HUDMSG_LOG, 19, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
	Hudmessage(s:"leaving her brothers to turn the place into a mess. One of them convinced a part of the servants to lock themselves in"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"the basement while the other took over the chapel. Looks like we'll have to dish out some discipline around this place."; HUDMSG_PLAIN | HUDMSG_LOG, 21, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 72 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The greasy pages of the tome appear to hold the journal of the Body Master)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 120.0);

	Hudmessage(s:"16/3rd/1106.   Darn it, the rumors were true!   Those bleeding Iron Division orcs are up to no good again, having left"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 120.0);
    Hudmessage(s:"their hideout and pillaging our towns!    'cept word is, this time they're out for war!  The Blue Baron better be ready"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.68, 120.0);
	Hudmessage(s:"to deal with this.  I can already see the droves of wounded he'll send me to sew up. Better start the preparations..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.70, 120.0);

	Hudmessage(s:"18/3rd/1106. At last!  The demons are here to protect, and they've brought these unholy books... told the servants"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.74, 120.0);
	Hudmessage(s:"to keep an eye out for them.  My cursed siblings will surely want to get them for themselves, so they can show who's  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.76, 120.0);
	Hudmessage(s:"the house leader.   Oh, but the servitors are loyal to me.  Who else treats their wounds after the sermons, hmm? Hah!"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.78, 120.0);

	Hudmessage(s:"19/3rd/1106. As foreseen, Orc filth have come knocking at our gates! The unholy seals have made our defenses truly"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.82, 120.0);
    Hudmessage(s:"impenetrable...  though this makes me even more worried of what my brothers are up to. What if one of them thinks to"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.84, 120.0);
    Hudmessage(s:"sell us out and leaves us all defenseless?!     I'll have to switch some of the staff tasked with digging out the temple"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
	Hudmessage(s:"to spy on them.   We've unearthed most of the important ruins anyway. Hah! So close to discovering the secrets of the"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"elves!   The power of their legendary healing water is my ticket to claim over the mansion and break up the orc siege! "; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 73 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Anum 0 - Foundation of the Schism"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 90.0);

	Hudmessage(s:"[...]   And then I ask you, follower - why should you serve the caprice of the Elemental God?  Have you not been given"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"powers to shape the world from birth? Have the Elemental Gods built the towns and castles and ports that make the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"empire? Have they made the saw that cuts the plank? The cart that moves the brick? Then why slave away, offering"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
    Hudmessage(s:"your lamb and golden ring to their altar?  Man has power to build the dam that holds the flood, the wall that stands"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"the quake, the well that quenches the fire.   Man knows the hardship needed to fight the fury of the Elemental Gods. "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"And so I ask you, my follower  -  you wish to spend the afterlife serving in their pantheon, or grasp the reins and take"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"your rightful place as a God?   You own the Body, the Mind and the Spirit - keys to your freedom and salvation.  Shed"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
    Hudmessage(s:"yourself from the confines of this shallow world, and hone your three gifts through hardship and sacrifice. Only then"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"you shall be ready to ascend into the afterlife as a God, and look with pity upon the blind fools that serve still.  [...]"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 74 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A neat, spiral bound book serves as journal for the Mind Master)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 90.0);

	Hudmessage(s:"Day 14, 3rd Quarter, Anum 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 90.0);
    Hudmessage(s:"I have noticed my brother having quite an anxious grin at the dinner table today. Must be something in regard to the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"elven temple he's taken an archeological interest in.  Perhaps it's time for me to scry the outcome of his discovery... "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 90.0);

	Hudmessage(s:"Day 19, 3rd Quarter, Anum 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"Why, who comes knocking at our gates today? The orcs? A mere day after we welcomed our demonic allies with a feast!"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"Their unholy tomes have proven their power already.   One could not even touch them without demon blood boiling in     "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
    Hudmessage(s:"their veins.  Luckily for me, I have honed my telekinetic skills quite well. I shall see how my siblings will react soon...    "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 90.0);

	Hudmessage(s:"[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"Day 54, 3rd Quarter, Anum 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"Mistress Nithriel! What a pleasant visit it was. We had a conversation about the Crawlers and Golems we've received"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"some weeks ago. The training goes well... they have such interesting minds! Sadly she seemed rather preocupied with"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"my sister.  At least my idiotic brother is still trapped away, unable to distract us.  I have many questions for her...  "; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 75 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The Spirit Mistress' journal appears to be written in a strange language that you can oddly enough understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 90.0);

	Hudmessage(s:"21, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 90.0);
    Hudmessage(s:"Demons have been around for three days and I've already grown tired of them.     Their stench has permeated the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"entire mansion, and the uncouth looks they give me and my Warlocks are disgusting. I'd have them put in cages if it"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"weren't for the orcish scum they're holding at bay. There is so much tension flowing around... I grow ever restless."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.68, 90.0);

	Hudmessage(s:"Day 50, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"An Initiate has approached me today, asking for a Soul Stone. Apparently, the all-enlightened Body Master has"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"been trapped by his brother into the temple ruins and needs my help to escape. Couldn't care less for his fate, I"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
    Hudmessage(s:"won't allow such powerful artifact into the hands of a lowly apprentice. To make sure he won't try to steal it, I"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"have enchanted it to always shift its position when faced.  It should be enough keep it safe for the time being...  "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"Day 54, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"To my great surprise, Mistress Nithriel has visited us today. She looked rather exhausted, carrying this strange"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"disk with her. I asked if it was related to the recent storm and the decay of the crystals, but she wouldn't tell."; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"She asked me to claim one of the demon books and accompany her.  At last! A chance to leave this cursed house!"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
	}
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The Spirit Mistress' journal appears to be written in a strange language that you can oddly enough understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 90.0);

	Hudmessage(s:"21, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 90.0);
    Hudmessage(s:"Demons have been around for three days and I've already grown tired of them.     Their stench has permeated the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"entire mansion, and the uncouth looks they give me and my Warlocks are disgusting. I'd have them put in cages if it"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"weren't for the orcish scum they're holding at bay. There is so much tension flowing around... I grow ever restless."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.68, 90.0);

	Hudmessage(s:"Day 50, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"An Initiate has approached me today, asking for a \c[Gold]Soul Stone\c-. Apparently, the all-enlightened Body Master has"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"been trapped by his brother into the temple ruins and needs my help to escape. Couldn't care less for his fate, I"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
    Hudmessage(s:"won't allow such powerful artifact into the hands of a lowly apprentice. To make sure he won't try to steal it, I"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"have enchanted it to \c[Gold]always shift its position when faced\c-.  It should be enough keep it safe for the time being...  "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"Day 54, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"To my great surprise, Mistress Nithriel has visited us today. She looked rather exhausted, carrying this strange"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"disk with her. I asked if it was related to the recent storm and the decay of the crystals, but she wouldn't tell."; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"She asked me to claim one of the demon books and accompany her.  At last! A chance to leave this cursed house!"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
	}
}

Script 76 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(Judging by the poor grammar, the journal must have belonged to one of the servants. The last entry seems important)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 15.0);

	Hudmessage(s:"Today Body Master give me his room gem to keep safe. Mind dogs lurk around library but they don't know gem is with me."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
}

Script 77 (void)
{
	//SetFont ("OLAYTMID");
    //HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"NO PASSWORD, NO ENTRY!!!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 78 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I knew it would happen!  That Mind Master slime has waited for us to find something of value and used his spells on     "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"our brethren! Someone stole the crystal powering the inner temple gate and trapped my master inside! I went to look"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
    Hudmessage(s:"for the scum and found him in the chapel, guarding the temple key with a powerful psionic field.  He knows well that   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"we outnumber his men, so he's planning to starve my master out! And no other cyan crystal we tried could unlock him!"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"We've got to move in and claim the stolen one. After some research I've found a way to create a crown that provides"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"psychical protection. We could break the field and take the bastards out! But first, I need a few more items to finish"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
    Hudmessage(s:"it...   the brain was easy to obtain, and the Spirit Mistress certainly has a Soul Stone. But then I would also need one "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"of those Psi-shrooms... they only grow in areas affected by high psionic emissions, so it will take a while to find them.    "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I knew it would happen!  That Mind Master slime has waited for us to find something of value and used his spells on     "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"our brethren! Someone stole the crystal powering the inner temple gate and trapped my master inside! I went to look"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
    Hudmessage(s:"for the scum and found him in the chapel, guarding the temple key with a powerful psionic field.  He knows well that   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"we outnumber his men, so he's planning to starve my master out! And no other cyan crystals we tried could free him..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.80, 90.0);

	Hudmessage(s:"We've got to move in and claim the stolen one. After some research I've found a way to create a crown that provides"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"psychical protection. We could break the field and take the bastards out! But first, I need a few more items to finish"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
    Hudmessage(s:"it...   the brain was easy to obtain, and the Spirit Mistress certainly has a \c[Gold]Soul Stone\c-. But then I would also need one "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"of those \c[Gold]Psi-shrooms\c-... they only grow in areas affected by high psionic emissions, so it will take a while to find them.    "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }

}

Script 79 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Since our conscripts may either miss their tongues or ears, we concluded that the best way to handle "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"the password is to write a set of words on a paper and simply show it to the door guard after knocking."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"You will receive a new scroll every week. Make sure to take care of it, and incinerate the old one.        "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 80 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"One of the demons has given me a hint on how we can break the seal and steal the book from the concert hall."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 35.0);
	Hudmessage(s:"We can use a specific harp tune to shatter it, which I have detailed in the music sheet. Use the small harp to"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 35.0);
	Hudmessage(s:"practice and then go retrieve the book. Once you break the seal, our demon will help you carry it back to us."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 35.0);

	Hudmessage(s:"(You practice the harp tune following the instructions)"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_GOLD, 1.5, 0.84, 35.0);
	PlaySound(367, "Interaction/HarpB", CHAN_AUTO);
	GiveInventory("ScriptCanPlayHarp", 1);

	Hudmessage(s:"PS:  Careful with the harp, it's more expensive than you are. And be ready for a raid, the demons' commander"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"has caught onto some of our plans. I can only hope our insider isn't actually planning to get us all butchered."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 35.0);

	Delay(35);
}

Script 81 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The dust covering this ledger is so thick you can hardly make out any of the names signed beneath)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 95 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Keep an eye out on the Demons and see if they move any of the unholy books. We need to know where they are if we are to"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"claim them for ourselves. And don't raise suspicions! I can't afford to lose you, I need someone who can read!        -  B.M."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 90.0);

	Hudmessage(s:"- One book is kept inside the recently dug out temple vault, under my watch"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"- One is in the mess hall. Keep the cellar door shut and use the password!"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"- One is in the chapel, shielded by my wretched brother and his mentalists..."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"- A servant saw him move another book to his quarters using his mind powers"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"- The one held by the Demons in the theatre hall will be the hardest to get..."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Keep an eye out on the Demons and see if they move any of the \c[Gold]unholy books\c-. We need to know where they are if we are to"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"claim them for ourselves. And don't raise suspicions! I can't afford to lose you, I need someone who can read!        -  B.M."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.76, 90.0);

	Hudmessage(s:"- One book is kept inside the recently dug out temple vault, under my watch"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"- One is in the mess hall. Keep the cellar door shut and use the password!"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"- One is in the chapel, shielded by my wretched brother and his mentalists..."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"- A servant saw him move another book to his quarters using his mind powers"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"- The one held by the Demons in the theatre hall will be the hardest to get..."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
	}
}

Script 101 (void)
{
	If(GetActorZ(0) > -128.0)
	{
		//SetFont ("OLAYTMID");
        //HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 1.0);

		SetFont("SMALLFONT");
		Hudmessage(s:"KEEP OUT"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 1.0);
	}
}

Script 102 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The torn, dirt-caked parchment looks like it was carelessly discarded by someone. It is signed by a Pit Lord)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 30.0);
	Hudmessage(s:"I'd like to remind you all that the unholy seals are the only thing keeping the orcs outside the gate from tearing   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 30.0);
	Hudmessage(s:"your worthless flesh apart.      We are growing ever tired of all the plotting and bickering over who gets to own the"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 30.0);
	Hudmessage(s:"unholy books. We're stationed here by the will of the Blue Baron, and won't hold back from culling any attempt at"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 30.0);
	Hudmessage(s:"undermining our authority by force.     So stop fighting now, or we'll start stomping out your empty cultist skulls. "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 30.0);
}

Script 96 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CHAPEL OF THE WORLDLY TRINITY"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 6.0);
	Hudmessage(s:"Built by Master Emeric for the Istedor family, anum 989"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 6.0);
}

//Museum
Script 14 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 6.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"GIANT EXPLOSIVE RED CRYSTAL FORMATION"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 6.0);
    Hudmessage(s:"DON'T STRIKE! KEEP YOUR DISTANCE"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 6.0);
}

Script 15 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SKULL OF JORIK THE SECOND"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 16 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ALLARIA'S FLUTE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 20 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ORCISH URN"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 22 (void)
{
	If(GameSkill() >= SKILL_VERY_HARD)
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"RARE ENCHANTED DARK CRYSTAL"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
	}
}

Script 25 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"DWARVEN ADAMANTINE TOY KNIGHT"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 39 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"DWARVEN HAMMER"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
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

/*
//MESSAGE SCALE
Script "MessageScale" ENTER
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
*/

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}

//DRAWING
Script "OpenDrawing4" (void)
{
	SetFont ("OLAYTDRD");
	HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);
}

Script "CloseJournal" (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}
