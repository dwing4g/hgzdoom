#include "zcommon.acs"
//Ore Placed: Iron-3(+1 Brutalizing) Dark-1
//Gold Placed: 90


//LEVEL END
//Map13
//South Exit
Script 1 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	StopSound(0, CHAN_NOPAUSE);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map13", 2, CHANGELEVEL_NOINTERMISSION, -1);
}
//West Exit
Script 66 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	StopSound(0, CHAN_NOPAUSE);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map13", 3, CHANGELEVEL_NOINTERMISSION, -1);
}
//East Exit
Script 82 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	StopSound(0, CHAN_NOPAUSE);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map13", 4, CHANGELEVEL_NOINTERMISSION, -1);
}
//RETURN
int FactoryTeam = 0;
int spec85 = 0;
Script 85 RETURN
{
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	PlaySound(0, "Music/Magnus", CHAN_NOPAUSE, 1.0, false, ATTN_NONE);
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && FactoryTeam == 0)
	{
		FactoryTeam += 1;
		Thing_Destroy(671, 0, 0);
		Thing_Remove(410);
		If(IsTIDUsed(205))
		{
			ACS_Execute(41, 0, 0, 0, 0);
			SetLineSpecial(424, 0, 0, 0, 0, 0, 0);
		}
		SpawnSpotForced("IDBearWarriorStationary", 421, 668, 0);
		SpawnSpotForced("IDReaverStationary", 422, 669, 0);
		SpawnSpotForced("IDFixerStationary", 420, 670, 64);
		SpawnSpotForced("IDInkBottle", 411, 0, 0);
		SpawnSpotForced("IDParchmentSchematicA", 412, 0, 0);
		SpawnSpotForced("IDParchmentSchematicB", 413, 0, 0);
	}

	If(CheckInventory("QuestMap13InvestigateRuins") == 2 && CheckInventory("InventoryMithrilGear") == 0 && CheckInventory("ScriptHasFixedGearMachine") == 0 && IsTIDUsed(499) == 0 && spec85 == 0)
	{
		Thing_Remove(417);
		spec85 += 1;
		Delay(4);
		SpawnSpotForced("InventoryMithrilGear", 418, 499, 0);
	}
	else
	If(CheckInventory("ScriptHasFixedGearMachine") == 1 && IsTIDUsed(499) && spec85 == 1)
	{
		Thing_Remove(499);
		Delay(4);
		SpawnSpotForced("IDMithrilGear", 418, 0, 0);
	}
}
//Friendly Spawner
int DialStart = 0;
Script "FriendlySpawnerCustom" ENTER
{
	If(CheckProximity(0, "IDPillowA", 640.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 681, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 681, 691, 0);
		Delay(1);
	  }
	}
	else
	//If(CheckProximity(0, "IDPillowB", 640.0, 1, CPXF_NOZ)) no idea why this pillow won't work...
	If(CheckProximity(0, "BoneBovaSkeleton", 640.0, 1, CPXF_NOZ))
	{
	  //Hudmessage(s:"Script works so far"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 682, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 682, 691, 0);
		Delay(1);
	  }
	}
	else
	If(CheckProximity(0, "IDPillowC", 640.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 683, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 683, 691, 0);
		Delay(1);
	  }
	}

	//Start Dialogue
	If(DialStart == 0)
	  {
	    Delay(35);
	    If(CheckProximity(0, "IDEarthMother", 640.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 640.0, 1))
	    {
		  DialStart += 1;
	  	  Hudmessage(s:"Earth Mother:    So the ancestral home of the minotaurs has been butchered by demonic contraptions... disgraceful!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    }
	    Delay(6*35);
	    If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	    {
		  DialStart += 1;
		  Hudmessage(s:"Fixer:    Uh... Zan? I d-don't think we should move any further! This place looks d-dangerous!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	  }
}
Script "FriendlySpawnerCustomReturn" RETURN
{
	If(CheckProximity(0, "IDPillowA", 640.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 681, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 681, 691, 0);
		Delay(1);
	  }
	}
	else
	//If(CheckProximity(0, "IDPillowB", 640.0, 1, CPXF_NOZ)) no idea why this pillow won't work...
	If(CheckProximity(0, "BoneBovaSkeleton", 640.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 682, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 682, 691, 0);
		Delay(1);
	  }
	}
	else
	If(CheckProximity(0, "IDPillowC", 640.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 683, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 683, 691, 0);
		Delay(1);
	  }
	}

	//Start Dialogue
	If(DialStart == 0)
	  {
	    Delay(35);
	    If(CheckProximity(0, "IDEarthMother", 640.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 640.0, 1))
	    {
		  DialStart += 1;
	  	  Hudmessage(s:"Earth Mother:    So the ancestral home of the minotaurs has been butchered by demonic contraptions... disgraceful!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    }
	    Delay(6*35);
	    If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	    {
		  DialStart += 1;
		  Hudmessage(s:"Fixer:    Uh... Zan? I d-don't think we should be here! This place looks d-dangerous!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	  }
}



//LEVEL START
int spec8 = 0;
int spec8b = 0;
Script 2 ENTER
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Actor Changes
	SetActorState(135, "Special", 0);

	SetActorFlag(152, "ACTIVATEMCROSS", 0);

	SetActorFlag(290, "SOLID", 0);

	SetActorFlag(308, "BRIGHT", 0);

	SetActorFlag(57, "NOFRICTION", 1);
	SetActorProperty(57, APROP_MaxStepHeight, 0);

	SetActorFlag(428, "NODAMAGE", 1);

	SetActorFlag(175, "SHOOTABLE", 0);

	SetActorFlag(433, "NOBLOCKMAP", 0);

	//Music
	SetMusic("HTrack25");
	PlaySound(0, "Music/Magnus", CHAN_NOPAUSE, 1.0, false, ATTN_NONE);

	//Machines
	Ceiling_Waggle(11, 12, 64, 1, 300);
	Ceiling_CrushAndRaiseA(14, 24, 10, 16);
	Ceiling_CrushAndRaiseA(17, 32, 4, 16);
	Ceiling_CrushAndRaiseA(19, 32, 12, 16);
	Ceiling_CrushAndRaiseA(18, 32, 32, 16);

	Scroll_Floor(22, -48, 0, SCROLL_AND_CARRY);
	Scroll_Floor(23, 0, 32, SCROLL_AND_CARRY);

	Scroll_Floor(69, 0, -32, SCROLL_AND_CARRY);

	ACS_Execute(21, 0, 0, 0, 0);
	ACS_Execute(24, 0, 0, 0, 0);

	Ceiling_MoveToValue(108, 9999, 854, 1);
	Floor_MoveToValue(108, 9999, 903, 1);

	Ceiling_MoveToValue(111, 9999, 342, 1);
	Floor_MoveToValue(111, 9999, 391, 1);

	ACS_Execute(6, 0, 0, 0, 0);
	ACS_Execute(7, 0, 0, 0, 0);

	Delay(105);
	If(spec8 > 0)
	{
		Ceiling_MoveToValue(111, 9999, 286, 1);
	    Floor_MoveToValue(111, 9999, 335, 1);
		ACS_Execute(8, 0, 0, 0, 0);
	}

	//Ancient City Map
	If(CheckInventory("InventoryJournal") == 1 && spec8b == 0)
	{
		spec8b += 1;
		SpawnSpotForced("InventoryAncientCityMap", 432, 0, 0);
	}
}

//DIALOGUE
//Greeting
Script 91 (void)
{
	If((CheckProximity(0, "IDEarthMother", 640.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 640.0, 1)) && (GetActorProperty(668, APROP_Health) > 0 || GetActorProperty(669, APROP_Health) > 0))
	    {
		   SetLineSpecial(419, 0, 0, 0, 0, 0, 0);
	  	   Hudmessage(s:"Earth Mother:    'tis nice to see a friendly face within this fiery inferno."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_GREEN, 1.5, 0.82, 4.5, 0.2, 0.5);
	    }
	    else
	    If((CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1)) && (GetActorProperty(668, APROP_Health) > 0 || GetActorProperty(669, APROP_Health) > 0))
	    {
			SetLineSpecial(419, 0, 0, 0, 0, 0, 0);
		    Hudmessage(s:"Fixer:    Hello!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.82, 2.5, 0.2, 0.5);
	    }
}
//Bear Warrior
int dial86 = 4;
int spec86 = 0;
Script 86 (void)
{
	If(GetActorProperty(668, APROP_Health) > 0)
	{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2 && spec86 == 0)
	  {
	  PlaySound(668, "BearWarrior/Hmm", CHAN_AUTO);
      Hudmessage(s:"Bear Warrior:    You're looking for a sapper team? Hmm, they should be in the mines to the east of here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 6.5, 0.2, 0.5);
	  Spec86 += 1;
	  Delay(2*35);
	}
	else
	If(dial86 % 4 == 0)
	{
	PlaySound(668, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Nice to have you here, Zan. Guarding this place sucks, but we can't let the demons return."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 6.5, 0.2, 0.5);
	Dial86 += 1;
	Delay(2*35);
	}
	else
	If(dial86 % 4 == 1)
	{
	PlaySound(668, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    You sure left a mess around this place. Gotta love blowing some shit up, eh?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 6.5, 0.2, 0.5);
	Dial86 += 1;
	Delay(2*35);
	}
	else
	If(dial86 % 4 == 2)
	{
	PlaySound(668, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    These machines make so much noise and heat. It's starting to get on my nerves."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 6.5, 0.2, 0.5);
	Dial86 += 1;
	Delay(2*35);
	}
	else
	If(dial86 % 4 == 3)
	{
    Hudmessage(s:"Bear Warrior:    I can't believe the demons had the brains to build such a place. It rivals the Valc Forge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.90, 6.5, 0.2, 0.5);
	Dial86 += 1;
	Delay(2*35);
	}
	}
}

//Reaver Dialogue
int dial87 = 4;
int spec87 = 0;
Script 87 (void)
{
	If(GetActorProperty(669, APROP_Health) > 0)
	{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2 && spec87 == 0)
	  {
	  PlaySound(669, "Reaver/Hmm", CHAN_AUTO);
      Hudmessage(s:"Reaver:    We haven't seen any sappers come by. They might be trapped in the eastern mines, outside of town."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  spec87 += 1;
	  Delay(2*35);
	}
	else
	If(dial87 % 4 == 0)
	{
	PlaySound(669, "Reaver/Huh", CHAN_AUTO);
    Hudmessage(s:"Reaver:    With the demons being able to teleport around here, we need to keep our eyes peeled."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial87 += 1;
	Delay(2*35);
	}
	else
	If(dial87 % 4 == 1)
	{
    Hudmessage(s:"Reaver:    We can't let the horned assholes recover their gear. Too bad we can't just blow this place up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial87 += 1;
	Delay(2*35);
	}
	else
	If(dial87 % 4 == 2)
	{
	PlaySound(669, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Reaver:    Who knows what other weapons would have been made here if you hadn't shown up to stop them..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial87 += 1;
	Delay(2*35);
	}
	else
	If(dial87 % 4 == 3)
	{
    Hudmessage(s:"Reaver:    I swear I heard voices coming from one of the machines. What kind of power runs through them?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial87 += 1;
	Delay(2*35);
	}
	}
}

//Fixer Startled
Script 88 (void)
{
	If(GetActorProperty(670, APROP_Health) > 0)
	{
		SetLineSpecial(414, 0, 0, 0, 0, 0, 0);
		NoiseAlert(0, 0);
		PlaySound(670, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    Aaah! A demon!!! ... oh.... Zan, it's you. You startled me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
}

//Fixer Dialogue
int dial89 = 4;
Script 89 (void)
{
	If(GetActorProperty(670, APROP_Health) > 0)
	{
	If(dial89 % 4 == 0)
	{
	PlaySound(670, "Fixer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Fixer:    I'm supposed to document the way these machines operate... but I'm too nervous to stay focused!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial89 += 1;
	Delay(2*35);
	}
	else
	If(dial89 % 4 == 1)
	{
    Hudmessage(s:"Fixer:    I can recognize bits of dwarven and Iron Division technology within this unholy patchwork. Creepy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial89 += 1;
	Delay(2*35);
	}
	else
	If(dial89 % 4 == 2)
	{
	PlaySound(670, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Fixer:    I touched a pipe and I started hearing whispers. It's as if the factory is fuelled by damned souls..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial89 += 1;
	Delay(2*35);
	}
	else
	If(dial89 % 4 == 3)
	{
    Hudmessage(s:"Fixer:    I can't help but wonder who helped the demons build this place... it's scary, but also impressive."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial89 += 1;
	Delay(2*35);
	}
    }
}


//LAVA DAMAGE
Script 3 ENTER
{
	SectorDamage(89, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//LIFT CRUSHER
Script 16 ENTER
{
	SectorDamage(38, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(72, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(226, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(230, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//ENERGY PILLARS
Script 6 (void)
{
	Ceiling_MoveToValue(108, 16, 342, 1);
	Floor_MoveToValue(108, 16, 391, 1);
	Ceiling_MoveToValue(109, 16, 342, 1);
	Ceiling_MoveToValue(110, 9999, 342, 1);
	TagWait(108);
	TagWait(109);
	TagWait(110);
	Delay(16);
	Ceiling_MoveToValue(108, 128, 854, 1);
	Floor_MoveToValue(108, 128, 903, 1);
	Ceiling_MoveToValue(109, 9999, 854, 1);
	Ceiling_MoveToValue(110, 128, 854, 1);
	TagWait(108);
	TagWait(109);
	TagWait(110);
    Radius_Quake(6, 70, 0, 7, 117);
	Radius_Quake(1, 24, 0, 13, 117);
    Delay(70);
	Restart;
}

Script 7 (void)
{
	Ceiling_MoveToValue(111, 128, 854, 1);
	Floor_MoveToValue(111, 128, 903, 1);
	Ceiling_MoveToValue(112, 9999, 854, 1);
	Ceiling_MoveToValue(113, 128, 854, 1);
	TagWait(111);
	TagWait(112);
	TagWait(113);
	Radius_Quake(6, 70, 0, 7, 118);
	Radius_Quake(1, 24, 0, 13, 118);
	Delay(70);
	Ceiling_MoveToValue(111, 16, 342, 1);
	Floor_MoveToValue(111, 16, 391, 1);
	Ceiling_MoveToValue(112, 16, 342, 1);
	Ceiling_MoveToValue(113, 9999, 342, 1);
	TagWait(111);
	TagWait(112);
	TagWait(113);
	Delay(16);
	Restart;
}

Script 8 (void)
{
	Ceiling_MoveToValue(114, 128, 854, 1);
	Floor_MoveToValue(114, 128, 903, 1);
	Ceiling_MoveToValue(115, 9999, 854, 1);
	Ceiling_MoveToValue(116, 128, 854, 1);
	TagWait(114);
	TagWait(115);
	TagWait(116);
	Radius_Quake(6, 70, 0, 7, 119);
	Radius_Quake(1, 24, 0, 13, 119);
	Delay(70);
	Ceiling_MoveToValue(114, 16, 342, 1);
	Floor_MoveToValue(114, 16, 391, 1);
	Ceiling_MoveToValue(115, 16, 342, 1);
	Ceiling_MoveToValue(116, 9999, 342, 1);
	TagWait(114);
	TagWait(115);
	TagWait(116);
	Delay(16);
	Restart;
}

//Fourth Pillar Activation
Script 9 (void)
{
	If(spec8 == 0 && GetActorZ(0) > -200.0)
	{
		spec8 += 1;
		ACS_Execute(60, 0, 0, 0, 0);
		Delay(16);
		Radius_Quake(3, 175, 0, 5, 119);
		Delay(35);
		Ceiling_MoveToValue(114, 4, 342, 1);
	    Floor_MoveToValue(114, 4, 391, 1);
		Ceiling_MoveToValue(116, 4, 391, 1);
		TagWait(114);
		TagWait(116);
		Delay(16);
		ACS_Execute(8, 0, 0, 0, 0);
		Floor_RaiseByValue(12, 1, 16);
	    Floor_RaiseByValue(121, 1, 16);
	}
}

//BIG STORAGE ROOM SCENE
Script 4 (void)
{
	SetLineSpecial(104, 0, 0, 0, 0, 0, 0);

	SpawnSpotForced("PitLord", 103, 660, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 103, 0, 0);
	PlaySound(103, "misc/teleport", CHAN_AUTO);
	//SetActorFlag(103, "AMBUSH", 1);
	Delay(35);
	SpawnSpotForced("Hellblaze", 102, 661, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 102, 661, 0);
	PlaySound(102, "misc/teleport", CHAN_AUTO);
	//SetActorFlag(102, "AMBUSH", 1);

	Delay(35);
	Thing_SetGoal(660, 105, 0, 1);
	SetActorAngle(661, random(0,1.0));
	Delay(35);
	SetActorAngle(661, random(0,1.0));
	Delay(35);
	SetActorAngle(661, 0.25);
	Delay(35);
	Thing_Deactivate(660);
	SetActorAngle(660, 0.25);
	Thing_Deactivate(661);
	Delay(35);
	SetActorAngle(106, 0.5);
	SetActorAngle(107, 1.0);
	Delay(70);
	SetActorAngle(106, 0.75);
	SetActorAngle(107, 0.75);

	Delay(50);

	SpawnSpotForced("HedonTeleportFogDemon", 58, 0, 0);
	PlaySound(58, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("HedonTeleportFogDemon", 106, 0, 0);
	PlaySound(106, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("HedonTeleportFogDemon", 107, 0, 0);
	PlaySound(107, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("HedonTeleportFogDemon", 660, 0, 0);
	PlaySound(660, "misc/teleport", CHAN_AUTO);

	Thing_Remove(58);
	Thing_Remove(106);
	Thing_Remove(107);
	Thing_Remove(660);
}

//REMOVE BIG STORAGE ROOM MONSTERS
int spec5 = 0;
Script 5 (void)
{
	Thing_Remove(661);
	Thing_Remove(53);
	//Thing_Remove(57);

	If(spec5 == 0)
	{
	  spec5 += 1;
	  SpawnSpot("ShadowAbhaothSitting", 120, 666, 128);
	}
}

//PRESSURE OVERCHARGE SWITCH
Script 13 (void)
{
	Delay(12);
	SetActorState(135, "Spawn", 0);
	FloorAndCeiling_RaiseByValue(25, 2, 30);
	TagWait(25);
	Radius_Quake(1, 140, 0, 6, 134);
	Delay(35);
	SetLineTexture(136, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	PlaySound(135, "Weapons/PotionDie", CHAN_AUTO);
	SpawnSpotForced("JunkBrokenGlassA", 148, 0, 0);
	SpawnSpotForced("DustCloud", 148, 0, 0);
	Delay(105);
	Radius_Quake(8, 105, 2, 6, 134);
	SetActorState(135, "Special", 0);
	SpawnSpotForced("ExplosionMedium", 137, 0, 0);
	Floor_LowerByValue(26, 9999, 111);
	Floor_LowerByValue(101, 9999, 88);
	FloorAndCeiling_RaiseByValue(147, 1, 2);
	SpawnSpotForced("DustCloud", 138, 0, 0);
	SpawnSpotForced("ExplosionHuge", 139, 0, 0);
	Floor_RaiseByValue(140, 9999, 2);
	ChangeFloor(140, "Iron_12");
	Thing_Remove(141);
	SpawnSpotForced("IDValve", 142, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionLarge", 143, 0, 0);
	Delay(6);
	Thing_Destroy(144, 1, 27);
	SpawnSpotForced("ExplosionHuge", 134, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 145, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 146, 0, 0);
}

//BIG LAVA CAVE ROCKFALL
Script 14 (void)
{
	SetLineSpecial(123, 0, 0, 0, 0, 0, 0);
	Radius_Quake(4, 105, 0, 15, 128);
	SpawnSpotForced("ExplosionHuge", 126, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 127, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 128, 0, 0);
	FloorAndCeiling_LowerByValue(130, 96, 705);
	FloorAndCeiling_LowerByValue(131, 128, 676);
	Thing_Activate(129);
	ThrustThingZ(129, 8, 1, 1);
	TagWait(131);
	SpawnSpotForced("ExplosionHuge", 132, 0, 0);
	FloorAndCeiling_LowerByValue(131, 4, 32);
	TagWait(130);
	SpawnSpotForced("ExplosionHuge", 133, 0, 0);
	FloorAndCeiling_LowerByValue(130, 4, 32);
}


//BULLET MACHINE
int Spec20 = 1;
int Spec22 = 0;
Script 20 (void)
{
	If(Spec20 == 0)
	{
	  Spec20 += 1;
	  SetActorPitch(166, 0.65);
	  PlaySound(166, "Interaction/MachineOn");
	  ACS_Execute(21, 0, 0, 0, 0);
	  Thing_Activate(170);
	  Floor_LowerByValue(12, 1, 4);
	  Floor_LowerByValue(121, 1, 4);
	  TagWait(121);
	}
	else
	{
	  Spec20 -= 1;
	  SetActorPitch(166, 0.75);
	  PlaySound(166, "Interaction/MachineOn");
	  ACS_Terminate(21, 0);
	  Thing_Deactivate(170);
	  Floor_RaiseByValue(12, 1, 4);
	  Floor_RaiseByValue(121, 1, 4);
	  TagWait(121);
	}
}
Script 21 (void)
{
	If(Spec20 == 1)
	{
	Ceiling_MoveToValue(153, 16, 972, 1);
	TagWait(153);
	If(Spec22 > 0)
	{
		SpawnSpotForced("JunkBulletCasing", 167, 663, 0);
		Thing_Destroy(663, 0, 171);
	}
	Ceiling_MoveTovalue(153, 8, 948, 1);
	TagWait(153);
	Restart;
	}
}

Script 22 (void)
{
	If(CheckInventory("InventoryIronLever") > 0 && Spec22 == 0 && GameSkill() != 5)
	{
		TakeInventory("InventoryIronLever", 1);
		SpawnSpotForced("IDLever", 168, 662, 128);
		SetActorPitch(662, 0.75);
		PlaySound(168, "Metal/Bounce1", CHAN_AUTO);
		Delay(16);
		SetActorPitch(662, 0.65);
	    PlaySound(168, "Interaction/MachineOn");
		Delay(16);
		Spec22 += 1;
		Scroll_Floor(169, 80, 0, SCROLL_AND_CARRY);
		SetLineTexture(60, SIDE_FRONT, TEXTURE_BOTTOM, "Gear_A1");
		Thing_activate(185);
	}
	else
	If(CheckInventory("InventoryIronLever") == 0 && Spec22 == 0 && GameSkill() != 5)
	{
		Print(s:"The mechanism appears to be missing a lever.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}

//PART MACHINE
int Spec23 = 1;
Script 23 (void)
{
	If(Spec23 == 0)
	{
	  Spec23 += 1;
	  SetActorPitch(172, 0.65);
	  PlaySound(172, "Interaction/MachineOn");
	  ACS_Execute(24, 0, 0, 0, 0);
	  Thing_Activate(173);
	  Floor_LowerByValue(12, 1, 4);
	  Floor_LowerByValue(121, 1, 4);
	  TagWait(121);
	}
	else
	{
	  Spec23 -= 1;
	  SetActorPitch(172, 0.75);
	  PlaySound(172, "Interaction/MachineOn");
	  ACS_Terminate(24, 0);
	  TagWait(174);
	  Ceiling_LowerAndCrush(174, 16, 20, 0);
	  Thing_Deactivate(173);
	  Floor_RaiseByValue(12, 1, 4);
	  Floor_RaiseByValue(121, 1, 4);
	  TagWait(121);
	}
}
Script 24 (void)
{
	If(Spec23 == 1)
	{
	Ceiling_MoveToValue(174, 8, 909, 1);
	TagWait(174);
	Ceiling_LowerAndCrush(174, 16, 16, 0);
	TagWait(174);
	Restart;
	}
}

//MONSTER HEAD LINE ACTIVATION
Script 93 (void)
{
	Delay(4);
    SetActorFlag(901, "ACTIVATEMCROSS", 1);
	Delay(12);
	Restart;
}
Script 94 (void)
{
	ACS_Terminate(93, 0);
	SetActorFlag(901, "ACTIVATEMCROSS", 0);
}
Script 95 (void)
{
	Line_SetBlocking(425, 0, BLOCKF_EVERYTHING);
}
Script 99 (void)
{
	SetActorFlag(691, "ACTIVATEMCROSS", 0);
}

//RUBY MACHINE
//Autosave
Script 64 (void)
{
	If(GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Thing_Remove(283);
		Autosave();
	}
}
int Spec31 = 0;
int Spec32 = 0;
int Spec33 = 0;
int Spec34 = 0;
//Reset
Script 30 (void)
{
	If(Spec31 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Spec31 -= 1;
		SetActorPitch(177, 0.75);
	    PlaySound(177, "Interaction/MachineOn");
		Scroll_Floor(178, 0, 0, SCROLL_AND_CARRY);
		Thing_Deactivate(186);
	}
	If(Spec32 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Spec32 -= 1;
		SetActorPitch(179, 0.75);
	    PlaySound(179, "Interaction/MachineOn");
		Scroll_Floor(180, 0, 0, SCROLL_AND_CARRY);
		Thing_Deactivate(187);
	}
	If(Spec33 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Spec33 -= 1;
		SetActorPitch(181, 0.75);
	    PlaySound(181, "Interaction/MachineOn");
		Scroll_Floor(182, 0, 0, SCROLL_AND_CARRY);
		Thing_Deactivate(188);
	}
	If(Spec34 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Spec34 -= 1;
		SetActorPitch(183, 0.75);
	    PlaySound(183, "Interaction/MachineOn");
		Scroll_Floor(184, 0, 0, SCROLL_AND_CARRY);
		Thing_Deactivate(189);
	}
}
//North Lever
Script 31 (void)
{
	If(Spec31 == 0 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		SetActorPitch(177, 0.65);
	    PlaySound(177, "Interaction/MachineOn");
		Delay(42);
		ACS_Execute(30, 0, 0, 0, 0);
		Delay(8);
		Spec31 += 1;
		Scroll_Floor(178, -32, 0, SCROLL_AND_CARRY);
		Thing_Activate(186);
	}
	else
	If(Spec31 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
	//	Spec31 -= 1;
	//	SetActorPitch(177, 0.75);
	//  PlaySound(177, "Interaction/MachineOn");
	//	Scroll_Floor(178, 0, 0, SCROLL_AND_CARRY);
	//	Thing_Deactivate(186);
	}
	else
	{
	Print(s:"The machine does not seem to have enough power to be operated.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}

}
//West Lever
Script 32 (void)
{
	If(Spec32 == 0 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		SetActorPitch(179, 0.65);
	    PlaySound(179, "Interaction/MachineOn");
		Delay(42);
		ACS_Execute(30, 0, 0, 0, 0);
		Delay(8);
		Spec32 += 1;
		Scroll_Floor(180, 0, -32, SCROLL_AND_CARRY);
		Thing_Activate(187);
	}
	else
	If(Spec32 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
	//	Spec32 -= 1;
	//	SetActorPitch(179, 0.75);
	//  PlaySound(179, "Interaction/MachineOn");
	//	Scroll_Floor(180, 0, 0, SCROLL_AND_CARRY);
	//	Thing_Deactivate(187);
	}
	else
	{
	Print(s:"The machine does not seem to have enough power to be operated.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
//South Lever
Script 33 (void)
{
	If(Spec33 == 0 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		SetActorPitch(181, 0.65);
	    PlaySound(181, "Interaction/MachineOn");
		Delay(42);
		ACS_Execute(30, 0, 0, 0, 0);
		Delay(8);
		Spec33 += 1;
		Scroll_Floor(182, 32, 0, SCROLL_AND_CARRY);
		Thing_Activate(188);
	}
	else
	If(Spec33 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		//Spec33 -= 1;
		//SetActorPitch(181, 0.75);
	    //PlaySound(181, "Interaction/MachineOn");
		//Scroll_Floor(182, 0, 0, SCROLL_AND_CARRY);
		//Thing_Deactivate(188);
	}
	else
	{
	Print(s:"The machine does not seem to have enough power to be operated.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
//East Lever
Script 34 (void)
{
	If(Spec34 == 0 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		SetActorPitch(183, 0.65);
	    PlaySound(183, "Interaction/MachineOn");
		Delay(42);
		ACS_Execute(30, 0, 0, 0, 0);
		Delay(8);
		Spec34 += 1;
		Scroll_Floor(184, 0, 32, SCROLL_AND_CARRY);
		Thing_Activate(189);
	}
	else
	If(Spec34 == 1 && GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
	//	Spec34 -= 1;
	//	SetActorPitch(183, 0.75);
	//  PlaySound(183, "Interaction/MachineOn");
	//	Scroll_Floor(184, 0, 0, SCROLL_AND_CARRY);
	//	Thing_Deactivate(189);
	}
	else
	{
	Print(s:"The machine does not seem to have enough power to be operated.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
//BELL RING
int Spec25 = 0;
Script 25 (void)
{
	If(GetActorZ(0) < -856.0)
	{
	ACS_Terminate(67, 0);
	PlaySound(175, "Interaction/Bell", CHAN_AUTO);
	Spec25 += 1;
	Delay(16);
	If(Spec25 == 3)
	  {
	  ACS_Execute(67, 0, 0, 0, 0);
	  }
	ACS_Execute(68, 0, 0, 0, 0);
	}
}
Script 67 (void)
{
	    Radius_Quake(2, 35, 0, 1, 0);
		Delay(1);
		Delay(1);
		Delay(1);
		Delay(1);
		Delay(1);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		Delay(5);
		SpawnSpot("Hellblaze", 176, 0, 192);
	    SpawnSpot("HedonTeleportFogDemon", 176, 0, 0);
	    PlaySound(176, "misc/teleport", CHAN_AUTO, 1.0, false, ATTN_NONE);
		SetLineTexture(68, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(68, SIDE_BACK, TEXTURE_MIDDLE, "");
		Line_SetBlocking(68, 0, BLOCKF_EVERYTHING);
}
Script 68 (void)
{
	Delay(70);
	Spec25 = 0;
}

//FLAME TURRETS
Script 41 (void)
{
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
	Delay(50);
	Radius_Quake(2, 70, 0, 6, 208);
	Delay(70);
	Radius_Quake(5, 105, 1, 6, 208);
	SpawnSpotForced("ExplosionMedium", 209, 0, 0);
	SpawnSpotForced("DustCloud", 209, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 210, 0, 0);
	SpawnSpotForced("DustCloud", 210, 0, 0);
	Ceiling_RaiseByValue(80, 9999, 116);
	Ceiling_RaiseByValue(81, 9999, 180);
	Thing_Remove(205);
	SetLineTexture(206, SIDE_FRONT, TEXTURE_BOTTOM, "Mural04");
	Thing_Remove(207);
	Delay(16);
	SpawnSpotForced("ExplosionLarge", 211, 0, 0);
	SpawnSpotForced("DustCloud", 211, 0, 0);
}

Script 42 (void)
{
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
	Delay(35);
	Radius_Quake(2, 70, 0, 6, 212);
	Delay(70);
	Radius_Quake(5, 105, 1, 16, 212);
	SpawnSpotForced("ExplosionMedium", 213, 0, 0);
	SpawnSpotForced("DustCloud", 213, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 214, 0, 0);
	SpawnSpotForced("DustCloud", 214, 0, 0);
	FloorAndCeiling_RaiseByValue(219, 9999, 600);
	Thing_Remove(218);
	SetLineTexture(216, SIDE_FRONT, TEXTURE_BOTTOM, "Mural04");
	Thing_Remove(217);
	Delay(16);
	SpawnSpotForced("ExplosionLarge", 215, 0, 0);
	SpawnSpotForced("DustCloud", 215, 0, 0);
}

//DIGGING MACHINE
Script 65 (void)
{
	If(GetSectorFloorZ(121, 0, 0) >= 32.0)
	{
	SetLineSpecial(302, 0, 0, 0, 0, 0, 0);
	Autosave();
	Delay(16);
	Thing_Activate(291);
	Delay(24);
	SetLineTexture(288, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	Radius_Quake(1, 490, 0, 10, 287);
	Polyobj_Move(1, 8, 128, 610);
	Polyobj_Move(2, 8, 128, 610);
	Delay(35);
	SpawnSpotForced("DustCloud", 292, 0, 0);
	PlaySound(292, "Interaction/Wallpick", CHAN_AUTO, 0.7);
	PlaySound(292, "Ambient/Rocks", CHAN_AUTO, 1.0);
	Delay(70);
	SpawnSpotForced("DustCloud", 293, 0, 0);
	PlaySound(293, "Interaction/Wallpick", CHAN_AUTO, 0.5);
	PlaySound(293, "Ambient/Rocks", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("DustCloud", 294, 0, 0);
	PlaySound(294, "Interaction/Wallpick", CHAN_AUTO, 0.6);
	PlaySound(294, "Ambient/Rocks", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("DustCloud", 295, 0, 0);
	PlaySound(295, "Interaction/Wallpick", CHAN_AUTO, 0.8);
	PlaySound(295, "Ambient/Rocks", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("DustCloud", 296, 0, 0);
	PlaySound(296, "Interaction/Wallpick", CHAN_AUTO, 0.7);
	PlaySound(296, "Ambient/Rocks", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("DustCloud", 297, 0, 0);
	PlaySound(297, "Interaction/Wallpick", CHAN_AUTO, 0.9);
	PlaySound(297, "Ambient/Rocks", CHAN_AUTO);
	Delay(70);
	SpawnSpotForced("DustCloud", 298, 0, 0);
	PlaySound(298, "Interaction/Wallpick", CHAN_AUTO, 1.0);
	PlaySound(298, "Ambient/Rocks", CHAN_AUTO);
	Delay(35);
	SpawnSpotForced("ExplosionMedium", 298, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 287, 0, 0);
	Delay(6);
	Radius_Quake(3, 90, 2, 10, 287);
	SpawnSpotForced("ExplosionHuge", 299, 0, 0);
	Thing_Deactivate(291);
	SetLineTexture(288, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(288, SIDE_BACK, TEXTURE_MIDDLE, "");
	SetLineTexture(289, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(289, SIDE_BACK, TEXTURE_MIDDLE, "");
	Delay(12);
	SpawnSpotForced("ExplosionLarge", 300, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 301, 0, 0);
    Delay(14);
	SpawnSpotForced("ExplosionLarge", 299, 0, 0);
	Delay(24);
	SpawnSpotForced("ExplosionLarge", 300, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 301, 0, 0);
	Delay(16);
	SpawnSpotForced("FireTinyDie1", 299, 0, 0);
	SpawnSpotForced("FireTinyDie2", 300, 0, 0);
	SpawnSpotForced("FireTinyDie3", 301, 0, 0);
	SpawnSpotForced("ExplosionLarge", 299, 0, 0);
	}
	else
	{
	Print(s:"The machine does not seem to have enough power to be operated.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}

}

//URCHIN MACHINE
//Activator
int Spec51 = 0;
int Spec52 = 0;
int Spec53 = 0;
int Spec54 = 0;
Script 50 (void)
{
	Delay(35);
	If(Spec51 == 0)
	{
	Ceiling_MoveToValue(248, 8, 584, 1);
	}
	If(Spec52 == 0)
	{
	Ceiling_MoveToValue(250, 8, 584, 1);
	}
	If(Spec53 == 0)
	{
	Ceiling_MoveToValue(252, 8, 584, 1);
	}
	If(Spec54 == 0)
	{
	Ceiling_MoveToValue(254, 8, 584, 1);
	}
	TagWait(248);
	TagWait(250);
	TagWait(252);
	TagWait(254);
	Delay(35);
	If(Spec51 == 0)
	{
	ACS_Execute(51, 0, 0, 0, 0);
	}
	If(Spec52 == 0)
	{
	ACS_Execute(52, 0, 0, 0, 0);
	}
	If(Spec53 == 0)
	{
	ACS_Execute(53, 0, 0, 0, 0);
	}
	If(Spec54 == 0)
	{
	ACS_Execute(54, 0, 0, 0, 0);
	}
}
//SE Machine
Script 51 (void)
{
	If(Spec51 == 0)
	{
	Ceiling_MoveToValue(248, 8, 636, 1);
	TagWait(248);
	Delay(35);
	PlaySound(249, "Weapons/SteamHiss", CHAN_AUTO);
	Delay(16);
	PlaySound(249, "Metal/Bounce1", CHAN_AUTO);
	Delay(16);
	PlaySound(249, "Metal/Bounce2", CHAN_AUTO);
	Delay(16);
	PlaySound(249, "Metal/Bounce3", CHAN_AUTO);
	SpawnSpot("IronUrchin", 249, 649, 192);
	SetActorFlag(649, "COUNTKILL", 0);
	Delay(35);
	PlaySound(249, "Weapons/SteamHiss", CHAN_AUTO);
	Ceiling_MoveToValue(248, 8, 584, 1);
	TagWait(248);
	NoiseAlert(0, 0);
	Delay(140);
	Restart;
	}
}
//SE Killswitch
Script 55 (void)
{
	Spec51 += 1;
	ACS_Terminate(51, 0);
	TagWait(248);
	Ceiling_MoveToValue(248, 8, 636, 1);
	SetActorState(256, "Special", 0);
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
}
//NE Machine
Script 52 (void)
{
	If(Spec52 == 0)
	{
	Ceiling_MoveToValue(250, 8, 636, 1);
	TagWait(250);
	Delay(35);
	PlaySound(251, "Weapons/SteamHiss", CHAN_AUTO);
	Delay(16);
	PlaySound(251, "Metal/Bounce1", CHAN_AUTO);
	Delay(16);
	PlaySound(251, "Metal/Bounce2", CHAN_AUTO);
	Delay(16);
	PlaySound(251, "Metal/Bounce3", CHAN_AUTO);
	SpawnSpot("IronUrchin", 251, 651, 192);
	SetActorFlag(651, "COUNTKILL", 0);
	Delay(35);
	PlaySound(251, "Weapons/SteamHiss", CHAN_AUTO);
	Ceiling_MoveToValue(250, 8, 584, 1);
	TagWait(250);
	NoiseAlert(0, 0);
	Delay(140);
	Restart;
	}
}
//NE Killswitch
Script 56 (void)
{
	Spec52 += 1;
	ACS_Terminate(52, 0);
	TagWait(250);
	Ceiling_MoveToValue(250, 8, 636, 1);
	SetActorState(257, "Special", 0);
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
}
//SW Machine
Script 53 (void)
{
	If(Spec53 == 0)
	{
	Ceiling_MoveToValue(252, 8, 636, 1);
	TagWait(252);
	Delay(35);
	PlaySound(253, "Weapons/SteamHiss", CHAN_AUTO);
	Delay(16);
	PlaySound(253, "Metal/Bounce1", CHAN_AUTO);
	Delay(16);
	PlaySound(253, "Metal/Bounce2", CHAN_AUTO);
	Delay(16);
	PlaySound(253, "Metal/Bounce3", CHAN_AUTO);
	SpawnSpot("IronUrchin", 253, 653, 192);
	SetActorFlag(653, "COUNTKILL", 0);
	Delay(35);
	PlaySound(253, "Weapons/SteamHiss", CHAN_AUTO);
	Ceiling_MoveToValue(252, 8, 584, 1);
	TagWait(252);
	NoiseAlert(0, 0);
	Delay(140);
	Restart;
	}
}
//SW Killswitch
Script 57 (void)
{
	Spec53 += 1;
	ACS_Terminate(53, 0);
	TagWait(252);
	Ceiling_MoveToValue(252, 8, 636, 1);
	SetActorState(258, "Special", 0);
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
}
//NW Machine
Script 54 (void)
{
	If(Spec54 == 0)
	{
	Ceiling_MoveToValue(254, 8, 636, 1);
	TagWait(254);
	Delay(35);
	PlaySound(255, "Weapons/SteamHiss", CHAN_AUTO);
	Delay(16);
	PlaySound(255, "Metal/Bounce1", CHAN_AUTO);
	Delay(16);
	PlaySound(255, "Metal/Bounce2", CHAN_AUTO);
	Delay(16);
	PlaySound(255, "Metal/Bounce3", CHAN_AUTO);
	SpawnSpot("IronUrchin", 255, 655, 192);
	SetActorFlag(655, "COUNTKILL", 0);
	Delay(35);
	PlaySound(255, "Weapons/SteamHiss", CHAN_AUTO);
	Ceiling_MoveToValue(254, 8, 584, 1);
	TagWait(254);
	NoiseAlert(0, 0);
	Delay(140);
	Restart;
	}
}
//NW Killswitch
Script 58 (void)
{
	Spec54 += 1;
	ACS_Terminate(54, 0);
	TagWait(254);
	Ceiling_MoveToValue(254, 8, 636, 1);
	SetActorState(259, "Special", 0);
	Floor_RaiseByValue(12, 1, 4);
	Floor_RaiseByValue(121, 1, 4);
}




//MINOTAUR FIRE TRAP
Script 38 (void)
{
	Floor_LowerByValue(199, 4, 1);
	SpawnProjectile(202, "ProjectileFlameBolt", 192, 280, 0, 0, 0);
	Delay(24);
	Floor_RaiseByValue(199, 4, 1);
	TagWait(199);
}

Script 39 (void)
{
	Floor_LowerByValue(200, 4, 1);
	SpawnProjectile(204, "ProjectileFlameBolt", 128, 180, 0, 0, 0);
	Delay(24);
	Floor_RaiseByValue(200, 4, 1);
	TagWait(200);
}

Script 40 (void)
{
	Floor_LowerByValue(201, 4, 1);
	SpawnProjectile(203, "ProjectileFlameBolt", 0, 180, 0, 0, 0);
	Delay(24);
	Floor_RaiseByValue(201, 4, 1);
	TagWait(201);
}

//MINE ORE
Script 43 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(220))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(220);
	SpawnSpotForced("DustPuff", 221, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 221, 0, 0);
  }
    else
	  If (IsTIDUsed(220))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 44 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(222))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(222);
	SpawnSpotForced("DustPuff", 223, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryDarkIronOre", 223, 0, 0);
  }
    else
	  If (IsTIDUsed(222))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

//MONSTER SPAWNS
//Main Lava Cave Middle
Script 59 (void)
{
	If(GetActorZ(0) > -570.0)
	{
	Thing_Remove(54);
	Thing_Spawn(260, 65010, 64, 0);
	SpawnSpotForced("Hellion", 261, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 261, 0, 0);
	PlaySound(261, "misc/teleport", CHAN_AUTO);
	}
}
//Main Lava Cave Upper Right
Script 60 (void)
{
	Delay(9*35);
	SpawnSpotForced("Hellion", 262, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 262, 0, 0);
	PlaySound(262, "misc/teleport", CHAN_AUTO);
}
//Main Lava Cave After Ruby Pick
Script 61 (void)
{
	If(CheckInventory("InventoryGiantRuby") > 0)
	{
	SetLineSpecial(264, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(11, 9999, 40);
	SpawnSpotForced("Warlock", 263, 0, 192);
	SpawnSpotForced("Hellion", 265, 0, 192);
	}
}

//HALLWAY AMBUSH
Script 48 (void)
{
	SetLineSpecial(236, 0, 0, 0, 0, 0, 0);
	Ceiling_LowerByValue(235, 64, 80);
	Door_Close(151, 32, 0);
	Delay(105);
	PlaySound(238, "Interaction/FireBlow", CHAN_AUTO, 0.6, false, ATTN_NONE);
	Thing_Remove(238);
	Light_Fade(237, 115, 16);
	Delay(60);
	PlaySound(239, "Interaction/FireBlow", CHAN_AUTO, 0.8, false, ATTN_NONE);
	Thing_Remove(239);
	Light_Fade(237, 110, 16);
	Delay(60);
	PlaySound(240, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Remove(240);
	Light_Fade(237, 105, 16);
	Delay(60);
	PlaySound(241, "Interaction/FireBlow", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Remove(241);
	Light_Fade(237, 100, 16);
	Delay(105);
	SetLineTexture(242, SIDE_FRONT, TEXTURE_TOP, "GATE8_DN");
	Ceiling_RaiseByValue(244, 16, 116);
	Delay(35);
	SpawnSpotForced("Cerberus", 245, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 245, 0, 0);
	PlaySound(245, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 247, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 247, 0, 0);
	PlaySound(247, "misc/teleport", CHAN_AUTO);
	Delay(20*35);
	SpawnSpotForced("PitLord", 246, 0, 192);
	Delay(16);
	SetActorFlag(144, "AMBUSH", 0);
	SetLineTexture(243, SIDE_FRONT, TEXTURE_TOP, "GATE8_DN");
	Ceiling_RaiseByValue(235, 16, 116);
	Door_Open(151, 16, 0);
	Light_Fade(237, 120, 70);
}

//STORAGE BAY AMBUSH
Script 49 (void)
{
	SetLineSpecial(266, 0, 0, 0, 0, 0, 0);
    Ceiling_RaiseByvalue(234, 64, 66);
	//Ceiling_lowerByvalue(233, 64, 64);
	Ceiling_lowerAndCrush(233, 64, 1000);
	SpawnSpotForced("ShieldWallIronmaiden", 267, 664, 0);
	SpawnSpotForced("Cerberus", 268, 0, 0);
	Delay(70);
	SpawnSpotForced("Hellblaze", 269, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 269, 0, 0);
	PlaySound(269, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);
	Delay(10*35);
	SpawnSpotForced("Hellion", 270, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 270, 0, 0);
	PlaySound(270, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);
	Delay(10*35);
	SpawnSpotForced("Cerberus", 271, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 271, 0, 0);
	PlaySound(271, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);
	Delay(10*35);
	SpawnSpotForced("ForgeElemental", 272, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 272, 0, 0);
	PlaySound(272, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);
	Delay(16*35);
	SpawnSpotForced("PitLord", 273, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 273, 0, 0);
	PlaySound(273, "misc/teleport", CHAN_AUTO);
	//TeleportOther(665, 274, 0);
	SpawnSpotForced("PitLordCommander", 274, 0, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 274, 0, 0);

    If(CheckProximity(0, "PitLordCommander", 960.0, 1))
	{
		Hudmessage(s:"Lord Efri:    YOU SLIME!!! I WILL BRING YOUR HEAD TO THE BLUE BARON MYSELF!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.70, 6.5, 0.2, 0.5);
	}

	PlaySound(274, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);
	Delay(10*35);
	SetActorProperty(664, APROP_Speed, 17.0);
}

//HELLPOWDER BARREL DISCOVERY
Script 62 (void)
{
	If(GetActorZ(0) < -800.0)
	{
	  SetLineSpecial(275, 0, 0, 0, 0, 0, 0);
	  TakeInventory("QuestMap13SecurePowder", 1);
	  GiveInventory("QuestMap13DebriefMap14", 2);
	    If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }

	  If(GetSectorFloorZ(121, 0, 0) >= 48.0)
	    {
		Line_SetBlocking(431, BLOCKF_EVERYTHING, 0);
		TagWait(37);
		TagWait(38);
		TagWait(36);
		Delay(16);
		If(GetSectorFloorZ(232, 0, 0) < -705.0)
		{
		  FloorAndCeiling_RaiseByValue(37, 8, 244);
		  FloorAndCeiling_RaiseByValue(38, 8, 244);
		  Ceiling_RaiseByValue(36, 8, 244);
		  TagWait(37);
		  TagWait(38);
		  TagWait(36);
		}
		Delay(4);
		SpawnSpot("Cerberus", 282, 667, 64);
		SetActorFlag(667, "AMBUSH", 1);
		SpawnSpotForced("HedonTeleportFogDemon", 282, 0, 0);
	    PlaySound(282, "misc/teleport", CHAN_AUTO);
		Line_SetBlocking(431, 0, BLOCKF_EVERYTHING);
	    }
		else
		{
		  SpawnSpot("Cerberus", 282, 667, 64);
		  SetActorFlag(667, "AMBUSH", 1);
		}

	  Delay(105);
	  Floor_LowerByValue(276, 16, 96);
	  TagWait(276);
	  Thing_SetGoal(279, 278, 4, 0);
	  SpawnSpotForced("Hellion", 277, 0, 0);
	  SpawnSpotForced("HedonTeleportFogDemon", 277, 0, 0);
	  PlaySound(277, "misc/teleport", CHAN_AUTO);
	  FloorAndCeiling_RaiseByvalue(280, 9999, 600);
	  SpawnSpotForced("Golem", 281, 671, 0);

	}
}



//Fire Shrines
int Spec500 = 0;
Script 499 RETURN
{
	If(Spec500 == 6)
	    {
		Delay(35);
	    Radius_Quake(1, 105, 0, 1, 0);
		Delay(105);
		Terminate;
	    }
		  else
		  {
		  SectorDamage(505, 2, "Fire", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	      Delay(35);
	      Restart;
		  }
}
Script 500 (void)
{
	If(Spec500 == 6 && IsTIDUsed(501))
	{
		Thing_Remove(501);
		PlaySound(0, "Weapons/FlameDeath", CHAN_AUTO);
		Delay(70);
		PlaySound(502, "Ambient/Rocks", CHAN_AUTO);
		Radius_Quake(1, 200, 0, 10, 502);
		SetLineTexture(504, SIDE_BACK, TEXTURE_BOTTOM, "Gate13DN");
		Floor_LowerByValue(503, 4, 100);
	}
}
Script 510 (void)
{
	If(IsTIDUsed(515) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 511, 515, 0);
		SetActorFlag(515, "SOLID", 0);
		SetActorFlag(515, "NOBLOCKMAP", 0);
		SetActorProperty(515, APROP_ScaleX, 0.17);
		SetActorProperty(515, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(515, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(512, 4, 8);
		TagWait(512);
		PlaySound(511, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(513, 514, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(515) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}
Script 520 (void)
{
	If(IsTIDUsed(525) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 521, 525, 0);
		SetActorFlag(525, "SOLID", 0);
		SetActorFlag(525, "NOBLOCKMAP", 0);
		SetActorProperty(525, APROP_ScaleX, 0.17);
		SetActorProperty(525, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(525, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(522, 4, 8);
		TagWait(522);
		PlaySound(521, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(523, 524, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(525) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}
Script 530 (void)
{
	If(IsTIDUsed(535) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 531, 535, 0);
		SetActorFlag(535, "SOLID", 0);
		SetActorFlag(535, "NOBLOCKMAP", 0);
		SetActorProperty(535, APROP_ScaleX, 0.17);
		SetActorProperty(535, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(535, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(532, 4, 8);
		TagWait(532);
		PlaySound(531, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(533, 534, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(535) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}
Script 540 (void)
{
	If(IsTIDUsed(545) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 541, 545, 0);
		SetActorFlag(545, "SOLID", 0);
		SetActorFlag(545, "NOBLOCKMAP", 0);
		SetActorProperty(545, APROP_ScaleX, 0.17);
		SetActorProperty(545, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(545, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(542, 4, 8);
		TagWait(542);
		PlaySound(541, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(543, 544, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(545) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}
Script 550 (void)
{
	If(IsTIDUsed(555) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 551, 555, 0);
		SetActorFlag(555, "SOLID", 0);
		SetActorFlag(555, "NOBLOCKMAP", 0);
		SetActorProperty(555, APROP_ScaleX, 0.17);
		SetActorProperty(555, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(555, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(552, 4, 8);
		TagWait(552);
		PlaySound(551, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(553, 554, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(555) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}
Script 560 (void)
{
	If(IsTIDUsed(565) == 0 && CheckInventory("InventoryFireFigurine") > 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 561, 565, 0);
		SetActorFlag(565, "SOLID", 0);
		SetActorFlag(565, "NOBLOCKMAP", 0);
		SetActorProperty(565, APROP_ScaleX, 0.17);
		SetActorProperty(565, APROP_ScaleY, 0.19);
		Delay(1);
		PlaySound(565, "Rock/Land", CHAN_AUTO);
		Delay(24);
		Floor_LowerByvalue(562, 4, 8);
		TagWait(562);
		PlaySound(561, "Weapons/FlameDeath", CHAN_AUTO);
		TeleportOther(563, 564, 0);
		Spec500 += 1;
	}
	else
	  If(IsTIDUsed(565) == 0 && CheckInventory("InventoryFireFigurine") == 0)
	  {
		Print(s:"You have nothing to offer to this shrine.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
        Delay(35);
	  }
}


//TOWN BIG AMBUSH
Script 83 (void)
{
	If(CheckInventory("InventoryFireFigurine") > 0)
	{
		SetLineSpecial(395, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(326, 0, 0, 0, 0, 0, 0);
		Radius_Quake(3, 105, 0, 1, 0);
		Floor_lowerByValue(350, 9999, 84);
		FloorAndCeiling_RaiseByValue(405, 9999, 500);
		SetLineTexture(319, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(319, SIDE_BACK, TEXTURE_MIDDLE, "");
		Line_SetBlocking(319, 0, BLOCKF_EVERYTHING);
		Line_SetBlocking(319, 0, BLOCKF_SIGHT);
		Thing_Activate(310);

		Thing_Spawn(396, 65010, 192, 0);

		SpawnSpotForced("Conscript", 397, 0, 192);
		SpawnSpotForced("Cultist", 398, 0, 192);
		SpawnSpotForced("Initiate", 399, 0, 192);
		SpawnSpotForced("IronMaiden", 401, 0, 192);

		SpawnSpotForced("Hellblaze", 400, 0, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 400, 0, 0);
	    PlaySound(400, "misc/teleport", CHAN_AUTO, 1.0, false, 2);
		SpawnSpotForced("Hellion", 402, 0, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 402, 0, 0);
	    PlaySound(402, "misc/teleport", CHAN_AUTO);
		SpawnSpotForced("PitLord", 403, 0, 192);
		SpawnSpotForced("Cerberus", 404, 0, 192);

		SpawnSpotForced("ForgeElemental", 415, 0, 64);
	}
}

//UPPER TOWN AMBUSH
Script 84 (void)
{
	If(GetActorZ(0) > -500.0)
	{
		SetLineSpecial(406, 0, 0, 0, 0, 0, 0);

		SpawnSpotForced("Hellion", 407, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 407, 0, 0);
	    PlaySound(407, "misc/teleport", CHAN_AUTO);
		SpawnSpotForced("Hellblaze", 408, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 408, 0, 0);
	    PlaySound(408, "misc/teleport", CHAN_AUTO);
		SpawnSpotForced("PitLord", 409, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 409, 0, 0);
	    PlaySound(409, "misc/teleport", CHAN_AUTO);
	}
}

//ROMANTIC BATH
Script 74 (void)
{
	Delay(90);
	If(GetActorProperty(355, APROP_Health) > 0)
	{
		PlaySound(355, "Hellion/Sight", CHAN_AUTO);
	}
	Delay(70);
	If(GetActorProperty(356, APROP_Health) > 0)
	{
		PlaySound(356, "Hellion/Active", CHAN_AUTO);
	}
	Delay(175);
	If(GetActorProperty(356, APROP_Health) > 0)
	{
		PlaySound(356, "Hellion/Sight", CHAN_AUTO);
	}
	Delay(70);
	If(GetActorProperty(357, APROP_Health) > 0)
	{
		PlaySound(357, "PitLord/Active", CHAN_AUTO);
	}
}



//DOORS & ELEVATORS
//Main Minotaur Gates
Script 100 (void)
{
	Print(s:"The pedestal's locking mechanism prevents the ruby from being removed.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 69 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	SetLineSpecial(56, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 423, 0, 0);
	PlaySound(423, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(229, 2, 8);
	SetLineTexture(55, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineTexture(426, SIDE_FRONT, TEXTURE_MIDDLE, "Gate13DN");
	SetLineSpecial(304, ACS_Execute, 70, 0, 0, 0, 0);
	SetLineSpecial(305, ACS_Execute, 71, 0, 0, 0, 0);
	SetLineSpecial(56, 80, 100, 0, 0, 0, 0);
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}
Script 70 (void)
{
	TagWait(306);
	Floor_LowerByValue(306, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(306, 20, 104);
	TagWait(306);
}
Script 71 (void)
{
	TagWait(307);
	Floor_LowerByValue(307, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(307, 20, 104);
	TagWait(307);
}
//Factory Minotaur Gates
Script 35 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	SetLineSpecial(193, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 192, 0, 0);
	PlaySound(192, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(191, 2, 8);
	SetLineTexture(194, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(195, ACS_Execute, 36, 0, 0, 0, 0);
	SetLineTexture(194, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(196, ACS_Execute, 37, 0, 0, 0, 0);
	SetLineTexture(427, SIDE_FRONT, TEXTURE_MIDDLE, "Gate13DN");
	SetLineSpecial(193, 80, 100, 0, 0, 0, 0);
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}
Script 36 (void)
{
	TagWait(197);
	Floor_LowerByValue(197, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(197, 20, 104);
	TagWait(197);
}
Script 37 (void)
{
	TagWait(198);
	Floor_LowerByValue(198, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(198, 20, 104);
	TagWait(198);
}
//Mine Exit Minotaur Gates
Script 79 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	GiveInventory("ScriptHasActivatedMinotaurMineGate", 1);
	SetLineSpecial(391, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 392, 0, 0);
	PlaySound(392, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(390, 2, 8);
	SetLineTexture(387, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(393, ACS_Execute, 80, 0, 0, 0, 0);
	SetLineSpecial(394, ACS_Execute, 81, 0, 0, 0, 0);
	SetLineTexture(429, SIDE_FRONT, TEXTURE_MIDDLE, "Gate13DN");
	SetLineSpecial(391, 80, 100, 0, 0, 0, 0);
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}
Script 80 (void)
{
	TagWait(388);
	Floor_LowerByValue(388, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(388, 20, 104);
	TagWait(388);
}
Script 81 (void)
{
	TagWait(389);
	Floor_LowerByValue(389, 20, 104);
	Delay(35*5);
	Floor_RaiseByValue(389, 20, 104);
	TagWait(389);
}

//Dwarven Doors
Script 10 (void)
{
	If(GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Generic_Door(122, 16, 0, 34, 0);
	}
	else
	Print(s:"The door does not seem to have enough power to be operated.");
}
Script 11 (void)
{
	If(GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Generic_Door(124, 16, 0, 69, 0);
	}
	else
	Print(s:"The door does not seem to have enough power to be operated.");
}
Script 12 (void)
{
	If(GetSectorFloorZ(121, 0, 0) >= 16.0)
	{
		Generic_Door(125, 16, 0, 34, 0);
	}
	else
	Print(s:"The door does not seem to have enough power to be operated.");
}

//Cursed Doors
Script 15 (void)
{
	Print(s:"A hellish curse prevents you from unlocking the gate.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
    Delay(35);
}

//Elevators
Script 45 (void)
{
	If(GetSectorFloorZ(231, 0, 0) == -1012.0 && GetSectorFloorZ(121, 0, 0) >= 48.0)
	{
		//TagWait(72);
		TagWait(71);
		//TagWait(78);
		FloorAndCeiling_RaiseByValue(71, 8, 208);
		FloorAndCeiling_RaiseByValue(72, 8, 208);
		Ceiling_RaiseByValue(78, 8, 208);
		//TagWait(72);
		//TagWait(71);
		TagWait(78);
	}
	else
	  If(GetSectorFloorZ(121, 0, 0) >= 48.0)
	    {
		//TagWait(72);
		//TagWait(71);
		TagWait(78);
		FloorAndCeiling_LowerByValue(71, 8, 208);
		FloorAndCeiling_LowerByValue(72, 8, 208);
		Ceiling_LowerByValue(78, 8, 208);
		//TagWait(72);
		TagWait(71);
		//TagWait(78);
	    }
		else
	    If(GetSectorFloorZ(121, 0, 0) < 48.0)
	    {
			Print(s:"The elevator does not seem to have enough power to be operated.");
		}
}

Script 46 (void)
{
	If(GetSectorFloorZ(232, 0, 0) == -705.0 && GetSectorFloorZ(121, 0, 0) >= 48.0)
	{
		TagWait(37);
		TagWait(38);
		TagWait(36);
		Delay(16);
		FloorAndCeiling_LowerByValue(37, 8, 244);
		FloorAndCeiling_LowerByValue(38, 8, 244);
		Ceiling_LowerByValue(36, 8, 244);
		TagWait(37);
		TagWait(38);
		TagWait(36);
	}
	  else
	  If(GetSectorFloorZ(121, 0, 0) >= 48.0)
	    {
		TagWait(37);
		TagWait(38);
		TagWait(36);
		Delay(16);
		FloorAndCeiling_RaiseByValue(37, 8, 244);
		FloorAndCeiling_RaiseByValue(38, 8, 244);
		Ceiling_RaiseByValue(36, 8, 244);
		TagWait(37);
		TagWait(38);
		TagWait(36);
	    }
		else
	    If(GetSectorFloorZ(121, 0, 0) < 48.0)
	    {
			Print(s:"The elevator does not seem to have enough power to be operated.");
		}
}

//Rotating Doors
Script 1090 (void)
{
	If(GetActorZ(0) < -594.0)
    {
	  SetLineSpecial(325, ACS_Execute, 1090, 0, 0, 0, 0);
      Polyobj_DoorSwing(90,-16,64,175);
	}
}

Script 1091 (void)
{
	If(GetActorZ(0) < -609.0)
    {
	  SetLineSpecial(344, ACS_Execute, 1091, 0, 0, 0, 0);
      Polyobj_DoorSwing(91,16,64,175);
	}
}

Script 180 (void)
{
	If(GetActorZ(0) < -600.0)
    {
	  SetLineSpecial(314, ACS_Execute, 180, 0, 0, 0, 0);
      Polyobj_DoorSwing(180,-16,64,105);
	}
}

Script 360 (void)
{
	If(GetActorZ(0) < -524.0)
    {
	  SetLineSpecial(364, ACS_Execute, 360, 0, 0, 0, 0);
      Polyobj_DoorSwing(360,-16,64,105);
	}
}

Script 72 (void)
{
	If(GetActorZ(0) < -600.0)
    {
	  Print(s:"The door is locked from the inside.");
	  PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	}
}
Script 73 (void)
{
	  Print(s:"The door seems stuck.");
	  PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	  Delay(35);
}







//READABLES
Script 26 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Master, the knowledge retrieved by Mistress Nithriel's cultists from the orcish town has yielded results! With the  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"production at full strength here, we shall soon hold a new weapon in our hands, a weapon that will far surpass the"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
    Hudmessage(s:"crude creations of the greenskin!  Using their knowledge of the crystals and our knowledge of the hell powder, we  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"shall soon wage a new form of war!  The battlefield will shake under our force of sheer destruction!     -     Lord Efri"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 27 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"After the recent theft, master Igrutius has ordered the demonic gates to be cursed so that only Pit Lords and   "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 30.0);
	Hudmessage(s:"their Hellblaze guards may use them. Keep the cultist scum away from our precious machines at any cost! Start "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 30.0);
    Hudmessage(s:"carrying the supplies by yourselves, and remember that the Blue Baron is expecting results soon!      -     Lord Efri"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 30.0);
    }
	else
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"After the recent theft, master Igrutius has ordered the demonic gates to be cursed so that only \c[Gold]Pit Lords\c- and   "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 30.0);
	Hudmessage(s:"their \c[Gold]Hellblaze\c- guards may use them. Keep the cultist scum away from our precious machines at any cost! Start "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 30.0);
    Hudmessage(s:"carrying the supplies by yourselves, and remember that the Blue Baron is expecting results soon!      -     Lord Efri"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 30.0);
    }
}

Script 28 (void)
{
  If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The gating channel has been re-established. When you have any new items to transport, "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"ring the bell three times and a servant will be summoned most hastily to retrieve them."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
    }
	else
    {
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"The gating channel has been re-established. When you have any new items to transport, "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"ring the bell \c[Gold]three times\c- and a servant will be summoned most hastily to retrieve them."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
    }
}

Script 29 (void)
{
  If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I told you it would be foolish to overload the machines! Now that we've lost that power pillar, we cannot"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"use both the elevators and production machines at once!     Get someone to release the safety of the 4th"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"pillar before I have you all flayed!     The Blue Baron himself will feast upon our souls if we fail here!         "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 35.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I told you it would be foolish to overload the machines! Now that we've lost that power pillar, we cannot"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"use both the elevators and production machines at once!     Get someone to \c[Gold]release the safety of the 4th\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"\c[Gold]pillar\c- before I have you all flayed!     The Blue Baron himself will feast upon our souls if we fail here!         "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 35.0);
    }
}

Script 47 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SECURITY GRATES"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 2.0);
}

Script 92 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CASING MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 1.5);
}

Script 97 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"BULLET MACHINE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 1.5);
}

Script 63 (void)
{
	If(GetActorZ(0) < -820.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	If(CheckInventory("QuestMap13SecurePowder") == 2)
	  {
	  ACS_Execute(62, 0, 0, 0, 0);
	  }

	SetFont("SMALLFONT");
	Hudmessage(s:"We're storing surplus munitions and hell powder here until further notice. Count the inventory regularly!  -  Lord Efri"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 30.0);
    }
}

Script 75 (void)
{
	If(GetActorZ(0) < -583.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 95.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You scrape a parchment from the dirt. The sentences feel like they were written months apart)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 95.0);
	Hudmessage(s:"Curse the day I learned to write.   Now I have no rest until I put my pains on this sheet.   I don't know what year it is. "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 95.0);
    Hudmessage(s:"The gates remain sealed, with only Demons gating past them to oversee our work. With every day we toil, the demonic"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 95.0);
	Hudmessage(s:"machines make their nest into this old town, giving it a new fate. Today, a wall I broke revealed a room with tablets."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 95.0);
	Hudmessage(s:"I memorized the symbols on the tablets and threw them away. I still wonder why the Demons forbid their knowledge..."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 95.0);
    Hudmessage(s:"The machines are nearly prepared and the Pit Lords are pleased with our work. We had double rations and rest today."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 95.0);
	Hudmessage(s:"Something big upset the Demons. They cut our rations and made us toil harder. It's been long since I've written here."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 95.0);
	Hudmessage(s:"The others are getting suspicious, I must hurry.   I think I understand this nail-like writing now.  The riddle speaks of"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 95.0);
    Hudmessage(s:"walking in a fire pit.   That must be the pit with the six torches right next to the tablet!   I shall muster my courage,  "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 95.0);
	Hudmessage(s:"and walk through it... and the gate will open for me! I can only imagine what lies beneath there... it will soon be mine.  "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 95.0);
    }
}

Script 76 (void)
{
	If(GetActorZ(0) < -545.0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"By the order of the Blue Baron, your rations will be halved until the orcish invasion is culled."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 30.0);
	Hudmessage(s:"The harder you work, the sooner it shall end!     -     Lord Efri"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 30.0);
	Hudmessage(s:"(A sentence is written over the bottom of the poster)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 30.0);
	Hudmessage(s:"You know what to do. Start with the black list."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.56, 30.0);
    }
}

Script 77 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The symbols etched into the ancient tablet resemble a familiar form of the common cave language)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.38, 45.0);
	Hudmessage(s:"If knowledge in the arts you seek"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.42, 45.0);
    Hudmessage(s:"But your hoof melts in the pit"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.44, 45.0);
	Hudmessage(s:"Pay respect to your six masters"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.48, 45.0);
	Hudmessage(s:"And the power you shall muster"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.50, 45.0);
    Hudmessage(s:"When your goals will fail to hide"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 45.0);
	Hudmessage(s:"Walk the fire pit with pride"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 45.0);
	Hudmessage(s:"For your hoof will hurt no more"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.60, 45.0);
    Hudmessage(s:"As the gate reveals the halls."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 45.0);}
	else
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The symbols etched into the ancient tablet resemble a familiar form of the common cave language)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.38, 45.0);
	Hudmessage(s:"If knowledge in the arts you seek"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.42, 45.0);
    Hudmessage(s:"But your hoof melts in the pit"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.44, 45.0);
	Hudmessage(s:"\c[Gold]Pay respect to your six masters\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.48, 45.0);
	Hudmessage(s:"And the power you shall muster"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.50, 45.0);
    Hudmessage(s:"When your goals will fail to hide"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 45.0);
	Hudmessage(s:"\c[Gold]Walk the fire pit with pride\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 45.0);
	Hudmessage(s:"For your hoof will hurt no more"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.60, 45.0);
    Hudmessage(s:"As the gate reveals the halls."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.62, 45.0);
	}
}

Script 78 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"ELEVATOR TO"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 3.0);
	Hudmessage(s:"WEAPONS & HELL POWDER STORAGE"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 3.0);
	}
	else
	  {
	  SetFont("SMALLFONT");
	  Hudmessage(s:"ELEVATOR TO"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 3.0);
	  Hudmessage(s:"WEAPONS & \c[Gold]HELL POWDER\c- STORAGE"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 3.0);
	  }
}

Script 96 (void)
{
  If(GetActorZ(0) > -200.0)
  {
	SetFont("SMALLFONT");
	Hudmessage(s:"AUXILIARY POWER PILLAR"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 5.0);
	Hudmessage(s:"POWER SURGE WARNING: DO NOT ACTIVATE WHILE THE OTHER 3 PILLARS ARE IN FUNCTION"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 5.0);
  }
}

Script 98 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Though the power pillars can produce enough energy for the entire factory, the new machines have been straining "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"the distribution, like bloated ticks feeding upon a slumbering bull.       Make sure to turn off any idle machines and"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
    Hudmessage(s:"redirect the power to the central pool - the fiery gauges will show us precisely how much energy there is to spare."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
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









//JOURNAL
int JournalPage = 0;
Script "OpenJournal" (void)
{
	SetFont ("OLAYTJOU");
    HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);

	SetFont("SMALLFONT");
	Hudmessage(s:".oO   JOURNAL OF ZAN THE BONEBREAKER   Oo."; HUDMSG_PLAIN, 999, CR_BLACK, 1.5, 0.10, 9999.0);

	If(CheckInventory("InventoryAncientCityMap") > 0)
	{
		GiveInventory("JournalBrowseExtraPages", 1);
	}

    If(JournalPage == 0)
	{

	//MAIN QUESTS
	//Hudmessage(s:"Rot. 509 Day 248"; HUDMSG_PLAIN, 1000, CR_BLACK, 1.5, 0.14, 9999.0);
	//Sleep
	If(CheckInventory("QuestMap13Sleep") == 2)
	{
	    Hudmessage(s:"> Not much going on, I should find my room and get rest"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap13Sleep") == 1)
	  {
		Hudmessage(s:"> Not much going on, I should find my room and get rest"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	    Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1002, CR_BLACK, 1.5, 0.16, 9999.0);
	  }
	//Help Fixer
	  If(CheckInventory("QuestMap13HelpFixer") == 2)
	  {
	    Hudmessage(s:"> A Fixer told me her squad vanished - should investigate"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13HelpFixer") == 1)
	  {
	    Hudmessage(s:"> A Fixer told me her squad vanished - should investigate"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
		Hudmessage(s:"----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1004, CR_BLACK, 1.5, 0.18, 9999.0);
	  }
	  //Rescue POWs
	  If(CheckInventory("QuestMap13RescuePOWs") == 2)
	  {
	    Hudmessage(s:"> Found the captives, need to free them and report to Breaza"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.20, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13RescuePOWs") == 1)
	  {
	    Hudmessage(s:"> Found the captives, need to free them and report to Breaza"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.20, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1006, CR_BLACK, 1.5, 0.20, 9999.0);
	  }
	  //Secure Powder Map14
	  If(CheckInventory("QuestMap13SecurePowder") == 2)
	  {
	    Hudmessage(s:"> Get into the Minotaur Town, find and secure the Hell Powder"; HUDMSG_PLAIN | HUDMSG_LOG, 1020, CR_BLACK, 1.5, 0.22, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13SecurePowder") == 1)
	  {
	    Hudmessage(s:"> Get into the Minotaur Town, find and secure the Hell Powder"; HUDMSG_PLAIN | HUDMSG_LOG, 1020, CR_BLACK, 1.5, 0.22, 9999.0);
		Hudmessage(s:"---------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1021, CR_BLACK, 1.5, 0.22, 9999.0);
	  }
	  //Debrief Map14
	  If(CheckInventory("QuestMap13DebriefMap14") == 2)
	  {
	    Hudmessage(s:"> Found more than just Hell Powder - should report to Breaza"; HUDMSG_PLAIN | HUDMSG_LOG, 1022, CR_BLACK, 1.5, 0.24, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13DebriefMap14") == 1)
	  {
	    Hudmessage(s:"> Found more than just Hell Powder - should report to Breaza"; HUDMSG_PLAIN | HUDMSG_LOG, 1022, CR_BLACK, 1.5, 0.24, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1023, CR_BLACK, 1.5, 0.24, 9999.0);
	  }
	  //Investigate Ruins
	  If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	  {
	    Hudmessage(s:"> Enter the old Dwarf Town & check if Lith's visions were true"; HUDMSG_PLAIN | HUDMSG_LOG, 1024, CR_BLACK, 1.5, 0.26, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13InvestigateRuins") == 1)
	  {
	    Hudmessage(s:"> Enter the old Dwarf Town & check if Lith's visions were true"; HUDMSG_PLAIN | HUDMSG_LOG, 1024, CR_BLACK, 1.5, 0.26, 9999.0);
		Hudmessage(s:"--------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1025, CR_BLACK, 1.5, 0.26, 9999.0);
	  }
	  //Debrief Map15
	  If(CheckInventory("QuestMap13DebriefMap15") == 2)
	  {
	    Hudmessage(s:"> Found a weird corruption sample, should report back to Zura"; HUDMSG_PLAIN | HUDMSG_LOG, 1026, CR_BLACK, 1.5, 0.28, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13DebriefMap15") == 1)
	  {
	    Hudmessage(s:"> Found a weird corruption sample, should report back to Zura"; HUDMSG_PLAIN | HUDMSG_LOG, 1026, CR_BLACK, 1.5, 0.28, 9999.0);
		Hudmessage(s:"---------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1027, CR_BLACK, 1.5, 0.28, 9999.0);
	  }
	  //Assault Demon Town
	  If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	  {
	    Hudmessage(s:"> Sabotage the flame towers protecting the Demon Town gate"; HUDMSG_PLAIN | HUDMSG_LOG, 1028, CR_BLACK, 1.5, 0.30, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13AssaultDemonTown") == 1)
	  {
	    Hudmessage(s:"> Sabotage the flame towers protecting the Demon Town gate"; HUDMSG_PLAIN | HUDMSG_LOG, 1028, CR_BLACK, 1.5, 0.30, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1029, CR_BLACK, 1.5, 0.30, 9999.0);
	  }

	  //SECONDARY QUESTS
	  Hudmessage(s:"---Side Notes---"; HUDMSG_PLAIN, 998, CR_BLACK, 1.5, 0.42, 9999.0);
	  //Recharge Psi Crown
	  If(CheckInventory("QuestMap13RechargePsiCrown") == 2)
	  {
	    Hudmessage(s:"> E. Mother Bendi needs a Spirit Gem to charge my Psi Crown"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.46, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13RechargePsiCrown") == 1)
	  {
	    Hudmessage(s:"> Earth Mother Bendi needs a Spirit Gem to charge my Psi Crown"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.46, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1008, CR_BLACK, 1.5, 0.46, 9999.0);
	  }
	  //Get Dark Iron
	  If(CheckInventory("QuestMap13GetDarkIron") == 2)
	  {
	    Hudmessage(s:"> Workshop Boss needs 6 lumps of Dark Iron for gun parts"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.48, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13GetDarkIron") == 1)
	  {
	    Hudmessage(s:"> Workshop Boss needs 6 lumps of Dark Iron for gun parts"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.48, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1010, CR_BLACK, 1.5, 0.48, 9999.0);
	  }
	  //Get Iron
	  If(GameSkill() > SKILL_VERY_HARD)
	  {
	  If(CheckInventory("QuestMap13GetIron") == 2)
	  {
	    Hudmessage(s:"> Smith Hectus needs 8 lumps of Iron for a Great Axe"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.50, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13GetIron") == 1)
	  {
	    Hudmessage(s:"> Smith Hectus needs 8 lumps of Iron for a Great Axe"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.50, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1012, CR_BLACK, 1.5, 0.50, 9999.0);
	  }
	  }
	  If(GameSkill() <= SKILL_VERY_HARD)
	  {
	  If(CheckInventory("QuestMap13GetIron") == 2)
	  {
	    Hudmessage(s:"> Smith Hectus is trading ammo for Iron Ore"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.50, 9999.0);
	  }
	  }
	  //Trade Gold
	  If(CheckInventory("QuestMap13TradeGold") == 4)
	  {
	    Hudmessage(s:"> Shady Fixer sells Dark Vision Goggles for 10 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1012, CR_BLACK, 1.5, 0.52, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13TradeGold") == 3)
	  {
	    Hudmessage(s:"> A Shady Fixer sells Dark Vision Goggles for 10 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                                      --------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1014, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                            two Sentries for 100 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.54, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13TradeGold") == 2)
	  {
	    Hudmessage(s:"> A Shady Fixer sells Dark Vision Goggles for 10 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                                      --------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1014, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                            two Sentries for 100 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.54, 9999.0);
		Hudmessage(s:"                                ---------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1016, CR_BLACK, 1.5, 0.54, 9999.0);
		Hudmessage(s:"                           a Bag of Holding for 300 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.56, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap13TradeGold") == 1)
	  {
	    Hudmessage(s:"> A Shady Fixer sells Dark Vision Goggles for 10 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                                      --------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1014, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"                            two Sentries for 100 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.54, 9999.0);
		Hudmessage(s:"                                ---------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1016, CR_BLACK, 1.5, 0.54, 9999.0);
		Hudmessage(s:"                           a Bag of Holding for 300 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.56, 9999.0);
		Hudmessage(s:"                                   ------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1018, CR_BLACK, 1.5, 0.56, 9999.0);
		Hudmessage(s:"                           Vials of Healing for 10 gold"; HUDMSG_PLAIN | HUDMSG_LOG, 1019, CR_BLACK, 1.5, 0.58, 9999.0);
	  }
	  //Fix Diving Suit
	  If(CheckInventory("QuestMap15FixDivingSuit") == 2)
	  {
	    Hudmessage(s:"> A smith could assemble the diving suit if I bring the parts:"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.60, 9999.0);
		Hudmessage(s:"underwater mask, tank full of air & couple of airtight suits"; HUDMSG_PLAIN | HUDMSG_LOG, 1032, CR_BLACK, 1.5, 0.62, 9999.0);
	  }
	  else
	  If(CheckInventory("QuestMap15FixDivingSuit") == 1)
	  {
	    Hudmessage(s:"> A smith could assemble the diving suit if I bring the parts:"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.60, 9999.0);
		Hudmessage(s:"underwater mask, tank full of air & couple of airtight suits"; HUDMSG_PLAIN | HUDMSG_LOG, 1032, CR_BLACK, 1.5, 0.62, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1031, CR_BLACK, 1.5, 0.60, 9999.0);
		Hudmessage(s:"-------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1033, CR_BLACK, 1.5, 0.62, 9999.0);
	  }

	  If(CheckInventory("InventoryAncientCityMap") > 0)
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

		SetFont ("OLAYTDRE");
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
	Hudmessage(s:""; HUDMSG_PLAIN, 1032, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1033, CR_UNTRANSLATED, 1.5, 0.5, 0.1);

	Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}