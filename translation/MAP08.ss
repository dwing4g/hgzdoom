#include "zcommon.acs"

//LEVEL START
Script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  FadeTo(0,0,0,0.0,0.0);
  CancelFade();

  SetActorFlag(139, "MOVEWITHSECTOR", 1);
  SetActorFlag(139, "RELATIVETOFLOOR", 1);
  SetActorFlag(214, "MOVEWITHSECTOR", 1);
  SetActorFlag(214, "RELATIVETOFLOOR", 1);
  SetActorFlag(221, "MOVEWITHSECTOR", 1);
  SetActorFlag(221, "RELATIVETOFLOOR", 1);
  SetActorFlag(221, "NOBLOCKMAP", 1);
  SetActorFlag(221, "NOGRAVITY", 1);
  SpawnSpot("ForgeLightSmall", 221, 290, 0);
  SetActorFlag(290, "MOVEWITHSECTOR", 1);
  SetActorFlag(290, "RELATIVETOFLOOR", 1);
  SetActorFlag(290, "NOBLOCKMAP", 1);
  SetActorFlag(290, "NOGRAVITY", 1);

  SetActorFlag(249, "NOBLOCKMAP", 1);

  SetActorFlag(258, "NOBLOCKMAP", 1);

  SetActorFlag(263, "ACTIVATEMCROSS", 1);

  GiveActorInventory(602, "EarthKey", 1);

  If(CheckInventory("InventoryShovel") < 1)
  {
	SpawnSpot("InventoryShovel", 84, 0, 0);
  }
  else
  {
  SpawnSpot("JunkBrokenShovel", 84, 0, 0);
  }

  Delay(35);
  If(ThingCountName("IDBearWarrior", 0) > 0)
  {
	  Hudmessage(s:"Bear Warrior:    Man, this place is colder than Moon's ass..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);;
      PlaySound(690, "BearWarrior/Hmm", CHAN_AUTO);
	  If(ThingCountName("IDReaver", 0) > 0)
        {
	    Delay(5*35);
	    Hudmessage(s:"Reaver:    At least you have some fur on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);;
        }
  }
  else
  If(ThingCountName("IDReaver", 0) > 0)
      {
	  Hudmessage(s:"Reaver:    *Shiver* So. Cold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);;
      PlaySound(690, "Reaver/Hm", CHAN_AUTO);
	  }
}

//BEAR DIALOGUE
Script 94 (void)
{
  If(GetActorProperty(602, APROP_Health) > 0 && CheckProximity(0, "IDBearWarrior", 200.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 200.0, 1))
  {
	Delay(50);
	Hudmessage(s:"Bear Warrior:    Huh, a live one..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.88, 4.0, 0.2, 0.5);
	SetLineSpecial(250, 0, 0, 0, 0, 0, 0);
  }
  else
  If(GetActorProperty(602, APROP_Health) > 0 && CheckProximity(0, "IDReaver", 200.0, 1) || CheckProximity(0, "IDReaver", 200.0, 1))
  {
	Delay(50);
	Hudmessage(s:"Reaver:    Looks like we have a survivor."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.88, 4.0, 0.2, 0.5);
	SetLineSpecial(250, 0, 0, 0, 0, 0, 0);
  }
}

//DENDRA CRYLANCE CHECK
Script 47 (void)
{
  If(IsTIDUsed(260) == 0 && CheckInventory("Crylance") > 0)
  {
	SetLineSpecial(259, 0, 0, 0, 0, 0, 0);
	GiveInventory("ScriptHasTakenDendrasCrylance", 1);
  }
}

//DIGGING
Script 2 (void)
{
	SetWeapon("Fists");
	SetLineSpecial(11, 0, 0, 0, 0, 0, 0);
	FloorAndCeiling_LowerByValue(9, 99999, 64);
	PlaySound(0, "Interaction/Shovel", CHAN_AUTO);
	Thing_Remove(10);
	Delay(1);
	SpawnSpot("HeavyArmorCrystal", 6, 0, 0);
	SpawnSpot("DustCloud", 6, 0, 0);
	SpawnSpot("SnowDust", 6, 0, 0);
	SpawnSpot("NatureDirtPile", 8, 600, 0);
	SetActorProperty(600, APROP_RenderStyle, STYLE_Stencil);
	SetActorProperty(600, APROP_StencilColor, 0xFFFFFF);
	SpawnSpot("NatureIceStoneA", 7, 0, 0);
}

Script 8 (void)
{
    If(CheckInventory("InventoryShovel") > 0)
	{
		SetLineSpecial(74, 0, 0, 0, 0, 0, 0);
		SetWeapon("Fists");
		SetActorProperty(0, APROP_Speed, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
		ACS_NamedExecuteWithResult("TakeWeapons");

        PlaySound(76, "Metal/Bounce1", CHAN_AUTO);
		SpawnSpot("FrozenChunkSmall", 76, 0, 0);
		SpawnSpot("FrozenDust", 76, 0, 0);
		Delay(35);
		PlaySound(77, "Metal/Bounce2", CHAN_AUTO);
		SpawnSpot("FrozenChunkMedium", 77, 0, 0);
		SpawnSpot("FrozenDust", 77, 0, 0);
		Delay(20);
		PlaySound(78, "Metal/Bounce3", CHAN_AUTO);
		SpawnSpot("FrozenChunkLarge", 78, 0, 0);
		SpawnSpot("FrozenDust", 78, 0, 0);
		Delay(25);

		PlaySound(0, "Interaction/WallPick", CHAN_AUTO);
		Radius_Quake2(0, 2, 24, 0, 64, 0);
	    Delay(4);
		PlaySound(0, "Interaction/IceShatter", CHAN_AUTO);
		Thing_Remove(73);
		FloorAndCeiling_LowerByValue(75, 99999, 600);
		SpawnSpot("FrozenChunkLarge", 79, 0, 0);
		SpawnSpot("FrozenDust", 79, 0, 0);
		SpawnSpot("FrozenChunkMedium", 80, 0, 0);
		SpawnSpot("FrozenDust", 80, 0, 0);
		SpawnSpot("FrozenChunkSmall", 81, 0, 0);
		SpawnSpot("FrozenDust", 81, 0, 0);
		SpawnSpot("DustCloud", 257, 0, 0);
		Delay(16);

		TakeInventory("InventoryShovel", 1);
		SpawnSpot("JunkBrokenShovel", 82, 0, 0);
		PlaySound(82, "Interaction/Shovel", CHAN_AUTO);
		ACS_NamedExecuteWithResult("GiveWeapons");
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	{
	Print(s:"The thick layer of ice has a cracked spot that could be shattered with the proper tool.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//FIRE TRAP
Script 5 (void)
{
	If(GetSectorFloorZ(62, 0, 0) > 1501.0)
	{
		PlaySound(63, "Switches/Switch3", CHAN_AUTO);
		Floor_LowerByValue(62, 4, 2);
		Delay(8);
		SpawnProjectile(64, "ProjectileFlameBolt", 64, 200, 0, 0, 0);
		SpawnProjectile(65, "ProjectileFlameBolt", 192, 200, 0, 0, 0);
	}

}

Script 6 (void)
{
	If(GetSectorFloorZ(62, 0, 0) < 1502.0)
	{
		PlaySound(63, "Switches/Switch3", CHAN_AUTO);
		Floor_RaiseByValue(62, 4, 2);
	}
}

//MONSTER AMBUSHES
Script 9 (void)
{
	SetLineSpecial(86, 0, 0, 0, 0, 0, 0);
	ThrustThingZ(85, 30, 1, 0);
	Delay(60);
	ThrustThingZ(85, 0, 0, 0);
	Thing_Activate(85);
}

Script 10 (void)
{
	If(GetActorProperty(87, APROP_Health) > 110)
	{
		PlaySound(87, "Cerberus/Active", CHAN_AUTO);
	}
}

//IRON MAIDEN MOVE
Script 14 (void)
{
	SetActorProperty(90, APROP_Speed, 17.0);
}

//BRIDGE AMBUSH
Script 46 (void)
{
	SetLineSpecial(244, 0, 0, 0, 0, 0, 0);
	SetActorProperty(243, APROP_Speed, 17.0);
	Thing_Activate(242);
	Thing_SetGoal(242, 246, 0, 1);
	Thing_Activate(245);
	Thing_SetGoal(245, 247, 0, 1);
}

//CRYSTAL PEDESTAL
Script 7 (void)
{
	If(CheckInventory("InventoryCyanCrystal") > 0)
	{
		SetLineSpecial(67, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryCyanCrystal", 1);
		SpawnSpotForced("JunkBrokenCyanCrystal", 66, 0, 0);
		PlaySound(66, "Metal/Land", CHAN_AUTO);
		Delay(50);
		Ceiling_RaiseByValue(61, 8, 88);
	}
	else
	{
	Print(s:"The pedestal is empty.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//BRIDGE
Script 4 (void)
{
	If(GetActorZ(0) > 1530.0 && CheckInventory("InventoryVine") == 0 && CheckInventory("InventoryWoodenPlank") == 0)
	  {
		  Print(s:"It looks like the bridge has been destroyed by a fallen ice block.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
	  else
	    If(GetActorZ(0) > 1530.0 && (CheckInventory("InventoryVine") < 1 || CheckInventory("InventoryWoodenPlank") < 3))
	    {
		     Print(s:"You don't have enough materials to fix the bridge.");
			 PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    }
	    else
		If(GetActorZ(0) > 1530.0 && CheckInventory("InventoryVine") == 1 && CheckInventory("InventoryWoodenPlank") == 3)
		{
			SetLineSpecial(47, 0, 0, 0, 0, 0, 0);
			TakeInventory("InventoryVine", 1);
			TakeInventory("InventoryWoodenPlank", 3);

			SetWeapon("Fists");
	        SetActorProperty(0, APROP_Speed, 0.0);
	        SetActorProperty(0, APROP_Friction, 0.1);
	        Delay(4);
	        ACS_NamedExecuteWithResult("TakeWeapons");

			Delay(16);
			PlaySound(0, "Weapons/BoltSee", CHAN_AUTO);
			Delay(8);
			PlaySound(0, "Interaction/RopeTie", CHAN_AUTO);
			PlaySound(49, "Rock/Land", CHAN_AUTO);
			SpawnSpot("NatureIceStoneA", 49, 0, 0);
			SpawnSpot("NatureVineB", 48, 601, 128);
			SetActorProperty(601, APROP_ScaleX, 2.0);
			Delay(35);

            PlaySound(50, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_LowerByValue(30, 99999, 400);
			FloorAndCeiling_RaiseByValue(31, 99999, 400);
			Delay(12);
			PlaySound(50, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_LowerByValue(36, 99999, 400);
			FloorAndCeiling_RaiseByValue(37, 99999, 400);
			Delay(20);
			PlaySound(50, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_LowerByValue(38, 99999, 400);
			FloorAndCeiling_RaiseByValue(39, 99999, 400);
			Delay(35);

            PlaySound(51, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_RaiseByValue(40, 99999, 400);
			Delay(20);
			PlaySound(51, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_RaiseByValue(41, 99999, 400);
			Delay(16);
			PlaySound(51, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_RaiseByValue(42, 99999, 400);
			Delay(35);

            PlaySound(52, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_LowerByValue(43, 99999, 400);
			FloorAndCeiling_RaiseByValue(44, 99999, 400);
			Delay(16);
			PlaySound(52, "Interaction/RopeTie", CHAN_AUTO);
			FloorAndCeiling_LowerByValue(45, 99999, 400);
			FloorAndCeiling_RaiseByValue(46, 99999, 400);
			Delay(8);

			ACS_NamedExecuteWithResult("GiveWeapons");
	        SetActorProperty(0, APROP_SPEED, 1.0);
	        SetActorProperty(0, APROP_Friction, 1.0);
		}

}

//ANDRIK
Script 38 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	Delay(24);
	PlaySound(602, "Andrik/Cough", CHAN_AUTO);
	Hudmessage(s:"Sick Dwarf:   *Coughs*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 2.0, 0.1, 0.2);
	}
}

int spec39 = 0;
Script 39 (void)
{
	If(CheckInventory("InventoryKegOfDragonBrew") > 0 && GetActorProperty(602, APROP_Health) <= 0 && spec39 == 0)
	{
		spec39 += 1;
		SetWeapon("Fists");
		TakeInventory("InventoryKegOfDragonBrew", 1);
		SpawnSpotForced("IDKegA", 240, 603, 0);
		PlaySound(240, "Inventory/PickShort", CHAN_AUTO);
		Delay(35);
		PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
		Delay(70);
		If(CheckProximity(0, "IDBearWarrior", 192.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 192.0, 1))
		{
            Hudmessage(s:"Bear Warrior:    Too late for him now. C'mon, let's stop wasting time and get moving."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 1.5);
		    Delay(6*35);
		}
		else
		If(CheckProximity(0, "IDReaver", 192.0, 1) || CheckProximity(0, "IDReaverGuarding", 192.0, 1))
		{
            Hudmessage(s:"Reaver:    Did he just breathe?... hm, must be my imagination. Let's get going."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 1.5);
		    Delay(6*35);
		}
	}
	else
	If(CheckInventory("InventoryKegOfDragonBrew") > 0 && GetActorProperty(602, APROP_Health) > 0 && spec39 == 0)
	{
		//SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
		spec39 += 1;

		SetWeapon("Fists");
		SetActorProperty(0, APROP_Speed, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
		ACS_NamedExecuteWithResult("TakeWeapons");

		TakeInventory("InventoryKegOfDragonBrew", 1);
		SetActorFlag(602, "NODAMAGE", 1);
		SetActorFlag(602, "NOBLOOD", 1);
		SetActorFlag(602, "BLOODSPLATTER", 0);
		SetActorState(602, "Drink", 0);

		FadeTo(0, 0, 0, 1.0, 4.1);
        Delay(35*1);
		If(CheckProximity(0, "IDReaver", 192.0, 1) || CheckProximity(0, "IDReaverGuarding", 192.0, 1))
		  {
		  SetFont("SMALLFONT");
          Hudmessage(s:"Reaver:    Let's hope this was worth it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
		  }
		else
		{
		If(CheckProximity(0, "IDBearWarrior", 192.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 192.0, 1))
		  {
		  SetFont("SMALLFONT");
          Hudmessage(s:"Bear Warrior:    There you go, buddy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
		  }
		}
		Delay(35*3);
		SetActorState(602, "Spawn", 0);
		SpawnSpotForced("IDKegA", 240, 603, 0);
		PlaySound(240, "Inventory/PickShort", CHAN_AUTO);
		Delay(35*2);
		FadeTo(0, 0, 0, 0.0, 0.8);

		PlaySound(602, "Andrik/Cough", CHAN_AUTO);
		Hudmessage(s:"Andrik:   *Cough* Argh, that hit the spot! I can feel it purging me veins!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 9.0, 0.1, 0.2);
		Delay(35);
		PlaySound(602, "Andrik/Grumble", CHAN_AUTO);
		Delay(8*35);
        Hudmessage(s:"Thought she could do ol' Andrik in, did she?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 5.0, 0.1, 0.2);
		Delay(5*35);
		PlaySound(602, "Andrik/Laugh", CHAN_AUTO);
        Hudmessage(s:"*Rasp laughter* I've drunk far worse than her poison... though nothing"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.84, 11.8, 0.1, 0.2);
		Hudmessage(s:"ever made me see horned blue demons in orcish garb wandering about.   "; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_BROWN, 1.5, 0.86, 11.8, 0.1, 0.2);
		Delay(12*35);
        Hudmessage(s:"Aye! T'was one of your witchin' sisters. Called herself Lith."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 6.0, 0.1, 0.2);
		Delay(6*35);

		If(CheckProximity(0, "IDReaver", 192.0, 1) || CheckProximity(0, "IDReaverGuarding", 192.0, 1))
		  {
		  SetFont("SMALLFONT");
          Hudmessage(s:"Reaver:    Lith? That's Zura's aide... yes, this does look like the work of a Witch..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		  Delay(6*35);
		  }
		  else
		  {
		    If(CheckProximity(0, "IDBearWarrior", 192.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 192.0, 1))
		    {
		    SetFont("SMALLFONT");
            Hudmessage(s:"Bear Warrior:    Lith?! Zura's adjunct? That piece of shit..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		  }
		  }

		Hudmessage(s:"She came by a few days ago. The snake must have slipped something in our well..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 7.0, 0.1, 0.2);
		Delay(7*35);
		Hudmessage(s:"Almost everyone here was complaining about stomach cramps by the end of the day."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 7.0, 0.1, 0.2);
		Delay(7*35);
		PlaySound(602, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"I saw them, lass. Screaming in pain. Dark veins shifting under their skin..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 6.0, 0.1, 0.2);
		Delay(6*35);
		Hudmessage(s:"Then one of yer Lancers showed up at the fortress. Aye, and she was fuming!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 6.0, 0.1, 0.2);
		Delay(6*35);
		Hudmessage(s:"Said that she was going to burn that traitor alive, and rushed to the elevator!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 6.0, 0.1, 0.2);
		Delay(6*35);
		Hudmessage(s:"She couldn't aid us. We tried everything to help the sick ones. Nothing halted the poison."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 7.0, 0.1, 0.2);
		Delay(7*35);
		PlaySound(602, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"...and then these bleedin' cultists appeared out of nowhere..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 5.0, 0.1, 0.2);
		Delay(5*35);
		Hudmessage(s:"..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 3.0, 0.1, 0.2);
		Delay(3*35);
		PlaySound(602, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"T'was a slaughter. Killed everyone who could hold an axe, and threw the sick ones into the well."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.84, 16.0, 0.1, 0.2);
		Hudmessage(s:"They would have thrown me as well had the taint claimed me sooner. My blood is slowing it down."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_BROWN, 1.5, 0.86, 16.0, 0.1, 0.2);
		Delay(16*35);
		PlaySound(602, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Listen, lass... you seem to be an honorable individual. Why don't ya take this elevator key"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.84, 12.0, 0.1, 0.2);
		Hudmessage(s:"and go give that traitorous wench and her lackeys what they be askin' for? Go quickly!       "; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_BROWN, 1.5, 0.86, 12.0, 0.1, 0.2);
		Delay(12*35);

		If(CheckProximity(0, "IDBearWarrior", 192.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 192.0, 1))
		{
		SetFont("SMALLFONT");
		Hudmessage(s:"Bear Warrior:    Oh, screw Lith! We have to defend the Crystal Heart now, we'll get her after."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
		Delay(6*35);
		}
		else
		  {
		    If(CheckProximity(0, "IDReaver", 192.0, 1) || CheckProximity(0, "IDReaverGuarding", 192.0, 1))
		    {
		    SetFont("SMALLFONT");
            Hudmessage(s:"Reaver:    I'd love to hunt her down, but we have more pressing matters at hand right now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    }
		  }

        TakeActorInventory(602, "EarthKey", 1);
		SpawnSpotForced("EarthKey", 241, 0, 0);
		PlaySound(241, "Inventory/PickShort", CHAN_AUTO);

		SetActorFlag(602, "NODAMAGE", 0);
		SetActorFlag(602, "NOBLOOD", 0);
		SetActorFlag(602, "BLOODSPLATTER", 1);
		ACS_NamedExecuteWithResult("GiveWeapons");
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		SetLineSpecial(239, ACS_Execute, 40, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryKegOfDragonBrew") == 0 && GetActorProperty(602, APROP_Health) > 0)
	{
		Hudmessage(s:"The dwarf tries to speak, but ends up coughing. His dry tongue bears a slight purple tint."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_GOLD, 1.5, 0.82, 12.0);
		Hudmessage(s:"His brows narrow as he proceeds to mimic a drinking gesture and point above."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_GOLD, 1.5, 0.84, 12.0);
		PlaySound(602, "Andrik/Cough", CHAN_AUTO);
		Delay(6*35);
		If(CheckProximity(0, "IDBearWarrior", 192.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 192.0, 1))
		  {
		    Switch(random(1, 3))
	        {
		    Case 1:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Bear Warrior:    What are you trying to tell us, dwarf?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;

		    Case 2:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Bear Warrior:    He looks pretty bad. I don't know, sarge..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;

		    Case 3:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Bear Warrior:    His tongue looks so dry. Maybe a drink could fix him?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;
	        }
		  }
		else
		If(CheckProximity(0, "IDReaver", 192.0, 1) || CheckProximity(0, "IDReaverGuarding", 192.0, 1))
		  {
		    Switch(random(1, 3))
	        {
		    Case 1:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Reaver:    He looks poisoned. Look at that violet tongue..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;

		    Case 2:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Reaver:    I have a bad feeling about this. Do we really have to help him?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;

		    Case 3:
		    SetFont("SMALLFONT");
            Hudmessage(s:"Reaver:    What in the Pits of Hell is this dwarf trying to say?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		    Delay(6*35);
		    Break;
	        }
		  }
		else
		Delay(6*35);
	}
}

Script 40 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	PlaySound(602, "Andrik/Cough", CHAN_AUTO);
	Hudmessage(s:"Andrik:   I would do it myself if I had my strength back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 5.0, 0.1, 0.2);
	Delay(5*35);
	SetLineSpecial(239, ACS_Execute, 41, 0, 0, 0, 0);
	}
}

Script 41 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Andrik:   Don't worry about me. Go find that filthy Witch!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 5.0, 0.1, 0.2);
	Delay(5*35);
	SetLineSpecial(239, ACS_Execute, 42, 0, 0, 0, 0);
	}
}

Script 42 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	PlaySound(602, "Andrik/Grumble", CHAN_AUTO);
	Hudmessage(s:"Andrik:   I don't know where the cultist bastards came from, but thanks for slaying them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 7.0, 0.1, 0.2);
	Delay(7*35);
	SetLineSpecial(239, ACS_Execute, 43, 0, 0, 0, 0);
	}
}

Script 43 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Andrik:   Stone harden ye!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 3.0, 0.1, 0.2);
	Delay(3*35);
	SetLineSpecial(239, ACS_Execute, 44, 0, 0, 0, 0);
	}
}

Script 44 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	PlaySound(602, "Andrik/Mumble", CHAN_AUTO);
	Hudmessage(s:"Andrik:   Go lass, no more time to waste!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 4.0, 0.1, 0.2);
	Delay(4*35);
	SetLineSpecial(239, ACS_Execute, 45, 0, 0, 0, 0);
	}
}

Script 45 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	PlaySound(602, "Andrik/Grumble", CHAN_AUTO);
	Hudmessage(s:"Andrik:   Off with ya!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_BROWN, 1.5, 0.86, 3.0, 0.1, 0.2);
	Delay(3*35);
	SetLineSpecial(239, ACS_Execute, 40, 0, 0, 0, 0);
	}
}


//TEMPLE EXPLOSION
Script 24 (void)
{
	If(CheckInventory("ScriptTempleExplosion") > 0)
	{
	SetLineSpecial(142, 0, 0, 0, 0, 0, 0);
	Delay(28);
	FloorAndCeiling_RaiseByValue(141, 99999, 1000.0);
	SpawnSpotForced("ExplosionHuge", 143, 0, 0);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(16);
	ThrustThingZ(144, 20, 0, 1);
	Delay(35);
	ThrustThingZ(144, 0, 0, 0);
	Thing_Activate(144);
	SpawnSpotForced("SmokeGenerator", 252, 660, 0);
	//NoiseAlert(144, 144);
	}
	else
	GiveInventory("ScriptTempleExplosion", 1);
}

//PORTCULLIS LEVERS
Script 22 (void)
{
	If(CheckInventory("ScriptHasPulledOneLever") < 1)
	{
	SetLineSpecial(133, 0, 0, 0, 0, 0, 0);
	GiveInventory("ScriptHasPulledOneLever", 1);
	SetActorPitch(134, 0.9);
	PlaySound(134, "Interaction/MachineOn");
	}
	else
	{
	SetLineSpecial(133, 0, 0, 0, 0, 0, 0);
	SetActorPitch(134, 0.9);
	PlaySound(134, "Interaction/MachineOn");
	Delay(24);
	Floor_LowerByValue(137, 4, 80);
	Delay(16);
	Floor_LowerByValue(138, 8, 152);
	TagWait(138);
	}
}

Script 23 (void)
{
	If(CheckInventory("InventoryIronLever") > 0 && CheckInventory("ScriptHasPulledOneLever") < 1)
	{
		SetLineSpecial(135, 0, 0, 0, 0, 0, 0);
		GiveInventory("ScriptHasPulledOneLever", 1);
		TakeInventory("InventoryIronLever", 1);
		Delay(8);
		SpawnSpotForced("IDLever", 136, 506, 0);
		PlaySound(136, "Ammo/SpikeMagBounce", CHAN_AUTO);
	    SetActorPitch(506, 0.8);
		Delay(35);
	    PlaySound(136, "Interaction/MachineOn");
		SetActorPitch(506, 0.9);
	}
	else
	If(CheckInventory("InventoryIronLever") > 0 && CheckInventory("ScriptHasPulledOneLever") > 0)
	{
		SetLineSpecial(135, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryIronLever", 1);
		Delay(8);
		SpawnSpotForced("IDLever", 136, 506, 0);
		PlaySound(136, "Ammo/SpikeMagBounce", CHAN_AUTO);
	    SetActorPitch(506, 0.8);
		Delay(35);
	    PlaySound(136, "Interaction/MachineOn");
		SetActorPitch(506, 0.9);
		Delay(24);
	    Floor_LowerByValue(137, 4, 80);
	    Delay(16);
	    Floor_LowerByValue(138, 8, 152);
	    TagWait(138);
	}
	else
	{
	Print(s:"The lever operating this half of the mechanism is nowhere to be seen.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//DOOR LEVERS
Script 31 (void)
{
	SetLineSpecial(196, 0, 0, 0, 0, 0, 0);
	SetActorPitch(195, 0.8);
	PlaySound(195, "Interaction/MachineOn");
	Ceiling_RaiseByValue(197, 8, 66);
}

Script 32 (void)
{
	SetLineSpecial(198, 0, 0, 0, 0, 0, 0);
	SetActorPitch(200, 0.8);
	PlaySound(200, "Interaction/MachineOn");
	Ceiling_RaiseByValue(199, 8, 70);
}


//BLACKSMITH
//Smelt
Script 16 (void)
{
	If(CheckInventory("InventoryIronBar") > 0)
	{
		SetLineSpecial(120, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryIronBar", 1);
		SpawnSpotForced("IDIronBar", 118, 500, 0);
		PlaySound(118, "Metal/Land");
		Thing_Remove(660);
		SetLineTexture(253, SIDE_FRONT, TEXTURE_MIDDLE, "Ash1");
		SetLineTexture(254, SIDE_BACK, TEXTURE_BOTTOM, "Ash1");
		ChangeFloor(256, "Ash1");
		Delay(35);
		PlaySound(118, "Interaction/MachineOn");
		Delay(16);
	    Ceiling_RaiseByValue(123, 2, 10);
		TagWait(123);
		Delay(16);
		PlaySound(500, "Weapons/FlameDeath");
		Thing_Remove(500);
		Ceiling_LowerByValue(123, 2, 10);
		ChangeFloor(122, "Molten01");
		ChangeFloor(124, "Molten01");
		Delay(8);
		Floor_RaiseByValue(122, 1, 1);
		Delay(35);
		ChangeFloor(124, "Iron1_G");
		Delay(8);
		SpawnSpotForced("InventoryHotIron", 119, 501, 0);
		PlaySound(501, "Interaction/Smother", CHAN_AUTO);
		ACS_Execute(20, 0, 0, 0, 0);
		Floor_LowerByValue(122, 99999, 1);
		TagWait(122);
		ChangeFloor(122, "Iron1_G");
	}
	else
	{
	Print(s:"You have nothing to smelt.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//Pliers Pickup
Script 20 (void)
{
	If(IsTIDUsed(501) == 0)
	{
		Thing_Remove(125);
		Terminate;
	}
	Delay(4);
	Restart;
}

//Anvil
Script 21 (void)
{
	If(CheckInventory("InventoryHotIron") > 0)
	{
		SetLineSpecial(129, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryHotIron", 1);

		SetWeapon("Fists");
		SetActorProperty(0, APROP_Speed, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
		ACS_NamedExecuteWithResult("TakeWeapons");

		Delay(16);
		SpawnSpotForced("IDHotIron", 116, 502, 0);
		PlaySound(116, "Metal/Bounce2");
		Delay(35);
		Thing_Remove(130);
		Delay(16);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(24);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(28);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(35);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(16);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(14);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(18);
		PlaySound(116, "Interaction/AnvilHit");
		Delay(16);
		SpawnSpotForced("IDHammer", 117, 0, 0);
		PlaySound(117, "Metal/Land");
		Delay(35);
		Thing_Remove(502);
		Delay(16);
		SpawnSpotForced("IDFirePokerB", 126, 503, 0);
		PlaySound(131, "Weapons/SteamHiss", CHAN_AUTO);
		Delay(50);
		SpawnSpotForced("SteamPuffMedium", 131, 503, 0);
		Delay(50);
		Thing_Remove(503);
		Delay(16);
		Thing_Remove(132);
		PlaySound(0, "Interaction/RopeTie", CHAN_AUTO);
		Delay(35);
		SpawnSpotForced("InventoryIronLever", 116, 0, 0);
		PlaySound(116, "Ammo/SpikeMagBounce", CHAN_AUTO);
		SpawnSpotForced("IDPliers", 127, 0, 0);

		ACS_NamedExecuteWithResult("GiveWeapons");
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	{
	Print(s:"The sturdy anvil looks ready to be used.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//ABHAOTH PAINTING
Script 34 (void)
{
	Thing_Remove(211);
	SpawnSpotForced("IDPaintingForge", 212, 0, 64);
}

//TREASURY LOCK
Script 201 (void)
{
	If(GetSectorFloorZ(201, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(201, 8, 1);
		TagWait(201);
	}
	else
	If(GetSectorFloorZ(201, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(201, 8, 1);
		TagWait(201);
	}
}

Script 202 (void)
{
	If(GetSectorFloorZ(202, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(202, 8, 1);
		TagWait(202);
	}
	else
	If(GetSectorFloorZ(202, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(202, 8, 1);
		TagWait(202);
	}
}

Script 203 (void)
{
	If(GetSectorFloorZ(203, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(203, 8, 1);
		TagWait(203);
	}
	else
	If(GetSectorFloorZ(203, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(203, 8, 1);
		TagWait(203);
	}
}

Script 204 (void)
{
	If(GetSectorFloorZ(204, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(204, 8, 1);
		TagWait(204);
	}
	else
	If(GetSectorFloorZ(204, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(204, 8, 1);
		TagWait(204);
	}
}

Script 205 (void)
{
	If(GetSectorFloorZ(205, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(205, 8, 1);
		TagWait(205);
	}
	else
	If(GetSectorFloorZ(205, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(205, 8, 1);
		TagWait(205);
	}
}

Script 206 (void)
{
	If(GetSectorFloorZ(206, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(206, 8, 1);
		TagWait(206);
	}
	else
	If(GetSectorFloorZ(206, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(206, 8, 1);
		TagWait(206);
	}
}

Script 207 (void)
{
	If(GetSectorFloorZ(207, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(207, 8, 1);
		TagWait(207);
	}
	else
	If(GetSectorFloorZ(207, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(207, 8, 1);
		TagWait(207);
	}
}

Script 208 (void)
{
	If(GetSectorFloorZ(208, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(208, 8, 1);
		TagWait(208);
	}
	else
	If(GetSectorFloorZ(208, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(208, 8, 1);
		TagWait(208);
	}
}

Script 209 (void)
{
	If(GetSectorFloorZ(209, 0, 0) == 1484.0)
	{
		Floor_LowerByValue(209, 8, 1);
		TagWait(209);
	}
	else
	If(GetSectorFloorZ(209, 0, 0) == 1483.0)
	{
		Floor_RaiseByValue(209, 8, 1);
		TagWait(209);
	}
}

Script 210 (void)
{
	If(GetSectorFloorZ(201, 0, 0) == 1483.0 && GetSectorFloorZ(202, 0, 0) == 1484.0 && GetSectorFloorZ(203, 0, 0) == 1483.0 && GetSectorFloorZ(204, 0, 0) == 1484.0 && GetSectorFloorZ(205, 0, 0) == 1483.0 && GetSectorFloorZ(206, 0, 0) == 1484.0 && GetSectorFloorZ(207, 0, 0) == 1483.0 && GetSectorFloorZ(208, 0, 0) == 1484.0 && GetSectorFloorZ(209, 0, 0) == 1484.0)
	{
		SetLineSpecial(193, 0, 0, 0, 0, 0, 0);
		Ceiling_RaiseByValue(210, 4, 72);
		TagWait(210);
	}
	else
	{
	Print(s:"The switch does nothing.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}



//ELEVATOR DOOR
Script 36 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
		Generic_Door(217, 8, 0, 34, 0);
		TagWait(217);
	}
	else
	Print(s:"This door requires an Earth key to open.");
}

//ELEVATOR END
Script 37 (void)
{
	If(GetActorProperty(602, APROP_Health) > 0 && IsTIDUsed(603))
	{
		GiveInventory("ScriptHasSavedAndrik", 1);
	}

	If(CheckInventory("ScriptHasSavedAndrik") > 0 && CheckProximity(0, "IDBearWarrior", 180.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 180.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Finally! Let's get back into Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	else
	If(CheckInventory("ScriptHasSavedAndrik") > 0 && CheckProximity(0, "IDReaver", 180.0, 1) || CheckProximity(0, "IDReaverGuarding", 180.0, 1))
    {
	Hudmessage(s:"Reaver:    Back to Valc, at last. There might still be hope."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	else
	{
		If(CheckInventory("ScriptHasSavedAndrik") == 0 && CheckProximity(0, "IDReaver", 180.0, 1) || CheckProximity(0, "IDReaverGuarding", 180.0, 1))
        {
	    Hudmessage(s:"Reaver:    Killing that dwarf was probably for the best. We can't risk having him contaminate this place. Now back to Valc..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.0, 0.2, 0.5);
        }
		else
		If(CheckInventory("ScriptHasSavedAndrik") == 0 && CheckProximity(0, "IDBearWarrior", 180.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 180.0, 1))
        {
	    Hudmessage(s:"Bear Warrior:    Good call killing that dwarf... can't risk having him spread that corruption around. Now back to Valc..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
        }
	}

	Line_SetBlocking(215, BLOCK_PLAYERS, 0);
	Thing_Remove(230);
	Delay(50);
	FloorAndCeiling_LowerByValue(216, 4, 480);
	Floor_LowerByValue(237, 4, 480);
	Floor_LowerByValue(218, 4, 480);
	Ceiling_LowerByValue(219, 4, 480);
	Delay(9*35);
	PlaySound(0, "Ambient/Rust", CHAN_AUTO, 0.8);
	Delay(1*35);

	If(CheckProximity(0, "IDReaver", 180.0, 1) || CheckProximity(0, "IDReaverGuarding", 180.0, 1))
    {
	Hudmessage(s:"Reaver:    Did you hear that?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
    }
	else
	If(CheckProximity(0, "IDBearWarrior", 180.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 180.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    You hear that?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }

	Delay(5*35);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 0.8);
	Radius_Quake(1, 35, 0, 1, 0);
	Delay(3*35);
	ChangeCeiling(234, "Iron_05B");
	Light_Fade(235, 100, 1);
	Delay(4);
	ChangeCeiling(234, "Iron_05");
	Light_Fade(235, 132, 1);
	Delay(6);
	ChangeCeiling(234, "Iron_05B");
	Light_Fade(235, 100, 1);
	Delay(4);
	ChangeCeiling(234, "Iron_05");
	Light_Fade(235, 132, 1);
	Delay(2*35);
	PlaySound(0, "Ambient/Rust", CHAN_AUTO, 1.0);
	Radius_Quake(2, 105, 0, 1, 0);
	Light_Fade(235, 100, 1);
	ChangeCeiling(234, "Iron_05B");
	Delay(4);
	ChangeCeiling(234, "Iron_05");
	Light_Fade(235, 132, 1);
	Delay(8);
	ChangeCeiling(234, "Iron_05B");
	Light_Fade(235, 100, 1);
	Delay(4);
	ChangeCeiling(234, "Iron_05");
	Light_Fade(235, 132, 1);
	Delay(6);
	ChangeCeiling(234, "Iron_05B");
	Light_Fade(235, 100, 1);
	Delay(4);
	ChangeCeiling(234, "Iron_05");
	Light_Fade(235, 132, 1);
	TagWait(216);
	Thing_Remove(290);
	Delay(5*35);
	ChangeCeiling(234, "Iron_05B");
	Light_Fade(235, 100, 1);
	Light_Fade(255, 100, 1);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 1.0);
	Radius_Quake(3, 105, 0, 1, 0);
	If(CheckProximity(0, "IDBearWarrior", 180.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 180.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Uhhh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 1.5);
    PlaySound(0, "BearWarrior/Hmm", CHAN_AUTO);
	}
	Delay(3*35);
	PlaySound(0, "Ambient/Rust", CHAN_AUTO, 0.8);
	Delay(2*35);
	If(CheckProximity(0, "IDReaver", 180.0, 1) || CheckProximity(0, "IDReaverGuarding", 180.0, 1))
    {
	Hudmessage(s:"Reaver:    This isn't going to end well..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.0, 0.2, 1.5);
	PlaySound(0, "Reaver/Hmm", CHAN_AUTO);
	}
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 0.8);
    Delay(5*35);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO, 1.0);
	Radius_Quake(10, 305, 0, 1, 0);
	Sector_SetGravity(235, 0, 0);
	FloorAndCeiling_LowerByValue(216, 30, 900);
	Floor_LowerByValue(218, 30, 900);
	Floor_LowerByValue(238, 30, 900);
	Ceiling_LowerByValue(219, 30, 900);
	Sector_ChangeSound(216, 16);
	Delay(16);
	ThrustThingZ(0, 10, 0, 1);
	//Delay(2*35);
	FadeTo(0,0,0, 1.0, 3.0);
	Delay(2*35);//
	TagWait(216);
	ThrustThingZ(0, 50, 1, 0);
	Delay(4);
	PlaySound(0, "Character/ZanCrashLand", CHAN_AUTO);
	If(CheckProximity(0, "IDReaver", 180.0, 1) || CheckProximity(0, "IDReaverGuarding", 180.0, 1))
    {
	Delay(8);
	PlaySound(0, "Reaver/Death", CHAN_AUTO);
    }
	If(CheckProximity(0, "IDBearWarrior", 180.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 180.0, 1))
    {
	Delay(8);
	PlaySound(0, "BearWarrior/Death", CHAN_AUTO);
    }
	Delay(3*35);

	ACS_NamedExecuteWithResult("FriendlyCounter");

	Exit_Normal(0);
}



//PRINTS
Script 3 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"TO ICEPEAK FORTRESS"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 11 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The last entry in the book is signed by Lancer Dendra)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.76, 45.0);
	Hudmessage(s:"The journey has been a mess. The road's been nearly entirely swallowed by snow, and many of the ice"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"caves have collapsed, I've even lost my lance in a cave-in, and perhaps I would have lost a lot more"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"if I hadn't shielded myself in time...    It feels unnatural for the ground to tremble like this, and the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"Dwarves wouldn't normally slack with tending to the path to their fort.    Perhaps Earth Mother Eva"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"can shed some light on what's going on.  I didn't find her at home, so she must be inside her grove. I'll"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"spend the night here and pay her an early visit tomorrow since the dwarves are expecting me by noon."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 12 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"A Study of the Ancients by Earth Mother Eva - Chapter Three, Mechanisms"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.68, 45.0);
	Hudmessage(s:"[...]   I am thoroughly impressed by the precision with which the Ancients have built their contraptions. "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.72, 45.0);
    Hudmessage(s:"It appears that the temple which I'm observing has a trap system meant to keep looters away. It must"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 45.0);
	Hudmessage(s:"have been hundreds of years since the last Ancient set foot in here,  but the trap still works  -  luckily"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.76, 45.0);
    Hudmessage(s:"I have studied fire magic long enough to protect myself from the bolts hurled at me. Besides the trap,"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"I'm researching a gate mechanism that's operated by the same Cyan Crystals we've learned to make   "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"use of.  Perhaps deciphering the nearby inscriptions will help me understand more on how the crystals   "; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"function.   I'm certain that their magical power is doubled by a sort of intelligent design or force.  [...] "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"Thankfully, the ice has preserved a lot of the temple's architecture in good shape.     Still, I cannot  "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"use my magic to melt it lest I'll cause damage, so I'll have to break it with whatever tools I can get."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 13 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A ripped piece of parchment rests on the stump. The writing looks shaky and distressed...)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 45.0);
	Hudmessage(s:"She's dead!   I found Mother Eva laying by her tree, a foul glass in her hand.   Her skin was rippling with  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
    Hudmessage(s:"dark veins and her tongue was violet... the dwarves are not capable of such treachery, and this poison "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"looks far too sophisticated for the humans.  The least I could do was bury her in the earth, so she may  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"rest with her kin at last, but now I'm headed for Valc. Witch Chieftain Zura will have some questions to"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"answer.  And if you who did this returns here, you have my word that no hole will hide you from justice.  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 25 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I saw the brewers haulin' some new furniture in their tower yeer'day. I walked up to Torgrind and asked 'em"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"what in all hells is he doing with that orcish junk.   He shrugged me off and told me it's stylish!    More stylish"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"than what WE make?! Next time he comes around asking for new kegs, make sure to point him to that bleedin'"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"elevator below, and tell him to go ask the orcs fer help. Surely they can craft him some stylish ale kegs too."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 26 (void)
{
	If(GameSkill() == SKILL_HARD && GetActorZ(0) < 1746.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"As we have replaced our old bellows with a crystal powered machine, apprentices shall be allowed to use it to smelt"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"metal.   Simply place yer ore or ingot in the hot hearth, and it shall melt in a mere moment.   Once yer mould fills up  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 35.0);
    Hudmessage(s:"ye're as ready to work it over the anvil as ye'll ever be.  Make sure to turn the heat off before ye clean the hearth.  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
    }
	else
	If(GetActorZ(0) < 1746.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"As we have replaced our old bellows with a crystal powered machine, apprentices shall be allowed to use it to smelt"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"metal.   Simply place yer ore or ingot in the \c[Gold]hot hearth\c-, and it shall melt in a mere moment.   Once yer mould fills up  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 35.0);
    Hudmessage(s:"ye're as ready to work it over the \c[Gold]anvil\c- as ye'll ever be.  Make sure to turn the heat off before ye clean the hearth.  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
    }
}

Script 27 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Tales of Brother Bernard - Brother Bernard in Hell"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.62, 95.0);
	Hudmessage(s:"[...]   and in his search for the dry water and cold flame, brother Bernard hath found himself lost in "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
    Hudmessage(s:"the Pits of Hell.     The boiling tar and pungent sulph did not bear well with him, but alas, he could   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.68, 95.0);
	Hudmessage(s:"find the way back naught.   He daren't ask for directions from the sneering devils, lest they would  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
    Hudmessage(s:"trick him even farther. Our brother hath pondered well over how could he elude this rotten place.  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"Thus he hath pulled a string from his satchel and began to measure Hell left and right, hammering  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"stakes into the ground.  The lord of the devils - who hath been lurking within a puddle aside - would"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"endure watching brother Bernard no longer, as the seed of curiosity crawled hastily into his veins.  "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"'What dost thou do here, fool?  Why art thou measuring my fiefdom?'  asked the trickster.                    "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"'Why I am wishing to build a temple here!' would exclaim our crafty brother.                                                "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"Upon hearing his word, the devil's eyes hath grown red with angst. With a sharp whistle he would urge"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"his fellow tricksters to grasp brother Bernard, and throw him out. So hath he escaped the fiery Hell."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 28 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The Dwarven Society - Introduction. A Summary of the Guilds"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.60, 95.0);
	Hudmessage(s:"[...]    but the Priests are not the only ones to assist the Dwarven Lord. Among his advisors are the    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.64, 95.0);
    Hudmessage(s:"masters of the Four Guilds. Their practical knowledges are essential in upholding Dwarven Society. "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
	Hudmessage(s:"The Blacksmith Guild is composed of miners, smiths and jewelcrafters, all able to turn the lifeblood "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
    Hudmessage(s:"of dry rock into weapons, armors, ornaments and various mechanisms and other mechanical wonders."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"The Carpenter Guild fosters woodcutters, locksmiths, leatherworkers and tinkerers, able to shape  "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
	Hudmessage(s:"the forest into a precise tool.  Their ballistae and catapults are feared across all the battlefields."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.78, 95.0);
	Hudmessage(s:"The Stonemason Guild trains master builders and engineers. Be it wells, keeps, towers or bridges, the"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.82, 95.0);
	Hudmessage(s:"singers of stone are responsible for the backbone of our life and society, as well as our advancement."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"The Brewer Guild spreads our name across the land with their chefs, healers and alchemists. It is also"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"known that they dabble in the less honorable art of espionage, but their skill may be needed at times."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
}

Script 29 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"My Lord, the lock for the treasury has been successfully installed. The combination is 1357.  - Jaromir"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 30 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"If you are reading this, then the orc traitor must have fulfilled her task.     Your duty is to finish off any of the "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"dwarven survivors that have not been affected by the poison  -  it will be easy to tell which is which by the color "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"of the tongue and skin at a later stage. Once the healthy ones are dead, dump the tainted ones into the dungeon"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"below the fortress and have it locked down.   Don't visit back or let anyone else do so, unless you wish for death."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 33 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Closed until the Iron Division campaign ends."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 35 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ELEVATOR TO VALC"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

//SWINGING DOORS

Script 15 (void)
{
  Print(s:"This door is locked from the inside.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 88 (void)
{
If (GetActorZ(0) < 2170.0)
{
  Polyobj_DoorSwing(88,-16,64,105);
}
}

Script 89 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(89,16,64,105);
  Polyobj_DoorSwing(271,-16,64,105);
}
}

Script 90 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(90,-16,64,105);
}
}

Script 91 (void)
{
If (GetActorZ(0) < 1759.0)
{
  Polyobj_DoorSwing(91,16,64,105);
  Polyobj_DoorSwing(269,-16,64,105);
}
}

Script 92 (void)
{
If (GetActorZ(0) < 1745.0 && CheckInventory("AxeKey") > 0)
{
  Polyobj_DoorSwing(92,16,44,105);
}
  else
  {
  Print(s:"This door requires an Axe key to open.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 93 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(93,16,64,105);
}
}

Script 1001 (void)
{
If (GetActorZ(0) < 1630.0 && CheckInventory("StoneKey") > 0)
{
  Polyobj_DoorSwing(1,16,64,105);
}
  else
  {
  Print(s:"This door requires a Stone key to open.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 1002 (void)
{
If (GetActorZ(0) < 1756.0)
{
  Polyobj_DoorSwing(2,16,64,105);
}
}

Script 1003 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(3,16,64,105);
}
}

Script 177 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(177,16,64,105);
}
}

Script 178 (void)
{
If (GetActorZ(0) < 1535.0)
{
  Polyobj_DoorSwing(178,16,64,105);
}
}

Script 179 (void)
{
If (GetActorZ(0) < 1535.0)
{
  Polyobj_DoorSwing(179,16,64,105);
  Polyobj_DoorSwing(360,-16,64,105);
}
}

Script 180 (void)
{
  If (GetActorZ(0) < 2000.0 && CheckInventory("IronKey") > 0)
  {
  Polyobj_DoorSwing(180,-16,64,105);
  }
  else
  If (GetActorZ(0) < 2000.0)
  {
  Print(s:"This door requires an Iron key to open.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 181 (void)
{
If (GetActorZ(0) < 2170.0)
{
  Polyobj_DoorSwing(181,16,64,105);
}
}

Script 182 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(182,-16,64,105);
}
}

Script 270 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(270,16,12,105);
}
}

Script 272 (void)
{
If (GetActorZ(0) < 2000.0)
{
  SetLineSpecial(248, ACS_Execute, 272, 0, 0, 0, 0);
  Polyobj_DoorSwing(272,-16,64,105);
}
}

Script 357 (void)
{
  If (GetActorZ(0) < 2000.0 && CheckInventory("IronKey") > 0)
  {
  Polyobj_DoorSwing(357,-16,64,105);
  }
  else
  If (GetActorZ(0) < 2000.0)
  {
  Print(s:"This door requires an Iron key to open.");
  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}


Script 358 (void)
{
If (GetActorZ(0) < 2000.0)
{
  Polyobj_DoorSwing(358,-16,64,105);
}
}

Script 359 (void)
{
If (GetActorZ(0) < 1748.0)
{
  Polyobj_DoorSwing(359,16,64,105);
  SetLineSpecial(107, ACS_Execute, 359);
  Thing_Remove(660);
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