#include "zcommon.acs"
//Ore Placed: Iron-3 Dark-2/2
//Gold Placed: 150


//LEVEL END
//Map13
//North Exit
Script 1 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_FADEOUT, 2001, CR_UNTRANSLATED, 1.5, 0.1, 0.01, 0.1);
	HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_PLAIN, 2002, CR_UNTRANSLATED, 1.5, 0.1, 0.01);
	//ACS_NamedExecuteWithResult("DivingSuitOverlayClear");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map13", 5, CHANGELEVEL_NOINTERMISSION, -1);
}
//West Exit
Script 2 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_FADEOUT, 2001, CR_UNTRANSLATED, 1.5, 0.1, 0.01, 0.1);
	HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_PLAIN, 2002, CR_UNTRANSLATED, 1.5, 0.1, 0.01);
	//ACS_NamedExecuteWithResult("DivingSuitOverlayClear");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map13", 6, CHANGELEVEL_NOINTERMISSION, -1);
}

//Friendly Spawner
int DialStart = 0;
Script "FriendlySpawnerCustom" ENTER
{
	If(CheckProximity(0, "IDPotA", 320.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 684, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 684, 691, 0);
		Delay(1);
	  }
	}
	else
	If(CheckProximity(0, "IDPotB", 320.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 685, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 685, 691, 0);
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
	  	  Hudmessage(s:"Earth Mother:    The Dwarf Town... its true name has faded throughout the ages, but the grandeur has endured."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	    Delay(5*35);
	    If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	    {
		  DialStart += 1;
		  Hudmessage(s:"Fixer:    This place is giving me goose bumps... and I don't think it's just the cold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	  }
}
Script "FriendlySpawnerCustomReturn" RETURN
{
	If(CheckProximity(0, "IDPotA", 320.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 684, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 684, 691, 0);
		Delay(1);
	  }
	}
	else
	If(CheckProximity(0, "IDPotB", 320.0, 1, CPXF_NOZ))
	{
	  While(CheckInventory("IDFixerCounter") > 0)
	  {
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixer", 685, 691, 0);
		Delay(1);
	  }
	  While(CheckInventory("IDEarthMotherCounter") > 0)
	  {
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMother", 685, 691, 0);
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
	  	  Hudmessage(s:"Earth Mother:    The Dwarf Town... its true name has faded throughout the ages, but the grandeur has endured."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	    Delay(5*35);
	    If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	    {
		  DialStart += 1;
		  Hudmessage(s:"Fixer:    This place is giving me goose bumps... and I don't think it's just the cold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	  }

	If(CheckInventory("QuestMap13DebriefMap15") > 0)
	{
		SetLineSpecial(255, 0, 0, 0, 0, 0, 0);
	}

	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");
}

//LEVEL START
Script 3 ENTER
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Actor Changes
    SetActorFlag(126, "SOLID", 0);
	SetActorFlag(156, "NOINTERACTION", 1);
	SetActorFlag(194, "BRIGHT", 0);

	SetActorFlag(265, "RELATIVETOFLOOR", 1);

	//Music
	SetMusic("HTrack27");

	//Delay(70);
	//Thing_Deactivate(250);

}

int Spec6 = 0;
Script 6 ENTER
{
	If(Spec6 == 0 && CheckInventory("ScriptHasTriggeredIceCaveAmbush") > 0)
	{
	  Spec6 += 1;
	  Thing_Deactivate(17);
	  Thing_Deactivate(18);
	  Thing_Deactivate(19);
	  Thing_Remove(43);
	  ChangeFloor(66, "Pavmnt3");
	  ChangeFloor(68, "Pavmnt1");
	  ChangeFloor(72, "Ice3");
	  Floor_lowerToNearest(66, 999);
	  Floor_lowerToNearest(68, 999);
	  FloorAndCeiling_lowerByValue(67, 999, 300);
	}
	else
	If(Spec6 == 0 && CheckInventory("ScriptHasTriggeredIceCaveAmbush") == 0)
	{
	    Spec6 += 1;
	    Thing_Deactivate(17);
	    Thing_Deactivate(18);
	    Thing_Deactivate(19);
		Thing_Remove(42);
		Thing_Remove(62);
		Thing_Remove(63);
		Thing_Remove(64);
		ChangeFloor(65, "Stone07");
		ChangeFloor(69, "Pavmnt3");
		ChangeFloor(71, "Ash1");
		Floor_lowerToNearest(69, 999);
		FloorAndCeiling_lowerByValue(70, 999, 300);
		TagWait(69);
		Floor_lowerToNearest(69, 999);
	  }
}


//DIALOGUE
//Jaromir Dialogue
Script 23 (void)
{
	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") > 0)
	{
		PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    Ah, there you are! A bit late for the fight, though, we've dealt with the welcoming party."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);

		If(CheckProximity(180, "IDEarthMother", 320.0, 1) || CheckProximity(180, "IDEarthMotherGuarding", 320.0, 1))
	    {
	    Hudmessage(s:"Earth Mother:    Good to see you've made it, high priest. Are any of your dwarves in need of healing?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(5*35);
		PlaySound(180, "Jaromir/Heh", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    Nay, they'll be fine. Save your powers for whatever lies down there."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
		}
		  else
		  If(CheckProximity(180, "IDFixer", 320.0, 1) || CheckProximity(180, "IDFixerGuarding", 320.0, 1))
	      {
		    Hudmessage(s:"Fixer:    T-there are cultists here? I knew it, I wasn't just hearing things!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	      }
	}
	else
	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") == 0)
	{
		PlaySound(180, "Jaromir/Heh", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    I should have waited for you, lass... we were ambushed on our way here... lost all my dwarves..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);

		If(CheckProximity(180, "IDEarthMother", 320.0, 1) || CheckProximity(180, "IDEarthMotherGuarding", 320.0, 1))
	    {
	    Hudmessage(s:"Earth Mother:    Priest Jaromir, you look battered! Let me take a look at your wounds..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    Delay(5*35);
		PlaySound(180, "Jaromir/Hmm", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    I'll be fine, lady. Save your powers for later... something tells me you'll need them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		  else
		  If(CheckProximity(180, "IDFixer", 320.0, 1) || CheckProximity(180, "IDFixerGuarding", 320.0, 1))
	      {
		    Hudmessage(s:"Fixer:    That's terrible! Zan? A-are you sure we should keep going without any b-backup?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	      }
	}
}
int dial22 = 6;
int spec22 = 0;
Script 22 (void)
{
	If(spec22 == 0 && (CheckInventory("InventoryDwarvenMask") > 0 || CheckInventory("InventoryEmptyDwarvenTank") > 0 || CheckInventory("InventoryDwarvenTank") > 0 || CheckInventory("InventoryDwarvenSuit") > 0) && !(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenTank") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2))
	{
		PlaySound(180, "Jaromir/Hmm", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    Ah, I see you're trying to put together a diving suit. Very good, but you will need a few items..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(4*35);
		GiveInventory("QuestMap15FixDivingSuit", 2);
		spec22 += 1;
	    If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
		Delay(1*35);
	}
	If(spec22 == 1 && (CheckInventory("InventoryDwarvenMask") > 0 || CheckInventory("InventoryEmptyDwarvenTank") > 0 || CheckInventory("InventoryDwarvenTank") > 0 || CheckInventory("InventoryDwarvenSuit") > 0) && !(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenTank") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2))
	{
		PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
		Hudmessage(s:""; HUDMSG_PLAIN, 100, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
        Hudmessage(s:"High Priest Jaromir:    You're going to need a special diving mask and a tank filled with enough air to allow"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_GRAY, 1.5, 0.84, 29.5, 0.2, 0.5);
		Hudmessage(s:"you to explore the waters like a fish.     And with all this chilling ice, a suit is much needed, one covered in "; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_GRAY, 1.5, 0.86, 29.5, 0.2, 0.5);
	    Hudmessage(s:"protective grease... the only problem I see is getting something for your... orc size.   Try finding two pairs."; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_GRAY, 1.5, 0.88, 29.5, 0.2, 0.5);
		Hudmessage(s:"You'll also need a smith to repair and assemble them properly. There's no room for shoddy work with this."; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_GRAY, 1.5, 0.90, 29.5, 0.2, 0.5);
		Delay(3*35);
	}
	else
	If(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenTank") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2 && GetActorProperty(64, APROP_Health) > 0)
	{
		PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    Looks like you have everything you need! Talk to my smith below, he'll craft the suit for you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Hudmessage(s:""; HUDMSG_PLAIN, 101, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 102, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 103, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 104, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Delay(7*35);
	}
	else
	If(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenTank") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2)
	{
		PlaySound(180, "Jaromir/Hmm", CHAN_AUTO);
        Hudmessage(s:"H.Priest Jaromir:    So you gathered all the suit parts...hmm, go visit Hectus at the camp, he can surely fix it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Hudmessage(s:""; HUDMSG_PLAIN, 101, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 102, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Hudmessage(s:""; HUDMSG_PLAIN, 103, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		//Hudmessage(s:""; HUDMSG_PLAIN, 104, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
		Delay(7*35);
	}
	else
	If(dial22 % 6 == 0)
	{
	PlaySound(180, "Jaromir/Hmm", CHAN_AUTO);
	ACS_Terminate(23, 0);
    Hudmessage(s:"High Priest Jaromir:    I have managed to restore life to the machinery here... though many parts have fallen to ruin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
	else
	If(dial22 % 6 == 1)
	{
    Hudmessage(s:"H.Priest Jaromir:    Keep your eyes peeled. If you find any dwarven relics, bring 'em here and I'll try to identify them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
	else
	If(dial22 % 6 == 2)
	{
	PlaySound(180, "Jaromir/Hmm", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    I wasn't expecting to see cultists here... maybe Chieftain Zura is right and they're onto something."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
	else
	If(dial22 % 6 == 3)
	{
	PlaySound(180, "Jaromir/Heh", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    The underwater structures here would allow my ancestors to closely study the ancient vestiges."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
	else
	If(dial22 % 6 == 4)
	{
    Hudmessage(s:"H.Priest Jaromir:    The archeologists would use special diving suits to navigate the waters. You'll have to improvise."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
	else
	If(dial22 % 6 == 5)
	{
	PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    It's been ages, yet so much seems to have been preserved. Our builders have lived up to their name."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial22 += 1;
	Delay(2*35);
	}
}

//Dwarf Smith
int dial24 = 4;
int spec24 = 0;
Script 24 (void)
{
	If(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2 && GetActorProperty(64, APROP_Health) > 0 && (CheckInventory("InventoryDwarvenTank") > 0 || CheckInventory("InventoryEmptyDwarvenTank") > 0) && !(spec24 > 0 && CheckInventory("InventoryEmptyDwarvenTank") > 0))
	{
	  If(CheckInventory("InventoryDwarvenTank") > 0)
	  {
		PlaySound(64, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryDwarvenMask", 1);
		TakeInventory("InventoryDwarvenTank", 1);
		TakeInventory("InventoryDwarvenSuit", 2);
		If(spec24 == 0)
		{
		  PlaySound(64, "Andrik/Mumble", CHAN_AUTO);
		  Hudmessage(s:"Dwarf Smith:    Oooh, ya found parts fer a diving suit? Sure, lass, I'll put it together for ya... one moment..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
        }
		else
		{
		  PlaySound(64, "Andrik/Mumble", CHAN_AUTO);
		  Hudmessage(s:"Dwarf Smith:    Ya filled the tank? Good, good, it ain't leakin'! Let me put yer suit together then..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
        }
		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);
		GiveInventory("QuestMap15FixDivingSuit", 2);
		TakeInventory("QuestMap15FixDivingSuit", 1);
		PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(35);
		PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.9);
		DElay(35);
		PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.7);
		Delay(16);
		PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(50);
		PlaySound(64, "Interaction/RopeTie", CHAN_AUTO, 0.4);
		Delay(24);
		PlaySound(64, "Interaction/RopeTie", CHAN_AUTO, 0.5);
		Delay(16);
		PlaySound(181, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("InventoryDivingSuit", 181, 0, 0);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(2*35);
		PlaySound(64, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Cleaned the rust, fixed the screws and sewed together a suit fer yer size! Hope yer horns won't poke through!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(7*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(64, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Remember to use the station nearby to refill yer air tank if ya need it. It won't last you forever, lass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	  }
	  else
	  If(CheckInventory("InventoryEmptyDwarvenTank") > 0 && spec24 == 0)
	  {
		spec24 += 1;
		PlaySound(64, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Smith:    Ya found parts fer a diving suit? Ack, go fill the tank first, the air station is right 'ere, by the docks."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	}
	else
	If(dial24 % 4 == 0 && GetActorProperty(64, APROP_Health) > 0)
	{
		PlaySound(64, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Smith:    Hmph. There's a lot of water down these caves, lass. Aye, many secrets are hiding beneath."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial24 += 1;
		Delay(2*35);
	}
	else
	If(dial24 % 4 == 1 && GetActorProperty(64, APROP_Health) > 0)
	{
		Hudmessage(s:"Dwarf Smith:    Legends speak of demons who dwell in the dark depths... if ya see an eerie light, swim away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial24 += 1;
		Delay(2*35);
	}
	else
	If(dial24 % 4 == 2 && GetActorProperty(64, APROP_Health) > 0)
	{
		PlaySound(64, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Smith:    Me grandad was an angler... one day he heard the water call his name! Aye, he was mortified!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial24 += 1;
		Delay(2*35);
	}
	else
	If(dial24 % 4 == 3 && GetActorProperty(64, APROP_Health) > 0)
	{
		If(GameSkill() != 5)
		{
		  Hudmessage(s:"Dwarf Smith:    Keep close to that Spike Gun, lass! Not many weapons can be as trustworthy underwater."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		else
		{
		  Hudmessage(s:"Dwarf Smith:    Always take a harpoon with ya when ye dive deep. A pointy stick could save yer life!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		dial24 += 1;
		Delay(2*35);
	}
}

//Dwarf Shieldguard Standing
int dial25 = 4;
Script 25 (void)
{
	If(dial25 % 4 == 0 && GetActorProperty(63, APROP_Health) > 0)
	{
	PlaySound(63, "Andrik/Mumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    By Stone's Hammer, lass, I did not think I would live to see this day... this place..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial25 += 1;
	Delay(2*35);
	}
	else
	If(dial25 % 4 == 1 && GetActorProperty(63, APROP_Health) > 0)
	{
    Hudmessage(s:"Dwarf Shieldguard:    Icepeak Fort pales in front of this great town! Oh, how much knowledge has been lost..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial25 += 1;
	Delay(2*35);
	}
	else
	If(dial25 % 4 == 2 && GetActorProperty(63, APROP_Health) > 0)
	{
	PlaySound(63, "Andrik/Grumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    After our ancestors' defeat, cultists have gradually occupied and defiled our cities."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial25 += 1;
	Delay(2*35);
	}
	else
	If(dial25 % 4 == 3 && GetActorProperty(63, APROP_Health) > 0)
	{
    Hudmessage(s:"Dwarf Shieldguard:    One day we shall reclaim our heritage! Everything I've read about in our old books..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial25 += 1;
	Delay(2*35);
	}
}

//Dwarf Shieldguard Laying
int dial26 = 4;
Script 26 (void)
{
	If(dial26 % 4 == 0 && GetActorProperty(62, APROP_Health) > 0)
	{
	PlaySound(62, "Andrik/Mumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    We charged in and smashed the cultists! You should've seen their shocked faces, hah!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial26 += 1;
	Delay(2*35);
	}
	else
	If(dial26 % 4 == 1 && GetActorProperty(62, APROP_Health) > 0)
	{
	PlaySound(62, "Andrik/Laugh", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    I don't think they were expecting the old dwellers of this place to return today."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial26 += 1;
	Delay(2*35);
	}
	else
	If(dial26 % 4 == 2 && GetActorProperty(62, APROP_Health) > 0)
	{
	PlaySound(62, "Andrik/Grumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    A few cultists have scurried up into the upper part of town. They don't dare attack us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial26 += 1;
	Delay(2*35);
	}
	else
	If(dial26 % 4 == 3 && GetActorProperty(62, APROP_Health) > 0)
	{
    Hudmessage(s:"Dwarf Shieldguard:    We'd help ya break their barricade, but Jaromir wants us to defend the machinery here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial26 += 1;
	Delay(2*35);
	}
}
//Earth Mother Dialogue
Script 27 (void)
{
	If((CheckProximity(184, "IDEarthMother", 320.0, 1) || CheckProximity(184, "IDEarthMotherGuarding", 250.0, 1)) && IsTIDUsed(273))
	{
		Hudmessage(s:"Earth Mother:    What a peculiar object... perhaps High Priest Jaromir can tell us something about it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
	SetLineSpecial(183, 0, 0, 0, 0, 0, 0);
}
Script 28 (void)
{
	If((CheckProximity(185, "IDEarthMother", 320.0, 1) || CheckProximity(185, "IDEarthMotherGuarding", 320.0, 1)) && IsTIDUsed(272))
	{
		Hudmessage(s:"Earth Mother:    That looks like a diving suit... but it's way too small to fit your size."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
}
Script 31 (void)
{
	Delay(35);
	If(CheckProximity(0, "IDEarthMother", 420.0, 1)) // || CheckProximity(0, "IDEarthMotherGuarding", 420.0, 1))
	{
		Hudmessage(s:"Earth Mother:    I can use my magic to breathe underwater, but sadly, I can't do anything for you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
        SetLineSpecial(189, 0, 0, 0, 0, 0, 0);
	}
}
Script 50 (void)
{
	Delay(35);
	If(CheckProximity(0, "IDFixer", 400.0, 1) || CheckProximity(0, "IDFixerGuarding", 400.0, 1) || CheckProximity(0, "IDFixerRecruitable", 400.0, 1))
	{
		SetLineSpecial(255, 0, 0, 0, 0, 0, 0);
		Hudmessage(s:"Fixer:    You look like you saw a ghost down there! I... uhh, everything here has been secured!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
	Delay(6*35);
	If((CheckProximity(0, "IDEarthMother", 480.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 480.0, 1)) && CheckInventory("ScriptHasTriggeredIceCaveAmbush") > 0)
	{
		SetLineSpecial(255, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Earth Mother:    The dwarves have left early. We should make haste and return to the base camp."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
	else
	If((CheckProximity(0, "IDEarthMother", 480.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 480.0, 1)) && CheckInventory("ScriptHasTriggeredIceCaveAmbush") == 0)
	{
		SetLineSpecial(255, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Earth Mother:    High Priest Jarmoir has left early. We should make haste and return to the base camp."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
}

//FIXER SAFEGUARDS
//Complaint
Script 32 (void)
{
	Switch(random(1, 5))
	    {
		Case 1:
		SetFont("SMALLFONT");
		PlaySound(692, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    Oh no, no, no, I'm *not* going there!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 0.5);
		Break;

		Case 2:
		SetFont("SMALLFONT");
		PlaySound(692, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    T-that place looks too scary, I'm staying here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 0.5);
		Break;

		Case 3:
		SetFont("SMALLFONT");
        PlaySound(692, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    I-I'm afraid of deep water, Zan. I'm staying back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 0.5);
		Break;

		Case 4:
		SetFont("SMALLFONT");
        PlaySound(692, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    Uh-uh, I am not going there! No, no, no!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 0.5);
		Break;

		Case 5:
		SetFont("SMALLFONT");
        PlaySound(692, "Fixer/Huh", CHAN_AUTO);
        Hudmessage(s:"Fixer:    I'm going to stay back and err... guard the entrance!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 0.5);
		Break;
		}
}
//Facility
Script 33 (void)
{
	If(CheckActorClass(0, "IDFixer") || CheckActorClass(0, "IDFixerGuarding") || CheckActorClass(0, "IDFixerPathfinder"))
	{
		SpawnSpotForced("DustCloud", 0, 0, 0);
		Thing_Remove(0);
		SpawnSpotForced("IDFixerGuarding", 190, 692, 128);
		SpawnSpotForced("DustCloud", 190, 0, 0);
		ACS_Execute(32, 0, 0, 0, 0);
		Delay(35);
		Thing_ChangeTID(692, 691);
	}
}
//Left
Script 34 (void)
{
	If(CheckActorClass(0, "IDFixer") || CheckActorClass(0, "IDFixerGuarding") || CheckActorClass(0, "IDFixerPathfinder"))
	{
		SpawnSpotForced("DustCloud", 0, 0, 0);
		Thing_Remove(0);
		SpawnSpotForced("IDFixerGuarding", 191, 692, 192);
		SpawnSpotForced("DustCloud", 191, 0, 0);
		ACS_Execute(32, 0, 0, 0, 0);
		Delay(35);
		Thing_ChangeTID(692, 691);
	}
}
//Mid
Script 35 (void)
{
	If(CheckActorClass(0, "IDFixer") || CheckActorClass(0, "IDFixerGuarding") || CheckActorClass(0, "IDFixerPathfinder"))
	{
		SpawnSpotForced("DustCloud", 0, 0, 0);
		Thing_Remove(0);
		SpawnSpotForced("IDFixerGuarding", 192, 692, 192);
		SpawnSpotForced("DustCloud", 192, 0, 0);
		ACS_Execute(32, 0, 0, 0, 0);
		Delay(35);
		Thing_ChangeTID(692, 691);
	}
}
//Right
Script 36 (void)
{
	If(CheckActorClass(0, "IDFixer") || CheckActorClass(0, "IDFixerGuarding") || CheckActorClass(0, "IDFixerPathfinder"))
	{
		SpawnSpotForced("DustCloud", 0, 0, 0);
		Thing_Remove(0);
		SpawnSpotForced("IDFixerGuarding", 193, 692, 192);
		SpawnSpotForced("DustCloud", 193, 0, 0);
		ACS_Execute(32, 0, 0, 0, 0);
		Delay(35);
		Thing_ChangeTID(692, 691);
	}
}
//Deep
Script 37 (void)
{
	If(CheckActorClass(0, "IDFixer") || CheckActorClass(0, "IDFixerGuarding") || CheckActorClass(0, "IDFixerPathfinder"))
	{
		SpawnSpotForced("DustCloud", 0, 0, 0);
		Thing_Remove(0);
		SpawnSpotForced("IDFixerGuarding", 193, 692, 192);
		Delay(35);
		Thing_ChangeTID(692, 691);
	}
}


//AIR REFUELING MACHINE
Script 29 (void)
{
	If(CheckInventory("InventoryEmptyDwarvenTank") > 0)
	{
		TakeInventory("InventoryEmptyDwarvenTank", 1);

		PlaySound(186, "Metal/Land", CHAN_AUTO);
		SpawnSpotForced("IDDwarfDivingTank", 186, 661, 0);
		TagWait(16);
		Delay(50);
		SetLineTexture(188, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
		PlaySound(187, "Interaction/MachineOn", CHAN_AUTO);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		SetLineTexture(188, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	    PlaySound(187, "Switches/Switch2", CHAN_AUTO);
		Thing_Remove(661);
		SpawnSpotForced("InventoryDwarvenTank", 186, 0, 0);
	}
	else
	If(CheckInventory("InventoryDivingSuit") > 0 && CheckInventory("InventoryDivingSuit") < 100)
	{
		TakeInventory("InventoryDivingSuit", 100);

		TakeInventory("PowerDivingSuitA", 1);
		TakeInventory("PowerDivingSuitB", 1);

		SetFont ("OLAYDIVE");
		HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_FADEOUT, 2001, CR_UNTRANSLATED, 1.5, 0.1, 0.01, 0.1);
		HudMessage (s:""; HUDMSG_LAYER_UNDERHUD | HUDMSG_PLAIN, 2002, CR_UNTRANSLATED, 1.5, 0.01, 0.01);

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(12);


		SpawnSpotForced("IDDwarfDivingTank", 186, 661, 0);
		PlaySound(186, "Metal/Land", CHAN_AUTO);
		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(8);
		FadeTo(0, 0, 0, 1.0, 2.0);

		SetLineTexture(188, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
		PlaySound(187, "Interaction/MachineOn", CHAN_AUTO);
		Delay(12);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		PlaySound(186, "Weapons/SteamHiss", CHAN_5);
		Delay(4);
		SetLineTexture(188, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	    PlaySound(187, "Switches/Switch2", CHAN_AUTO);

		FadeTo(0, 0, 0, 0.0, 2.5);
		Thing_Remove(661);
		//SpawnSpotForced("InventoryDivingSuit", 186, 0, 0);
		GiveInventory("InventoryDivingSuit", 100);
		PlaySound(186, "Inventory/PickBase", CHAN_AUTO);
		Delay(1*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	{
	Print(s:"You have nothing to refuel with this machine.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
	}

}


//POWER LINE SWITCH
int spec5 = 0;
Script 5 (void)
{
	If(CheckInventory("InventoryMithrilGear") >= 1 && spec5 == 0)
	{
	TakeInventory("InventoryMithrilGear", 1);
	GiveInventory("ScriptHasFixedGearMachine", 1);
	spec5 = 2;
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	PlaySound(23, "Switches/Switch2", CHAN_AUTO);
	Thing_Deactivate(16);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Thing_Activate(18);
	Delay(16);
	//SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_01");
	//PlaySound(18, "Metal/Bounce", CHAN_AUTO);
	Delay(16);
	//Thing_Deactivate(18);
	Delay(16);
	Thing_Activate(19);
	PlaySound(19, "Metal/Land", CHAN_AUTO);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Delay(16);
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
	PlaySound(23, "Interaction/MachineOn", CHAN_AUTO);
	Thing_Deactivate(19);
	Thing_Deactivate(18);
	Thing_Activate(17);
	Thing_Activate(16);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
	Hudmessage(s:"High Priest Jaromir:    I see you've found a spare gear. Good, this shall ease your access into the underwater installations."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.90, 7.5, 0.2, 0.5);
	}
	else
	If(CheckInventory("InventoryMithrilGear") >= 1 && spec5 == 1)
	{
	TakeInventory("InventoryMithrilGear", 1);
	GiveInventory("ScriptHasFixedGearMachine", 1);
	spec5 = 2;
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	PlaySound(23, "Switches/Switch2", CHAN_AUTO);
	Thing_Deactivate(17);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Thing_Activate(19);
	Delay(16);
	//SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_01");
	//PlaySound(16, "Metal/Bounce", CHAN_AUTO);
	Delay(16);
	//Thing_Deactivate(19);
	Delay(16);
	Thing_Activate(18);
	PlaySound(18, "Metal/Land", CHAN_AUTO);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Delay(16);
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
	PlaySound(23, "Interaction/MachineOn", CHAN_AUTO);
	Thing_Deactivate(19);
	Thing_Deactivate(18);
	Thing_Activate(17);
	Thing_Activate(16);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	PlaySound(180, "Jaromir/Hah", CHAN_AUTO);
	Hudmessage(s:"High Priest Jaromir:    I see you've found a spare gear. Good, this shall ease your access into the underwater installations."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.88, 7.5, 0.2, 0.5);
	}
	else
	If(CheckInventory("InventoryMithrilGear") == 0 && spec5 == 0)
	{
	spec5 += 1;
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	PlaySound(23, "Switches/Switch2", CHAN_AUTO);
	Thing_Deactivate(16);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Thing_Activate(18);
	Delay(16);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_01");
	PlaySound(18, "Metal/Bounce", CHAN_AUTO);
	Delay(16);
	Thing_Deactivate(18);
	Delay(16);
	Thing_Activate(19);
	PlaySound(19, "Metal/Land", CHAN_AUTO);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Delay(16);
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
	PlaySound(23, "Interaction/MachineOn", CHAN_AUTO);
	Thing_Deactivate(19);
	Thing_Activate(17);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	}
	else
	If(CheckInventory("InventoryMithrilGear") == 0 && spec5 == 1)
	{
	spec5 -= 1;
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_UP");
	PlaySound(23, "Switches/Switch2", CHAN_AUTO);
	Thing_Deactivate(17);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Thing_Activate(19);
	Delay(16);
	SetLineTexture(21, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_01");
	PlaySound(16, "Metal/Bounce", CHAN_AUTO);
	Delay(16);
	Thing_Deactivate(19);
	Delay(16);
	Thing_Activate(18);
	PlaySound(21, "Metal/Land", CHAN_AUTO);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Delay(16);
	SetLineTexture(24, SIDE_FRONT, TEXTURE_BOTTOM, "Sw05_DN");
	PlaySound(23, "Interaction/MachineOn", CHAN_AUTO);
	Thing_Deactivate(18);
	Thing_Activate(16);
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_A1");
	}
}

//Red Line
Script 38 (void)
{
	SetLineSpecial(274, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(224, 0, 0, 0, 0, 0, 0);
	Thing_Remove(256);
	SetLineTexture(215, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_02");
	Thing_Activate(214);
	Delay(16);
	SetLineTexture(215, SIDE_FRONT, TEXTURE_MIDDLE, "Gear_01");
	PlaySound(214, "Metal/Bounce", CHAN_AUTO);
	If(CheckInventory("InventoryMithrilGear") == 0 && CheckInventory("ScriptHasFixedGearMachine") == 0)
	{
		SpawnSpotForced("InventoryMithrilGear", 226, 0, 0);
	}
	else
	{
		SpawnSpotForced("IDMithrilGear", 226, 0, 0);
	}
	Delay(16);
	Thing_Deactivate(214);
	Delay(35);
	Delay(105);
	Radius_Quake(1, 70, 0, 10, 227);
	Delay(70);
	Radius_Quake(3, 105, 0, 10, 227);
	Ceiling_lowerByValue(212, 9999, 175);
	SpawnSpotForced("ExplosionLarge", 227, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 227, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionMedium", 227, 0, 0);
	SetActorFlag(216, "NOBLOCKMAP", 1);
	Thing_Destroy(216, 1, 0);
	Delay(50);
	Thing_Destroy(217);
	Thing_Remove(213);
	SpawnSpotForced("Golem", 220, 0, 192);
	Delay(1);
	NoiseAlert(1,1);
	Delay(70);
	Thing_Spawn(221, 65010, 0, 0);
}

//WATER PUMP
Script 12 (void)
{
	FloorAndCeiling_RaiseByValue(147, 32, 256);
	Ceiling_LowerByValue(145, 8, 64);
	TagWait(147);
	TagWait(145);
	Delay(12);
	FloorAndCeiling_LowerByValue(147, 32, 256);
	Ceiling_RaiseByValue(146, 8, 64);
	TagWait(147);
	TagWait(146);
	PlaySound(153, "Cultist/Death", CHAN_AUTO);

	Delay(12);

	FloorAndCeiling_RaiseByValue(147, 24, 256);
	Ceiling_LowerByValue(145, 6, 64);
	Delay(35);
	PlaySound(153, "PitLord/Sight", CHAN_AUTO);
	TagWait(147);
	TagWait(145);
	Delay(12);
	FloorAndCeiling_LowerByValue(147, 24, 256);
	Ceiling_RaiseByValue(146, 6, 64);
	TagWait(147);
	TagWait(146);

	Delay(12);

	FloorAndCeiling_RaiseByValue(147, 16, 256);
	Ceiling_LowerByValue(145, 4, 64);
	TagWait(147);
	TagWait(145);
	Delay(12);
	FloorAndCeiling_LowerByValue(147, 16, 256);
	Ceiling_RaiseByValue(146, 4, 64);
	Delay(35);
	Thing_Activate(148);
	Thing_Hate(148, 0, 4);
	Thing_Activate(153);
	NoiseAlert(0, 0);
	Delay(45);
	Thing_Remove(149);
	SetActorState(150, "Special", 0);
	TagWait(147);
	TagWait(146);

	Delay(12);

	FloorAndCeiling_RaiseByValue(147, 16, 256);
	Ceiling_LowerByValue(145, 4, 64);
	TagWait(147);
	TagWait(145);
	Delay(12);
	FloorAndCeiling_LowerByValue(147, 16, 256);
	Ceiling_RaiseByValue(146, 4, 64);
	Thing_Remove(151);
	SetActorState(152, "Special", 0);
	TagWait(147);
	TagWait(146);

	Delay(12);

	SpawnSpotForced("HedonTeleportFogDemon", 153, 0, 0);
	PlaySound(153, "misc/teleport", CHAN_AUTO);
	Thing_Remove(153);
	SpawnSpotForced("PitLord", 154, 660, 192);
	SetActorProperty(660, APROP_Health, 300);
	SpawnSpotForced("Conscript", 155, 660, 192);
	Thing_Deactivate(660);

	FloorAndCeiling_RaiseByValue(147, 16, 256);
	Ceiling_LowerByValue(145, 4, 64);
	TagWait(147);
	TagWait(145);
	Delay(12);
	FloorAndCeiling_LowerByValue(147, 16, 256);
	Ceiling_RaiseByValue(146, 4, 64);
	TagWait(147);
	TagWait(146);

	Delay(12);

	FloorAndCeiling_RaiseByValue(147, 16, 256);
	Ceiling_LowerByValue(145, 8, 64);
	TagWait(147);
	TagWait(145);
}

//PRESSURE PLATE
Script 14 (void)
{
	If(GameSkill() > SKILL_VERY_HARD)
		{
		If(CheckInventory("Stormstaff") > 0)
		  {
		  //GiveInventory("ManaBall", 15);
		  SetLineSpecial(159, 0, 0, 0, 0, 0, 0);
		  Floor_LowerByValue(161, 4, 6);
		  TagWait(161);
		  Ceiling_RaiseByValue(130, 8, 96);
		  Thing_Activate(660);
		  Thing_Activate(158);
		  }
		}
		else
		{
		SetLineSpecial(159, 0, 0, 0, 0, 0, 0);
		Delay(16);
		//Floor_LowerByValue(161, 4, 6);
		//TagWait(161);
		Ceiling_RaiseByValue(130, 8, 96);
		Thing_Activate(660);
		Thing_Activate(158);
		}
}

//AIRLOCK
Script 15 (void)
{
	Ceiling_RaiseByvalue(169, 8, 64);
	PlaySound(172, "Terrain/Water1", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(12);
	PlaySound(172, "Terrain/Water2", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Activate(171);
	Ceiling_RaiseByValue(168, 8, 32);
	Ceiling_RaiseByValue(167, 4, 9);
	Ceiling_LowerByValue(170, 12, 81);
	TagWait(170);
	Thing_Deactivate(171);
	Thing_Activate(172);
	Ceiling_LowerByValue(170, 12, 32);
	Ceiling_LowerByValue(168, 12, 32);
	TagWait(168);
	Ceiling_LowerByValue(167, 1, 9);
	TagWait(167);
	Thing_Deactivate(172);
}

//UPPER TOWN AMBUSH
Script 20 (void)
{
	SetLineSpecial(176, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("Hellblaze", 177, 0, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 177, 0, 0);
	PlaySound(177, "misc/teleport", CHAN_AUTO);

}
Script 16 (void)
{
	If(CheckInventory("StoneKey") > 0)
	{
	Thing_Remove(179);
	SetLineSpecial(173, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("SniperHellion", 174, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 174, 0, 0);
	PlaySound(174, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 175, 0, 64);
	SpawnSpotForced("HedonTeleportFogDemon", 175, 0, 0);
	PlaySound(175, "misc/teleport", CHAN_AUTO);
	}
}

//STONE KEY AUTOSAVE
Script 21 (void)
{
	If(CheckInventory("StoneKey") > 0)
	{
		Thing_Remove(178);
		Autosave();
	}
}

//CYAN CRYSTAL PEDESTALS
Script 42 (void)
{
	If(CheckInventory("InventoryCyanCrystal") > 0)
	{
		SetLineSpecial(231, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryCyanCrystal", 1);
		SpawnSpotForced("JunkBrokenCyanCrystal", 232, 0, 0);
		PlaySound(232, "Metal/Land", CHAN_AUTO);
		Delay(50);
		Ceiling_RaiseByValue(233, 8, 64);
		TagWait(233);
		Delay(16);
		ACS_Execute(45, 0, 0, 0, 0);
	}
	else
	{
	Print(s:"The pedestal is empty.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
Script 43 (void)
{
	If(CheckInventory("InventoryCyanCrystal") > 0)
	{
		SetLineSpecial(234, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryCyanCrystal", 1);
		SpawnSpotForced("JunkBrokenCyanCrystal", 235, 0, 0);
		PlaySound(235, "Metal/Land", CHAN_AUTO);
		Delay(50);
		Ceiling_RaiseByValue(236, 8, 64);
		TagWait(236);
		Delay(16);
		ACS_Execute(45, 0, 0, 0, 0);
	}
	else
	{
	Print(s:"The pedestal is empty.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
Script 44 (void)
{
	If(CheckInventory("InventoryCyanCrystal") > 0)
	{
		SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryCyanCrystal", 1);
		SpawnSpotForced("JunkBrokenCyanCrystal", 238, 0, 0);
		PlaySound(238, "Metal/Land", CHAN_AUTO);
		Delay(50);
		Floor_LowerByValue(239, 8, 64);
		TagWait(239);
		Delay(16);
		ACS_Execute(45, 0, 0, 0, 0);
	}
	else
	{
	Print(s:"The pedestal is empty.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}
//Gate Unlocker
Script 45 (void)
{
	If(GetSectorCeilingZ(233, 0, 0) == -588.0 && GetSectorCeilingZ(236, 0, 0) == -588.0 && GetSectorFloorZ(239, 0, 0) == -710.0)
	{
		Floor_LowerByValue(240, 4, 32);
		Ceiling_RaiseByValue(240, 4, 32);
		Thing_Deactivate(243);
		TagWait(240);
		Autosave();
		Line_SetBlocking(230, 0, BLOCKF_EVERYTHING);

		//Dwarves Leave
		Thing_Remove(62);
		Thing_Remove(63);
		Thing_Remove(64);
		Thing_Remove(180);
		SetLineSpecial(253, 0, 0, 0, 0, 0, 0);
	}
}

//BLUE BARON ENCOUNTER
Script 46 (void)
{
	PlaySound(250, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Hudmessage(s:"Blue Baron:    Here she is, at last. The call is irresistible... so many questions running through her mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);

	Line_SetBlocking(275, BLOCKF_EVERYTHING, 0);
	SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	TranslucentLine(275, 25, 0);
	Delay(2);
	TranslucentLine(275, 50, 0);
	Delay(2);
	TranslucentLine(275, 75, 0);
	Delay(2);
	TranslucentLine(275, 100, 0);
	Delay(2);
	TranslucentLine(275, 125, 0);
	Delay(2);
	TranslucentLine(275, 150, 0);
	Delay(2);
	TranslucentLine(275, 175, 0);
	Delay(2);
	TranslucentLine(275, 200, 0);

	Delay(7*35);
	PlaySound(250, "BlueBaron/Grr", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Hudmessage(s:"Quite a marvelous place, is it not?... So many secrets lie buried here. Forgotten and forever lost."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	PlaySound(250, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Hudmessage(s:"Will the Halfblood follow the same fate? Will this be her eternal sunken tomb? Minions! Prepare a funeral!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	Thing_Activate(243);
	PlaySound(243, "Interaction/FireBlow", CHAN_AUTO, 1.0);
	Light_Fade(257, 120, 70);
	Ceiling_RaiseByvalue(242, 16, 160);
	Delay(16);
	Thing_Activate(251);
	Thing_Activate(258);
	Delay(1);
	ACS_Execute(47, 0, 0, 0, 0);

}
//Psi Demon Check
Script 47 (void)
{
	If(GetActorProperty(251, APROP_Health) <= 0 && GetActorProperty(258, APROP_Health) <= 0)
	{
		PlaySound(250, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"Blue Baron:    The Elf speaks true... she is starting to live up to her true potential. And now, her reward..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
		PlaySound(250, "BlueBaron/Grr", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"...she will claim the Seed. But will she live long enough to lose it? The core of Hell awaits her. And so do I."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
		//Thing_Activate(250);
		Delay(16);
		Thing_Destroy(250, 0, 0);
		SetLineSpecial(255, ACS_Execute, 50, 0, 0, 0, 0);
		Delay(24);
		Ceiling_RaiseByvalue(252, 16, 160);
		Terminate;
	}
	Delay(105);
	Restart;
}

//Vault Exit
Script 49 (void)
{
	If(CheckInventory("InventorySeedOfCorruption") > 0)
	{
		SetLineSpecial(254, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("PsiDemon", 266, 0, 192);
		TakeInventory("QuestMap13InvestigateRuins", 1);
		GiveInventory("QuestMap13DebriefMap15", 2);
	    If(CheckInventory("InventoryJournal") > 0)
	    {
		  //PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }

	    TranslucentLine(275, 175, 0);
	    Delay(2);
	    TranslucentLine(275, 150, 0);
		Delay(2);
		TranslucentLine(275, 125, 0);
	    Delay(2);
	    TranslucentLine(275, 100, 0);
	    Delay(2);
	    TranslucentLine(275, 75, 0);
	    Delay(2);
	    TranslucentLine(275, 50, 0);
	    Delay(2);
	    TranslucentLine(275, 25, 0);
		Delay(2);
		Line_SetBlocking(275, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(275, SIDE_FRONT, TEXTURE_MIDDLE, "");

		Delay(105);
	    SetMusic("HTrack27");
		Autosave();
	}
}



//MINE ORE
Script 51 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(259) && GetActorZ(0) < -360.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(259);
	SpawnSpotForced("DustPuff", 260, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 260, 0, 0);
  }
    else
	  If (IsTIDUsed(259) && GetActorZ(0) < -360.0)
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 52 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(261) && GetActorZ(0) > -560.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(261);
	SpawnSpotForced("DustPuff", 262, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryDarkIronOre", 262, 0, 0);
  }
    else
	  If (IsTIDUsed(261) && GetActorZ(0) > -560.0)
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 53 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(263))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(263);
	SpawnSpotForced("DustPuff", 264, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 264, 0, 0);
  }
    else
	  If (IsTIDUsed(263))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 54 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(267))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(267);
	SpawnSpotForced("DustPuff", 268, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 268, 0, 0);
  }
    else
	  If (IsTIDUsed(267))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}

//TREASURY LOCK
Script 201 (void)
{
	If(GetSectorFloorZ(201, 0, 0) == -209.0)
	{
		Floor_LowerByValue(201, 8, 1);
		TagWait(201);
	}
	else
	If(GetSectorFloorZ(201, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(201, 8, 1);
		TagWait(201);
	}
}

Script 202 (void)
{
	If(GetSectorFloorZ(202, 0, 0) == -209.0)
	{
		Floor_LowerByValue(202, 8, 1);
		TagWait(202);
	}
	else
	If(GetSectorFloorZ(202, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(202, 8, 1);
		TagWait(202);
	}
}

Script 203 (void)
{
	If(GetSectorFloorZ(203, 0, 0) == -209.0)
	{
		Floor_LowerByValue(203, 8, 1);
		TagWait(203);
	}
	else
	If(GetSectorFloorZ(203, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(203, 8, 1);
		TagWait(203);
	}
}

Script 204 (void)
{
	If(GetSectorFloorZ(204, 0, 0) == -209.0)
	{
		Floor_LowerByValue(204, 8, 1);
		TagWait(204);
	}
	else
	If(GetSectorFloorZ(204, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(204, 8, 1);
		TagWait(204);
	}
}

Script 205 (void)
{
	If(GetSectorFloorZ(205, 0, 0) == -209.0)
	{
		Floor_LowerByValue(205, 8, 1);
		TagWait(205);
	}
	else
	If(GetSectorFloorZ(205, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(205, 8, 1);
		TagWait(205);
	}
}

Script 206 (void)
{
	If(GetSectorFloorZ(206, 0, 0) == -209.0)
	{
		Floor_LowerByValue(206, 8, 1);
		TagWait(206);
	}
	else
	If(GetSectorFloorZ(206, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(206, 8, 1);
		TagWait(206);
	}
}

Script 207 (void)
{
	If(GetSectorFloorZ(207, 0, 0) == -209.0)
	{
		Floor_LowerByValue(207, 8, 1);
		TagWait(207);
	}
	else
	If(GetSectorFloorZ(207, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(207, 8, 1);
		TagWait(207);
	}
}

Script 208 (void)
{
	If(GetSectorFloorZ(208, 0, 0) == -209.0)
	{
		Floor_LowerByValue(208, 8, 1);
		TagWait(208);
	}
	else
	If(GetSectorFloorZ(208, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(208, 8, 1);
		TagWait(208);
	}
}

Script 209 (void)
{
	If(GetSectorFloorZ(209, 0, 0) == -209.0)
	{
		Floor_LowerByValue(209, 8, 1);
		TagWait(209);
	}
	else
	If(GetSectorFloorZ(209, 0, 0) == -210.0)
	{
		Floor_RaiseByValue(209, 8, 1);
		TagWait(209);
	}
}

Script 210 (void) //2367
{
	If(GetSectorFloorZ(201, 0, 0) == -209.0 && GetSectorFloorZ(202, 0, 0) == -210.0 && GetSectorFloorZ(203, 0, 0) == -210.0 && GetSectorFloorZ(204, 0, 0) == -209.0 && GetSectorFloorZ(205, 0, 0) == -209.0 && GetSectorFloorZ(206, 0, 0) == -210.0 && GetSectorFloorZ(207, 0, 0) == -210.0 && GetSectorFloorZ(208, 0, 0) == -209.0 && GetSectorFloorZ(209, 0, 0) == -209.0)
	{
		Ceiling_RaiseByValue(210, 8, 66);
		TagWait(210);
		Delay(175);
		Ceiling_LowerByValue(210, 8, 66);
		TagWait(210);
	}
	else
	{
	Print(s:"The mechanism clicks and rumbles but the door stays closed.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
	}
}

//POWER DOORS
//Yellow
Script 8 (void)
{
	If(spec5 == 0 || spec5 > 1)
	{
		Ceiling_RaiseByValue(26, 16, 66);
		TagWait(26);
		Delay(175);
		Ceiling_LowerByValue(26, 16, 66);
		TagWait(26);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
Script 9 (void)
{
	If(spec5 == 0 || spec5 > 1)
	{
		Ceiling_RaiseByValue(27, 16, 66);
		TagWait(27);
		Delay(175);
		Ceiling_LowerByValue(27, 16, 66);
		TagWait(27);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
Script 10 (void)
{
	If(spec5 == 0 || spec5 > 1)
	{
		Ceiling_RaiseByValue(28, 16, 66);
		TagWait(28);
		Delay(175);
		Ceiling_LowerByValue(28, 16, 66);
		TagWait(28);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
//Blue
Script 7 (void)
{
	If(spec5 == 1 || spec5 > 1)
	{
		Ceiling_RaiseByValue(25, 16, 66);
		TagWait(25);
		Delay(175);
		Ceiling_LowerByValue(25, 16, 66);
		TagWait(25);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
Script 11 (void)
{
	If(spec5 == 1 || spec5 > 1)
	{
		Ceiling_RaiseByValue(123, 16, 66);
		TagWait(123);
		Delay(175);
		Ceiling_LowerByValue(123, 16, 66);
		TagWait(123);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
Script 13 (void)
{
	If(GetSectorCeilingZ(145, 0, 0) > -672.0)
	{
		Print(s:"The water is pressuring the door shut.");
		PlaySound(0, "Character/ZanFail2", CHAN_VOICE);
	    Delay(35);
	}
	else
	If(spec5 == 1 || spec5 > 1)
	{
		Ceiling_RaiseByValue(157, 16, 66);
		TagWait(157);
		Delay(175);
		Ceiling_LowerByValue(157, 16, 66);
		TagWait(157);
	}
	else
	{
		Print(s:"The power line this door is connected to seems to be down.");
	    Delay(35);
	}
}
//Red
Script 40 (void)
{
		Ceiling_RaiseByValue(223, 16, 66);
		TagWait(223);
		Delay(175);
		Ceiling_LowerByValue(223, 16, 66);
		TagWait(223);
}
Script 41 (void)
{
		Ceiling_RaiseByValue(222, 16, 66);
		TagWait(222);
		Delay(175);
		Ceiling_LowerByValue(222, 16, 66);
		TagWait(222);
}

//GATES & ELEVATORS
Script 4 (void)
{
	TagWait(5);
	TagWait(6);
	Floor_LowerByValue(5, 16, 264);
	Floor_RaiseByValue(6, 16, 264);
	TagWait(5);
	TagWait(6);
	Delay(150);
	Floor_RaiseByValue(5, 16, 264);
	Floor_LowerByValue(6, 16, 264);
	TagWait(5);
	TagWait(6);
}

//ROTATING DOORS
Script 180 (void)
{
  If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") > 0)
  {
    Polyobj_DoorSwing(180,-16,64,350); //175
  }
    else
    If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") == 0)
    {
      Print(s:"This door requires a Stone key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 218 (void)
{
	  Print(s:"This door is locked from the inside.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 219 (void)
{
  If(GetActorZ(0) < -24.0)
  {
	SetLineSpecial(38, 80, 219, 0, 0, 0, 0);
    Polyobj_DoorSwing(219,16,64,175);
  }
}

Script 270 (void)
{
  If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") > 0)
  {
    Polyobj_DoorSwing(270,16,64,350); //175
  }
    else
    If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") == 0)
    {
      Print(s:"This door requires a Stone key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 360 (void)
{
  If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") > 0)
  {
    Polyobj_DoorSwing(360,16,64,175);
  }
    else
    If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") == 0)
    {
      Print(s:"This door requires a Stone key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 361 (void)
{
  If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") > 0)
  {
    Polyobj_DoorSwing(361,-16,64,175);
  }
    else
    If(GetActorZ(0) < -24.0 && CheckInventory("StoneKey") == 0)
    {
      Print(s:"This door requires a Stone key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}


//READABLES

Script 30 (void)
{
	  SetFont ("OLAYTMID");
      HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 12.0);

	  SetFont("SMALLFONT");
	  Hudmessage(s:"(The grime-encrusted common cuneiform letters reveal a worn out message)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 12.0);
	  Hudmessage(s:"AIR TANK REFUELING STATION"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 12.0);
	  Hudmessage(s:"& UNDERWATER GATE CONTROL"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.54, 12.0);
}

Int Spec39 = 0;
Script 39 (void)
{
	  SetFont ("OLAYTBOT");
      HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	  SetFont("SMALLFONT");
	  Hudmessage(s:"(As you browse through the scientific notes, you notice excerpts from Lith's studies in Valc)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 15.0);

	  Delay(6*35);
	  If((CheckProximity(0, "IDEarthMother", 320.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 420.0, 1)) && Spec39 == 0)
	    {
		  Spec39 += 1;
	  	  Hudmessage(s:"Earth Mother:    The Cult must have furthered Lith's research during all this time..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
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
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 104, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 101, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 102, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 103, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 5, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 6, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 7, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 8, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 9, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 12, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	//Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
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