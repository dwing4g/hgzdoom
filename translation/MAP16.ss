#include "zcommon.acs"

//Gold - 60

//LEVEL START
Script 1 ENTER
{
	ACS_NamedExecuteWithResult("FriendlySpawner");

	//Actor Changes
	SetActorFlag(53, "NOINTERACTION", 1);

	SetActorFlag(236, "INVISIBLE", 1);
    SetActorFlag(236, "NOBLOCKMAP", 1);

	//SetActorFlag(247, "NOPAIN", 1);
	SetActorFlag(247, "FULLVOLACTIVE", 1);
	SetActorFlag(249, "NOFEAR", 1);

    SetActorFlag(253, "COUNTITEM", 0);
	SetActorFlag(253, "NOINTERACTION", 1);
	SetActorFlag(253, "DONTTHRUST", 1);

	SetActorFlag(277, "BUDDHA", 1);

	SetActorFlag(336, "FLOATBOB", 1);
	SetActorFlag(336, "NOBLOCKMAP", 1);

	//Start
	//Delay(35);
	FadeTo(0, 0, 0, 1.0, 0.0);
	FadeTo(0, 0, 0, 0.0, 3.0);

	SpawnSpotForced("BoltMag", 257, 0, 0);

	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
	{
		SpawnSpotForced("IDLancerRecruitable", 254, 692, 128);
		If(GameSkill() >= Skill_Very_Hard)
		{
			SpawnSpotForced("IDBearWarriorRecruitable", 255, 694, 160);
		}
	}
	else
	{
		SpawnSpotForced("IDBearWarriorRecruitable", 254, 693, 128);
		SpawnSpotForced("IDBearWarriorRecruitable", 255, 694, 160);
	}

	If(CheckInventory("QuestMap13GetDarkIron") == 1)
	{
		SpawnSpotForced("IDReaverRecruitable", 262, 695, 0);
		Thing_Destroy(263, 0, 0);
	}

	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 0.6, 0, 0.18);
	Delay(25);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 0.7, 0, 0.18);
	Delay(20);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 0.8, 0, 0.18);
	Delay(28);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 0.9, 0, 0.18);
	Delay(22);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.18);
	Delay(28);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.18);
	Delay(20);
	PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.18);
}
Script 38 (void)
{
	SetLineSpecial(256, 0, 0, 0, 0, 0, 0);
	SetMusic("HTrack28");

	Delay(24);

	If(IsTIDUsed(692))
	{
		PlaySound(692, "Lancer/Ha", CHAN_AUTO);
	    Hudmessage(s:"Crystal Curator:    Looks like we're reunited on the battlefield, warrior. Time to do what we do best."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 1.5);
	}
	else
	{
		PlaySound(693, "BearWarrior/Rage1", CHAN_AUTO);
		PlaySound(694, "BearWarrior/Rage2", CHAN_AUTO);
		Hudmessage(s:"Bear Warrior:    Strength and blood, Bonebreaker! The battle awaits us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 1.5);
	}
}


//LEVEL END
Script 52 (void)
{
	Thing_Remove(340);
	SetActorProperty(0, APROP_Speed, 0.0);
	ACS_Execute(48, 0, 0, 0, 0);

	PlaySound(341, "Eraanthe/Urgh", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Noisy oaf! Your chaotic assault almost got me caught! Learn to be more subtle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_RED, 1.5, 0.82, 5.5, 0.2, 0.5);
	Delay(6*35);

	PlaySound(341, "Eraanthe/Mmf", CHAN_AUTO);
    Hudmessage(s:"What are you gawking at? Help me get the engine started, we can still catch up to the Baron's fleet!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_RED, 1.5, 0.82, 5.5, 0.2, 1.5);
	Delay(4*35);

	FadeTo(0, 0, 0, 1.0, 3.0);
	Delay(4*35);

    SetActorProperty(0, APROP_Speed, 1.0);
	CancelFade();
	ACS_NamedExecuteWithResult("FriendlyCounter");
	Delay(8);
	If((CheckInventory("IDLancerCounter") == 0 && IsTIDUsed(692) == 0) || (GetActorProperty(692, APROP_Health) <= 0 && IsTIDUsed(692)))
	{
		TakeInventory("ScriptCrystalCuratorHasSurvived", 1);
	}
	Delay(4);
	Exit_Normal(0);
}






//BOSS FIGHT
//Guardian of Hell Health Bar
int mtid = 278;

Script 100 (void)  //after tutorial made by Apothem
{
    int hdisp;
    int monhp = GetActorProperty (mtid, APROP_HEALTH);
    int mmaxhp = GetActorProperty (mtid, APROP_SPAWNHEALTH);
    SetFont ("NORMAL");
    hdisp = (monhp * 100 / mmaxhp);
    if (hdisp <= 0)
        hdisp = 0;

    SetHudSize (1366, 768, TRUE);//(1366, 768, FALSE);
    HudMessage (i:hdisp; HUDMSG_FADEOUT, 101, CR_WHITE, 10.0, 48.0, 0.1, 1.0);

    int acounter;
    int bcounter;

	SetFont ("OLAYCERA");
    HudMessage (s:"a"; HUDMSG_FADEOUT, 103, CR_UNTRANSLATED, 80.0, 50.0, 0.1, 1.0);

    SetFont ("BIGFONT");
    HudMessage (s:"Guardian of Hell"; HUDMSG_FADEOUT, 102, CR_BLACK, 100.0, 22.0, 0.1, 1.0);

    for (acounter = 0; acounter <= hdisp; acounter++)
    {
        if (hdisp <= 0)
            break;

        bcounter = bcounter + 2.0;
        SetFont ("BARGREEN");

        if (hdisp < 80)
            SetFont ("BARYELOW");

        if (hdisp < 50)
            SetFont ("BARORANG");

        if (hdisp < 30)
            SetFont ("BARRED");

        HudMessage (s:"a"; HUDMSG_FADEOUT, acounter, CR_GREEN, 30.0 + bcounter, 48.0, 0.1, 1.0);
    }
    bcounter = 0;
    acounter = 0;
    Delay (1);
    Restart;
}
//Starter
Script 30 (void)
{
	SetLineSpecial(230, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(231, BLOCKF_PLAYERS, 0);
	//PlaySound(232, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
    //Hudmessage(s:"Blue Baron:    *Murmurs*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.90, 0.5, 1.0, 1.5);
	Radius_Quake(2, 60, 0, 1, 0);
	SetMusic("HTrack29");
	//FadeTo(255, 0, 0, 1.0, 1.5);
	//ACS_Execute(48, 0, 0, 0, 0);
	//PlaySound(0, "Music/TheBridgeIntro", CHAN_AUTO, 1.0);
	Delay(24);
	//SetActorState(663, "Pain", 0);
	Delay(24);
	//SetActorState(663, "Pain", 0);
	//FadeTo(255, 0, 0, 1.0, 0.4);
	Delay(12);
	Radius_Quake(6, 50, 0, 1, 0);
	//FadeTo(0, 0, 0, 0.0, 1.0);
	SetActorState(664, "Melee", 0);
	Delay(8);
	Hudmessage(s:"Lord Igrutius:    ATAAAAACK!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.82, 2.5, 0.2, 1.5);
	PlaySound(664, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SetActorState(664, "Melee", 0);
	Thing_Remove(245);
	Delay(8);
	//SetActorState(663, "See", 0);
	SetActorState(664, "Melee", 0);
	Delay(8);
	PlaySound(664, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SetActorState(664, "Melee", 0);
	Delay(8);
	Thing_Activate(664);
	Thing_Activate(662);
	Delay(4);
	NoiseAlert(0, 0);

	Line_SetBlocking(231, BLOCKF_EVERYTHING, 0);
	ACS_Execute(31, 0, 0, 0, 0);

	Delay(2*35);

	If(CheckInventory("PowerChokeroftheBeastB") > 0)
	{
		Hudmessage(s:"Hmmh?... Why are you fleeing, you fools?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.82, 2.5, 0.2, 0.5);
		PlaySound(664, "PitLord/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(3*35);
		Hudmessage(s:"ARRGH, darn you and your trinkets, Halfblood!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.82, 3.5, 0.2, 0.5);
		PlaySound(664, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(2*35);
	}

	Delay(2*35);

	If(CheckProximity(0, "IDLancer", 1600.0, 1) || CheckProximity(0, "IDLancerGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Crystal Curator:    FOR OUR HONOR! FOR OUR HOME! CHARGE!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDEarthMother", 1600.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Earth Mother:    EARTH AND BLOOD! FOR VALC! CHARGE!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDBearWarrior", 1600.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Bear Warrior:    BLOOD AND HONOR! FOR THE IRON DIVISION!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDWitch", 1600.0, 1) || CheckProximity(0, "IDWitchGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Witch:    BRING IT ON, SCUM! YOU'RE GOING DOWN WITH US!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDReaver", 1600.0, 1) || CheckProximity(0, "IDReaverGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Reaver:    For Valc! For our fallen sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixer", 1600.0, 1) || CheckProximity(0, "IDFixerGuarding", 560.0, 1))
	  {
	    Hudmessage(s:"Fixer:    Uh- do we stay and fight?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
}
//Phase 2 Starter
Script 31 (void)
{
	If(ThingCountName("IronMaiden", 662) == 0 && ThingCountName("Conscript", 662) == 0 && ThingCountName("Cultist", 662) == 0 && ThingCountName("Glutton", 662) == 0 && ThingCountName("PitLordCommander", 664) == 0)
	{
		Radius_Quake(5, 210, 0, 1, 0);
		Delay(35);
		PlaySound(232, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"Blue Baron:    The Halfblood enters the board. Many pawns fall before her wrath."; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.5, 0.5);
		FadeTo(255, 0, 0, 1.0, 4.0);
		Delay(105);
		SpawnSpotForced("ExplosionLargeRed", 236, 0, 0);
		Delay(105);
		Radius_Quake(8, 70, 0, 1, 0);

        Sector_SetFade(237, 128, 0, 0);
		SetLineTexture(225, SIDE_FRONT, TEXTURE_BOTTOM, "BloodSpc");
		Scroll_Wall(225, 0, -0.5, 0, 4);
		Floor_RaiseByValue(223, 999, 12);
		Thing_Remove(239);
		Thing_Remove(901);
		Thing_Remove(662);
		Thing_Remove(664);
		//Line_SetBlocking(234, BLOCKF_MONSTERS, 0);
		ChangeFloor(235, "Blood_A1");
		ChangeFloor(224, "BloodSpc");
		SetActorFlag(236, "INVISIBLE", 0);
		Thing_Remove(232);

		FadeTo(0, 0, 0, 0.0, 1.0);
		Delay(70);
		Radius_Quake(1, 175, 0, 1, 0);
		PlaySound(233, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"Blue Baron:    A brash child. She knocks at Hell's gates incessantly... will anyone respond?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 0.5);
		Floor_LowerByValue(238, 3, 140);
		Delay(5*35);
		PlaySound(233, "BlueBaron/Grr", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"The evil Baron makes her wait...it's his home, after all. But look! The dog is eager to see her!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 2.5);

		Delay(4*35);
		ACS_Execute(100, 0, 0, 0, 0);
		PlaySound(278, "Cerberus/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(2*35);
		ACS_Execute(33, 0, 0, 0, 0);
		ACS_Execute(32, 0, 0, 0, 0);
		Thing_Activate(278);
		SetActorFlag(278, "NOPAIN", 1);

		SpawnSpot("Glutton", 242, 663, 192);
		SpawnSpot("HedonTeleportFogDemon", 242, 0, 0);
		PlaySound(242, "misc/teleport", CHAN_AUTO);
		SpawnSpot("Mentalist", 243, 663, 192);
		SpawnSpot("HedonTeleportFogDemon", 243, 0, 0);
		PlaySound(243, "misc/teleport", CHAN_AUTO);

		Terminate;
	}
	Delay(35);
	Restart;
}
//Conscript Spawner
int spec33 = 6;
Script 33 (void)
{
	If(spec33 % 6 == 0)
	{
	SpawnSpot("Glutton", 244, 663, 64);
	SpawnSpot("HedonTeleportFogDemon", 244, 0, 0);
	PlaySound(244, "misc/teleport", CHAN_AUTO);
	}
	spec33 += 1;
	SpawnSpot("Conscript", 241, 663, 192);
	SpawnSpot("HedonTeleportFogDemon", 241, 0, 0);
	PlaySound(241, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);

	Delay(10*35);
	If(GameSkill() == SKILL_VERY_EASY)
	{
		Delay(10*35);
		Restart;
	}
	If(GameSkill() == SKILL_VERY_HARD || GameSkill() > 5)
	{
		Restart;
	}
	Delay(10*35);
	Restart;
}

//Boss Fight Ender
Script 32 (void)
{
	If(GetActorProperty(278, APROP_Health) <= 0)
	{
		ACS_Terminate(100, 0);
		ACS_Terminate(33, 0);

		Delay(35);
		If(CheckProximity(0, "IDLancer", 3000.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
	    {
	    Hudmessage(s:"Crystal Curator:    Your pet has fallen, Baron! And you're next!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.82, 3.5, 0.2, 1.5);
	    }
        else
		If(CheckProximity(0, "IDWitch", 3000.0, 1) || CheckProximity(0, "IDWitchGuarding", 960.0, 1))
		{
	    Hudmessage(s:"Witch:    Aww, no more bodies to throw at us?! You're next, tentacle face!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.82, 3.5, 0.2, 1.5);
		}
		else
		If(CheckProximity(0, "IDBearWarrior", 3000.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 960.0, 1))
		{
	    Hudmessage(s:"Bear Warrior:    ARRRGH, BOW BEFORE THE IRON DIVISION! DO YOU HEAR ME?! WE'RE COMING FOR YOU!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 4.5, 0.2, 1.5);
		}
		else
		If(CheckProximity(0, "IDReaver", 3000.0, 1) || CheckProximity(0, "IDReaverGuarding", 960.0, 1))
		{
	    Hudmessage(s:"Reaver:    Our vengeance draws near! You're next on your list, Baron!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.82, 3.5, 0.2, 1.5);
		}
		else
		If(CheckProximity(0, "IDFixer", 3000.0, 1) || CheckProximity(0, "IDFixerGuarding", 960.0, 1))
		{
	    Hudmessage(s:"Fixer:    Fuck! We survived? We aren't going after him without reinforcements, now, right?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.82, 4.5, 0.2, 1.5);
		}
		else
		If(CheckProximity(0, "IDEarthMother", 3000.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 960.0, 1))
	    {
	    Hudmessage(s:"Earth Mother:    Earth's might! Victory! Witness us, Baron, for we are coming after you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 4.5, 0.2, 1.5);
	    }

		Radius_Quake(1, 175, 0, 1, 0);
		Thing_Destroy(663, 1, 0);
		Delay(5*35);
		FadeTo(255, 0, 0, 1.0, 3.0);
		Delay(3*35);
		Thing_Remove(351);
		//Thing_Remove(901);
		Thing_Remove(236);

		Thing_Remove(286);
		Thing_Remove(675);
		Thing_Remove(672);

		If(GetActorProperty(676, APROP_Health) > 0)
		{
			Thing_Remove(676);
		}
		If(GetActorProperty(674, APROP_Health) > 0)
		{
			Thing_Remove(674);
		}
		If(GetActorProperty(671, APROP_Health) > 0)
		{
			Thing_Remove(671);
		}
		If(GetActorProperty(673, APROP_Health) > 0)
		{
			Thing_Remove(673);
		}

		FadeTo(0, 0, 0, 0.0, 1.0);
		Radius_Quake(5, 70, 0, 1, 0);

		Line_SetBlocking(240, 0, BLOCKF_EVERYTHING);
		Line_SetBlocking(231, 0, BLOCKF_EVERYTHING);
		Line_SetBlocking(231, 0, BLOCKF_PLAYERS);
		SetLineTexture(240, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(231, SIDE_BACK, TEXTURE_MIDDLE, "");
		Autosave();
		Delay(70);
		PlaySound(233, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Hudmessage(s:"Blue Baron:    One loyal hound triumphs over another. The victor is rewarded with an open path to glory."; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Thing_Destroy(233, 0, 0);
		Terminate;
	}
	Delay(35);
	Restart;
}



//THE BRIDGE
Script 45 (void)
{
	Line_SetBlocking(295, 0, BLOCKF_SIGHT);

	PlaySound(294, "BlueBaron/Grr", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"Blue Baron:    ...will you bridge the gap?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 1.5);

	Delay(70);
	Thing_Destroy(294, 0, 0);
	SpawnSpotForced("BlueBaronCinematic", 296, 666, 0);
}

Script 46 (void)
{

	PlaySound(666, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"Blue Baron:    Will you reach the other side? Will you lose your heart?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 1.5);

	Delay(70);
	Thing_Destroy(666, 0, 0);
	SpawnSpotForced("BlueBaronCinematic", 302, 666, 0);
}

Script 47 (void)
{
	SetActorProperty(299, APROP_Speed, 17.0);
}

Script 49 (void)
{
    Line_SetBlocking(303, 0, BLOCKF_MONSTERS);
	PlaySound(666, "BlueBaron/Growl", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"Blue Baron:    The spectacle culminates here. But alas, the Baron has long left his seat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 5.5, 0.2, 1.5);

	Delay(105);

	Ceiling_RaiseByvalue(292, 16, 256);

	Delay(35);
	Thing_Destroy(666, 0, 0);
	SpawnSpotForced("BlueBaronCinematic", 304, 666, 0);
}

Script 50 (void)
{
	PlaySound(666, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"Blue Baron:    Make haste now... the last ship is departing."; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_LIGHTBLUE, 1.5, 0.86, 4.5, 0.2, 2.5);

	Delay(35);
	Thing_Destroy(666, 0, 0);

	ACS_Execute(51, 0, 0, 0, 0);

	Delay(70);
	Autosave();
}

//SHIP REMARK
Script 55 (void)
{
	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Crystal Curator:    I can sense Nithriel's aura fading! She and the Baron must have fled to sea!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDEarthMother", 640.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Earth Mother:    I can sense the Baron's foul presence at sea. Let's take that ship and pursue him!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Bear Warrior:    Look! There's only one ship left, the Baron and his minions must have fled at sea!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDWitch", 640.0, 1) || CheckProximity(0, "IDWitchGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Witch:    Looks like we're too late. Perhaps we can use that ship to chase the Baron at sea?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Reaver:    The Baron's fleet isn't here... he must have fled at sea. Let's grab that boat and chase him!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
	  {
		SetLineSpecial(339, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Fixer:    Uh-oh, I think the Baron's gone. We could use that ship to chase after him at sea..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.82, 6.5, 0.2, 0.5);
	  }
}

//LAVA DAMAGE
Script 51 (void)
{
	SectorDamage(305, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(306, 20, "Lava", "", DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(306, 40, "KillerLava", "", DAMAGE_PLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}

//REAVER TEAM
Script 53 (void)
{
	If(ThingCount(T_NONE, 695) > 0)
	{
		SetLineSpecial(337, 0, 0, 0, 0, 0, 0);
		Hudmessage(s:"Reaver:    Over here, sergeant!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
		PlaySound(695, "Reaver/Huh");
	}
}
Script 54 (void)
{
	If(ThingCount(T_NONE, 695) == 2)
	{
		SetLineSpecial(338, 0, 0, 0, 0, 0, 0);
		Hudmessage(s:"Reaver:    Workshop Boss said you're the one who got the dark iron to fix our guns. We're ready to assist you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
		PlaySound(695, "Reaver/Hm");
	}
	else
	If(ThingCount(T_NONE, 695) == 1)
	{
		SetLineSpecial(338, 0, 0, 0, 0, 0, 0);
		Hudmessage(s:"Reaver:    Workshop Boss said you're the one who got the dark iron parts to fix my gun. I'm ready to assist you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
		PlaySound(695, "Reaver/Hm");
	}
}

//MONSTER SPAWNS
//Rooftops
Script 39 (void)
{
	If(GetActorZ(0) > -376.0)
	{
	SetLineSpecial(258, 0, 0, 0, 0, 0, 0);
	Delay(8*35);

	SpawnSpot("Hellblaze", 260, 0, 0);
	SpawnSpot("HedonTeleportFogDemon", 260, 0, 0);
	PlaySound(260, "misc/teleport", CHAN_AUTO);
	SpawnSpot("Hellion", 261, 0, 0);
	SpawnSpot("HedonTeleportFogDemon", 261, 0, 0);
	PlaySound(261, "misc/teleport", CHAN_AUTO);

	Delay(2*35);
	Thing_Spawn(259, 65010, 0, 0);
	}
}

//Bell Tower Square
Script 41 (void)
{
	If(CheckInventory("GoldenKey") > 0)
	{
	SetLineSpecial(267, 0, 0, 0, 0, 0, 0);
	Radius_Quake(1, 210, 0, 1, 0);

	Floor_LowerToNearest(276, 999);
	SetLineSpecial(64, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("Cultist", 261, 0, 64);
	SpawnSpotForced("SniperCultist", 284, 0, 128);
	SpawnSpotForced("Hellion", 345, 0, 128);

	Delay(105);

	SpawnSpot("Glutton", 268, 0, 192);
	SpawnSpot("HedonTeleportFogDemon", 268, 0, 0);
	PlaySound(268, "misc/teleport", CHAN_AUTO);

	SpawnSpot("PsiDemon", 269, 0, 0);
	SpawnSpot("HedonTeleportFogDemon", 269, 0, 0);
	PlaySound(269, "misc/teleport", CHAN_AUTO);

	Delay(35);
	SpawnSpot("Cerberus", 270, 0, 0);
	SpawnSpot("HedonTeleportFogDemon", 270, 0, 0);
	PlaySound(270, "misc/teleport", CHAN_AUTO);

	Delay(4*35);
	SpawnSpot("Cerberus", 271, 0, 128);
	SpawnSpot("HedonTeleportFogDemon", 271, 0, 0);
	PlaySound(271, "misc/teleport", CHAN_AUTO);
	SpawnSpot("PitLord", 272, 0, 128);
	SpawnSpot("HedonTeleportFogDemon", 272, 0, 0);
	PlaySound(272, "misc/teleport", CHAN_AUTO);
	Delay(1);
	NoiseAlert(0, 0);

	Delay(3*35);
	SpawnSpot("Hellblaze", 273, 0, 128);
	SpawnSpot("HedonTeleportFogDemon", 273, 0, 0);
	PlaySound(273, "misc/teleport", CHAN_AUTO);
	Delay(1);
	NoiseAlert(0, 0);
	}
}

//MAIDEN SCHOOL DOOR
Script 42 (void)
{
	Generic_Door(70, 16, 0, 240, 0);
}

//PRISON
//Torture Chamber
Script 35 (void)
{
	If(GetActorProperty(247, APROP_Health) <= 0)
	{
		Delay(70);
		If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
		{
	    Hudmessage(s:"Reaver:    Fat bastard!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.82, 2.5, 0.2, 0.5);
		Terminate;
		}
		else
		If(CheckProximity(0, "IDFixer", 640.0, 1) || CheckProximity(0, "IDFixerGuarding", 640.0, 1))
		{
	    Hudmessage(s:"Fixer:    Ugh! I'm gonna throw up..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.82, 2.5, 0.2, 0.5);
		Terminate;
		}
		else
		If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 640.0, 1))
		{
	    Hudmessage(s:"Bear Warrior:    The fuck was that abomination?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.82, 2.5, 0.2, 0.5);
		Terminate;
		}
	}
	Delay(16);
	Restart;
}
Script 34 (void)
{
	If(CheckProximity(0, "IDWitch", 640.0, 1) || CheckProximity(0, "IDWitchGuarding", 640.0, 1))
		{
		SetLineSpecial(248, 0, 0, 0, 0, 0, 0);
	    Hudmessage(s:"Witch:    This torture chamber... such a cruel exhibition of flesh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
		Delay(4*35);
		  If(CheckProximity(0, "IDEarthMother", 640.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 640.0, 1))
	      {
	      Hudmessage(s:"Earth Mother:    It certainly puts your laboratories to shame, Witch."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 1.0);
	      }
		}
}
Script 36 (void)
{
	Line_SetBlocking(246, 0, BLOCKF_SIGHT);
	Line_SetBlocking(246, 0, BLOCKF_MONSTERS);
	Thing_Activate(250);
}
Script 37 (void)
{
	If(CheckInventory("BloodyAxeKey") > 0)
	{
	SetLineSpecial(252, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("Golem", 251, 0, 192);
	}
	/*If(ThingCount(T_NONE, 250) > 0)
	{
	If(CheckProximity(0, "IDLancer", 460.0, 1) || CheckProximity(0, "IDLancerGuarding", 160.0, 1))
	    {
	    Hudmessage(s:"Crystal Curator:    Sounds like our sisters are fighting outside! We must aid them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
        else
		If(CheckProximity(0, "IDEarthMother", 460.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 160.0, 1))
	    {
	    Hudmessage(s:"Earth Mother:    Sounds like our sisters are fighting outside! We must aid them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
		else
		If(CheckProximity(0, "IDReaver", 460.0, 1) || CheckProximity(0, "IDReaverGuarding", 160.0, 1))
		{
	    Hudmessage(s:"Reaver:    Looks like our forces are pinned down on the far side of the square. Let's give them a hand!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDBearWarrior", 460.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 160.0, 1))
		{
	    Hudmessage(s:"Bear Warrior:    Our sisters have made it to the other side of the square! Rrrargh, let's join the battle!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
	}
	*/
}
//Cell Levers
Script 27 (void)
{
	If(GetActorProperty(85, APROP_Health) > 0)
	{
		PlaySound(85, "Cultist/Sight", CHAN_AUTO);
		ACS_Execute(24, 0, 0, 0, 0);
		Delay(10);
		ACS_Execute(25, 0, 0, 0, 0);
		Delay(10);
		ACS_Execute(26, 0, 0, 0, 0);
		Delay(10);
	}
}
Script 24 (void)
{
	If(GetSectorFloorZ(181, 0, 0) == -342.0)
	{
	SetActorPitch(82, 0.65);
	PlaySound(82, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_RaiseByValue(181, 16, 80);
	Ceiling_RaiseByValue(173, 16, 80);
	TagWait(173);
	}
	else
	If(GetSectorFloorZ(181, 0, 0) == -262.0)
	{
	SetActorPitch(82, 0.75);
	PlaySound(82, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_LowerByValue(181, 16, 80);
	Ceiling_LowerByValue(173, 16, 80);
	TagWait(173);
	}
}
Script 25 (void)
{
	If(GetSectorFloorZ(183, 0, 0) == -342.0)
	{
	SetActorPitch(83, 0.65);
	PlaySound(83, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_RaiseByValue(183, 16, 80);
	Ceiling_RaiseByValue(182, 16, 80);
	TagWait(182);
	}
	else
	If(GetSectorFloorZ(183, 0, 0) == -262.0)
	{
	SetActorPitch(83, 0.75);
	PlaySound(83, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_LowerByValue(183, 16, 80);
	Ceiling_LowerByValue(182, 16, 80);
	TagWait(182);
	}
}
Script 26 (void)
{
	If(GetSectorFloorZ(185, 0, 0) == -342.0)
	{
	SetActorPitch(84, 0.65);
	PlaySound(84, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_RaiseByValue(185, 16, 80);
	Ceiling_RaiseByValue(184, 16, 80);
	TagWait(184);
	}
	else
	If(GetSectorFloorZ(185, 0, 0) == -262.0)
	{
	SetActorPitch(84, 0.75);
	PlaySound(84, "Interaction/MachineOn");
	Delay(16);
	FloorAndCeiling_LowerByValue(185, 16, 80);
	Ceiling_LowerByValue(184, 16, 80);
	TagWait(184);
	}
}

//RELOADING MACHINE
Script 20 (void)
{
	If(CheckInventory("InventoryLargeShellWarhead") > 0 && IsTIDUSed(660))
	{
		SetLineSpecial(155, 0, 0, 0, 0, 0, 0);

		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");

		TakeInventory("InventoryLargeShellWarhead", 1);

		PlaySound(660, "Metal/Bounce", CHAN_AUTO);
		Thing_Remove(660);

		SpawnSpotForced("AmmoBullet", 154, 661, 0);
		SetActorProperty(661, APROP_ScaleX, 1.5);
		SetActorProperty(661, APROP_ScaleY, 1.2);
		SetActorFlag(661, "COUNTITEM", 0);
	    SetActorFlag(661, "NOINTERACTION", 1);

		Delay(16);

		SetActorPitch(156, 0.65);
	    PlaySound(156, "Interaction/MachineOn");
		Delay(16);
		Ceiling_LowerByValue(163, 8, 24);
		TagWait(163);
		PlaySound(661, "Metal/Land", CHAN_AUTO);
		Delay(16);
		SetActorPitch(156, 0.75);
	    PlaySound(156, "Interaction/MachineOn");
		Ceiling_RaiseByValue(163, 8, 24);
		TagWait(163);
		Thing_Remove(661);
        SpawnSpotForced("InventoryLargeShell", 154, 0, 0);

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("InventoryLargeShellCasing") > 0 && IsTIDUSed(660) == 0)
	{
		SetActorProperty(0, APROP_SPEED, 0.0);
		Delay(4);
	    SetActorProperty(0, APROP_Friction, 0.1);
		SetWeapon("Fists");

		TakeInventory("InventoryLargeShellCasing", 1);
		PlaySound(154, "Metal/Land", CHAN_AUTO);
		SpawnSpotForced("JunkBulletCasing", 154, 660, 0);
		SetActorProperty(660, APROP_ScaleX, 1.5);
		SetActorProperty(660, APROP_ScaleY, 1.2);

		Delay(24);
		PlaySound(157, "Inventory/PickBase", CHAN_AUTO);
		SetActorFlag(157, "INVISIBLE", 1);
		Delay(24);

		FloorAndCeiling_lowerByValue(162, 9999, 24);

		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(4);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(6);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(3);
		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(5);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(6);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(7);
		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(1);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(6);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(3);
		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(5);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(9);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(2);
		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(3);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(6);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(4);
		SpawnSpotForced("HellPowderParticle", 158, 0, 0);
		Delay(4);
		SpawnSpotForced("HellPowderParticle", 159, 0, 0);
		Delay(6);
		SpawnSpotForced("HellPowderParticle", 160, 0, 0);
		Delay(5);

		Delay(12);
		FloorAndCeiling_RaiseByValue(162, 9999, 24);
		PlaySound(157, "Inventory/PickShort", CHAN_AUTO);
		SetActorFlag(157, "INVISIBLE", 0);

		If(CheckInventory("InventoryLargeShellWarhead") > 0)
		{
			Restart;
		}

		SetActorProperty(0, APROP_SPEED, 1.0);
	    SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(IsTIDUsed(660))
		{
		Print(s:"The shell is loaded with hell powder and ready to have a large caliber warhead attached.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
		}
	else
	If(IsTIDUSed(660) == 0 && CheckInventory("InventoryLargeShellWarhead") > 0)
		{
		Print(s:"You don't have a proper shell casing to attach the warhead to.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
		}
	else
		{
		Print(s:"The shell reloading device looks ready for use.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
		}
}

//CANNON
int spec28 = 0;
Script 28 (void)
{
	If(spec28 > 0)
	{
		SetLineSpecial(86, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(285, 0, 0, 0, 0, 0, 0);
		FloorAndCeiling_LowerByValue(199, 999, 64);
		FloorAndCeiling_LowerByValue(196, 999, 64);
		FloorAndCeiling_LowerByValue(203, 999, 64);
		FloorAndCeiling_RaiseByValue(197, 999, 64);
		ChangeFloor(201, "Iron1_G");
		PlaySound(186, "Metal/Land", CHAN_AUTO);

		Delay(4);
		SpawnSpotForced("DustPuff", 202, 0, 0);
		SpawnSpotForced("ExplosionLargeRed", 187, 0, 0);
		PlaySound(0, "Music/TheBridgeIntro", CHAN_AUTO, 1.0);
		SetMusic("");
		Thing_Activate(239);
		PlaySound(187, "Ambient/Impact", CHAN_AUTO, 2.0);
		PlaySound(186, "Ambient/Impact", CHAN_AUTO, 2.0);

		Radius_Quake(10, 35, 1, 10, 187);
		ThrustThing(192, 20, 0, 0);
		ThrustThingZ(0, 5, 0, 1);
		Delay(10);
		Floor_LowerByValue(204, 999, 239);
		//Delay(25);
		SpawnSpotForced("ExplosionHuge", 205, 0, 0);
		Delay(10);
		SpawnSpotForced("DustCloud", 207, 0, 0);
		SpawnSpotForced("ExplosionHuge", 206, 0, 0);
		Delay(5);
		SpawnSpotForced("ExplosionHuge", 207, 0, 0);
		Delay(5);
		SpawnSpotForced("DustCloud", 206, 0, 0);
		SpawnSpotForced("ExplosionLarge", 205, 0, 0);
		Delay(5);
		Radius_Quake(6, 70, 0, 30, 205);

		Delay(5);
		SpawnSpotForced("ExplosionMedium", 206, 0, 0);
		Delay(5);
		SpawnSpotForced("DustCloud", 207, 0, 0);
		Delay(5);

		Thing_Destroy(212, 1, 0);
		Thing_Damage2(213, 1000, "Fire");

		Delay(105);

		If(CheckProximity(0, "IDEarthMother", 360.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 360.0, 1))
	    {
	    Hudmessage(s:"Earth Mother:    The Baron is so close! I can sense his wretched aura!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    }
	    else
		If(CheckProximity(0, "IDLancer", 360.0, 1) || CheckProximity(0, "IDLancerGuarding", 360.0, 1))
	    {
	    Hudmessage(s:"Crystal Curator:    Onwards! I can sense the Baron nearby!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	    }
	    else
		If(CheckProximity(0, "IDReaver", 360.0, 1) || CheckProximity(0, "IDReaverGuarding", 360.0, 1))
	    {
		Hudmessage(s:"Reaver:    Now that's a punch! Time to finish them off!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	    }
	    else
		If(CheckProximity(0, "IDFixer", 360.0, 1) || CheckProximity(0, "IDFixerGuarding", 360.0, 1))
	    {
	    Hudmessage(s:"Fixer:    Ka-boom!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 0.5);
	    }
		else
	    If(CheckProximity(0, "IDWitch", 360.0, 1) || CheckProximity(0, "IDWitchGuarding", 360.0, 1))
	    {
	    Hudmessage(s:"Witch:    BOOM! Hahahaha!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.5, 0.2, 0.5);
	    }
		else
        If(CheckProximity(0, "IDBearWarrior", 360.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 360.0, 1))
	    {
	    Hudmessage(s:"Bear Warrior:    Push forward! Let's finish them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	    }
	}
	else
	If(CheckInventory("InventoryLargeShell") > 0 && spec28 == 0)
	{
		SetWeapon("Fists");
		TakeInventory("InventoryLargeShell", 1);

		PlaySound(186, "Metal/Land", CHAN_AUTO);

		FloorAndCeiling_LowerByValue(194, 999, 64);

		Delay(1);

		ChangeFloor(200, "Iron1_G");
		FloorAndCeiling_RaiseByValue(195, 999, 64);
		FloorAndCeiling_RaiseByValue(203, 999, 64);
		FloorAndCeiling_RaiseByValue(196, 999, 64);
		FloorAndCeiling_RaiseByValue(199, 999, 64);


		PlaySound(186, "Metal/Bounce2", CHAN_AUTO);

		spec28 += 1;
	}
	else
	{
		Print(s:"You don't have any loaded shell to fire from this cannon.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(50);
	}
}

//GARDEN WALL EXPLOSION & AMBUSH
Script 21 (void)
{
	If(GetSectorCeilingZ(169, 0, 0) == -280.0)
	{
    SetLineSpecial(89, 0, 0, 0, 0, 0, 0);
	Radius_Quake(5, 64, 2, 20, 164);
	SpawnSpotForced("ExplosionMedium", 166, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionLarge", 165, 0, 0);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 168, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 167, 0, 0);
	SpawnSpotForced("DustCloud", 168, 0, 0);
	SpawnSpotForced("DustCloud", 166, 0, 0);
	FloorAndCeiling_LowerByValue(169, 9999, 300);
	ChangeFloor(171, "Ash2");
	ChangeFloor(172, "Ash2");
	ChangeFloor(174, "Ash2");
	Floor_RaiseByValue(171, 9999, random(6,12));
	Floor_RaiseByValue(172, 9999, random(8,14));
	Floor_RaiseByValue(174, 9999, random(12,16));

	Thing_Activate(164);

	Delay(16);
	SpawnSpotForced("ExplosionLarge", 166, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionMedium", 165, 0, 0);
	Radius_Quake(3, 105, 0, 10, 164);

	Delay(35);

	SpawnSpot("Hellblaze", 170, 0, 0);
	SpawnSpot("HedonTeleportFogDemon", 170, 0, 0);
	PlaySound(170, "misc/teleport", CHAN_AUTO);

	Delay(4);
	NoiseAlert(0, 0);
	}
}

//WINDOW BREAK
Script 22 (void)
{
	SetLineSpecial(175, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(176, 0, 0, 0, 0, 0, 0);
	Thing_Remove(180);
	SetLineTexture(176, SIDE_FRONT, TEXTURE_MIDDLE, "Window11");
	SetLineTexture(176, SIDE_BACK, TEXTURE_MIDDLE, "Window11");
	Line_SetBlocking(176, 0, BLOCKF_EVERYTHING);
	SpawnSpot("JunkBrokenGlassA", 178);
	SpawnSpot("JunkBrokenGlassA", 177);
	SpawnSpot("JunkBrokenGlassB", 179);
	PlaySound(177, "Weapons/PotionDie");
	SpawnSpotForced("DustCloud", 177, 0, 0);

	ACS_Execute(21, 0, 0, 0, 0);
}

Script 23 (void)
{
	Print(s:"The cracked window looks like it could be easily shattered.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(50);
}

//IGRUTIUS
Script 43 (void)
{
	SetLineSpecial(280, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Lord Igrutius:    Imbeciles! Why did you bring the experimental cannon?! Can't you see none of the shells are loaded!?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 4.5, 0.2, 0.5);
	PlaySound(279, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Delay(5*35);

	Hudmessage(s:"Lord Igrutius:    And why is it facing the wrong door?! Take it away!!! GRRRH!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 4.5, 0.2, 0.5);
	PlaySound(279, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);

	Delay(3*35);

	SpawnSpot("HedonTeleportFogDemon", 277, 0, 0);
	PlaySound(277, "misc/teleport", CHAN_AUTO);
	Thing_Remove(277);
}

//GOLEM AMBUSH (ACADEMY)
Script 44 (void)
{
	If(CheckInventory("InventoryLargeShell") > 0)
	{
		SetLineSpecial(281, 0, 0, 0, 0, 0, 0);
		Thing_Spawn(343, 65010, 192, 0);
		Delay(50);
		Thing_Spawn(344, 65010, 64, 0);
		Delay(90);
		Floor_LowerByValue(137, 24, 144);
		TagWait(137);
		ThrustThing(128, 15, 0, 282);
		ThrustThing(0, 15, 0, 283);
		Thing_Activate(282);
		Thing_Activate(283);
	}
}

//CHANDELIER CHAIN
Script 6 (void)
{
	If(GetActorZ(0) > -340.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
		Delay(50);
	}
}

Script 12 (void)
{
	If(GetActorZ(0) > -26.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
		Delay(50);
	}
}
Script 13 (void)
{
	If(GetActorZ(0) > -26.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.2);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.7);
		Delay(50);
	}
}

Script 15 (void)
{
	If(GetActorZ(0) > -330.0 && GetActorZ(0) < -266.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
		Delay(50);
	}
}

//TOWER BELL RING
int spec16 = 0;
Script 16 (void)
{
	If(GetActorZ(0) > -298.0 && GetActorZ(0) < -250.0)
	{
	  Radius_Quake(2, 16, 0, 3, 65);
	  PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	  Delay(16);
	  If(spec16 == 0)
	  {
		spec16 += 1;
		Radius_Quake(2, 50, 0, 3, 65);
		PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	    Delay(16);
	    PlaySound(65, "Interaction/Bell", CHAN_AUTO, 1.0, 0, 0.3);
	    Delay(16);
		Radius_Quake(1, 105, 0, 1, 0);
		Delay(35);
	    SpawnSpot("Hellblaze", 266, 0, 0);
	    SpawnSpot("HedonTeleportFogDemon", 266, 0, 0);
        PlaySound(266, "misc/teleport", CHAN_AUTO);
		SpawnSpot("Hellion", 265, 0, 0);
	    SpawnSpot("HedonTeleportFogDemon", 265, 0, 0);
        PlaySound(265, "misc/teleport", CHAN_AUTO);
		Delay(4);
		NoiseAlert(0, 0);
	  }
	}
}

//PORT FEAR
Script 58 (void)
{
	Delay(35);
	If(GetActorProperty(347, APROP_Health) > 0)
	{
			SetActorFlag(347, "FRIGHTENED", 1);
			SetActorProperty(347, APROP_Speed, 19.0);
			PlaySound(347, "FemaleBurning/Pain", CHAN_AUTO, 1.0, false, 12);

			Delay(70);

		If(CheckProximity(0, "IDBearWarrior", 960.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 960.0, 1))
		{
			Hudmessage(s:"Bear Warrior:    They're trying to run!!! CRUSH THEM! NO SURVIVORS!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDWitch", 960.0, 1) || CheckProximity(0, "IDWitchGuarding", 960.0, 1))
		{
			Hudmessage(s:"Witch:    Hahaha, look at them flee! You can run, but can you hide?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDLancer", 960.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
		{
			Hudmessage(s:"Crystal Curator:    Our valor is striking fear into their hearts! Onwards!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDEarthMother", 960.0, 1) || CheckProximity(0, "IDEarthMotherGuarding", 960.0, 1))
		{
			Hudmessage(s:"Earth Mother:    Face the fury of the Earthborn, humans! You have nowhere left to run!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDReaver", 960.0, 1) || CheckProximity(0, "IDReaverGuarding", 960.0, 1))
		{
			Hudmessage(s:"Reaver:    Looks like they're fleeing! Let's finish them off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
		else
		If(CheckProximity(0, "IDFixer", 960.0, 1) || CheckProximity(0, "IDFixerGuarding", 960.0, 1))
		{
			Hudmessage(s:"Fixer:    Look! They're fleeing! Does this mean we won?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
		}
	}
}
Script 57 (void)
{
	If(GameSkill() <= 3 || GameSkill() == 5)
	{
	    SetLineSpecial(348, 0, 0, 0, 0, 0, 0);
		SetActorFlag(346, "FRIGHTENED", 1);
		//SetActorProperty(346, APROP_Speed, 25.0);

		Delay(105);

		SetActorProperty(349, APROP_Speed, 17.0);

		Delay(175);
		SetActorFlag(350, "FRIGHTENED", 1);
	}
}





//DIALOGUE
int dial199 = 4; //Witch
Script 199 (void)
{
	If(GetActorproperty(671, APROP_Health) > 0 && dial199 % 4 == 0)
	{
	PlaySound(671, "Witch/Ha", CHAN_AUTO);
    Hudmessage(s:"Witch:    Bonebreaker! Have you broken any bones today? Leave some for us too, yes? Hahaha!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(671, APROP_Health) > 0 && dial199 % 4 == 1)
	{
	PlaySound(671, "BearWarrior/Rage2", CHAN_AUTO);
    Hudmessage(s:"Witch:    I'm a ruthless beast, rarrrgh! Look at all the bodies! All that delicious red stew I spilled!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(671, APROP_Health) > 0 && dial199 % 4 == 2)
	{
	PlaySound(671, "BearWarrior/Rage1", CHAN_AUTO);
    Hudmessage(s:"Witch:    *Shouts loudly* Come on, red scum! Send us more bodies so we can make red stew! Hahahaha!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(671, APROP_Health) > 0 && dial199 % 4 == 3)
	{
    Hudmessage(s:"Witch:    *Grins wickedly, with pupils expanded from whatever frenzying potion she consumed*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial199 += 1;
	Delay(2*35);
	}
}

int dial200 = 4; //Wounded Witch
Script 200 (void)
{
	If(GetActorproperty(672, APROP_Health) > 0 && dial200 % 4 == 0)
	{
	PlaySound(672, "Witch/Pain", CHAN_AUTO);
    Hudmessage(s:"Witch:    Urgh...sorry sarge, but I'd rather keep my teeth clenched than have them clattering."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial200 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(672, APROP_Health) > 0 && dial200 % 4 == 1)
	{
    Hudmessage(s:"Witch:    Took a bullet from one of those new demon guns. Bounced inside my arm... hurts like a bitch!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial200 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(672, APROP_Health) > 0 && dial200 % 4 == 2)
	{
	PlaySound(672, "Witch/Pain", CHAN_AUTO);
    Hudmessage(s:"Witch:    *Groans* My amulet's shield only stopped it from exiting my body. Fuck this piece of shit!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial200 += 1;
	Delay(2*35);
	}
	else
	If(GetActorproperty(672, APROP_Health) > 0 && dial200 % 4 == 3)
	{
	PlaySound(672, "Witch/Death", CHAN_AUTO);
    Hudmessage(s:"Witch:    *Groans heavily*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
    dial200 += 1;
	Delay(2*35);
	}
}

int dial202 = 4; //Bear Warrior A
Script 202 (void)
{
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 0)
	{
	  PlaySound(673, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    WHAT? I CAN'T HEAR YOU! MY EARS WON'T STOP RINGING!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 1)
	{
	  PlaySound(673, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    THEY AMBUSHED US, BUT WE PUNCHED OUR WAY THROUGH AND TOOK OVER THE BARRICADE!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 2)
	{
	  PlaySound(673, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    THEY SHOT THE CANNON AT US! A SHOT SO STRONG IT COLLAPSED THE BUILDING BEHIND!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(673, APROP_Health) > 0 && dial202 % 4 == 3)
	{
	  PlaySound(673, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    THEIR ARTILLERY HAS GROWN STRONGER SINCE OUR LAST SIEGE! WE GOTTA STOP THEM NOW!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial202 += 1;
	  Delay(2*35);
	}
}

int dial203 = 4; //Bear Warrior B
Script 203 (void)
{
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 0)
	{
	  PlaySound(674, "BearWarrior/Rage1", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    *Bloodthirsty growls*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 1)
	{
	  PlaySound(674, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Strength and honor, Bonebreaker! I see you are drenched in cultist blood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 2)
	{
	  PlaySound(674, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    The battlefield is our ancestral home! The elder spirits watch over us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(674, APROP_Health) > 0 && dial203 % 4 == 3)
	{
	  PlaySound(674, "BearWarrior/Rage2", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Victory or death! This battle decides the fate of the Underworld!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial203 += 1;
	  Delay(2*35);
	}
}

//Dura Salute
Script 40 (void)
{
	If(GetActorProperty(675, APROP_Health) > 0)
	{
	  SetLineSpecial(264, 0, 0, 0, 0, 0, 0);
	  PlaySound(675, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    Still alive, sergeant? Our foes have been far more prepared than we expected."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 4.5, 0.2, 0.5);
	  Delay(5*35);
	  SetLineSpecial(64, ACS_Execute, 56, 0, 0, 0, 0);
	}
}
int dial204 = 4; //Dura Dialogue
Script 204 (void)
{
	If(GetActorProperty(675, APROP_Health) > 0 && dial204 % 4 == 0)
	{
	  PlaySound(675, "BearWarrior/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    So you've cleared the eastern part of the town, right? And no sign of any of our targets?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  dial204 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(675, APROP_Health) > 0 && dial204 % 4 == 1)
	{
	  Hudmessage(s:"Captain Dura:    Grund ordered us to secure the bell tower so the cultists can't signal for reinforcements."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  dial204 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(675, APROP_Health) > 0 && dial204 % 4 == 2)
	{
	  PlaySound(675, "BearWarrior/Ha", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    Scout ahead, see if you can pick up any clue on where Nithriel and the Baron are hiding."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  dial204 += 1;
	  Delay(2*35);
	}
	else
	If(GetActorProperty(675, APROP_Health) > 0 && dial204 % 4 == 3)
	{
	  PlaySound(675, "BearWarrior/Huh", CHAN_AUTO);
	  Hudmessage(s:"Captain Dura:    Hey, have you seen Tiati? She was supposed to sneak past their defenses and assist my squad!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_BROWN, 1.5, 0.82, 6.5, 0.2, 0.5);
	  dial204 += 1;
	  Delay(2*35);
	}
}

//Give Healer
Script 56 (void)
{
	If(ThingCountName("IDEarthMother", 0) == 0 && ThingCountName("IDEarthMotherGuarding", 0) == 0 && ThingCountName("IDEarthMotherPathfinder", 0) == 0 && GetActorProperty(676, APROP_Health) > 0)
	{
		SetLineSpecial(64, 0, 0, 0, 0, 0, 0);
	    Thing_Remove(676);
		SetLineSpecial(342, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("IDEarthMotherRecruitable", 276, 676, 92);

		PlaySound(675, "BearWarrior/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Captain Dura:    Hmm, looks like you could use a healer. Take my Earth Mother along, I'll tend to the wounded here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);
		PlaySound(676, "EarthMother/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Earth Mother:    As you wish. Ready when you are, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 3.5, 0.2, 0.5);
	}
}

Script 205 (void) //Earth Mother
{
	If(GetActorProperty(676, APROP_Health) > 0 && CheckInventory("PowerPotionofStoneskin") > 0 && CheckInventory("PowerNourish") > 0)
	{
		PlaySound(676, "EarthMother/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Earth Mother:    I'll help you however I can, but I have many other wounds to treat, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    Delay(2*35);
		Terminate;
	}
	If(GetActorProperty(676, APROP_Health) > 0 && CheckInventory("PowerNourish") == 0)
	{
	  PlaySound(676, "EarthMother/Hm", CHAN_AUTO);
	  SetActorState(676, "BuffNourish", 0);
	  Hudmessage(s:"Earth Mother:    Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 0.0, 0.5);
	  Delay(35);
	}
	If(GetActorProperty(676, APROP_Health) > 0 && CheckInventory("PowerPotionofStoneskin") == 0)
	{
	  SetActorState(676, "BuffStoneskin", 0);
	  Hudmessage(s:"Earth Mother:    Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 0.0, 0.5);
	  Delay(35);
	}
}






//DOORS & ELEVATORS
Script 11 (void)
{
  If(GetActorZ(0) < -237.0)
  {
	Door_Open(138, 16, 0);
	//Generic_Door(138, 16, 0, 120, 0);
	//SetLineSpecial(147, ACS_Execute, 11, 0, 0, 0, 0);
	//TagWait(138);
	//SetLineTexture(147, SIDE_FRONT, TEXTURE_TOP, "Gate8_UP");
  }
}

//ROTATING DOORS
Script 2 (void)
{
	If(GetActorZ(0) > -372)
	{
	  Print(s:"The doors are locked from the inside.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	}
}

Script 5 (void)
{
	  Print(s:"The gates are locked from the inside.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 9 (void)
{
	  Print(s:"The door is locked from the other side.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 10 (void)
{
	  Print(s:"The gate is locked from the other side.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}

Script 14 (void)
{
	  Print(s:"The doors appear to be stuck.");
      PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
}

Script 89 (void)
{
  If(GetActorZ(0) < 24.0)
  {
	//SetLineSpecial(146, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(89,16,64,105);
  }
}

Script 90 (void)
{
  If(GetActorZ(0) < -224.0 && CheckInventory("BloodyAxeKey") > 0)
  {
	SetLineSpecial(146, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(90,-20,80,0x7FFFFFFF);
	Polyobj_DoorSwing(270,20,80,0x7FFFFFFF);
  }
  else
    If(GetActorZ(0) < -224.0 && CheckInventory("BloodyAxeKey") == 0)
    {
      Print(s:"This door requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 91 (void)
{
  If(GetActorZ(0) < 24.0)
  {
    Polyobj_DoorSwing(91,-16,64,175);
  }
}

Script 178 (void)
{
  If(GetActorZ(0) < -301.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(178,-16,64,350);
  }
    else
    If(GetActorZ(0) < -301.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 180 (void)
{
  If(GetActorZ(0) < -420.0 && CheckInventory("GoldenKey") > 0)
  {
	//SetLineSpecial(51, ACS_Execute, 180, 0, 0, 0, 0);
    Polyobj_DoorSwing(360,16,64,175);
	Polyobj_DoorSwing(180,-16,64,175);
  }
  else
  If(GetActorZ(0) < -420.0 && CheckInventory("GoldenKey") == 0)
  {
	Print(s:"This door requires a Golden key to open.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 181 (void)
{
  If(GetActorZ(0) < -292.0)
  {
	SetLineSpecial(52, ACS_Execute, 181, 0, 0, 0, 0);
    Polyobj_DoorSwing(359,16,64,175);
	Polyobj_DoorSwing(181,-16,64,175);
  }
}

Script 182 (void)
{
  If(GetActorZ(0) > -380.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(182,-16,64,175);
  }
    else
    If(GetActorZ(0) > -380.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 269 (void)
{
  If(GetActorZ(0) < 24.0)
  {
	//SetLineSpecial(146, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(269,16,64,175);
  }
}

Script 271 (void)
{
  If(GetActorZ(0) < -224.0 && CheckInventory("GoldenKey") > 0)
  {
	SetLineSpecial(81, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(271,20,80,0x7FFFFFFF);
  }
    else
    If(GetActorZ(0) < -224.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This gate requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 358 (void)
{
  If(GetActorZ(0) > -380.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(358,16,64,175);
  }
    else
    If(GetActorZ(0) > -380.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 361 (void)
{
  If(GetActorZ(0) < -297.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(361,-16,64,350);
	Polyobj_DoorSwing(539,16,64,350);
  }
  else
  If(GetActorZ(0) < -297.0 && CheckInventory("GoldenKey") == 0)
  {
	Print(s:"This door requires a Golden key to open.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 540 (void)
{
  If(GetActorZ(0) < -256.0)
  {
	SetLineSpecial(55, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(540,18,72,0x7FFFFFFF);
  }
    else
    {
      Print(s:"This gate requires a Bloody Axe key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 720 (void)
{
  If(GetActorZ(0) < -250.0)
  {
	SetLineSpecial(123, 0, 0, 0, 0, 0, 0);
	Polyobj_DoorSwing(720,16,64,0x7FFFFFFF);
  }
}

//TEXT
Script 3 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"My Lord, our craftsdemons have made the adjustments as per your request, using the new machinery at the"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 35.0);
	Hudmessage(s:"smeltery.   The finely ground crystals have yielded surprising results when mixed with our own hell powder.   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"The attached warhead is the new highest diameter that won't blow the cannoneer apart. High regards,  M.     "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 35.0);
}

Script 4 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CONDEMNED"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 1.5);
}

Script 7 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(Demonic letters lie engraved on the plaque beneath the grim, life-like statue)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"MAIDEN SCHOOL"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"Send me your daughters, and I shall forge their bodies in iron!"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 8 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Rejoice, my brothers, for our shared toil brings us closer to our goals!    Lord Igrutius Himself has "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"informed us that following her flawless invasion of the orc stronghold, Mistress Nithriel has used   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"her blessed mind to create new technologies!   For once in our bodily existence we can see the hell  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"powder used in guns worthy of garnering the interest of the Lords, an interest much stronger than"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
    Hudmessage(s:"that of the fire and the arcane.  Rest not, as we must now toil harder, for change is drawing near! "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 29 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 35.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(Two similar books lie side by side. It appears the information from one was being transcribed to the other)  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.78, 35.0);

	Hudmessage(s:"[...] but to harness the joy of chaos, they would first learn of the cold grates of order that restrained their"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 35.0);
	Hudmessage(s:"flesh to this passing realm. And they tidied the temple, even if they had no eyes to see its forgotten glory.    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 35.0);

    Hudmessage(s:"[...] but to harness the joy of chaos, they would first learn of the cold grates of order that restrained their"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 35.0);
	Hudmessage(s:"flesh to this passing realm. And they furnished the temple, even if they had no eyes to see its golden glory.    "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 35.0);
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

//JOURNAL
Script "OpenJournal" (void)
{
	PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	Delay(50);
}

Script "CloseJournal" (void)
{
	PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	Delay(50);
}