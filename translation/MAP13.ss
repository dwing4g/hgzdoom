#include "zcommon.acs"

//Total Gold placed: 350
//Total Iron placed: 6 +2 Brutalizing
//Total Dark Iron placed: 3
//658, 659, 660, 661, 662, 663, 664, 665. 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, ... 689 ||| 700, ... 792, ... 813
//657, 656, 655, 654, 653, 652, 651, 650, 649


//LEVEL END
int DemonRaid1 = 0;
int IDAssaultPrep = 0;
//Return
Script 162 RETURN
{
	SetMusic("HTrack24");


	If(CheckInventory("ScriptHasActivatedMinotaurMineGate") > 0)
	{
		SetLineSpecial(510, ACS_Execute, 190, 0, 0, 0, 0);
		SetLineTexture(511, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	}

	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Burial
	If(GetActorProperty(447, APROP_Health) <= 0 && IsTIDUsed(447))
		{
		  Thing_remove(447);
		  ChangeFloor(784, "DIRT1");
		  Floor_LowerByValue(784, 4, 2);
		  SpawnSpotForced("NatureStoneC", 785, 0, 0);
		}
	If(GetActorProperty(446, APROP_Health) <= 0 && IsTIDUsed(446))
		{
		  Thing_Remove(446);
		  ChangeFloor(786, "DIRT1");
		  Floor_LowerByValue(786, 4, 2);
		  SpawnSpotForced("IDPoleB", 787, 0, 0);
		}
	If(GetActorProperty(444, APROP_Health) <= 0 && IsTIDUsed(444))
		{
		  Thing_Remove(444);
		  ChangeFloor(788, "DIRT1");
		  Floor_LowerByValue(788, 4, 2);
		  SpawnSpotForced("IDPotA", 789, 0, 0);
		}
	If(GetActorProperty(445, APROP_Health) <= 0 && IsTIDUsed(445))
		{
		  Thing_Remove(445);
		  ChangeFloor(790, "DIRT1");
		  Floor_LowerByValue(790, 4, 3);
		  SpawnSpotForced("NatureFlowerRosesB", 791, 0, 0);
		}

	//Demon attack
	If(DemonRaid1 == 0 && CheckInventory("QuestMap13SecurePowder") == 1 && CheckInventory("QuestMap13DebriefMap14") == 2)
	{
		DemonRaid1 += 1;
		Thing_Remove(660);
		SpawnSpotForced("PitLord", 515, 668, 192);
		SpawnSpotForced("Hellblaze", 516, 668, 192);
		SpawnSpotForced("Cerberus", 517, 668, 192);
		SpawnSpotForced("IronMaiden", 518, 668, 192);
		SpawnSpotForced("Conscript", 519, 668, 192);
		Delay(1);
		Thing_Deactivate(668);
	}

    //Phase 3 Changes
	If(IDAssaultPrep == 0 && CheckInventory("QuestMap13DebriefMap15") == 2)
	{
		IDAssaultPrep += 1;
		Thing_Remove(668);
		Thing_Remove(901);
		SpawnSpotForced("NPCJaromirBattle", 611, 428, 192);
		SpawnSpotForced("IDBannerC", 612, 0, 192);
		SpawnSpotForced("NPCDuraRegular", 613, 686, 192);
		SpawnSpotForced("IDReaverStationary", 614, 0, 0);
		SpawnSpotForced("IDBearWarriorStationary", 615, 687, 64);
		SpawnSpotForced("IDBearWarriorStationary", 616, 688, 64);
		ACS_Execute(217, 0, 0, 0, 0);
		Thing_Remove(670);
		Thing_Remove(689);
		Thing_Remove(430);
		Thing_Destroy(618, 0, 0);
		SpawnSpotForced("IDBarrel1", 617, 700, 0);
		//SpawnSpotForced("IDWitchStationary", 619, 701, 64);
		//SpawnSpotForced("IDFixerStationary", 620, 702, 0);
		Floor_LowerByValue(622, 9999, 318);
		Thing_Remove(431);
		Thing_Remove(623);
		Ceiling_RaiseByValue(624, 9999, 80);
		SpawnSpotForced("NPCGrundRegular", 485, 703, 192);

		SpawnSpotForced("DeadIDFixer", 627, 0, 0);
		SpawnSpotForced("FragfireGun", 628, 0, 0);
		SpawnSpotForced("DeadHellblaze", 629, 0, 0);
		SpawnSpotForced("Hellclaw", 630, 0, 0);
		SpawnSpotForced("DeadPitLord", 631, 0, 0);
		//Floor_RaiseByValue(634, 9999, 24);
		//Floor_RaiseByValue(635, 9999, 32);
		//FloorAndCeiling_RaiseByValue(637, 9999, 40);
		//ChangeFloor(634, "IRON1_G");
		//ChangeFloor(638, "IRON1_G");
		//ChangeFloor(639, "IRON1_G");
		//Floor_RaiseByValue(638, 9999, 1);
		//Floor_RaiseByValue(639, 9999, 1);
	}
}
//Friendly Spawner
Script "FriendlySpawnerCustomReturn" RETURN
{
	If(CheckProximity(0, "IDPillowA", 320.0, 1, CPXF_NOZ))
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
	If(CheckProximity(0, "IDPillowB", 320.0, 1, CPXF_NOZ))
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
	If(CheckProximity(0, "IDPillowC", 320.0, 1, CPXF_NOZ))
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
	else
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
}
//Map14
//South Entrance
Script 163 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map14", 2, CHANGELEVEL_NOINTERMISSION, -1);
}
//West Entrance
Script 185 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map14", 3, CHANGELEVEL_NOINTERMISSION, -1);
}
//East Entrance
Script 186 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map14", 4, CHANGELEVEL_NOINTERMISSION, -1);
}
//Map15
//North Entrance
Script 189 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map15", 2, CHANGELEVEL_NOINTERMISSION, -1);
}
//West Entrance
Script 191 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	Thing_Remove(691);
	ChangeLevel("Map15", 3, CHANGELEVEL_NOINTERMISSION, -1);
}

//LEVEL START
Script 94 ENTER
{
	FadeTo(0, 0, 0, 1.0, 0.0);

    SetWeapon("Fists");
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	ChangeCamera(362, 0, 0);
	SetMugshotState("Sleep");
	TakeInventory("IsPlaying", 1);

	ACS_Execute(223, 0, 0, 0, 0);
}
Script 223 (void)
{
 // /*
	//FadeTo(0, 0, 0, 1.0, 0.0);

    //SetWeapon("Fists");
	//SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	//SetActorProperty(0, APROP_Speed, 0.0);
	//SetActorProperty(0, APROP_Friction, 0.1);
	//ChangeCamera(362, 0, 0);
	//TakeInventory("IsPlaying", 1);


	Delay(50);

	Thing_ChangeTID(901, 900);

	PlaySound(364, "Step/MetalLeft", CHAN_AUTO, 0.1);
	Delay(24);
	PlaySound(365, "Step/MetalRight", CHAN_AUTO, 0.2);
	Delay(24);
	PlaySound(366, "Step/MetalLeft", CHAN_AUTO, 0.3);
	Delay(24);
	PlaySound(367, "Step/MetalRight", CHAN_AUTO, 0.4);
	Delay(24);
	PlaySound(368, "Step/MetalLeft", CHAN_AUTO, 0.5);
	Delay(24);
	PlaySound(369, "Step/MetalRight", CHAN_AUTO, 0.6);
	Delay(24);
	PlaySound(370, "Step/MetalLeft", CHAN_AUTO, 0.7);
	Delay(24);
	PlaySound(371, "Step/MetalRight", CHAN_AUTO, 0.8);
	Delay(24);
	PlaySound(372, "Step/MetalLeft", CHAN_AUTO, 0.9);
	Delay(16);
	PlaySound(363, "Interaction/FootStep", CHAN_AUTO);
	Delay(24);
	PlaySound(363, "Interaction/MachineOn", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Delay(16);
	Ceiling_RaiseByValue(373, 6, 84);
	Delay(35);
	SetMugshotState("Normal");
	Delay(105);

	PlaySound(363, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    It's your lucky day, Halfblood, your name was cleared of cowardice. Get up, Breaza wants to see you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 5.5, 0.2, 2.5);

	Delay(210);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(105);

    //TakeInventory("IsPlaying", 1);
    ACS_Execute(224, 0, 0, 0, 0); //skip Briefing 1
	Delay(145);
	//GiveInventory("IsPlaying", 1);

	SetMusic("HTrack24");
	ACS_NamedExecuteWithResult("FriendlySpawner");
	ChangeCamera(0, 0, 0);
	Thing_Remove(363);
	Delay(70);
	Thing_Activate(384);
	Delay(35);
	FadeTo(0, 0, 0, 0.0, 8.0);
	Delay(70);

	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
    Hudmessage(s:"Grand Earth Mother Breaza:    Welcome back among us, Zan. I apologise for the harsh reception."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    Delay(2*35);
	Thing_Remove(384);
	Delay(5*35);

	Delay(35);
	Delay(35);

	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
    Hudmessage(s:"Tiati here has told us about what happened. The news about Valc's siege strikes yet another heavy blow against us..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
    Hudmessage(s:"We are all that's left of our campaign force, and receiving reinforcements from home was our last and only hope."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
    Hudmessage(s:"I have summoned you all here to inform you that we have run short on both time and options. You know what we must do."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	Delay(24);

	PlaySound(377, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    The Earth is calling us back. We march forth, and die with honour!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 4.5, 0.2, 0.5);
    Delay(5*35);

	Delay(16);

	PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    Indeed we shall. But we will not die in vain. We have to bring the Demons to their knees."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	Delay(35);

	PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Advisor:    Now we are a mouse, trying to bring down a mammoth. All we need is to find the right crack to slip through."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    It is the only path left to take. Give the news to your men, and tell them to prepare."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	Delay(16);

	PlaySound(378, "Jaromir/Heh", CHAN_AUTO);
	Hudmessage(s:"High Priest Jaromir:    We've been prepared for ages, woman. All we need is for the horns to call for battle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);
	Delay(6*35);

	Delay(16);
	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    Well then, this is it... do you have any questions?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	Delay(5*35);

	PlaySound(379, "Eraanthe/Mmf", CHAN_AUTO);
	Hudmessage(s:"Eraanthe:    If I may... now that your precious smurf has returned, I assume our contract still holds?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	Delay(50);

	PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    You will earn your vengeance, Queen of Wrath. Sooner than you may think."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	Delay(6*35);
	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Well then, you all know what to do. As for you, Zan, I want you to get some rest. We have a spare room for you and Tiati."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 8.5, 0.2, 0.5);
	Delay(9*35);

	If((CheckInventory("Crylance") == 0 && GameSkill() != 5) || (CheckInventory("ForcePike") == 0 && GameSkill() == 5))
	{
		If(GameSkill() == 5)
		{
		  SpawnSpotForced("ForcePike", 802, 0, 0);
		  PlaySound(802, "Weapons/ForcePikePickup", CHAN_AUTO);
		  PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
	      Hudmessage(s:"Advisor:    And take this Force Pike, for the love of all Gods. How have you made it so far without one?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);

		}
		else
		{
		  SpawnSpotForced("Crylance", 802, 0, 0);
		  PlaySound(802, "Weapons/CrylanceReady", CHAN_AUTO);
		  PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
	      Hudmessage(s:"Advisor:    And take this Crylance, for the love of all Gods. How have you even made it so far without one-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    }
		Delay(5*35);
		PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
	    Hudmessage(s:"Grand E. M. Breaza:    I'd rather she avoided fighting now, Advisor. Give your bruises some time to heal, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	SpawnSpotForced("InventoryJournal", 380, 0, 0);
	PlaySound(380, "Inventory/PickShort", CHAN_AUTO, 0.4);
	PlaySound(380, "Inventory/Paper", CHAN_AUTO, 0.8);
	GiveInventory("QuestMap13Sleep", 2);
	SpawnSpotForced("MarkerExitAlt", 808, 809, 0);

	Hudmessage(s:"Oh, and take this journal if you wish. Perhaps a little writing will help you ease your mind before we set off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	Delay(35);

	PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
	Hudmessage(s:"Dismissed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 3.5, 0.2, 0.5);
	Delay(1*35);

	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(105);
	Thing_Remove(377);
	Thing_Remove(378);
	Thing_Remove(379);
	Thing_Remove(381);
	Delay(35);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Autosave();


    TakeInventory("InventoryPsiCrown", 1);
	If(CheckInventory("InventoryAncientDictionary") > 0)
	{
		TakeInventory("InventoryAncientDictionary", 1);
		SpawnSpotForced("DemonBookG", 336, 0, 0);
		SpawnSpotForced("VoidDemonAncientDictionary", 534, 0, 0);
	}
	If(CheckInventory("InventoryShovelB") > 0)
	{
		TakeInventory("InventoryShovelB", 1);
		SpawnSpotForced("CultShovel", 337, 0, 0);
	}
	If(CheckInventory("InventorySledgehammer") > 0)
	{
		TakeInventory("InventorySledgehammer", 1);
		SpawnSpotForced("CultSledgehammer", 338, 0, 0);
	}
 // */



	///////////////////////////////////////////////////////
	/*
	Ceiling_RaiseByValue(373, 6, 84);
	SetMusic("HTrack24");
	Thing_Remove(363);
	Thing_Remove(384);
	SpawnSpotForced("InventoryJournal", 380, 0, 0);
	GiveInventory("QuestMap13Sleep", 2);
	Thing_Remove(377);
	Thing_Remove(378);
	Thing_Remove(379);
	Thing_Remove(381);
	*/
}

//SKIPS

//skip Briefing 1
int SkipTimer = 0;
int SkipTimerDisplay = 0;
Script 224 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(223, 0);

	ACS_NamedExecuteWithResult("FriendlySpawner");
	ChangeCamera(0, 0, 0);
	Thing_Remove(363);
	Thing_Activate(384);
	Thing_Remove(384);
	If((CheckInventory("Crylance") == 0 && GameSkill() != 5) || (CheckInventory("ForcePike") == 0 && GameSkill() == 5))
	{
	    If(GameSkill() == 5)
		{
		  SpawnSpotForced("ForcePike", 802, 0, 0);
		}
		else
		{
		  SpawnSpotForced("Crylance", 802, 0, 0);
		}
	}
	SpawnSpotForced("InventoryJournal", 380, 0, 0);
	GiveInventory("QuestMap13Sleep", 2);
	SpawnSpotForced("MarkerExitAlt", 808, 809, 0);
	Thing_Remove(377);
	Thing_Remove(378);
	Thing_Remove(379);
	Thing_Remove(381);
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);
	TakeInventory("InventoryPsiCrown", 1);
	If(CheckInventory("InventoryAncientDictionary") > 0)
	{
		TakeInventory("InventoryAncientDictionary", 1);
		SpawnSpotForced("DemonBookG", 336, 0, 0);
		SpawnSpotForced("VoidDemonAncientDictionary", 534, 0, 0);
	}
	If(CheckInventory("InventoryShovelB") > 0)
	{
		TakeInventory("InventoryShovelB", 1);
		SpawnSpotForced("CultShovel", 337, 0, 0);
	}
	If(CheckInventory("InventorySledgehammer") > 0)
	{
		TakeInventory("InventorySledgehammer", 1);
		SpawnSpotForced("CultSledgehammer", 338, 0, 0);
	}
	Delay(8);
	SetMusic("HTrack24");
	Delay(3*35);
	Autosave();
}

//skip Debriefing 1
Script 225 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip debriefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(97, 0);

		Thing_Destroy(660, 0, 0);
		Thing_Destroy(661, 0, 0);
		Thing_Destroy(662, 0, 0);
		Thing_Remove(767);

		ChangeFloor(769, "DIRT1");
		Floor_LowerByValue(769, 4, 2);
		SpawnSpotForced("NatureFlowerCyanroll", 770, 0, 0);
		SpawnSpotForced("Spikemag", 771, 0, 0);

		If((GameSkill() >= SKILL_VERY_HARD) && (ThingCount(T_NONE, 691) < 7))
		{
		  ChangeFloor(772, "DIRT1");
		  Floor_LowerByValue(772, 4, 2);
		  SpawnSpotForced("CaveRockD", 773, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 6)
		{
		  ChangeFloor(774, "DIRT1");
		  Floor_LowerByValue(774, 4, 3);
		  SpawnSpotForced("NatureStoneD", 775, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 5)
		{
		  ChangeFloor(776, "DIRT1");
		  Floor_LowerByValue(776, 4, 2);
		  SpawnSpotForced("NatureFlowerThornswan", 777, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 4)
		{
		  ChangeFloor(778, "DIRT1");
		  Floor_LowerByValue(778, 4, 2);
		  SpawnSpotForced("CaveFloraTwistshroomB", 779, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 3)
		{
		  ChangeFloor(778, "DIRT1");
		  Floor_LowerByValue(778, 4, 3);
		  SpawnSpotForced("CaveFloraTwistshroomB", 779, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 2)
		{
		  ChangeFloor(780, "DIRT1");
		  Floor_LowerByValue(780, 4, 1);
		  SpawnSpotForced("NatureStoneB", 781, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 1)
		{
		  ChangeFloor(782, "DIRT1");
		  Floor_LowerByValue(782, 4, 3);
		  SpawnSpotForced("NatureFlowerMandragoreB", 783, 0, 0);
		}


		ACS_NamedExecuteWithResult("FriendlyCounter");
		int w = ThingCountName("IDWitchRecruitable",0);
		int x = ThingCountName("IDBearWarriorRecruitable",0);
	    int y = ThingCountName("IDReaverRecruitable",0);
		int z = ThingCountName("IDFixerRecruitable",0);
		GiveInventory("IDWitchCounter", w);
		GiveInventory("IDBearCounter", x);
	    GiveInventory("IDReaverCounter", y);
		GiveInventory("IDFixerCounter", z);
		Thing_Remove(691);
		SpawnSpotForced("IDBearWarriorStationary", 391, 649, 0);
		SpawnSpotForced("IDBearWarriorStationary", 392, 650, 192);

		If(CheckInventory("IDFixerCounter") > 0)
		{
			TakeInventory("IDFixerCounter", 1);
			SpawnSpotForced("IDFixerStationary", 393, 651, 220);
		}
		If(CheckInventory("IDReaverCounter") > 0)
		{
			TakeInventory("IDReaverCounter", 1);
			SpawnSpotForced("IDReaverStationary", 394, 652, 64);
		}
		If(CheckInventory("IDReaverCounter") > 0)
		{
			TakeInventory("IDReaverCounter", 1);
			SpawnSpotForced("IDReaverStationary", 395, 653, 64);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 396, 654, 224);
		}
		If(CheckInventory("IDWitchCounter") > 0)
		{
			TakeInventory("IDWitchCounter", 1);
			SpawnSpotForced("IDWitchStationary", 397, 655, 0);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 398, 656, 64);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 399, 657, 128);
		}

		FloorAndCeiling_LowerByValue(811, 64, 200);

        GiveInventory("IsPlaying", 1);
		FadeTo(0, 0, 0, 0.0, 5.0);
	    SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
		SetLineSpecial(386, ACS_Execute, 99, 0, 0, 0, 0);
		SetLineSpecial(388, ACS_Execute, 101, 0, 0, 0, 0);
		Line_SetBlocking(436, 0, BLOCKF_PLAYERS);
		Thing_Remove(434);
		SetLineSpecial(433, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(432, ACS_Execute, 138, 0, 0, 0, 0);
		SpawnSpotForced("NPCMaidWorking", 435, 667, 128);
		SetLineSpecial(441, ACS_Execute, 145, 0, 0, 0, 0);

		Delay(8);
        ACS_NamedExecuteWithResult("FriendlySpawner");
		Delay(16);
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    Very well... go rest now, Zan, you can help around the camp later. Your room should be ready."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

}

//skip Briefing 2
Script 226 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(157, 0);

		ChangeCamera(0, 0, 0);
		Teleport_NOFOG(690, 1, 0);
		//SpawnSpotForced("NPCMurguthREgular",485, 452, 72);
		SetActorPitch(0, 0.0);
		If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
			SpawnSpotForced("IDLancerStationary", 483, 453, 64);
			SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);
		}
		If(CheckInventory("QuestMap13TradeGold") == 0)
		{
			SetLineSpecial(803, ACS_Execute, 241, 0, 0, 0, 0);
		}
		GiveInventory("QuestMap13SecurePowder", 2);
		If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
		SpawnSpotForced("InventoryGiantRuby", 486, 0, 0);
		SpawnSpotForced("HealthCreamFungus", 748, 0, 0);
		Thing_Remove(450);
		//Thing_Remove(452);
		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
        SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
        SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
	    ACS_NamedExecuteWithResult("GiveWeapons");
	    ACS_NamedExecuteWithResult("GiveConsumables");
		SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	    SetActorProperty(0, APROP_Speed, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		GiveInventory("IsPlaying", 1);
		FadeTo(0, 0, 0, 0.0, 3.0);
		SetMusic("HTrack24");

		Delay(16);
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand Earth Mother Breaza:    Use the ruby to get into the minotaur town, Zan. And please, be careful."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);


		Delay(35);
        Autosave();
}

//skip Debriefing 2
Script 227 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip debriefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(97, 0);

		//SetActorFlag(429, "INVISIBLE", 1);
		//SetActorFlag(428, "INVISIBLE", 1);
		//SpawnSpotForced("NPCJaromirRegular", 514, 378, 64);
		//SpawnSpotForced("NPCMurguthRegular", 485, 377, 64);
		//SetActorFlag(429, "INVISIBLE", 0);
		//SetActorFlag(428, "INVISIBLE", 0);
		//Thing_Remove(377);
		//Thing_Remove(378);
		SetActorFlag(382, "INVISIBLE", 0);
		SpawnSpotForced("MarkerExitAlt", 808, 809, 0);
		SetLineSpecial(454, ACS_Execute, 193, 0, 0, 0, 0);
		GiveInventory("IsPlaying", 1);
		FadeTo(0, 0, 0, 0.0, 3.0);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
		SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
		SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
		SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);

		Delay(16);
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    You look so tired. Get some sleep and we'll talk when you are awake."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);

}

//skip Briefing 3
Script 228 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip briefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(196, 0);

	ChangeCamera(0, 0, 0);
	Teleport_NoFOG(690, 1, 0);
	SetActorPitch(0, 0.0);
	GiveInventory("QuestMap13InvestigateRuins", 2);
		If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
	Thing_Remove(450);
	SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
	SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
	SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
	ACS_NamedExecuteWithResult("GiveWeapons");
	ACS_NamedExecuteWithResult("GiveConsumables");
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);
	SetMusic("HTrack24");

	Delay(16);
	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Grand E. M. Breaza:    Jaromir has left our camp an hour ago. Head south-east of here and meet up with him."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);


	Delay(35);
	Autosave();
}

//skip Debriefing 3
Script 229 (void)
{
	Setfont("SMALLFONT");
    Hudmessage(s:"Press \c[White]Use\c- to skip debriefing"; HUDMSG_FADEINOUT, 10, CR_GOLD, 1.5, 0.80, 3.5, 0.2, 0.8);
	SkipTimer = 0;
	SkipTimerDisplay = 0;

	While (!(GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
        Delay(1);
		SkipTimer += 1;
		SkipTimerDisplay = (140 - SkipTimer) / 35 + 1;
		Hudmessage(d:SkipTimerDisplay; HUDMSG_PLAIN, 11, CR_GOLD, 1.5, 0.82, 0.035);
		If(SkipTimer >= 140)
		{
			Terminate;
		}
    }

	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.80, 0.1);
	ACS_Terminate(198, 0);

    GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);
	GiveInventory("QuestMap13AssaultDemonTown", 2);
	  If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
	  SpawnSpotForced("IDWitchStationary", 619, 701, 64);
	  SpawnSpotForced("IDFixerStationary", 620, 702, 0);
	  Floor_RaiseByValue(634, 9999, 24);
	  Floor_RaiseByValue(635, 9999, 32);
	  FloorAndCeiling_RaiseByValue(637, 9999, 40);
	  ChangeFloor(634, "IRON1_G");
	  ChangeFloor(638, "IRON1_G");
	  ChangeFloor(639, "IRON1_G");
	  Floor_RaiseByValue(638, 9999, 1);
	  Floor_RaiseByValue(639, 9999, 1);
	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
	  SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
	  SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);

	  Delay(16);
	  PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Grand E.M. Breaza:    Figure a way to get into the mine north of here and find our sappers. We're counting on you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);


	  Delay(35);
	  Autosave();
}

//Enter Actor Changes
Script 5 OPEN
{
	SetActorFlag(33, "BRIGHT", 0);

	SetActorProperty(61, APROP_Alpha, 1.0);

	SetActorFlag(78, "NOTONAUTOMAP", 1);

	SetActorFlag(198, "NOBLOCKMAP", 1);
	SetActorFlag(198, "SOLID", 0);

	SetActorFlag(207, "WALLSPRITE", 0);
	SetActorFlag(207, "FLATSPRITE", 1);

	SetActorFlag(332, "COUNTKILL", 0);

	SetActorFlag(431, "COUNTKILL", 0);
	SetActorFlag(431, "FLOATBOB", 0);

	SetActorFlag(382, "FLOATBOB", 1);

	SetActorFlag(401, "NOTONAUTOMAP", 1);
	SetActorFlag(401, "NOINTERACTION", 1);

	SetActorFlag(449, "BRIGHT", 0);

	SetActorFlag(542, "NOTONAUTOMAP", 1);
    SetActorFlag(544, "NOTONAUTOMAP", 1);

	SetActorFlag(606, "NOINTERACTION", 1);

	SetActorFlag(713, "FLOATBOB", 1);
	SetActorFlag(713, "SOLID", 0);
	SetActorFlag(745, "RELATIVETOFLOOR", 1);

	SetActorFlag(568, "NORADIUSDMG", 1);
	SetActorFlag(763, "NORADIUSDMG", 1);
	SetActorFlag(765, "NORADIUSDMG", 1);
	SetActorFlag(766, "NORADIUSDMG", 1);

	SetActorFlag(792, "BUDDHA", 1);

	SetActorFlag(813, "NOCLIP", 1);
}




//THUNDER & LIGHTNING

Script 53 (void)
{
	ChangeSky("Sky15", "Sky15");
	Light_Fade(312, 200, 8);
	Delay(8);
	ChangeSky("Sky14", "Sky14");
	Light_Fade(312, 132, 4);
	Delay(random(35, 140));
	PlaySound(313, "Ambient/Thunder", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Delay(random(35*1, 35*20));
	Restart;
}

Script 54 (void)
{
	ACS_Terminate(53, 0);
	ChangeSky("Sky14", "Sky14");
	Light_Fade(312, 132, 4);
}

//RAIN
int spec51 = 0;
Script 51 (void)
{
	If(spec51 == 0)
	{
	SpawnSpotForced("RainDropGenerator", 5, 251, 0);
	SpawnSpotForced("WaterDropGenerator", 15, 251, 0);
	spec51 += 1;
	}
}

Script 52 (void)
{
	If(spec51 == 1)
	{
	Thing_Remove(251);
	Spec51 -= 1;
	}
}

//SKY CHANGE
Script 55 (void)
{
	ChangeSky("Sky16", "Sky16");
}
Script 56 (void)
{
	ChangeSky("Sky14", "Sky14");
}

//LAVA DAMAGE
Script 71 ENTER
{
	SectorDamage(216, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//RIVERS
Script 50 ENTER
{
	 Scroll_Ceiling(238, -16, 128, 0);
	 Scroll_Ceiling(241, -96, -96, 0);
	 Scroll_Ceiling(243, -4, -128, 0);

	 Scroll_Ceiling(360, 16, 0, 0);
}



//PORTALS
//Blue
Script 57 (void)
{
	SetLineSpecial(251, ACS_Execute, 58, 0, 0, 0, 0);
	SetLineTexture(248, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	SetLineTexture(248, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	Teleport(249, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 58 (void)
{
	Teleport(250, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}
//Yellow
Script 60 (void)
{
	SetLineSpecial(302, ACS_Execute, 61, 0, 0, 0, 0);
	SetLineTexture(303, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	SetLineTexture(303, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	Teleport(304, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 61 (void)
{
	Teleport(305, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}
//Red
Script 183 (void)
{
	SetLineSpecial(500, ACS_Execute, 184, 0, 0, 0, 0);
	SetLineTexture(501, SIDE_FRONT, TEXTURE_MIDDLE, "PORTAL01");
	SetLineTexture(501, SIDE_BACK, TEXTURE_MIDDLE, "PORTAL01");
	Teleport(498, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 184 (void)
{
	Teleport(499, 0, 0);
	PlaySound(0, "misc/teleport", CHAN_AUTO);
}


//WILDERNESS
//Demon Raid Activator
Script 192 (void)
{
	Thing_Activate(668);
	Delay(4);
	Thing_Hate(668, 440, 4);
}
//Mine Tunneling
Script 62 (void)
{
  If (CheckInventory("InventoryPickaxe") > 0 && GetSectorCeilingZ(340, 0, 0) == -252.0)
  {
	//Radius_Quake(2, 12, 0, 1, 0);
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(340, 9999, 99);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(341);
	Delay(2);
	SpawnSpot("DustCloud",342, 0, 0);
  }
    else
	  If (GetSectorCeilingZ(340, 0, 0) == -252.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}
Script 63 (void)
{
  If (CheckInventory("InventoryPickaxe") > 0 && GetSectorCeilingZ(344, 0, 0) == -252.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(344, 9999, 83);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(345);
	Delay(2);
	SpawnSpot("DustCloud",346, 0, 0);
  }
    else
	  If (GetSectorCeilingZ(344, 0, 0) == -252.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}
//Mine Ore
Script 64 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(347))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(347);
	SpawnSpotForced("DustPuff", 348, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 348, 0, 0);
  }
    else
	  If(IsTIDUsed(347))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 65 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(349))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(349);
	SpawnSpotForced("DustPuff", 350, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 350, 0, 0);
  }
    else
	  If(IsTIDUsed(349))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 66 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(351))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(351);
	SpawnSpotForced("DustPuff", 352, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryDarkIronOre", 352, 0, 0);
  }
    else
	  If(IsTIDUsed(351))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 67 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(353))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(353);
	SpawnSpotForced("DustPuff", 354, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 354, 0, 0);
  }
    else
	  If(IsTIDUsed(353))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 68 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(355))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(355);
	SpawnSpotForced("DustPuff", 356, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryDarkIronOre", 356, 0, 0);
  }
    else
	  If(IsTIDUsed(355))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 69 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(357))
  {
	SetWeapon("Fists");
    Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(357);
	SpawnSpotForced("DustPuff", 358, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryIronOre", 358, 0, 0);
  }
    else
	  If(IsTIDUsed(357))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
Script 166 (void)
{
  If (CheckInventory("InventoryPickAxe") > 0 && IsTIDUsed(494))
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Thing_Remove(494);
	SpawnSpotForced("DustPuff", 495, 0, 0);
	PlaySound(0, "Interaction/WallPick");
	SpawnspotForced("InventoryDarkIronOre", 495, 0, 0);
  }
    else
	  If(IsTIDUsed(494))
	  {
	      Print(s:"You'll need a proper tool to mine this ore vein.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	  }
}
//Mine Bridge Forge Elemental Ambush
Script 70 (void)
{
	If(GetSectorFloorZ(361, 0, 0) == -419.0)
	{
	Floor_RaiseByvalue(361, 6, 55);
	Delay(16);
	Thing_Activate(359);
	TagWait(361);
	FloorAndCeiling_LowerByValue(360, 9999, 64);
	}
}
//Mine Explosions
Script 59 (void)
{
	SetLineSpecial(279, 0, 0, 0, 0, 0, 0);
	SetWeapon("Fists");
	Floor_LowerByValue(280, 8, 12);
	FloorAndCeiling_LowerByValue(281, 8, 12);
	TagWait(281);
	Delay(8);

	SpawnSpotForced("SparkToss", 282, 0, 0);
	PlaySound(282, "Interaction/Spark");
	Delay(12);
	SpawnSpotForced("SparkToss", 283, 0, 0);
	PlaySound(283, "Interaction/Spark");
	Delay(12);
	SpawnSpotForced("SparkToss", 284, 0, 0);
	PlaySound(284, "Interaction/Spark");
	Delay(12);

	PlaySound(285, "Weapons/SpikeShotDeath");
	Delay(35);
	PlaySound(285, "Weapons/SpikeShotDeath");
	Delay(35);

	Radius_Quake(5, 70, 3, 30, 285);
	SpawnSpotForced("ExplosionHuge", 285, 0, 0);
	Thing_Damage2(297, 1000, "Fire");
	Thing_Remove(286);
	SpawnSpotForced("DustCloud", 286, 0, 0);
	FloorAndCeiling_LowerByValue(287, 9999, 100);
	Floor_RaiseByValue(290, 9999, random(2,4));
	ChangeFloor(291, "Stone12");
	Floor_LowerByValue(291, 9999, 1);
	Floor_RaiseByValue(292, 9999, 1);
	ChangeFloor(292, "Iron_18");
	ChangeFloor(290, "Ash2");
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 288, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 289, 0, 0);
	Delay(8);
	SpawnSpotForced("DustCloud", 288, 0, 0);
	SpawnSpotForced("DustCloud", 289, 0, 0);
}
//Crawler Spawner
Script 234 (void)
{
	If(CheckInventory("QuestMap13AssaultDemonTown") > 1)
	{
		SetLineSpecial(768, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("Crawler", 747, 0, 192);
	}
}
//Minotaur Gates
Script 41 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	SetLineSpecial(205, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 217, 0, 0);
	PlaySound(217, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(218, 2, 8);
	SetLineTexture(219, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(227, ACS_Execute, 45, 0, 0, 0, 0);
	SetLineSpecial(219, ACS_Execute, 45, 0, 0, 0, 0);
	TagWait(218);
	SetLineTexture(749, SIDE_FRONT, TEXTURE_MIDDLE, "Gate13DN");
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}

Script 45 (void)
{
	TagWait(226);
	Floor_LowerByValue(226, 12, 104);
	Delay(35*5);
	Floor_RaiseByValue(226, 12, 104);
	TagWait(226);
}

Script 44 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	SetLineSpecial(223, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 224, 0, 0);
	PlaySound(224, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(222, 2, 8);
	Delay(16);
	Floor_LowerByValue(244, 2, 8);
	SetLineTexture(225, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(228, ACS_Execute, 46, 0, 0, 0, 0);
	SetLineSpecial(225, ACS_Execute, 46, 0, 0, 0, 0);
	SetLineTexture(230, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineSpecial(230, ACS_Execute, 47, 0, 0, 0, 0);
	SetLineSpecial(232, ACS_Execute, 47, 0, 0, 0, 0);
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}

Script 46 (void)
{
	TagWait(229);
	Floor_LowerByValue(229, 12, 104);
	Delay(35*5);
	Floor_RaiseByValue(229, 12, 104);
	TagWait(229);
}

Script 47 (void)
{
	TagWait(231);
	Floor_LowerByValue(231, 12, 104);
	Delay(35*5);
	Floor_RaiseByValue(231, 12, 104);
	TagWait(231);
}

Script 187 (void)
{
  If(CheckInventory("InventoryGiantRuby") > 0)
    {
	TakeInventory("InventoryGiantRuby", 1);
	SetLineSpecial(503, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("IDGemGiantRuby", 504, 0, 0);
	PlaySound(504, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Delay(35);
	Floor_LowerByValue(505, 2, 8);
	SetLineTexture(502, SIDE_FRONT, TEXTURE_BOTTOM, "Gate13DN");
	SetLineTexture(512, SIDE_FRONT, TEXTURE_MIDDLE, "Gate13DN");
	SetLineSpecial(506, ACS_Execute, 188, 0, 0, 0, 0);
    }
    else
	{
    Print(s:"The pedestal is empty.");
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
    Delay(35);
	}
}

Script 188 (void)
{
	TagWait(507);
	Floor_LowerByValue(507, 12, 104);
	Delay(35*5);
	Floor_RaiseByValue(507, 12, 104);
	TagWait(507);
}

Script 190 (void)
{
	TagWait(509);
	Floor_LowerByValue(509, 12, 104);
	Delay(35*5);
	Floor_RaiseByValue(509, 12, 104);
	TagWait(509);
}

//Forge Elemental Ambush
Script 49 (void)
{
	SetLineSpecial(234, 0, 0, 0, 0, 0, 0);
	Radius_Quake(3, 105, 0, 1, 0);
	SpawnSpotForced("ForgeElemental", 233, 663, 64);
	Delay(8);
	ThrustThingZ(663, 5, 0, 0);
	NoiseAlert(0, 0);
}

//Lava Boat
int spec42 = 0;
Script 42 (void)
{
	If(GetActorZ(0) < -800.0)
	{
	SetLineSpecial(209, 0, 0, 0, 0, 0, 0);

	PlaySound(208, "Interaction/RopeTie", CHAN_AUTO);
	Thing_Remove(207);
	SpawnSpotForced("IDRopeA", 208, 0, 0);

	Thing_Stop(0);

	SetPlayerProperty(0, 1, PROP_FROZEN);
	If(GetCvar("sv_newmovement") == 1)
	{
		spec42 = 1;
	}
	SetCVar("sv_newmovement", 0);

	Delay(35);
	Polyobj_Move(1, 12, 64, 1570);

	ACS_Execute(43, 0, 0, 0, 0);

	PolyWait(1);
	ACS_Terminate(43, 0);
	SetPlayerProperty(0, 0, PROP_FROZEN);
	If(spec42 == 1)
	{
		SetCVar("sv_newmovement", 1);
	}
	}
}
Script 43 (void)
{
	SetActorVelocity(0, 0, 1.5, 0, false, false);
	Delay(1);
	Restart;
}


//Ice Cave Ambush
Script 35 (void)
{
	If(IsTIDUsed(170))
	{
	  Thing_Remove(170);
	  GiveInventory("ScriptHasTriggeredIceCaveAmbush", 1);
	  SpawnSpotForced("ExplosionLargeRed", 175, 0, 0);
	  Radius_Quake(8, 105, 0, 1, 0);
	  Delay(8);
	  SpawnSpotForced("ExplosionLargeRed", 176, 0, 0);
	  SpawnSpotForced("NatureIceStoneA", 175, 0, 0);
	  Delay(8);
	  SpawnSpotForced("NatureIceStoneA", 176, 0, 0);
	  FloorAndCeiling_LowerByvalue(171, 96, 312);
	  FloorAndCeiling_LowerByvalue(172, 104, 328);
	  FloorAndCeiling_LowerByvalue(174, 90, 296);

	  If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  Hudmessage(s:"Fixer:    Look out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	  }

	  Delay(16);
	  SectorDamage(166, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(167, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(168, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  Delay(8);
	  SpawnSpotForced("DustCloud", 177, 0, 0);
	  Radius_Quake2(181, 10, 35, 0, 100, "Gore/Freeze");
      SectorDamage(166, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(167, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(168, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  Delay(8);
	  SectorDamage(166, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(167, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  SectorDamage(168, 1000, "Crush", " ", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS);
	  Delay(8);

	  SpawnSpotForced("Hellblaze", 178, 676, 192);
	  SpawnSpotForced("HedonTeleportFogDemon", 178, 0, 0);
      PlaySound(178, "misc/teleport", CHAN_AUTO);

	  Delay(50);
	  SpawnSpotForced("Cerberus", 179, 676, 192);
	  SpawnSpotForced("HedonTeleportFogDemon", 179, 0, 0);
      PlaySound(179, "misc/teleport", CHAN_AUTO);
	  SpawnSpotForced("PitLord", 180, 676, 192);
	  SpawnSpotForced("HedonTeleportFogDemon", 180, 0, 0);
      PlaySound(180, "misc/teleport", CHAN_AUTO);

	  If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  Hudmessage(s:"Fixer:    D-demons!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	  }

	  NoiseAlert(0, 0);

	}
}






//FORTRESS
//Fixer
Script 12 (void)
{
  If(GetActorProperty(80, APROP_Health) > 0)
    {
	SetLineSpecial(158, 0, 0, 0, 0, 0, 0);
    PlaySound(80, "Fixer/Huh", CHAN_AUTO);
    Hudmessage(s:"Fixer:    Y-you! Zan? I need your help!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 0.5);

	Delay(105);

	  Hudmessage(s:"Fixer:    I was part of the forest group!... th-they sent me here to set up that roadblock to the mansion... but  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
      Hudmessage(s:"when I returned to check on them, they were all gone!!! A-and cultists were looting our camp! I-I'll show you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);

      Thing_Remove(80);
	  SpawnSpotForced("IDFixer", 83, 691, 64);

	  SetLineSpecial(387, ACS_Execute, 98, 0, 0, 0, 0);
	  Delay(8*35);

	  GiveInventory("QuestMap13HelpFixer", 2);
	  If(CheckInventory("InventoryJournal") > 0)
	  {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	  }


	  }
}

Script 165 (void)
{
	If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  SetLineSpecial(493, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Fixer:    Brrr, this place gives me the creeps."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
}
Script 13 (void)
{
	If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  SetLineSpecial(159, 0, 0, 0, 0, 0, 0);
	  ScriptWait(12);
	  Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.88, 3.0, 0.2, 0.5);
	  Hudmessage(s:"Fixer:    This way! Our camp was in the forest to the right."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 0.5);
	  }
}
Script 14 (void)
{
	If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  SetLineSpecial(160, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Fixer:    Uh, it's so cold here... I hope you know where you're taking us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
}
Script 15 (void)
{
	If(CheckProximity(0, "IDFixer", 800.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  Thing_Remove(84);
	  Hudmessage(s:"Fixer:    Can you believe this? A rainstorm in the underground?! I told 'em it's a bad omen, I did!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
}
Script 16 (void)
{
	If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
      {
	  SetLineSpecial(85, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Fixer:    We had supplies stashed here, but it looks like the cultists have stolen most of them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
}
Script 20 (void)
{
	If(CheckProximity(0, "IDFixer", 960.0, 1) || CheckProximity(0, "IDFixerGuarding", 800.0, 1))
      {
	  SetLineSpecial(86, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Fixer:    This is where we were holding the line... no sign of battle, nothing other than the looters!  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	  Hudmessage(s:"The cultist fortress is just up ahead. It's the only place where they could have taken our sisters."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	  }
}

Script 21 (void)
{
	If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
      {
	  Thing_Remove(87);
	  Hudmessage(s:"Fixer:    We were trying to tunnel around their wall and take them by surprise, but we hit this rock layer..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.88, 5.0, 0.2, 0.5);
	  }
}

Script 22 (void)
{
	If(CheckProximity(0, "IDFixer", 2200.0, 1) || CheckProximity(0, "IDFixerGuarding", 2200.0, 1))
      {
	  Hudmessage(s:"Fixer:    W-wait, you're not going to assault their gate head-on, are you?! That's suicide!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.88, 5.0, 0.2, 0.5);
	  }
}

Script 24 (void)
{
	SetLineSpecial(90, 0, 0, 0, 0, 0, 0);
	ACS_Execute(29, 0, 0, 0, 0);

	If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
      {
	  Hudmessage(s:"Fixer:    I-I can't believe we're doing this!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
	  SetLineSpecial(88, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(158, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(159, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(160, 0, 0, 0, 0, 0, 0);
	  Thing_Remove(84);
	  SetLineSpecial(85, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(86, 0, 0, 0, 0, 0, 0);
	  Thing_Remove(87);
	  SetLineSpecial(91, 0, 0, 0, 0, 0, 0);

	  SetLineSpecial(387, 0, 0, 0, 0, 0, 0);
}

Script 29 (void)
{
	SetLineSpecial(103, 0, 0, 0, 0, 0, 0);
	SetActorProperty(662, APROP_Speed, 17.0);
}

Script 98 (void)
{
	If(CheckProximity(0, "IDFixer", 320.0, 1) || CheckProximity(0, "IDFixerGuarding", 320.0, 1))
      {
	  SetLineSpecial(387, 0, 0, 0, 0, 0, 0);

	  SetLineSpecial(385, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(386, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(388, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Fixer:    Breaza! I-I'm from the forest group, something bad happened! The cultists have captured our sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  If(CheckProximity(0, "NPCBreazaRegular", 512.0, 1))
      {
	  Hudmessage(s:"Grand Earth Mother Breaza:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.90, 2.0, 0.2, 0.5);
	  }
	  Delay(3*35);

	  If(CheckProximity(0, "NPCAdvisorRegular", 512.0, 1))
      {
	  PlaySound(375, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    We don't have any troops we can spare right at the moment... unless... Breaza?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  Delay(7*35);

	  If(CheckProximity(0, "NPCBreazaRegular", 512.0, 1))
      {
	  PlaySound(375, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Grand Earth Mother Breaza:    ...I don't like this a single bit but we have no choice. Zan, I need you to investigate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  Delay(7*35);

	  If(CheckProximity(0, "NPCBreazaRegular", 512.0, 1))
      {
	  PlaySound(375, "EarthMother/Hmph", CHAN_AUTO);
	  Hudmessage(s:"Find out what happened to our warriors, but don't take any unnecessary risks. We can't lose anyone else now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);

	  Delay(8*35);

	  If(CheckProximity(0, "IDFixer", 320.0, 1) || CheckProximity(0, "IDFixerGuarding", 320.0, 1))
      {
	  Hudmessage(s:"Fixer:    I'll help with what I can. D-don't worry ma'am, we'll stay out of trouble!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
	  }

	  SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
	  SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
	  SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
	  }
}

//Stealthy Entry Wall Break
Script 4 (void)
{
  If (CheckInventory("InventoryPickaxe") > 0 && GetSectorCeilingZ(32, 0, 0) == 126.0)
  {
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_LowerByValue(32, 9999, 266);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(31);
	Delay(2);
	SpawnSpot("DustCloud",30, 0, 0);
	SpawnSpot("CaveRockD",30, 0, 0);
  }
    else
	  If (GetSectorCeilingZ(32, 0, 0) == 126.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//Moat Vision Block
Script 243 (void)
{
	If(GetActorZ(0) < -156.0)
	{
	    Line_SetBlocking(810, BLOCKF_SIGHT, 0);
	}
	else
	{
		Line_SetBlocking(810, 0, BLOCKF_SIGHT);
	}
	Delay(35);
	Restart;

}
Script 245 (void)
{
	Line_SetBlocking(810, 0, BLOCKF_SIGHT);
	ACS_Terminate(243, 0);
}

//Music Secret Door
Script 230 (void)
{
	Floor_LowerByValue(752, 8, 1);
	PlaySound(753, "Interaction/HarpA");
	Floor_LowerByValue(751, 8, 68);
	TagWait(751);
	Delay(35*9);
	Floor_RaiseByValue(751, 8, 68);
	TagWait(751);
	Floor_RaiseByValue(752, 8, 1);
	TagWait(752);
}
Script 231 (void)
{
	PlaySound(754, "Interaction/HarpB", CHAN_AUTO);
	Delay(70);
	Radius_Quake(1,70,0,4,755);
	Delay(35);
	If((ThingCount(T_NONE, 756) + ThingCount(T_NONE, 757)) == 5)
	{
		Thing_Remove(757);
		SpawnSpotForced("JunkDepletedPowerShard", 758, 0, 0);
		SpawnSpotForced("Hellion", 755, 759, 192);
	    SpawnSpot("HedonTeleportFog", 755, 0, 0);
        PlaySound(755, "misc/teleport", CHAN_AUTO);
		SetActorFlag(759, "FRIENDLY", 1);
	}
	else
	{
	SpawnSpotForced("CritterShadowleech", 755, 0, 192);
	SpawnSpot("HedonTeleportFog", 755, 0, 0);
    PlaySound(755, "misc/teleport", CHAN_AUTO);
	}
	Delay(16);
}

//Spirit Mistress
Script 221 (void) //unused
{
	Thing_Destroy(67);
	Delay(50);
	Hudmessage(s:"Spirit Mistress:    I've been expecting you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_PURPLE, 1.5, 0.80, 3.5, 0.2, 0.5);
}
Script 30 (void)
{
	SetLineSpecial(110, 0, 0, 0, 0, 0, 0);
	HudmessageBold(s:"Spirit Mistress:    I've been expecting you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 130, CR_PURPLE, 1.5, 0.80, 3.5, 0.2, 0.5);
	Delay(8*35);
	Thing_Spawn(109, 65010, random(0, 256), 660);
}

//Front Gate Alarm
Script 23 (void)
{
	SetLineSpecial(88, 0, 0, 0, 0, 0, 0);
	Delay(35);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(24);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(24);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(24);
	ACS_Execute(3, 0, 0, 0, 0);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(24);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(24);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
}
Script 244 (void)
{
	SetLineSpecial(88, 0, 0, 0, 0, 0, 0);
}

//Bell Ringer
int spec164 = 6;
Script 164 (void)
{
	If((GetActorZ(0) > 120.0) && (spec164 % 5 == 0))
	{
	Radius_Quake(3, 70, 0, 2, 89);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	NoiseAlert(0, 0);
    PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	NoiseAlert(0, 0);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	SpawnSpot("Hellblaze", 488, 0, 192);
	SpawnSpot("HedonTeleportFogDemon", 488, 0, 0);
    PlaySound(488, "misc/teleport", CHAN_AUTO);
	SpawnSpot("Cerberus", 489, 0, 192);
	SpawnSpot("HedonTeleportFogDemon", 489, 0, 0);
    PlaySound(489, "misc/teleport", CHAN_AUTO);
	SpawnSpot("PitLord", 490, 0, 192);
	SpawnSpot("HedonTeleportFogDemon", 490, 0, 0);
    PlaySound(490, "misc/teleport", CHAN_AUTO);
	SpawnSpot("ForgeElemental", 491, 0, 192);
	SpawnSpot("HedonTeleportFogDemon", 491, 0, 0);
    PlaySound(491, "misc/teleport", CHAN_AUTO);
	NoiseAlert(0, 0);
	spec164 += 1;
	}
	else
	If((GetActorZ(0) > 120.0))
	{
	Radius_Quake(1, 24, 0, 2, 89);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	NoiseAlert(0, 0);
	spec164 += 1;
	}
}

//Suspicious Plate Armor
int spec6 = 0;
Script 6 (void)
{
	If(spec6 == 0)
	{
	spec6 += 1;
	PlaySound(47, "Praak/Active", CHAN_AUTO);
    Hudmessage(s:"Suspicious Armor:    *Squeaks*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREY, 1.5, 0.86, 1.5, 0.2, 0.5);
	Delay(16);
	}
	else
	{
		SetLineSpecial(46, 0, 0, 0, 0, 0, 0);
		SetActorState(47, "Special", 0);
		Delay(12);
		SpawnSpotForced("CritterPraak", 48, 0, 0);
		SpawnSpotForced("InventorySpiritGem", 49, 0, 0);
		SpawnSpotForced("InventoryGoldCoin1", 50, 658, 0);
		ThrustThing(random(0, 256), 2, 0, 658);
		SpawnSpotForced("PowerShard", 51, 659, 0);
		ThrustThing(random(0, 256), 2, 0, 659);
	}
}

Script 7 (void)
{
	PlaySound(47, "Praak/Pain", 0.3);
}



//Prison Break
Script 25 (void)
{
	  SetLineSpecial(93, 0, 0, 0, 0, 0, 0);
	  PlaySound(92, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Psst! Hey, you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);

	  Delay(70);
	  If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
      {
	  Hudmessage(s:"Fixer:    Sisters! We're here to save you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 2.0, 0.2, 0.5);
	  }
}

int dial26 = 0;
Script 26 (void)
{
	  If(CheckInventory("CopperKey") > 0)
	  {
	    PlaySound(92, "Reaver/Huh", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    The levers are at the end of the corridor, set us free!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
		Delay(3*35);
      }
	  else
	  If(dial26 == 0)
	  {
	    PlaySound(92, "Reaver/Huh", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    Zan! Thank the Earth for sending you! We got captured by this powerful warlock. She surpressed our"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 10.0, 0.2, 0.5);
		Hudmessage(s:"minds, we couldn't even fire at her! She left her right hand in charge here...   calls herself the Spirit Mistress.   "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 10.0, 0.2, 0.5);
		Delay(5*35);
		dial26 += 1;
      }
	  else
	    If(dial26 == 1)
	    {
	      Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.88, 5.0, 0.2, 0.5);
		  Hudmessage(s:"Reaver:    The Spirit Mistress has the key to the prison. She likes to spend her time in the nearby patio."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		  Delay(2*35);
		  dial26 += 1;
        }
	  else
	    If(dial26 == 2)
	    {
	      PlaySound(92, "Reaver/Hm", CHAN_AUTO);
	      Hudmessage(s:"Reaver:    We can talk later, you have to hurry up and set us free!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
		  Delay(2*35);
		  dial26 -= 1;
        }
}

Script 27 (void)
{
	    SetLineSpecial(95, 0, 0, 0, 0, 0, 0);
	    PlaySound(96, "BearWarrior/Rage1", CHAN_AUTO);
		PlaySound(104, "BearWarrior/Rage2", CHAN_AUTO);
		PlaySound(105, "BearWarrior/Ha", CHAN_AUTO);
	    Hudmessage(s:"Orc Warriors:    We're free! Hail the Bonebreaker!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGREEN, 1.5, 0.86, 3.0, 0.2, 0.5);
		Delay(3*35);
		Hudmessage(s:"Witch:    Don't cheer yet, we still have to get out of here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.0, 0.2, 0.5);
		PlaySound(596, "Witch/Hm", CHAN_AUTO);
}

int spec239 = 0;
int spec239b = 0;
Script 239 (void)
{
	If((CheckProximity(0, "IDFixer", 480.0, 1) || CheckProximity(0, "IDFixerGuarding", 320.0, 1)) && spec239 == 0)
	{
	  //SetLineSpecial(798, 0, 0, 0, 0, 0, 0);
	  spec239 += 1;
	  Hudmessage(s:"Fixer:    Oh, no... w-what have they done..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	  Delay(3*35);
	}

	If((CheckProximity(0, "IDReaver", 480.0, 1) || CheckProximity(0, "IDReaverGuarding", 320.0, 1)) && spec239b == 0)
	{
	  SetLineSpecial(798, 0, 0, 0, 0, 0, 0);
	  spec239b += 1;
	  Hudmessage(s:"Reaver:    Bastards..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.0, 0.2, 1.5);
	}
}

Script 28 (void)
{
	SetLineSpecial(97, 0, 0, 0, 0, 0, 0);
	Delay(35);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(35);

	Floor_LowerByValue(44, 8, 92);

	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.2);
	Delay(35);

	If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
      {
	  Hudmessage(s:"Reaver:    Sounds like they're calling for reinforcements."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	  }

	Delay(2*35);

	SpawnSpotForced("PitLord", 100, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 100, 0, 0);
    PlaySound(100, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 101, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 101, 0, 0);
    PlaySound(101, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 102, 660, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 102, 0, 0);
    PlaySound(102, "misc/teleport", CHAN_AUTO);

	If(GetSectorCeilingZ(14, 0, 0) < 56.0)
	  {
          Ceiling_RaiseByValue(14, 4, 160);
	  }

	If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarrior", 640.0, 1))
        {
		Delay(1*35);
	    Hudmessage(s:"Bear Warrior:    More skulls to crush! For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	    }

	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(35);

	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(16);
	PlaySound(89, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	Delay(35);
}

//Demon QRF
Script 31 (void)
{
    SetLineSpecial(115, 0, 0, 0, 0, 0, 0);
	Delay(35);
	Ceiling_LowerByValue(77, 9999, 96);
	SpawnSpotForced("ExplosionHuge", 116, 0, 0);
	Radius_Quake(5, 105, 0, 1, 0);
	SpawnSpotForced("FireTinyLooping", 120, 660, 0);
	Floor_RaiseByValue(119, 9999, random(6, 12));
	Thing_Activate(661);
	NoiseAlert(0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 117, 0, 0);
	Delay(20);
	Line_SetBlocking(125, 0, BLOCKF_EVERYTHING);
	SetLineTexture(125, SIDE_FRONT, TEXTURE_MIDDLE, "Window11");
	SetLineTexture(125, SIDE_BACK, TEXTURE_MIDDLE, "Window11");
	SpawnSpotForced("DustCloud", 126, 0, 0);
	SpawnSpotForced("JunkBrokenGlassA", 126, 0, 0);
	PlaySound(126, "Weapons/PotionDie", CHAN_AUTO);
	SpawnSpotForced("ExplosionHuge", 118, 0, 0);

	Delay(2*35);
	SpawnSpotForced("Hellblaze", 121, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 121, 0, 0);
    PlaySound(121, "misc/teleport", CHAN_AUTO);

	Delay(5*35);
	SpawnSpotForced("Cerberus", 122, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 122, 0, 0);
    PlaySound(122, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 123, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 123, 0, 0);
    PlaySound(123, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("ForgeElemental", 124, 660, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 124, 0, 0);
    PlaySound(124, "misc/teleport", CHAN_AUTO);
}

//Prison Cell Levers
Script 9 (void)
{
	SetLineSpecial(73, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(93, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(95, ACS_Execute, 27, 0, 0, 0, 0);
	SetLineSpecial(97, ACS_Execute, 28, 0, 0, 0, 0);
	SetLineSpecial(115, ACS_Execute, 31, 0, 0, 0, 0);

	TakeInventory("QuestMap13HelpFixer", 1);
	GiveInventory("QuestMap13RescuePOWs", 2);
	  If(CheckInventory("InventoryJournal") > 0)
	  {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	  }

	SpawnSpotForced("Conscript", 111, 660, 192);
	SpawnSpotForced("Mentalist", 112, 660, 192);
	SpawnSpotForced("Warlock", 114, 660, 192);
	SpawnSpotForced("IronMaiden", 113, 660, 192);
	SetActorFlag(660, "AMBUSH", 1);

	SpawnSpotForced("SniperCultist", 98, 660, 128);
	SpawnSpotForced("Cerberus", 106, 660, 128);
	SpawnSpotForced("IronMaiden", 107, 660, 128);
	SpawnSpotForced("Golem", 108, 660, 128);

	SetActorPitch(69, 0.65);
	PlaySound(69, "Interaction/MachineOn");

	Ceiling_RaiseByValue(54, 12, 72);
	Ceiling_RaiseByValue(55, 12, 72);
	FloorAndCeiling_RaiseByValue(56, 12, 72);
	Ceiling_RaiseByValue(57, 12, 72);

	Delay(8);
	SetActorPitch(70, 0.65);
	PlaySound(70, "Interaction/MachineOn");
	Delay(8);
	SetActorPitch(71, 0.65);
	PlaySound(71, "Interaction/MachineOn");
	Delay(8);
	SetActorPitch(72, 0.65);
	PlaySound(72, "Interaction/MachineOn");
	Delay(8);

	//SetActorFlag(759, "FRIENDLY", 0);

	Thing_Remove(61);

	SpawnSpotForced("IDReaverRecruitable", 58, 691, random(112, 140));
	SpawnSpotForced("IDBearWarriorRecruitable", 74, 691, random(112, 140));
	SpawnSpotForced("IDWitchRecruitable", 596, 691, random(112, 140));

	Autosave();
}

//Return Home
Script 240 (void)
{
  If(CheckInventory("QuestMap13RescuePOWs") == 2)
  {
	 SetLineSpecial(800, 0, 0, 0, 0, 0, 0);
	 If(GetActorProperty(446, APROP_Health) > 0)
	 {
	   PlaySound(446, "BearWarrior/Ha", CHAN_AUTO);
       Hudmessage(s:"Bear Warrior:    Found our imprisoned sisters? Go report to Breaza, right away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 4.5, 0.2, 0.5);
	   Delay(5*35);
	}
	else
	If(GetActorProperty(447, APROP_Health) > 0)
	 {
	   PlaySound(447, "BearWarrior/Hmm", CHAN_AUTO);
       Hudmessage(s:"Bear Warrior:    You found our captive sisters? Go debrief with Breaza immediately!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 4.5, 0.2, 0.5);
	   Delay(5*35);
	}

	If(CheckProximity(0, "IDWitch", 640.0, 1) || CheckProximity(0, "IDWitchGuarding", 640.0, 1))
	{
	  Hudmessage(s:"Witch:    Sweet home. Glad to hear Breaza's in charge, Grund would've chewed us up for this mess."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.90, 5.5, 0.2, 1.5);
	}
	else
	If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 640.0, 1))
	{
	  Hudmessage(s:"Bear Warrior:    Hail, sisters! It's good to be back among our own again."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 4.5, 0.2, 1.5);
	}
	else
	If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
	{
	  Hudmessage(s:"Reaver:    I never thought I'd make it back alive. Let's go see Breaza."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.90, 4.5, 0.2, 1.5);
	}
	else
	If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	{
	  Hudmessage(s:"Fixer:    F-finally, back to safety! Let's go t-tell Breaza everything that happened!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 5.5, 0.2, 1.5);
	}
  }
}

//Ruby Warlock Ambush
Script 212 (void)
{
	If(IsTIDused(609) == 0 && IsTIDUsed(610))
	{
		SpawnSpotForced("Warlock", 610, 0, 192);
		Thing_Remove(610);
	}

}











//LIFT CRUSHER
Script 2 ENTER
{
	SectorDamage(20, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//LIFTS & DOORS
//Fortress Keep Lift
Script 1 (void)
{
	If(GetActorZ(0) < 0.0)
	{
	TagWait(17);
	TagWait(20);
	TagWait(21);

	SetActorPitch(22, 0.65);
	PlaySound(22, "Interaction/MachineOn");
	Delay(16);

	FloorAndCeiling_LowerByValue(17, 20, 227);
	Floor_LowerByValue(21, 20, 227);
	FloorAndCeiling_LowerByValue(20, 20, 227);
	TagWait(21);
	TagWait(20);
	TagWait(17);

	Delay(3*35);

	FloorAndCeiling_RaiseByValue(17, 20, 227);
	Floor_RaiseByValue(21, 20, 227);
	FloorAndCeiling_RaiseByValue(20, 20, 227);
	TagWait(21);
	TagWait(20);
	TagWait(17);

	SetActorPitch(22, 0.75);
	PlaySound(22, "Interaction/MachineOn", CHAN_AUTO, 0.5);
	}
}

//Fortress Gate Grates
Script 3 (void)
{
	TagWait(14);

	If(GetSectorCeilingZ(14, 0, 0) == 56.0)
    {
	SetActorPitch(23, 0.65);
	PlaySound(23, "Interaction/MachineOn");
	Delay(16);
    Ceiling_LowerByValue(14, 4, 160);
	Tagwait(14);
	}
	else
	  If(GetSectorCeilingZ(14, 0, 0) < 56.0)
	  {
		  SetActorPitch(23, 0.75);
	      PlaySound(23, "Interaction/MachineOn");
	      Delay(16);
          Ceiling_RaiseByValue(14, 4, 160);
	      Tagwait(14);
	  }
}

//Fortress Prison Controls Grate
Script 8 (void)
{
	If(CheckInventory("CopperKey") == 0)
	{
	  Print(s:"This switch requires a Copper key to work.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	}
	else
	 If(CheckInventory("CopperKey") > 0)
	{
	  Ceiling_RaiseByValue(68, 16, 72);
	  Delay(60);
	  Ceiling_LowerByValue(68, 16, 72);
	  TagWait(68);
	  Delay(35);
	}
}











//LOCKED DOORS
Script 32 (void)
{
	Print(s:"The gates are stuck.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 33 (void)
{
	Print(s:"The gates seem barred from the other side.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 34 (void)
{
	Print(s:"The door is locked from inside.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}

Script 36 (void)
{
	Print(s:"The gates are locked tight.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}

//ROTATING DOORS
Script 87 (void)
{
	If(GetActorZ(0) < -275.0 && CheckInventory("AxeKey") > 0)
    {
      Polyobj_DoorSwing(87,-16,64,175);
	}
	else
    If(GetActorZ(0) < -275.0 && CheckInventory("AxeKey") == 0)
    {
      Print(s:"This door is locked. You notice an Axe emblem above it.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 88 (void)
{
	If(GetActorZ(0) < -10.0 && IsTIDUsed(606))
	{
		PlaySound(606, "Metal/Bounce1", CHAN_AUTO);
		Thing_Remove(606);
		SetLineSpecial(793, ACS_Execute, 237, 0, 0, 0, 0);
		Delay(12);
		SpawnSpotForced("IDPoleC", 607, 675, 56);
		SpawnSpotForced("DustPuff", 607, 0, 0);
		PlaySound(607, "Metal/Bounce2", CHAN_AUTO);
		SetActorFlag(675, "NOINTERACTION", 1);
		SetLineSpecial(130, 0, 0, 0, 0, 0, 0);
		Line_SetBlocking(130, 0, BLOCKF_PLAYERS);
		Delay(16);
		Polyobj_DoorSwing(88,-8,64,175);
	    Polyobj_DoorSwing(268,8,64,175);
	}
	else
	If(GetActorZ(0) < -10.0)
    {
      Polyobj_DoorSwing(88,-8,64,175);
	  Polyobj_DoorSwing(268,8,64,175);
	}
}

Script 89 (void)
{
	If(GetActorZ(0) < -208.0)
    {
	  SetLineSpecial(204, ACS_Execute, 89, 0, 0, 0, 0);
      Polyobj_DoorSwing(89,-16,64,105);
	}
}

Script 90 (void)
{
	If(GetActorZ(0) < -18.0)
    {
      Polyobj_DoorSwing(90,16,64,175);
	}
}

Script 91 (void)
{
	If(GetActorZ(0) < 45.0 && CheckInventory("CopperKey") > 0)
    {
      Polyobj_DoorSwing(91,16,64,4200);
	  Polyobj_DoorSwing(269,-16,64,4200);
	}
	else
    If(GetActorZ(0) < 45.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"These doors require a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 92 (void)
{
	If(GetActorZ(0) < -250.0)
    {
      Polyobj_DoorSwing(92,-16,64,105);
	}
}

Script 93 (void)
{
	If(GetActorZ(0) < -264.0)
    {
	  SetLineSpecial(272, ACS_Execute, 93, 0, 0, 0, 0);
      Polyobj_DoorSwing(93,16,64,105);
	}
}

Script 135 (void)
{
	If(GetActorZ(0) < -204.0)
    {
      Polyobj_DoorSwing(135,-16,64,105);
	}
}

Script 179 (void)
{
	If(GetActorZ(0) < 163.0)
    {
      Polyobj_DoorSwing(179,16,64,350);
	  Polyobj_DoorSwing(361,-16,64,350);
	}
}

Script 180 (void)
{
	If(GetActorZ(0) < 43.0 && CheckInventory("CopperKey") > 0)
    {
      Polyobj_DoorSwing(180,-16,64,175);
	}
	else
    If(GetActorZ(0) < 43.0 && CheckInventory("CopperKey") == 0)
    {
      Print(s:"This door requires a Copper key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 181 (void)
{
	If(GetActorZ(0) < -188.0)
    {
      Polyobj_DoorSwing(181,-16,64,175);
	}
}

Script 182 (void)
{
	If(GetActorZ(0) < -272.0 && CheckInventory("AxeKey") > 0)
    {
      Polyobj_DoorSwing(182,-16,64,175);
	}
	else
    If(GetActorZ(0) < -272.0 && CheckInventory("AxeKey") == 0)
    {
      Print(s:"This door requires an Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 270 (void)
{
	If(GetActorZ(0) < -263.0)
    {
      Polyobj_DoorSwing(270,16,64,175);
	}
}

Script 359 (void)
{
	If(GetActorZ(0) < -275.0)
    {
      Polyobj_DoorSwing(359,-16,64,175);
	}
}

Script 360 (void)
{
	If(GetActorZ(0) < -202.0)
    {
	  SetLineSpecial(134, ACS_Execute, 360, 0, 0, 0, 0);
      Polyobj_DoorSwing(360,-16,64,105);
	}
}

Script 450 (void)
{
	If(GetActorZ(0) < -275.0)
    {
      Polyobj_DoorSwing(450,-16,64,105);
	}
}

//READABLES
Script 37 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(This journal appears to belong to the Spirit Mistress. You decipher the strange runes with ease)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.54, 120.0);

	Hudmessage(s:"Day 54, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.58, 120.0);
    Hudmessage(s:"Just great!  I left my decrepit mansion hoping for an adventure and Mistress Nithriel has brought me to this damp "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.60, 120.0);
	Hudmessage(s:"and dull place! On the positive side, she's entrusted me with commanding it so I will have my new servants arrange"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.62, 120.0);
	Hudmessage(s:"the premises to my liking.  What won't change so soon is the presence of these persistent orcs outside of our walls.  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.64, 120.0);

	Hudmessage(s:"Day 55, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.68, 120.0);
	Hudmessage(s:"Nithriel has finally talked about her exploits... to a certain degree. She had to expend large amounts of her power"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.70, 120.0);
	Hudmessage(s:"to retrieve this mystical artifact... so that's why she needed me. She's asked me to summon my warlocks and ready"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.72, 120.0);
    Hudmessage(s:"a mana funneling ritual.  It appears that she still requires energy for her upcoming journey.  Very well, I'll oblige."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.74, 120.0);

	Hudmessage(s:"Day 56, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.78, 120.0);
	Hudmessage(s:"Drat! Just as I returned here today, I noticed a praak running off with my Spirit Gem clutched into it's slimy claws!"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.80, 120.0);
	Hudmessage(s:"I chased it all the way to the throne room, but he vanished without a trace! The cultists are still searching for it... "; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.82, 120.0);

	Hudmessage(s:"Day 57, 3rd Qrt. An. 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
	Hudmessage(s:"It seems like Nithriel is planning to leave to Hell.   She's got an appointment with the Blue Baron I presume... I hope "; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.88, 120.0);
	Hudmessage(s:"she doesn't plan to forget me here. I'm supposed to receive an official order from her today, and I'm quite nervous."; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
}

Script 38 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Official order from the authority of High Mistress Nithriel"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.70, 60.0);

	Hudmessage(s:"My dearest sister, I am departing to Hell today.  It is time for each of us to tend to their duties, and yours will"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.74, 60.0);
    Hudmessage(s:"be just as important as mine. I will break the orc siege, and offer you the greenskin prisoners for interrogation. "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.76, 60.0);
	Hudmessage(s:"Your duty is to find out the number of the survivors and their positions, so we can devise a plan to put an end    "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.78, 60.0);
	Hudmessage(s:"to their wretched presence here in the Underworld, once and for all. Fear not, as Demons will aid you in this war."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.80, 60.0);

	Hudmessage(s:"There is, however, a more urgent task at hand.  I'm expecting a particularly strong orc to show up at your door. "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.84, 60.0);
	Hudmessage(s:"The Halfblood. Set up a trap, and capture her. Then throw her into the corruption pits beneath the castle.  I will"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.86, 60.0);
	Hudmessage(s:"slow down her advance and buy you time to prepare. Be vigilant and make sure that she doesn't lose her life. Yet."; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.88, 60.0);
    Hudmessage(s:"I shall return in due time once I bring the artifact to where it belongs. Tend to your orders. Do not disappoint me."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.90, 60.0);
}

Script 39 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Interrogation Report - Day 57, 3rd Quarter, Anum 1106"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 30.0);

	Hudmessage(s:"We have commenced the interrogation of the first prisoner. As expected, she has refused to talk. We applied an "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 30.0);
    Hudmessage(s:"increasing amount of pain, but it seems that these greenskins are well trained and devoted to their cause.  She"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 30.0);
	Hudmessage(s:"has ultimately died under the hot rod's pain. We will require a mentalist or a succubus to yield any result here."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 30.0);
}

Script 40 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Rites of Initiation"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 30.0);

	Hudmessage(s:"[...] And who is more blessed than him who can harness the power of mana? Who can be more ready to overcome"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 30.0);
    Hudmessage(s:"his flesh than the Initiate? And the Cult shall chisel and shape this blessing in return for his devout service.   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 30.0);
	Hudmessage(s:"For it is him who willingly offers his fleshly eye on the altar, and him who will receive the Godly sight in turn.    "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 30.0);
}

Script 103 (void)
{
	If(IsTIDUsed(665))
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 4.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(The scroll mentions various strategic positions and interests of the Demons. A code is written at the end - 2367)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 4.0);
    }
}

Script 104 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 30.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The scroll bears the intricate seal of a highly ranked Pit Lord)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 30.0);

	Hudmessage(s:"My faithful worshipers, I assure you that we will have a fruitful collaboration.     Your sacrifice and devotion has   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 30.0);
    Hudmessage(s:"earned the good favor of the Demons, and we will not leave it unpaid. The ice cave ambush is prepared, as Mistress "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 30.0);
	Hudmessage(s:"Nithriel has ordered. We shall keep any intrusive greenskins away from the abandoned dwarven city. - Lord Igrutius"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 30.0);
}

Script 167 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Keep the gate barred at all times! Supplies will be arriving via demon gating from now on, by order of the Psi Demons."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
}

Script 168 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 40.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The scroll bears the very seal of the supreme Cult leader)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 40.0);

	Hudmessage(s:"I no longer need you at the factory. Take your disciples and move to the dwarven town. Once you get there, you"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 40.0);
    Hudmessage(s:"will be further instructed with your tasks. Needless to say, this matter will require the utmost discretion.   -  N."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 40.0);
}

Script 222 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 20.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"TO DO:"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.40, 20.0);

	Hudmessage(s:"1. Salvage usable crystals from tank turret"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.44, 20.0);
	Hudmessage(s:"--------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.44, 20.0);
    Hudmessage(s:"2. Refill fragfire cans and pass them to Hectus"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.46, 20.0);
	Hudmessage(s:"-----------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.46, 20.0);
	Hudmessage(s:"3. Get 6 lumps of Dark Iron Ore & replace lost Spike Guns"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.48, 20.0);
	If(CheckInventory("QuestMap13GetDarkIron") == 1)
	{
		Hudmessage(s:"---------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.48, 20.0);
	}

	If(CheckInventory("QuestMap13InvestigateRuins") >= 1)
	{
		Hudmessage(s:"4. Break down & document the newly uncovered Paingun"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.50, 20.0);
	}

	If(CheckInventory("QuestMap13GetDarkIron") == 0)
	  {
		  Delay(2*35);
		  GiveInventory("QuestMap13GetDarkIron", 2);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	      }
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

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}

//THE KING EASTER EGG
Script 10 (void)
{
  If(GetActorZ(0) < 500.0)
  {
	Delay(4);
	FadeTo(0, 0, 0, 1.0, 0.5);
	Delay(16);
	Teleport_Nofog(81, 1, 0);
	SetActorVelocity(0, 0, 1, 0, 0, 0);
	FadeTo(0, 0, 0, 0.0, 0.5);
	Terminate;
  }
  Delay(4);
  Restart;
}

Script 11 (void)
{
	Teleport_Nofog(82, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 82, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
















//NIGHTMARE SEGMENT 1
Script 156 (void)
{
	TakeInventory("QuestMap13Sleep", 1);
	SetLineSpecial(454, 0, 0, 0, 0, 0, 0);
	SetActorFlag(382, "INVISIBLE", 1);
	Thing_Remove(809);
	SetActorFlag(480, "INVISIBLE", 1);
	FadeTo(0, 0, 0, 1.0, 3.0);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);

	SetActorAngle(473, 0.69);

	PlaySound(0, "Character/ZanTired", CHAN_AUTO);
	SetWeapon("Fists");
	SetMugShotState("Sleep");
	Delay(35);
	ACS_Execute(48, 0, 0, 0, 0);
	Delay(105);
	ACS_NamedExecuteWithResult("FriendlyCounter");
	//TakeInventory("IsPlaying", 1);
	ACS_NamedExecuteWithResult("TakeWeapons");
	ACS_NamedExecuteWithResult("TakeConsumables");

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

	Delay(4);
	Thing_Remove(691);
	Delay(31);
	Autosave();
	Delay(140);

	ChangeCamera(472, 0, 0);
	SetMusic("HTrack26", 0);
	Radius_Quake(3, 286, 0, 1, 472);
	SpawnSpotForced("ExplosionHuge", 474, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 474, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 474, 0, 0);
	Delay(24);

	PlaySound(469, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Demons are attacking! Quick, sisters, to the gates!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 0.5);

	Delay(28);

	FadeTo(0, 0, 0, 0.7, 4.0);
	Delay(35);
	SpawnSpotForced("ExplosionHuge", 467, 0, 0);
	Delay(70);
	SpawnSpotForced("ExplosionHuge", 469, 0, 0);
	Delay(105);

	FadeTo(0, 0, 0, 0.0, 1.0);
	Delay(24);
	PlaySound(472, "Character/ZanHh", CHAN_AUTO);
	SetMugShotState("Ouch");
	Delay(8);

	Radius_Quake(5, 70, 0, 1, 472);

	SetActorState(457, "SpecialGlow", 0);
	SetActorState(458, "SpecialGlow", 0);
	SetActorState(459, "SpecialGlow", 0);
	SetActorState(460, "SpecialGlow", 0);
	SetActorState(461, "SpecialGlow", 0);
	SetActorState(462, "SpecialGlow", 0);
	SetActorState(463, "SpecialGlow", 0);
	SetActorState(464, "SpecialGlow", 0);
	SetActorState(465, "SpecialGlow", 0);

    Floor_lowerByValue(477, 9999, 76);
	FloorAndCEiling_RaiseByValue(479, 9999, 8);
	//SpawnSpotForced("BurnDecal", 480, 0, 0);
	SetActorFlag(480, "INVISIBLE", 0);
	SpawnSpotForced("ExplosionHuge", 475, 0, 0);
	SpawnSpotForced("Dustcloud", 475, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionLarge", 476, 0, 0);
	Delay(8);
	SetMugShotState("Normal");
	SpawnSpotForced("ExplosionHuge", 477, 0, 0);
	Delay(12);

	FadeTo(0, 0, 0, 1.0, 2.0);
	Delay(105);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	SetMugShotState("Normal");
	Teleport_NoFog(476, 1, 0);
	ChangeCamera(0, 0, 0);
	//GiveInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 3.0);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(105);
	SpawnSpotForced("ExplosionHuge", 468, 0, 0);

	Delay(105);
	PlaySound(451, "BearWarrior/Rage1", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Arrrgh!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.90, 7.5, 0.2, 0.5);

}

//Nightmare 1 Starter
Script 159 (void)
{
	SetActorFlag(458, "NOBLOCKMAP", 1);
	SetActorFlag(458, "SOLID", 0);
	Scroll_Wall(455, 0, -32, 0, 2);
	Scroll_Wall(455, 0, -32, 0, 4);
	SpawnSpotForced("ExplosionHuge", 496, 0, 0);
	Delay(50);
	Thing_Activate(666);
	NoiseAlert(0, 0);
	ACS_Execute(158, 0, 0, 0, 0);
	//ACS_Execute(157, 0, 0, 0, 0);

	If(GetActorproperty(451, APROP_Health) >= 1)
	{
		PlaySound(451, "BearWarrior/Rage2", CHAN_AUTO);
		Hudmessage(s:"Bear Warrior:    They are coming from everywhere!!! What the hell is happening?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 7.5, 0.2, 0.5);
	}
}

Script 160 (void)
{
	If(GetActorproperty(452, APROP_Health) >= 1)
	{
		PlaySound(452, "Fixer/Huh", CHAN_AUTO);
		Hudmessage(s:"Fixer:    They just keep coming!!! What do we do?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 5.5, 0.2, 0.5);
		Delay(6*35);
		  If(GetActorproperty(453, APROP_Health) >= 1)
	      {
		  PlaySound(453, "Reaver/Huh", CHAN_AUTO);
		  Hudmessage(s:"Reaver:    We fight until we run out of ammo! For the Iron Divison!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 0.5);
	      }
	}
}

//Nightmare 1 Spawner
Script 158 (void)
{
	Switch(random(1, 7))
	{
		Case 1:
        SpawnSpotForced("Cerberus", 466, 666, 128);
	    SpawnSpotForced("HedonTeleportFogDemon", 466, 0, 0);
        PlaySound(466, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 2:
        SpawnSpotForced("Cerberus", 466, 666, 128);
	    SpawnSpotForced("HedonTeleportFogDemon", 466, 0, 0);
        PlaySound(466, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 3:
        SpawnSpotForced("Hellblaze", 469, 666, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 469, 0, 0);
        PlaySound(469, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 4:
        SpawnSpotForced("PitLord", 467, 666, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 467, 0, 0);
        PlaySound(467, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 5:
        SpawnSpotForced("IronUrchin", 468, 666, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 468, 0, 0);
        PlaySound(468, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 6:
        SpawnSpotForced("Hellblaze", 469, 666, 64);
	    SpawnSpotForced("HedonTeleportFogDemon", 469, 0, 0);
        PlaySound(469, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		Break;

		Case 7:
		If(GameSkill() != 5)
	    {
        SpawnSpotForced("ForgeElemental", 470, 666, 192);
	    SpawnSpotForced("HedonTeleportFogDemon", 470, 0, 0);
        PlaySound(470, "misc/teleport", CHAN_AUTO);
		NoiseAlert(0, 0);
		}
		Break;
	}
	SetActorFlag(666, "COUNTKILL", 0);
	Delay(275);

	If(GameSkill() == SKILL_VERY_EASY)
	{
	Delay(105);
	}
	Restart;
}

//Nightmare 1 Ender
int spec157 = 0;
Script 157 (void)
{
	If(IsTIDUsed(457)== 0 && IsTIDUsed(458) == 0 && IsTIDUsed(459) == 0 && IsTIDUsed(460) == 0 && IsTIDUsed(461) == 0 && IsTIDUsed(462) == 0 && IsTIDUsed(463) == 0 && IsTIDUsed(464) == 0 && IsTIDUsed(465) == 0)
	{
		ACS_Terminate(158, 0);
		Thing_Destroy(666, 1, 0);
		Radius_Quake(6, 280, 0, 1, 0);
		FadeTo(0, 0, 0, 1.0, 9.0);
		SetActorFlag(0, "NODAMAGE", 1);

		Delay(2*35);

		PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
		Hudmessage(s:"Abhaoth:    ...the hourglass has turned... time is slipping away... the end is closer than it appears..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 2.0, 2.5);
        Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.86, 3.5, 2.0, 2.5);

        Delay(2*35);
		ACS_Execute(48, 0, 0, 0, 0);
		Delay(9*35);

		If(GetActorProperty(0, APROP_Health) <= 0)
		{
			Terminate;
		}


		SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	    SetActorProperty(0, APROP_Speed, 0.0);
	    SetActorProperty(0, APROP_Friction, 0.1);
		//TakeInventory("IsPlaying", 1);

		Thing_Remove(449);
	    Thing_Remove(450);
	    Thing_Remove(451);
	    Thing_Remove(452);
	    Thing_Remove(453);
		Thing_Remove(666);
		Thing_Remove(901);
	    Scroll_Wall(455, 0, 0, 0, 2);
		Scroll_Wall(455, 0, 0, 0, 4);

		TakeInventory("HoldingSentry", 1);
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
		TakeInventory("Hellclaw", 1);
		TakeInventory("Paingun", 1);
		TakeInventory("StormStaff", 1);
		TakeInventory("Crylance", 1);
		TakeInventory("CrylanceLoaded", 100);
		TakeInventory("SpikeMag", 9999);
		TakeInventory("FragfireCan", 9999);
		TakeInventory("BoltMag", 9999);
		TakeInventory("PotionBoxAcid", 9999);
		TakeInventory("DepletedPowerShard", 9999);
		TakeInventory("HellEnergy", 9999);
		TakeInventory("ManaBall", 9999);
		TakeInventory("InventoryPotionOfStoneskin", 100);
		TakeInventory("InventoryElementalRing", 100);
		TakeInventory("InventoryPotionOfMight", 100);
		TakeInventory("InventoryPotionOfHaste", 100);
		TakeInventory("InventorySentryGun", 100);
		TakeInventory("InventoryAmuletOfShadows", 100);
		TakeInventory("InventoryBracerOfTheRevenant", 100);

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

	    ChangeCamera(481, 0, 0);

		SpawnSpotForced("NPCTiatiResting",482, 450, 0);

		FadeTo(0, 0, 0, 0.0, 1.0);

		PlaySound(450, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Reaver Tiati:    You see the shadow too, don't you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);

		Delay(7*35);

		PlaySound(450, "Reaver/Huh", CHAN_AUTO);
		Hudmessage(s:"When I faced Nithriel back at the Crystal Heart, she did something to me... tried to... slip into my head?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(450, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"I have been feeling echoes of her emotions ever since... or at least I think so. I sense this eerie excitement."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(450, "Reaver/Hmm", CHAN_AUTO);
		Hudmessage(s:"She must be close to where we are... but enough of that. Get up, Breaza wants to see you about a new task."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(5*35);


	    PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
		ACS_NamedExecuteWithResult("FriendlySpawner");
	    FadeTo(0, 0, 0, 1.0, 3.0);
	    Delay(105);
		SetActorFlag(0, "NODAMAGE", 0);

        TakeInventory("IsPlaying", 1);
		ACS_Execute(226, 0, 0, 0, 0); //Skip Briefing 2
		Delay(145);
		GiveInventory("IsPlaying", 1);

		ChangeCamera(0, 0, 0);
		Teleport_NOFOG(690, 1, 0);
		SpawnSpotForced("NPCMurguthREgular",485, 452, 72);
		SetActorPitch(0, 0.0);
		Delay(70);
		FadeTo(0, 0, 0, 0.0, 3.0);


		If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
			SpawnSpotForced("IDLancerStationary", 483, 453, 64);
			SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);
			PlaySound(453, "Lancer/Ha", CHAN_AUTO);
		    Hudmessage(s:"Crystal Curator:    We meet again, Halfblood. You didn't think I would fall so easily, did you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(7*35);
			PlaySound(453, "Lancer/Hmm", CHAN_AUTO);
			Hudmessage(s:"Granted our sisters had to retrieve my half conscious body from a pile of slimy worm flesh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(7*35);

			PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
            Hudmessage(s:"Grand Earth Mother Breaza:    We are honoured with your presence here, Curator. Your insight is invaluable."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	        Delay(7*35);
		}

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand Earth Mother Breaza:    Well then, let us begin. As you already know, we have claimed the south Cult fort."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Advisor:    Thanks to that, we could send a messenger for Valc on a safer route. We may expect reinforcements soon."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		Hudmessage(s:"Grand Earth Mother Breaza:    What's more, our warriors have searched the fortress and found important information."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Nithriel is planning to meet with the Blue Baron, right at the port city north-east of us. A capital opportunity."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
			PlaySound(453, "Lancer/Heh", CHAN_AUTO);
		    Hudmessage(s:"Crystal Curator:    Yes, I cannot stress enough how crucial it is that we stop the Elf!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(7*35);
		}

		PlaySound(375, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Advisor:    A chance to both sever the snake's head, and retrieve our Sacred Disk. A way out of this disaster."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand Earth Mother Breaza:    However, we can't assault the town gates directly. The guard towers will incinerate us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		Hudmessage(s:"Reports suggest that the demons are using a nearby abandoned minotaur town to store their supply of hell powder..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		Hudmessage(s:"If we could claim it, we could use it to quickly tunnel around the town's walls and launch a surprise attack."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);


		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Advisor:    This is where you come in, sergeant. We need you to secure the depot. The problem is... Lord Murguth?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		GiveInventory("QuestMap13SecurePowder", 2);
		If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }

		If(CheckInventory("QuestMap13TradeGold") == 0)
		{
			SetLineSpecial(803, ACS_Execute, 241, 0, 0, 0, 0);
		}

		PlaySound(452, "Murguth/Ha", CHAN_AUTO);
		Hudmessage(s:"Minotaur Lord Murguth:    The access to the town has been long sealed off. Demons can teleport inside. We can't."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		Hudmessage(s:"My ancestors used perfectly cut rubies to open the main gates. And I happen to have inherited one of these gems."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		SpawnSpotForced("InventoryGiantRuby", 486, 0, 0);
		PlaySound(486, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("HealthCreamFungus", 748, 0, 0);

		PlaySound(452, "Murguth/Growl", CHAN_AUTO);
		Hudmessage(s:"Bonebreaker, take the ruby and place it on the pedestal where it belongs. That will power up the gate's mechanism."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 8.5, 0.2, 0.5);
		Delay(9*35);

		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Advisor:    The enemy isn't expecting you, so this should be a safer task, sergeant. Still, keep your guard up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Hudmessage(s:"Advisor:    The enemy isn't expecting you, so this should be a safer task, sergeant. Still, keep your guard up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand Earth Mother Breaza:    We're counting on you, Zan. Take care... dismissed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(4*35);

		FadeTo(0, 0, 0, 1.0, 3.0);

		Delay(105);

		Thing_Remove(450);
		Thing_Remove(452);
		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
        SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
        SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
	    //GiveInventory("IsPlaying", 1);
	    ACS_NamedExecuteWithResult("GiveWeapons");
	    ACS_NamedExecuteWithResult("GiveConsumables");
		SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	    SetActorProperty(0, APROP_Speed, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		FadeTo(0, 0, 0, 0.0, 3.0);
		SetMusic("HTrack24");

        Autosave();
		Terminate;
	}
	else
	If(((IsTIDUsed(457) + IsTIDUsed(458) + IsTIDUsed(459) + IsTIDUsed(460) + IsTIDUsed(461) + IsTIDUsed(462) + IsTIDUsed(463) + IsTIDUsed(464) + IsTIDUsed(465)) > 0) && ((IsTIDUsed(457) + IsTIDUsed(458) + IsTIDUsed(459) + IsTIDUsed(460) + IsTIDUsed(461) + IsTIDUsed(462) + IsTIDUsed(463) + IsTIDUsed(464) + IsTIDUsed(465)) < 6) && spec157 == 0)
	{
		spec157 += 1;
		PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
		Hudmessage(s:"Abhaoth:    ...find me...put the pieces together...before they overwhelm you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.70, 4.5, 2.0, 3.5);

	}
	else
	If(((IsTIDUsed(457) + IsTIDUsed(458) + IsTIDUsed(459) + IsTIDUsed(460) + IsTIDUsed(461) + IsTIDUsed(462) + IsTIDUsed(463) + IsTIDUsed(464) + IsTIDUsed(465)) > 0) && ((IsTIDUsed(457) + IsTIDUsed(458) + IsTIDUsed(459) + IsTIDUsed(460) + IsTIDUsed(461) + IsTIDUsed(462) + IsTIDUsed(463) + IsTIDUsed(464) + IsTIDUsed(465)) < 4) && spec157 == 1)
	{
		spec157 += 1;
		PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
		Hudmessage(s:"Abhaoth:    ...yes...keep searching...release me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.70, 3.5, 2.0, 3.5);

	}
	Delay(3*35);
	Restart;
}


//NIGHTMARE SEGMENT 2
Script 193 (void)
{
	SetLineSpecial(454, 0, 0, 0, 0, 0, 0);
	SetActorFlag(382, "INVISIBLE", 1);
	Thing_Remove(809);

	SetActorFlag(542, "INVISIBLE", 1);
	SetActorFlag(542, "NOBLOCKMAP", 1);

	FadeTo(0, 0, 0, 1.0, 3.0);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);

	PlaySound(0, "Character/ZanTired", CHAN_AUTO);
	SetWeapon("Fists");
	SetMugShotState("Sleep");
	Delay(35);
	ACS_Execute(48, 0, 0, 0, 0);
	Delay(105);
	//TakeInventory("IsPlaying", 1);
	ACS_NamedExecuteWithResult("TakeWeapons");
	ACS_NamedExecuteWithResult("TakeConsumables");

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

	Delay(35);
	ACS_NamedExecuteWithResult("FriendlyCounter");
	Delay(4);
	Thing_Remove(691);
	Autosave();
	Delay(140);

	Teleport_NoFog(536, 0, 0, 0);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.7);
	Delay(6);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.5);
	Delay(8);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.9);
	Delay(4);
	PlaySound(543, "Misc/Silence", CHAN_5, 1.0);
	Delay(105);


	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.7);
	Delay(6);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.5);
	Delay(8);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.9);
	Delay(4);
	PlaySound(543, "Misc/Silence", CHAN_5, 1.0);

	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(24);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	SetMugShotState("Normal");
	Delay(8);


	FadeTo(0, 0, 0, 0.0, 3.0);

	SetActorPitch(0, 0);
	SetActorAngle(0, 0.5);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

    Delay(70);
    ACS_Execute(194, 0, 0, 0, 0);
}

//Door Knocker
Script 194 (void)
{
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.7);
	Delay(6);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.5);
	Delay(8);
	PlaySound(543, "Interaction/Footstep", CHAN_5, 0.9);
	Delay(4);
	PlaySound(543, "Misc/Silence", CHAN_5, 1.0);
	Delay(105);
	Restart;
}

//Door Open
Script 195 (void)
{
	PlaySound(543, "Door1/Start", CHAN_AUTO, 1.0);
	ACS_Terminate(194, 0);
	SetLineSpecial(545, 0, 0, 0, 0, 0, 0);
	Delay(16);
	Ceiling_RaiseByValue(535, 4, 50);
	Delay(12);
	PlaySound(0, "Ambient/Creepy", CHAN_AUTO, 0.4);
}

//Nightmare 2 Ender
Script 196 (void)
{
	PlaySound(544, "Ambient/BuildUp", CHAN_AUTO);
	Ceiling_LowerByValue(538, 6, 100);
	ChangeCeiling(538, "Black");
	Floor_RaiseByValue(539, 8, 128);
	Floor_RaiseByValue(540, 12, 128);
	Floor_RaiseByValue(541, 16, 128);
	Floor_RaiseByValue(555, 16, 50);
	Line_SetBlocking(537, BLOCKF_PLAYERS, 0);
	Delay(4*35);
	FadeTo(0, 0, 0, 1.0, 6.0);
	Delay(6*35);
	Light_Fade(554, 0, 1);

	ChangeFloor(554, "Corupt01");
	SetActorFlag(542, "INVISIBLE", 0);
	Thing_Move(550, 546, 1);
	Thing_Move(551, 547, 1);
	Thing_Move(552, 548, 1);
	Thing_Move(553, 549, 1);

	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Hudmessage(s:"Abhaoth:    ...some secrets are best left untouched... but that won't stop you, will it?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 2.0, 2.5);

	Delay(4*35);

	FadeTo(0, 0, 0, 0.0, 8.0);
	Delay(4*35);

	Radius_Quake(3, 350, 0, 3, 544);

	PlaySound(542, "Nithriel/Laugh", CHAN_AUTO, 0.4);

	Delay(6*35);

	ChangeCamera(481, 0, 0);

	Thing_Remove(542);
	Thing_Remove(544);
	Thing_Remove(550);
	Thing_Remove(551);
	Thing_Remove(552);
	Thing_Remove(553);

	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);


    //Phase 2 Changes
	SpawnSpotForced("IDBarrel1", 557, 689, 0);
	SpawnSpotForced("JunkPaingunPartA", 558, 0, 0);
	SpawnSpotForced("JunkPaingunPartB", 559, 0, 0);
	Thing_Remove(442);
	Thing_Remove(443);
	Thing_Remove(428);

	SpawnSpotForced("NPCZuraRegular", 574, 669, 0);
	SpawnSpotForced("IDFixerStationary", 575, 670, 64);
	SpawnSpotForced("IDWitchStationary", 576, 671, 100);
	SpawnSpotForced("NPCReaverDrinker", 577, 672, 160);
	SpawnSpotForced("IDBearWarriorStationary", 578, 673, 0);
	SpawnSpotForced("NPCBearWarriorTraining", 579, 674, 192);

	Thing_Activate(567);
	TeleportOther(563, 566, 0);
	SpawnSpotForced("HealthSausage", 573, 0, 0);
	SpawnSpotForced("GoreLiver", 565, 0, 0);
	SpawnSpotForced("HealthSaltedMeat", 564, 0, 0);
	Thing_Remove(568);
	Ceiling_RaiseByValue(570, 9999, 80);
	Thing_Remove(332);
	SpawnSpotForced("DeadHellblazeFragged", 571, 0, 0);

	If(CheckInventory("ScriptIsADipshit") < 2)
	{
	SetLineSpecial(580, 0, 0, 0, 0, 0, 0);
	Thing_Remove(581);
	SpawnSpotForced("IDEarthMotherRecruitable", 582, 0, 192);
	SetLineSpecial(583, ACS_Execute, 206, 0, 0, 0, 0);
	}

	If(CheckInventory("ScriptHasTriggeredIceCaveAmbush") == 0)
	{
	  Thing_Remove(170);
	  SpawnSpotForced("NatureIceStoneA", 175, 0, 0);
	  SpawnSpotForced("NatureIceStoneA", 176, 0, 0);
	  FloorAndCeiling_LowerByvalue(171, 96, 312);
	  FloorAndCeiling_LowerByvalue(172, 104, 328);
	  FloorAndCeiling_LowerByvalue(174, 90, 296);

	  SpawnSpotForced("DeadHellblaze", 586, 0, 0);
	  SpawnSpotForced("Hellclaw", 586, 0, 0);
      SpawnSpotForced("DeadCerberus", 587, 0, 0);
	  SpawnSpotForced("FragfireCanHalf", 587, 0, 0);
	  SpawnSpotForced("DeadPitLord", 588, 0, 0);
	  SpawnSpotForced("DeadDwarfMilitia", 589, 0, 0);
	  SpawnSpotForced("DeadDwarfShieldguard", 590, 0, 0);

	  SetLineSpecial(591, ACS_Execute, 209, 0, 0, 0, 0);
	}
	else
	Thing_Destroy(676, 0);

    FloorAndCeiling_LowerByValue(593, 9999, 120);
	FloorAndCeiling_RaiseByValue(595, 9999, 300);
	Floor_LowerByValue(562, 9999, 96);

	SpawnSpotForced("NPCTiatiResting", 482, 450, 0);

	FadeTo(0, 0, 0, 0.0, 1.0);

	PlaySound(450, "Reaver/Huh", CHAN_AUTO);
	Hudmessage(s:"Reaver Tiati:    Zan, wake up! Chieftain Zura has arrived from Valc with a few others."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);

	Delay(7*35);

	PlaySound(450, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Remember the dark corruption that Lith was growing back in the Clinic's labs? "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);

	Delay(7*35);

	PlaySound(450, "Reaver/Hm", CHAN_AUTO);
	Hudmessage(s:"Zura has found some information on that. Come on, get up, she wants to brief you with a new task."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.5, 0.2, 2.5);
	Delay(7*35);

	PlaySound(481, "Character/ZanAwake", CHAN_AUTO);
	ACS_NamedExecuteWithResult("FriendlySpawner");
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(105);

    TakeInventory("IsPlaying", 1);
	ACS_Execute(228, 0, 0, 0, 0); //skip Briefing 3
	Delay(145);
	GiveInventory("IsPlaying", 1);

	ChangeCamera(0, 0, 0);
	Teleport_NoFOG(690, 1, 0);
	SetActorPitch(0, 0.0);
	Delay(70);
	FadeTo(0, 0, 0, 0.0, 3.0);

	PlaySound(669, "Witch/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    Ah, look who has just arrived. Our most treasured champion!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	Delay(5*35);

	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
	Hudmessage(s:"Grand Earth Mother Breaza:    I'm sure you're delighted to meet Chieftain Zura too, Zan. Pleasantries aside-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(4*35);
	Delay(16);

	PlaySound(669, "Witch/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    I've studied one of Lith's diaries back in Valc and uncovered... certain details."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	PlaySound(669, "Witch/Ha", CHAN_AUTO);
    Hudmessage(s:"It appears that Nithriel had managed to pierce her mind and feed her visions, gradually driving her insane."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

    Hudmessage(s:"During this unstable process, however, parts of Lith's mind were overridden by the warlock's own memories..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	Hudmessage(s:"Her diary described images of underwater ruins and how they are tied to the manifestation of the corruption."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(669, "Witch/Hm", CHAN_AUTO);
	Hudmessage(s:"I believe you've seen the Cult using Valc's Grove portal to experiment with the spread of this dark slime."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	Hudmessage(s:"If we could verify the memories, we could pinpoint the origin of this parasite and learn how to combat it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);

	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Grand E. M. Breaza:    Jaromir knows of an underwater town built by his ancestors for archeological studies."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	PlaySound(669, "Witch/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    ...studies of old ruins. Elven ruins... that might well be connected to Nithriel's goals."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
			PlaySound(453, "Lancer/Ha", CHAN_AUTO);
		    Hudmessage(s:"Crystal Curator:    Of course! The Sacred Disk! She must know of something else it could be used for."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(6*35);
		}

	PlaySound(375, "Lancer/Heh", CHAN_AUTO);
	Hudmessage(s:"Advisor:    Our knowledge of crystals stems from elven ruins too, after all. This slime might be a similar case."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	PlaySound(669, "Witch/Ha", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    Regardless, you are to investigate the place, warrior. The information could be crucial."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(3*35);

	GiveInventory("QuestMap13InvestigateRuins", 2);
		If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
	Delay(4*35);

    PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	Hudmessage(s:"Grand E. M. Breaza:    Jaromir left our camp an hour ago. Head south-east of here and meet up with him."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);

	Hudmessage(s:"He will aid you in finding these mysterious ruins. Please be careful... and watch your back. Dismissed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

	If(CheckInventory("ScriptIsADipshit") > 1)
	{
		Delay(7*35);
		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
		Hudmessage(s:"Oh, and before I forget... try not to hamper our Brewer next time. It cost our Earth Mothers a lot of mana..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	}

	Delay(4*35);
	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(3*35);

	Delay(35);
	FadeTo(0, 0, 0, 0.0, 3.0);

	Thing_Remove(450);

	SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
	SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
	SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);

	ACS_NamedExecuteWithResult("GiveWeapons");
	ACS_NamedExecuteWithResult("GiveConsumables");
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	FadeTo(0, 0, 0, 0.0, 3.0);
	SetMusic("HTrack24");

	Autosave();
}










































//JOURNAL
Script "OpenJournal" (void)
{
	SetFont ("OLAYTJOU");
    HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);

	SetFont("SMALLFONT");
	Hudmessage(s:".oO   JOURNAL OF ZAN THE BONEBREAKER   Oo."; HUDMSG_PLAIN, 999, CR_BLACK, 1.5, 0.10, 9999.0);


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

	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}












//DIALOGUE


//Breaza Dialogue
Script 97 (void)//special
{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    The minotaur town should connect to the mines, search it carefully. And watch your back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
        Delay(7*35);
    }
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	{
		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    So your search has been far more dangerous than I had expected. Let Zura know about it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
        Delay(7*35);
    }
	else
	If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    Jaromir has headed south-east, towards the icy region. He will help you in your search."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
        Delay(7*35);
    }
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1)
	{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    I did not imagine I'd be sending you to such a dangerous place, Zan. Go get some rest now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
        Delay(7*35);
    }
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 2)
	{
		TakeInventory("QuestMap13DebriefMap14", 1);
		SetLineSpecial(386, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(385, 0, 0, 0, 0, 0, 0);

		SetLineSpecial(487, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(484, 0, 0, 0, 0, 0, 0);

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    You've found the powder? Excellent!... Wait, that isn't the only thing you discovered, is it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);

		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);

		TakeInventory("IsPlaying", 1);
		ACS_Execute(227, 0, 0, 0, 0); //skip Debriefing 2
		Delay(145);
		GiveInventory("IsPlaying", 1);

		SetActorFlag(429, "INVISIBLE", 1);
		SetActorFlag(428, "INVISIBLE", 1);
		SpawnSpotForced("NPCJaromirRegular", 514, 378, 64);
		SpawnSpotForced("NPCMurguthRegular", 485, 377, 64);

		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
		Hudmessage(s:"By Air's good grace! The demons have an entire factory inside the abandoned town?! And they're producing guns now?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(1*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(7*35);

		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Advisor:    Using no less than our own technology. They've picked up on crystals quite quickly it seems."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);

		If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
		PlaySound(453, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Crystal Curator:    The cultists have most likely gotten their hands on a lot of our knowledge in Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
		}

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand E. M. Breaza:    We should have never left our home so vulnerable... oh, how foolish we have been..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);

		PlaySound(378, "Jaromir/Hah", CHAN_AUTO);
	    Hudmessage(s:"Jaromir:    They stole a lot from us too, woman, don't fret. They've barely done anything with our technology."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);

		PlaySound(377, "Murguth/Growl", CHAN_AUTO);
		Hudmessage(s:"Murguth:    I wouldn't call the hell powder artillery that mowed our men down barely anything, dwarf."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
        Delay(7*35);

		PlaySound(378, "Jaromir/Heh", CHAN_AUTO);
	    Hudmessage(s:"Jaromir:    Both our ancestors have relinquished them something, brother. But still, in this time we must look forth."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);

		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Advisor:    Jaromir is right, we've no time for remorse now. I'll send a team to inspect this infernal factory..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
		Hudmessage(s:"Grand E. M. Breaza:    ...indeed. We might as well learn something ourselves. That's it, gentlemen. Dismissed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(4*35);
		SetActorFlag(429, "INVISIBLE", 0);
		SetActorFlag(428, "INVISIBLE", 0);
		Thing_Remove(377);
		Thing_Remove(378);
		SetActorFlag(382, "INVISIBLE", 0);
		SpawnSpotForced("MarkerExitAlt", 808, 809, 0);
		SetLineSpecial(454, ACS_Execute, 193, 0, 0, 0, 0);
		FadeTo(0, 0, 0, 0.0, 3.0);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
		SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
		SetLineSpecial(388, ACS_Execute, 102, 0, 0, 0, 0);
		SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("QuestMap13SecurePowder") == 2)
	{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E. M. Breaza:    There's one entrance to the minotaur town just west of us. Try searching around it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
	If(CheckInventory("QuestMap13Sleep") == 2 && CheckInventory("QuestMap13RescuePOWs") == 1)
	{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    You look so tired. Get some sleep and we'll talk when you are awake."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
	If(CheckInventory("QuestMap13RescuePOWs") == 2)
	{
		TakeInventory("QuestMap13RescuePOWs", 1);
		SetLineSpecial(386, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(385, 0, 0, 0, 0, 0, 0);

		SetLineSpecial(388, 0, 0, 0, 0, 0, 0);

		SetLineSpecial(487, 0, 0, 0, 0, 0, 0);

		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    What's this? You've found our sisters imprisoned in the cultist fortress?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);

		Delay(5*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);

        TakeInventory("IsPlaying", 1);
		ACS_Execute(225, 0); //Skip Debriefing 1
		Delay(145);
		GiveInventory("IsPlaying", 1);

		Thing_Destroy(660, 0, 0);
		Thing_Destroy(661, 0, 0);
		Thing_Destroy(662, 0, 0);
		Thing_Remove(767);

		//int Rescuedfriendlies = ThingCount(T_NONE, 691);


		If(ThingCount(T_NONE, 691) >= 5)
		{
		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    Excellent, you've managed to pull this off with minimal casualties. Well done!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		else
		If(ThingCount(T_NONE, 691) >= 3 && ThingCount(T_NONE, 691) < 5)
		{
		PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    We've taken a few expected losses, but you've managed the situation well."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		else
		If(ThingCount(T_NONE, 691) >= 1 && ThingCount(T_NONE, 691) < 3)
		{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    I was expecting this many losses... perhaps you shouldn't have intervened."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}
		else
		If(ThingCount(T_NONE, 691) == 0)
		{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    They all died? Oh no... it's my fault for not preventing you to intervene..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		}

		ChangeFloor(769, "DIRT1");
		Floor_LowerByValue(769, 4, 2);
		SpawnSpotForced("NatureFlowerCyanroll", 770, 0, 0);
		SpawnSpotForced("Spikemag", 771, 0, 0);

		If((GameSkill() >= SKILL_VERY_HARD) && (ThingCount(T_NONE, 691) < 7))
		{
		  ChangeFloor(772, "DIRT1");
		  Floor_LowerByValue(772, 4, 2);
		  SpawnSpotForced("CaveRockD", 773, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 6)
		{
		  ChangeFloor(774, "DIRT1");
		  Floor_LowerByValue(774, 4, 3);
		  SpawnSpotForced("NatureStoneD", 775, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 5)
		{
		  ChangeFloor(776, "DIRT1");
		  Floor_LowerByValue(776, 4, 2);
		  SpawnSpotForced("NatureFlowerThornswan", 777, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 4)
		{
		  ChangeFloor(778, "DIRT1");
		  Floor_LowerByValue(778, 4, 2);
		  SpawnSpotForced("CaveFloraTwistshroomB", 779, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 3)
		{
		  ChangeFloor(778, "DIRT1");
		  Floor_LowerByValue(778, 4, 3);
		  SpawnSpotForced("CaveFloraTwistshroomB", 779, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 2)
		{
		  ChangeFloor(780, "DIRT1");
		  Floor_LowerByValue(780, 4, 1);
		  SpawnSpotForced("NatureStoneB", 781, 0, 0);
		}
		If(ThingCount(T_NONE, 691) < 1)
		{
		  ChangeFloor(782, "DIRT1");
		  Floor_LowerByValue(782, 4, 3);
		  SpawnSpotForced("NatureFlowerMandragoreB", 783, 0, 0);
		}

		Delay(4);
		ACS_NamedExecuteWithResult("FriendlyCounter");
		int w = ThingCountName("IDWitchRecruitable",0);
		int x = ThingCountName("IDBearWarriorRecruitable",0);
	    int y = ThingCountName("IDReaverRecruitable",0);
		int z = ThingCountName("IDFixerRecruitable",0);
		Delay(16);
		GiveInventory("IDWitchCounter", w);
		GiveInventory("IDBearCounter", x);
	    GiveInventory("IDReaverCounter", y);
		GiveInventory("IDFixerCounter", z);
		Thing_Remove(691);
		SpawnSpotForced("IDBearWarriorStationary", 391, 649, 0);
		SpawnSpotForced("IDBearWarriorStationary", 392, 650, 192);

		If(CheckInventory("IDFixerCounter") > 0)
		{
			TakeInventory("IDFixerCounter", 1);
			SpawnSpotForced("IDFixerStationary", 393, 651, 220);
		}
		If(CheckInventory("IDReaverCounter") > 0)
		{
			TakeInventory("IDReaverCounter", 1);
			SpawnSpotForced("IDReaverStationary", 394, 652, 64);
		}
		If(CheckInventory("IDReaverCounter") > 0)
		{
			TakeInventory("IDReaverCounter", 1);
			SpawnSpotForced("IDReaverStationary", 395, 653, 64);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 396, 654, 224);
		}
		If(CheckInventory("IDWitchCounter") > 0)
		{
			TakeInventory("IDWitchCounter", 1);
			SpawnSpotForced("IDWitchStationary", 397, 655, 0);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 398, 656, 64);
		}
		If(CheckInventory("IDBearCounter") > 0)
		{
			TakeInventory("IDBearCounter", 1);
			SpawnSpotForced("IDBearWarriorStationary", 399, 657, 128);
		}
		Delay(16);
        ACS_NamedExecuteWithResult("FriendlySpawner");

		FloorAndCeiling_LowerByValue(811, 64, 200);


		FadeTo(0, 0, 0, 0.0, 5.0);


		Delay(5*35);

        Hudmessage(s:"Well, let us make the most of this situation. We can finally take over the cultist fortress and guard our rear now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(375, "Lancer/Ha", CHAN_AUTO);
        Hudmessage(s:"Advisor:    Indeed. With that path cleared we can make another attempt at sending a messenger to Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);

		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"I will order the girls to secure the fortress and search it for any strategic information as well."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);

		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand Earth Mother Breaza:    Very well... go rest now, Zan, you can help around the camp later. Your room should be ready."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);

	    SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
		SetLineSpecial(386, ACS_Execute, 99, 0, 0, 0, 0);
		SetLineSpecial(388, ACS_Execute, 101, 0, 0, 0, 0);

		Line_SetBlocking(436, 0, BLOCKF_PLAYERS);
		Thing_Remove(434);
		SetLineSpecial(433, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(432, ACS_Execute, 138, 0, 0, 0, 0);
		SpawnSpotForced("NPCMaidWorking", 435, 667, 128);

		SetLineSpecial(441, ACS_Execute, 145, 0, 0, 0, 0);
	}
	else
    If(CheckInventory("QuestMap13HelpFixer") == 2)
	{
		PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
        Hudmessage(s:"Grand E.M. Breaza:    Yet another misfortune... find out what you can, but please be careful, Zan. I can't lose you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
}
int dial96 = 10;
Script 96 (void) //regular
{
	If(CheckInventory("QuestMap13RescuePOWs") == 2)
	{
		ACS_Execute(97, 0, 0, 0, 0);
	}
	else
	If(dial96 % 10 == 0)
	{
	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    You've been through a lot... try getting more rest, perhaps it will help your memories return."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 1)
	{
	PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    This Nithriel woman has exploited our weakness... slithering inside Valc while we were away."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 2)
	{
    Hudmessage(s:"Grand E.M. Breaza:    The Sacred Disk's theft must have caused the lightning storm that plagues the Crystal Dome now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 3)
	{
	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    Without the Disk in place the crystals are fading... life in the underground will be forever scarred."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 4)
	{
	PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    Nithriel is insane! She has no idea what the artifact is capable of. We can't let her get away with it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 5)
	{
	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    Without crystals, the flora will dry up and rot... my sisters are doing their best to keep them energized."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 6)
	{
    Hudmessage(s:"Grand E.M. Breaza:    The future of the underground depends on us recovering the Disk. If demons don't kill us, starvation will."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 7)
	{
	PlaySound(374, "EarthMother/Hmph", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    Nithriel must be one of the last elves alive today. I have a vague idea on what she plans to do with the Disk."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 8)
	{
	PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
    Hudmessage(s:"Grand E.M. Breaza:    Before going extinct, elves have left behind many wonders. We believe they are the fathers of crystal technology."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 1;
	Delay(2*35);
	}
	else
	If(dial96 % 10 == 9)
	{
    Hudmessage(s:"Grand E.M. Breaza:    The Sacred Disk controls the flow of all crystals we depend so much on. Our entire civilization was founded upon it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial96 += 2;
	Delay(2*35);
	}
}

//Advisor Dialogue
Script 100 (void)//special
{
	If(CheckInventory("InventoryIntelScroll") > 0)
	{
		Line_SetBlocking(801, BLOCKF_EVERYTHING, 0);
		TakeInventory("InventoryIntelScroll", 1);
		SpawnSpotForced("CultParchmentA", 389, 665, 48);
		SetActorproperty(665, APROP_ScaleX, 0.5);
		SetActorproperty(665, APROP_ScaleY, 0.5);
		PlaySound(389, "Inventory/Paper", CHAN_AUTO, 0.5);

		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Advisor:    What's this? You've retrieved enemy intel? ...my, you are quite resourceful, aren't you? Let's see..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
		If(CheckProximity(0, "NPCAdvisorRegular", 512.0, 1))
        {
	    PlaySound(375, "Lancer/Heh", CHAN_AUTO);
	    Hudmessage(s:"...priority defenses, quick reaction forces... oh? A secret weapon? Interesting... hmm... there's also a code... 2367."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    }
	    Delay(8*35);
		  If(CheckProximity(0, "NPCAdvisorRegular", 512.0, 1) && GameSkill() != 5)
          {
	      PlaySound(375, "Lancer/Ha", CHAN_AUTO);
	      Hudmessage(s:"Well done, Halfblood. Here, take these shards for the effort. Make sure you keep that Crylance charged and ready."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      }
		  else
		  If(CheckProximity(0, "NPCAdvisorRegular", 512.0, 1) && GameSkill() == 5)
          {
	      PlaySound(375, "Lancer/Ha", CHAN_AUTO);
	      Hudmessage(s:"Well done, Halfblood. Here, take these shards for the effort. With crystals dying, they're not easy to come by."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	      }
		Line_SetBlocking(801, 0, BLOCKF_EVERYTHING);
		SpawnSpotForced("PowerShard", 390, 0, 0);
		PlaySound(390, "Ammo/DepletedShardBounce", CHAN_AUTO, 0.3);
	    Delay(8*35);
	}
	else
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Advisor:    I can't stress how important it is for you to disable those gate towers, Zan. Find a way into the mine!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	{
		PlaySound(375, "Lancer/Ha", CHAN_AUTO);
        Hudmessage(s:"Advisor:    You've uncovered an ancient laboratory in there? Lith's visions must have been true, you must inform Zura!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"Advisor:    Don't take too long. As soon as the last Valc forces arrive here, we'll prepare for our final attack."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && CheckInventory("QuestMap13InvestigateRuins") == 0)
	{
		PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Advisor:    The curse of war technology... I knew they'd eventually learn how our weapons work, but not this quickly..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 2)
	{
		PlaySound(375, "Lancer/Ha", CHAN_AUTO);
        Hudmessage(s:"Advisor:    You have completed your task? Go ahead and tell Breaza, I'll be all ears."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);
	}
	else
    If(CheckInventory("QuestMap13SecurePowder") == 2)
	{
		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"Advisor:    We need that powder by the time reinforcements arrive. Time is short, sergeant, get moving."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
	If(CheckInventory("QuestMap13RescuePOWs") == 2)
	{
		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"Advisor:    You've made progress with the investigation? Report to Breaza right away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
    If(CheckInventory("QuestMap13HelpFixer") == 2)
	{
		PlaySound(375, "Lancer/Heh", CHAN_AUTO);
        Hudmessage(s:"Advisor:    With the forest group missing, our flank is exposed. Act quickly, Halfblood. Act with tact."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
}
int dial99 = 10;
Script 99 (void) //regular
{
	If(CheckInventory("InventoryIntelScroll") > 0)
	{
		ACS_Execute(100, 0, 0, 0, 0);
	}
	else
	If(dial99 % 10 == 0)
	{
	PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Advisor:    The campaign was a disaster... failed siege, subverted Forge Elementals, cutoff logistics... no retreat, no way forward."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 1)
	{
    Hudmessage(s:"Advisor:    Demons laughed at our forces from behind their walls. So many of our sisters have fallen to their artillery..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 2)
	{
    Hudmessage(s:"Advisor:    We've managed to regroup here. I'd almost say we have retreated if we weren't still in the middle of enemy territory."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 3)
	{
	PlaySound(375, "Lancer/Heh", CHAN_AUTO);
    Hudmessage(s:"Advisor:    Slaughtering the cultist mansion has bought us some breathing space. I am quite impressed by your might, Halfblood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
    If(dial99 % 10 == 4)
	{
	PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Advisor:    Demons are a plague. They corrupt everything, growing stronger. Yes... their numbers always grow. Ours don't..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 5)
	{
    Hudmessage(s:"Advisor:    The supplies dwindle by the day. If we don't break through soon, we'll simply be overwhelmed. Yes, we must strike..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 6)
	{
    Hudmessage(s:"Advisor:    Daring plans and ideas... if only they were worth as much in the midst of battle as they were at the strategy table."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 7)
	{
	PlaySound(375, "Lancer/Heh", CHAN_AUTO);
    Hudmessage(s:"Advisor:    Our ancestral blood is strong. But is strength and honour enough to deal with such a treacherous adversary?... Hmh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
    If(dial99 % 10 == 8)
	{
	PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Advisor:    Even the weakest warg is dangerous when cornered... yes... a small force could reach farther than an army..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
	else
	If(dial99 % 10 == 9)
	{
    Hudmessage(s:"Advisor:    Every race has a home. We sought peace and shelter below the earth, but fate has brought the battlefield back to us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial99 += 1;
	Delay(2*35);
	}
}


//Tiati Dialogue
Script 102 (void)//special
{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(376, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    Good luck regrouping with the sapper team. Wish I could join you, but Breaza wants me to stay back here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	{
		PlaySound(376, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    You've found something down there, haven't you? Zura's been boiling to hear back from you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
		PlaySound(376, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    If Lith's visions are accurate, the ruins might shed some light on Nithriel's big plan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && CheckInventory("QuestMap13InvestigateRuins") == 0)
	{
		PlaySound(376, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    You can't seem to escape the fighting, can you? Get your rest, I'll wake you up if something happens."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 2)
	{
		PlaySound(376, "Reaver/Huh", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    The demons have created a new weapon using our tech? This is bad news, you must inform Breaza!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13SecurePowder") == 2)
	{
		PlaySound(376, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    Blue Baron meeting with Nithriel... two praaks with one spike. We can't miss this opportunity."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
	If(CheckInventory("QuestMap13RescuePOWs") == 2)
	{
		PlaySound(376, "Reaver/Huh", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    You found the captives? I'm sure Breaza will want to know what happened."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
    If(CheckInventory("QuestMap13HelpFixer") == 2)
	{
		PlaySound(376, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Reaver Tiati:    Damn it, more sisters in peril. I'd help you investigate, but I can barely stand with all these wounds."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
	}
}
int dial101 = 8;
Script 101 (void) //regular
{
	If(dial101 % 8 == 0)
	{
    Hudmessage(s:"Reaver Tiati:    I followed you through Nithriel's portal, hoping I could put a quick spike between her eyes, but she got away..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 1)
	{
	PlaySound(376, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Reaver Tiati:    I could barely sneak my way up here. Cultists moved back into the towns that got run through the blade weeks ago."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 2)
	{
	PlaySound(376, "Reaver/Huh", CHAN_AUTO);
    Hudmessage(s:"Reaver Tiati:    No wonder no messenger could reach back to Valc. Even the paths cleared by our army are now held by demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 3)
	{
    Hudmessage(s:"Reaver Tiati:    I told Breaza all about Valc's siege. Can't say she was expecting any good news, but morale has taken a big hit."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 4)
	{
    Hudmessage(s:"Reaver Tiati:    If only we could link up with Valc... we'd have one final chance to land an unexpected blow against the demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 5)
	{
	PlaySound(376, "Reaver/Hm", CHAN_AUTO);
    Hudmessage(s:"Reaver Tiati:    I've seen what the cultists are capable of. If we fail, these fanatics will have free reign over the underground."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 6)
	{
    Hudmessage(s:"Reaver Tiati:    I'm sorry for slowing you down back in Valc, but seeing you return home so suddenly made me suspicious."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
	else
	If(dial101 % 8 == 7)
	{
	PlaySound(376, "Reaver/Huh", CHAN_AUTO);
    Hudmessage(s:"Reaver Tiati:    Good thing I was there for you back at the lab, huh? That bitch Lith almost turned you into sludge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial101 += 1;
	Delay(2*35);
	}
}

//Crystal Curator Dialogue
int dial161 = 8;
Script 161 (void)
{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
	PlaySound(453, "Lancer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    The Seed seems important, but we still have to retrieve the Disk. Let us prepare for battle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	{
	PlaySound(453, "Lancer/Heh", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    You've discovered an ancient elven vault!? Fascinating! Zura is burning to hear about it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
	PlaySound(453, "Lancer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    Look out for strange devices. Who knows what technological wonder lies dormant in these ruins..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(dial161 % 8 == 0)
	{
	PlaySound(453, "Lancer/Heh", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    I am relieved to see that our forces still hold against the demon menace. The Division lives on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 1)
	{
	PlaySound(453, "Lancer/Ha", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    Nithriel is a fool! Her reckless actions have put the entire underground world in danger."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 2)
	{
	Hudmessage(s:"Crystal Curator:    Perhaps the Elf does want to destroy us all. She is in league with the demons, after all..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 3)
	{
	PlaySound(453, "Lancer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Crystal Curator:    Without the Disk, the crystals are starting to destabilize. Have you seen the lightning storm?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 4)
	{
	Hudmessage(s:"Crystal Curator:    If we merge with Valc's remnants in time, we may have a chance to restore the balance."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 5)
	{
	Hudmessage(s:"Crystal Curator:    I was nearing the end of my curation mandate before chaos broke loose. So many Lancers have perished..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 6)
	{
	Hudmessage(s:"Crystal Curator:    A Curator must tend to the Crystal Heart. We form a strong bond with the crystals... I can feel their pain."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
	else
	If(dial161 % 8 == 7)
	{
	Hudmessage(s:"Crystal Curator:    The Iron Division was founded upon the discovery of the Disk. It taught us the secrets of crystal technology."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial161 += 1;
	Delay(2*35);
	}
}

//Eraanthe Dialogue
int dial129 = 12;
Script 129 (void) //regular
{
	If(CheckInventory("QuestMap13DebriefMap15") >= 1)
	{
	PlaySound(427, "Eraanthe/Mm", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Don't pester me now, I'm preparing for the assault. Don't you have an errand to run or something?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(dial129 % 12 == 0)
	{
	PlaySound(427, "Eraanthe/Mm", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    What are you staring at, you uncouth blue oaf? What do you want? Make it quick, I'm not famous for my patience."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 1)
	{
    Hudmessage(s:"Eraanthe:    Your mother has contracted me to take your place in the campaign... not that I don't have my own reasons to join."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 2)
	{
    Hudmessage(s:"Eraanthe:    The core of Hell is surrounded by a foul and corruptive energy that only allows demon-bloods to pass through unscathed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 3)
	{
	PlaySound(427, "Eraanthe/Mmf", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Trusting a full blooded demon is insanity. That's why only us halfblooded bastards can be counted on to do this right."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 4)
	{
    Hudmessage(s:"Eraanthe:    Demons are chaos incarnate. They would kill and pillage each other if it wasn't for their Icon to keep them in line."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 5)
	{
    Hudmessage(s:"Eraanthe:    The Icon is the highest and strongest demon of all. It is said that one raises from the nether every thousand years."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 6)
	{
	PlaySound(427, "Eraanthe/Mmf", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    The current Icon is known as as the Blue Baron. He's caused me so much grief... but I survived. Now I want revenge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 7)
	{
    Hudmessage(s:"Eraanthe:    Cut the head off and let the body stumble and fall. A swift strike at the Blue Baron for a thousand years of peace."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 8)
	{
    Hudmessage(s:"Eraanthe:    Your mother wants to go all in. Pierce the veils of Hell and slay the Icon. A bold intention, albeit a foolish one."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 9)
	{
    Hudmessage(s:"Eraanthe:    The Baron is a master Psionic Demon. He deceives like no other. It will take more than orcish might to bring him down."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 10)
	{
	PlaySound(427, "Eraanthe/Mmf", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Don't even think about getting in my way, you narrow sighted brute. Only I have the power to challenge the Blue Baron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
	else
	If(dial129 % 12 == 11)
	{
	PlaySound(427, "Eraanthe/Urgh", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Look at you, you can't even use magic and you're supposed to be Breaza's champion? Pathetic! I am our only hope."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial129 += 1;
	Delay(2*35);
	}
}

//Jaromir Dialogue
int dial130 = 8;
Script 130 (void) //regular
{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(428, "Jaromir/Heh", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    So, the final battle is about to begin. There is no better moment to pray than right now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	{
		PlaySound(428, "Jaromir/Hah", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    I hope you have discovered something worthwhile down there. Tell Chieftain Zura of your findings."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && CheckInventory("QuestMap13InvestigateRuins") == 0)
	{
		PlaySound(428, "Jaromir/Hah", CHAN_AUTO);
        Hudmessage(s:"High Priest Jaromir:    I see you've gathered a few bruises from the minotaur town. I'm sure a nap will help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(7*35);
	}
	else
	If(dial130 % 8 == 0)
	{
	PlaySound(428, "Andrik/Laugh", CHAN_AUTO);
    Hudmessage(s:"High Priest Jaromir:    Back from the dead? Not many of us could cheat fate during that terrible siege, lass. Be grateful."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 1)
	{
    Hudmessage(s:"H.Priest Jaromir:    Our Lord has fallen in battle, leaving the future of Icepeak on my shoulders - a humble servant of Stone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 2)
	{
	PlaySound(428, "Jaromir/Hmm", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    The news about our homes has dealt another mighty blow against us. I grieve with you, lass, keep strong."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 3)
	{
	PlaySound(428, "Jaromir/Heh", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    The dwarves slain in Icepeak were either elders or sick. Aye, the Cult truly has no shame, nor honour..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 4)
	{
    Hudmessage(s:"H.Priest Jaromir:    Fight with valor, lass. The Stone will remember our deeds and shelter our bones in its layers of history."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 5)
	{
	PlaySound(428, "Jaromir/Hah", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    A long abandoned dwarven city lies close, to the south of us. Aye... a reminder of our long lost glory."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 6)
	{
    Hudmessage(s:"H.Priest Jaromir:    A city shows its true greatness long after the inhabitants have perished. Build your walls well, lass."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
	else
	If(dial130 % 8 == 7)
	{
	PlaySound(428, "Jaromir/Hmm", CHAN_AUTO);
    Hudmessage(s:"H.Priest Jaromir:    The perfidious demons want to keep us down in the dumps. In this dark moment we must steel our faith."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial130 += 1;
	Delay(2*35);
	}
}

//Murguth Dialogue
int dial131 = 8;
int dial131b = 4;
Script 131 (void) //special & regular
{
	If(CheckInventory("QuestMap13DebriefMap15") >= 1)
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    I'd like to be left alone now, Bonebreaker. I must meditate on the upcoming battle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13SecurePowder") == 1 && CheckInventory("QuestMap13DebriefMap14") == 2)
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    Your search has beared fruit? That is good news, let Breaza know of your findings."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && dial131b % 4 == 0 )
	{
	PlaySound(429, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    They have mutilated my ancestral home with their factory... this is unforgivable."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial131b += 1;
	Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && dial131b % 4 == 1 )
	{
    Hudmessage(s:"Min. Lord Murguth:    The demons must have claimed many dwarven secrets after the old wars, judging by their machines."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial131b += 1;
	Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && dial131b % 4 == 2 )
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    With the knowledge of crystals stolen from your kind, who knows what new weapons they will forge?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial131b += 1;
	Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap14") == 1 && dial131b % 4 == 3 )
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    You faced the demons bravely and cleansed them from our town. You have my herd's gratitude."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial131b += 1;
	Delay(2*35);
	}
	else
	If(CheckInventory("QuestMap13SecurePowder") == 2)
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    Look for gates adorned with iron bull heads... the ruby pedestals should be close to them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(8*35);
	}
	else
	If(dial131 % 8 == 0)
	{
	PlaySound(429, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Minotaur Lord Murguth:    You're welcome among us, Halfblood. I can tell your worth from the fire burning in your eyes."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 1)
	{
    Hudmessage(s:"Min. Lord Murguth:    The Minotaur Lords have perished in battle. I was but the High Pyromancer... now I lead the herd."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 2)
	{
	PlaySound(429, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    Hearing about Valc's invasion makes my blood boil. We all have suffered many losses."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 3)
	{
	PlaySound(429, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    We put a lot of faith in the Forge Elementals to lead us through the fiery pits of Hell... foolish."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 4)
	{
    Hudmessage(s:"Min. Lord Murguth:    We may be masters of Fire, but we have underestimated the native affinity that demons have to it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 5)
	{
	PlaySound(429, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    The chaos scum have somehow syphoned into the Forge Elementals' fiery cores and corrupted them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 6)
	{
    Hudmessage(s:"Min. Lord Murguth:    Fire is a weak weapon against demons. Make no mistake, even the blue and purple ones resist it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
	else
	If(dial131 % 8 == 7)
	{
	PlaySound(429, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Min. Lord Murguth:    You orcs know how to wield an axe. You fight with great might, and that's why I respect you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial131 += 1;
	Delay(2*35);
	}
}

//Grund Dialogue
int dial132 = 8;
Script 205 (void) //regular
{
	If(CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
	SetLineSpecial(572, 0, 0, 0, 0, 0, 0);
	PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    I heard we have guests from Valc, mh? Send Zura my regards, I'm still too busy down here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
	}
}
Script 132 (void) //regular
{
	If(dial132 % 8 == 0)
	{
	PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    No hard feelings, sergeant. When we couldn't find your body we assumed you had deserted us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 1)
	{
    Hudmessage(s:"Warlord Grund:    I don't need to take Tiati's word. I can see myself that you've been through some shit..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 2)
	{
	PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Good call reclaiming the Magic Ward and cutting the cultists off. That's what saved Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 3)
	{
    Hudmessage(s:"Warlord Grund:    I'm the only Warlord who survived the siege. I was behind the line, handling logistics."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 4)
	{
	PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    They said I was too old to be on the front, and here I am, having outlived the others..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 5)
	{
    Hudmessage(s:"Warlord Grund:    We all have our duties and burdens pressing down our shoulders. Carry out your orders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 6)
	{
    Hudmessage(s:"Warlord Grund:    Breaza is the boss now. She's ordered me to stay here and interrogate the prisoners."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
	else
	If(dial132 % 8 == 7)
	{
    Hudmessage(s:"Warlord Grund:    Tiati said you did well leading your squad, back in Valc. A skill we're in need of."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial132 += 1;
	Delay(2*35);
	}
}
Script 213 (void) //battle preparation
{
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2 && IsTIDUsed(703))
	{
	PlaySound(703, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    We're preparing for the assault, sergeant. You have your orders, let us be."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13DebriefMap15") == 2 && IsTIDUsed(703))
	{
	PlaySound(703, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Has your mission been successful, warrior? Go ahead and debrief with Zura."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(7*35);
	}
}

Script 133 (void) //Grund's Warg
{
	Switch(random(1, 5))
	{
		Case 1:
        Hudmessage(s:"(You pet the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_WHITE, 1.5, 0.90, 3.5, 0.2, 0.5);
		Break;

		Case 2:
        Hudmessage(s:"(You scratch the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_WHITE, 1.5, 0.90, 3.5, 0.2, 0.5);
		Break;

		Case 3:
        Hudmessage(s:"(You pet the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_WHITE, 1.5, 0.90, 3.5, 0.2, 0.5);
		Hudmessage(s:"Warg:    *Growls softly*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_TAN, 1.5, 0.92, 4.5, 0.2, 0.5);
		Break;

		Case 4:
        Hudmessage(s:"(You scratch the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_WHITE, 1.5, 0.90, 3.5, 0.2, 0.5);
		Hudmessage(s:"Warg:    *Sniffs lazily*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_TAN, 1.5, 0.92, 4.5, 0.2, 0.5);
		Break;

		Case 5:
		Hudmessage(s:"(You pet the warg)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_WHITE, 1.5, 0.90, 9.5, 0.2, 0.5);
		Delay(3*35);
		If(CheckProximity(0, "NPCGrundRegular", 300.0))
		{
		PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
        Hudmessage(s:"Warlord Grund:    She's a war machine, not a house pet, sergeant. Keep your hands where they belong."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		}
		Break;
	}
}

//Zura Dialogue
int dial198 = 8;
Script 198 (void) //regular & special
{
  If(IsTIDUsed(669))
  {
	If(CheckInventory("QuestMap13AssaultDemonTown") == 2)
	  {
	  PlaySound(669, "Witch/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Chieftain Zura:    I believe your task is clear. Leave us be now, we have an assault plan to finalize."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);
	  }
	  else
	If(CheckInventory("QuestMap13DebriefMap15") == 2)
	  {
	  PlaySound(625, "Inventory/PickShort", CHAN_AUTO);
	  SpawnSpotForced("CorruptSeedJarA", 625, 0, 0);

	  TakeInventory("QuestMap13DebriefMap15", 1);
	  TakeInventory("InventorySeedOfCorruption", 1);
	  SetLineSpecial(386, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(385, 0, 0, 0, 0, 0, 0);
	  SetLineSpecial(484, 0, 0, 0, 0, 0, 0);


	  SetActorProperty(0, APROP_SPEED, 0.0);
	  Delay(4);
	  SetActorProperty(0, APROP_Friction, 0.1);

	  FadeTo(0, 0, 0, 1.0, 5.0);

	  PlaySound(669, "Witch/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Chieftain Zura:    My, my, my... turns out Lith's fevered visions were true. Let me take a look at this baby..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(8*35);

      TakeInventory("IsPlaying", 1);
	  ACS_Execute(229, 0, 0, 0, 0); //skip Debriefing 3
	  Delay(145);
	  GiveInventory("IsPlaying", 1);

	  FadeTo(0, 0, 0, 0.0, 3.0);

	  PlaySound(669, "Witch/Hm", CHAN_AUTO);
      Hudmessage(s:"The Seed of Corruption, hmm? This will be invaluable if we want to understand this alien organism-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
	  Delay(5*35);
	  Delay(16);

	  PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Grand Earth Mother Breaza:    Combat it, Zura. If we want to combat it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(5*35);

	  PlaySound(669, "Witch/Hmm", CHAN_AUTO);
      Hudmessage(s:"Witch Chieftain Zura:    Of course, my dear. You don't think I'd want to weaponize it against our enemy, hmm?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  Delay(8*35);

	  PlaySound(375, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    Regardless of what we'll do with it, we have other matters pressing us right now, ladies."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
		PlaySound(453, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Crystal Curator:    Yes, we must focus on recovering the Disk. Nithriel could depart to Hell any moment now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);
		}

	  PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Grand Earth Mother Breaza:    Of course. And I'm afraid there will be no rest for you this time, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(375, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    As you have noticed, the Valc forces have finally arrived, and we're preparing for the main assault."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(375, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"A few hours ago, we've sent a sapper team to prepare the sabotage of the flame towers warding the enemy gates."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  Hudmessage(s:"They headed out to the mines to the north, in search of an ideal place to tunnel around the demon town."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(375, "Lancer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Unfortunately, the demons have somehow figured out our plan and ambushed them, blowing up the main access tunnel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Grand E. M. Breaza:    We need you to find an alternative path into the mine and see what happened to the sappers."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Lord Murguth claims that the minotaur town has a path connected to the mines. 'tis a good place to start looking."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  Hudmessage(s:"Once you find a way in, use the hell powder barrels our sappers were carrying to blow through the town's side wall."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(5*35);

	  GiveInventory("QuestMap13AssaultDemonTown", 2);
	  If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
	  Delay(2*35);

	  PlaySound(375, "Lancer/Heh", CHAN_AUTO);
	  Hudmessage(s:"Advisor:    The distant explosion will be our signal to move, so make haste and disable the flame towers immediately."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(374, "EarthMother/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Grand E. M. Breaza:    It is a dangerous task, but you're the only one I can entrust with fulfilling it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  PlaySound(374, "EarthMother/Hm", CHAN_AUTO);
	  Hudmessage(s:"Don't let us perish in the fire before we can even draw steel, Zan. We're counting on you. Earth guide your path!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(7*35);

	  If(CheckProximity(0, "IDEarthMother", 400.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 400.0, 1))
	  {
	  Hudmessage(s:"Earth Mother:    Worry not, Breaza. We shall see this mission through. Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	  }
	  else
	  If(CheckProximity(0, "IDFixer", 400.0, 1) || CheckProximity(0, "IDFixerGuarding", 400.0, 1))
      {
	  Hudmessage(s:"Fixer:    I, uhh... I'll make sure to cover her back, Breaza! Take care!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
      }

	    SpawnSpotForced("IDWitchStationary", 619, 701, 64);
		SpawnSpotForced("IDFixerStationary", 620, 702, 0);

		Floor_RaiseByValue(634, 9999, 24);
		Floor_RaiseByValue(635, 9999, 32);
		FloorAndCeiling_RaiseByValue(637, 9999, 40);
		ChangeFloor(634, "IRON1_G");
		ChangeFloor(638, "IRON1_G");
		ChangeFloor(639, "IRON1_G");
		Floor_RaiseByValue(638, 9999, 1);
		Floor_RaiseByValue(639, 9999, 1);


	  SetActorProperty(0, APROP_SPEED, 1.0);
	  SetActorProperty(0, APROP_Friction, 1.0);
	  SetLineSpecial(385, ACS_Execute, 97, 0, 0, 0, 0);
	  SetLineSpecial(386, ACS_Execute, 100, 0, 0, 0, 0);
	  SetLineSpecial(484, ACS_Execute, 161, 0, 0, 0, 0);

	  Autosave();
	  }
	else
	If(dial198 % 8 == 0)
	{
	PlaySound(669, "Witch/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    Our journey here was surprisingly smooth. I believe it's you who cleared the path, yes?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 1)
	{
    Hudmessage(s:"Witch Chieftain Zura:    Captain Dura is marching with Valc's remnants as we speak. We're expecting them tomorrow."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 2)
	{
	PlaySound(669, "Witch/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    The slime corruption is not just a disease... a disease doesn't think. This does."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 3)
	{
    Hudmessage(s:"Witch Chieftain Zura:    I'm concerned with how easily Nithriel managed to turn my adjunct into her puppet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 4)
	{
	PlaySound(669, "Witch/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    It's clear that the Elf needed someone with knowledge of crystal technology. One of us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 5)
	{
    Hudmessage(s:"Witch Chieftain Zura:    The slime Golems are mere warnings of what this dark parasite is capable of creating."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 6)
	{
    Hudmessage(s:"Witch Chieftain Zura:    I bear traces of corruption thanks to Lith, but I can surpress it with the right potions."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
	else
	If(dial198 % 8 == 7)
	{
	PlaySound(669, "Witch/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Chieftain Zura:    I'm not sure what Nithriel plans to do with the Disk. But I'm sure that we must stop her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial198 += 1;
	Delay(2*35);
	}
  }
}

Script 134 (void) //Warlock Prisoner
{
	If(IsTIDUsed(431))
	{
	PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	Delay(35);
	PlaySound(430, "BearWarrior/Hmm", CHAN_AUTO);
	Hudmessage(s:"Warlord Grund:    Leave the pussycat alone, she's still recovering after the last session, heh heh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 0.5);
    Delay(30*35);
	}
}

int dial136 = 5;
Script 136 (void) //Hellblaze Prisoner
{
	If(dial136 % 5 == 0 && IsTIDUsed(332))
	{
	PlaySound(332, "Hellblaze/Active", CHAN_AUTO);
	Hudmessage(s:"Hellblaze:    *Growls*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 3.5, 0.2, 0.5);
    dial136 += 1;
	Delay(2*35);
	}
	else
	If(dial136 % 5 == 1 && IsTIDUsed(332))
	{
	PlaySound(332, "Hellblaze/Sight", CHAN_AUTO);
	Hudmessage(s:"Hellblaze:    *Growls angrily*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 3.5, 0.2, 0.5);
    dial136 += 1;
	Delay(2*35);
	}
	else
	If(dial136 % 5 == 2 && IsTIDUsed(332))
	{
	PlaySound(332, "Hellblaze/Pain", CHAN_AUTO);
	Hudmessage(s:"Hellblaze:    ...curse...Orc!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 3.5, 0.2, 0.5);
    dial136 += 1;
	Delay(2*35);
	}
	else
	If(dial136 % 5 == 3 && IsTIDUsed(332))
	{
	PlaySound(332, "Hellblaze/Attack", CHAN_AUTO);
	Hudmessage(s:"Hellblaze:    ...master...free...me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 4.5, 0.2, 0.5);
    dial136 += 1;
	Delay(2*35);
	}
	else
	If(dial136 % 5 == 4 && IsTIDUsed(332))
	{
	PlaySound(332, "Hellblaze/Death", CHAN_AUTO);
	Hudmessage(s:"Hellblaze:    ...arrrgh!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BRICK, 1.5, 0.86, 3.5, 0.2, 0.5);
    dial136 += 1;
	Delay(2*35);
	}
}

//Maid Dialogue
int dial137 = 5;
Script 137 (void) //special
{
	If(CheckInventory("QuestMap13RescuePOWs") == 2)
	{
	  PlaySound(434, "Fixer/Hmm", CHAN_AUTO);
      Hudmessage(s:"Maid:    I'm almost done here, Zan, just a few more minutes. Umm, I think Breaza is looking for you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  Delay(10*35);
	}
	else
	If(dial137 % 5 == 0)
	{
	PlaySound(434, "Fixer/Hmm", CHAN_AUTO);
	ACS_Execute(270, 0, 0, 0, 0);
    Hudmessage(s:"Maid:    Your room isn't ready Zan, I still have plenty of cleaning to do."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial137 += 1;
	Delay(2*35);
	}
	else
	If(dial137 % 5 == 1)
	{
    Hudmessage(s:"Maid:    If you don't mind, I'm working as hard as I can, I don't have time to chat!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial137 += 1;
	Delay(2*35);
	}
	else
	If(dial137 % 5 == 2)
	{
	PlaySound(434, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Maid:    Look, honey, this will take a while, can't you like go for a walk or something?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial137 += 1;
	Delay(2*35);
	}
	else
	If(dial137 % 5 == 3)
	{
	PlaySound(434, "Fixer/Huh", CHAN_AUTO);
    Hudmessage(s:"Maid:    Can you stop bugging me? I swear it won't make the cleaning go any faster."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial137 += 1;
	Delay(2*35);
	}
	else
	If(dial137 % 5 == 4)
	{
    Hudmessage(s:"Maid:    *Rolls her eyes over*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
    dial137 += 1;
	Delay(2*35);
	}
}

int dial138 = 5;
int dial138b = 0;
Script 138 (void) //regular
{
  If(IsTIDUsed(667))
  {
	If(dial138b == 1 && CheckInventory("InventoryFixerGoggles") > 0 && CheckInventory("QuestMap13TradeGold") < 4 && CheckInventory("QuestMap13TradeGold") > 0 && IsTIDUsed(806) == 0)
	{
	  dial138b += 1;
	  dial138 = 7;
	  PlaySound(667, "Fixer/Huh", CHAN_AUTO);
      Hudmessage(s:"Maid:    Oh, you found my goggles? Hmm, know what? Why don't you keep them? The cellar can wait a while longer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 1.5);
	  Delay(2*35);
	}
	else
	If(dial138 % 5 == 0)
	{
	PlaySound(667, "Fixer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Maid:    Dust everywhere. And I told the Earth Mothers to be more careful when quaking up the caves."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial138 += 1;
	Delay(2*35);
	}
	else
	If(dial138 % 5 == 1)
	{
    Hudmessage(s:"Maid:    What a mess... if only they were as good at cleaning after themselves as they are at drinking."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial138 += 1;
	Delay(2*35);
	}
	else
	If(dial138 % 5 == 2 && dial138b <= 1)
	{
    Hudmessage(s:"Maid:    I have to clean the cellar too... I just can't find my goggles. Where could they have vanished?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
      If(dial138b == 0)
	  {
		  dial138b += 1;
	  }
	dial138 += 1;
	Delay(2*35);
	}
	else
	If(dial138 % 5 == 2 && dial138b > 1)
	{
    Hudmessage(s:"Maid:    Hope the goggles are coming in handy. Your task is more important than me cleaning cellars, after all."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	dial138 += 1;
	Delay(2*35);
	}
	else
	If(dial138 % 5 == 3)
	{
	PlaySound(667, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Maid:    You and Tiati better keep that room clean. Don't you dare munch on any food in bed!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial138 += 1;
	Delay(2*35);
	}
	else
	If(dial138 % 5 == 4)
	{
    Hudmessage(s:"Maid:    Sweetie, I'm really busy, I'm sure there's plenty of others here looking for a chatting partner."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial138 += 1;
	Delay(2*35);
	}
  }
}


//Earth Mother Bendi Dialogue
int dial115 = 6;
Script 115 (void)
{
	If(CheckInventory("InventorySpiritGem") > 0 && CheckInventory("QuestMap13RechargePsiCrown") == 2)
	{
		TakeInventory("InventorySpiritGem", 1);
		TakeInventory("QuestMap13RechargePsiCrown", 1);
		SpawnSpotForced("CultGemSpirit", 403,404,0);
		PlaySound(403, "Inventory/PickShort", CHAN_AUTO, 0.5);

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);

		Delay(16);
		PlaySound(402, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Earth Mother Bendi:    Oh, you've found a Spirit Gem? How delightful, I shall recharge your crown at once!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(2*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(4*35);
		Thing_Remove(404);
		PlaySound(402, "Magic/Earth1", CHAN_AUTO);
		Delay(35);
		PlaySound(402, "Magic/Dispel", CHAN_AUTO);
		Delay(16);
		PlaySound(402, "Magic/Spark", CHAN_AUTO);
		Delay(70);
		SpawnSpotForced("InventoryChargedPsiCrown", 403,0,0);
		FadeTo(0, 0, 0, 0.0, 3.0);
		PlaySound(402, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"There it is! If you happen upon any other Spirit Gem, bring it to me and I'll recharge the crown with it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);


		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("InventorySpiritGem") > 0 && CheckInventory("QuestMap13RechargePsiCrown") == 1 && CheckInventory("InventoryChargedPsiCrown") < 100)
	{
		TakeInventory("InventorySpiritGem", 1);
		SpawnSpotForced("CultGemSpirit", 403,404,0);
		PlaySound(403, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SetWeapon("Fists");

		Delay(16);

        TakeInventory("InventoryChargedPsiCrown", 100);
		TakeInventory("InventoryChargedPsiCrown", 1);
		SpawnSpotForced("CultCrownB", 608,404,0);
		PlaySound(608, "Inventory/PickBase", CHAN_AUTO, 0.5);

		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
	    SetActorProperty(0, APROP_SPEED, 0.0);

		Delay(16);
		PlaySound(402, "Lancer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Earth Mother Bendi:    Oh, another Spirit Gem? How delightful, I shall recharge your crown in a moment!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(2*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(4*35);
		Thing_Remove(404);
		PlaySound(402, "Magic/Earth1", CHAN_AUTO);
		Delay(35);
		PlaySound(402, "Magic/Dispel", CHAN_AUTO);
		Delay(16);
		PlaySound(402, "Magic/Spark", CHAN_AUTO);
		Delay(70);
		SpawnSpotForced("InventoryChargedPsiCrown", 403,0,0);
		FadeTo(0, 0, 0, 0.0, 3.0);
		PlaySound(402, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"There! May it shield you from all the Psi Demons and their wretched Mentalists!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);


		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("InventorySpiritGem") > 0 && CheckInventory("QuestMap13RechargePsiCrown") == 1 && CheckInventory("InventoryChargedPsiCrown") == 100)
	{
		PlaySound(402, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Earth Mother Bendi:    Found another Spirit Gem? But your crown is already at full charge, I can't do anymore than that!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(5*35);
	}
	else
	If(CheckInventory("QuestMap13RechargePsiCrown") == 0)
	{
		PlaySound(402, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Earth Mother Bendi:    I took a look at this enchanted crown you were carrying. Very interesting artifact, I must say!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.80, 14.5, 0.2, 0.5);
        Hudmessage(s:"Sadly, it seems to have been depleted of energy. I could charge it back for you, if you could bring me a Spirit Gem.     "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_GREEN, 1.5, 0.82, 14.5, 0.2, 0.5);
	    Delay(10*35);

		GiveInventory("QuestMap13RechargePsiCrown", 2);
		If(CheckInventory("InventoryJournal") > 0)
	    {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	    }
	}
	else
	If(dial115 % 6 == 0)
	{
    Hudmessage(s:"E.M. Bendi:    Not many artifacts can protect against mind magic. No Armor Amulet or Elemental Ring will stop a mind blast."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
	else
	If(dial115 % 6 == 1)
	{
    Hudmessage(s:"E.M. Bendi:    The Cult has a large sect dedicated to mind magic, and worship Psionic Demons. The Blue Baron is one of them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
	else
	If(dial115 % 6 == 2)
	{
	PlaySound(402, "Lancer/Hmm", CHAN_AUTO);
    Hudmessage(s:"E.M. Bendi:    If we march against the Demons, this Psi Crown would be invaluable. The Baron can fry your brain in a moment."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
	else
	If(dial115 % 6 == 3)
	{
    Hudmessage(s:"E.M. Bendi:    This one Bear tried to use her buckler against a Mentalist. Good thing his magic fizzled against her poor mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
	else
	If(dial115 % 6 == 4)
	{
    Hudmessage(s:"E.M. Bendi:    The smarter you are, the harder you snap. I suppose us mages should fear psionics more than you fighter types."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
	else
    If(dial115 % 6 == 5)
	{
	PlaySound(402, "Lancer/Hmm", CHAN_AUTO);
    Hudmessage(s:"E.M. Bendi:    The Self Worship practiced by the Cult has revealed other kinds of magic than those of our Elemental Gods."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial115 += 1;
	Delay(2*35);
	}
}


//Witch Brewer Dialogue
int spec232 = 0;
int dial116 = 6;
int dial116b = 0;
Script 204 (void)
{
    If(CheckInventory("QuestMap13InvestigateRuins") > 0 && (spec232 < 2))
	{
		SetLineSpecial(569, 0, 0, 0, 0, 0, 0);
		PlaySound(405, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Witch Brewer:    Sorry, no new healing pots. The Earth Mothers are suddenly in need of even more mana..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 8.5, 0.2, 0.5);
    }
}
Script 116 (void)
{
	If(spec232 >= 2 && CheckInventory("InventoryMysteriousRecipe") > 0 && dial116b == 0)
	{
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO, 0.5);

		dial116b = 1;

		PlaySound(405, "Reaver/Huh", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    Aww, you need me to check your recipe? Maybe you should've thought about it before breaking my stuff!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(2*35);

	}
	else
	If(CheckInventory("InventoryMysteriousRecipe") > 0 && dial116b == 0)
	{
		TakeInventory("InventoryMysteriousRecipe", 1);
		SpawnSpotForced("IDScrollA", 407, 0, 0);
		PlaySound(407, "Inventory/Paper", CHAN_AUTO, 0.5);

		dial116b = 1;

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);

		Delay(16);

		PlaySound(405, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"Witch Brewer:    Huh? You found a recipe? Let me have a look. Hm. Hmmm... let's give it a try then..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 8.5, 0.2, 0.5);
	    Delay(6*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);

		Delay(35);
		PlaySound(405, "Interaction/Boil", CHAN_AUTO);
		Delay(70);
		SpawnSpotForced("InventoryMysteryPotion", 406, 0, 0);

		FadeTo(0, 0, 0, 0.0, 4.0);
		Delay(3*35);
		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(405, "Reaver/Hm", CHAN_AUTO);
        Hudmessage(s:"There it is... quite a powerful brew. No clue what it does, just hope it doesn't turn your kidney into stone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 8.5, 0.2, 0.5);
	    Delay(6*35);

	}
	else
	If(spec232 == 2)
	{
		PlaySound(405, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    I'll have to work overtime thanks to you! Get lost."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(2*35);

	}
	else
	If(spec232 == 3)
	{
		PlaySound(405, "EarthMother/Rage1", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    What's this, you need healing? I hope you die a slow death!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(2*35);

	}
	else
	If(dial116 % 6 == 0)
	{
	PlaySound(405, "Reaver/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    Help yourself to these potions if you need. They'll get you back in fighting shape in no time!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
	else
	If(dial116 % 6 == 1)
	{
    Hudmessage(s:"Witch Brewer:    With the Earth Mothers busy keeping the crystals functional, I have to handle the healing by myself."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
	else
	If(dial116 % 6 == 2)
	{
    Hudmessage(s:"Witch Brewer:    I have to make mana potions right now... don't suppose you warriors have any use for them, do you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
	else
	If(dial116 % 6 == 3)
	{
	PlaySound(405, "Reaver/Hm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    Ugh, my arms hurt. I've been stirring this pot all day long. Wish I had an apprentice or something."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
	else
	If(dial116 % 6 == 4)
	{
    Hudmessage(s:"Witch Brewer:    The fumes are making me so dizzy. I've sniffed so much mana I might start shooting fireballs soon."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
	else
	If(dial116 % 6 == 5)
	{
	PlaySound(405, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Witch Brewer:    Hmm, was it three salamander tails or two?... Just pulling your leg, you think I'm THAT green?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial116 += 1;
	Delay(2*35);
	}
}
//Witch Brewer & Bendi Equipment Check
int spec232b = 0;
int spec232c = 0;
Script 232 (void)
{
	If(spec232 == 0 && (((ThingCount(T_NONE, 763) < 8 && ThingCount(T_NONE, 763) >= 6 && CheckInventory("QuestMap13InvestigateRuins") > 0))     ||      ((ThingCount(T_NONE, 763)+ThingCount(T_NONE, 568)) < 12 && (ThingCount(T_NONE, 763)+ThingCount(T_NONE, 568)) >= 10 && CheckInventory("QuestMap13InvestigateRuins") == 0)))
	{
		PlaySound(405, "Reaver/Huh", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    Hey! Watch what you're breaking, that's hours of my work gone!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    spec232 += 1;
	}
	else
	If(spec232 == 1 && (((ThingCount(T_NONE, 763) < 6 && ThingCount(T_NONE, 763) >= 4 && CheckInventory("QuestMap13InvestigateRuins") > 0))      ||      ((ThingCount(T_NONE, 763)+ThingCount(T_NONE, 568)) < 10 && (ThingCount(T_NONE, 763)+ThingCount(T_NONE, 568)) >= 8 && CheckInventory("QuestMap13InvestigateRuins") == 0)))
	{
		PlaySound(405, "Reaver/Huh", CHAN_AUTO);
		Hudmessage(s:"Witch Brewer:    What the fuck?! Stop breaking my stuff!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	    spec232 += 1;
		GiveInventory("ScriptIsADipshit", 1);
	}
	else
	If(spec232 == 2 && (((ThingCount(T_NONE, 763) < 4 && CheckInventory("QuestMap13InvestigateRuins") > 0))      ||      ((ThingCount(T_NONE, 763)+ThingCount(T_NONE, 568)) < 6 && CheckInventory("QuestMap13InvestigateRuins") == 0)))
	{
		PlaySound(405, "EarthMother/Rage1", CHAN_AUTO);
		If(IsTIDUsed(764))
		{
		Hudmessage(s:"Witch Brewer:    Okay dipshit, you wanna screw us over?! Fine, no more healing for you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		}
		else
		{
		Hudmessage(s:"Witch Brewer:    You fucking dipshit... I'm not going to forget this anytime soon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		}

		PlaySound(764, "Inventory/PickShort");
		SpawnSpotForced("DustPuff", 764, 0, 0);
		Thing_Remove(764);

		spec232 += 1;
		GiveInventory("ScriptIsADipshit", 1);
	}
	else
	If(spec232 == 3)
	{
		Delay(70);
	}


	If(spec232b == 0 && (ThingCount(T_NONE, 765) < 2))
	{
		PlaySound(402, "EarthMother/Hm", CHAN_AUTO);
        Hudmessage(s:"Earth Mother Bendi:    Can you practice your might on something else please?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
		spec232b += 1;
	}

	If(spec232c == 0 && (ThingCount(T_NONE, 766) < 2))
	{
	    PlaySound(438, "Murguth/Growl", CHAN_AUTO);
		Hudmessage(s:"Minotaur Pyromancer:    Is this the time to horse around, half-orc?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 3.5, 0.2, 0.5);
		spec232c += 1;
	}



	Delay(16);
	Restart;
}
Script 233 (void)
{
	ACS_Terminate(232, 0);
}

//Workshop Boss Dialogue
int dial117 = 6;
Script 197 (void)
{
If(CheckInventory("QuestMap13InvestigateRuins") > 0)
	{
		SetLineSpecial(560, 0, 0, 0, 0, 0, 0);
		PlaySound(409, "Fixer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Workshop Boss:    This new gun you've uncovered is quite a piece of work. Wish I had more time to study it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(6*35);
	}
}
Script 117 (void)
{
	If(CheckInventory("InventoryDarkIronOre") >= 6)
	{
		SetWeapon("Fists");
		TakeInventory("QuestMap13GetDarkIron", 1);
		TakeInventory("InventoryDarkIronOre", 6);
		SpawnSpotForced("IDDarkIronOre", 408, 0, 0);
		PlaySound(408, "Metal/Bounce", CHAN_AUTO, 0.5);

		Delay(16);

        If(GameSkill() != 5)
		{
		PlaySound(409, "Fixer/Huh", CHAN_AUTO);
		Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 14.5, 0.2, 0.5);
        Hudmessage(s:"Workshop Boss:    You got the ore?  Damn, big girl!   Here, we recovered some ammo boxes. I know it ain't"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.80, 14.5, 0.2, 0.5);
	    Hudmessage(s:"much, but I'm sure the Reavers will be happy to hear you've earned them a better fighting chance.      "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.82, 14.5, 0.2, 0.5);
		Delay(5*35);

		PlaySound(410, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("AmmoBox", 410, 0, 0);
		}
		else
		If(GameSkill() == 5)
		{
		PlaySound(409, "Fixer/Huh", CHAN_AUTO);
		Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.84, 14.5, 0.2, 0.5);
        Hudmessage(s:"Workshop Boss:    You got the ore? Damn, big girl! Here, we recovered this bracer. I know it ain't"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.80, 14.5, 0.2, 0.5);
	    Hudmessage(s:"much, but I'm sure the Reavers will be happy to hear you've earned them a better fighting chance.  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.82, 14.5, 0.2, 0.5);
		Delay(5*35);

		PlaySound(410, "Inventory/PickShort", CHAN_AUTO, 0.5);
		SpawnSpotForced("InventoryBracerOfTheRevenant", 410, 0, 0);
		}

		Delay(10*35);

		If(CheckProximity(0, "NPCWorkshopBoss", 256.0, 1))
		{
			PlaySound(409, "Fixer/Hmm", CHAN_AUTO);
            Hudmessage(s:"I'll take the ore to Hectus when he's done working, doncha worry about it. Thanks for the help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	        Delay(6*35);
		}

	}
	else
	If(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenTank") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2)
	{
		PlaySound(409, "Fixer/Hm", CHAN_AUTO);
		Hudmessage(s:"Workshop Boss:    Hmm?... Look, I don't have time for your diving suit project, go ask Hectus about it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
	}
	else
	If(CheckInventory("QuestMap13GetDarkIron") == 1)
	{
		PlaySound(409, "Fixer/Hm", CHAN_AUTO);
		Hudmessage(s:"Look, I appreciate the help, but let me be now, I can't work with all these distractions!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(6*35);
	}
	else
	If(dial117 % 6 == 0)
	{
	PlaySound(409, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Workshop Boss:    What do you want, big girl? Can't you see I'm busy? Urgh, I'm trying to think here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	}
	else
	If(dial117 % 6 == 1)
	{
    Hudmessage(s:"Workshop Boss:    ...first the power crystals start losing energy for no reason and now this. Ugh! Can't I catch a break?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	}
	else
	If(dial117 % 6 == 2)
	{
    Hudmessage(s:"Workshop Boss:    This Reaver squad got caught in a bad spot and had to ditch their Spike Guns... now I have to replace them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	}
	else
	If(dial117 % 6 == 3)
	{
	PlaySound(409, "Fixer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Workshop Boss:    The current Spike Gun model has a spike heater... but that doesn't work with regular steel parts, no..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	}
	else
	If(dial117 % 6 == 4)
	{
	PlaySound(409, "Fixer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Workshop Boss:    *Mumbles to herself* ...yeah, only Dark Iron can resist heat conduction... no way around this design..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	}
	else
	If(dial117 % 6 == 5)
	{
	PlaySound(409, "Fixer/Huh", CHAN_AUTO);
    Hudmessage(s:"Workshop Boss:    Look, can ya buzz off? Unless you have like six lumps of Dark Iron in your pockets, you're useless here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial117 += 1;
	Delay(2*35);
	  If(CheckInventory("QuestMap13GetDarkIron") == 0)
	  {
		  Delay(2*35);
		  GiveInventory("QuestMap13GetDarkIron", 2);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		  PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		  Log(s:"Journal updated.");
	      }
	  }
	}
}

//Hectus Dialogue
int dial118 = 6;
int spec118 = 0;
int spec118b = 0;
Script 118 (void)
{
	If(CheckInventory("InventoryDwarvenMask") > 0 && CheckInventory("InventoryDwarvenSuit") >= 2 && (CheckInventory("InventoryDwarvenTank") > 0 || CheckInventory("InventoryEmptyDwarvenTank") > 0) && !(spec118b > 0 && CheckInventory("InventoryEmptyDwarvenTank") > 0))
	{
	  If(CheckInventory("InventoryDwarvenTank") > 0)
	  {
		PlaySound(411, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryDwarvenMask", 1);
		TakeInventory("InventoryDwarvenTank", 1);
		TakeInventory("InventoryDwarvenSuit", 2);

		PlaySound(411, "Murguth/Ha", CHAN_AUTO);
		If(spec118b == 0)
		{
		  Hudmessage(s:"Hectus:    You need me to put together a dwarven diving suit? An odd request. Let me see what I can do about it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
        }
		else
		{
		  Hudmessage(s:"Hectus:    You filled the tank? Good. Let me see what I can do about the suit..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
        }
		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);
		GiveInventory("QuestMap15FixDivingSuit", 2);
		TakeInventory("QuestMap15FixDivingSuit", 1);
		//PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(35);
		//PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.9);
		Delay(35);
		//PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.7);
		Delay(16);
		//PlaySound(64, "Interaction/AnvilHit", CHAN_AUTO, 0.8);
		Delay(50);
		PlaySound(411, "Interaction/RopeTie", CHAN_AUTO, 0.4);
		Delay(24);
		PlaySound(411, "Interaction/RopeTie", CHAN_AUTO, 0.5);
		Delay(16);
		PlaySound(412, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("InventoryDivingSuit", 412, 0, 0);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(2*35);
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
		Hudmessage(s:"It's an old relic but I cleaned and fixed the important bits. I also stitched the suits together to fit your size."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
		Hudmessage(s:"I hope you have the means to refill the air tank. Something this old will leak a lot more air than it should."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  else
	  If(CheckInventory("InventoryEmptyDwarvenTank") > 0 && spec118b == 0)
	  {
		spec118b += 1;
		PlaySound(411, "Murguth/Ha", CHAN_AUTO);
		Hudmessage(s:"Hectus:    You need me to put together a diving suit? Hmm, fill that air tank first, we need to make sure it won't leak."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	}
	else
	If(GameSkill() > SKILL_VERY_HARD && CheckInventory("QuestMap13GetIron") == 0)
	{
		PlaySound(411, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Hectus:    *Squints* ...you look like you could use a proper axe, warrior. I even have this enchanted scroll waiting    "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GRAY, 1.5, 0.80, 14.5, 0.2, 0.5);
		Hudmessage(s:"for the right blade. If you can bring me eight lumps of Iron Ore, I'll forge a weapon worthy of your arms, Half-Orc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_GRAY, 1.5, 0.82, 14.5, 0.2, 0.5);
		Delay(8*35);
		GiveInventory("QuestMap13GetIron", 2);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }
		Delay(7*35);
    }
	else
	If(GameSkill() > SKILL_VERY_HARD && CheckInventory("QuestMap13GetIron") == 2 && CheckInventory("InventoryIronOre") >= 8)
	{
		TakeInventory("InventoryIronOre", 8);
		TakeInventory("QuestMap13GetIron", 1);
		PlaySound(411, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Hectus:    You return with the ore? Good, I will start working on your axe right away..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);

		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(4*35);

		Delay(3*35);
		PlaySound(411,"Magic/Earth1", CHAN_AUTO);
		SpawnSpotForced("GreatAxe", 412, 0, 0);
		Delay(3*35);
		FadeTo(0, 0, 0, 0.0, 4.0);
		Delay(3*35);
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"It is done. A Great Axe worthy of you, Halfblood. Wield it proudly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		Delay(8*35);

		If(CheckProximity(0, "NPCHectusSmithing", 256.0, 1) && GameSkill() == 5)
		{
			Hudmessage(s:"If you bring more iron I'll trade you gold for it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
		    Delay(2*35);
		}
	}
	else
	If(GameSkill() == 5 && CheckInventory("QuestMap13GetIron") == 1 && CheckInventory("InventoryIronOre") > 0)
	{
		TakeInventory("InventoryIronOre", 1);
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    There you go."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.90, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for ten gold coins)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		SpawnSpotForced("InventoryGoldCoin10", 413, 0, 0);
		PlaySound(413, "Inventory/PickCoin", CHAN_AUTO, 0.4);

		Delay(3*35);
	}
	else
	If(spec118 == 0 && CheckInventory("InventoryIronOre") > 0 && GameSkill() != 5)
	{
	PlaySound(411, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Hectus:    Good, you found some ore. Pick one of the ammo types you want and I'll pack it for you here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 0)
	{
	PlaySound(411, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Hectus:    Don't distract me, Halfblood. One wrong strike with this Fire Hammer and we'll both explode into bits."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 1)
	{
    Hudmessage(s:"Hectus:    I've worked for the Iron Division for decades. You orcs fight with honour. I know my axes live in worthy hands."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 2)
	{
	PlaySound(411, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Hectus:    Every blade I craft bears a fraction of my soul. The steel rages with my fury when slicing through demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 3)
	{
    Hudmessage(s:"Hectus:    The campaign has been gruesome, and it will worsen, but the enemy has yet to see the last drop of our blood."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 4)
	{
	PlaySound(411, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Hectus:    Maybe I will get to see Valc again... I have faith in our warriors. Even now, we can still break the demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
	else
	If(dial118 % 6 == 5)
	{
    Hudmessage(s:"Hectus:    I haven't slept in a while but the war surrounding us doesn't wait. I will work for as long as it demands."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
    dial118 += 1;
	Delay(2*35);
	}
}
//Ammo Trade
Script 120 (void)
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("QuestMap13GetIron") == 0)
	{
		PlaySound(411, "Murguth/Ha", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Well met, orc. Our supplies are running low, but if you bring in any iron, you can exchange it for ammo."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(5*35);
		GiveInventory("QuestMap13GetIron", 2);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }
    }
}
Script 119 (void) //spikes
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") >= 1)
	{
		TakeInventory("InventoryIronOre", 1);
		spec118 += 1;
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Here, pick 'em up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for two Spike Mags)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(413, "Ammo/SpikeMagPick", CHAN_AUTO, 0.4);
		SpawnSpotForced("SpikeMag", 414, 0, 0);

		Delay(3*35);
	}
	else
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") == 0)
	{
		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Hectus:    This ammo isn't free, Orc. You can only trade for it with iron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(3*35);
	}
}
Script 121 (void) //frag
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") >= 1)
	{
		TakeInventory("InventoryIronOre", 1);
		spec118 += 1;
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Here you go."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for three Fragfire Cans)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(413, "Ammo/FragfireCanPick", CHAN_AUTO, 0.4);
		SpawnSpotForced("FragfireCan", 414, 0, 0);
		SpawnSpotForced("FragfireCanHalf", 413, 0, 0);

		Delay(3*35);
	}
	else
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") == 0)
	{
		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Hectus:    This ammo isn't free, Orc. You can only trade for it with iron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(3*35);
	}
}
Script 122 (void) //bolt
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") >= 1)
	{
		TakeInventory("InventoryIronOre", 1);
		spec118 += 1;
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Here, come grab 'em."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for two Boltmags)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(413, "Ammo/BoltmagPick", CHAN_AUTO, 0.4);
		SpawnSpotForced("Boltmag", 414, 0, 0);

		Delay(3*35);
	}
	else
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") == 0)
	{
		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Hectus:    This ammo isn't free, Orc. You can only trade for it with iron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(3*35);
	}
}
Script 123 (void) //acid
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") >= 1)
	{
		TakeInventory("InventoryIronOre", 1);
		spec118 += 1;
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Here, take them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for two Boxes of Acid Potions)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(413, "Ammo/PotionBoxPick", CHAN_AUTO, 0.4);
		SpawnSpotForced("PotionBoxAcid", 414, 0, 0);

		Delay(3*35);
	}
	else
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") == 0)
	{
		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Hectus:    This ammo isn't free, Orc. You can only trade for it with iron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(3*35);
	}
}
Script 124 (void) //toxic
{
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") >= 1)
	{
		TakeInventory("InventoryIronOre", 1);
		spec118 += 1;
		PlaySound(411, "Murguth/Unf", CHAN_AUTO);
        Hudmessage(s:"Hectus:    Here, come pick it up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.5, 0.2, 0.5);
		Hudmessage(s:"(You trade a lump of Iron Ore for a Box of Toxic Potions)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 99, CR_WHITE, 1.5, 0.80, 2.5, 0.2, 0.5);
		PlaySound(413, "Ammo/PotionBoxPick", CHAN_AUTO, 0.4);
		SpawnSpotForced("PotionBoxToxic", 413, 0, 0);

		Delay(3*35);
	}
	else
	If(GameSkill() <= SKILL_VERY_HARD && CheckInventory("InventoryIronOre") == 0)
	{
		PlaySound(411, "Murguth/Growl", CHAN_AUTO);
        Hudmessage(s:"Hectus:    This ammo isn't free, Orc. You can only trade for it with iron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(3*35);
	}
}

//Shady Fixer Dialogue
Script 95 (void)
{
	Floor_LowerByValue(415, 8, 90);
	Delay(16);
	PlaySound(416, "Fixer/Huh", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Hey, what are you doing? Leave that alone!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 4.5, 0.2, 0.5);
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.90, 4.5, 0.2, 0.5);
	Delay(105);
	//SetLineSpecial(417, ACS_Execute, 127, 0, 0, 0, 0);
}

Script 127 (void)
{
	If(IsTIDUSed(422) == 0)
	{
	SetLineSpecial(417, 0, 0, 0, 0, 0, 0);
	PlaySound(416, "Fixer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Nosy oaf! I hope you haven't touched any of my stuff!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_ORANGE, 1.5, 0.90, 4.5, 0.2, 0.5);
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_ORANGE, 1.5, 0.90, 4.5, 0.2, 0.5);
	}
}

Script 125 (void)
{
		PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    Psst. Hey you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
}

Script 126 (void)
{
	If(CheckInventory("InventoryDwarvenLockbox") > 0)
	{
		PlaySound(416, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryDwarvenLockbox", 1);

		PlaySound(416, "Reaver/Huh", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    You found a lockbox? And it's full of loot? Let me take a look!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
        SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.2);
		Delay(35);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.4);
		DElay(35);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.3);
		Delay(16);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.1);
		Delay(10);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.2);
		Delay(12);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.3);
		Delay(14);
		PlaySound(416, "Interaction/Locked", CHAN_AUTO, 0.5);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(2*35);
		PlaySound(416, "Reaver/Hmm", CHAN_AUTO);
		Hudmessage(s:"Got it! Let's see what's inside..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Delay(3*35);

		PlaySound(416, "Inventory/PickCoin", CHAN_AUTO);
		SpawnSpotForced("InventoryGoldCoin50", 418, 762, 0);
		PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Some gold... my payment, I presume."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 0.5);
		Delay(3*35);
		PlaySound(416, "Inventory/PickShort", CHAN_AUTO);
		Thing_Remove(762);
		Delay(35);

		Hudmessage(s:"...a lump of iron ore? Okay."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		PlaySound(760, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("InventoryIronOre", 760, 0, 0);
		Delay(4*35);

		Hudmessage(s:"...my, this must be worth something. But I suppose you want your share, mmh?... Fine, it's yours."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
		PlaySound(761, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("InventoryGiantRuby", 761, 0, 0);
		Delay(7*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(416, "Reaver/Hmm", CHAN_AUTO);
		Hudmessage(s:"That's all. I don't suppose you wanna keep the box too, do you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
	else
	If(CheckInventory("QuestMap13TradeGold") == 0)
	{
		PlaySound(416, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Shady Fixer:    You look like a capable fighter. And a capable fighter knows the need to be well equipped..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GOLD, 1.5, 0.80, 14.5, 0.2, 0.5);
	    Hudmessage(s:"I happen to have this spare pair of Dark Vision Goggles, and it can be yours for a measly ten gold coins.       "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_GOLD, 1.5, 0.82, 14.5, 0.2, 0.5);
		Delay(8*35);

		GiveInventory("QuestMap13TradeGold", 4);
		If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }

		Delay(7*35);
	}
	else
	If(CheckInventory("QuestMap13TradeGold") == 4 && CheckInventory("InventoryGoldCoin") < 10)
      {
		  PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    Come on, babe, ten gold and you won't struggle seeing in the dark ever again!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	      Delay(3*35);
	  }
	else
	If(CheckInventory("QuestMap13TradeGold") == 4 && CheckInventory("InventoryGoldCoin") >= 10)
      {
		  TakeInventory("QuestMap13TradeGold", 1);
		  TakeInventory("InventoryGoldCoin", 10);
		  PlaySound(416, "Inventory/PickCoin", CHAN_AUTO);
		  Delay(16);
		  PlaySound(416, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    There, we're starting to get along. Now, see these two sentries here? A hundred gold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);

		  PlaySound(418, "Inventory/PickShort", CHAN_AUTO, 0.5);
		  SpawnSpotForced("InventoryFixerGoggles", 418, 806, 0);

		  Delay(3*35);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }
	  }
	  else
	If(CheckInventory("QuestMap13TradeGold") == 3 && CheckInventory("InventoryGoldCoin") < 100)
      {
		  PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    These sentries are best buddies. I'll even unpack them for you, for only a hundred."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	      Delay(3*35);
	  }
	else
	If(CheckInventory("QuestMap13TradeGold") == 3 && CheckInventory("InventoryGoldCoin") >= 100)
      {
		  TakeInventory("QuestMap13TradeGold", 1);
		  TakeInventory("InventoryGoldCoin", 100);
		  PlaySound(416, "Inventory/PickCoin", CHAN_AUTO);
		  SetActorProperty(0, APROP_SPEED, 0.0);
		  Delay(4);
	      SetActorProperty(0, APROP_Friction, 0.1);
		  Delay(16);
		  PlaySound(416, "Reaver/Hmm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    I love the sight of a fat purse. Give me a sec, I'll unpack the turrets for you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);

		  Delay(3*35);
		  FadeTo(0, 0, 0, 1.0, 3.0);
		  Delay(4*35);
		  Thing_remove(419);
		  Line_SetBlocking(421, 0, BLOCKF_PLAYERS);
		  PlaySound(420, "Inventory/PickBase", CHAN_AUTO);
		  SpawnSpotForced("InventorySentryGun", 420, 0, 0);
		  Delay(2*35);
		  FadeTo(0, 0, 0, 0.0, 3.0);

		  SetActorProperty(0, APROP_SPEED, 1.0);
		  SetActorProperty(0, APROP_Friction, 1.0);

		  Delay(3*35);

		  Hudmessage(s:"They'll serve you well. But not as well as what I have here... a Bag of Holding, babe. Three"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.84, 14.5, 0.2, 0.5);
	      Hudmessage(s:"hundred gold. A bit steep, sure, but think about all that extra ammo it will let you carry."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GOLD, 1.5, 0.86, 14.5, 0.2, 0.5);
		  Delay(7*35);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }
		  Delay(8*35);
	  }
	  else
	  If(CheckInventory("QuestMap13TradeGold") == 2 && CheckInventory("InventoryGoldCoin") < 300)
      {
		  PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    You really want that Bag of Holding, don't you? Three hundred gold, sweets."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	      Delay(3*35);
	  }
	else
	If(CheckInventory("QuestMap13TradeGold") == 2 && CheckInventory("InventoryGoldCoin") >= 300)
      {
		  TakeInventory("QuestMap13TradeGold", 1);
		  TakeInventory("InventoryGoldCoin", 300);
		  PlaySound(416, "Inventory/PickCoin", CHAN_AUTO);
		  Delay(16);
		  PlaySound(416, "Reaver/Huh", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    *Gasps* You're a rich orc, Zan. My type of orc. You've bought out all my special merch,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.84, 14.5, 0.2, 0.5);
		  Hudmessage(s:"but I can keep selling you Vials of Healing for ten gold each.   They'll keep you alive like nothing else."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GOLD, 1.5, 0.86, 14.5, 0.2, 0.5);

		  PlaySound(418, "Inventory/PickShort", CHAN_AUTO, 0.5);
		  SpawnSpotForced("InventoryBagOfHolding", 418, 0, 0);

		  Delay(8*35);
		  If(CheckInventory("InventoryJournal") > 0)
	      {
		    PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		    Log(s:"Journal updated.");
	      }
		  Delay(7*35);
	  }
	  else
	  If(CheckInventory("QuestMap13TradeGold") == 1 && CheckInventory("InventoryGoldCoin") < 10)
      {
		  PlaySound(416, "Reaver/Hm", CHAN_AUTO);
		  Hudmessage(s:"Shady Fixer:    Come now, can't spare a mere ten gold for a vial that can save your life?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	      Delay(3*35);
	  }
	else
	If(CheckInventory("QuestMap13TradeGold") == 1 && CheckInventory("InventoryGoldCoin") >= 10)
      {
		  TakeInventory("InventoryGoldCoin", 10);
		  PlaySound(416, "Inventory/PickCoin", CHAN_AUTO);
		  Delay(16);
		  Hudmessage(s:"Shady Fixer:    Here you go, babe, stay healthy!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);

		  PlaySound(418, "Inventory/PickShort", CHAN_AUTO, 0.5);
		  SpawnSpotForced("InventoryVialofHealing", 418, 0, 0);

		  Delay(12);
	  }
}

//Ingrim Dialogue
int spec238a = 0;
int spec238b = 0;
int spec238c = 0;
int spec238d = 0;
int spec238e = 0;
int spec238f = 0;
int spec238g = 0;
int dial238 = 6;
Script 238 (void)
{
	If(spec238a == 0)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim, Queen of the Icepeak Dwarves, at your service. Here... this should get you back on your feet."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Spec238a += 1;
		Delay(70);
	    PlaySound(795, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("HealthMeadPint", 795, 796, 0);
		Delay(2*35);
	}
	else
	If(spec238g == 0 && CheckInventory("PraakGrabbed") > 0)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Sorry, no drinks for the praak."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Spec238g += 1;
		Delay(2*35);
	}
	else
	If(Spec238f == 0 && CheckInventory("InventoryMysteriousRecipe") > 0)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Found a recipe? Hmm, it doesn't involve any alcohol... maybe the witch brewer can have a look?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Spec238f += 1;
		Delay(70);
	}
	else
	If(spec232 >= 2 && CheckInventory("InventoryMysteriousRecipe") > 0)
	{
		TakeInventory("InventoryMysteriousRecipe", 1);
		SpawnSpotForced("IDScrollA", 797, 0, 0);
		PlaySound(797, "Inventory/Paper", CHAN_AUTO);
		Delay(24);
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Fine, I'll take that recipe off of you. Here, drink something that won't potentially kill you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(70);
		  If(IsTIDUsed(796))
		  {
		    PlaySound(796, "Inventory/PickShort", CHAN_AUTO);
		    Thing_Remove(796);
			Delay(35);
		  }
	    PlaySound(795, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("HealthCider", 795, 796, 0);
		Delay(2*35);
	}
	else
	If(spec238e == 0 && CheckInventory("QuestMap13InvestigateRuins") == 1)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Done exploring our ancient town? Here, have a drink in the memory of my ancestors..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Spec238e += 1;
		Delay(70);
		  If(IsTIDUsed(796))
		  {
		    PlaySound(796, "Inventory/PickShort", CHAN_AUTO);
		    Thing_Remove(796);
			Delay(35);
		  }
	    PlaySound(795, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("HealthAle", 795, 796, 0);
		Delay(2*35);
	}
	else
	If(spec238d == 1 && CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Our fate rests on your shoulders, warrior. Earn us victory and I'll let you drink like a king."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Delay(8*35);
	}
	else
	If(spec238d == 0 && CheckInventory("QuestMap13AssaultDemonTown") == 2)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    So, you're leading the attack against the demons now? I'm afraid I have no drink for that."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Spec238d += 1;
		Delay(7*35);
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"I'd give you a poison capsule, but you don't look like someone who would get captured."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(2*35);
	}
	else
	If(spec238c == 0 && CheckInventory("QuestMap13InvestigateRuins") == 2)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Off to the icy region? Something to keep you warm, coming right up."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Spec238c += 1;
		Delay(70);
		  If(IsTIDUsed(796))
		  {
		    PlaySound(796, "Inventory/PickShort", CHAN_AUTO);
		    Thing_Remove(796);
			Delay(35);
		  }
	    PlaySound(795, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("HealthPlumBrandy", 795, 796, 0);
		Delay(2*35);
	}
	else
	If(spec238b == 0 && CheckInventory("QuestMap13SecurePowder") == 2)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Going to the minotaur's town? Here... you need to stay well hydrated. And sober."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	    Spec238b += 1;
		Delay(70);
		  If(IsTIDUsed(796))
		  {
		    PlaySound(796, "Inventory/PickShort", CHAN_AUTO);
		    Thing_Remove(796);
			Delay(35);
		  }
	    PlaySound(795, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("HealthWater", 795, 796, 0);
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 0)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Since Jaromir is commanding our men, I had to find a way to make myself useful around here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 1)
	{
		Hudmessage(s:"Lady Ingrim:    I hail from the Brewer Guild. Before I became Queen, I used to be a renowned tavernkeep."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 2)
	{
		PlaySound(794, "EarthMother/Hmph", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    My family has successfully run multiple taverns, even long after our empire had collapsed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 3)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    Icepeak is a mere miniature of our past glory. We had great hopes of repopulating our lost towns..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 4)
	{
		Hudmessage(s:"Lady Ingrim:    My husband fell during the final siege. I swore to live long enough to see him avenged."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
	else
	If(dial238 % 6 == 5)
	{
		PlaySound(794, "Witch/Hm", CHAN_AUTO);
		Hudmessage(s:"Lady Ingrim:    I'm afraid I don't know much about fighting. Only about getting others to fight for me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial238 += 1;
		Delay(2*35);
	}
}


//Dwarf Militia Locksmith Dialogue
int dial128 = 6;
Script 128 (void)
{
	If(CheckInventory("InventoryDwarvenLockbox") > 0)
	{
		PlaySound(423, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryDwarvenLockbox", 1);

		PlaySound(423, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    Mmm? You have a locked box? Aye, I can help ya with that, let me have a look..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 0.5);
        SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);
		PlaySound(423, "Interaction/Locked", CHAN_AUTO, 0.2);
		Delay(35);
		PlaySound(423, "Interaction/Locked", CHAN_AUTO, 0.4);
		DElay(35);
		PlaySound(423, "Interaction/Locked", CHAN_AUTO, 0.3);
		Delay(16);
		PlaySound(423, "Interaction/Locked", CHAN_AUTO, 0.1);
		Delay(10);
		PlaySound(423, "Interaction/Locked", CHAN_AUTO, 0.2);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(2*35);
		PlaySound(423, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Opened. Aight, let's take a peek..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
		Delay(3*35);

		PlaySound(424, "Inventory/PickCoin", CHAN_AUTO);
		SpawnSpotForced("InventoryGoldCoin50", 424, 0, 0);
		PlaySound(423, "Andrik/Laugh", CHAN_AUTO);
		Hudmessage(s:"A big ol' pile o' gold!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
		Delay(3*35);

		Hudmessage(s:"...a lump of iron ore? Hmm."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
		PlaySound(425, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("InventoryIronOre", 425, 0, 0);
		Delay(3*35);

		Hudmessage(s:"...by Stone's Hammer! A giant ruby! Masterfully cut too..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
		PlaySound(426, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("InventoryGiantRuby", 426, 0, 0);
		Delay(3*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);

		PlaySound(423, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"That's all there is. I'll keep the lockbox as payment if ya don't mind. What a fine piece of work it is..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	}
	else
	If(dial128 % 6 == 0)
	{
		PlaySound(423, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    We've lost nearly all our siege weapons to these bleeding traitorous Forge Elementals!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
	else
	If(dial128 % 6 == 1)
	{
		Hudmessage(s:"Dwarf Militia:    The Carpenter Guild toiled hard to build all those ballistae and mangonels... and for what?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
	else
	If(dial128 % 6 == 2)
	{
		PlaySound(423, "Andrik/Mumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    Aye, I'm a proud member of the Carpenter Guild. Nobody shapes the wood like we do, lassie."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
	else
	If(dial128 % 6 == 3)
	{
		Hudmessage(s:"Dwarf Militia:    I trained as a locksmith, putting locks on chests and cabinets before this war. *Sighs*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
	else
	If(dial128 % 6 == 4)
	{
		PlaySound(423, "Andrik/Grumble", CHAN_AUTO);
		Hudmessage(s:"Dwarf Militia:    Ya have to adapt, lass. Today you're tinkering with locks, tomorrow you're making a catapult."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
	else
	If(dial128 % 6 == 5)
	{
		Hudmessage(s:"Dwarf Militia:    The campaign has brought us much suffering, aye, but we all want to avenge our fallen brothers."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial128 += 1;
		Delay(2*35);
	}
}
Script 241 (void)
{
	SetLineSpecial(803, 0, 0, 0, 0, 0, 0);
	PlaySound(423, "Andrik/Grumble", CHAN_AUTO);
	Hudmessage(s:"Dwarf Militia:    Bonebreaker! C'mere!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 1.5, 0.2, 0.5);
	SetLineSpecial(804, ACS_Execute, 242, 0, 0, 0, 0);

}
Script 242 (void)
{
	SetLineSpecial(804, 0, 0, 0, 0, 0, 0);
	PlaySound(423, "Andrik/Mumble", CHAN_AUTO);
	Hudmessage(s:"Dwarf Militia:    Hey, someone's been askin' about ya. Check downstairs."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 1.5);

}

//Minotaur Axeman Guard Dialogue
int dial139 = 4;
Script 139 (void)
{
	If(dial139 % 4 == 0)
	{
	PlaySound(437, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Minotaur Axeman:    Stay sharp. We crushed most of the nearby Cult settlements but these caves are ever dangerous."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial139 += 1;
	Delay(2*35);
	}
	else
	If(dial139 % 4 == 1)
	{
    Hudmessage(s:"Minotaur Axeman:    Demons can gate across short distances here, but the Earth Mothers protect our camp from it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial139 += 1;
	Delay(2*35);
	}
	else
	If(dial139 % 4 == 2)
	{
	PlaySound(437, "Murguth/Growl", CHAN_AUTO);
    Hudmessage(s:"Minotaur Axeman:    I'm supposed to watch over Breaza at all times. Nobody lays a finger on her on my watch."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial139 += 1;
	Delay(2*35);
	}
	else
	If(dial139 % 4 == 3)
	{
    Hudmessage(s:"Minotaur Axeman:    I serve the Division with pride. Without you, us cave minotaurs wouldn't have survived this far."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial139 += 1;
	Delay(2*35);
	}
}

//Minotaur Pyromancer Scholar Dialogue
int dial140 = 4;
Script 140 (void)
{
	If(CheckInventory("InventoryScrollcase") > 0)
	{
		PlaySound(438, "Inventory/PickBase", CHAN_AUTO);
		TakeInventory("InventoryScrollcase", 1);

		PlaySound(438, "Murguth/Ha", CHAN_AUTO);
		Hudmessage(s:"Minotaur Pyromancer:    Hmm? You've found a scroll case inside our long abandoned town? Let me have it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 5.5, 0.2, 0.5);
        SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 2.0);
		Delay(2*35);
		PlaySound(438, "Weapons/Flamedeath", CHAN_AUTO, 0.2);
		Delay(35);
		PlaySound(438, "Inventory/PickShort", CHAN_AUTO, 0.4);
		DElay(12);
		PlaySound(438, "Interaction/Locked", CHAN_AUTO, 0.1);
		Delay(16);
		PlaySound(438, "Inventory/PickBase", CHAN_AUTO, 0.3);
		SpawnSpotForced("IDScrollCase", 799, 0, 0);
		Delay(2*35);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(2*35);
		PlaySound(438, "Murguth/Unf", CHAN_AUTO);
		Hudmessage(s:"A fine magic seal... it makes me yearn for our ancestors' secrets. Well, let us see what's inside..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(3*35);
        PlaySound(438, "Inventory/Paper", CHAN_AUTO);
		Delay(3*35);
		Hudmessage(s:"...a true wealth of knowledge. Here, these scrolls will be of use to you... the rest, not so much."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 5.5, 0.2, 0.5);
		PlaySound(438, "Murguth/Ha", CHAN_AUTO);
		Delay(2*35);
		SpawnSpotForced("InventoryScrollFireInferno", 513, 0, 0);
		PlaySound(513, "Inventory/Paper", CHAN_AUTO);
		Delay(4*35);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
		Hudmessage(s:"Be wary, as the bursts of exploding flames can easily hurt you too. Use the knowledge of the pyromancers wisely."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
	}
	else
	If(dial140 % 4 == 0)
	{
	PlaySound(438, "Murguth/Ha", CHAN_AUTO);
    Hudmessage(s:"Minotaur Pyromancer:    My entire life was dedicated to studying fire magic. I've even trained some of your mages."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial140 += 1;
	Delay(2*35);
	}
	else
	If(dial140 % 4 == 1)
	{
    Hudmessage(s:"Minotaur Pyromancer:    Murguth is the greatest Pyromancer alive. He leads us now that the Lords have fallen."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial140 += 1;
	Delay(2*35);
	}
	else
	If(dial140 % 4 == 2)
	{
    Hudmessage(s:"Minotaur Pyromancer:    There's an ancient minotaur town nearby, dating from the ages of the Dwarven Wars."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial140 += 1;
	Delay(2*35);
	}
	else
	If(dial140 % 4 == 3)
	{
	PlaySound(438, "Murguth/Unf", CHAN_AUTO);
    Hudmessage(s:"Minotaur Pyromancer:    I dream of uncovering our forgotten libraries. Imagine all the knowledge locked inside."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_FIRE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial140 += 1;
	Delay(2*35);
	}
}

//Earth Mother Chanter Dialogue
Script 141 (void)
{
    Hudmessage(s:"Earth Mother:    *Chanting*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	Delay(2*35);
}

//Dwarf Shieldguard Guard Dialogue
int dial142 = 4;
Script 142 (void)
{
	If(GetActorZ(0) < -300.0)
	{
	If(dial142 % 4 == 0)
	{
	PlaySound(439, "Andrik/Mumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    Watch yer back out there, lass, we're sitting deep within enemy territory!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial142 += 1;
	Delay(2*35);
	}
	else
	If(dial142 % 4 == 1)
	{
    Hudmessage(s:"Dwarf Shieldguard:    If ya run into any trouble outside, rush back 'ere, I'll hold the gate open for ya."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial142 += 1;
	Delay(2*35);
	}
	else
	If(dial142 % 4 == 2)
	{
	PlaySound(439, "Andrik/Grumble", CHAN_AUTO);
    Hudmessage(s:"Dwarf Shieldguard:    I wager there's still some goods hidden inside the pillaged houses nearby."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial142 += 1;
	Delay(2*35);
	}
	else
	If(dial142 % 4 == 3)
	{
    Hudmessage(s:"Dwarf Shieldguard:    Don't set off on a road longer than your quiver can last, my old man used to say."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial142 += 1;
	Delay(2*35);
	}
	}
}
//Gate Greeting
int dial153 = 0;
Script 153 (void)
{
    If(GetActorZ(0) < -300.0 && dial153 == 0)
	{
	  Switch(random(1, 4))
	  {
		Case 1:
        PlaySound(439, "Andrik/Grumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Good hunting!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

        Case 2:
        PlaySound(439, "Andrik/Grumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Watch yer back, lass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 3:
        PlaySound(439, "Andrik/Grumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Stone pave yer path!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 4:
        PlaySound(439, "Andrik/Grumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Travel safe, lassie!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;
	  }
	  Delay(120*35);
	}
	else
	If(GetActorZ(0) < -300.0 && dial153 == 1)
	{
	  Switch(random(1, 4))
	  {
		Case 1:
        PlaySound(439, "Andrik/Mumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Welcome back, lassie!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

        Case 2:
        PlaySound(439, "Andrik/Mumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Found what ye were lookin' fer?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 3:
        PlaySound(439, "Andrik/Mumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Good to see ya in one piece!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;

		Case 4:
        PlaySound(439, "Andrik/Mumble", CHAN_AUTO);
        Hudmessage(s:"Dwarf Shieldguard:    Come in, gate's open fer ya!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.5, 0.2, 0.5);
		Break;
	  }
	  Delay(45*35);
	}
}
Script 154 (void)
{
	dial153 = 0;
}
Script 155 (void)
{
	dial153 = 1;
}

//Tavern Balcony Bear Warrior Dialogue
int dial143 = 4;
Script 143 (void)
{
	If(GetActorProperty(440, APROP_Health) > 0 && GetActorZ(0) > -247.0)
	{
	If(dial143 % 4 == 0)
	{
	PlaySound(440, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Keeping me company, sarge? It does get a bit lonely up here alright."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial143 += 1;
	Delay(2*35);
	}
	else
	If(dial143 % 4 == 1)
	{
    Hudmessage(s:"Bear Warrior:    So Valc was swarmed by cultists after we left? Slithering bastards, how did they plan so well?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial143 += 1;
	Delay(2*35);
	}
	else
	If(dial143 % 4 == 2)
	{
	PlaySound(440, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Tiati said you slayed a huge Pit Lord! If I ever return home I better see his skull at the tavern."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial143 += 1;
	Delay(2*35);
	}
	else
	If(dial143 % 4 == 3)
	{
	PlaySound(440, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    So many sisters have fallen in battle... the Lancers and Warlords... how can we recover from this?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial143 += 1;
	Delay(2*35);
	}
    }
}

//Barracks Dialogue A
Script 144 (void)
{
	SetLineSpecial(441, 0, 0, 0, 0, 0, 0);
	If(GetActorProperty(442, APROP_Health) > 0 && GetActorProperty(443, APROP_Health) > 0)
	{
		PlaySound(442, "BearWarrior/Ha", CHAN_AUTO);
        Hudmessage(s:"Bear Warrior:    Weren't we supposed to get a report from the forest squad today?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
		Delay(4*35);
		Delay(16);
	    PlaySound(443, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver:    I bet the rain has bogged them down..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
}

//Barracks Dialogue B
Script 145 (void)
{
	SetLineSpecial(441, 0, 0, 0, 0, 0, 0);
	If(GetActorProperty(442, APROP_Health) > 0 && GetActorProperty(443, APROP_Health) > 0)
	{
		PlaySound(442, "BearWarrior/Huh", CHAN_AUTO);
        Hudmessage(s:"Bear Warrior:    Scouts say the lightning storm is getting worse... what if the caves get flooded?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);
	    PlaySound(443, "Reaver/Hmm", CHAN_AUTO);
        Hudmessage(s:"Reaver:    If demons keep attacking we'll be dead long before that happens."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
}

//Barracks Bear Warrior 1 Dialogue
int dial146 = 4;
Script 146 (void)
{
	If(GetActorProperty(442, APROP_Health) > 0)
	{
	If(dial146 % 4 == 0)
	{
	PlaySound(442, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Glad to have you here with us, Bonebreaker. Stay a while, warm yourself by the fire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial146 += 1;
	Delay(2*35);
	}
	else
	If(dial146 % 4 == 1)
	{
	PlaySound(442, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    We had to fall back into these caves after our defeat. Breaza hopes to strike from a new angle now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial146 += 1;
	Delay(2*35);
	}
	else
	If(dial146 % 4 == 2)
	{
	PlaySound(442, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Whew, the way you razed that Cult mansion from inside was crazy! You beat a weeks long siege to it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial146 += 1;
	Delay(2*35);
	}
	else
	If(dial146 % 4 == 3)
	{
    Hudmessage(s:"Bear Warrior:    Since we don't need to block the mansion anymore, we can strengthen the south flank and buy time."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial146 += 1;
	Delay(2*35);
	}
	}
}

//Barracks Reaver 1 Dialogue
int dial147 = 4;
Script 147 (void)
{
	If(GetActorProperty(443, APROP_Health) > 0)
	{
	If(dial147 % 4 == 0)
	{
	PlaySound(443, "Reaver/Huh", CHAN_AUTO);
    Hudmessage(s:"Reaver:    A lightning storm is brewing in the Crystal Dome. Breaza says it's why the crystals started to fade."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial147 += 1;
	Delay(2*35);
	}
	else
	If(dial147 % 4 == 1)
	{
    Hudmessage(s:"Reaver:    The storm is unusual. The forest part leading up to the southern Cult fortress is laden with rain."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial147 += 1;
	Delay(2*35);
	}
	else
	If(dial147 % 4 == 2)
	{
	PlaySound(443, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Reaver:    At least that patch of vegetation won't die so soon. Still, it won't stop our impending starvation."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial147 += 1;
	Delay(2*35);
	}
	else
	If(dial147 % 4 == 3)
	{
    Hudmessage(s:"Reaver:    The odds are stacked against us... the siege, the storm, the demons... pick the flavor of your death."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial147 += 1;
	Delay(2*35);
	}
	}
}

//Gate Fixer Dialogue
Script 148 (void)
{
	If(GetActorProperty(444, APROP_Health) > 0 && (GameSkill() != 5))
	{
	PlaySound(444, "Fixer/Huh", CHAN_AUTO);
    Hudmessage(s:"Fixer:    Excuse me? We could use that ammo too, you know?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
}
int dial149 = 4;
Script 149 (void)
{
	If(GetActorProperty(444, APROP_Health) > 0)
	{
	If(dial149 % 4 == 1)
	{
    Hudmessage(s:"Fixer:    There's a mine just north of us. Murguth says it belonged to the minotaurs before the Cult claimed it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial149 += 1;
	Delay(2*35);
	}
	else
	If(dial149 % 4 == 2)
	{
	PlaySound(444, "Fixer/Hmm", CHAN_AUTO);
    Hudmessage(s:"Fixer:    Scouts say they found human skeletons at the entrance to the mine... but it's not us who killed them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial149 += 1;
	Delay(2*35);
	}
	else
	If(dial149 % 4 == 3)
	{
	PlaySound(444, "Fixer/Hm", CHAN_AUTO);
    Hudmessage(s:"Fixer:    Word is, a few cultists defected in the wake of our forces. Turns out they're not all blind fanatics."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial149 += 1;
	Delay(2*35);
	}
	else
	If(dial149 % 4 == 0)
	{
    Hudmessage(s:"Fixer:    With ammo supplies dwindling, we'll have to adapt and improvise... glad I used to work as a scavenger."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial149 += 1;
	Delay(2*35);
	}
    }
}

//Gate Reaver Dialogue
int dial150 = 4;
Script 150 (void)
{
	If(GetActorProperty(445, APROP_Health) > 0)
	{
	If(dial150 % 4 == 0)
	{
	PlaySound(445, "Reaver/Hmm", CHAN_AUTO);
    Hudmessage(s:"Reaver:    I don't mean any disrespect, but I'm not in the mood for chit-chat, sergeant."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial150 += 1;
	Delay(2*35);
	}
	else
	If(dial150 % 4 == 1)
	{
	PlaySound(445, "Reaver/Hm", CHAN_AUTO);
    Hudmessage(s:"Reaver:    It's stressful enough having to keep my eyes peeled for a demon strike, I don't need any distractions."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial150 += 1;
	Delay(2*35);
	}
	else
	If(dial150 % 4 == 2)
	{
    Hudmessage(s:"Reaver:    If I make it out of this in one piece, I'll crash into the first bed I find and sleep for a whole week."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial150 += 1;
	Delay(2*35);
	}
	else
	If(dial150 % 4 == 3)
	{
    Hudmessage(s:"Reaver:    *Sighs and rubs her eyes*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	Dial150 += 1;
	Delay(2*35);
	}
	}
}

//Front Bear Warrior 1 Dialogue
int dial151 = 4;
Script 151 (void)
{
	If(GetActorProperty(446, APROP_Health) > 0)
	{
	If(dial151 % 4 == 0)
	{
	PlaySound(446, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Stay clear of the road leading to the right! The Cult has set up a barricade around the corner."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial151 += 1;
	Delay(2*35);
	}
	else
	If(dial151 % 4 == 1)
	{
	PlaySound(446, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Demons have been raiding us regularly. They are testing our defenses for a bigger attack..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial151 += 1;
	Delay(2*35);
	}
	else
	If(dial151 % 4 == 2)
	{
    Hudmessage(s:"Bear Warrior:    The gates to the demon port town are defended by powerful flame hurling towers. Stay away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial151 += 1;
	Delay(2*35);
	}
	else
	If(dial151 % 4 == 3)
	{
    Hudmessage(s:"Bear Warrior:    I don't know how much longer we can hold. What if they just send a large army to crush us?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial151 += 1;
	Delay(2*35);
	}
	}
}

//Front Bear Warrior 2 Dialogue
int dial152 = 4;
Script 152 (void)
{
	If(GetActorProperty(447, APROP_Health) > 0)
	{
	If(dial152 % 4 == 0)
	{
	PlaySound(447, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    Sorry for throwing you in jail, Zan. Grund got us all worked up over your bullshit desertion."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial152 += 1;
	Delay(2*35);
	}
	else
	If(dial152 % 4 == 1)
	{
    Hudmessage(s:"Bear Warrior:    Now that the mansion is no longer a threat I got transfered to the defense line here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial152 += 1;
	Delay(2*35);
	}
	else
	If(dial152 % 4 == 2)
	{
	PlaySound(447, "BearWarrior/Hmm", CHAN_AUTO);
    Hudmessage(s:"Bear Warrior:    I'd love to hear the story of how you've returned, but I need to stay focused."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial152 += 1;
	Delay(2*35);
	}
	else
	If(dial152 % 4 == 3)
	{
    Hudmessage(s:"Bear Warrior:    Remind me to buy you one large pint if we make it out of this mess. Or a dozen. My treat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	Dial152 += 1;
	Delay(2*35);
	}
	}
}


//Fortress Squad Dialogue
int dial106 = 4; //Bear Sq 1
Script 106 (void)
{
	If(GetActorProperty(649, APROP_Health) > 0 && dial106 % 4 == 0)
	{
	  PlaySound(649, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We've searched the fortress and found some pretty good intel. This Nithriel chick is up to something."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial106 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(649, APROP_Health) > 0 && dial106 % 4 == 1)
	{
	  PlaySound(649, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    The bastards have tortured a Reaver to death! She was strong, though, didn't crack a word."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial106 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(649, APROP_Health) > 0 && dial106 % 4 == 2)
	{
	  PlaySound(649, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Someone called the Spirit Mistress was in charge here. She got what was coming for her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial106 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(649, APROP_Health) > 0 && dial106 % 4 == 3)
	{
	  Hudmessage(s:"Bear Warrior:    You really got them riled up here, I'll give you that. We have quite some cleanup to do."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial106 += 1;
	  Delay(2*35);
	}
}

int dial107 = 4; //Bear sq 2
Script 107 (void)
{
	If(GetActorProperty(650, APROP_Health) > 0 && dial107 % 4 == 0)
	{
	  PlaySound(650, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    The fortress is clear, and we've also secured the stolen supplies. Feel free to grab what's left."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(650, APROP_Health) > 0 && dial107 % 4 == 1)
	{
	  PlaySound(650, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Heh. We've besieged them for weeks and you broke through in only a few hours. Not bad, big girl."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(650, APROP_Health) > 0 && dial107 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    The cultists were unusually well organized here. I bet it's the demons who whipped them into shape."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial107 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(650, APROP_Health) > 0 && dial107 % 4 == 3)
	{
	  PlaySound(650, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    With this position captured, we've secured a pretty damn safe route for a messenger to reach Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial107 += 1;
	  Delay(2*35);
	}
}

int dial108 = 8; //Fixer
Script 108 (void)
{
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 0)
	{
	  PlaySound(651, "Fixer/Huh", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    It's so nice to see you again, Zan! That was quite an adventure, wasn't it?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 1)
	{
	  Hudmessage(s:"Fixer:    I was ordered to stay here and guard the portal. This place is giving me chills, literally."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 2)
	{
	  Hudmessage(s:"Fixer:    This dwarven stone garden is really pretty, but it just gets so boring watching it all day."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 3)
	{
	  PlaySound(651, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Nothing happens here... although I can hear weird echoes coming from those gates every now and then."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 4)
	{
	  Hudmessage(s:"Fixer:    This place must be centuries old. I bet priest Jaromir's ancestors used to live here once."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 5)
	{
	  PlaySound(651, "Fixer/Hm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Don't you think I'm wasting my time here? I bet they just sent me back here to stay out of trouble."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 6 && GameSkill() > SKILL_HARD)
	{
	  PlaySound(651, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Hey... I don't even think they'd notice if I left... and a hardass like you could keep me safe!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 6 && GameSkill() <= SKILL_HARD)
	{
	  PlaySound(651, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Hey... I don't even think they'd notice if I left... mmm, no, I should probably stay here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial108 += 2;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(651, APROP_Health) > 0 && dial108 % 8 == 7)
	{
	  PlaySound(651, "Fixer/Huh", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    Yes, you could vouch for me if they complain, right? Cool, I'm ready to tag alongside you then!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  //dial108 += 1;
	  Delay(4*35);
	  Thing_Remove(651);
	  SetLineSpecial(400, 0, 0, 0, 0, 0, 0);
	  SpawnSpotForced("IDFixerRecruitable", 393, 691, 192);
	}
}
Script 237 (void)
{
	If(GetActorProperty(651, APROP_Health) > 0)
	{
	SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
	PlaySound(651, "Fixer/Huh", CHAN_AUTO);
	Hudmessage(s:"Fixer:    Z-Zan!? O-oh, my, I almost shot you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
    }
}
Script 236 (void)
{
	SetLineSpecial(793, 0, 0, 0, 0, 0, 0);
}

int dial109 = 4; //Reaver POW 1
Script 109 (void)
{
	If(GetActorProperty(652, APROP_Health) > 0 && dial109 % 4 == 0)
	{
	  PlaySound(652, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Thanks for freeing us, Zan... I was next on the chopping block, you saved my skin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial109 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(652, APROP_Health) > 0 && dial109 % 4 == 1)
	{
	  PlaySound(652, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    They took one of our sisters for interrogation. I still can't get her screams out of my head."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial109 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(652, APROP_Health) > 0 && dial109 % 4 == 2)
	{
	  Hudmessage(s:"Reaver:    Us Reavers are trained to resist pain, but these self mutilating freaks are on another level."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial109 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(652, APROP_Health) > 0 && dial109 % 4 == 3)
	{
	  PlaySound(652, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    They couldn't get anything from us. I heard them talking about bringing in a succubus. Heh."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial109 += 1;
	  Delay(2*35);
	}
}

int dial110 = 4; //Reaver POW 2
Script 110 (void)
{
	If(GetActorProperty(653, APROP_Health) > 0 && dial110 % 4 == 0)
	{
	  Hudmessage(s:"Reaver:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(653, APROP_Health) > 0 && dial110 % 4 == 1)
	{
	  Hudmessage(s:"Reaver:    *Stares into the distance*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(653, APROP_Health) > 0 && dial110 % 4 == 2)
	{
	  PlaySound(653, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    ...look, thanks for saving us... but I want to be left alone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(653, APROP_Health) > 0 && dial110 % 4 == 3)
	{
	  PlaySound(653, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Please... I've lost a good friend. Leave me be."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial110 += 1;
	  Delay(2*35);
	}
}

int dial111 = 4; //Bear POW 1
Script 111 (void)
{
	If(GetActorProperty(654, APROP_Health) > 0 && dial111 % 4 == 0)
	{
	  PlaySound(654, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Hail, Bonebreaker! The earth drinks well where you set foot, you are a worthy orc!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial111 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(654, APROP_Health) > 0 && dial111 % 4 == 1)
	{
	  PlaySound(654, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I can't wait to listen to the bards sing about you breaking us free, hah!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial111 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(654, APROP_Health) > 0 && dial111 % 4 == 2)
	{
	  PlaySound(654, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    This war is far from over. And now that I'm free I can carve my name into demonic skulls again!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial111 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(654, APROP_Health) > 0 && dial111 % 4 == 3)
	{
	  PlaySound(654, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    You're a stout warrior, sarge. I'll make sure to drink with you once this is over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial111 += 1;
	  Delay(2*35);
	}
}

int dial112 = 4; //Bear POW 2
Script 112 (void)
{
	If(GetActorProperty(655, APROP_Health) > 0 && dial112 % 4 == 0)
	{
	  PlaySound(655, "Witch/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    We've secured the area. That was a thrilling prison break, thanks for assisting us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial112 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(655, APROP_Health) > 0 && dial112 % 4 == 1)
	{
	  Hudmessage(s:"Witch:    We recovered our gear and took over what the cultists had here. Spoils of war, mm?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial112 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(655, APROP_Health) > 0 && dial112 % 4 == 2)
	{
	  PlaySound(655, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Pillaging cultist forts never gets tiresome. Especially when they have a large kitchen."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial112 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(655, APROP_Health) > 0 && dial112 % 4 == 3)
	{
	  PlaySound(655, "Witch/Hm", CHAN_AUTO);
	  Hudmessage(s:"Witch:    You should check the fortress for any hidden paths, there might be some goods stashed away."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial112 += 1;
	  Delay(2*35);
	}
}

int dial113 = 4; //Bear POW 3
Script 113 (void)
{
	If(GetActorProperty(656, APROP_Health) > 0 && dial113 % 4 == 0)
	{
	  PlaySound(656, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Everything's in order, ma'am, we're holding strong!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(656, APROP_Health) > 0 && dial113 % 4 == 1)
	{
	  Hudmessage(s:"Bear Warrior:    We're ready for any counter-attack, let them come!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(656, APROP_Health) > 0 && dial113 % 4 == 2)
	{
	  PlaySound(656, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Demons can teleport over short distances here. You never know when they'll jump you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(656, APROP_Health) > 0 && dial113 % 4 == 3)
	{
	  Hudmessage(s:"Bear Warrior:    Keep an eye out for glowing pentagrams. They're always a bad sign..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial113 += 1;
	  Delay(2*35);
	}
}

int dial114 = 4; //Bear POW 4 extra
Script 114 (void)
{
	If(GetActorProperty(657, APROP_Health) > 0 && dial114 % 4 == 0)
	{
	  PlaySound(657, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    What a prison break! And we got away almost unscratched. You're a beast, sarge!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial114 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(657, APROP_Health) > 0 && dial114 % 4 == 1)
	{
	  PlaySound(657, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Breaza ordered us to hold here. I hate seeing this place, but orders are orders."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial114 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(657, APROP_Health) > 0 && dial114 % 4 == 2)
	{
	  Hudmessage(s:"Bear Warrior:    The cultists had well organized defenses. Well, not well enough to stop you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial114 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(657, APROP_Health) > 0 && dial114 % 4 == 3)
	{
	  Hudmessage(s:"Bear Warrior:    I miss Valc... I don't even know if we'll get to see it again. Fuck this place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial114 += 1;
	  Delay(2*35);
	}
}

//PHASE 2 DIALOGUES
int dial200 = 4;  //Fixer Guarding Barrels
Script 200 (void)
{
	If(GetActorProperty(670, APROP_Health) > 0 && dial200 % 4 == 0)
	{
	  PlaySound(670, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    We've recovered the hell powder barrels from the minotaur town, thanks for securing them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial200 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(670, APROP_Health) > 0 && dial200 % 4 == 1)
	{
	  Hudmessage(s:"Fixer:    We'll use the powder to tunnel around the flame towers protecting the Demon Town's gate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial200 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(670, APROP_Health) > 0 && dial200 % 4 == 2)
	{
	  PlaySound(670, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    The mine just north of here will allow us to get closer to a side wall, then breach in."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial200 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(670, APROP_Health) > 0 && dial200 % 4 == 3)
	{
	  PlaySound(670, "Fixer/Hm", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    I hope Breaza adds you to our sapper team once the operation begins. I'd feel a lot safer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial200 += 1;
	  Delay(2*35);
	}
}

int dial199 = 4; //Witch by grill
Script 199 (void)
{
If(GetActorproperty(671, APROP_Health) > 0 && GetActorZ(0) < -250.0)
	{
	If(dial199 % 4 == 1)
	{
	PlaySound(671, "Witch/Ha", CHAN_AUTO);
    Hudmessage(s:"Witch:    After the invasion's end we had to clean up all the dark slime the Cult had spread in Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(dial199 % 4 == 2)
	{
    Hudmessage(s:"Witch:    This isn't a simple blight, it's a living organism. Zura even believes it's sentient."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(dial199 % 4 == 3)
	{
	PlaySound(671, "Witch/Ha", CHAN_AUTO);
    Hudmessage(s:"Witch:    Zura is afflicted with the parasite. She's desperate to find a way to combat the corruption."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(dial199 % 4 == 0)
	{
    Hudmessage(s:"Witch:    Our party left Valc to find prime slime samples. Soon after, we stumbled upon your messenger."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	}
}

int dial201 = 4; //Reaver by grill
Script 201 (void)
{
	If(GetActorProperty(672, APROP_Health) > 0 && dial201 % 4 == 0 && GetActorZ(0) < -250.0)
	{
	  PlaySound(672, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Nice to see you, Zan, stay with us as long as you want, help yourself to some food."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial201 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(672, APROP_Health) > 0 && dial201 % 4 == 1 && GetActorZ(0) < -250.0)
	{
	  Hudmessage(s:"Reaver:    Valc is still a mess... it took us days upon days only to lay all the corpses to rest."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial201 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(672, APROP_Health) > 0 && dial201 % 4 == 2 && GetActorZ(0) < -250.0)
	{
	  PlaySound(672, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    So many of us perished... at this point I wonder if it's even worth rebuilding our town."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial201 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(672, APROP_Health) > 0 && dial201 % 4 == 3 && GetActorZ(0) < -250.0)
	{
	  PlaySound(672, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Demons, death, war... it's so nice when you can just sit down and grill, forget about it all."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial201 += 1;
	  Delay(2*35);
	}
}

int dial202 = 4; //Bear Warrior by barracks
Script 202 (void)
{
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 0)
	{
	  PlaySound(673, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Good to see you alive and well, Bonebreaker! Your name is earning honour quickly!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 1)
	{
	  PlaySound(673, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    We knew you defeated the warlock bitch when we saw her cultists scurrying away!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 2)
	{
	  PlaySound(673, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    I still wonder - what made you return to Valc? You showed up right on time!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 3)
	{
	  PlaySound(673, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    The demons and their human lackeys will feel every inch of our vengeance. Grrrh!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
}

int dial203 = 4; //Bear Warrior training
Script 203 (void)
{
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 0)
	{
	  PlaySound(674, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    *Growls and pants*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 1)
	{
	  PlaySound(674, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 2)
	{
	  PlaySound(674, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Well met, sergeant! Wanna train with me?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 3)
	{
	  PlaySound(674, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Feel the wrath of the Iron Division! Hrrargh!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
}

//DURA DIALOGUE
int dial216 = 7;
Script 216 (void)
{
	If(IsTIDUsed(686) && GetActorProperty(686, APROP_Health) > 0)
	{
	If(dial216 % 7 == 0)
	{
	ACS_Terminate(217, 0);
	PlaySound(686, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    Earth's strength, Bonebreaker! At last, we're all here together, and we're thirsty for vengeance!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 1)
	{
	ACS_Terminate(217, 0);
	PlaySound(686, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    We marched here like the wind when we heard about the survivors. We're longing for battle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 2)
	{
	ACS_Terminate(217, 0);
    Hudmessage(s:"Captain Dura:    Lancer Dendra remained back in Valc with those who haven't fully recovered from their wounds."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 3)
	{
	ACS_Terminate(217, 0);
	PlaySound(686, "BearWarrior/Ha", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    This is our final chance to put an end to the demon menace. May the Gods guide our wrath!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 4)
	{
	ACS_Terminate(217, 0);
    Hudmessage(s:"Captain Dura:    A sapper team was supposed to disable the flame towers at the gate, but they got ambushed."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 5)
	{
	ACS_Terminate(217, 0);
	PlaySound(686, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    If we can't bring the towers down we'll have to go through an inferno to get past their walls."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}
	else
	If(dial216 % 7 == 6)
	{
	ACS_Terminate(217, 0);
    Hudmessage(s:"Captain Dura:    You have your orders, sergeant. Now excuse me, I have to prepare my squads for the assault."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	Dial216 += 1;
	Delay(2*35);
	}

	//Delay(5*35);
	ACS_Execute(217, 0, 0, 0, 0);
	}
}
int dial217 = 6; //Speech
Script 217 (void)
{
	Delay(8*35);
	If(IsTIDUsed(686) && GetActorProperty(686, APROP_Health) > 0 && CheckProximity(0, "NPCDuraRegular", 850.0))
	{
	If(dial217 % 6 == 0)
	{
	PlaySound(686, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    We shall not falter! For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 4.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	else
	If(dial217 % 6 == 1)
	{
	PlaySound(686, "BearWarrior/Rage1", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    For Valc! For our fallen sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 4.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	else
	If(dial217 % 6 == 2)
	{
	PlaySound(686, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    Our axes shall be drenched in demon blood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 4.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	else
	If(dial217 % 6 == 3)
	{
	PlaySound(686, "BearWarrior/Huh", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    Fight with pride! Fight with honour!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 3.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	else
	If(dial217 % 6 == 4)
	{
	PlaySound(686, "BearWarrior/Rage1", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    We embrace death! The Earth will shelter our bones!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 4.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	else
	If(dial217 % 6 == 5)
	{
	PlaySound(686, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Captain Dura:    We shall crush them under our boots! Demons will fear our name for centuries to come!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 4.5, 0.82, 5.5, 0.2, 0.5);
	Dial217 += 1;
	Delay(2*35);
	PlaySound(687, "BearWarrior/Rage1", CHAN_AUTO);
	PlaySound(688, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Orc Warriors:    *Cheers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKGREEN, 1.5, 0.78, 2.5, 0.2, 0.5);
	}
	}
	Delay(35);
	Restart;
}

//EARTH MOTHER COMPANION
Script 206 (void)
{
	  SetLineSpecial(583, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Earth Mother:    Zan... Breaza is worried for your safety. She asked me to aid you, let us travel together."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.82, 7.5, 0.2, 0.5);
      SetLineSpecial(585, ACS_Execute, 207, 0, 0, 0, 0);
	  SetLineSpecial(584, ACS_Execute, 208, 0, 0, 0, 0);
}
Script 207 (void)
{
    If(CheckProximity(0, "IDEarthMother", 800.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 800.0, 1))
	{
	  SetLineSpecial(585, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Earth Mother:    Let me know if you ever require healing."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
}
Script 208 (void)
{
    If(CheckProximity(0, "IDEarthMother", 800.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 800.0, 1))
	{
	  SetLineSpecial(584, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Earth Mother:    This cave leads on the right path, Priest Jaromir must have passed through already."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 6.5, 0.2, 0.5);
	}
}
Script 209 (void)
{
    If(CheckProximity(0, "IDEarthMother", 800.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 800.0, 1))
	{
	  SetLineSpecial(591, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Earth Mother:    Poor dwarves... they are beyond my powers now..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
}
Script 210 (void)
{
    If(CheckProximity(0, "IDEarthMother", 800.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 800.0, 1))
	{
	  SetLineSpecial(592, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Earth Mother:    This looks like the gate to the dwarf town. Priest Jaromir must be waiting for us inside."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
}
Script 211 (void)
{
	SetLineSpecial(584, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(585, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(591, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(592, 0, 0, 0, 0, 0, 0);
}

//DEMON TOWN ASSAULT
//Sapper Team
Script 214 (void)
{
	If(ChecKInventory("QuestMap13AssaultDemonTown") == 2)
	{
	  SetLineSpecial(632, 0, 0, 0, 0, 0, 0);
	  ACS_Execute(48, 0, 0, 0, 0);
	  Thing_Deactivate(712);
	  //NoiseAlert(0, 0);
	  If(IsTIDUsed(701) && GetActorProperty(701, APROP_Health) > 0)
	  {
	    PlaySound(701, "Witch/Ha", CHAN_AUTO);
	    Hudmessage(s:"Witch:    Zan?! Over here!... demon scum have taken us by surprise, we barely made it out alive!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);
	  }
	  If(IsTIDUsed(702) && GetActorProperty(702, APROP_Health) > 0 && CheckProximity(0, "IDFixerStationary", 640.0))
	  {
	    PlaySound(702, "Fixer/Hmm", CHAN_AUTO);
        Hudmessage(s:"Fixer:    We were 'bout to blow that wall to bits, but now that you're here, the honour is all yours."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);
	  }
	  If(IsTIDUsed(701) && GetActorProperty(701, APROP_Health) > 0 && CheckProximity(0, "IDWitchStationary", 640.0))
	  {
	    Autosave();
	    PlaySound(701, "Witch/Hm", CHAN_AUTO);
	    Hudmessage(s:"Witch:    I hope you're fully prepared. Once you press that handle, there will be no turning back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  SetLineSpecial(633, ACS_Execute, 215, 0, 0, 0, 0);
	}
}
Script 215 (void)
{
		SetLineSpecial(633, 0, 0, 0, 0, 0, 0);

		If(IsTIDUsed(702) && GetActorProperty(702, APROP_Health) > 0 && CheckProximity(0, "IDFixerStationary", 640.0))
		{
	    //PlaySound(702, "Fixer/Hm", CHAN_AUTO);
        Hudmessage(s:"Fixer:    Fire in the hole!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	    }

		SetWeapon("Fists");

		Floor_LowerByValue(635, 4, 8);
		FloorAndCeiling_LowerByValue(637, 4, 8);

		Delay(16);
		SpawnSpotForced("SparkToss", 641, 0, 0);
		PlaySound(641, "Interaction/Spark");
		Delay(16);
		SpawnSpotForced("SparkToss", 642, 0, 0);
		PlaySound(642, "Interaction/Spark");
		Delay(14);
		PlaySound(643, "Weapons/SpikeShotDeath");
		Delay(10);
		PlaySound(643, "Weapons/SpikeShotDeath");

		Radius_Quake(10, 44, 3, 20, 643);
		Radius_Quake(10, 70, 4, 4, 707);
		Delay(8);
		SpawnSpotForced("ExplosionHuge", 643, 0, 0);
		Floor_LowerByValue(645, 32, 184);
		Floor_LowerByValue(704, 24, 134);
		Floor_LowerByValue(705, 16, 134);
		Floor_LowerByValue(704, 12, 134);
		ChangeFloor(640, "Ash2");
		ChangeFloor(639, "STONE12");
		Floor_RaiseByValue(640, 9999, 1);
		Floor_LowerByValue(639, 9999, 1);
		Delay(10);

		Thing_Remove(700);
		Ceiling_RaiseByValue(716, 9999, 108);

		SpawnSpotForced("ExplosionLarge", 708, 0, 0);
		SpawnSpotForced("DustCloud", 709, 0, 0);
		Delay(8);
		SpawnSpotForced("ExplosionHuge", 643, 0, 0);
		Delay(10);
		SpawnSpotForced("ExplosionMedium", 709, 0, 0);
		SpawnSpotForced("DustCloud", 708, 0, 0);
		Delay(6);
		SpawnSpotForced("ExplosionMedium", 708, 0, 0);
		Radius_Quake(8, 105, 0, 20, 643);
		SetMusic("HTrack05", 0, 0);
		If(IsTIDUsed(702) && GetActorProperty(702, APROP_Health) > 0 && CheckProximity(0, "IDFixerStationary", 640.0))
		{
        Hudmessage(s:"Fixer:    Breach! Go! Go! Go!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	    }
		If(IsTIDUsed(701) && GetActorProperty(701, APROP_Health) > 0)
		{
			Thing_Remove(701);
			SpawnSpotForced("IDWitch", 619, 691, 0);
		}
		If(IsTIDUsed(702) && GetActorProperty(702, APROP_Health) > 0)
		{
			Thing_Remove(702);
			SpawnSpotForced("IDFixer", 620, 691, 0);
		}
		Delay(8);
		SpawnSpotForced("ExplosionLarge", 708, 0, 0);
		SpawnSpotForced("DustCloud", 709, 0, 0);
		Delay(8);
		SpawnSpotForced("ExplosionHuge", 643, 0, 0);
		Delay(10);
		SpawnSpotForced("ExplosionMedium", 709, 0, 0);
		SpawnSpotForced("DustCloud", 708, 0, 0);
		Delay(6);
		SpawnSpotForced("ExplosionMedium", 708, 0, 0);
}

//Demon Alert
Script 218 (void)
{
	Hudmessage(s:"Lord Igrutius:    The orcs are attacking! Take defensive positions you filthy thralls!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 6.5, 0.2, 0.5);
    PlaySound(720, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
}

//Igrutius Flee
Script 235 (void)
{
	SetLineSpecial(649, 0, 0, 0, 0, 0, 0);

	HudmessageBold(s:"Lord Igrutius:    Stop them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 2.5, 0.2, 0.5);
    PlaySound(792, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Delay(10*35);

	HudmessageBold(s:"Lord Igrutius:    ARRRGH!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 2.5, 0.2, 0.5);
    PlaySound(792, "PitLord/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Delay(35);

	SpawnSpotForced("HedonTeleportFogDemon", 792, 0, 0);
	PlaySound(792, "misc/teleport", CHAN_AUTO);
	Thing_Remove(792);
}

//Flame Tower Deactivation
Script 219 (void)
{
	If(GetSectorFloorZ(718, 0, 0) == -316.0)
	{
		Floor_RaiseByValue(718, 1, 6);
	}
	else
	If(GetSectorFloorZ(718, 0, 0) > -316.0)
	{
		TagWait(718);
		Floor_RaiseByValue(718, 1, 12);
		TagWait(718);
		Thing_Remove(746);
		Delay(16);
		Radius_Quake(1, 175, 0, 20, 720);
		Delay(175);
		Radius_Quake(5, 56, 1, 20, 720);
		Floor_LowerByValue(721, 9999, 64);
		TakeInventory("QuestMap13AssaultDemonTown", 1);
		SpawnSpotForced("ExplosionHuge", 720, 0, 0);
		Delay(8);
		SpawnSpotForced("ExplosionLarge", 722, 0, 0);
		Delay(16);
		SpawnSpotForced("ExplosionMedium", 720, 0, 0);
		Delay(10);
		SpawnSpotForced("ExplosionLarge", 723, 0, 0);
		Delay(12);
		SpawnSpotForced("ExplosionMedium", 724, 0, 0);
		Delay(8);
		SpawnSpotForced("ExplosionMedium", 725, 0, 0);
		Radius_Quake(3, 105, 0, 20, 720);
		Delay(35);
		Floor_LowerByValue(719, 16, 272);
		Floor_LowerByValue(726, 8, 136);
		Delay(105);

		SpawnSpotForced("IDReaverStationary", 727, 0, 64);
		Thing_Activate(728);
		Delay(50);
		SpawnSpotForced("IDBearWarriorStationary", 729, 0, 64);
		Thing_Activate(730);
		Delay(105);
		Thing_Activate(731);
		SpawnSpotForced("IDEarthMotherStationary", 732, 0, 64);
		SpawnSpotForced("IDWitchStationary", 744, 0, 64);

		If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
		{
			SpawnSpotForced("IDLancerStationary", 733, 0, 64);
		}

		SpawnSpotForced("DwarfShieldguard", 734, 0, 64);
		SpawnSpotForced("MinotaurAxeman", 735, 0, 64);

		SpawnSpotForced("NPCMurguthRegular", 736, 0, 128);
		SpawnSpotForced("NPCJaromirBattle", 737, 0, 64);
		SpawnSpotForced("NPCGrundRegular", 738, 739, 128);
		SpawnSpotForced("NPCGrundWargGuarding", 807, 0, 128);
		SpawnSpotForced("NPCEraantheRegular", 741, 0, 64);

		Delay(175);
		Thing_Destroy(728, 0, 0);
		Thing_Destroy(730, 0, 0);
		Thing_Destroy(731, 0, 0);
		Delay(70);

		Radius_Quake(2, 70, 0, 10, 720);
		SpawnSpotForced("ExplosionHuge", 742, 0, 0);
		Delay(8);
		Floor_LowerByValue(743, 9999, 118);
		Thing_Remove(714);
		Thing_Activate(712);
		SpawnSpotForced("LightDemonBrazzier",715, 0, 0);
		SpawnSpotForced("ExplosionLarge", 742, 0, 0);
		Delay(16);
		SpawnSpotForced("ExplosionMedium", 742, 0, 0);
		Delay(10);
	}

}

//Ending
Script 220 (void)
{
	PlaySound(739, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Warlord Grund:    Earth's might, Bonebreaker, you got us past the gates! Hold your axes high, vengeance draws near!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_TAN, 1.5, 0.86, 7.5, 0.2, 2.5);
	Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 5.0);
	Delay(3*35);
	ACS_Execute(48, 0, 0, 0, 0);
	Delay(3*35);
	ACS_NamedExecuteWithResult("FriendlyCounter");
	Delay(4);
	TakeInventory("InventoryPickAxe", 1);
	TakeInventory("InventoryDarkIronOre", 6);
	TakeInventory("InventoryIronOre", 20);
	TakeInventory("InventoryIronLever", 1);
	TakeInventory("InventorySpiritGem", 2);
	TakeInventory("InventoryScrollCase", 1);
	TakeInventory("InventoryDwarvenLockbox", 1);
	TakeInventory("InventoryMysteriousRecipe", 1);
	TakeInventory("InventoryGiantRuby", 6);
	TakeInventory("InventoryCyanCrystal", 3);
	TakeInventory("InventoryMithrilGear", 1);
	TakeInventory("InventoryFireFigurine", 6);
	TakeInventory("InventoryDwarvenSuit", 2);
	TakeInventory("InventoryDwarvenMask", 1);
	TakeInventory("InventoryDwarvenTank", 1);
	TakeInventory("InventoryEmptyDwarvenTank", 1);
	Delay(1);
	//ChangeLevel("Map16", 0, 0, -1);
	Exit_Normal(0);
}