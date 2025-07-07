#include "zcommon.acs"


//LEVEL START

script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  If(ThingCountName("IDBearWarrior", 0) > 0)
  {
  Delay(50);
  Hudmessage(s:"Bear Warrior:    The Grove portal should still be usable, let's head in there quickly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.90, 5.0, 0.2, 0.5);
  PlaySound(690, "BearWarrior/Hmm", CHAN_AUTO);
  }

  SetActorProperty(0,APROP_HEALTH, 72);

  TakeInventory("InventoryPickaxe", 1);
  //If(CheckInventory("InventoryMithrilGear") == 0)
  //{
  //GiveInventory("InventoryMithrilGear", 1);
  //}
  TakeInventory("InventoryIronOre", 20);
  TakeInventory("InventoryIronBar", 20);
}

Script 7 ENTER
{
  Sector_SetFade(26, 90, 140, 140);
  Ceiling_Waggle (74, 12, 32, 0, 0);
  Scroll_Ceiling(191, 32, 0, 0);
  SetActorFlag(197, "NOTONAUTOMAP", 1);
}

//DIALOGUE
Script 71 (void)
{
	If(IsTIDUsed(186) && GameSkill() >= SKILL_VERY_HARD)
    {
	Thing_Remove(186);
	SpawnSpot("IDReaverRecruitable", 185, 0, 0);
	Hudmessage(s:"Reaver:    Don't shoot! Friendly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 3.0, 0.2, 0.5);
	PlaySound(185, "Reaver/Huh", CHAN_AUTO);
	Delay(35*4);
	Hudmessage(s:"Those darned cultists have boxed me in. Let's take 'em on together!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 4.0, 0.2, 0.5);
	If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1))
    {
	Delay(5*35);
	Hudmessage(s:"Bear Warrior:    Tagging along would be more helpful than hiding in a closet indeed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 5.0, 0.2, 0.5);
    }
}
}

Script 75 (void)
{
	If(CheckProximity(0, "IDBearWarrior", 1200.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1200.0, 1))
    {
	SetLineSpecial(194, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    What is this... slime? It looks like it's alive!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 5.0, 0.2, 0.5);
	Delay(5*35);
	If(CheckProximity(0, "IDReaver", 960.0, 1) || CheckProximity(0, "IDReaverGuarding", 960.0, 1))
	  {
	  Hudmessage(s:"Reaver:    These dark hearts seem to be feeding off the portal's energy sources."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.90, 5.0, 0.2, 0.5);
	  }
    }
	else
	If(CheckProximity(0, "IDReaver", 1200.0, 1) || CheckProximity(0, "IDReaverGuarding", 1200.0, 1))
	  {
	  SetLineSpecial(194, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Reaver:    What is this sludge? It looks like it's alive... and feeding off the portal's power sources."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.90, 5.0, 0.2, 0.5);
	  }
}

//DEMO
Script 77 (void)
{
	If(GetActorZ(0) > 90.0)
	{
		SetLineSpecial(208, 0, 0, 0, 0, 0, 0);
		ThrustThing(64, 3, 1, 209);
		Delay(24);
		SetActorProperty(209, APROP_Alpha, 0.9);
		//SetActorProperty(209, APROP_ScaleX, 0.35);
		//SetActorProperty(209, APROP_ScaleY, 0.33);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.8);
		//SetActorProperty(209, APROP_ScaleX, 0.34);
		//SetActorProperty(209, APROP_ScaleY, 0.32);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.7);
		//SetActorProperty(209, APROP_ScaleX, 0.33);
		//SetActorProperty(209, APROP_ScaleY, 0.31);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.6);
		//SetActorProperty(209, APROP_ScaleX, 0.32);
		//SetActorProperty(209, APROP_ScaleY, 0.30);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.5);
		//SetActorProperty(209, APROP_ScaleX, 0.31);
		//SetActorProperty(209, APROP_ScaleY, 0.29);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.4);
		//SetActorProperty(209, APROP_ScaleX, 0.30);
		//SetActorProperty(209, APROP_ScaleY, 0.28);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.3);
		//SetActorProperty(209, APROP_ScaleX, 0.29);
		//SetActorProperty(209, APROP_ScaleY, 0.27);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.2);
		//SetActorProperty(209, APROP_ScaleX, 0.28);
		//SetActorProperty(209, APROP_ScaleY, 0.26);
		Delay(1);
		SetActorProperty(209, APROP_Alpha, 0.1);
		//SetActorProperty(209, APROP_ScaleX, 0.27);
		//SetActorProperty(209, APROP_ScaleY, 0.25);
		Delay(1);
		Thing_Destroy(209);
		SetLineTexture(210, SIDE_FRONT, TEXTURE_MIDDLE, "DOOR3");
	}
}

//VENT CERBERUS GROWL
Script 76 (void)
{
	If(GetActorProperty(198, APROP_HEALTH) > 0)
	{
		PlaySound(198, "Cerberus/Active", CHAN_AUTO, 0.6);
	}
}

//WATER WAGGLE
Script 69 ENTER
{
	Ceiling_Waggle(182, 8, 24, 0, 0);
}

//PORTAL EVENT
Script 61 (void)
{
	SetLineSpecial(194, 0, 0, 0, 0, 0, 0);
	GiveInventory("ScriptPortalEvent", 1);
	Thing_Remove(901);
	Delay(35);
	Floor_LowerByValue(150, 1, 16);
	TagWait(150);
	Delay(8);
	PlaySound(151, "Interaction/MachineOn");
	Delay(35);
	Radius_Quake(1, 105, 0, 1, 0);
}

Script 62 (void) //Portal Battle - Dead Coins ver.
{
	If(CheckInventory("ScriptPortalEvent") > 0 && IsTIDUsed(152))
	{
		Thing_Remove(152);
		GiveInventory("ScriptHasStartedPortalEvent", 1);
		SetMusic("HTrack09");
		Floor_RaiseByValue(137, 16, 112);
		Radius_Quake(1, 210, 0, 1, 0);
		Delay(2*35);
		If(CheckProximity(0, "IDBearWarrior", 2200.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 2200.0, 1))
        {
	      Hudmessage(s:"Bear Warrior:    Oh shit... This isn't going to go down easily, is it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 5.0, 0.2, 0.5);
        }
		Delay(6*35);
		If(CheckProximity(0, "IDReaver", 2200.0, 1) || CheckProximity(0, "IDReaverGuarding", 2200.0, 1))
        {
	      Hudmessage(s:"Reaver:    Get ready, I feel like we're in for a big fight."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.90, 5.0, 0.2, 0.5);
        }
		Delay(7*35);
		Radius_Quake(1, 300, 0, 1, 0);
		Delay(10*35);

		Thing_Destroy(153, 0, 0);
		SpawnSpotForced("CryRing", 143, 503, 0);
		SpawnSpotForced("CaveCrystalYellowA", 143, 500, 0);
		SetActorProperty(503, APROP_ScaleX, 1.5);
		SetActorProperty(503, APROP_ScaleY, 1.5);
		SetActorProperty(500, APROP_ScaleX, 0.55);
		SetActorProperty(500, APROP_ScaleY, 0.55);

		Delay(1*35);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(2*35);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65008, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(4*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65001, 0, 505);
		Thing_Spawn(173, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65007, 0, 505);
		Thing_Spawn(175, 65007, 0, 505);
		Thing_Spawn(176, 65007, 0, 505);
		Thing_Spawn(177, 65006, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(3*35); //50
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(3*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

        Delay(5*35);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(7*35); //1 10
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65008, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65006, 0, 505);
		NoiseAlert(0, 0);

        Delay(2*35);
		Thing_Destroy(154, 0, 0);
		SpawnSpotForced("CryRing", 157, 503, 0);
		SpawnSpotForced("CaveCrystalYellowC", 157, 501, 0);
		SetActorProperty(503, APROP_ScaleX, 1.5);
		SetActorProperty(503, APROP_ScaleY, 1.5);
		SetActorProperty(501, APROP_ScaleX, 0.55);
		SetActorProperty(501, APROP_ScaleY, 0.55);

		Delay(2*35);
		Radius_Quake(5, 280, 0, 1, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65004, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65005, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65004, 0, 505);
		Thing_Spawn(171, 65005, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65004, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65001, 0, 505);
		Thing_Spawn(172, 65001, 0, 505);
		Thing_Spawn(173, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65005, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(10*35);
		Thing_Spawn(168, 65004, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65004, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);


		Delay(2*35);
		Radius_Quake(10, 440, 0, 1, 0);

		Delay(2*35);
		FadeTo(230, 230, 200, 1.0, 5.0);
		Delay(2*35);
		SetActorFlag(0, "INVULNERABLE", 1);
		Delay(3*35);
		GiveInventory("ArmorShardBonus", 10);
		FadeTo(230, 230, 200, 0.0, 1.0);
		Thing_Destroy(155, 0, 0);

		SpawnSpotForced("CryRing", 156, 503, 0);
		SetActorProperty(503, APROP_ScaleX, 1.5);
		SetActorProperty(503, APROP_ScaleY, 1.5);
		SpawnSpotForced("CaveCrystalYellowB", 156, 502, 0);
		Thing_Remove(180);
		SetActorProperty(502, APROP_ScaleX, 0.65);
		SetActorProperty(502, APROP_ScaleY, 0.65);
		Delay(8);
		SetLineTexture(178, SIDE_FRONT, TEXTURE_MIDDLE, "Portal01");
		SetLineTexture(178, SIDE_BACK, TEXTURE_MIDDLE, "Portal01");
		SetLineSpecial(178, ACS_EXECUTE, 67);
		SetLineSpecial(179, Autosave);
		TakeInventory("ScriptPortalEvent", 1);
		TakeInventory("ScriptHasStartedPortalEvent", 1);
		PlaySound(143, "Weapons/ExplosionLarge");
		PlaySound(156, "Weapons/ExplosionLarge");
		PlaySound(157, "Weapons/ExplosionLarge");
		SpawnSpotForced("CryRing", 143, 504, 0);
		SpawnSpotForced("CryRing", 156, 504, 0);
		SpawnSpotForced("CryRing", 157, 504, 0);
		Thing_Destroy(505, 1, 0);
		SetActorProperty(504, APROP_ScaleX, 10.0);
		SetActorProperty(504, APROP_ScaleY, 10.0);

        SetLineSpecial(194, ACS_Execute, 74, 0, 0, 0, 0);
		Delay(2*35);
		//SetActorFlag(0, "INVULNERABLE", 0);
		Delay(8*35);
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
}

Script 64 (void)
{
	If(CheckInventory("ScriptHasStartedPortalEvent") > 0)
	{
	SetActorProperty(0, APROP_Speed, 0.0);
    SetFont("SMALLFONT");
	Hudmessage(s:"*Sigh* You just HAD to try this, didn't you?"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.90, 5.0);
	Delay(175);
	SpawnSpot("ShadowAbhaothLevitating", 158, 0, 32);
	}
}

Script 67 (void)
{
	FadeTo(255, 255, 255, 1.0, 0.3);
	Delay(12);

	TakeInventory("HoldingAxe", 1);
	TakeInventory("HoldingSpikeGun", 1);
	TakeInventory("HoldingFragfireGun", 1);
	TakeInventory("HoldingCrushbow", 1);
	TakeInventory("HoldingPotionLauncher", 1);
	TakeInventory("HoldingCrylance", 1);

	ACS_NamedExecuteWithResult("FriendlyCounter");

	//Demo Ending
	ACS_NamedExecuteWithResult("TakeWeapons");
	ACS_NamedExecuteWithResult("TakeConsumables");
	SetActorFlag(212, "INVISIBLE", 1);
	TakeInventory("HoldingAxe", 1);
    PlaySound(72, "Interaction/TeleWarp", CHAN_5);
    ChangeCamera(72, 0, 0);
    //SetActorFlag(0, "INVULNERABLE", 0);
    Delay(3*35);
    FadeTo(0, 0, 0, 0.0, 7.0);
    Delay(7*35);
    Delay(32);
    Sector_SetColor(211, 255, 45, 45);
    Sector_SetFade(211, 255, 45, 45);
	SetActorFlag(212, "INVISIBLE", 0);
    Delay(105);
    ThrustThing(192, 15, 0, 212);
    FadeTo(0, 0, 0, 1.0, 2.5);
    Delay(7*35);
	Exit_Normal(0);
}

//CORRUPTION EXTENSION
Script 56 (void)
{
	Floor_RaiseByValue(144, 999, 2);
	ChangeFloor(144, "Corupt01");
	SetLineTexture(145, SIDE_FRONT, TEXTURE_BOTTOM, "Corupt01");
	Thing_Remove(146);
	SpawnSpot("CorruptTreeA", 148, 0, 0);
}


//GEAR GATE
Script 2 (void)
{
	If(CheckInventory("InventoryMithrilGear") == 1)
	{
	TakeInventory("InventoryMithrilGear", 1);
    SetLineTexture(1, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	PlaySound(0, "Metal/Bounce1");
	Delay(35);
	SetLineTexture(1, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	Floor_LowerByValue(2, 6, 112);
	Tagwait(2);
	Delay(16);
	SetLineTexture(1, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	}
	else
	{
		Print(s:"The gate mechanism is missing a gear.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}

}

//ABHAOTH SIGHTINGS
Script 3 (void)
{
	SpawnSpot("ShadowAbhaothLevitating", 3, 0, 0);
}

Script 16 (void)
{
	Thing_Remove(113);
	SpawnSpotForced("IDPaintingForge", 112, 0, 192);
}

//CONSCRIPT ATTACK GENERATOR
Script 32 (void)
{
	Thing_Hate(78, 75, 1);
}

//ACID POTION PICKUP
Script 14 (void)
{
	If(IsTIDUsed(107) && GameSkill() < SKILL_VERY_HARD)
	{
		Thing_Remove(107);
		SetFont("SMALLFONT");
		Hudmessage(s:"Tip: You can switch between ammo types by pressing the Potion Launcher key \c[White](DEFAULT: 6)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	}
}

//AUXILIARY POWER
Script 13 (void)
{
	If(IsTIDUsed(181) && CheckInventory("ScriptHasRestoredPowerB") < 1)
	{
	Thing_Remove(86);
	GiveInventory("ScriptHasRestoredPowerB", 1);
	SpawnSpot("Initiate", 159, 0, 128);
	SpawnSpot("SniperCultist", 195, 0, 64);
	Floor_RaiseByValue(141, 4, 24);
	Thing_Activate(87);
	Delay(1);
	Thing_Remove(85);
	Thing_Remove(103);
	Thing_Remove(106);
	Spawnspot("IronMaiden", 105, 0, 224);
	SpawnSpot("ForgeLightSmall", 104, 0, 0);
	ChangeCeiling(102, "Iron_05");
	Light_Fade(100, 140, 1);
	Light_Fade(101, 140, 1);
	TagWait(141);
	SetLineTexture(162, SIDE_FRONT, TEXTURE_MIDDLE, "Gate2_DN");
	PlaySound(163, "Interaction/MachineOn");
	}
	else
	If(CheckInventory("ScriptHasRestoredPowerB") < 1)
	{
	GiveInventory("ScriptHasRestoredPowerB", 1);
	SpawnSpot("Initiate", 159, 0, 128);
	Floor_RaiseByValue(141, 4, 24);
	Thing_Activate(87);
	Delay(1);
	Thing_Remove(85);
	Thing_Remove(103);
	Thing_Remove(106);
	SpawnSpot("ForgeLightSmall", 104, 0, 0);
	ChangeCeiling(102, "Iron_05");
	Light_Fade(100, 140, 1);
	Light_Fade(101, 140, 1);
	TagWait(141);
	SetLineTexture(162, SIDE_FRONT, TEXTURE_MIDDLE, "Gate2_DN");
	PlaySound(163, "Interaction/MachineOn");
	}
	ACS_Execute(23, 0, 0, 0, 0);
	SetLineSpecial(190, 0, 0, 0, 0, 0, 0);
	}

//UNDERWATER WINDOW
Script 5 (void)
{
	If(IsTIDUsed(14) == 1)
	{
	Print(s:"The glass is heavily cracked, and looks like it could break any moment.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 6 (void)
{
	Thing_Remove(15);
	Thing_Remove(14);
	SetLineTexture(16, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(16, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Line_SetBlocking(16, 0, 32);
	SpawnSpot("JunkBrokenGlassA", 17);
	SpawnSpot("JunkBrokenGlassA", 18);
	SpawnSpot("JunkBrokenGlassB", 19);
	PlaySound(17, "Weapons/PotionDie");
	Radius_Quake(4, 55, 0, 1, 0);
	NoiseAlert(0, 18);
	Ceiling_RaiseByValue(21, 9999, 42);
	Ceiling_RaiseByValue(13, 16, 160);
	Ceiling_lowerByValue(25, 8, 20);
	Delay(16);
	Ceiling_LowerByValue(21, 9999, 42);
	Line_SetBlocking(184, BLOCKF_MONSTERS, 0);
	Line_SetBlocking(184, BLOCKF_FLOATERS, 0);
}

//LADDER SCRIPTS
Script 200 (void)
{
	If((GetActorZ(0) >= 104.0 && GetActorZ(0) <= 288.0) || (GetActorZ(0) >= 352.0 && GetActorZ(0) <= 544.0))
	{
		ThrustThingZ(0, 5, 0, 1);
	}
}
Script 201 (void)
{
	If(GetActorZ(0) >= 224.0 && GetActorZ(0) <=416.0)
	{
		ThrustThingZ(0, 5, 0, 1);
	}
}

//BOOK OF EARTH MONSTER SPAWN
Script 66 (void)
{
	If(CheckInventory("InventoryBookOfEarth") > 0 && IsTIDUsed(161))
	{
	Thing_Remove(161);
	SpawnSpot("Initiate", 160, 0, 64);
	Thing_Remove(193);
	}
}

//EARTH KEY MONSTER SPAWN
Script 53 (void)
{
	If(CheckInventory("EarthKey") > 0 && IsTIDUsed(130))
	{
	Thing_Remove(130);
	SpawnSpot("Conscript", 131, 0, 128);
	SpawnSpot("Cultist", 136, 0, 128);
	SpawnSpot("IronMaiden", 132, 600, 32);
	SpawnSpot("ForgeElemental", 133, 600, 160);
	SetActorFlag(600, "AMBUSH", 1);
	SpawnSpot("SniperCultist", 135, 0, 160);
	SpawnSpot("Initiate", 134, 0, 160);
	}
}

//EARTH TABLETS
Script 12 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0 && IsTIDUsed(65))
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  SpawnSpot("ExplosionMagicGreen", 66, 0, 0);
	  Delay(1);
	  Thing_Remove(65);
	  SpawnSpot("HealthGreenCrystalCouple", 66, 0, 0);
  }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 28 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0 && GetActorZ(0) > 93.0)
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  Thing_Move(0, 67, 1);
	  Delay(4);
	  SpawnSpot("ExplosionMagicGreen", 0, 0, 0);
  }
  else
  If (GetActorZ(0) > 93.0)
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 21 (void)
{
	PlaySound(0, "Magic/Earth1");
	Delay(24);
	Thing_Move(0, 68, 1);
	Delay(4);
	SpawnSpot("ExplosionMagicGreen", 0, 0, 0);
}

Script 41 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0 && GetSectorCeilingZ(115, 0, 0) < 289.0)
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  Ceiling_RaiseByValue(115, 16, 144);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 46 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0 && GetSectorCeilingZ(122, 0, 0) < 433.0)
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  Ceiling_RaiseByValue(122, 16, 144);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 49 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0 && IsTIDUsed(123))
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  Thing_Remove(123);
	  SpawnSpot("ExplosionMagicGreen", 124, 0, 0);
	  SpawnSpotForced("NatureFlowerEarthrose", 124, 0, 0);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 50 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0)
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  GiveInventory("PowerPotionofStoneskin", 1);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 52 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0)
  {
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  SpawnSpot("ExplosionMagicGreen", 125, 0, 0);
	  SpawnSpot("ProjectileCultistSpike", 125, 300, 0);
	  SetActorFlag(300, "NOGRAVITY", 1);
	  Delay(90);
	  Thing_Remove(300);
	  SpawnProjectile(125, "ProjectileCultistSpike", random(6,24), 255, 0, 0, 0);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

Script 72 (void)
{
  If (CheckInventory("InventoryBookOfEarth") > 0)
  {
	  //SetLineSpecial(189, 0, 0, 0, 0, 0, 0);
	  PlaySound(0, "Magic/Earth1");
	  Delay(24);
	  SpawnSpot("CritterPraak", 188, 0, 160);
	  SpawnSpot("TeleportFog", 188, 0, 0);
	  Delay(105);
 }
  else
  If (CheckInventory("InventoryBookOfEarth") == 0 )
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"(This tablet seems to be instilled with an Earth Magic spell. You don't know how to read it, though.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
  }
}

//IRON MAIDEN MOVE
Script 9 (void)
{
	SetActorProperty(29, APROP_Speed, 17.0);
}

//CAMERA MEETING
Script 33 (void)
{
	If(IsTIDUsed(85))
	{
		Thing_Remove(85);
        Thing_Activate(86);
		Thing_Remove(181);
		Thing_Activate(87);
		Delay(1);
		ChangeCamera(83, 1, 10);
		Thing_SetGoal(86, 88, 0, 0);
		Delay(60);
		SetActorAngle(86, 0.12);
		SetActorAngle(87, 0.65);
		Delay(175);
		SetActorAngle(87, 0.75);
		Thing_SetGoal(86, 89, 0, 0);
		Delay(35);
		Thing_SetGoal(86, 90, 0, 0);
		Delay(70);
		SetActorAngle(86, 1.0);
		Delay(16);
		Generic_Door(91, 16, 0, 34, 0);
		Delay(50);
		Thing_SetGoal(86, 93, 0, 0);
	}
	else
	ChangeCamera(83, 1, 10);
}

//LIFTS & DOORS

Script 70 (void)
{
	Floor_LowerByValue(183, 8, 72);
}

Script 23 (void)
{
	If(GetSectorFloorZ(70, 0, 0) > 169.0)
	Floor_LowerByValue(70, 8, 112);
}

Script 24 (void)
{
	If(IsTIDUsed(85))
	{
	Thing_Remove(85);
	Thing_Activate(86);
	Thing_Remove(181);
	Thing_Activate(87);
	Delay(1);
	Floor_LowerByValue(79, 8, 112);
	Thing_Remove(85);
	Thing_SetGoal(86, 88, 0, 0);
	Delay(30);
	SetActorAngle(94, 0.62);
	Delay(30);
	SetActorAngle(86, 0.12);
	SetActorAngle(87, 0.65);
	Delay(70);
	Thing_SetGoal(94, 95, 0, 0);
	Delay(105);
	SetActorAngle(87, 0.75);
	Thing_SetGoal(86, 89, 0, 0);
	Delay(35);
	Thing_SetGoal(86, 90, 0, 0);
	Delay(70);
	SetActorAngle(86, 1.0);
	Delay(16);
	Generic_Door(91, 16, 0, 34, 0);
	Delay(50);
	Thing_SetGoal(86, 93, 0, 0);
	Thing_SetGoal(94, 95, 0, 0);
	Delay(70);
	SetActorAngle(87, 0.62);
	Delay(35);
	SetActorAngle(94, 0.62);
	Delay(35);
	SetActorAngle(94, 0.37);
	Delay(70);
	SetActorAngle(94, 0.5);
	Delay(35);
	SetActorAngle(94, 0.62);
	Delay(35);
	SetActorAngle(94, 0.25);
	}
	else
	Thing_Activate(86);
	Thing_Activate(87);
	Delay(1);
	Floor_LowerByValue(79, 8, 112);
	Delay(30);
	SetActorAngle(94, 0.62);
	Delay(105);
	Thing_SetGoal(94, 95, 0, 0);
	Delay(70);
	SetActorAngle(87, 0.62);
	Delay(35);
	SetActorAngle(94, 0.62);
	Delay(35);
	SetActorAngle(94, 0.37);
	Delay(70);
	SetActorAngle(94, 0.5);
	Delay(35);
	SetActorAngle(94, 0.62);
	Delay(35);
	SetActorAngle(94, 0.25);
}

Script 11 (void)
{
	Ceiling_RaiseByValue(61, 16, 56);
}

Script 8 (void)
{
	Generic_Door(23, 16, 0, 34, 0);
}

Script 42 (void)
{
	SetLineSpecial(192, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(120, 8, 48);
	Thing_Remove(199);
}

Script 54 (void)
{
	If(GetSectorFloorZ(137, 0, 0) > 225.0 && CheckInventory("VineKey") > 0)
	Floor_LowerByValue(137, 8, 112);
	else
	If(CheckInventory("VineKey") == 0)
	Print(s:"This switch requires a Vine key to open the door.");
}

Script 57 (void)
{
	If(CheckInventory("EarthKey") > 0)
	Generic_Door(149, 16, 0, 34, 0);
	else
	{
	Print(s:"This door requires an Earth key to open.");
	}
}

Script 59 (void)
{
	If(CheckInventory("ScriptHasStartedPortalEvent") < 1)
	Generic_Door(138, 32, 0, 8, 0);
	else
	Print(s:"The portal's activation seems to be funneling away the door's power.");
}

Script 60 (void)
{
	If(CheckInventory ("ScriptPortalEvent") < 1 && GetSectorFloorZ(137, 0, 0) > 225.0 && CheckInventory("VineKey") > 0)
	Floor_LowerByValue(137, 8, 112);
	else
	If(CheckInventory("VineKey") == 0)
	Print(s:"This switch requires a Vine key to open the door.");
	else
	If(CheckInventory ("ScriptPortalEvent") > 0)
	Print(s:"The portal's activation seems to be funneling away the door's power.");
}

Script 63 (void)
{
	Generic_Door(138, 32, 0, 8, 0);
}

//POWER DOORS
Script 34 (void)
{
	If(CheckInventory("ScriptHasRestoredPowerB") > 0)
	Generic_Door(96, 16, 0, 34, 0);
	else
	{
	Print(s:"Looks like the auxiliary power is out.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 35 (void)
{
	If(CheckInventory("ScriptHasRestoredPowerB") > 0)
	Generic_Door(97, 16, 0, 34, 0);
	else
	{
	Print(s:"Looks like the auxiliary power is out.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 36 (void)
{
	If(CheckInventory("ScriptHasRestoredPowerB") > 0)
	Generic_Door(98, 16, 0, 34, 0);
	else
	{
	Print(s:"Looks like the auxiliary power is out.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 37 (void)
{
	If(CheckInventory("ScriptHasRestoredPowerB") > 0)
	Generic_Door(99, 16, 0, 34, 0);
	else
	{
	Print(s:"Looks like the auxiliary power is out.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//SWINGING DOORS
Script 1001 (void) //+181
{
If (GetActorZ(0) < 192.0)
 {
  Polyobj_DoorSwing(1,-12,64,175);
  Polyobj_DoorSwing(181,12,64,175);
 }
}

Script 1002 (void) //+182
{
If (GetActorZ(0) < 29.0 && CheckInventory("VineKey") > 0)
 {
  Polyobj_DoorSwing(2,-12,64,175);
  Polyobj_DoorSwing(182,12,64,175);
 }
 else
 {
 Print(s:"This door requires a Vine key to open.");
 PlaySound(0, "Interaction/Locked", CHAN_AUTO);
 }
}

Script 90 (void)
{
If (GetActorZ(0) < 238.0)
Polyobj_DoorSwing(90,-16,64,105);
}

Script 179 (void)
{
If (GetActorZ(0) < 134.0 && IsTIDUsed(186))
{
Polyobj_DoorSwing(179,16,64,315);
}
else
If (GetActorZ(0) < 134.0 && IsTIDUsed(186)==0)
{
Polyobj_DoorSwing(179,16,64,105);
}

If(IsTIDUsed(186) && GameSkill() >= SKILL_VERY_HARD)
{
	Thing_Remove(186);
	SpawnSpot("IDReaverRecruitable", 185, 0, 64);
	Hudmessage(s:"Reaver:    Don't shoot! Friendly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 3.0, 0.2, 0.5);
	PlaySound(185, "Reaver/Huh", CHAN_AUTO);
	Delay(35*4);
	Hudmessage(s:"Those darned cultists have boxed me in.  Let's take 'em on together!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 4.0, 0.2, 0.5);
	If(CheckProximity(0, "IDBearWarrior", 560.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 560.0, 1))
    {
	Delay(5*35);
	Hudmessage(s:"Bear Warrior:    Tagging along would be more helpful than hiding in a closet indeed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 5.0, 0.2, 0.5);
    }
}
}

Script 180 (void)
{
If (GetActorZ(0) < 192.0)
Polyobj_DoorSwing(180,16,64,105);
}

Script 258 (void)
{
If (GetActorZ(0) < 192.0 && GetActorZ(0) > 103.0)
Polyobj_DoorSwing(258,16,64,105);
}

Script 272 (void)
{
If (GetActorZ(0) < 134.0)
Polyobj_DoorSwing(272,16,64,105);
}

Script 273 (void)
{
If (GetActorZ(0) < 82.0)
Polyobj_DoorSwing(273,16,64,105);
}

Script 359 (void)
{
If (GetActorZ(0) < 192.0 && CheckInventory("StoneKey") > 0)
Polyobj_DoorSwing(359,16,64,105);
else
If (GetActorZ(0) < 192.0 && CheckInventory("StoneKey") == 0)
{
Print(s:"This door requires a Stone key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

//FRIENDLIES DIALOGUE
Script 74 (void)
{
	SetLineSpecial(194, 0, 0, 0, 0, 0, 0);
	If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Now THAT was a blast! Can't believe we're still in one piece."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 4.0, 0.2, 0.5);
	  If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
	  {
	  Delay(5*35);
	  Hudmessage(s:"Reaver:    The portal is active now, let's hurry up!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 3.0, 0.2, 0.5);
	  }
	}
	else
	If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
	  {
	  Hudmessage(s:"Reaver:    We... survived? ...well the portal's up, let's get out of here while we can!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.90, 4.0, 0.2, 0.5);
	  }

}


//PRINTS & HUDMESSAGES
Script 10 (void)
{
  If (GetActorZ(0) < 209.0)
  {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I realised I've had this key on me since yesterday. I'm running late for the council, can you be kind "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"and return it to the portal cave for me? If anyone scolds you, tell her it's my fault and I apologise."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
  }
}

Script 15 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Here are some of the new green crystal plants we have grown. Not only will they heal and soothe any"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"wound, but even extend the patient's vitality, should they not find themselves in a grave condition."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"Bear in mind to not remove the plant from its soil,  or the crystal will harden and become inedible.     "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"We will send in more crystals as we grow them, the spell we use is yet to be perfected. -Mother Bendi "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 20 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A slight pellicle of dust covers the pages of this journal.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"[...]days pass on, and so does my progress advance with each and every hour. I've been able to shrink "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"down a fairly large stump this time... makes writing this so much more comfortable too! This spell will "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
    Hudmessage(s:"become a true marvel. And now with the bulk of the Division departing, I will have more time to pursue"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"its perfection...   I'm planning on shrinking some live plants next. Or perhaps some seeds, and see if I   "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"can grown my own food here. Who would have ever imagined that one could shrink her entire library and"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"pantry and be able to carry it all into a mere clay tablet? Still, it does toll on my mana quite a bit...  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 22 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"South - The Great Stump"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 10.0);
	Hudmessage(s:"East - Reaver Headquarters"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
	Hudmessage(s:"West - Grove Portal Cave"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 10.0);
}

Script 25 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You look over what seems to be a report written in bloody demonic runes.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"When I was told I would be expected by a welcoming party here, I assumed they would be ALIVE. How hard"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"can it be to overcome a few measly Orcs? Gah, at least the fumes from those incompetents' bodies should  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"help silence these maddening crickets outside... I must get to work, cremating the dead was not my duty.  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"I have already discovered a message left behind by an I.D. survivor.   I do believe she is still alive and  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"bent on slowing down our advance at any cost. I must inform mistress Nithriel as soon as I am recalled."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"This Reaver also mentions crystals in her note, so the I.D. must be somewhat aware of our purpose here."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"I will commence my research on the Crystal Heart right now,  but it will be harder without assistance.   "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"The plaza seems devoid of any life, yet I feel unsafe - rumor has it the Halfblood has vanished from the"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"battlefield. Nobody could find her corpse...But I worry too much, it's not like she would just barge in h-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 26 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You notice an old note dropped by Tiati. It seems like nearby the cultist has found it.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"I've been doing my best to hamper this sudden invasion from the shadows. The ventilation shafts helped"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"me move around unseen.    I have overheard the cultists getting orders to blow up and cave in the exits."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
    Hudmessage(s:"They're locking down the entire stronghold.  Bastards!...   Nonetheless, I have managed to get inside the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"Crystal Shop and move all the merchandise upstairs. I must delay them from getting their hands on our"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"tech.    I even trashed a few Power Cores,  but they heard the noise so I had to break the ladder and go."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"Lucky me, I found a warding scroll in the shopkeeper's room. Should my sisters need to break the ward[...]"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 27 (void)
{
  If (GetActorZ(0) < 93.0)
  {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A series of magic runes are carved into the tablet. The lower part is not yet complete.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
  }
}

Script 29 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The Forbidden Caves - Chapter 2: The Crystal Heart"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"[...]  There is a proper reason why only the strongest of the Iron Division are allowed access into the    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.68, 90.0);
	Hudmessage(s:"Inner Crystal Sanctuary. The Heart can alter the very flow of Hedon, and even what lies above it, in  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
    Hudmessage(s:"the overworld, where crystals don't grow. Its powers are vast, and rightly difficult to comprehend -  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"for it is not one's knowledge that can unlock it, but their wisdom.  If the Heart were to be grasped by  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"malicious hands, it could be used to bring unparalleled suffering, perhaps even the end of the world as"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"we know it.  It is thus our duty to protect it at any cost, for without it, we would crumble into pieces. "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"The Lancers are the prime guardians of the Heart, and the foremost custodians of the crystal technology."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"Although Earth Mothers and Witches have both contested the right to become keepers of the Heart, it was"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"the Elemental Gods themselves that refused them and their unbalanced nature.  The Mothers wish to use "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"crystals to further their own magical powers and cure the world of all its ailments,  while Witches seek to "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"uncover new limits and shape the future.  But good today may well be evil tomorrow.   Truth is the judge. "; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"History of the Iron Division - Chapter 4: The Castes"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.64, 90.0);
	Hudmessage(s:"[...]   and upon settling within the caves of Hedon, the greenskins were divided into six castes, each"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"responsible with a part of the integrity of their no longer nomadic tribe.    They would all use their "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"gifts in various ways,  with the major purpose of erecting Valc from cold stone and turning it into a"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"grand city. No longer would they search their place, for the crystal caverns gave them everything."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"The Lancers became the just keepers of the Crystal Heart."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"The Earth Mothers harnessed the old ways of magic, and kept the Orc traditions alive."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"The Bear Warriors held the Division's might high."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
    Hudmessage(s:"The Witches used their knowledge to push new boundaries."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"The Reavers became feared shadow guardians."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"And the Fixers would make the weakest of metal strong."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 31 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 75.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Now that these hanging cyan crystals have been destroyed, the nature's power will begin to dwindle... "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 75.0);
	Hudmessage(s:"At least if my conclusions based on what I've researched here are correct. If so, expect the portal's  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 75.0);
	Hudmessage(s:"power source to help expand the corruption with one less obstacle in its wake. However, we'll have to  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 75.0);
	Hudmessage(s:"deal with the Halfblood first... I understand that the cultists are in position right before the massive  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 75.0);
	Hudmessage(s:"Orc tree... as for the Goblins, I will send a handful of Crawlers after them, right after I feed them the "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 75.0);
	Hudmessage(s:"fools that failed to slay these pesky green runts. Blowing the way to the northern wing did nothing but "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 75.0);
	Hudmessage(s:"delay us. They SHOULD have imagined you can't trap them in a place sprawling with ventilation shafts. "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 75.0);
}

Script 38 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The Demonblood lives!   And she is here. She's slaughtered our entire force in the Plaza, and knowing   "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"how competent our worshipers have proven themselves to be so far, I am certain that she is making  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"her way towards our...  goal.  Do NOT let her touch the portal here.  Reinforce the main gates, have   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"a barricade built, send the strongest of your Iron Maidens to hold that line...   should they fall, the  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"Halfblood will meet her end before she reaches the portal. I've prepared an ambush. -Master Thadus"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 39 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Of Metal & Cave Rock - A study by Earth Mother Bendi"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 15.0);
	Hudmessage(s:"(The parchment seems to detail an alchemical concoction meant to prevent metal from rusting.)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
}

Script 40 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 65.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Grand Earth Mother Breaza's Journal - Rotation 509, Day 184"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 65.0);
	Hudmessage(s:"Today, I have witnessed the first working crystal grown by ancestral magic. The seed is finally able   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 65.0);
	Hudmessage(s:"to grow a fully edible vegetal crystal instilled with healing powers. The testing has been completed   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 65.0);
	Hudmessage(s:"with favorable results...   as long as we don't remove the stem from its soil.   Luckily for us, we still    "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 65.0);
	Hudmessage(s:"have eighteen days until the campaign begins, and I have made arrangements for a Reaver team to go"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 65.0);
	Hudmessage(s:"forth and spread the crystal plant seed ahead of our future path. With a bit of luck, we will be able  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
	Hudmessage(s:"to reap the healing pods just as we are making our advance towards the accursed, fiery pits of Hell...  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 43 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"We've dealt with the last intruder - she's managed to get all the way up to the second floor, but she"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"couldn't get past the root gate. Still, neither can we... we've tried everything, but the roots simply "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"regenerate faster than we can damage them! We know they're using the tablets to recite a spell that"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
    Hudmessage(s:"grants them passage, but that bitch guarding the library must have hidden the tablet before we got "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"here. Whatever lies on the floor above, it must be valuable to them! Perhaps it's the very key to the "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"Portal controls! Nobody else has found it, right? We NEED to find that darned tablet. And I need aid."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"The greenskin couldn't have had much time to hide the tablet after hearing us warp and commence the"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"attack, so I assume it must be on this floor somewhere. I've had the cultists search the place, but to  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"no avail.   I need you to send more thralls here so we can cover more ground. Imagine how pleased will "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"mistress Nithriel be to hear we have gotten that portal running! Trust me, that tablet MUST be here..."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"We've dealt with the last intruder - she's managed to get all the way up to the second floor, but she"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"couldn't get past the root gate. Still, neither can we... we've tried everything, but the roots simply "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
	Hudmessage(s:"regenerate faster than we can damage them! We know they're using the tablets to recite a spell that"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
    Hudmessage(s:"grants them passage, but that bitch guarding the library must have \c[Gold]hidden the tablet\c- before we got "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"here. Whatever lies on the floor above, it must be valuable to them! Perhaps it's the very key to the "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"Portal controls! Nobody else has found it, right? We NEED to find that darned tablet. And I need aid."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
	Hudmessage(s:"The greenskin couldn't have had much time to hide the tablet after hearing us warp and commence the"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 90.0);
	Hudmessage(s:"attack, so I assume it must be on this floor somewhere. I've had the cultists search the place, but to  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"no avail.   I need you to send more thralls here so we can cover more ground. Imagine how pleased will "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 90.0);
	Hudmessage(s:"mistress Nithriel be to hear we have gotten that portal running! Trust me, that tablet MUST be here..."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
    }
}

Script 44 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(Several tablets have been piled up on the table. It seems the cultists haven't found any use for them.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 45 (void)
{
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A number of carvings have been made in the soft clay, but the inscription seems far from finished.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 47 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Shaping the Caves - Chapter 2: Magical Quakes"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 10.0);
	Hudmessage(s:"(The tablet proceeds to describe a spell, but does not contain any useful incantation.)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 10.0);
}

Script 51 (void) //unused
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I'm afraid I haven't found you home in time, so I will leave you this note. I've put"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 10.0);
	Hudmessage(s:"your belongings in the library safe. Just look for a purple book, and pull it. -Anda"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 10.0);
}

Script 55 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Reaver Headquarters Auxilliary Generator"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 58 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Return Vine Keys after use"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 65 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The last page of this otherwise uninteresting log book has been written over by someone else.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 65.0);
	Hudmessage(s:"The cultists...  they somehow corrupted the portal...  this black slime, what the hell is this? Back at the  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 65.0);
	Hudmessage(s:"Forge, we stepped in right after Dura and the others, but then this flash of light... and something felt so"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 65.0);
	Hudmessage(s:"off with the portal, and next we woke up in the Grove. Arva and what's left of me. The gateway closed up"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 65.0);
	Hudmessage(s:"suddenly and sliced my leg clean. I'm done for... Arva went out to search for the key to turn the damned"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 65.0);
	Hudmessage(s:"thing back on, but she's been away for too long now...   I can only pray Dura and what's left of the squad "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 65.0);
	Hudmessage(s:"had better luck than us... Come on, you bastards, come get me so I can send you back to the pits of hell!"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 65.0);
}

Script 68 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Make sure to turn the auxiliary power on before you shut down the generator for any "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 30.0);
	Hudmessage(s:"maintenance work. I don't wanna hear anymore complaints from the archive curators"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 30.0);
	Hudmessage(s:"getting stuck in their office because the doors stop working. Just talk to the Earth    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 30.0);
	Hudmessage(s:"Mothers to let you in the portal cave until we get one of our own Vine keys.    - Boss     "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 30.0);
}

Script 73 (void)
{
  If (Gameskill() > SKILL_VERY_HARD)
  {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You browse through a fancy book recording various magical rituals)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 30.0);
	Hudmessage(s:"[...]  Rot. 509  Day 171  -  We have perfected the enchantment design for the Great Axes. "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 30.0);
	Hudmessage(s:"Aside from significantly increasing the wielder's nature resistance, the new thorn aura   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 30.0);
	Hudmessage(s:"will reflect all the pain and damage back to the aggressor. - Grand Earth Mother Breaza"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 30.0);
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

//MUSIC
Script 4 (void)
{
	Delay(35);
	SetMusic("HTrack08");
}
//MUSIC FADE
Script 48 (void)
{
	If(CheckInventory("EarthKey") > 0)
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


/*
Script 99 (void) //Portal Battle - Valor of Knife Deep Conversation ver.
{
	If(CheckInventory("ScriptPortalEvent") > 0 && IsTIDUsed(152))
	{
		Thing_Remove(152);
		GiveInventory("ScriptHasStartedPortalEvent", 1);
		Floor_RaiseByValue(137, 16, 112);
		Radius_Quake(3, 175, 0, 1, 0);
		Delay(210);

		Thing_Destroy(153, 0, 0);
		SpawnSpot("CryRing", 143, 503, 0);
		SpawnSpot("CaveCrystalYellowA", 143, 500, 0);
		SetActorProperty(503, APROP_ScaleX, 1.5);
		SetActorProperty(503, APROP_ScaleY, 1.5);
		SetActorProperty(500, APROP_ScaleX, 0.55);
		SetActorProperty(500, APROP_ScaleY, 0.45);

		Delay(2*35);
		SetMusic("HTrack09");

		Delay(1*35);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);

		Delay(6*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(2*35);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65008, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(4*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65001, 0, 505);
		Thing_Spawn(173, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65007, 0, 505);
		Thing_Spawn(175, 65007, 0, 505);
		Thing_Spawn(176, 65007, 0, 505);
		Thing_Spawn(177, 65006, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(3*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(3*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

        Delay(5*35);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65008, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65006, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65005, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65004, 0, 505);
		Thing_Spawn(171, 65005, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65004, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65001, 0, 505);
		Thing_Spawn(172, 65001, 0, 505);
		Thing_Spawn(173, 65001, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35); //1 10
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65005, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

        Delay(2*35);
		Radius_Quake(5, 280, 0, 1, 0);

        Delay(8*35);
		Thing_Destroy(154, 0, 0);
		SpawnSpot("CryRing", 157, 503, 0);
		SpawnSpot("CaveCrystalYellowC", 157, 501, 0);
		SetActorProperty(503, APROP_ScaleX, 1.5);
		SetActorProperty(503, APROP_ScaleY, 1.5);
		SetActorProperty(501, APROP_ScaleX, 0.55);
		SetActorProperty(501, APROP_ScaleY, 0.45);

		Delay(10*35);
		Thing_Spawn(168, 65004, 0, 505);
		Thing_Spawn(169, 65004, 0, 505);
		Thing_Spawn(170, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(171, 65004, 0, 505);
		Thing_Spawn(172, 65004, 0, 505);
		Thing_Spawn(173, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(174, 65004, 0, 505);
		Thing_Spawn(175, 65004, 0, 505);
		Thing_Spawn(176, 65004, 0, 505);
		Thing_Spawn(177, 65004, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35); //2
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);

		Delay(5*35);
		Thing_Spawn(168, 65000, 0, 505);
		Thing_Spawn(169, 65000, 0, 505);
		Thing_Spawn(170, 65000, 0, 505);
		Thing_Spawn(171, 65000, 0, 505);
		Thing_Spawn(172, 65000, 0, 505);
		Thing_Spawn(173, 65000, 0, 505);
		Thing_Spawn(174, 65000, 0, 505);
		Thing_Spawn(175, 65000, 0, 505);
		Thing_Spawn(176, 65000, 0, 505);
		Thing_Spawn(177, 65000, 0, 505);
		NoiseAlert(0, 0);


		Delay(2*35);
		Radius_Quake(10, 440, 0, 1, 0);

		Delay(2*35);
		FadeTo(230, 230, 200, 1.0, 5.0);
		Delay(5*35);
		FadeTo(230, 230, 200, 0.0, 1.0);
		Thing_Destroy(155, 0, 0);
		SpawnSpot("CaveCrystalYellowB", 156, 502, 0);
		Thing_Remove(180);
		SetActorProperty(502, APROP_ScaleX, 0.55);
		SetActorProperty(502, APROP_ScaleY, 0.45);
		Delay(8);
		SetLineTexture(178, SIDE_FRONT, TEXTURE_MIDDLE, "Portal01");
		SetLineTexture(178, SIDE_BACK, TEXTURE_MIDDLE, "Portal01");
		SetLineSpecial(178, ACS_EXECUTE, 67);
		SetLineSpecial(179, Autosave);
		TakeInventory("ScriptPortalEvent", 1);
		TakeInventory("ScriptHasStartedPortalEvent", 1);
		PlaySound(143, "Weapons/ExplosionLarge");
		PlaySound(156, "Weapons/ExplosionLarge");
		PlaySound(157, "Weapons/ExplosionLarge");
		SpawnSpot("CryRing", 143, 504, 0);
		SpawnSpot("CryRing", 156, 504, 0);
		SpawnSpot("CryRing", 157, 504, 0);
		Thing_Destroy(505, 1, 0);
		SetActorProperty(504, APROP_ScaleX, 10.0);
		SetActorProperty(504, APROP_ScaleY, 10.0);
		Delay(35);
		SetLineBlocking(178, BLOCK_EVERYTHING);


		Delay(14*35);
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
}
*/

//TIPS
script 1000 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Press \c[White]F1\c- at any time to view the quick reference screen."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 30.0);
	Hudmessage(s:"All messages can be reviewed in the console \c[White](default: Tilde)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 30.0);
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
	SetLineSpecial(206, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: You won't get far without a map \c[White](default: TAB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 16.5);
	Hudmessage(s:"It has an overlay and normal mode that can be configured from: Options - Automap Options"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 16.5);
	Hudmessage(s:"While in normal mode, you can zoom in/out \c[White](default: MWheel)\c- and mark your current position with \c[White](default: M)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 16.5);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
}
script 1004 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(CheckInventory("InventoryMithrilGear") > 0)
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Quest Items are not required to be manually selected."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 6.0);
	Hudmessage(s:"They are used automatically with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 6.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_ORANGE, 1.5, 0.18, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_ORANGE, 1.5, 0.18, 0.1);
	}
}
script 1003 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Use consumables with \c[White](default: F)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 35.0);
	Hudmessage(s:"Consumables and Quest Items are stored in your inventory. Scroll through it with \c[White](default: Z/X)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 35.0);
	Hudmessage(s:"You can inspect the currently selected item for a brief description with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 35.0);
	Hudmessage(s:"You can also set hotkeys for these items, or see the default ones in the help screen \c[White](default: F1)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_ORANGE, 1.5, 0.18, 35.0);
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
	SetLineSpecial(205, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: Crystal Amulets provide you with a set amount of armor."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 9.0);
	Hudmessage(s:"Small Power Shards can provide a further bonus to your armor reserve."; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 9.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1007 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	  //SetLineSpecial(106, 0, 0, 0, 0, 0, 0);
	  SetFont("SMALLFONT");
	  Hudmessage(s:"Tip: Every weapon has an alternative attack mode \c[White](default: RMB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 15.0);
      Hudmessage(s:"You can perform quick kick attacks with \c[White](default: Q)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 15.0);
	  Hudmessage(s:"Kicks are stronger when combined with jumping and crouching."; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 15.0);
	  Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("Axe") > 0)
	{
		Hudmessage(s:"Tip: You can only carry one Axe without a Bag of Holding."; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 5.0);
	}
}
script 1008 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: \c[White]Keys\c- show at the bottom right of the HUD."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 8.0);
	Hudmessage(s:"Locked doors have a corresponding icon that can be seen on the map \c[White](default: TAB)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 8.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.16, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}

script 1009 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(GetActorProperty(203, APROP_Health) < 1)
	{
	SetLineSpecial(204, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Read scrolls, signs, tablets and books with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 8.0);
    //Hudmessage(s:"You can increase the size of the text in:   Options - HUD options - Scaling Options - Messages"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 12.0);
	//Hudmessage(s:"If your screen resolution is 1920x1080 set the slider to 2; If it's 4K, set it to 3."; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_RED, 1.5, 0.16, 12.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_RED, 1.5, 0.16, 1.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_RED, 1.5, 0.16, 1.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_RED, 1.5, 0.16, 1.0);
    }
}

script 1010 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetLineSpecial(213, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: You can avoid alerting groups of enemies by attacking with your fists \c[White](default: 1)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 7.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
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
	If(CheckInventory("InventoryVialOfhealing") > 0 || CheckInventory("InventoryPotionOfStoneskin") > 0 )
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Scroll through your inventory with \c[White](default: Z/X)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 12.0);
	Hudmessage(s:"Inspect your currently selected item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 12.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Inspect your currently selected item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 5.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.12, 0.1);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
}
script 1013 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: You can toggle sprinting with \c[White](default: Caps Lock)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 3.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1014 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Use the door with the Fist Symbol to end the level."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 5.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1015 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	{
	SetLineSpecial(207, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: \c[White]Consumables\c- can be used anytime with \c[White](default: F)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 8.0);
    Hudmessage(s:"They can also be bound to hotkeys in the options."; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 8.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_GOLD, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
    }
}
script 1016 (void)
{
	If(GetCVar("sv_Tips") == 0)// || GameSkill() == SKILL_VERY_HARD)
	Terminate;
	else
	If(CheckInventory("InventoryPickaxe") > 0)
	{
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Quest Items are not required to be manually selected."; HUDMSG_PLAIN | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.12, 6.0);
	Hudmessage(s:"They are used automatically with \c[White](default: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 200, CR_GOLD, 1.5, 0.14, 6.0);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 300, CR_ORANGE, 1.5, 0.18, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 400, CR_ORANGE, 1.5, 0.18, 0.1);
	}
}

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
