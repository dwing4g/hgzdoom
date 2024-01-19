#include "zcommon.acs"

//LEVEL START
Script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  If(ThingCountName("IDBearWarrior", 0) > 0)
  {
	  Floor_RaiseByValue(290, 99999, 88);
	  TeleportOther(291, 292, 0);
	  SpawnSpotForced("ForgeLightSmall", 292, 0, 0);
	  Hudmessage(s:"Bear Warrior:    Sarge? You awake? Thought you were a goner..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
     //PlaySound(690, "BearWarrior/Ha", CHAN_AUTO);
  }
  else
  If(ThingCountName("IDReaver", 0) > 0)
  {
	  Floor_RaiseByValue(290, 99999, 88);
	  TeleportOther(291, 292, 0);
	  SpawnSpotForced("ForgeLightSmall", 292, 0, 0);
	  Hudmessage(s:"Reaver:    Sergeant? Are you finally awake? Thought I'd lost you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
      //PlaySound(690, "Reaver/Huh", CHAN_AUTO);
  }
  else
  If(ThingCountName("IDFixer", 0) > 0 || ThingCountName("IDWitch", 0) > 0 || ThingCountName("IDLancer", 0) > 0 || ThingCountName("IDEarthMother", 0) > 0)
  {
	  Floor_RaiseByValue(290, 99999, 88);
	  TeleportOther(291, 292, 0);
	  SpawnSpotForced("ForgeLightSmall", 292, 0, 0);
  }

  PlaySound(0, "Character/ZanAwake", CHAN_AUTO);

  FadeTo(0, 0, 0, 1.0, 0.0);
  Delay(5);
  FadeTo(0, 0, 0, 0.0, 5.0);
  Delay(175);
  CancelFade();

  SetActorFlag(11, "NOTONAUTOMAP", 1);
  SetActorFlag(11, "COUNTITEM", 0);

  SetActorFlag(235, "MOVEWITHSECTOR", 1);
  SetActorFlag(236, "MOVEWITHSECTOR", 1);
  SetActorFlag(247, "MOVEWITHSECTOR", 1);
  SetActorFlag(235, "RELATIVETOFLOOR", 1);
  SetActorFlag(236, "RELATIVETOFLOOR", 1);
  SetActorFlag(247, "RELATIVETOFLOOR", 1);
  SetActorFlag(235, "FIXMAPTHINGPOS", 0);
  SetActorFlag(236, "FIXMAPTHINGPOS", 0);
  SetActorFlag(247, "FIXMAPTHINGPOS", 0);
  SetActorFlag(235, "NOBLOCKMAP", 0);
  SetActorFlag(236, "NOBLOCKMAP", 0);
  SetActorFlag(247, "NOBLOCKMAP", 0);
  SetActorFlag(235, "NOGRAVITY", 0);
  SetActorFlag(236, "NOGRAVITY", 0);
  SetActorFlag(247, "NOGRAVITY", 0);

  SetActorFlag(99, "FLOATBOB", 1);
  SetActorFlag(99, "SOLID", 0);

  SetActorFlag(293, "RELATIVETOFLOOR", 1);


  Ceiling_Waggle(90, 16, 16, 0, 0);

  If(ThingCountName("IDReaver", 0) > 0)
  {
	  Delay(5*35);
	  Hudmessage(s:"Reaver:    The portal clearly malfunctioned... I think we ended up on top of Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKRED, 1.5, 0.86, 6.0, 0.2, 0.5);
  }
  else
  If(ThingCountName("IDBearWarrior", 0) > 0)
  {
	  Delay(5*35);
	  Hudmessage(s:"Bear Warrior:    The portal just spat us out here... I think we ended up on top of Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
  }
}

//LEVEL END
Script 60 (void)
{
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(35);

	ACS_NamedExecuteWithResult("FriendlyCounter");

	Exit_Normal(0);
	//FadeTo(0, 0, 0, 0.0, 0.0);
}
//MUSIC START CHECk
Script 7 ENTER
{
	IF(GetActorZ(0) > 600.0 && CheckInventory("ScriptHasStartedLift") > 0)
	{
		SetMusic("HTrack12");
		Terminate;
	}
	Delay(16);
	Restart;
}

//LIGHTS ON
Script 9 (void)
{
	Delay(15);
	Floor_RaiseByValue(57, 4, 24);
	Tagwait(57);
	Delay(35);
	SpawnSpot("ForgeLightMedium", 30, 0, 0);
	SpawnSpot("ForgeLightSmall", 54, 0, 0);
	PlaySound(30, "Interaction/FireBlow");
	PlaySound(54, "Interaction/FireBlow");
	ChangeCeiling(42, "Iron_05");
	Light_Fade(40, 140, 1);
	Light_Fade(41, 128, 1);

	SetLineTexture(59, SIDE_FRONT, TEXTURE_BOTTOM, "Sw03_UP");
	Delay(35);
	Thing_Spawn(61, 65004, 64, 0);
	Delay(50);
	PlaySound(61, "Initiate/Active");
}

//BREAKABLE WALL
Script 15 (void)
{
	If(CheckInventory("InventoryShovel") > 0 && IsTIDUsed(84))
	{
		SetWeapon("Fists");
		Thing_Remove(84);
		PlaySound(0, "Interaction/Shovel", CHAN_AUTO);
		Radius_Quake2(0, 2, 24, 0, 64, 0);
		Ceiling_RaiseInstant(83, 0, 64);
		SpawnSpot("DustCloud", 294, 0, 0);
		SpawnSpot("NatureDirtPile", 85, 400, 0);
		SetActorProperty(400, APROP_ScaleX, 2.0);
		SetActorProperty(400, APROP_ScaleY, 2.0);
	}
	else
	If(CheckInventory("InventoryPickaxe") == 0 && IsTIDUsed(84))
	{
		Print(s:"This dirt looks like it could be tunneled through with the proper tool.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}

}

//MONSTER SPAWNS
Script 14 (void)
{
	Thing_Spawn(76, 65004, 0, 0);
	Thing_Spawn(78, 65001, 0, 0);
	SetLineSpecial(77, 0, 0, 0, 0, 0, 0);
}

Script 24 (void)
{
	Thing_Spawn(98, 65000, 64, 0);
	Thing_Spawn(100, 65000, 192, 0);
	Thing_Spawn(101, 65008, 192, 0);
	SetLineSpecial(102, 0, 0, 0, 0, 0, 0);
}

Script 32 (void)
{
	If(CheckInventory("ScriptHasActivatedCrystalWard") > 0)
	{
	Thing_Spawn(123, 65004, 192, 667);
	Thing_Spawn(301, 65009, 192, 668);
	SetLineSpecial(121, 0, 0, 0, 0, 0, 0);
	NoiseAlert(0, 0);
	Delay(1);
	Thing_Destroy(667, 1, 0);
	Thing_Destroy(668, 1, 0);
	}
	else
	{
	Thing_Spawn(123, 65004, 192, 0);
	Thing_Spawn(301, 65009, 192, 668);
	SetLineSpecial(121, 0, 0, 0, 0, 0, 0);
	NoiseAlert(0, 0);
	Delay(10*35);
	SetActorProperty(668, APROP_Speed, 17.0);
	}
}
Script 75 (void)
{
	SetActorProperty(668, APROP_Speed, 17.0);
}

Script 35 (void)
{
	Thing_Spawn(80, 65004, 64, 0);
	Thing_Spawn(182, 65008, 64, 0);
	SetLineSpecial(183, 0, 0, 0, 0, 0, 0);
	SetActorFlag(184, "AMBUSH", 0);
	Delay(16);
	NoiseAlert(0, 0);
}

Script 61 (void)
{
	If(CheckInventory("ScriptHasActivatedCrystalWard") > 0)
	{
		SetLineSpecial(269, 0, 0, 0, 0, 0, 0);
		Delay(16);
		Thing_Destroy(34);
		//PlaySound(34, "Magic/Spark", CHAN_AUTO, 1.0, 0, ATTN_NONE);
		Delay(70);
		Thing_Spawn(267, 65004, 192, 662);
		NoiseAlert(0, 0);
		Delay(4);
		Thing_Destroy(662, 1, 0);
		Delay(105);
		Thing_Destroy(286);

	}
}

Script 62 (void)
{
	If(GetActorZ(0) > 1940.0)
	{
	SetLineSpecial(270, 0, 0, 0, 0, 0, 0);
	Delay(140);
	Thing_Spawn(271, 65010, 64, 0);
	Delay(1);
	NoiseAlert(0, 0);
	}
}

Script 63 (void)
{
	If(GetActorZ(0) > 1940.0)
	{
	SetLineSpecial(272, 0, 0, 0, 0, 0, 0);
	Delay(16);
	Thing_Spawn(268, 65004, 64, 0);
	Delay(175);
	Thing_Spawn(268, 65004, 64, 0);
	}
}

Script 64 (void)
{
	SetLineSpecial(274, 0, 0, 0, 0, 0, 0);
	ThrustThingZ(273, 40, 0, 0);
	Delay(70);
	ThrustThingZ(273, 0, 0, 0);
	Thing_Activate(273);
}

Script 65 (void)
{
	SetLineSpecial(275, 0, 0, 0, 0, 0, 0);
	SpawnSpot("IronMaiden", 277, 0, 192);
	SpawnSpot("Cultist", 278, 0, 192);
	Delay(410);
	Floor_LowerByValue(209, 16, 168);
}

Script 68 (void)
{
	SpawnSpot("Initiate", 276, 0, 128);
}

Script 69 (void)
{
	If(CheckInventory("ScriptHasActivatedCrystalWard") > 0)
	{
	Delay(105);
	SetLineSpecial(288, 0, 0, 0, 0, 0, 0);
	Thing_Destroy(287);
    }
}
//MONSTER ALERT
Script 66 (void)
{
	Delay(70);
	NoiseAlert(0, 0);
	NoiseAlert(0, 279);
}

//AUTOMATIC DEFENCE
Script 41 (void)
{
	Ceiling_RaiseInstant(223, 0, 3001);
	Floor_RaiseInstant(223, 0, 3000);
	SpawnSpot("IDSentry", 172, 600, 64);
	Delay(16);
	Floor_RaiseByValue(173, 8, 120);
	TagWait(173);
	NoiseAlert(0, 600);
}

Script 42 (void)
{
	Ceiling_RaiseInstant(226, 0, 3001);
	Floor_RaiseInstant(226, 0, 3000);
	SpawnSpot("IDSentry", 227, 601, 64);
	Delay(16);
	Floor_RaiseByValue(224, 8, 120);
	TagWait(224);
	NoiseAlert(0, 601);
}

//WARD SAFETY AMBUSHES
Script 73 (void)
{
	Floor_RaiseByValue(180, 8, 280);
	Delay(16);
	Radius_Quake(1, 50, 0, 1, 0);
	Delay(35);
	Thing_Spawn(298, 65004, 0, 0);
}
Script 74 (void)
{
	Floor_RaiseByValue(178, 8, 280);
	Delay(16);
	Radius_Quake(1, 50, 0, 1, 0);
	Delay(35);
	Thing_Spawn(299, 65010, 64, 0);
	//Thing_Spawn(267, 65000, 64, 0);
	Thing_Spawn(271, 65001, 64, 0);
	Thing_Spawn(300, 65004, 128, 0);
}

//WARD SWITCHES
Script 51 (void)
{
	If(CheckInventory("EarthKey") == 0)
	Print(s:"This switch requires an Earth Key to activate the power source.");
	else
		If(CheckInventory("EarthKey") > 0 && GetSectorFloorZ(232, 0, 0) < 1544.0)
		{
			SetLineSpecial(241, 0, 0, 0, 0, 0, 0);
			Floor_LowerByValue(231, 24, 800);
            Ceiling_LowerByValue(231, 24, 88);
			Delay(30);
			Thing_Remove(235);
			TagWait(231);
			Floor_RaiseByvalue(233, 24, 448);
			TagWait(233);
			SetLineTexture(239, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_UP");
			PlaySound(237, "Interaction/MachineOn", CHAN_AUTO);
			Floor_LowerByValue(243, 8, 40);
			TagWait(243);
			Floor_LowerByValue(245, 4, 33);
			SetLineSpecial(246, ACS_Execute, 53, 0, 0, 0, 0);
		}
		else
		  If(CheckInventory("EarthKey") > 0)
		  {
			SetLineSpecial(241, 0, 0, 0, 0, 0, 0);
			Floor_LowerByValue(231, 24, 800);
            Ceiling_LowerByValue(231, 24, 88);
			Delay(30);
			Thing_Remove(235);
			TagWait(231);
			Floor_RaiseByvalue(233, 24, 448);
			TagWait(233);
			SetLineTexture(239, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_UP");
			PlaySound(237, "Interaction/MachineOn", CHAN_AUTO);
			Floor_LowerByValue(243, 8, 40);
		  }

}

Script 52 (void)
{
	If(CheckInventory("CrystalKey") == 0)
	Print(s:"This switch requires a Crystal Key to activate the power source.");
	else
		If(CheckInventory("CrystalKey") > 0 && GetSectorFloorZ(231, 0, 0) < 1544.0)
		{
			SetLineSpecial(242, 0, 0, 0, 0, 0, 0);
			Floor_LowerByValue(232, 24, 800);
			Ceiling_LowerByValue(232, 24, 88);
			Delay(30);
			Thing_Remove(236);
			TagWait(232);
			Floor_RaiseByvalue(234, 24, 448);
			TagWait(234);
			SetLineTexture(240, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_UP");
			PlaySound(238, "Interaction/MachineOn", CHAN_AUTO);
			Floor_LowerByValue(244, 8, 40);
			TagWait(244);
			Floor_LowerByValue(245, 4, 33);
			SetLineSpecial(246, ACS_Execute, 53, 0, 0, 0, 0);
		}
		else
		  If(CheckInventory("CrystalKey") > 0)
		  {
			SetLineSpecial(242, 0, 0, 0, 0, 0, 0);
			Floor_LowerByValue(232, 24, 800);
			Ceiling_LowerByValue(232, 24, 88);
			Delay(30);
			Thing_Remove(236);
			TagWait(232);
			Floor_RaiseByvalue(234, 24, 448);
			TagWait(234);
			SetLineTexture(240, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_UP");
			PlaySound(238, "Interaction/MachineOn", CHAN_AUTO);
			Floor_LowerByValue(244, 8, 40);
		  }

}


Script 53 (void)
{
	If(GetActorZ(0) < 1490.0 && GetSectorFloorZ(177, 0, 0) > 1740.0 && GetSectorFloorZ(178, 0, 0) > 1740.0 && GetSectorFloorZ(179, 0, 0) > 1740.0 && GetSectorFloorZ(180, 0, 0) > 1740.0)
	{
	SetLineSpecial(246, 0, 0, 0, 0, 0, 0);
	GiveInventory("ScriptHasActivatedCrystalWard", 1);
	Floor_RaiseByValue(248, 16, 144);
	Delay(16);
	Floor_RaiseByValue(249, 16, 144);
	Delay(16);
	Floor_RaiseByValue(250, 16, 144);
	Delay(16);
	Floor_RaiseByValue(251, 16, 144);
	Floor_RaiseByValue(176, 8, 580);
	Thing_Remove(258);
	TagWait(251);
	Delay(16);
	Radius_Quake(1, 140, 0, 1, 0);
	Delay(70);
	Thing_Destroy(282);

	SetLineSpecial(259, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(259, 0, BLOCKF_EVERYTHING);

	Delay(35);

	If(CheckProximity(0, "IDBearWarrior", 600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 600.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Hey look! The Ward is destroying the cultist pentagrams!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	else
	If(CheckProximity(0, "IDReaver", 600.0, 1) || CheckProximity(0, "IDReaverGuarding", 600.0, 1))
    {
	Hudmessage(s:"Reaver:    The Ward is going back up! Look at the pentagrams fizzling!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
    }

	Thing_Destroy(283);
	Delay(35);
	Thing_Spawn(280, 65008, 192, 0);
	Thing_Spawn(281, 65004, 192, 0);
	Delay(4);
	NoiseAlert(0, 281);
	Delay(70);
	Thing_Destroy(284);
	Delay(35);
	Thing_Spawn(285, 65004, 192, 604);
	Delay(1);
	Thing_Destroy(604, 1);

	Thing_Spawn(295, 65004, 64, 0);
	}
	else
	 If(GetActorZ(0) < 1490.0 && ( GetSectorFloorZ(177, 0, 0) < 1740.0 || GetSectorFloorZ(178, 0, 0) < 1740.0 || GetSectorFloorZ(179, 0, 0) < 1740.0 || GetSectorFloorZ(180, 0, 0) < 1740.0) )
	 {
		Print(s:"The switch doesn't seem to work. You hear a distant rumble from outside.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	 }
}

//FRIENDLIES DIALOGUE
Script 72 (void)
{
If(CheckProximity(0, "IDBearWarrior", 480.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 480.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Damn it! These cultist bastards got all the way up here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	else
	If(CheckProximity(0, "IDReaver", 480.0, 1) || CheckProximity(0, "IDReaverGuarding", 480.0, 1))
    {
	Hudmessage(s:"Reaver:    Oh, no... the cultists have gotten all the way up here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
}

//THIEF MAP
Script 54 (void)
{
	If(GetActorZ(0) < 1360.0 && CheckInventory("ScriptHasReadThiefMap") == 0)
	{
	GiveInventory("ScriptHasReadThiefMap", 1);
	SpawnSpot("MarkerCross", 254, 0, 0);
	SetLineSpecial(252, ACS_Execute, 55, 0, 0, 0, 0);

	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You discover what looks like a crudely drawn map of the surroundings)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 10.0);
	Hudmessage(s:"(A certain X mark grabs your attention. You copy its location over your own map)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
	}
	else
	  If(GetActorZ(0) < 1360.0 && CheckInventory("ScriptHasReadThiefMap") > 0)
	  {
		  SetFont ("OLAYTMID");
          HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 10.0);

		  SetFont("SMALLFONT");
		  Hudmessage(s:"(You glance over what looks like a crudely drawn map of the surroundings)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 10.0);
		  Hudmessage(s:"(A certain X mark stands out, and you've already copied it into your own map)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
	  }
}

Script 55 (void)
{
	If(CheckInventory("InventoryShovel") > 0)
	{
		SetWeapon("Fists");
		SetLineSpecial(252, 0, 0, 0, 0, 0, 0);
		Floor_LowerInstant(255, 0, 64);
		Ceiling_LowerInstant(255, 0, 64);
		SpawnSpotForced("DustCloud", 254, 0, 0);
		SpawnSpotForced("NatureDirtPile", 256, 0, 0);
		SpawnSpotForced("DustCloud", 256, 0, 0);
		SpawnSpotForced("NatureDirtPile", 257, 401, 0);
		SpawnSpotForced("NatureDirtPile", 297, 402, 0);
		SetActorProperty(401, APROP_ScaleX, 0.8);
		SetActorProperty(401, APROP_ScaleY, 0.8);
		SetActorProperty(402, APROP_ScaleX, 1.2);
		SetActorProperty(402, APROP_ScaleY, 1.2);
		SpawnSpotForced("DustCloud", 401, 0, 0);
		SpawnSpotForced("DustCloud", 402, 0, 0);
		PlaySound(0, "Interaction/Shovel", CHAN_AUTO);
		PlaySound(256, "Interaction/Shovel", CHAN_AUTO);
		PlaySound(257, "Interaction/Shovel", CHAN_AUTO);
		Delay(1);
		SpawnSpotForced("InventoryBagOfHolding", 254, 0, 0);
		SpawnSpotForced("PotionBoxToxic", 264, 0, 0);
	}
	else
	{
	Print(s:"You'll need a proper tool to dig here.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//MOUNTAIN GATE
Script 58 (void) //no longer in use
{
	If(IsTIDUsed(258))
	  {
	  Print(s:"A magical seal seems to be holding the lever into place.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
	  else
	  If(IsTIDUsed(258) == 0)
	  {
		SetLineSpecial(259, 0, 0, 0, 0, 0, 0);
		FloorAndCeiling_LowerByValue(260, 8, 36);
        Delay(70);
        Floor_LowerByValue(261, 3, 24);
        Floor_RaiseByValue(262, 16, 136);
        Delay(105);
        //Thing_Remove(26x);
		Floor_RaiseByValue(263, 16, 48);
	  }

}

Script 59 (void)
{
	//If(IsTIDUsed(264))
	//{
	//Print(s:"The gate must be powered first.");
	//PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	//}
	//else
	//{
		SetLineSpecial(265, 0, 0, 0, 0, 0, 0);
		Floor_LowerByValue(266, 8, 128);
	//}
}

Script 70 (void)
{
	  Print(s:"A magical seal prevents the switch from being activated.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
}

//SHUTTERS
Script 22 (void)
{
	If(GetSectorCeilingZ(92, 0, 0) < 1497.0)
	{
	Ceiling_RaiseByValue(92, 14, 60);
	Light_Fade(93, 112, 1);
	Light_Fade(94, 102, 1);
	Delay(4);
	Light_Fade(93, 114, 1);
	Light_Fade(94, 104, 1);
	Delay(4);
	Light_Fade(93, 116, 1);
	Light_Fade(94, 106, 1);
	Delay(4);
	Light_Fade(93, 118, 1);
	Light_Fade(94, 108, 1);
	Delay(4);
	Light_Fade(93, 120, 1);
	Light_Fade(94, 110, 1);
	Delay(4);
	Light_Fade(93, 122, 1);
	Light_Fade(94, 112, 1);
	Delay(4);
	Light_Fade(93, 124, 1);
	Light_Fade(94, 114, 1);
	TagWait(92);
	}
	else
	{
	Ceiling_LowerByValue(92, 14, 60);
	Light_Fade(93, 122, 1);
	Light_Fade(94, 112, 1);
	Delay(4);
	Light_Fade(93, 120, 1);
	Light_Fade(94, 110, 1);
	Delay(4);
	Light_Fade(93, 118, 1);
	Light_Fade(94, 109, 1);
	Delay(4);
	Light_Fade(93, 116, 1);
	Light_Fade(94, 106, 1);
	Delay(4);
	Light_Fade(93, 114, 1);
	Light_Fade(94, 104, 1);
	Delay(4);
	Light_Fade(93, 112, 1);
	Light_Fade(94, 102, 1);
	Delay(4);
	Light_Fade(93, 110, 1);
	Light_Fade(94, 100, 1);
	TagWait(92);
	}
}

Script 25 (void)
{
	If(GetSectorCeilingZ(112, 0, 0) < 1537.0)
	{
	Ceiling_RaiseByValue(112, 14, 60);
	Light_Fade(110, 130, 1);
	Delay(4);
	Light_Fade(110, 132, 1);
	Delay(4);
	Light_Fade(110, 134, 1);
	Delay(4);
	Light_Fade(110, 136, 1);
	Delay(4);
	Light_Fade(110, 138, 1);
	Delay(4);
	Light_Fade(110, 140, 1);
	TagWait(112);
	}
	else
	{
	Ceiling_LowerByValue(112, 14, 60);
	Light_Fade(110, 138, 1);
	Delay(4);
	Light_Fade(110, 136, 1);
	Delay(4);
	Light_Fade(110, 134, 1);
	Delay(4);
	Light_Fade(110, 132, 1);
	Delay(4);
	Light_Fade(110, 130, 1);
	Delay(4);
	Light_Fade(110, 128, 1);
	TagWait(112);
	}
}

Script 26 (void)
{
	If(GetSectorCeilingZ(113, 0, 0) < 1537.0)
	{
	Ceiling_RaiseByValue(113, 14, 60);
	Light_Fade(111, 130, 1);
	Delay(4);
	Light_Fade(111, 132, 1);
	Delay(4);
	Light_Fade(111, 134, 1);
	Delay(4);
	Light_Fade(111, 136, 1);
	Delay(4);
	Light_Fade(111, 138, 1);
	Delay(4);
	Light_Fade(111, 140, 1);
	TagWait(113);
	}
	else
	{
	Ceiling_LowerByValue(113, 14, 60);
	Light_Fade(111, 138, 1);
	Delay(4);
	Light_Fade(111, 136, 1);
	Delay(4);
	Light_Fade(111, 134, 1);
	Delay(4);
	Light_Fade(111, 132, 1);
	Delay(4);
	Light_Fade(111, 130, 1);
	Delay(4);
	Light_Fade(111, 128, 1);
	TagWait(113);
	}
}

//LIFT
script 2 (void)
{
If(CheckInventory("ScriptHasStartedLift") == 0)
  {
  GiveInventory("ScriptHasStartedLift", 1);
  FloorAndCeiling_RaiseByValue(26, 8, 952);
  FloorAndCeiling_RaiseByValue(27, 8, 952);
  Tagwait(27);
  Tagwait(26);
  Floor_LowerByValue(29, 8, 168);
  Autosave();
  }
  else
  If(CheckInventory("ScriptHasStartedLift") > 0 && GetSectorFloorZ(26, 0, 0) > 700.0)
  {
  FloorAndCeiling_LowerByValue(27, 20, 952);
  FloorAndCeiling_LowerByValue(26, 20, 952);
  Tagwait(26);
  Tagwait(27);
  }
  else
  If(CheckInventory("ScriptHasStartedLift") > 0 && GetSectorFloorZ(26, 0, 0) < 700.0)
  {
  FloorAndCeiling_RaiseByValue(26, 20, 952);
  FloorAndCeiling_RaiseByValue(27, 20, 952);
  Tagwait(27);
  Tagwait(26);
  }
}

//LIFT CRUSHERS
Script 3 ENTER
{
	SectorDamage(27, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//DOORS
Script 8 (void)
{
	Ceiling_RaiseByValue(31, 8, 32);
	Tagwait(31);
	PlaySound(0, "Interaction/Spark", CHAN_AUTO);
	Ceiling_Waggle(31, 16, 24, 0, 32);
}

Script 11 (void)
{
    If(GetSectorFloorZ(57, 0, 0) > 1456.0 && IsTIDUsed(60))
	{
	SetLineSpecial(59, 0, 0, 0, 0, 0, 0);
	Autosave();
	Thing_Remove(60);
	Floor_LowerByValue(58, 16, 168);
	Delay(1);
	Thing_Spawn(89, 65005, 128, 0);
	Delay(35);
	NoiseAlert(0, 0);
	}
	else
	If(GetSectorFloorZ(58, 0, 0) > 1595.0)
	{
	Print(s:"The switch seems to not be powered right now.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 12 (void)
{
	Floor_LowerByValue(72, 8, 88);
	TagWait(72);
	Delay(350);
	Floor_RaiseByValue(72, 8, 88);
	TagWait(72);
}

Script 13 (void)
{
	Floor_LowerByValue(73, 8, 88);
	TagWait(73);
	Delay(350);
	Floor_RaiseByValue(73, 8, 88);
	TagWait(73);
}

Script 27 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
	Generic_Door(103, 16, 0, 34, 0);
	}
	    else
		Print(s:"This door requires an Earth key to open.");
}

Script 28 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
	Generic_Door(104, 16, 0, 34, 0);
	}
	    else
		Print(s:"This door requires an Earth key to open.");
}

Script 71 (void)
{
	Floor_LowerByValue(181, 4, 168);
	SpawnSpot("Cerberus", 182, 0, 64);
}

//BREAKABLE WINDOWS
Script 30 (void)
{
If(IsTIDUsed(117) == 1)
	{
	Print(s:"The glass looks like it was hit with massive force. It could probably break under another blow.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

Script 31 (void)
{
	Thing_Remove(117);
	SetLineTexture(116, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(116, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Line_SetBlocking(116, 0, 32);
	SpawnSpot("JunkBrokenGlassA", 118);
	SpawnSpot("JunkBrokenGlassA", 119);
	SpawnSpot("JunkBrokenGlassB", 120);
	PlaySound(120, "Weapons/PotionDie");
}

//PRINTS
Script 5 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 4.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The parchment is scribbled with various alchemical formulas)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 4.0);
}

Script 6 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You spot a note carefully lodged in between the rocks. It's written in human tongue)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.74, 45.0);
	Hudmessage(s:"If everything went according to plan, you should be reading this message.  Your source was right,"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
    Hudmessage(s:"the orc magician stationed here is carrying around one of those enchanted bags.  Had a hard time"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"stealing it as the orcs seem to be overly jumpy.   Nonetheless, my job here is done.   I have hidden "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
    Hudmessage(s:"three notes that will explain how to retrieve the bag.   Don't worry, they won't find it very soon..."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"The first clue is - CL.  I've hidden the second note behind the chimney, near the two guard towers."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"I probably don't have to tell you to memorize this and then burn the note, but just to make sure."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);

}

Script 10 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Our two troublemakers have gotten into a fight again. This time, they've managed to crack one of  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"the windows in the barracks...     The crystal glass may stand up to its reputation, but we will still   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"have to replace it. Make sure you make the right requisition next time the supply caravan arrives.  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"I will be heading out to the dwarven fortress tomorrow to settle a few important matters. I barely"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"have time to give those rowdy Bear Warriors their due punishment...  their discipline seems to be as  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"shaky as everything else lately. Nonetheless, I am counting on you to handle things until I return.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"Oh, and don't forget to patch up the leaking pipes in the inner courtyard, alright? - Lancer Dendra  "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);

}

Script 16 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Hey, pass by the archive when you have time, and bring your shovel too. I've heard some strange"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"noise behind one of the wall panels,  better check to make sure we don't have water leaking in.    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Hey, pass by the archive when you have time, and bring your shovel too. I've heard some strange"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"noise \c[Gold]behind one of the wall panels\c-, better check to make sure we don't have water leaking in.    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
    }
}

Script 20 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Rot. 509, Day 237"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"First they finished that elevator linking the Dwarven Fortress with Valc, and now the campaign"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"began. I'm starting to think we won't have any of the bearded fellas coming through here for a"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"while. I suppose that's less time recording trades and more time reading something interesting."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 21 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Chapter 3 - The Basic Crystals"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 95.0);
	Hudmessage(s:"One of the most common magical crystals found inside the underground is the bright cyan one."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 95.0);
	Hudmessage(s:"It grows in spiral patterns, and the more the formation coils around, the greater is its age.    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 95.0);
	Hudmessage(s:"It has interesting properties ranging from producing heat through an inner vibration to being  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
	Hudmessage(s:"able to attract or reject metal.   The light and warmth generated by this crystal allow for a"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"lush flora to thrive away from sunlight.   Its use in our technology will be detailed later on.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
	Hudmessage(s:"Yellow crystals are another fairly common sight.     They are usually formed in bundles, but    "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"unlike cyan ones, they do not seem to possess the same ability to grow in time.     Therefore, it "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"is considered that they are a finite resource, and are regarded as much more valuable. Their"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"main property is that they store energy which is required to power up our machines. The power"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"of these crystals is measured by the intensity of the glow  -  a bright core is generally suited  "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"for powering large installations, but is also more unstable.   For this reason, our energy guns  "; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"such as Sentry Turrets or Crylances employ depleted shards that have a much duller glow.    "; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"Armor Amulets are created from the same crystals, but they are imbued with magical spells."; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"The process ends up altering the color, but this shall be better detailed in a future chapter.  "; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 23 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"MOUNTAIN GATE CONTROLS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 29 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A journal lies open at the bottom of the chest. It seems to belong to a grunt named Griva)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"That swine, Udra, has cheated on the card game again yesterday.  She thinks that just because"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"she's stronger, she can push everyone around like that. I've bought a Potion of Might, which I'll"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"keep in the hiding spot.   Let's see how tough she'll be after I slip some of it into my drink before"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"tonight's rematch. I don't care if Dendra puts the whip on us, Udra simply has to be put in place."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 33 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"TO MOUNTAIN PASS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 34 (void)
{
If (GetActorZ(0) < 1316.0)
	{
	Print(s:"This door seems to be locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	}
}

Script 36 (void)
{
	If(GetActorZ(0) < 1340.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Lancer Dendra's Log, Rotation 509, Day 238"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"Seems like I can hardly have any silence around the base this week.  Just as I was about to set"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
    Hudmessage(s:"off to the dwarven fortress to negotiate the further trades, I have to deal with Udra stirring"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"another fight, this time with Griva.   They've managed to crack up one of the windows inside the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"barracks but as I went to lay discipline, I've discovered something far more worrying   -  a note."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"Hidden between a shutter and an iron panel, and written in Human language. Upon reading it, my"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"expectations have been confirmed - my bag has been stolen! I've already tasked the Reavers to"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"search around for other such notes, and devise a plan to ambush and root these rats out. I have"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"a really bad feeling about this...        I know I should see to this matter by myself and try to find"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"out where my bag has been hidden but dwarves are keen on punctuality so I'll have to leave now."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
    }
}

Script 37 (void)
{
	If(GetActorZ(0) < 1340.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A scroll lies hidden behind the chimney. You find that it is written in human language) "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 25.0);
	Hudmessage(s:"Good, you've found the second note. Piecing all three together will reveal the location of"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
    Hudmessage(s:"a map that will point you the way. You're good with riddles so let's play it safe, shall we? "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"Your second clue is - OS. The third part lies under the hibernating bear's nose. Good luck."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
    }
}

Script 38 (void)
{
	If(GetActorZ(0) < 1340.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A tiny note lies on the table. It seems to have been written by a human)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"So you've found the last note.  This one should now point you towards the bag's location."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
    Hudmessage(s:"The last clue is - ET.  Search around the basket and you'll find it eventually. Good luck."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
    Hudmessage(s:""; HUDMSG_PLAIN, 4, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 5, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 6, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 7, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 8, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
    }
}

Script 39 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"AUTOMATIC DEFENSE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 10.0);
	Hudmessage(s:"- OUTER SENTRY GUNS -"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 40 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"AUTOMATIC DEFENSE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 10.0);
	Hudmessage(s:"- INNER SENTRY GUNS -"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 43 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CLOSET"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 44 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"STORAGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 45 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SECURITY"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 46 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CRYSTAL WARD CONTROL"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 47 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"LIVING QUARTERS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 49 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"REPAIR BAY"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 50 (void)
{
	If(GameSkill() == SKILL_HARD && GetActorZ(0) <= 1500.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"CRYSTAL WARD ACTIVATION"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 95.0);
	Hudmessage(s:"The Crystal Ward may only be deactivated under direct order from the Lancer Council. Should"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 95.0);
    Hudmessage(s:"a powerful magical ritual require to be performed,  the commanding officer will be instructed  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.48, 95.0);
	Hudmessage(s:"directly on when and for how long should the defence be lowered.  Reactivating the ward can be"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.50, 95.0);
    Hudmessage(s:"done following three steps:       first, the commanding officer and her aide will use their keys on  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 95.0);
	Hudmessage(s:"the two switches that control the power crystal sources. Secondly, the maintenance crew must"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 95.0);
	Hudmessage(s:"manually turn on the four support pillars at the ward's base.   The pillars can be activated at "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 95.0);
	Hudmessage(s:"any time, but should not stay idle for hours.  Lastly, the middle switch will activate the ward. "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.58, 95.0);
	Hudmessage(s:"WARNING:  Do not activate if any large scale magic is being performed in Valc or its proximity."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 95.0);
    }
	else
	If(GetActorZ(0) <= 1500.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"CRYSTAL WARD ACTIVATION"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 95.0);
	Hudmessage(s:"The Crystal Ward may only be deactivated under direct order from the Lancer Council. Should"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 95.0);
    Hudmessage(s:"a powerful magical ritual require to be performed,  the commanding officer will be instructed  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.48, 95.0);
	Hudmessage(s:"directly on when and for how long should the defence be lowered.  Reactivating the ward can be"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.50, 95.0);
    Hudmessage(s:"done following three steps:       first, the commanding officer and her aide will use their keys on  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 95.0);
	Hudmessage(s:"the \c[Gold]two switches\c- that control the power crystal sources. Secondly, the maintenance crew must"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 95.0);
	Hudmessage(s:"manually turn on the \c[Gold]four support pillars\c- at the ward's base.   The pillars can be activated at "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 95.0);
	Hudmessage(s:"any time, but should not stay idle for hours.  Lastly, the \c[Gold]middle switch\c- will activate the ward. "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.58, 95.0);
	Hudmessage(s:"WARNING:  Do not activate if any large scale magic is being performed in Valc or its proximity."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 95.0);
    }
}

Script 57 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I haven't received word from our cultists tasked with taking over the dwarven fortress."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"The attack is either still going, or these fools have perished in the snow before they could"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"even get to draw steel. Mistress Nithriel has specifically ordered to keep this base sealed"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"off to any visitors,  as it is critical to our ability to teleport reinforcements in.      I have  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"blocked the switch for the mountain gate with a magical seal. Nobody is to tamper with it."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I haven't received word from our cultists tasked with taking over the dwarven fortress."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"The attack is either still going, or these fools have perished in the snow before they could"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"even get to draw steel. Mistress Nithriel has specifically ordered to keep this base sealed"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"off to any visitors,  as it is critical to our ability to teleport reinforcements in.      I have  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"blocked the switch for the \c[Gold]mountain gate\c- with a magical seal. Nobody is to tamper with it."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
    }
}

Script 67 (void)
{
	If(GetActorZ(0) < 1340.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A fancy journal sits on the nightstand. The pages are decorated with earthly symbols)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"It's been six days since that Witch, Lith, came here with a Ward deactivation order. I can't help"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
    Hudmessage(s:"but wonder what they are doing... the order was indeed signed by their chieftain, Zura, and had"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"the Council's approval seal on it, but she refused to give out any information about what ritual"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"was being performed. Clearly it has to be something strong since we need to lower the Ward so it"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"doesn't tamper with their magic. Dendra didn't seem to care much. I believe she's going through"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"a hard time keeping the base together, and now she's about to set off to the dwarven fortress. "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"...perhaps I'm being too judgemental about Witches. After all, nothing bad has happened so far."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
	Hudmessage(s:"The deactivation order expires tomorrow, so I'll have to go turn on the Crystal Ward by myself,"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"and then I'll probably have some time to help the Reavers find out whoever stole Dendra's bag. "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
    }
}

//SWINGING DOORS
Script 124 (void)
{
If (GetActorZ(0) < 1316.0)
{
  Polyobj_DoorSwing(124,-16,64,105);
  SetLineSpecial(171, ACS_Execute, 124, 0, 0, 0, 0);
}
}

Script 125 (void)
{
If (GetActorZ(0) < 1316.0)
{
  Polyobj_DoorSwing(125,-16,64,105);
}
}

Script 270 (void)
{
If (GetActorZ(0) < 1316.0)
{
  Polyobj_DoorSwing(270,16,64,105);
}
}

Script 303 (void)
{
If (GetActorZ(0) < 1316.0)
{
  Polyobj_DoorSwing(303,16,64,105);
  SetLineSpecial(170, ACS_Execute, 303, 0, 0, 0, 0);
}
}

Script 304 (void)
{
If (GetActorZ(0) > 1960.0 && GetActorZ(0) < 2048.0)
{
  Polyobj_DoorSwing(304,16,64,105);
}
}

Script 305 (void)
{
If (GetActorZ(0) > 1960.0 && GetActorZ(0) < 2048.0)
{
  Polyobj_DoorSwing(305,16,64,105);
}
}

//HUDMESSAGE CLEAR
Script 56 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

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