#include "zcommon.acs"

//Gold - 85 + 35s + 200r
//TIDs - 660, 661, 662, 663... 689...719

//LEVEL START

Script 1 ENTER
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Actor Changes
	SetActorFlag(1, "FLOATBOB", 1);

	SetActorFlag(28, "INVISIBLE", 1);
	SetActorFlag(28, "NOBLOCKMAP", 1);

	SetActorFlag(36, "FLOATBOB", 1);

	SetActorFlag(88, "INVISIBLE", 1);
	SetActorFlag(88, "NOBLOCKMAP", 1);
	SetActorFlag(89, "INVISIBLE", 1);
	SetActorFlag(89, "NOBLOCKMAP", 1);
	SetActorFlag(89, "FLOATBOB", 1);
	SetActorFlag(624, "INVISIBLE", 1);

	SetActorFlag(133, "NOBLOCKMAP", 1);

	SetActorFlag(184, "NOBLOCKMAP", 1);
	SetActorFlag(184, "FLOATBOB", 1);

	SetActorState(191, "EveryoneDead", 0);
	SetActorFlag(192, "INVISIBLE", 1);

	SetActorFlag(198, "INVISIBLE", 1);

	SetActorFlag(253, "RELATIVETOFLOOR", 1);

	SetActorFlag(291, "NOBLOCKMAP", 1);

	SetActorFlag(354, "NOINFIGHTING", 1);
	SetActorFlag(356, "NOPAIN", 1);
	SetActorFlag(356, "INVISIBLE", 1);
	SetActorFlag(358, "NOBLOCKMAP", 1);
	SetActorFlag(340, "NOINFIGHTING", 1);
	SetActorFlag(340, "INVISIBLE", 1);

	SetActorFlag(548, "INVISIBLE", 1);
	SetActorFlag(549, "INVISIBLE", 1);

	SetActorProperty(642, APROP_Radius, 50); //doesn't work...

	SetActorFlag(718, "INVISIBLE", 1);
	SetActorFlag(718, "NOBLOCKMAP", 1);

	//3D Water Scroll
	Scroll_Ceiling(259, 64, 0, 0);

	//Ghosts
	GiveActorInventory(137, "IsGhost", 1);
	SetActorFlag(137, "NOBLOOD", 1);
	SetActorFlag(137, "NOPAIN", 1);
	SetActorFlag(137, "NOFEAR", 1);
	SetActorFlag(137, "DONTDRAIN", 1);
	SetActorFlag(137, "NOTIMEFREEZE", 1);
	SetActorFlag(137, "DONTTHRUST", 1);
	SetActorFlag(137, "SOLID", 0);

	GiveActorInventory(603, "IsGhost", 1);
	SetActorFlag(603, "INVISIBLE", 1);
	SetActorFlag(603, "NOBLOOD", 1);
	SetActorFlag(603, "NOPAIN", 1);
	SetActorFlag(603, "NOFEAR", 1);
	SetActorFlag(603, "DONTDRAIN", 1);
	SetActorFlag(603, "NOTIMEFREEZE", 1);
	SetActorFlag(603, "DONTTHRUST", 1);
	SetActorFlag(603, "SOLID", 0);
	GiveActorInventory(604, "IsGhost", 1);
	SetActorFlag(604, "INVISIBLE", 1);
	SetActorFlag(604, "NOBLOOD", 1);
	SetActorFlag(604, "NOPAIN", 1);
	SetActorFlag(604, "NOFEAR", 1);
	SetActorFlag(604, "DONTDRAIN", 1);
	SetActorFlag(604, "NOTIMEFREEZE", 1);
	SetActorFlag(604, "DONTTHRUST", 1);
	SetActorFlag(604, "SOLID", 0);
	GiveActorInventory(605, "IsGhost", 1);
	SetActorFlag(605, "INVISIBLE", 1);
	SetActorFlag(605, "NOBLOOD", 1);
	SetActorFlag(605, "NOPAIN", 1);
	SetActorFlag(605, "NOFEAR", 1);
	SetActorFlag(605, "DONTDRAIN", 1);
	SetActorFlag(605, "NOTIMEFREEZE", 1);
	SetActorFlag(605, "DONTTHRUST", 1);
	SetActorFlag(605, "SOLID", 0);
}

int Pendant = 0;
Script 2 RETURN
{
	//Give Keys
	ACS_NamedExecuteWithResult("GiveKeys");
	ACS_NamedExecuteWithResult("GivePowerups");

	//Pendant of True Sight
	If(CheckInventory("InventoryPendantofTrueSightServant") > 0 && Pendant == 0)
	{
		Pendant += 1;
		Floor_LowerToNearest(71, 999);
		Floor_MoveTovalue(704, 999, 624, 0);

		Delay(3*35);
		//PlaySound(0, "Hellion/Sight", CHAN_AUTO);
	    //Hudmessage(s:"Yzbeth:    Finally found a way to pry into my dirty secrets? Come to the cathedral and I will confess..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.8, 3.5);
	    Playsound(0, "PsiDemon/MirrorImage", CHAN_AUTO);
	    Hudmessage(s:"Yzbeth's Gardner:    Mistress Yzbeth awaits me in her cathedral... she showed me all her secret places..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 5.5, 1.2, 2.5);
	}

	//Painting Lancer Leave
	If(CheckInventory("QuestMap19RescueLancer") == 1 && CheckInventory("QuestMap18EnterPortal")  > 0)
	{
		Thing_Remove(675);
	}
}

//LEVEL END
//Dirt Crypt Exit
Script 130 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	ACS_Terminate(77, 0);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
	Delay(4);
	ChangeLevel("Map20", 5, CHANGELEVEL_NOINTERMISSION, -1);
}
//Gardener House Exit
Script 131 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	ACS_Terminate(77, 0);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
    Delay(4);
	ChangeLevel("Map18", 6, CHANGELEVEL_NOINTERMISSION, -1);
}
//Main Gates Exit
Script 132 (void)
{
	ACS_NamedExecuteWithResult("KeyCheck");
	ACS_NamedExecuteWithResult("TakePowerups");
	ACS_NamedExecuteWithResult("CloseJournal");
	TakeInventory("JournalBrowseExtraPages", 1);
	ACS_Terminate(77, 0);
	Delay(4);
	Hudmessage(s:"Loading..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 0.1, 0.1, 0.1);
    Delay(4);
	ChangeLevel("Map18", 7, CHANGELEVEL_NOINTERMISSION, -1);
}

//Music
Script 10 (void)
{
	SetMusic("HTrack32", 0, 0);
}

//CATHEDRAL
//Cathedral Change + Second Battle
Script 3 (void)
{
  If(CheckInventory("InventoryPendantOfTrueSightServant") > 0)
  {
	Thing_Remove(626);
    ACS_Execute(6, 0, 0, 0, 0);
	PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);
	Hudmessage(s:"Yzbeth's Gardner:    I brought you flowers, my queen... oh no. What-? Please! Not again! Noooo!... *Fades*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CREAM, 1.5, 0.86, 3.5, 1.2, 3.5);
    Delay(2*35);
	Autosave();
	Radius_Quake(3, 230, 0, 1, 0);
	FadeTo(255, 160, 200, 1.0, 6.0);
	Delay(6*35);
	Thing_Remove(114);
	Thing_Remove(117);
	Thing_Remove(118);
	Thing_Remove(660);
	PlaySound(0, "Ambient/Impact", CHAN_AUTO);
	PlaySound(0, "Magic/Dispel", CHAN_AUTO);
	FadeTo(255, 160, 200, 0.0, 0.3);
	Radius_Quake(10, 24, 0, 1, 0);

	SetActorFlag(28, "INVISIBLE", 0);
	SetActorFlag(28, "NOBLOCKMAP", 0);
	Thing_Remove(29);
	Thing_Activate(39);



	SetLineTexture(16, SIDE_FRONT, TEXTURE_MIDDLE, "Window12");
	Line_SettextureScale(16, 1.2, 0.75, SIDE_FRONT, 2);
	SetLineTexture(17, SIDE_FRONT, TEXTURE_MIDDLE, "Window16");
	SetLineTexture(48, SIDE_FRONT, TEXTURE_MIDDLE, "Window12");
	Line_SettextureScale(48, 0.8, 0.8, SIDE_FRONT, 2);

	//SetLineTexture(23, SIDE_FRONT, TEXTURE_MIDDLE, "Mural12");
	SetLineTexture(23, SIDE_FRONT, TEXTURE_MIDDLE, "Iron_15");

	SetLineTexture(6, SIDE_FRONT, TEXTURE_TOP, "Mason5");
	SetLineTexture(7, SIDE_FRONT, TEXTURE_MIDDLE, "Mason5");
	SetLineTexture(8, SIDE_FRONT, TEXTURE_BOTTOM, "Mason5");
	ChangeFloor(9, "Mason5");
	ChangeCeiling(10, "Mason5");

	SetLineTexture(11, SIDE_FRONT, TEXTURE_TOP, "Mural12");
	SetLineTexture(12, SIDE_FRONT, TEXTURE_BOTTOM, "Mural12");
	SetLineTexture(13, SIDE_FRONT, TEXTURE_MIDDLE, "Mural12");
	ChangeFloor(14, "Mural12");
	ChangeCeiling(15, "Mural12");

	SetLineTexture(18, SIDE_FRONT, TEXTURE_TOP, "Obsid2");
	SetLineTexture(20, SIDE_FRONT, TEXTURE_MIDDLE, "Obsid2");
	ChangeFloor(21, "Obsid2");
	ChangeCeiling(22, "Obsid2");

	SetLineTexture(19, SIDE_FRONT, TEXTURE_BOTTOM, "Iron_17");
	ChangeFloor(24, "Iron_17");
	ChangeCeiling(25, "Iron_17");

	SetLineTexture(26, SIDE_FRONT, TEXTURE_MIDDLE, "Railing5");
	SetLineTexture(26, SIDE_BACK, TEXTURE_MIDDLE, "Railing5");

	SetLineTexture(27, SIDE_FRONT, TEXTURE_MIDDLE, "Mural11");
	SetLineTexture(69, SIDE_FRONT, TEXTURE_BOTTOM, "Mural11");

	ChangeFloor(30, "Iron_18");
	SetLineTexture(31, SIDE_FRONT, TEXTURE_BOTTOM, "Iron_18");
	SetLineTexture(32, SIDE_FRONT, TEXTURE_BOTTOM, "Mural04");
	SetLineTexture(33, SIDE_FRONT, TEXTURE_BOTTOM, "Mural03");

	SetLineTexture(40, SIDE_FRONT, TEXTURE_BOTTOM, "Stone05");
	ChangeFloor(45, "Inscrip4");

	ChangeCeiling(42, "Chains1");
	SetLineTexture(43, SIDE_FRONT, TEXTURE_TOP, "Chains1");

	ChangeCeiling(44, "Window16");

	SetLineTexture(49, SIDE_FRONT, TEXTURE_TOP, "Mural02");

	SetLineTexture(51, SIDE_FRONT, TEXTURE_MIDDLE, "Iron_17");

	ChangeCeiling(66, "Mason5");

	ChangeFloor(67, "Blood_A1");
	SetSectorGlow(67, false, 255, 20, 20, 64);

	SetLineTexture(68, SIDE_FRONT, TEXTURE_TOP, "Inscrip4");
	SetLineTexture(70, SIDE_FRONT, TEXTURE_BOTTOM, "Inscrip4");

	FloorAndCeiling_LowerByValue(38, 999, 60);
	FloorAndCeiling_RaiseByValue(41, 999, 60);

	Delay(35);

	Hudmessage(s:"Yzbeth:    Reality is a bitch, isn't it? Truth is, my pristine cathedral is nothing more but a rotten hive of sin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	PlaySound(0, "Hellion/Active", CHAN_AUTO, 1.0);
	Delay(7*35);

	Hudmessage(s:"And the maggots infesting it are still very loyal to the Baron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 2.5);
	Delay(4*35);

	ACS_Execute(9, 0, 0, 0, 0);

	SpawnSpotForced("Conscript", 119, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 119, 0, 0);
	PlaySound(119, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Glutton", 120, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 120, 0, 0);
	PlaySound(120, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("PitLord", 121, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 121, 0, 0);
	PlaySound(121, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellblaze", 122, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 122, 0, 0);
	PlaySound(122, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Hellion", 123, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 123, 0, 0);
	PlaySound(123, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("Cerberus", 126, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 126, 0, 0);
	PlaySound(126, "misc/teleport", CHAN_AUTO);
	SpawnSpotForced("HealthPotionOfMinorHealing", 703, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 703, 0, 0);
	Delay(4);
	NoiseAlert(0,0);

	Delay(20*35);
	SpawnSpotForced("ForgeElemental", 124, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 124, 0, 0);
	PlaySound(124, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0,0);

	Delay(28*35);
	SpawnSpotForced("Hellion", 125, 662, 192);
	SpawnSpotForced("HedonTeleportFogDemon", 125, 0, 0);
	PlaySound(125, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0,0);

    Delay(36*35);
	Thing_Activate(115);
  }
}
//Jump Pads
Script 4 (void)
{
	PlaySound(0, "Magic/Dispel", CHAN_AUTO);
	SpawnSpotForced("ExplosionMagicPurple", 0, 0, 0);
}
//Forcefields
Script 6 (void)
{
	SetLineSpecial(113, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(112, BLOCKF_EVERYTHING, 0);
	Line_SetBlocking(112, BLOCKF_SOUND, 0);
	Line_SetBlocking(112, BLOCKF_SIGHT, 0);
	SetLineTexture(112, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");

	TranslucentLine(112, 25, 0);
	Delay(2);
	TranslucentLine(112, 50, 0);
	Delay(2);
	TranslucentLine(112, 75, 0);
	Delay(2);
	TranslucentLine(112, 100, 0);
	Delay(2);
	TranslucentLine(112, 125, 0);
	Delay(2);
	TranslucentLine(112, 150, 0);
	Delay(2);
	TranslucentLine(112, 175, 0);
	Delay(2);
	TranslucentLine(112, 200, 0);
	Delay(2);
	TranslucentLine(112, 225, 0);
	Delay(2);
	TranslucentLine(112, 250, 0);

	Delay(35);
}
//First Battle
Script 7 (void)
{
	ACS_Execute(8, 0, 0, 0, 0);
    Thing_Activate(114);
	Delay(10*35);
	Thing_Spawn(119, 65004, 192, 660);
	Delay(8);
	NoiseAlert(0,0);
	Delay(16*35);
	Thing_Activate(118);
	Delay(8*35);
	Thing_Spawn(116, 65010, 192, 660);
	Delay(8);
	NoiseAlert(0,0);
	Delay(28*35);
	Thing_Activate(117);
}
//First Battle Ender
Script 8 (void)
{
	If(ThingCount(T_NONE, 114) < 1 && ThingCount(T_NONE, 117) < 1 && ThingCount(T_NONE, 118) < 1 && ThingCount(T_NONE, 660) < 2 && ThingCount(T_NONE, 661) == 0)
	{
		TranslucentLine(112, 250, 0);
	    Delay(2);
	    TranslucentLine(112, 225, 0);
	    Delay(2);
	    TranslucentLine(112, 200, 0);
	    Delay(2);
	    TranslucentLine(112, 175, 0);
	    Delay(2);
	    TranslucentLine(112, 150, 0);
	    Delay(2);
	    TranslucentLine(112, 125, 0);
	    Delay(2);
	    TranslucentLine(112, 100, 0);
	    Delay(2);
	    TranslucentLine(112, 75, 0);
	    Delay(2);
	    TranslucentLine(112, 50, 0);
	    Delay(2);
	    TranslucentLine(112, 25, 0);
		Delay(2);
		Line_SetBlocking(112, 0, BLOCKF_EVERYTHING);
	    Line_SetBlocking(112, 0, BLOCKF_SOUND);
	    Line_SetBlocking(112, 0, BLOCKF_SIGHT);
	    SetLineTexture(112, SIDE_FRONT, TEXTURE_MIDDLE, "");

		Delay(2*35);
	    Hudmessage(s:"Yzbeth:    Such tenacity! Such wrath! Come to the ballroom right away, I wish to see more of your moves!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.8, 1.5);
		PlaySound(0, "Hellion/Sight", CHAN_AUTO);

		Delay(35);
		Terminate;
	}
	Delay(35);
	Restart;
}
//Second Battle Ender
Script 9 (void)
{
	If(ThingCount(T_NONE, 115) < 2 && ThingCount(T_NONE, 662) < 2)
	{
		TranslucentLine(112, 250, 0);
	    Delay(2);
	    TranslucentLine(112, 225, 0);
	    Delay(2);
	    TranslucentLine(112, 200, 0);
	    Delay(2);
	    TranslucentLine(112, 175, 0);
	    Delay(2);
	    TranslucentLine(112, 150, 0);
	    Delay(2);
	    TranslucentLine(112, 125, 0);
	    Delay(2);
	    TranslucentLine(112, 100, 0);
	    Delay(2);
	    TranslucentLine(112, 75, 0);
	    Delay(2);
	    TranslucentLine(112, 50, 0);
	    Delay(2);
	    TranslucentLine(112, 25, 0);
		Delay(2);
		Line_SetBlocking(112, 0, BLOCKF_EVERYTHING);
	    Line_SetBlocking(112, 0, BLOCKF_SOUND);
	    Line_SetBlocking(112, 0, BLOCKF_SIGHT);
	    SetLineTexture(112, SIDE_FRONT, TEXTURE_MIDDLE, "");
		Terminate;
	}
	Delay(35);
	Restart;
}

//Yzbeth First Encounter
int spec99 = 0;
Script 99 (void)
{
	If(GetActorProperty(676, APROP_Health) > 0 && spec99 == 0)
	{
		spec99 += 1;
		PlaySound(676, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.3);
	    Hudmessage(s:"Yzbeth:    My, my... is it so? The Iron Divison's champion enters my domain, seeking aid to usurp the Baron?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(8*35);

		PlaySound(676, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.3);
	    Hudmessage(s:"And I might just have the key to defeat him... but first, delight me with a display of your raw orcish might!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(8*35);

		ACS_Terminate(105, 0);
		SetActorState(676, "Vanish", 0);
		Delay(16);
		SpawnSpotForced("GoldenKey", 611, 661, 0);
		PlaySound(661, "Inventory/PickKey", CHAN_AUTO);
		SetActorFlag(661, "NOGRAVITY", 0);
		Delay(70);
		ACS_Execute(7, 0, 0, 0, 0);
	}
}
Script 105 (void)
{
	If(GetActorProperty(676, APROP_Health) <= 0)
	{
		ACS_Terminate(99, 0);
		SpawnSpotForced("GoldenKey", 611, 661, 0);
		PlaySound(661, "Inventory/PickKey", CHAN_AUTO);
		SetActorFlag(661, "NOGRAVITY", 0);

		PlaySound(676, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.3);
	    Hudmessage(s:"Yzbeth:    Oooh, so quick-tempered! A passionate first impression!... let me see more of that brute strength!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		GiveInventory("ScriptYzbethReaction", 1);
		Delay(5*35);

		ACS_Execute(7, 0, 0, 0, 0);
		Terminate;
	}
	Delay(1);
	Restart;
}


//PURPLE PRIMARCH
//Dialogue
int spec98 = 0;
int spec98b = 0;
int dial98 = 4;
Script 98 (void)
{
	If(CheckInventory("QuestMap19PurplePrimarch") == 1)
	{
		Print(s:"The primarch's avatar remains silent.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	    Delay(35);
	}
	else
	If(CheckInventory("QuestMap19PurplePrimarch") == 0)
	{
		PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	    Hudmessage(s:"Adur:    I am Adur, Primarch of Hearts! Singer of lust and passion! Weaver of desire..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
	    Delay(6*35);

		PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	    Hudmessage(s:"You seek to defeat the Baron, but your heart is yet too pure to be allowed inside his sinful citadel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
	    Delay(9*35);

		PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	    //Hudmessage(s:"...while I do not question your skill in battle, it is your prowess in bed that I must put to test."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Hudmessage(s:"...while I do not question your skill on the battlefield, it's the one in the bedsheets that I must test."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);

		PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	    Hudmessage(s:"Show me you can conquer a demon through lust, not blade. Only then will your heart be worthy of my taint."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
	    Delay(5*35);

		GiveInventory("QuestMap19PurplePrimarch", 2);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");
		Delay(2*35);

		GiveInventory("ScriptYzbethReaction", 4);
		SpawnSpotForced("NPCYzbethRegular", 612, 676, 64);
		SetActorFlag(676, "INVULNERABLE", 0);
		ACS_Execute(105, 0, 0, 0, 0);

		Autosave();
    }
	else
	If(CheckInventory("InventoryPrimarchAvatar") > 0 && Spec98b == 0)
	{
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    Elzriel! What brings you to my altar? Feeling lonely again?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
	  spec98b += 1;
	  Delay(6*35);
	  PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    Feeling my patience tested by this half-blood-half-wit, rather."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(5*35);
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    That's what you get for breaking Yzbeth's heart... and with a goblin? Ludicrous."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	  Delay(6*35);
	}
	else
	If(CheckInventory("ScriptYzbethRejected") > 0 && Spec98 == 0)
	{
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    Did Yzbeth reject you? Pitiful, but alas, I did not ask you to seduce her - any demonblood will do..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 7.5, 0.2, 0.5);
	  spec98 += 1;
	  Delay(8*35);
	}
	else
	If(dial98 % 4 == 0)
	{
	  PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	  Hudmessage(s:"Adur:    Might may conquer the battlefield, but passion will subdue your foe long before drawing steel."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 1)
	{
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    An entire army cannot control a city the way debauchery does. Wanton lust will soften any spirit."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 2)
	{
	  PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
	  Hudmessage(s:"Adur:    A true demon must know the exquisite pleasures of flesh, and especially how to draw others into them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 3 && CheckInventory("ScriptYzbethRejected") == 0)
	{
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    Yzbeth is well versed in the art of seduction, and she's eager to share. Try not to hurt her... too much."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial98 += 1;
	  Delay(2*35);
	}
	else
	If(dial98 % 4 == 3 && CheckInventory("ScriptYzbethRejected") > 0)
	{
	  PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
	  Hudmessage(s:"Adur:    'tis a pity that you broke Yzbeth's heart. Alas, there are other demonbloods who can initiate you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial98 += 1;
	  Delay(2*35);
	}
}

//Taint Offering
Script 97 (void)
{
	If(CheckInventory("InventoryPieceOfPerfumedCloth") > 0 || CheckInventory("InventoryLockOfHair") > 0)
	{
		SetLineSpecial(639, 0, 0, 0, 0, 0, 0);

		If(CheckInventory("InventoryPieceOfPerfumedCloth") > 0)
		{
			PlaySound(640, "Inventory/PickShort", CHAN_AUTO);
			SetWeapon("Fists");
			Delay(12);

			TakeInventory("InventoryPieceOfPerfumedCloth", 1);
			SpawnSpotForced("DemonClothPiece", 640, 682, 0);

			Delay(35);

			PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
			Hudmessage(s:"Adur:    Ahhh... I can feel your heart writhe. Blackened and emburdened with sin by fleeting Yzbeth..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
			Delay(7*35);
		}
		else
		If(CheckInventory("InventoryLockOfHair") > 0)
		{
			PlaySound(640, "Inventory/PickShort", CHAN_AUTO);
			SetWeapon("Fists");
			Delay(12);
			TakeInventory("InventoryLockOfHair", 1);
			SpawnSpotForced("DemonLockOfHair", 640, 682, 0);

			Delay(35);

			PlaySound(0, "Primarch/PurpleB", CHAN_AUTO);
			Hudmessage(s:"Adur:    The Queen of Wrath may be a halfblood, but her lust puts Demons to shame. I accept your offering."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
			Delay(7*35);
		}
		FadeTo(255, 120, 200, 1.0, 0.2);
		Delay(7);
		SpawnSpotForced("ExplosionMagicPurple", 640, 0, 0);
		Thing_Remove(682);
		FadeTo(255, 120, 200, 0.0, 0.6);
		Delay(2);
		SpawnSpotForced("FireTinyDie1", 640, 0, 0);
		SpawnSpotForced("FireTinyDie2", 641, 0, 0);
		Delay(35);

		PlaySound(0, "Primarch/PurpleA", CHAN_AUTO);
		Hudmessage(s:"The trial of hearts is fulfilled, and my taint you shall now carry! Send the Baron my warmest kisses."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
		Delay(5*35);

		TakeInventory("QuestMap19PurplePrimarch", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(4*35);
		SetLineSpecial(639, ACS_Execute, 98, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("QuestMap19PurplePrimarch") != 1)
	{
		Print(s:"A primarch offering altar.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}


//BALLROOM
//Block Access
Script 110 (void)
{
	SetLineSpecial(719, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(93, BLOCKF_EVERYTHING, 0);
	SetLineTexture(93, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	TranslucentLine(93, 0, 0);
	Delay(2);
	TranslucentLine(93, 25, 0);
	Delay(2);
	TranslucentLine(93, 50, 0);
	Delay(2);
	TranslucentLine(93, 75, 0);
	Delay(2);
	TranslucentLine(93, 100, 0);
	Delay(2);
	TranslucentLine(93, 125, 0);
	Delay(2);
	TranslucentLine(93, 150, 0);
	Delay(2);
	TranslucentLine(93, 175, 0);
	Delay(2);
	TranslucentLine(93, 200, 0);
	Delay(2);
	TranslucentLine(93, 225, 0);
	Delay(2);
	TranslucentLine(93, 250, 0);
}
//Change & Fight
Script 5 (void)
{
	Radius_Quake(1, 70, 0, 20, 624);
	Delay(2*35);
	FadeTo(255, 20, 60, 1.0, 2.0);
	Radius_Quake(4, 70, 0, 20, 624);
	Delay(2*35);
	Radius_Quake(10, 50, 0, 20, 624);
	FadeTo(255, 20, 60, 0.0, 0.4);

    ChangeCeiling(84, "Window16");
	Sector_SetCeilingScale2(84, 2.0, 2.0);
	ChangeCeiling(85, "BloodSpc");
	SetLineTexture(86, SIDE_FRONT, TEXTURE_TOP, "Window05");
	Line_SetTextureScale(86, 0.6, 0.75, SIDE_FRONT, 1);

	Thing_Remove(87);
	Thing_Activate(88);
	SetActorFlag(88, "INVISIBLE", 0);
	SetActorFlag(88, "NOBLOCKMAP", 0);
	SetActorFlag(89, "INVISIBLE", 0);
	SetActorFlag(89, "NOBLOCKMAP", 0);
	SetActorFlag(624, "INVISIBLE", 0);

	Delay(35);

	Thing_Spawn(620, 65008, 0, 678);
	Thing_Spawn(616, 65011, 0, 678);
	NoiseAlert(0,0);
	Delay(8*35);

	Thing_Spawn(618, 65003, 0, 678);
	Thing_Spawn(617, 65018, 64, 678);
	NoiseAlert(0,0);
	Delay(16*35);

	Thing_Spawn(625, 65016, 0, 678);
	NoiseAlert(0,0);
	Delay(8*35);

	Thing_Spawn(619, 65010, 0, 678);
	NoiseAlert(0,0);

	ACS_Execute(109, 0, 0, 0, 0);
}
//Ballroom Fight Ender
Script 109 (void)
{
	If(ThingCount(T_NONE, 678) < 2)
	{
		SetLineSpecial(719, 0, 0, 0, 0, 0, 0);
		Thing_Destroy(624, 0, 0);
		TranslucentLine(93, 250, 0);
	    Delay(2);
	    TranslucentLine(93, 225, 0);
	    Delay(2);
	    TranslucentLine(93, 200, 0);
	    Delay(2);
	    TranslucentLine(93, 175, 0);
	    Delay(2);
	    TranslucentLine(93, 150, 0);
	    Delay(2);
	    TranslucentLine(93, 125, 0);
	    Delay(2);
	    TranslucentLine(93, 100, 0);
	    Delay(2);
	    TranslucentLine(93, 75, 0);
	    Delay(2);
	    TranslucentLine(93, 50, 0);
	    Delay(2);
	    TranslucentLine(93, 25, 0);
		Delay(2);
		Line_SetBlocking(93, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(93, SIDE_FRONT, TEXTURE_MIDDLE, "");

		Delay(2*35);
	    Hudmessage(s:"Yzbeth:    Look at you! All sweaty and riled up... such heroism must not go unrewarded."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 1.0, 0.5);
		Delay(7*35);
		PlaySound(0, "Hellion/Sight", CHAN_AUTO);
		Hudmessage(s:"And I know just what you desire... find a way into my bedchambers, and I will make your wish come true!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 3.5);
        Delay(7*35);

		Terminate;
	}
	Delay(16);
	Restart;
}
//Yzbeth Second Encounter
Script 106 (void)
{
	Thing_Remove(614);
	ACS_Execute(107, 0, 0, 0, 0);
	SpawnSpotForced("NPCYzbethRegular", 613, 677, 192);
	SetActorFlag(677, "INVULNERABLE", 0);
	PlaySound(613, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
}
Script 108 (void)
{
	If(GetActorProperty(677, APROP_Health) > 0)
	{
		SetLineSpecial(615, 0, 0, 0, 0, 0, 0);
	    PlaySound(677, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	    Hudmessage(s:"Yzbeth:    Mmm... my eyes just can't get enough of that sculpted physique!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);

		PlaySound(677, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Can't help but wonder what motions that hulking body of yours is capable of. How about a dance?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		Delay(5*35);

        SetActorState(677, "Vanish", 0);
		ACS_Terminate(107, 0);
		ACS_Execute(5, 0, 0, 0, 0);
	}
}
Script 107 (void)
{
	If(GetActorProperty(677, APROP_Health) <= 0)
	{
		ACS_Terminate(108, 0);

        If(CheckInventory("ScriptYzbethReaction") < 5)
		{
		  PlaySound(677, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    Oooh, getting a little rough now, are you? "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		  GiveInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 5)
		{
		  PlaySound(677, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    Ooh! You do love slapping me around, don't you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		  GiveInventory("ScriptYzbethReaction", 1);
		}
		Delay(5*35);
        PlaySound(0, "Hellion/Active", CHAN_AUTO, 1.0);
		Hudmessage(s:"Yes, unleash your blood's fury! Let me see you dance!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
		Delay(3*35);

		ACS_Execute(5, 0, 0, 0, 0);
		Terminate;
	}
	Delay(1);
	Restart;
}

//KITCHEN TELEPORTS
Script 28 (void)
{
	Teleport_Nofog(267, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 267, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 29 (void)
{
	Teleport_Nofog(266, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 266, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 30 (void)
{
	Thing_Activate(271);
	Teleport_Nofog(270, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 270, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 31 (void)
{
	Teleport_Nofog(268, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 268, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 32 (void)
{
	Teleport_Nofog(276, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 276, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 33 (void)
{
	Thing_Activate(271);
	Teleport_Nofog(275, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 275, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 34 (void)
{
	Teleport_Nofog(278, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 278, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}
Script 35 (void)
{
	Teleport_Nofog(277, 1, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 277, 0, 0);
    PlaySound(0, "misc/teleport", CHAN_AUTO);
}

//LAVA DAMAGE
Script 36 ENTER
{
	SectorDamage(282, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}


//BEDROOM
//Yzbeth Third Encounter
Script 111 (void)
{
	ACS_Execute(112, 0, 0, 0, 0);
	SpawnSpotForced("NPCYzbethRegular", 621, 679, 0);
	SetActorFlag(679, "INVULNERABLE", 0);
	PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.4);

	Line_SetBlocking(622, BLOCKF_EVERYTHING, 0);
	SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	TranslucentLine(622, 25, 0);
	Delay(2);
	TranslucentLine(622, 50, 0);
	Delay(2);
	TranslucentLine(622, 75, 0);
	Delay(2);
	TranslucentLine(622, 100, 0);
	Delay(2);
	TranslucentLine(622, 125, 0);
	Delay(2);
	TranslucentLine(622, 150, 0);
	Delay(2);
	TranslucentLine(622, 175, 0);
	Delay(2);
	TranslucentLine(622, 200, 0);
	Delay(2);
	TranslucentLine(622, 225, 0);
	Delay(2);
	TranslucentLine(622, 250, 0);
}

Script 113 (void)
{
	If(GetActorProperty(679, APROP_Health) > 0)
	{
		SetLineSpecial(623, 0, 0, 0, 0, 0, 0);

		If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	        PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	        Hudmessage(s:"Yzbeth:    You kept me waiting. Playing hard to get now, mmh? Too bad the bed has gone cold..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(7*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") == 5)
		{
			PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	        Hudmessage(s:"Yzbeth:    You kept me waiting. Tch, you silly tease, this bed isn't that easy to keep warm..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		    Delay(7*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") == 4)
		{
			PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	        Hudmessage(s:"Yzbeth:    You kept me waiting. This massive bed isn't easy to keep warm, you know..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		    Delay(6*35);
		}

		PlaySound(679, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Now it's my turn to tease you! See that spiraling soul fragment? A gift from the Baron."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		Hudmessage(s:"Three such fragments make a key to his newfound source of power. He needs it to keep his elf pet in check."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(679, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Can you believe it? He'd rather trust me than Nithriel! Trust... a volatile concept among Demons. You'll see."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"I am not fond of the Baron's orderly ways, but I am not fond of your intention to slay him either..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(679, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Soo, I say we leave it up to chaos! If the fragments find their way into your hands, I won't object!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		Hudmessage(s:"A game of hide-and-seek! Something to entertain your wits with. Oh, and if you're a good little stud..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"...I might just help you complete Adur's trial after you find out how to obtain the fragments. *Winks*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 3.5);
		Delay(7*35);

		SetActorState(679, "Vanish", 0);
		ACS_Terminate(112, 0);

		TranslucentLine(622, 255, 0);
	    Delay(2);
	    TranslucentLine(622, 225, 0);
	    Delay(2);
	    TranslucentLine(622, 200, 0);
	    Delay(2);
	    TranslucentLine(622, 175, 0);
	    Delay(2);
	    TranslucentLine(622, 150, 0);
		Delay(2);
		TranslucentLine(622, 125, 0);
	    Delay(2);
	    TranslucentLine(622, 100, 0);
	    Delay(2);
	    TranslucentLine(622, 75, 0);
	    Delay(2);
	    TranslucentLine(622, 50, 0);
	    Delay(2);
	    TranslucentLine(622, 25, 0);
		Delay(2);
		Line_SetBlocking(622, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "");
	}
}
Script 112 (void)
{
	If(GetActorProperty(679, APROP_Health) <= 0)
	{
		ACS_Terminate(113, 0);

        If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	      Hudmessage(s:"Yzbeth:    Ow- Heey! Too rough! Do you not care for what I have to say?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		  Delay(5*35);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 5)
		{
	      Hudmessage(s:"Yzbeth:    Ugh! Hey, why so mean now? I just wanted to talk!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		  Delay(5*35);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 4)
		{
	      Hudmessage(s:"Yzbeth:    Ough! Hey, aren't you curious about what I have to say?..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		  Delay(5*35);
		}
        PlaySound(0, "Hellion/Active", CHAN_AUTO, 1.0);
		Hudmessage(s:"Careful how hard you want to play!... I might just get upset and scratch back..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 2.5);
		Delay(3*35);

		TranslucentLine(622, 125, 0);
	    Delay(2);
	    TranslucentLine(622, 100, 0);
	    Delay(2);
	    TranslucentLine(622, 75, 0);
	    Delay(2);
	    TranslucentLine(622, 50, 0);
	    Delay(2);
	    TranslucentLine(622, 25, 0);
		Delay(2);
		Line_SetBlocking(622, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(622, SIDE_BACK, TEXTURE_MIDDLE, "");

		Terminate;
	}
	Delay(1);
	Restart;
}
int spec114 = 0;
Script 114 (void)
{
	If((GetActorProperty(679, APROP_Health) > 0  || GetActorProperty(681, APROP_Health) > 0) && spec114 == 1)
	{
		spec114 += 1;
		Delay(50);
		PlaySound(679, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Yzbeth:    I would never stifle someone's curiosity... but some things are best left unseen."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	}
	else
	spec114 += 1;
}
//Yzbeth Final Encounter
Script 120 (void)
{
  If(GetActorZ(0) < 786.0)
  {
	SetLineSpecial(687, 0, 0, 0, 0, 0, 0);
	ACS_Execute(122, 0, 0, 0, 0);
	SpawnSpotForced("NPCYzbethRegular", 636, 681, 0);
	SetActorFlag(681, "INVULNERABLE", 0);
	//PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.4);

	TranslucentLine(238, 150, 0);
	Delay(2);
	TranslucentLine(238, 125, 0);
	Delay(2);
	TranslucentLine(238, 100, 0);
	Delay(2);
	TranslucentLine(238, 75, 0);
	Delay(2);
	TranslucentLine(238, 50, 0);
	Delay(2);
	TranslucentLine(238, 25, 0);
	Delay(2);
	Line_SetBlocking(238, 0, BLOCKF_EVERYTHING);
	SetLineTexture(238, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(238, SIDE_BACK, TEXTURE_MIDDLE, "");

	Delay(35);

	If(GetActorProperty(681, APROP_Health) > 0)
	{
		If(CheckInventory("ScriptYzbethReaction") <= 1)
		{
	      PlaySound(681, "Hellion/Pain", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    You want the key? Take it! Take all you want, and get out of my sight!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  Delay(6*35);
		  ACS_Terminate(122, 0);
		  SetActorState(681, "Vanish", 0);
		  SetMusic("HTrack32", 0, 0);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 2)
		{
	      PlaySound(681, "Hellion/Pain", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    You want the key? Take it! You and the Baron can fight until you bleed each other out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  Delay(6*35);
		  ACS_Terminate(122, 0);
		  SetActorState(681, "Vanish", 0);
		  SetMusic("HTrack32", 0, 0);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 4)
		{
	      PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    You won. Claim the last fragment and the key is yours. The Baron better watch out..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		  SetLineSpecial(710, ACS_Execute, 140, 0, 0, 0, 0);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") == 5)
		{
	      PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    There's my victor. Here to claim the last fragment? The Baron better watch out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		  SetLineSpecial(710, ACS_Execute, 140, 0, 0, 0, 0);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	      PlaySound(681, "Hellion/Sight", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    There's my victor. Here to claim the last fragment? Or just your heated succubus?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		  SetLineSpecial(710, ACS_Execute, 140, 0, 0, 0, 0);
		}
	}
  }
}

Script 121 (void)
{
  If(IsTIDUsed(637) == 0)
  {
	SetLineSpecial(638, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(710, 0, 0, 0, 0, 0, 0);
	SetActorFlag(681, "NODAMAGE", 1);

	//If(CheckInventory("ScriptYzbethReaction") <= 2)
	//{
		TranslucentLine(622, 255, 0);
	    TranslucentLine(645, 255, 0);
	    Delay(2);
	    TranslucentLine(622, 225, 0);
	    TranslucentLine(645, 225, 0);
	    Delay(2);
	    TranslucentLine(622, 200, 0);
	    TranslucentLine(645, 200, 0);
	    Delay(2);
	    TranslucentLine(622, 175, 0);
	    TranslucentLine(645, 175, 0);
	    Delay(2);
	    TranslucentLine(622, 150, 0);
	    TranslucentLine(645, 150, 0);
	    Delay(2);
	    TranslucentLine(622, 125, 0);
	    TranslucentLine(645, 125, 0);
	    Delay(2);
	    TranslucentLine(622, 100, 0);
	    TranslucentLine(645, 100, 0);
	    Delay(2);
	    TranslucentLine(622, 75, 0);
	    TranslucentLine(645, 75, 0);
	    Delay(2);
	    TranslucentLine(622, 50, 0);
	    TranslucentLine(645, 50, 0);
	    Delay(2);
	    TranslucentLine(622, 25, 0);
	    TranslucentLine(645, 25, 0);
	    Delay(2);
		Line_SetBlocking(622, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(622, SIDE_BACK, TEXTURE_MIDDLE, "");
		Line_SetBlocking(645, 0, BLOCKF_EVERYTHING);
	    SetLineTexture(645, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(645, SIDE_BACK, TEXTURE_MIDDLE, "");

		Thing_Remove(713);
	//}

   If(CheckInventory("ScriptYzbethReaction") > 2)
   {
	//SetActorProperty(0, APROP_SPEED, 0.0);
	//Thing_Stop(0);
	//SetActorProperty(0, APROP_Friction, 0.1);

	  If(GetActorProperty(681, APROP_Health) <= 0)
	  {
	  	SpawnSpotForced("NPCYzbethRegular", 636, 681, 0);
	  }
	SetActorFlag(681, "NODAMAGE", 0);
	ACS_Terminate(122, 0);
	ACS_Execute(137, 0, 0, 0, 0);
	SetLineSpecial(712, ACS_Execute, 139, 0, 0, 0, 0);


	Delay(35);
	ACS_Terminate(120, 0);

	//ACS_Execute(123, 0, 0, 0, 0);
	//SetWeapon("Fists");
	//SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
    If(GetActorProperty(681, APROP_Health) > 0)
	{
	If(CheckInventory("ScriptYzbethReaction") == 6)
	{
		PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Yzbeth:    The key is yours... and so am I."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.90, 2.5, 0.2, 0.5);
		Delay(3*35);
		Hudmessage(s:"As long as it doesn't involve hand-holding, you can do whatever you want with me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") == 5)
	{
		//PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Yzbeth:    You have the key... now, for the true reward... come closer. I'm all yours."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
		Delay(4*35);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") == 4)
	{
		//PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Yzbeth:    You have the key now. As for Adur's task... come closer. I have much to show you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
		Delay(5*35);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") < 4)
	{
		//PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
		Hudmessage(s:"Yzbeth:    You have the key now. As for Adur's task... come closer. You have much to learn..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(6*35);
	}
	SetLineSpecial(711, ACS_Execute, 138, 0, 0, 0, 0);
	SetLineSpecial(710, ACS_Execute, 136, 0, 0, 0, 0);
	}
   }
  }
}
Script 140 (void)
{
	PlaySound(681, "Hellion/Active", CHAN_AUTO);
	If(CheckInventory("ScriptYzbethReaction") < 5)
	{
	  Hudmessage(s:"Yzbeth:    Go ahead. Claim the fragment, and then we will play..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") > 4)
	{
	  Hudmessage(s:"Yzbeth:    Nuh-uh. Claim the fragment first. Then, you can claim me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 1.5);
	}
	Delay(7*35);
}
Script 122 (void)
{
	If(GetActorProperty(681, APROP_Health) <= 0)
	{
        If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	      Hudmessage(s:"Yzbeth:    Augh! Mmmh, save that for when you're on top of me, stud."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 5)
		{
	      Hudmessage(s:"Yzbeth:    Owh! Biting already? Don't worry, big girl. We'll be wrestling soon enough."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  GiveInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 4)
		{
	      Hudmessage(s:"Yzbeth:    Hnf! Can't you hold yourself for a moment?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  //GiveInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 3)
		{
	      Hudmessage(s:"Yzbeth:    Ow! Why do you hate me?!... You got what you wanted from me and now you broke my heart..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		  GiveInventory("ScriptYzbethRejected", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 2)
		{
	      Hudmessage(s:"Yzbeth:    Hopeless brute! Violence is the only thing you're capable of!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 2.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		  GiveInventory("ScriptYzbethRejected", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") <= 1)
		{
	      Hudmessage(s:"Yzbeth:    Fuck you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 1.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		}

		ACS_Terminate(121, 0);

		Terminate;
	}
	Delay(1);
	Restart;
}

Script 123 (void) //unused
{
	If(GetActorPitch(0) > 0.01)
	{
	  SetActorPitch(0, GetActorPitch(0) - 0.01);
	}
	else
	If(GetActorPitch(0) < -0.01)
	{
	  SetActorPitch(0, GetActorPitch(0) + 0.01);
	}

	If(GetActorAngle(0) > 1.05)
	{
	  SetActorAngle(0, GetActorAngle(0) - 0.03);
	}
	else
	If(GetActorAngle(0) < 0.95)
	{
	  SetActorAngle(0, GetActorAngle(0) + 0.03);
	}

	Delay(1);
	Restart;
}

Script 136 (void)
{
  If(GetActorProperty(681, APROP_Health) > 0)
  {
	SetActorProperty(0, APROP_SPEED, 0.0);
	Thing_Stop(0);
	SetActorProperty(0, APROP_Friction, 0.1);

	If(GetActorProperty(681, APROP_Health) <= 0)
	{
		SpawnSpotForced("NPCYzbethRegular", 636, 681, 0);
	}
	SetActorFlag(681, "NODAMAGE", 1);
	ACS_Terminate(122, 0);
	ACS_Terminate(137, 0);
	Delay(16);

	//ACS_Execute(123, 0, 0, 0, 0);
	SetWeapon("Fists");
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);

	GiveInventory("ScriptBadKarma", 1);

    Delay(16);
	SetActorState(681, "Tease", 0);
	Delay(35);
	PlaySound(681, "Inventory/PickShort", CHAN_AUTO, 0.4);
	FadeTo(0, 0, 0, 1.0, 0.0);

	SetMugshotState("Grinning");
	Delay(1*35);
	PlaySound(681, "Hellion/Sight", CHAN_AUTO, 1.0);
	Delay(3*35);
	PlaySound(681, "Hellion/Active", CHAN_AUTO, 1.0);
	Delay(2*35);
	SetMugshotState("Ouch");
	Delay(1*35);

	SetMugshotState("Sleep");

	If(CheckInventory("ScriptYzbethReaction") > 4)
	{
        GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
	}
	If(CheckInventory("ScriptYzbethReaction") > 5)
	{
        GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
		GiveInventory("HealthBonus", 1);
		Delay(4);
	}

	Line_SetBlocking(622, 0, BLOCKF_EVERYTHING);
	SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(622, SIDE_BACK, TEXTURE_MIDDLE, "");
	Line_SetBlocking(645, 0, BLOCKF_EVERYTHING);
	SetLineTexture(645, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(645, SIDE_BACK, TEXTURE_MIDDLE, "");

	Delay(70);

	Thing_Remove(681);
	SpawnSpotForced("InventoryPieceOfPerfumedCloth", 636, 0, 0);

	SetMugshotState("Normal");
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 4.0);

	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	Delay(70);
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
		PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
		Hudmessage(s:"Elzriel:    ...did I really have to watch that?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.90, 3.5, 0.2, 1.5);
	}
	Delay(35);
	SetMusic("HTrack32", 0, 0);
  }
}

Script 137 (void)
{
	If(GetActorProperty(681, APROP_Health) <= 0)
	{
		ACS_Terminate(136, 0);
		ACS_Terminate(138, 0);
		ACS_Terminate(139, 0);
		SetLineSpecial(711, 0, 0, 0, 0, 0, 0);
        SetLineSpecial(712, 0, 0, 0, 0, 0, 0);

        If(CheckInventory("ScriptYzbethReaction") > 4)
		{
	      Hudmessage(s:"Yzbeth:    *Gasps* Devious brute!!! You got what you wanted from me and now you're shoving me?!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(8*35);
		  Hudmessage(s:"Fine!!! So be it!!! I was your only chance to get Adur's taint, but oh well!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  SetMusic("HTrack32", 0, 0);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") < 5)
		{
	      Hudmessage(s:"Yzbeth:    Ugh!!! How dare you shove me like that?! Oh, you really just hate me, don't you!?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(8*35);
		  Hudmessage(s:"You were so boring anyway! Good luck getting Adur's taint without me showing you some pity!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  SetMusic("HTrack32", 0, 0);
		}

		Terminate;
	}
	Delay(1);
	Restart;
}

Script 138 (void)
{
  If(GetActorProperty(681, APROP_Health) > 0)
  {
  SetLineSpecial(711, 0, 0, 0, 0, 0, 0);
    If(CheckInventory("ScriptYzbethReaction") > 4)
	{
		PlaySound(681, "Hellion/Active", CHAN_AUTO);
		Hudmessage(s:"Yzbeth:    Where are you going now, stud?... I'm not going to stay hot forever."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
	    TakeInventory("ScriptYzbethReaction", 1);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") < 5)
	{
		PlaySound(681, "Hellion/Active", CHAN_AUTO);
        Hudmessage(s:"Yzbeth:    Keeping me waiting, again? I assure you, it does little to excite me..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
	}
  }
}
Script 139 (void)
{
  If(GetActorProperty(681, APROP_Health) > 0)
  {
  SetLineSpecial(711, 0, 0, 0, 0, 0, 0);
  SetLineSpecial(712, 0, 0, 0, 0, 0, 0);
  ACS_Terminate(121, 0);

    If(CheckInventory("ScriptYzbethReaction") > 4)
	{
	      Hudmessage(s:"Yzbeth:    What?! Are you just going to leave like that?! Ugh, how dare you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  Delay(7*35);
		  ACS_terminate(137, 0);
		  Delay(8);
		  SetActorState(681, "Vanish", 0);
		  Hudmessage(s:"Fine!!! So be it!!! I was your only chance to get Adur's taint, but oh well!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  SetMusic("HTrack32", 0, 0);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") < 5)
	{
	      Hudmessage(s:"Yzbeth:    What?! You're just going to walk away from me now?! Am I too much for you, or what?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(7*35);
		  ACS_terminate(137, 0);
		  Delay(8);
		  SetActorState(681, "Vanish", 0);
		  Hudmessage(s:"Ugh, you're so boring anyway! Good luck getting Adur's taint without me showing you pity!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 2.5);
		  GiveInventory("ScriptYzbethRejected", 1);
		  SetMusic("HTrack32", 0, 0);
	}
  }
}

//Secret Gallery
int Spec24 = 0;
int Spec25 = 0;
int Spec26 = 0;
Script 24 (void)
{
	If(Spec24 == 0 && Spec26 == 0)
	{
		Spec24 = 1;
		Thing_Activate(254);
		PlaySound(254, "Switches/Switch3", CHAN_AUTO);
	}
}

Script 25 (void)
{
	If(Spec24 == 1 && Spec25 == 0 && Spec26 == 0)
	{
		Spec25 = 1;
		Thing_Activate(255);
		PlaySound(255, "Switches/Switch3", CHAN_AUTO);
	}
	else
    If(Spec26 == 0)
	{
		Thing_Activate(255);
		PlaySound(255, "Switches/Switch3", CHAN_AUTO);
		Delay(8);
		Spec25 = 0;
		Thing_Deactivate(255);
		PlaySound(254, "Switches/Switch3", CHAN_AUTO, 0.4);
		Spec24 = 0;
		Thing_Deactivate(254);
		PlaySound(254, "Switches/Switch3", CHAN_AUTO, 0.4);
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}

}

Script 26 (void)
{
	If(Spec24 == 1 && Spec25 == 1 && Spec26 == 0)
	{
		Spec26 = 1;
		Thing_Activate(256);
		PlaySound(256, "Switches/Switch3", CHAN_AUTO);
		Delay(35);
		Floor_LowerByValue(239, 4, 89);
	}
	else
	If(Spec26 == 0)
	{
		Thing_Activate(256);
		PlaySound(256, "Switches/Switch3", CHAN_AUTO);
		Delay(8);
		Spec26 = 0;
		Thing_Deactivate(256);
		PlaySound(256, "Switches/Switch3", CHAN_AUTO, 0.4);
		Spec25 = 0;
		Thing_Deactivate(255);
		PlaySound(255, "Switches/Switch3", CHAN_AUTO, 0.4);
		Spec24 = 0;
		Thing_Deactivate(254);
		PlaySound(254, "Switches/Switch3", CHAN_AUTO, 0.4);
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}

}


//POOL CHAMBER PUZZLE
int spec14 = 0;
int spec510 = 0;
int spec520 = 0;
int spec530 = 0;
int spec540 = 0;
int spec550 = 0;
int spec560 = 0;
//Door Open
Script 14 (void)
{
	If(spec14 == 0)
	{
	Spec14 += 1;
	SetLineSpecial(217, 0, 0, 0, 0, 0, 0);
	SpawnSpotForced("ShieldWallIronmaiden", 232, 663, 128);
	SpawnSpotForced("ShieldWallIronmaiden", 233, 663, 0);
	Delay(35);
	Thing_Deactivate(663);
	Radius_Quake(1, 105, 0, 1, 0);
	Delay(70);
	Polyobj_Move(810, 16, 192, 56);
	Polyobj_Move(990, 16, 64, 56);
	Polyobj_Move(1170, 16, 192, 56);
	Polyobj_Move(1350, 16, 64, 56);
	Polyobj_Move(720, 16, 128, 56);
	Polyobj_Move(900, 16, 0, 56);
	Polyobj_Move(1080, 16, 128, 56);
	Polyobj_Move(1260, 16, 0, 56);

	Delay(35);
	Thing_Activate(663);
	SpawnSpotForced("PitLord", 230, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 230, 0, 0);
	PlaySound(230, "misc/teleport", CHAN_AUTO);
	Delay(4);
	NoiseAlert(0, 0);

	Delay(140);
	Thing_Activate(214);
	Delay(20*35);
	SetActorProperty(663, APROP_Speed, 17.0);
	}
}

//Starting Switch
Script 21 (void)
{
	If(CheckInventory("GoldenKey") > 0)
	{
	SetLineSpecial(249, 0, 0, 0, 0, 0, 0);
	PlaySound(250, "Interaction/MachineOn", CHAN_AUTO);
	ChangeFloor(251, "Sw05_DN");
	Thing_Remove(701);
	Delay(8);
	Floor_RaiseByValue(252, 4, 64);
	SetLineSpecial(248, ACS_Execute, 20, 0, 0, 0, 0);
	TagWait(252);
	Delay(70);
	Floor_LowerByvalue(247, 4, 48);
	}
	else
    If(CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These switch requires a Golden key to operate.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

//Cameras
Script 20 (void)
{
	If(GetActorZ(0) > 856.0)
	{
		If(spec510 == 0)
		{
		ChangeCamera(510, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 0)
		{
		ChangeCamera(520, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 1 && spec530 == 0)
		{
		ChangeCamera(530, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 0)
		{
		ChangeCamera(540, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 1 && spec550 == 0)
		{
		ChangeCamera(550, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 1 && spec550 == 1 && spec560 == 0)
		{
		ChangeCamera(560, 0, 1);
		}
		else
		If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 1 && spec550 == 1 && spec560 == 1)
		{
		ChangeCamera(560, 0, 1);
		}
	}
}
//Switches
Script 510 (void)
{
	If(spec510 == 0)
	{
		Spec510 = 1;
		Thing_Activate(511);
		PlaySound(511, "Interaction/FireBlow", CHAN_AUTO);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
Script 520 (void)
{
	If(spec510 == 1 && spec520 == 0)
	{
		Spec520 = 1;
		Thing_Activate(521);
		PlaySound(521, "Interaction/FireBlow", CHAN_AUTO);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
Script 530 (void)
{
	If(spec510 == 1 && spec520 == 1 && spec530 == 0)
	{
		Spec530 = 1;
		Thing_Activate(531);
		PlaySound(531, "Interaction/FireBlow", CHAN_AUTO);
		Thing_Activate(231);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
Script 540 (void)
{
	If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 0)
	{
		Spec540 = 1;
		Thing_Activate(541);
		PlaySound(541, "Interaction/FireBlow", CHAN_AUTO);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
Script 550 (void)
{
	If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 1 && spec550 == 0)
	{
		Spec550 = 1;
		Thing_Activate(551);
		PlaySound(551, "Interaction/FireBlow", CHAN_AUTO);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
Script 560 (void)
{
	If(spec510 == 1 && spec520 == 1 && spec530 == 1 && spec540 == 1 && spec550 == 1 && spec560 == 0)
	{
		Spec560 = 1;
		Thing_Activate(561);
		PlaySound(561, "Interaction/FireBlow", CHAN_AUTO);

		ACS_Execute(14, 0, 0, 0, 0);
	}
	else
	  If(spec510 == 1)
	  {
	  ACS_Execute(500, 0, 0, 0, 0);
	  }
}
//Reset
Script 500 (void)
{
	spec510 = 0;
	Thing_Deactivate(511);
	PlaySound(511, "Interaction/Boil", CHAN_AUTO);
	spec520 = 0;
	Thing_Deactivate(521);
	PlaySound(512, "Interaction/Boil", CHAN_AUTO);
	spec530 = 0;
	Thing_Deactivate(531);
	PlaySound(513, "Interaction/Boil", CHAN_AUTO);
	spec540 = 0;
	Thing_Deactivate(541);
	PlaySound(514, "Interaction/Boil", CHAN_AUTO);
	spec550 = 0;
	Thing_Deactivate(551);
	PlaySound(515, "Interaction/Boil", CHAN_AUTO);
	spec560 = 0;
	Thing_Deactivate(561);
	PlaySound(516, "Interaction/Boil", CHAN_AUTO);
}

//LIBRARY
//Crawler Ambush
Script 37 (void)
{
	If(GetActorZ(0) > 900.0)
	{
	  SetLineSpecial(686, 0, 0, 0, 0, 0, 0);
	  Ceiling_MoveTovalue(305, 16, 927, 0);
	}
}
//Chandelier Chains
Script 38 (void)
{
	If(GetActorZ(0) > 874.0 && GetActorZ(0) < 890.0)
	{
	  PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
	  Delay(6);
	  PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
	  Delay(50);
	}
}
Script 39 (void)
{
	If(GetActorZ(0) < 840.0)
	{
	  PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
	  Delay(6);
	  PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
	  Delay(50);
	}
}


//LABORATORY FIGHT
int Spec46 = 0;
Script 46 (void)
{
	PlaySound(0, "PsiDemon/Active1", CHAN_AUTO);

	Line_SetBlocking(338, BLOCKF_EVERYTHING, 0);
	SetLineTexture(338, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
	TranslucentLine(338, 0, 0);
	Delay(2);
	TranslucentLine(338, 25, 0);
	Delay(2);
	TranslucentLine(338, 50, 0);
	Delay(2);
	TranslucentLine(338, 75, 0);
	Delay(2);
	TranslucentLine(338, 100, 0);
	Delay(2);
	TranslucentLine(338, 125, 0);
	Delay(2);
	TranslucentLine(338, 150, 0);
	Delay(2);
	TranslucentLine(338, 175, 0);
	Delay(2);
	TranslucentLine(338, 200, 0);
	Delay(2);
	TranslucentLine(338, 225, 0);
	Delay(2);
	TranslucentLine(338, 250, 0);

	Delay(50);
	ACS_Execute(47, 0, 0, 0, 0);
	PlaySound(341, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(1, 16, 0, 12, 341);

    Light_Fade(342, 108, 90);
	Thing_Remove(337);
	Thing_Activate(336);
	Delay(90);
	Thing_Remove(336);
	Thing_Activate(335);
	Delay(15);
	PlaySound(341, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(1, 16, 0, 12, 341);

	Delay(105);
	PlaySound(341, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(1, 16, 0, 12, 341);

	Delay(105);
	PlaySound(341, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(1, 16, 0, 12, 341);

    Light_Fade(342, 124, 70);
	Ceiling_RaiseByValue(334, 15, 111);
	Thing_Activate(333);
	TagWait(334);
	Thing_Remove(333);
	Thing_Activate(332);

	PlaySound(0, "PsiDemon/Active2", CHAN_AUTO);
	Delay(105);

	Thing_Activate(341);
	Thing_Activate(354);

	PlaySound(341, "Ambient/Impact", CHAN_AUTO);
	Radius_Quake(8, 105, 0, 1, 0);
	SpawnSpotForced("DustCloud", 347, 0, 0);
	SpawnSpotForced("JunkBrokenGlassA", 345, 665, 0);
	SpawnSpotForced("JunkBrokenGlassB", 345, 665, 0);
	PlaySound(345, "Weapons/PotionDie", CHAN_AUTO);
	PlaySound(346, "Interaction/IceShatter", CHAN_AUTO);
	SetActorProperty(665, APROP_ScaleX, 1.5);
	SetActorProperty(665, APROP_ScaleY, 1.5);
	Line_SetBlocking(329, 0, BLOCKF_EVERYTHING);
	SetLineTexture(329, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(329, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Thing_Activate(349);

	Ceiling_RaiseByValue(351, 999, 112);
	Ceiling_RaiseByValue(353, 3, 31);
	TagWait(351);
	NoiseAlert(0, 0);
	Ceiling_LowerByValue(352, 9, 90);
	TagWait(352);
	Thing_Remove(349);
	Thing_Activate(350);
	Delay(16);
	//Thing_Activate(339);
	Ceiling_LowerByValue(352, 1, 32);
	Ceiling_LowerByValue(353, 1, 32);
	TagWait(352);
	Thing_Remove(350);

    Thing_Remove(363);
    SetActorFlag(340, "INVISIBLE", 0);
	SetActorFlag(356, "INVISIBLE", 0);
	Delay(10*35);
	Thing_Activate(339);
	Delay(8*35);
	Polyobj_DoorSwing(631,-24,64,0x7FFFFFFF);
	SetLineSpecial(327, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(357, 80, 541, 0, 0, 0, 0);
	Delay(16);
    Thing_Activate(340);
	Thing_Activate(356);
	Delay(8);
	NoiseAlert(0, 0);

	Delay(35);
	SpawnSpotForced("SniperHellion", 355, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 355, 0, 0);
	PlaySound(355, "misc/teleport", CHAN_AUTO, 1.0, false, 0.3);
}
Script 47 (void)
{
	If(GetActorProperty(340, APROP_Health) < 1)
	{
	TranslucentLine(338, 250, 0);
	TranslucentLine(361, 125, 0);
	Delay(2);
	TranslucentLine(338, 225, 0);
	TranslucentLine(361, 112, 0);
	Delay(2);
	TranslucentLine(338, 200, 0);
	TranslucentLine(361, 100, 0);
	Delay(2);
	TranslucentLine(338, 175, 0);
	TranslucentLine(361, 87, 0);
	Delay(2);
	TranslucentLine(338, 150, 0);
	TranslucentLine(361, 75, 0);
	Delay(2);
	TranslucentLine(338, 125, 0);
	TranslucentLine(361, 62, 0);
	Delay(2);
	TranslucentLine(338, 100, 0);
	TranslucentLine(361, 50, 0);
	Delay(2);
	TranslucentLine(338, 75, 0);
	TranslucentLine(361, 37, 0);
	Delay(2);
	TranslucentLine(338, 50, 0);
	TranslucentLine(361, 25, 0);
	Delay(2);
	TranslucentLine(338, 25, 0);
	TranslucentLine(361, 12, 0);
	Delay(2);
	Line_SetBlocking(338, 0, BLOCKF_EVERYTHING);
	SetLineTexture(338, SIDE_BACK, TEXTURE_MIDDLE, "");
	Line_SetBlocking(361, 0, BLOCKF_EVERYTHING);
	SetLineTexture(361, SIDE_BACK, TEXTURE_MIDDLE, "");
	SetLineTexture(361, SIDE_FRONT, TEXTURE_MIDDLE, "");
	Terminate;
	}
	Delay(105);
	Restart;
}

//LANCER PAINTING
//Cry for Help
int spec81 = 3;
int dial82 = 8;
Script 81 (void)
{
  If(GetActorProperty(196, APROP_Health) > 0)
  {
	If(Spec81 == 3)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Zan?!... oh, the Gods have answered my pleas! I am trapped in this painting!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(7*35);
		Spec81 += 1;
		GiveInventory("QuestMap19RescueLancer", 2);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");
		SetLineSpecial(596, ACS_Execute, 84, 0, 0, 0, 0);
		SetLineSpecial(595, ACS_Execute, 82, 0, 0, 0, 0);
	}
	If(Spec81 % 3 == 1)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    I can hardly endure this torment any longer! Please, warrior, help me out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(900*35);
		Spec81 += 1;
		dial82 = 11;
	}
	else
	If(Spec81 % 3 == 2)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Zan! I beseech you! Find a way to release me from this wretched canvas!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 1.5);
		Delay(900*35);
		Spec81 += 1;
		dial82 = 11;
	}
	else
	If(Spec81 % 3 == 0)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Please, Zan, don't forget about me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 1.5);
		Delay(900*35);
		Spec81 += 1;
		dial82 = 11;
	}
  }
}
//Dialogue
int spec82 = 0;
//int dial82 = 8;
int dial82b = 4;
Script 82 (void)
{
  If(GetActorProperty(196, APROP_Health) > 0)
  {
	If(spec82 == 1 && IsTIDUSed(664) == 0)
	{
	  If(dial82b % 4 == 0)
	  {
		PlaySound(196, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    There has to be a way to enter the painting... Yzbeth is keeping a hidden access somewhere!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82b += 1;
		Delay(2*35);
	  }
	  else
	  If(dial82b % 4 == 1)
	  {
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    I feel a draft behind me. It carries a mixture of scents with it... I can identify fae dust!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82b += 1;
		Delay(2*35);
	  }
	  else
	  If(dial82b % 4 == 2)
	  {
		PlaySound(196, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    The draft sometimes carries the sound of footsteps climbing up a flight of stairs..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82b += 1;
		Delay(2*35);
	  }
	  else
	  If(dial82b % 4 == 3)
	  {
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Urgh! I'm losing my temper here! Use your wits, Zan, you're the one who can explore freely!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82b += 1;
		Delay(2*35);
	  }
	}
	else
	If(CheckInventory("InventoryOrcDoll") > 0 && spec82 == 0)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Yes, yes! That's the doll! Now you must enter the painting and bring it to me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		spec82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 0)
	{
		PlaySound(196, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    I was captured after our grand siege had failed. The scum denied me a warrior's death."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 1)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    Thanks to the succubus matron, Yzbeth, I could be trapped inside this painting for eternity!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 2)
	{
		PlaySound(196, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    After entertaining Yzbeth with a few conversations, I've learned how to escape. But I need help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 3)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    The matron used a doll as a vessel for my curse. Find where she keeps it and bring it to me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 4)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    There is a pedestal inside the painting. I believe that's where the doll goes. However..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 5)
	{
		PlaySound(196, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    ...how would you ever reach the pedestal? You'd have to get inside the painting first..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 6)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    By the Gods, I can hardly endure this any longer... having been paralyzed for so long..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
	else
	If(dial82 % 8 == 7)
	{
		PlaySound(196, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Lancer Painting:    The few other captives have simply been petrified. I'd rather be a dead statue than this..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial82 += 1;
		Delay(2*35);
	}
  }
}
Script 134 (void)
{
  SetLineSpecial(701, 0, 0, 0, 0, 0, 0);
  If(GetActorProperty(196, APROP_Health) > 0 && CheckProximity(0, "Zan", 1600.0, 1))
  {
	PlaySound(196, "Lancer/Ha", CHAN_AUTO);
	HudmessageBold(s:"Lancer Painting:    Look out! Down the hallway!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.5, 0.2, 0.5);
  }
}
int dial83 = 5;
Script 83 (void)
{
If(GetActorProperty(196, APROP_Health) > 0)
{
	If(Spec81 == 3)
	{
		ACS_Execute(81, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryOrcDoll") > 0)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer:    Quick! Place the doll on the nearby pedestal!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(8*35);
	}
	else
	If(dial83 % 5 == 0)
	{
		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer:    It's great that you found a way inside here, but without the doll, I can't be freed!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial83 += 1;
		Delay(2*35);
	}
	else
	If(dial83 % 5 == 1)
	{
		Hudmessage(s:"Lancer:    Yzbeth must have hidden the doll somewhere... who could predict her twisted demeanor?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial83 += 1;
		Delay(2*35);
	}
	else
	If(dial83 % 5 == 2)
	{
		PlaySound(196, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer:    They see a brick wall, I see an orc doll... she once told me this. What could it possibly mean?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial83 += 1;
		Delay(2*35);
	}
	else
	If(dial83 % 5 == 3)
	{
		Hudmessage(s:"Lancer:    I feel like the painting itself is... fixating me. The doll could trick it into releasing me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial83 += 1;
		Delay(2*35);
	}
	else
	If(dial83 % 5 == 4)
	{
		PlaySound(196, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer:    Keep looking, Zan! If it's in vain, then throw the painting in a magma pit and end my suffering..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial83 += 1;
		Delay(2*35);
	}
}
}
int dial85 = 6;
Script 85 (void)
{
If(GetActorProperty(675, APROP_Health) > 0)
{
	If(dial85 % 6 == 0)
	{
		PlaySound(675, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Lancer:    *Stretches* My body is too weak to keep going... don't worry, I just need time to recover."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
	else
	If(dial85 % 6 == 1)
	{
		PlaySound(675, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer:    Go without me! The task of defeating the Icon is far more important than coddling me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
	else
	If(dial85 % 6 == 2)
	{
		PlaySound(675, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Lancer:    My magic powers will slowly nourish me back into shape. Don't worry about me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
	else
	If(dial85 % 6 == 3)
	{
		PlaySound(675, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer:    If you're overwhelmed, lead the enemy here! My body may be weak now, but my Crylance isn't."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
	else
	If(dial85 % 6 == 4)
	{
		PlaySound(675, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"Lancer:    *Stretches and groans* Send my regards to our sisters. I can't wait to see them after so long..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
	else
	If(dial85 % 6 == 5)
	{
		PlaySound(675, "Lancer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Lancer:    How long has it been?... Weeks? Moons? Whole rotations? It's difficult to track time down here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		dial85 += 1;
		Delay(2*35);
	}
}
}
//Access
Script 43 (void)
{
	//If(CheckInventory("InventoryIronLever") > 0)
	//{
		//SetLineSpecial(325, 0, 0, 0, 0, 0, 0);
		//TakeInventory("InventoryIronLever", 1);
		//SpawnSpotForced("IDLever", 324, 664, 128);
		//SetActorPitch(664, 0.75);
		//PlaySound(324, "Metal/Bounce1", CHAN_AUTO);
		//Delay(16);
		//SetActorPitch(664, 0.65);
	    //PlaySound(324, "Interaction/MachineOn");
		//Delay(24);
		Floor_LowerByValue(326, 8, 90);
	//}
	//else
	//If(CheckInventory("InventoryIronLever") == 0)
	//{
		//Print(s:"The mechanism lacks an operation lever.");
		//PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    //Delay(35);
	//}
}
//Toggle Painting Thing
Script 41 (void)
{
	  SetActorFlag(323, "INVISIBLE", 1);
}
Script 42 (void)
{
	  SetActorFlag(323, "INVISIBLE", 0);
}
//Release
Script 84 (void)
{
	If(CheckInventory("InventoryOrcDoll") > 0)
	{
		SetLineSpecial(596, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(595, 0, 0, 0, 0, 0, 0);
		Line_SetBlocking(199, 0, BLOCKF_EVERYTHING);
		Thing_Remove(323);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

        TakeInventory("InventoryOrcDoll", 1);
		SpawnSpotForced("IDOrcDoll", 597, 0, 0);
		PlaySound(597, "Inventory/PickShort", CHAN_AUTO);

		Delay(70);
		Thing_Remove(197);
		Thing_Activate(198);
		SetActorFlag(198, "INVISIBLE", 0);
		PlaySound(198, "Magic/Spark", CHAN_AUTO);

		If(GetActorProperty(196, AProp_Health) > 0)
		{
		Delay(70);
		SetActorAngle(196, 0.3);

		PlaySound(196, "Lancer/Ha", CHAN_AUTO);
		Hudmessage(s:"Lancer:    I...I-I can finally move! Thank you, warrior! May the Gods witness your wits and bless you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(6*35);

		PlaySound(196, "Lancer/Heh", CHAN_AUTO);
		Hudmessage(s:"Let us leave this foul place at once!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
		Delay(2*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);
		Thing_Remove(196);
		Teleport_NoFog(599, 1, 0);
		SpawnSpotForced("IDLancerStationary", 598, 675, 128);
		Delay(35);

		ACS_Execute(88, 0, 0, 0, 0);
		SetLineSpecial(600, 0, 0, 0, 0, 0, 0);

		Delay(35);
		FadeTo(0, 0, 0, 0.0, 1.0);
		PlaySound(675, "Lancer/Pain", CHAN_AUTO);
		Hudmessage(s:"*Panting* Oh no... the atrophy... my body is too weak to continue... I'll just slow you down... go on... without me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.5, 0.2, 1.5);
		Delay(3*35);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");
		}
		TakeInventory("QuestMap19RescueLancer", 1);

		If(CheckInventory("QuestMap18EnterPortal") > 0)
		{
		  Delay(4*35);
		  PlaySound(675, "Lancer/Heh", CHAN_AUTO);
		  Hudmessage(s:"But before you go... while trapped in the painting, my crystals have gathered an excess of energy..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		  Delay(5*35);
		  SpawnSpotForced("HeavyArmorCrystal", 646, 684, 0);
		  PlaySound(646, "Inventory/PickBase", CHAN_AUTO);
		  Delay(2*35);
		  PlaySound(675, "Magic/ShadowsActivate", CHAN_AUTO);
		  PlaySound(675, "Magic/Dispel", CHAN_AUTO);
		  Hudmessage(s:"...I'll funnel it into this armor amulet. Take it, along with my gratitude. May it protect you well!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.5, 0.2, 0.5);
		  Delay(3*35);
		  Thing_Remove(684);
		  SpawnSpotForced("OverchargedArmorCrystal", 646, 0, 0);
		  SpawnSpotForced("ExplosionMagicPurple", 646, 0, 0);
		}

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

	}
	else
	{
		Print(s:"The pedestal is empty.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}



//YELLOW PRIMARCH
//Rescue
Script 75 (void)
{
	PlaySound(585, "Primarch/YellowB", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"Primarch Avatar:    You! Down there! You're no servant of Yzbeth, is that right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(7*35);
	PlaySound(585, "Primarch/YellowA", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Hudmessage(s:"She keeps me trapped behind this glass. Free me, and I will make it worth your while!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
}
int spec76 = 0;
Script 76 (void)
{
	SetLineSpecial(586, 0, 0, 0, 0, 0, 0);
	If(IsTIDUsed(585) && Spec76 == 0)
	{
		PlaySound(585, "Primarch/YellowB", CHAN_AUTO, 1.0, false, ATTN_NONE);
	    Hudmessage(s:"Primarch Avatar:    You! Get me out of this shameful dump and I'll make you rich! You have my word!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.92, 6.5, 0.2, 0.5);
		Spec76 += 1;
		Delay(7*35);
	}
	else
	If(IsTIDUsed(585) && Spec76 == 1)
	{
		PlaySound(585, "Primarch/YellowB", CHAN_AUTO, 1.0, false, ATTN_NONE);
	    Hudmessage(s:"Primarch Avatar:    Stop idling about! Rescue me and I'll make you rich! I said you have my word!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.92, 6.5, 0.2, 0.5);
		Spec76 -= 1;
		Delay(7*35);
	}
	If(IsTIDUsed(585) == 0)
	{
		 SetLineSpecial(587, 0, 0, 0, 0, 0, 0);
		 PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
		 Hudmessage(s:"Elzriel:    I am Elzriel, the Golden Primarch! Giver of wealth! Taker of sovereignty!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.92, 6.5, 0.2, 0.5);
		 Delay(7*35);
		 PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
		 Hudmessage(s:"Return me to my altar and I'll give you ninety nine parts off of any deal - an offer you can't refuse!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.92, 7.5, 0.2, 1.5);
	}
}
//Moan
Script 77 (void)
{
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
		SetLineSpecial(588, 0, 0, 0, 0, 0, 0);
		PlaySound(0, "Primarch/YellowB", CHAN_AUTO, 1.0);
	    Hudmessage(s:"Elzriel:    Where are you taking me?! My shrine is here, in Yzbeth's domain! Don't waste my precious time!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	}
}
//Remark
Script 79 (void)
{
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
		Thing_Remove(591);
		PlaySound(0, "Primarch/YellowA", CHAN_AUTO, 1.0);
	    Hudmessage(s:"Elzriel:   Like the fountain? In this place, water is just as precious as gold! Hurry now, my altar is nearby."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	}
}

//Dialogue && Placing Back
int dial78 = 4;
Script 78 (void)
{
If(GetActorZ(0) > 735.0)
{
	If(CheckInventory("QuestMap19YellowPrimarch") == 1)
	{
		Print(s:"The primarch's avatar remains silent.");
		PlaySound(0, "Character/ZanHuhs", CHAN_AUTO);
	    Delay(35);
	}
	else
	If(CheckInventory("InventoryPrimarchAvatar") > 0)
	{
		SetWeapon("Fists");
		TakeInventory("InventoryPrimarchAvatar", 1);
		Thing_Remove(591);
		SetLineSpecial(588, 0, 0, 0, 0, 0, 0);
		PlaySound(589, "Metal/Land", CHAN_AUTO);
		PlaySound(589, "Rock/Land", CHAN_AUTO);
		PlaySound(589, "Inventory/PickCoin", CHAN_AUTO);
		FloorAndCeiling_RaiseByvalue(590, 999, 192);

		Delay(35);

		PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	    Hudmessage(s:"Elzriel:    Ahh, finally back! Yzbeth's soul should burn for a whole century for defying me like this!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);

		Hudmessage(s:"As for your reward... well, if you seek to challenge the Baron you will need my permission. So then..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
		Delay(8*35);

		PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
		Hudmessage(s:"...a demon wishing to bear the taint of gold must prove worthy. Thirty thousand gold coins is my price."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 3.5);
		Delay(11*35);

		PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	    Hudmessage(s:"Oh, I did say I'd give you ninety nine parts off, right? Lucky you, that sets you down to three hundred."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 7.5, 0.2, 0.5);
	    Delay(8*35);
		GiveInventory("QuestMap19YellowPrimarch", 2);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
		Hudmessage(s:"A trivial investment considering the riches that await you in return. Go ahead, start emptying your pockets."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
	    Delay(7*35);
	}
	else
	If(dial78 % 4 == 0 && CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    Aww, come on, you don't have a measly three hundred gold coins to spare?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial78 += 1;
	  Delay(2*35);
	}
	else
	If(dial78 % 4 == 1 && CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    If you can't amass any wealth, how do you expect to garner any notable attention?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial78 += 1;
	  Delay(2*35);
	}
	else
	If(dial78 % 4 == 2 && CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
	  Hudmessage(s:"Elzriel:    Are you even sure you want to do this? Your world will do better under someone with... proper expertise."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial78 += 1;
	  Delay(2*35);
	}
	else
	If(dial78 % 4 == 3 && CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  Hudmessage(s:"Elzriel:    The Baron is a master of trade, among other things. To challenge him, you should be at least as good."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial78 += 1;
	  Delay(2*35);
	}
	else
	If(IsTIDUsed(585))
	{
		Print(s:"The scratches covering the golden frame suggest that its content has been pried out recently.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
}

//Taint Offering
Script 65 (void)
{
	If(CheckInventory("InventoryGoldCoin") >= 300 && CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
		SetLineSpecial(576, 0, 0, 0, 0, 0, 0);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Line_SetBlocking(577, BLOCKF_MONSTERS, 0);
		Line_SetBlocking(577, BLOCKF_PROJECTILES, 0);
		Line_SetBlocking(594, BLOCKF_MONSTERS, 0);
		Line_SetBlocking(594, BLOCKF_PROJECTILES, 0);

		SetWeapon("Fists");
		Delay(12);

		TakeInventory("InventoryGoldCoin", 300);
		SpawnSpotForced("IDCoinLots", 573, 667, 0);
		SpawnSpotForced("IDCoinSeveral", 574, 668, 0);
		SpawnSpotForced("IDCoinFew", 575, 669, 0);
		PlaySound(573, "Inventory/PickCoin", CHAN_AUTO);
		Delay(2);
		PlaySound(573, "Inventory/PickCoin", CHAN_AUTO);
		Delay(2);
		PlaySound(573, "Inventory/PickCoin", CHAN_AUTO);
		Delay(2);
		PlaySound(573, "Inventory/PickCoin", CHAN_AUTO);
		Delay(2);
		PlaySound(573, "Inventory/PickCoin", CHAN_AUTO);
		Delay(2);
		ACS_Execute(48, 0, 0, 0, 0);

		Delay(35);

		PlaySound(0, "Primarch/YellowB", CHAN_AUTO);
		Hudmessage(s:"Elzriel:    Hrnnn, a pitiful pile of gold... but a deal is a deal. You've earned the taint of the Golden Primarch."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);

		Delay(4*35);

		TakeInventory("QuestMap19YellowPrimarch", 1);
		PlaySound(0, "Inventory/Writing", CHAN_AUTO);
		Log(s:"Journal updated.");

		Delay(2*35);
		//ACS_Execute(48, 0, 0, 0, 0);

		PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
		Hudmessage(s:"Oh and... I did mention I would make you rich, right? *Snickers*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 1.5);

        SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
		ACS_NamedExecute("CloseJournal", 0, 0, 0, 0);

		Delay(3*35);

		Radius_Quake(1, 199, 0, 1, 0);
		SetActorProperty(0, APROP_Gravity, 0.0);
		SetActorFlag(667, "NOGRAVITY", 1);
		SetActorFlag(668, "NOGRAVITY", 1);
		SetActorFlag(669, "NOGRAVITY", 1);
		Delay(1*35);
		ThrustThingZ(669, 4, 0, 1);
		Delay(1*35);
		ThrustThingZ(668, 2, 0, 1);
		Delay(1*35);
		ThrustThingZ(667, 1, 0, 1);
		Delay(1*35);
		ThrustThingZ(0, 3, 0, 1);
		Delay(1*35);
		ThrustThingZ(0, 16, 0, 1);

		ACS_Execute(66, 0, 0, 0, 0);
		Delay(24);

		Radius_Quake(10, 14, 0, 1, 0);
		Delay(14);

        PlaySound(579, "Primarch/YellowB", CHAN_AUTO);
		Hudmessage(s:"Fool!!! Did you really think I'd risk letting you remove the Baron from power!?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 1.5);


		FadeTo(120, 80, 0, 0.4, 0.4);

		ChangeCamera(579, 1, 0);
		Thing_Remove(667);
		Thing_Remove(668);
		Thing_Remove(669);
		Radius_Quake(10, 490, 0, 1, 579);
		ACS_Execute(67, 0, 0, 0, 0);

		Delay(140);

		FadeTo(120, 80, 0, 1.0, 9.0);

		Delay(90);

		PlaySound(579, "Primarch/YellowA", CHAN_AUTO);
		Hudmessage(s:"Trade is going far too well for us under his rule! So here's your share! Enjoy counting the coin, for all eternity!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 1.5);
		Delay(7*35);

		Teleport_NoFog(581, 1, 0);
		Thing_Activate(685);
		FadeTo(120, 80, 0, 0.0, 0.4);
		ChangeCamera(0, 1, 1);
		SetActorAngle(0, 0.25);
		SetActorPitch(0, 0.05);
		SetActorProperty(0, APROP_Gravity, 0.3);
		SetActorProperty(582, APROP_Gravity, 0.2);
		PlaySound(581, "Ambient/Impact", CHAN_AUTO, 0.4);
		PlaySound(582, "Inventory/PickCoin", CHAN_AUTO);
		Radius_Quake(8, 35, 0, 1, 0);
		ThrustThing(52, 35, 1, 0);
		ThrustThingZ(0, 40, 0, 1);
		ThrustThing(52, 35, 1, 582);
		ThrustThingZ(582, 45, 0, 1);

		ACS_Terminate(66, 0);
        ACS_Terminate(67, 0);

		Line_SetBlocking(577, 0, BLOCKF_MONSTERS);
		Line_SetBlocking(577, 0, BLOCKF_PROJECTILES);
		SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		Delay(105);
		SetActorProperty(0, APROP_Gravity, 1.0);

		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    ...you too, huh?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		Delay(4*35);

		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"...wait a moment. Here, hold this thing."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 1.5);

		Delay(2*35);
		PlaySound(571, "Inventory/PickShort", CHAN_AUTO);
		SpawnSpotForced("InventoryChaoticDevice", 583, 670, 0);
		SetActorProperty(670, APROP_Scalex, 0.5);
		SetActorProperty(670, APROP_ScaleY, 0.5);


		SetLineSpecial(572, ACS_Execute, 64, 0, 0, 0, 0);
	}
	else
	If(IsTIDUsed(585) || CheckInventory("InventoryPrimarchAvatar") > 0)
	{
		Print(s:"The offering altar has no use, as the primarch's avatar seems to be missing from its place.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
	else
	{
		Print(s:"A primarch offering altar.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
Script 66 (void)
{
	If(GetActorPitch(0) > -0.75)
	{
	  SetActorPitch(0, GetActorPitch(0) - 0.01);
	}
	Delay(1);
	Restart;
}
Script 67 (void)
{
	PlaySound(578, "Inventory/PickCoin", CHAN_6, random(0.6, 0.8));
	Delay(random(1,6));
	StopSound(578, CHAN_6);
	PlaySound(580, "Inventory/PickCoin", CHAN_7, random(0.6, 0.8));
	Delay(random(1,6));
	StopSound(580, CHAN_7);
	Restart;
}
//Shady Fixer Dialogue
//Regular
int dial64 = 6;
Script 64 (void)
{
	//ScriptWait(65);
	//ScriptWait(63);
	//ScriptWait(68);
	If(CheckInventory("InventoryChargedChaoticDevice") > 0)
	{
		PlaySound(571, "Fixer/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    Hey, you actually charged it! We can escape now! One moment, let me just-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(35);
		Radius_Quake(1, 35, 0, 1, 0);
		Delay(1*35);
		Radius_Quake(6, 140, 0, 1, 0);
		FadeTo(255, 0, 0, 1.0, 2.0);
		Delay(2*35);
		FadeTo(255, 0, 0, 0.0, 0.6);
		ChangeSky("Sky17", "Sky17");
		SetSkyScrollSpeed(1, 0.0);
		Teleport_NoFog(592, 1, 0);
		TakeInventory("InventoryChargedChaoticDevice", 1);
		GiveInventory("InventoryChaoticDevice", 1);
		SpawnSpotForced("HedonTeleportFogDemon", 592, 0, 0);
	    PlaySound(592, "misc/teleport", CHAN_AUTO, 1.0);
		TeleportOther(571, 593, 0);
		Thing_Remove(685);
		SpawnSpotForced("HedonTeleportFogDemon", 593, 0, 0);
	    PlaySound(593, "misc/teleport", CHAN_AUTO, 1.0);

		Delay(35);

		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"...finish stuffing my boots with coin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 2.5, 0.2, 1.5);
		Delay(4*35);

		PlaySound(571, "Fixer/Huh", CHAN_AUTO);
		Hudmessage(s:"Couldn't you wait for a moment!? Think about how much more gold we could have carried with us!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(7*35);

		PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
		Hudmessage(s:"Ugh, I'm out of here! Come see me at Murguth's camp, maybe selling you some gear will mellow me out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
		Delay(4*35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);
		SetMusic("HTrack32", 0, 0);
		Thing_Remove(571);
		Delay(35);
		FadeTo(0, 0, 0, 0.0, 2.0);
		Line_SetBlocking(594, 0, BLOCKF_MONSTERS);
		Line_SetBlocking(594, 0, BLOCKF_PROJECTILES);

		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
	}
	else
	If(CheckInventory("InventoryChaoticDevice") == 0)
	{
		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    C'mon, grab this artifact already, it's our only real ticket out of here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
		Delay(8*35);
	}
	else
	If(dial64 % 6 == 0 && GetSectorCeilingZ(569, 0, 0) == 1500.0)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Well, that's it for us, then. There's no other way out of this hellish prison."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 0 && GetSectorCeilingZ(569, 0, 0) != 1500.0)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I doubt we can find an actual exit... this place has no physical access."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 1 && GetSectorCeilingZ(569, 0, 0) == 1500.0)
	{
	  PlaySound(571, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I only have a tiny piece of bread left, and I'm not sharing it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 1 && GetSectorCeilingZ(569, 0, 0) != 1500.0)
	{
	  PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Had to eat my last piece of bread... I'd give away all this gold for some food right now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 2)
	{
	  Hudmessage(s:"Shady Fixer:    I got too damn greedy coming to this place. Yep, put all my eggs in one basket."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 3)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I read a lot about this vault - it's inescapable. I hoped the chaotic device would teleport me out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 4 && GetSectorCeilingZ(569, 0, 0) == 1500.0)
	{
	  Hudmessage(s:"Shady Fixer:    I bet my life on a piece of scrap... maybe a proper demon could use it, but I don't see any around."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 4 && GetSectorCeilingZ(569, 0, 0) != 1500.0)
	{
	  Hudmessage(s:"Shady Fixer:    Perhaps we can find a source of demonic energy over yonder... something to power up the device with."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 5  && GetSectorCeilingZ(569, 0, 0) == 1500.0)
	{
	  PlaySound(571, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Maybe the primarch drained the device's power while banishing me here. Did I get outconned?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
	else
	If(dial64 % 6 == 5  && GetSectorCeilingZ(569, 0, 0) != 1500.0)
	{
	  PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Who am I kidding? We're probably going to starve to death in here. Curse my greedy blood!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial64 += 1;
	  Delay(2*35);
	}
}
//Special
int spec70 = 0;
int dial69 = 6;
Script 69 (void)
{
	If(dial69 % 6 == 0)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Let's see if we can solve the riddle you revealed... at least we won't die of boredom."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  dial69 += 1;
	  Acs_execute(80, 0, 0, 0, 0);
	  Delay(15*35);
	}
	else
	If(dial69 % 6 == 1)
	{
	  If(Spec70 != 5)
	  {
	    PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    One thing I can tell for sure - these four bowls are meant for splitting the fourty coins."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  else
	  If(Spec70 == 5)
	  {
	    PlaySound(571, "Fixer/Hm", CHAN_AUTO);
	    Hudmessage(s:"Shady Fixer:    Now try this - eight coins for a bova, four for a hog and one for every two chicks."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	  }
	  If(spec70 > 1)
		{
	      dial69 += 1;
		}
		else
		{
		  dial69 = 5;
		}
	  Delay(2*35);
	}

	else
	If(dial69 % 6 == 2)
	{
	  PlaySound(571, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Each peasant has a name and occupation, some referenced inside the others' poem."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	    If(spec70 > 2)
		{
	      dial69 += 1;
		}
		else
		{
		  dial69 = 5;
		}
	  Delay(2*35);
	}
	else
	If(dial69 % 6 == 3)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    Gold's value varies, but in the riddle's context... a bova would be taxed around eight gold, mm?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	    If(spec70 > 3)
		{
	      dial69 += 1;
		}
		else
		{
		  dial69 = 5;
		}
	  Delay(2*35);
	}
	else
	If(dial69 % 6 == 4)
	{
	  PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    One coin per chick really doesn't add up. But one for two chicks... that could work, right?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	    If(spec70 > 4)
		{
	      dial69 = 1;
		}
		else
		{
		  dial69 = 5;
		}
	  Delay(2*35);
	}
	else
	If(dial69 % 6 == 5)
	{
	  PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
	  Hudmessage(s:"Shady Fixer:    I'm thinking... I'm thinking!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 3.5, 0.2, 0.5);
	  dial69 = 1;
	  Delay(2*35);
	}
}
Script 68 (void)
{
	If(CheckInventory("InventoryChaoticDevice") > 0)
	{
	SetLineSpecial(584, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(572, 0, 0, 0, 0, 0, 0);
	Delay(70);

	PlaySound(571, "Reaver/Huh", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    ...well? Does it turn on in your hands or something?... no?... guess you're not demon enough for it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);

	Delay(4*35);

	If(CheckInventory("InventoryPendantOfTrueSight") == 0 || GetSectorCeilingZ(569, 0, 0) != 1500.0)
	{
	  SetLineSpecial(572, ACS_Execute, 64, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") == 1)
	{
	  SetLineSpecial(572, ACS_Execute, 69, 0, 0, 0, 0);
	}
	}
}
//Riddle Tips
Script 80 (void)
{
	Delay(15*35);
	Spec70 = 1;
	PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Well, to begin with, I guess we need to split fourty gold coins between the four bowls."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);

	Delay(45*35);
	Spec70 = 2;
	PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    The four peasants have names and occupations... gah, I wish I had some paper to write this down on."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);

	Delay(90*35);
	Spec70 = 3;
	PlaySound(571, "Reaver/Hmm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    I recently read that in the Overworld kingdoms, a bova would be taxed sixteen coins..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
	Delay(6*35);
	Hudmessage(s:"...now, humans keep devaluing gold by mixing it with other metals. The riddle is old, so it could be six, eight, ten..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 2.5);

    Delay(180*35);
	Spec70 = 4;
	PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    One gold for one chick feels like too much. But one gold for two chicks... I think I'm onto something."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);

    Delay(360*35);
	Spec70 = 5;
	PlaySound(571, "Fixer/Hm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Alright, I think I got it! So... wanna hear my solution or do you still feel like jogging your mind?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);

}
//Plaque Reveal
int Spec63 = 0;
Script 63 (void)
{
	If(Spec63 == 0 && CheckInventory("InventoryChaoticDevice") == 1)
	{
		Spec63 += 1;
		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    Already looked in there. Didn't find much."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	}
	else
	If(Spec63 == 0 && CheckInventory("InventoryChaoticDevice") == 0)
	{
		Spec63 += 1;
		PlaySound(571, "Reaver/Hm", CHAN_AUTO);
		Hudmessage(s:"Shady Fixer:    I've already searched that place. Just come here and take a look at this."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetLineSpecial(558, 0, 0, 0, 0, 0, 0);
	PlaySound(527, "Magic/Dispel", CHAN_AUTO);
	FadeTo(255, 255, 255, 1.0, 0.4);
	Delay(14);
	FadeTo(255, 255, 255, 0.0, 1.0);
    Thing_Activate(559);
	Ceiling_LowerByValue(568, 1, 8);
	SetActorProperty(527, APROP_Alpha, 0.05);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.4);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.45);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.5);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.55);
	Delay(4);
	SetActorProperty(527, APROP_Alpha, 0.6);
	Delay(4);
	PlaySound(527, "Magic/Earth1", CHAN_AUTO, 0.5);
	Thing_Remove(559);
	Thing_Activate(528);

	Delay(24);
	SetLineSpecial(572, 0, 0, 0, 0, 0, 0);

    If(CheckInventory("InventoryChaoticDevice") == 1)
	{
	PlaySound(571, "Fixer/Huh", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Huh? Did you actually find a pendant of true sight?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 4.5, 0.2, 0.5);
	Delay(5*35);

	PlaySound(571, "Fixer/Hmm", CHAN_AUTO);
	Hudmessage(s:"Stuff like this makes me wish I could reach the top of a shelf every once in a while..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
	Delay(4*35);
	SetLineSpecial(572, ACS_Execute, 69, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryChaoticDevice") == 0)
	{
	PlaySound(571, "Reaver/Hm", CHAN_AUTO);
	Hudmessage(s:"Shady Fixer:    Congrats, you found a magic trinket, now come grab this artifact so we can get outta here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 5.5, 0.2, 0.5);
	SetLineSpecial(572, ACS_Execute, 64, 0, 0, 0, 0);
	Delay(5*35);
	}

	ACS_Execute(70, 0, 0, 0, 0);
	}
}
//Coin Bowls
Script 70 (void)
{
	If(ThingCount(T_NONE, 671) == 9 && ThingCount(T_NONE, 672) == 8 && ThingCount(T_NONE, 673) == 14 && ThingCount(T_NONE, 674) == 9)
	{
		SetLineSpecial(562, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(572, ACS_Execute, 64, 0, 0, 0, 0);
		ACS_Terminate(80, 0);
		Radius_Quake(1, 350, 0, 20, 570);
		Delay(35);
		Door_Open(569, 4, 0);
		Delay(105);
		If(CheckInventory("InventoryChaoticDevice") == 0)
		{
			PlaySound(571, "Fixer/Hm", CHAN_AUTO);
		    Hudmessage(s:"Shady Fixer:    Fine, I guess you know what you're doing. Uhh, you go ahead, I'll cover you from here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
		}
		else
		If(CheckInventory("InventoryChaoticDevice") > 0 && spec70 < 2)
		{
			PlaySound(571, "Fixer/Hm", CHAN_AUTO);
		    Hudmessage(s:"Shady Fixer:    Well that went fast. Go check what's behind that door, now, I'll cover your back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
		}
		else
		If(CheckInventory("InventoryChaoticDevice") > 0 && spec70 < 5)
		{
			PlaySound(571, "Fixer/Huh", CHAN_AUTO);
		    Hudmessage(s:"Shady Fixer:    Yeah, we got it! Now go check what's behind that door, I'll cover you from here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
		}
		else
		If(CheckInventory("InventoryChaoticDevice") > 0 && spec70 < 6)
		{
			PlaySound(571, "Fixer/Hm", CHAN_AUTO);
		    Hudmessage(s:"Shady Fixer:    Yes! That was the answer! Now go check what's behind that door, I did enough already."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 1.5);
		}
		Delay(4*35);
		Autosave();
		Terminate;
	}
	Delay(16);
	Restart;
}
Script 71 (void)
{
	If(CheckInventory("InventoryGoldCoin") > 0 && CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		TakeInventory("InventoryGoldCoin", 1);
		//SpawnSpotForced("InventoryGoldCoin1", 563, 671, random(0,256));
		SpawnProjectile(563, "InventoryGoldCoin1", random(0,256), random(1,5), 0, 10, 671);
		PlaySound(563, "Inventory/PickCoin", CHAN_AUTO, 0.4);
		Delay(8);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		Print(s:"An offering bowl.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
Script 72 (void)
{
	If(CheckInventory("InventoryGoldCoin") > 0 && CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		TakeInventory("InventoryGoldCoin", 1);
		//SpawnSpotForced("InventoryGoldCoin1", 563, 671, random(0,256));
		SpawnProjectile(564, "InventoryGoldCoin1", random(0,256), random(1,5), 0, 10, 672);
		PlaySound(564, "Inventory/PickCoin", CHAN_AUTO, 0.4);
		Delay(8);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		Print(s:"An offering bowl.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
Script 73 (void)
{
	If(CheckInventory("InventoryGoldCoin") > 0 && CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		TakeInventory("InventoryGoldCoin", 1);
		//SpawnSpotForced("InventoryGoldCoin1", 563, 671, random(0,256));
		SpawnProjectile(565, "InventoryGoldCoin1", random(0,256), random(1,5), 0, 10, 673);
		PlaySound(565, "Inventory/PickCoin", CHAN_AUTO, 0.4);
		Delay(8);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		Print(s:"An offering bowl.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}
Script 74 (void)
{
	If(CheckInventory("InventoryGoldCoin") > 0 && CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		TakeInventory("InventoryGoldCoin", 1);
		//SpawnSpotForced("InventoryGoldCoin1", 563, 671, random(0,256));
		SpawnProjectile(566, "InventoryGoldCoin1", random(0,256), random(1,5), 0, 10, 674);
		PlaySound(566, "Inventory/PickCoin", CHAN_AUTO, 0.4);
		Delay(8);
	}
	else
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
		Print(s:"An offering bowl.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}


//Fire Traps
Script 62 (void)
{
	SpawnProjectile(554, "ProjectileFlameBolt", 40, 60, 0, 0, 0);
	SpawnProjectile(555, "ProjectileFlameBolt", 168, 60, 0, 0, 0);
	SpawnProjectile(556, "ProjectileFlameBolt", 24, 60, 0, 0, 0);
	SpawnProjectile(557, "ProjectileFlameBolt", 152, 60, 0, 0, 0);
	Delay(16);
	Restart;
}

//Altar
Script 61 (void)
{
	If(CheckInventory("InventoryChaoticDevice") > 0 && CheckInventory("InventoryRitualDagger") > 0)
	{
		SetLineSpecial(553, 0, 0, 0, 0, 0, 0);

		TakeInventory("InventoryChaoticDevice", 1);

		SetActorProperty(0, APROP_SPEED, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);

		SetWeapon("Fists");
		Delay(12);

		SetActorFlag(548, "INVISIBLE", 0);
		PlaySound(548, "Metal/Land", CHAN_AUTO, 1.0);

		Delay(35);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(35);

		FadeTo(255, 0, 0, 0.1, 0.1);
		PlaySound(548, "Ambient/Buildup", CHAN_7);
		PlaySound(0, "Conscript/Attack1", CHAN_AUTO);
		SetActorState(0, "Pain", 0);
		//Delay(7);
		//FadeTo(255, 0, 0, 0.0, 3.0);

		Delay(8);
		ChangeFloor(532, "BloodSpc");

		SetActorFlag(0, "NOPAIN", 1);
		If(GetActorProperty(0, APROP_Health) > 1)
		{
			//TakeInventory("Health", 1);
			DamageThing(1);
		}

		Delay(8);
		ChangeFloor(533, "BloodSpc");
		TakeInventory("InventoryRitualDagger", 1);
		SetActorFlag(549, "INVISIBLE", 0);
		PlaySound(549, "Metal/Bounce1", CHAN_AUTO, 0.3);

		Delay(7);
		ChangeFloor(534, "BloodSpc");

		If(GetActorProperty(0, APROP_Health) > 1)
		{
			//TakeInventory("Health", 1);
			DamageThing(1);
		}

		Delay(7);
		ChangeFloor(535, "BloodSpc");

		Delay(6);
		ChangeFloor(536, "BloodSpc");

		Delay(6);
		ChangeFloor(537, "BloodSpc");

		If(GetActorProperty(0, APROP_Health) > 1)
		{
			//TakeInventory("Health", 1);
			DamageThing(1);
		}

		Delay(6);
		ChangeFloor(538, "BloodSpc");

		Delay(6);
		ChangeFloor(539, "BloodSpc");

		Delay(6);
		ChangeFloor(542, "BloodSpc");

		Delay(6);
		ChangeFloor(543, "BloodSpc");

		If(GetActorProperty(0, APROP_Health) > 1)
		{
			//TakeInventory("Health", 1);
			DamageThing(1);
		}

		Delay(4);
		ChangeFloor(544, "BloodSpc");

		Delay(4);
		ChangeFloor(545, "BloodSpc");

		Ceiling_RaiseByvalue(547, 1, 5);
		FadeTo(255, 0, 0, 1.0, 5.0);
		Radius_Quake(1, 215, 0, 1, 0);

		Delay(2);
		ChangeFloor(546, "BloodSpc");

		Delay(175);
		Delay(35);
		StopSound(548, CHAN_7);
		Thing_Remove(548);
		SpawnSpotForced("ExplosionLargeRed", 552, 0, 0);
		SpawnSpotForced("InventoryChargedChaoticDevice", 552, 0, 0);

		FadeTo(255, 0, 0, 0.0, 0.5);
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
		SetActorFlag(0, "NOPAIN", 0);
		ThrustThing(64, 30, 1, 0);
		ThrustThingZ(0, 12, 0, 1);

	}
	else
	{
		Print(s:"The unholy altar has a blood funnel carved into it.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	    Delay(35);
	}
}





//VOID & YZBETH MIND
//Yzbeth Hit Reaction
Script 116 (void)
{
	If(GetActorProperty(680, APROP_Health) <= 0)
	{
		ACS_Terminate(117, 0);
		ACS_Terminate(118, 0);
		ACS_Terminate(119, 0);

        If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	      Hudmessage(s:"Yzbeth:    Augh! Now, now, let's leave the scratching for later, listen to what I have to say!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 5)
		{
	      Hudmessage(s:"Yzbeth:    Owh! Not feeling like playing rough now, stud. Save it for later."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 4)
		{
	      Hudmessage(s:"Yzbeth:    Ouch! Do you really not care for what I have to say?... you're making me sad!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 3)
		{
	      Hudmessage(s:"Yzbeth:    Argh! Why are you so mean to me?... I just want to talk!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 2)
		{
	      Hudmessage(s:"Yzbeth:    *Whimpers* Why are you hitting me? Why do you hate me so much?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 1)
		{
	      Hudmessage(s:"Yzbeth:    You narrow-sighted brute!!! All you know is violence and cruelty!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  TakeInventory("ScriptYzbethReaction", 1);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 0)
		{
	      Hudmessage(s:"Yzbeth:    Fuck you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 1.5, 0.2, 1.5);
		}

		If(CheckInventory("InventoryPrimarchAvatar") > 0)
		{
		  Delay(7*35);
		  PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
		  Hudmessage(s:"Elzriel:    Good. Smack that bitch again when you see her!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.90, 4.5, 0.2, 1.5);
		}
		Terminate;
	}
	Delay(1);
	Restart;
}
//Yzbeth Fourth Encounter
Script 115 (void)
{
	Thing_Remove(629);
	ACS_Execute(116, 0, 0, 0, 0);
	SpawnSpotForced("NPCYzbethRegular", 600, 680, 64);
	SetActorFlag(680, "INVULNERABLE", 0);
	//PlaySound(600, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	Thing_Activate(643);
	Thing_Activate(644);
	Thing_Activate(689);
}
Script 117 (void)
{
	If(GetActorProperty(680, APROP_Health) > 0)
	{
		SetLineSpecial(630, 0, 0, 0, 0, 0, 0);

		If(CheckInventory("InventoryPrimarchAvatar") > 0)
		{
			PlaySound(680, "Hellion/See", CHAN_AUTO, 1.0, false, 0.5);
	        Hudmessage(s:"Yzbeth:    Welcome to my altar. I see you brought in a most distinguished guest..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 0.5);
			Delay(5*35);
			PlaySound(0, "Primarch/YellowA", CHAN_AUTO);
			Hudmessage(s:"Elzriel:    Shut up, you twisted whore! Wait until the Baron learns of your little rebellion!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GOLD, 1.5, 0.86, 6.5, 0.2, 0.5);
			Delay(6*35);
            PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	        Hudmessage(s:"Yzbeth:    Tch, I'm sure the orc stud will deal with him. And you will help her get there! Anyway..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 0.5);
			Delay(7*35);
		}

		If(CheckInventory("ScriptYzbethReaction") <= 4)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The first key fragment is inside my mind. Don't mind the mess."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  Delay(6*35);
		}
		else
        If(CheckInventory("ScriptYzbethReaction") == 5)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The first key fragment is inside my mind. Try not to do anything too naughty."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(7*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") == 6)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The first key fragment is in my mind. I'm sure you'll love being inside me!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(7*35);
		}

        SetActorState(680, "Vanish", 0);
		ACS_Terminate(116, 0);
	}
}
//Yzbeth Fifth Encounter
Script 118 (void)
{
	Delay(35);
	If(IsTIDUsed(631) == 0)
	{
		SetLineSpecial(632, 0, 0, 0, 0, 0, 0);
		Thing_Remove(643);
		ACS_Terminate(95, 0);
		ACS_Terminate(52, 0);
		SetActorVelocity(0, 0, 0, 0, 0, 0);
		//Teleport(633, 0, 0); //gets glitched by speed
		Thing_Move(0, 633, 0);
		SetActorPitch(0, 0.0);
		SetActorAngle(0, 0.75);
		SpawnSpotForced("NPCYzbethRegular", 600, 680, 64);
		ACS_Execute(116, 0, 0, 0, 0);
		SpawnSpotForced("NatureMagicCloud", 627, 683, 0);
		SetActorProperty(683, APROP_RenderStyle, STYLE_Stencil);
		SetActorProperty(683, APROP_StencilColor, 0xff99ff);
		Line_SetBlocking(475, 0, BLOCKF_EVERYTHING);
		SetLineTexture(475, SIDE_FRONT, TEXTURE_MIDDLE, "");
		Autosave();
	Delay(50);
	If(GetActorProperty(680, APROP_Health) > 0)
	{
		If(CheckInventory("ScriptYzbethReaction") <= 2)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    I was about to say where the second fragment is, but if you're such a meanie... find it yourself."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
		  Delay(8*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 4)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The second key fragment overlooks the void... and the boundaries of my curiosity."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 6)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The second fragment overlooks the void... at the edge of my curiosity. And desire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		}

        SetActorState(680, "Vanish", 0);
		ACS_Terminate(116, 0);
	  }
	}
}
//Yzbeth Sixth Encounter
Script 119 (void)
{
	Delay(35);
	If(IsTIDUsed(634) == 0)
	{
		SetLineSpecial(635, 0, 0, 0, 0, 0, 0);
		Thing_Remove(644);
	    ACS_Terminate(52, 0);
		ACS_Terminate(95, 0);
		SetActorVelocity(0, 0, 0, 0, 0, 0);
		//Teleport(633, 0, 0);
		Thing_Move(0, 633, 0);
		SetActorPitch(0, 0.0);
		SetActorAngle(0, 0.75);
		SpawnSpotForced("NPCYzbethRegular", 600, 680, 64);
		ACS_Execute(116, 0, 0, 0, 0);
		SpawnSpotForced("NatureMagicCloud", 628, 683, 0);
		SetActorProperty(683, APROP_RenderStyle, STYLE_Stencil);
		SetActorProperty(683, APROP_StencilColor, 0xff99ff);
		Line_SetBlocking(503, 0, BLOCKF_EVERYTHING);
		SetLineTexture(503, SIDE_FRONT, TEXTURE_MIDDLE, "");
		SetLineTexture(503, SIDE_BACK, TEXTURE_MIDDLE, "");
		Autosave();
	Delay(50);
	If(GetActorProperty(680, APROP_Health) > 0)
	{
		If(CheckInventory("ScriptYzbethReaction") <= 2)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    Found the second fragment, huh? Let's see if you even remember where the third is."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 4)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The third fragment is in my bedroom, but you can only approach it from inside my mind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 1.5);
		  Delay(6*35);
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 6)
		{
	      PlaySound(680, "Hellion/Active", CHAN_AUTO, 1.0, false, 0.5);
	      Hudmessage(s:"Yzbeth:    The third shard can only be reached through my mind. It awaits you in my bed. And so am I..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 2.5);
		  Delay(7*35);
		}

        SetActorState(680, "Vanish", 0);
		ACS_Terminate(116, 0);
		}
	}
}

//Sky Change
Script 49 (void)
{
	ChangeSky("Magic1", "Magic1");
	SetSkyScrollSpeed(1, 0.01);
}
Script 50 (void)
{
	ChangeSky("Sky17", "Sky17");
	SetSkyScrollSpeed(1, 0.0);
}
//Yzbeth Mind Teleport Back
Script 95 (void)
{
	If(GetActorZ(0) < 136.0)
	{
		FadeTo(255, 120, 220, 1.0, 0.4);
		Delay(14);
		Thing_Stop(0);
		If(CheckInventory("ScriptYzbethReaction") == 3 || CheckInventory("ScriptYzbethReaction") == 4)
		{
		  FadeTo(0, 0, 0, 0.0, 1.0);
		  Thing_Move(0, 606, 1);
		  SetActorPitch(0, 0.0);
		  SetActorAngle(0, 0.75);
		  Delay(70);
		  If(CheckInventory("InventorySoulKeyFragment") == 3)
		  {
		    PlaySound(0, "Hellion/Sight", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Stop prodding around my mind now, silly."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.5, 0.2, 1.5);
		  }
		  else
		  {
		    PlaySound(0, "Hellion/Active", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Try again-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 1.5, 0.2, 1.5);
		  }
		}
		else
		If(CheckInventory("ScriptYzbethReaction") <= 2 || CheckInventory("ScriptYzbethRejected") > 0)
		{
		  Thing_Damage2(0, 10, "Mind");
		  Delay(16);
		  Thing_Damage2(0, 20, "Mind");
		  Delay(16);
		  Thing_Damage2(0, 40, "Mind");
		  Delay(16);
		  Thing_Damage2(0, 80, "Mind");
		  Delay(16);
		  Thing_Damage2(0, 160, "Mind");
		  Delay(16);
		  Thing_Damage2(0, 320, "Mind");
		  Delay(16);
		  PlaySound(0, "Hellion/Sight", CHAN_AUTO);
		  Hudmessage(s:"Yzbeth:    Aww, forever lost inside my mind, are you? That's what you get for being such a bad thought."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 6.5, 0.2, 3.5);
		  Terminate;
		}
		else
		If(CheckInventory("ScriptYzbethReaction") >= 5)
		{
		  FadeTo(0, 0, 0, 0.0, 1.0);
		  If(CheckInventory("InventorySoulKeyFragment") == 0)
		  {
		    Thing_Move(0, 607, 1);
			SetActorAngle(0, 0.25);
			Delay(35);
		    PlaySound(0, "Hellion/Active", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Now, now... you better play nice while you're here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 1.5);
		  }
		  else
		  If(CheckInventory("InventorySoulKeyFragment") == 1)
		  {
		    Thing_Move(0, 608, 1);
			SetActorAngle(0, 0.15);
			Delay(35);
		    PlaySound(0, "Hellion/Sight", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Careful! As much as I'd love to merge minds with you, it would be terrible for your health."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  }
		  else
		  If(CheckInventory("InventorySoulKeyFragment") == 2)
		  {
		    Thing_Move(0, 609, 1);
			SetActorAngle(0, 0.25);
			Delay(35);
		    PlaySound(0, "Hellion/Active", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Naughty-naughty! Try not to lose your sanity over here... at least for the time being."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
		  }
		  else
		  If(CheckInventory("InventorySoulKeyFragment") == 3)
		  {
		    Thing_Move(0, 610, 1);
			SetActorAngle(0, 0.12);
			Delay(35);
		    PlaySound(0, "Hellion/Sight", CHAN_AUTO);
		    Hudmessage(s:"Yzbeth:    Aww, you just keep craving my mind, don't you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 1.5);
		  }
		}
	}
	Delay(8);
	Restart;
}
//Yzbeth Mind Monsters
Script 96 (void)
{
	Thing_Activate(603);
	SetActorProperty(603, APROP_Alpha, 0.05);
	SetActorFlag(603, "INVISIBLE", 0);
	Delay(4);
	NoiseAlert(0,0);
	SetActorProperty(603, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.4);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.45);
	Delay(4);
	SetActorProperty(603, APROP_Alpha, 0.5);
	Delay(4);

	ACS_Terminate(117, 0);
	If(GetActorProperty(680, APROP_Health) > 0)
	{
		SetActorState(680, "Vanish", 0);
		ACS_Terminate(116, 0);
	}

	If(CheckInventory("ScriptYzbethReaction") >= 5)
	{
	    PlaySound(0, "Hellion/Sight", CHAN_AUTO);
        Hudmessage(s:"Yzbeth:    Oh, looks like you're in for a welcoming party! Don't let any of my exes get to you, dear-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") == 3 || CheckInventory("ScriptYzbethReaction") == 4)
	{
		PlaySound(0, "Hellion/Active", CHAN_AUTO);
        Hudmessage(s:"Yzbeth:    Some of my thoughts don't seem to like you. Don't take it too personally now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	}
	else
	If(CheckInventory("ScriptYzbethReaction") <= 2)
	{
		PlaySound(0, "Hellion/Active", CHAN_AUTO);
        Hudmessage(s:"Yzbeth:    Oooh... looks like you're already garnering some negativity in here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.5, 0.2, 1.5);
	}
}
Script 124 (void)
{
	Thing_Activate(604);
	SetActorProperty(604, APROP_Alpha, 0.05);
	SetActorFlag(604, "INVISIBLE", 0);
	Delay(4);
	NoiseAlert(0,0);
	SetActorProperty(604, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.4);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.45);
	Delay(4);
	SetActorProperty(604, APROP_Alpha, 0.5);
	Delay(4);
}
Script 125 (void)
{
	Thing_Activate(605);
	SetActorProperty(605, APROP_Alpha, 0.05);
	SetActorFlag(605, "INVISIBLE", 0);
	Delay(4);
	NoiseAlert(0,0);
	SetActorProperty(605, APROP_Alpha, 0.1);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.15);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.2);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.25);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.3);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.35);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.4);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.45);
	Delay(4);
	SetActorProperty(605, APROP_Alpha, 0.5);
	Delay(4);
}

//Giant Pot Forge Elemental Ambush
Script 53 (void)
{
	Floor_RaiseByvalue(448, 6, 55);
	Delay(16);
	Thing_Activate(449);
	TagWait(448);
	FloorAndCeiling_LowerByValue(450, 9999, 64);
}
//Asylum Cell Lower
Script 54 (void)
{
	FloorAndCeiling_LowerByvalue(466, 32, 96);
	TagWait(466);
	FloorAndCeiling_LowerByvalue(466, 16, 32);
	TagWait(466);
	FloorAndCeiling_LowerByvalue(466, 8, 16);
	TagWait(466);
	FloorAndCeiling_LowerByvalue(466, 4, 8);
	TagWait(466);
	FloorAndCeiling_LowerByvalue(466, 2, 4);
	TagWait(466);
	FloorAndCeiling_LowerByvalue(466, 1, 2);
}
//Giant Bed Bounce
Script 55 (void)
{
	Delay(4);
	PlaySound(0, "Terrain/Carpet", CHAN_AUTO);
	ThrustThingZ(0, 60, 0, 1);
	ThrustThing(GetActorAngle(0) * 256 / 360, random(5,20), 0, 0);
}
Script 59 (void)
{
	Delay(4);
	PlaySound(0, "Terrain/Carpet", CHAN_AUTO);
	ThrustThingZ(0, 60, 0, 1);
	ThrustThing(GetActorAngle(0) * 256 / 360, random(5,20), 0, 0);
}
Script 56 (void)
{
	PlaySound(0, "Terrain/Carpet", CHAN_AUTO);
	ThrustThingZ(0, 60, 0, 1);
	Delay(8);
}
//Giant Bed Fight
Script 57 (void)
{
	SetLineSpecial(506, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(504, BLOCKF_EVERYTHING, 0);
	SetLineTexture(504, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	SetLineTexture(504, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
	TranslucentLine(504, 0, 0);
	Delay(2);
	TranslucentLine(504, 25, 0);
	Delay(2);
	TranslucentLine(504, 50, 0);
	Delay(2);
	TranslucentLine(504, 75, 0);
	Delay(2);
	TranslucentLine(504, 100, 0);
	Delay(2);
	TranslucentLine(504, 125, 0);
	Delay(2);
	TranslucentLine(504, 150, 0);
	Delay(2);
	TranslucentLine(504, 175, 0);
	Delay(2);
	TranslucentLine(504, 200, 0);
	Delay(2);
	TranslucentLine(504, 225, 0);
	Delay(2);
	TranslucentLine(504, 250, 0);

	Delay(35);

	Thing_Spawn(513, 65010, 128, 666);

	Delay(35);

	SpawnSpotForced("Hellion", 505, 666, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 505, 0, 0);
	PlaySound(505, "misc/teleport", CHAN_AUTO, 1.0);

    Delay(8*35);

	SpawnSpotForced("Cerberus", 507, 666, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 507, 0, 0);
	PlaySound(507, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(10*35);
	Line_SetBlocking(514, 0, BLOCKF_MONSTERS);

	SpawnSpotForced("Hellblaze", 508, 666, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 508, 0, 0);
	PlaySound(508, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(12*35);

	Thing_Spawn(512, 65010, 128, 666);

	//Delay(12*35);

	//SpawnSpotForced("Hellblaze", 507, 666, 0);
	//SpawnSpotForced("HedonTeleportFogDemon", 507, 0, 0);
	//PlaySound(507, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(14*35);

	SpawnSpotForced("Genius", 508, 666, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 508, 0, 0);
	PlaySound(508, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(16*35);

	SpawnSpotForced("PitLord", 508, 666, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 508, 0, 0);
	PlaySound(508, "misc/teleport", CHAN_AUTO, 1.0);

	//Delay(14*35);

	//SpawnSpotForced("Cerberus", 505, 666, 128);
	//SpawnSpotForced("HedonTeleportFogDemon", 505, 0, 0);
	//PlaySound(505, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(12*35);

	SpawnSpotForced("PitLord", 509, 666, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 509, 0, 0);
	PlaySound(509, "misc/teleport", CHAN_AUTO, 1.0);
	SpawnSpotForced("Glutton", 512, 666, 128);
	SpawnSpotForced("HedonTeleportFogDemon", 512, 0, 0);
	PlaySound(512, "misc/teleport", CHAN_AUTO, 1.0);

	Delay(8*35);

	Thing_Spawn(513, 65010, 128, 666);
	ACS_Execute(58, 0, 0, 0, 0);
}
Script 58 (void)
{
	If(ThingCount(T_NONE, 666) < 2)
	{
	TranslucentLine(504, 250, 0);
	Delay(2);
	TranslucentLine(504, 225, 0);
	Delay(2);
	TranslucentLine(504, 200, 0);
	Delay(2);
	TranslucentLine(504, 175, 0);
	Delay(2);
	TranslucentLine(504, 150, 0);
	Delay(2);
	TranslucentLine(504, 125, 0);
	Delay(2);
	TranslucentLine(504, 100, 0);
	Delay(2);
	TranslucentLine(504, 75, 0);
	Delay(2);
	TranslucentLine(504, 50, 0);
	Delay(2);
	TranslucentLine(504, 25, 0);
	Delay(2);
	Line_SetBlocking(504, 0, BLOCKF_EVERYTHING);
	SetLineTexture(504, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(504, SIDE_BACK, TEXTURE_MIDDLE, "");
	Terminate;
	}
	Delay(105);
	Restart;
}
//Closet Open + Last Fragment
Script 60 (void)
{
	FloorAndCeiling_LowerByvalue(522, 999, 64);
	FloorAndCeiling_RaiseByvalue(523, 999, 64);
	Floor_LowerByvalue(524, 999, 95);
	Floor_RaiseByvalue(525, 999, 99);
	ChangeFloor(525, "Obsid2");
	SetLineTexture(238, SIDE_FRONT, TEXTURE_MIDDLE, "");
	SetLineTexture(238, SIDE_BACK, TEXTURE_MIDDLE, "");
	Line_SetBlocking(238, 0, BLOCKF_EVERYTHING);
	ACS_Execute(48, 0, 0, 0, 0);
	TranslucentLine(622, 255, 0);
	TranslucentLine(645, 255, 0);
	Line_SetBlocking(622, BLOCKF_EVERYTHING, 0);
	SetLineTexture(622, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	SetLineTexture(622, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
	Line_SetBlocking(645, BLOCKF_EVERYTHING, 0);
	SetLineTexture(645, SIDE_FRONT, TEXTURE_MIDDLE, "Magic1");
	SetLineTexture(645, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
}
//Void Library Teleport Back
Script 52 (void)
{
	If(GetActorZ(0) < 286.0)
	{
		FadeTo(0, 0, 0, 1.0, 0.4);
		Delay(14);
		Thing_Stop(0);
		FadeTo(0, 0, 0, 0.0, 1.0);
		Thing_Move(0, 409, 1);
		SetActorPitch(0, 0.25);
	}
	Delay(8);
	Restart;
}
//Bookshelf Opening
int Spec40 = 0;
Script 40 (void)
{
	If(Spec40 == 0 && GetActorZ(0) > 698.0)
	{
	Spec40 += 1;
	SpawnSpotForced("Genius", 410, 0, 128);
	SpawnSpotForced("Warlock", 411, 0, 128);
	Floor_lowerByValue(306, 3, 46);
	Ceiling_RaiseByValue(306, 3, 69);
	Delay(16);
	Floor_lowerByValue(307, 4, 46);
	Ceiling_RaiseByValue(307, 4, 69);
	Delay(16);
	Floor_lowerByValue(308, 2, 68);
	Ceiling_RaiseByValue(308, 2, 69);
	Delay(16);
	Floor_lowerByValue(309, 3, 45);
	Ceiling_RaiseByValue(309, 3, 67);
	Delay(16);
	Floor_lowerByValue(309, 2, 45);
	Ceiling_RaiseByValue(309, 2, 67);
	Delay(16);
	Floor_lowerByValue(310, 3, 20);
	Ceiling_RaiseByValue(310, 3, 45);
	Delay(16);
	Floor_lowerByValue(311, 2, 44);
	Ceiling_RaiseByValue(311, 2, 45);
	Delay(16);
	Floor_lowerByValue(312, 3, 22);
	Ceiling_RaiseByValue(312, 3, 44);
	Delay(16);
	Floor_lowerByValue(313, 2, 44);
	Ceiling_RaiseByValue(313, 2, 21);
	Delay(16);
	Floor_lowerByValue(314, 3, 89);
	Delay(16);
	Floor_lowerByValue(315, 2, 65);
	Delay(16);
	Floor_lowerByValue(316, 1, 43);
	}
}
//Floating Chair
Script 51 (void)
{
	Thing_Remove(381);

	FloorAndCeiling_LowerByValue(382, 2, 1);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 4, 2);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 8, 4);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 16, 8);
	TagWait(382);
    FloorAndCeiling_LowerByValue(382, 32, 360);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 16, 8);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 8, 4);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 4, 2);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 2, 1);
	TagWait(382);

	FloorAndCeiling_RaiseByValue(382, 2, 4);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 2, 4);
	TagWait(382);
    FloorAndCeiling_RaiseByValue(382, 1, 2);
	TagWait(382);
	FloorAndCeiling_LowerByValue(382, 1, 2);
	TagWait(382);

	Delay(16);

	FloorAndCeiling_RaiseByValue(382, 2, 1);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 4, 2);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 8, 4);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 16, 8);
	TagWait(382);
    FloorAndCeiling_RaiseByValue(382, 32, 360);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 16, 8);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 8, 4);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 4, 2);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 2, 1);
	TagWait(382);

	FloorAndCeiling_LowerByValue(382, 2, 4);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 2, 4);
	TagWait(382);
    FloorAndCeiling_LowerByValue(382, 1, 2);
	TagWait(382);
	FloorAndCeiling_RaiseByValue(382, 1, 2);
	TagWait(382);

	Delay(16);

	Restart;
}

//GRAVEYARD DIG
Script 141 (void)
{
	If(CheckInventory("JournalScrawnSketch") > 0 && GameSkill() <= SKILL_VERY_HARD)
	{
		If(CheckInventory("InventoryShovel") > 0 || CheckInventory("InventoryShovelB") > 0)
	    {
		SetWeapon("Fists");
		SetLineSpecial(714, 0, 0, 0, 0, 0, 0);
		PlaySound(715, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 715, 0, 0);
		SpawnSpotForced("DustCloud", 718, 0, 0);
		SetActorFlag(718, "INVISIBLE", 0);
		SetActorFlag(718, "NOBLOCKMAP", 0);
		FloorAndCeiling_LowerByValue(717, 9999, 128);
		TagWait(717);
		SpawnSpotForced("InventoryMithrilChisel", 715, 0, 0);
	    }
	    else
	    {
		Print(s:"You'll need a shovel to dig here.");
		PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
		Delay(35);
	    }
	}
}







//ROTATING DOORS
Script 11 (void)
{
	Print(s:"The doors are locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}
Script 12 (void)
{
	Print(s:"The door is locked from the other side.");
	PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	Delay(35);
}
Script 13 (void)
{
	Print(s:"The door won't budge.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}
Script 16 (void)
{
	Print(s:"The doors won't budge.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}
Script 15 (void)
{
  If(GetActorZ(0) < 708.0)
  {
    Polyobj_DoorSwing(15,-16,64,175);
  }
}
Script 45 (void)
{
  If(GetActorZ(0) < 708.0)
  {
    Polyobj_DoorSwing(45,-16,64,175);
  }
}
Script 86 (void)
{
  If(GetActorZ(0) < 729.0)
  {
	Polyobj_DoorSwing(86,16,64,45);
  }
}
Script 87 (void)
{
  If(GetActorZ(0) < 729.0 && CheckInventory("GoldenKey") > 0)
  {
	Polyobj_DoorSwing(87,16,64,175);
  }
  else
  If(GetActorZ(0) < 729.0 && CheckInventory("GoldenKey") == 0)
  {
    Print(s:"These door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}
Script 88 (void)
{
  If(GetActorZ(0) < 686.0)
  {
	SetLineSpecial(170, 0, 0, 0, 0, 0, 0);
	SetActorFlag(192, "INVISIBLE", 0);
	Thing_Remove(193);
	If(IsTIDUsed(675) == 0)
	{
	  SpawnSpotForced("IronMaiden", 601, 0, 128);
	}
    Polyobj_DoorSwing(272,-16,64,0x7FFFFFFF);
	Polyobj_DoorSwing(88,16,64,0x7FFFFFFF);
	If(IsTIDUsed(675))
	{
		Delay(6*35);
	}
	Delay(4*35);
	Thing_Activate(187);
	Delay(10*35);
	SetLineSpecial(701, 0, 0, 0, 0, 0, 0);
  }
}
Script 89 (void)
{
  If(GetActorZ(0) < 733.0)
  {
    Polyobj_DoorSwing(271,16,64,0x7FFFFFFF);
	Polyobj_DoorSwing(89,-16,64,0x7FFFFFFF);
  }
}
Script 90 (void)
{
  If(GetActorZ(0) < 240.0)
  {
    Polyobj_DoorSwing(90,16,64,0x7FFFFFFF);
  }
}
Script 91 (void)
{
  If(GetActorZ(0) < 364.0 && CheckInventory("WitheredVineKey") > 0)
  {
	Polyobj_DoorSwing(91,-16,64,0x7FFFFFFF);
  }
  else
  If(GetActorZ(0) < 364.0 && CheckInventory("WitheredVineKey") == 0)
  {
    Print(s:"These door requires a Withered Vine key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}
Script 92 (void)
{
  If(GetActorZ(0) < 733.0)
  {
    Polyobj_DoorSwing(268,16,64,0x7FFFFFFF);
	Polyobj_DoorSwing(92,-16,64,0x7FFFFFFF);
  }
}
Script 135 (void)
{
  If(GetActorZ(0) < 708.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(135,16,64,175);
  }
  else
  If(GetActorZ(0) < 708.0 && CheckInventory("GoldenKey") == 0)
  {
    Print(s:"These door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}
Script 165 (void)
{
  If(GetActorZ(0) < 708.0)
  {
    Polyobj_DoorSwing(165,16,64,175);
  }
}
Script 177 (void)
{
  If(GetActorZ(0) < 806.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(177,-16,64,175);
  }
  else
  If(GetActorZ(0) < 806.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 178 (void)
{
  If(GetActorZ(0) < 218.0 && CheckInventory("WitheredVineKey") > 0)
  {
    Polyobj_DoorSwing(178,-16,64,175);
  }
  else
  If(GetActorZ(0) < 218.0 && CheckInventory("WitheredVineKey") == 0)
  {
    Print(s:"This door requires a Withered Vine key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}
Script 180 (void) //+360
{
  If(GetActorZ(0) < 608.0)
  {
	Polyobj_DoorSwing(180,-16,64,350);
	Polyobj_DoorSwing(360,16,64,350);
  }
}
Script 182 (void)
{
  If(GetActorZ(0) < 726.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(358,-16,64,175);
	Polyobj_DoorSwing(182,16,64,175);
  }
    else
    If(GetActorZ(0) < 726.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 183 (void)
{
  If(GetActorZ(0) < 726.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(357,16,64,0x7FFFFFFF);
	Polyobj_DoorSwing(183,16,64,0x7FFFFFFF);
  }
    else
    If(GetActorZ(0) < 726.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"These doors require a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 270 (void)
{
  If(GetActorZ(0) < 573.0 && CheckInventory("DarkKey") > 0)
  {
    Polyobj_DoorSwing(270,-16,64,175);
  }
  else
  If(GetActorZ(0) < 573.0 && CheckInventory("DarkKey") == 0)
    {
      Print(s:"This door requires a Dark key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 450 (void)
{
  If(GetActorZ(0) < 733.0 && CheckInventory("DarkKey") > 0 && CheckInventory("InventoryPendantOfTrueSightServant") > 0)
  {
    Polyobj_DoorSwing(450,16,64,175);
	Polyobj_DoorSwing(630,-16,64,175);
  }
  else
  If(GetActorZ(0) < 733.0 && CheckInventory("DarkKey") > 0)
  {
    Polyobj_DoorSwing(451,16,64,175);
	Polyobj_DoorSwing(629,-16,64,175);
  }
    else
    If(GetActorZ(0) < 726.0 && CheckInventory("DarkKey") == 0)
    {
      Print(s:"These doors require a Dark key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 451 (void)
{
  If(GetActorZ(0) < 733.0 && CheckInventory("DarkKey") > 0)
  {
    Polyobj_DoorSwing(451,16,64,175);
	Polyobj_DoorSwing(629,-16,64,175);
  }
    else
    If(GetActorZ(0) < 726.0 && CheckInventory("DarkKey") == 0)
    {
      Print(s:"These doors require a Dark key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 541 (void)
{
  If(GetActorZ(0) < 1010.0)
  {
	SetLineSpecial(357, 80, 541, 0, 0, 0, 0);
    Polyobj_DoorSwing(541,-16,64,0x7FFFFFFF);
  }
}
Script 632 (void)
{
  If(GetActorZ(0) < 733.0)
  {
    Polyobj_DoorSwing(632,16,64,0x7FFFFFFF);
	Polyobj_DoorSwing(628,-16,64,0x7FFFFFFF);
	Delay(50);
	Thing_Activate(200);
  }
}





//READABLES
Script 22 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A tower of verses is drafted on the pages. The few ones not frantically hatched off make a poem)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);

	Hudmessage(s:"Come and sit on my sofa with me a while"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"////////    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"Take a swim, enjoy some wine"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"Warm yourself up by the fireplace"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"                                                         ////"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"And you'll find my deepest secrets desire"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
	Hudmessage(s:"                                  ////////"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 23 (void)
{
	If(GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The alluringly perfumed journal appears to belong to Yzbeth. None of the entires seem to be dated)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.52, 180.0);

	Hudmessage(s:"My heart is broken...   The little port town just outside my domain's gates has had an uprising but the fire of these"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.56, 180.0);
	Hudmessage(s:"brave cultists was swiftly quenched by the Baron.   Why must we rip the chaos out of our hearts to obey the Icon?"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.58, 180.0);
	Hudmessage(s:"How dare he bring order into our world? My tears of sorrow have drenched the port in bleak mist. The fire is gone..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.60, 180.0);

	Hudmessage(s:"How ironic... much like myself, they are using magic walls to conceal their hideout.   If only they could conceal their"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.64, 180.0);
	Hudmessage(s:"starvation. I had the crypts sealed off and the only key brought here, where I can cherish it. Sooner or later, little"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.66, 180.0);
	Hudmessage(s:"rats will claw away at their coffin, and I shall rescue them like a brooding mother. Our common enemy will unite us."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.68, 180.0);

	Hudmessage(s:"In how many pieces must my heart be shattered? As I strolled through the bathing hall, I witnessed the gold primarch "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.72, 180.0);
	Hudmessage(s:"mingling with a lowly goblin! And he shrouded her away from me! Why doesn't he love me? He only cares about the Baron!"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.74, 180.0);

	Hudmessage(s:"I took the primarch's head today! Figuratively, of course... I could never slay someone in cold blood. Still, my admirers"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.78, 180.0);
    Hudmessage(s:"were in shock! This declaration of war will show everyone how strong and determined I am. The Baron has no power here!"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.80, 180.0);

	Hudmessage(s:"The primarch's empty threats are music to my ears.  I propped him in the balcony, where everyone can savor his shame."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
	Hudmessage(s:"He even tried to convince my gardener to free him when visiting my chambers. Too bad my gardener loves me a lot more"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
	Hudmessage(s:"than he ever did...     I told him so many secrets, just to spite the primarch.     He is so smart and perceptive and... weak."; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.88, 180.0);
	Hudmessage(s:"His human body did not last, but I shall keep his mind.    Somewhere in his garden, where his art will keep growing on...    "; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.90, 180.0);
    }
	else
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The alluringly perfumed journal appears to belong to Yzbeth. None of the entires seem to be dated)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.52, 180.0);

	Hudmessage(s:"My heart is broken...   The \c[Gold]little port town just outside my domain's gates\c- has had an uprising but the fire of these"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.56, 180.0);
	Hudmessage(s:"brave cultists was swiftly quenched by the Baron.   Why must we rip the chaos out of our hearts to obey the Icon?"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.58, 180.0);
	Hudmessage(s:"How dare he bring order into our world? My tears of sorrow have drenched the port in bleak mist. The fire is gone..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.60, 180.0);

	Hudmessage(s:"How ironic... much like myself, they are \c[Gold]using magic walls to conceal their hideout\c-.   If only they could conceal their"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.64, 180.0);
	Hudmessage(s:"starvation. I had the crypts sealed off and the only key brought here, where I can cherish it. Sooner or later, little"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.66, 180.0);
	Hudmessage(s:"rats will claw away at their coffin, and I shall rescue them like a brooding mother. Our common enemy will unite us."; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.68, 180.0);

	Hudmessage(s:"In how many pieces must my heart be shattered? As I strolled through the bathing hall, I witnessed the gold primarch "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.72, 180.0);
	Hudmessage(s:"mingling with a lowly goblin! And he shrouded her away from me! Why doesn't he love me? He only cares about the Baron!"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.74, 180.0);

	Hudmessage(s:"I took the primarch's head today! Figuratively, of course... I could never slay someone in cold blood. Still, my admirers"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.78, 180.0);
    Hudmessage(s:"were in shock! This declaration of war will show everyone how strong and determined I am. The Baron has no power here!"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.80, 180.0);

	Hudmessage(s:"The primarch's empty threats are music to my ears.  I propped him in the balcony, where everyone can savor his shame."; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
	Hudmessage(s:"He even tried to convince my gardener to free him when visiting my chambers. Too bad my gardener loves me a lot more"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
	Hudmessage(s:"than he ever did...     I told him so many secrets, just to spite the primarch.     He is so smart and perceptive and... weak."; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.88, 180.0);
	Hudmessage(s:"His human body did not last, but I shall keep his mind.    Somewhere in his garden, where his art will keep growing on...    "; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.90, 180.0);
	}
}

Script 27 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Humans...   such frail and weak creatures, ever seeking to fulfil their purpose before it is viciously snatched       "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 60.0);
    Hudmessage(s:"away by their timely demise. Unable to understand the joy of pure chaos, they only know how to obey their fate."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 60.0);
    Hudmessage(s:"Day after day I sit here and watch them walk these steps in pursuit of their repetitive tasks.   Every now and    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 60.0);
	Hudmessage(s:"then, an old one falls to the ground, heart frozen from the strain. Good. I don't want crusty old people around."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 60.0);
}

Script 93 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The tome appears to contain a trove of magic formulae for enchantments and curses)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
}

Script 94 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The alluringly perfumed journal appears to belong to Yzbeth. None of the entires seem to be dated)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 180.0);

	Hudmessage(s:"Another unbridled force of nature was dragged into the abyss by our everlasting hunger.   I was not there, yet"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 180.0);
	Hudmessage(s:"I could hear their dying rage from all across Hell.    The Iron Division has learned the fate of those who try to  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 180.0);
    Hudmessage(s:"deny us Demons of what we most desire. Such a fierce and exotic breed of warriors they are. I had the pleasure"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 180.0);
	Hudmessage(s:"of being gifted some of their best specimen!       The Baron seems to know of my intimate interest in orc culture. "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.68, 180.0);

	Hudmessage(s:"The Iron Division appear far more sophisticated than the wild brutes from the Overworld who end up toiling in    "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.72, 180.0);
	Hudmessage(s:"the mines. For once, they seem to have no men among their ranks - few legends mention a tribe banished into the"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.74, 180.0);
	Hudmessage(s:"underground for defiling sacred laws, an amazonian tribe who sought unnatural power in order to dominate all"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.76, 180.0);
	Hudmessage(s:"battlefields.  Oh, and that they did! From what I heard, they sliced through our cultist towns like a hot knife!"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.78, 180.0);

	Hudmessage(s:"Regardless, they didn't submit to my wishes, but I don't have the heart to torture such brave and fire-hearted"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.82, 180.0);
	Hudmessage(s:"warriors so I had them petrified - all save for the most talkative one, of course!     She will make the apex of my"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
	Hudmessage(s:"newest exhibition, and my newest magic trick - immortalizing someone inside a painting!     Now, the claws of time"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
	Hudmessage(s:"will never be able to scratch away her beauty, and I will forever have a wonderful chatting partner! After all,"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.88, 180.0);
    Hudmessage(s:"I have always found paintings to be the most interesting story tellers  -  especially when they can utter words! "; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.90, 180.0);
}

Script 126 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 60.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Oh, dear journal, if only you had eyes to see and heart to feel what my special guests have been going through.     "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 60.0);
    Hudmessage(s:"No amount of volcanic heat could make a demon sweat as much as they do after being sat on the special chair...  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 60.0);
    Hudmessage(s:"tensing up as they realize that they are the focus of the table's discussion.    Trembling under hungry eyes gazing "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 60.0);
	Hudmessage(s:"upon them from every direction. Wincing as the doors open and a dart puts an end to their inconvenient existance."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 60.0);
}

Script 127 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The pages are scribbled with various observations on Yzbeth's dancers and their performances)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
}

Script 128 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The alluringly perfumed journal clearly belongs to Yzbeth. The letters are arranged in a weird manner)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 180.0);

	//Hudmessage(s:"Forgive me, dear journal, but I can't allow you to understand these words - for they are far to shameful, even for"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
    //Hudmessage(s:"me.  I've been visiting the library more often than I used to, looming from the shadows and admiring a most peculiar"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
    //Hudmessage(s:"book thief!    Like the seed that braves the dry stone on which it has landed upon, my gardner has been spreading the"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 180.0);
	//Hudmessage(s:"roots of his mind beyond his limitations.   He is ready to sacrifice everything to perfect his art.   My heart is pounding!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 180.0);

    Hudmessage(s:"!gnidnuop si traeh yM   .tra sih tcefrep ot gnihtyreve ecifircas ot ydaer si eH.   .snoitatimil sih dnoyeb dnim sih fo stoor"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 180.0);
    Hudmessage(s:"eht gnidaerps neeb sah renedrag ym ,nopu dednal sah ti hcihw no enots yrd eht sevarb taht dees eht ekiL  !feiht koob"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
    Hudmessage(s:"eht gnidaerps neeb sah renedrag ym ,nopu dednal sah ti hcihw no enots yrd eht sevarb taht dees eht ekiL  !feiht koob"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 180.0);
    Hudmessage(s:"railucep tsom a gnirimda dna swodahs eht morf gnimool ,ot desu I naht netfo erom yrarbil eht gnitisiv neeb ev'I  .em"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 180.0);
	Hudmessage(s:"rof neve ,lufemahs ot raf era yeht rof - sdrow eseht dnatsrednu ot uoy wolla t'nac I tub ,lanruoj raed ,em evigroF"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 180.0);
}

Script 129 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"[...] following the research notes from Mistress Nithriel, we have managed to break down and understand the"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 120.0);
    Hudmessage(s:"chemicals used against our cultists by the green savages. This is how we can easily make them for ourselves:"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 120.0);
    If(GameSkill() != 5)
	{
	Hudmessage(s:"Green Corrosive Acid - can be easily obtained by mixing a deadly Poison with Green and Cyan Arcane Salts"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);

	Hudmessage(s:"Pink Gas - a more elaborate substance, made by mixing Poison with Mana and then adding Pink Arcane Salts"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 120.0);
    }
	else
	{
	Hudmessage(s:"(None of the recipes detailed below catch your interest)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 120.0);
    }
}


//Gold Riddles
Script 100 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 180.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The magic pendant reveals an ethereal plaque with a riddle on it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.36, 180.0);

	Hudmessage(s:"Listen well, from now and onward,"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.40, 180.0);
	Hudmessage(s:"For you are my faithful steward"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.42, 180.0);
	Hudmessage(s:"If you're wise and you are bold"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.44, 180.0);
	Hudmessage(s:"You shall count the kingdom's gold."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.46, 180.0);

	Hudmessage(s:"Though I keep my subjects safe"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.50, 180.0);
	Hudmessage(s:"Four of them delay the pay"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.52, 180.0);
	Hudmessage(s:"Fourty coins appear to miss"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.54, 180.0);
	Hudmessage(s:"From my castle's treasuries"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.56, 180.0);

	Hudmessage(s:"Go now and perform the deed"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.60, 180.0);
	Hudmessage(s:"But first, my advice do heed"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.62, 180.0);
	Hudmessage(s:"Don't collect four equal parts"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.64, 180.0);
	Hudmessage(s:"For our fortune will collapse"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.66, 180.0);
	Hudmessage(s:"Tax with wit and equity"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_UNTRANSLATED, 1.5, 0.68, 180.0);
	Hudmessage(s:"So they fight themselves, not me."; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_UNTRANSLATED, 1.5, 0.70, 180.0);
	}
}
Script 101 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The magic pendant reveals an ethereal plaque with a riddle on it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 120.0);

	Hudmessage(s:"Even though her husband died,"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"Widow Frey appears to thrive"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
	Hudmessage(s:"Every day we see her drink"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 120.0);
	Hudmessage(s:"From her only bova's milk."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 120.0);

	Hudmessage(s:"Oh, she thinks she is so sly"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.60, 120.0);
	Hudmessage(s:"Not paying the taxes high"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.62, 120.0);
	Hudmessage(s:"But the lord has heard a squeak"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.64, 120.0);
	Hudmessage(s:"Two chicks hidden in her attic."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.66, 120.0);
	}
}
Script 102 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The magic pendant reveals an ethereal plaque with a riddle on it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 120.0);

	Hudmessage(s:"Unlike butcher Iod and Frey,"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"Who both have to pay the same"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
	Hudmessage(s:"Cobbler Dovan pays the least"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 120.0);
	Hudmessage(s:"With his thin hog and eight chicks."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 120.0);
	}
}
Script 103 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The magic pendant reveals an ethereal plaque with a riddle on it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 120.0);

	Hudmessage(s:"Farmer Drav is doing fine"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"With a bova in his barn"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
	Hudmessage(s:"His fat hog eats all it can"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 120.0);
	Hudmessage(s:"Four chicks sleep well in their pen."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 120.0);

	Hudmessage(s:"Once, he eyed the cobbler's coop"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.60, 120.0);
	Hudmessage(s:"Peeked beneath his straw hat's brim"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.62, 120.0);
	Hudmessage(s:"If I had that many chicks"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.64, 120.0);
	Hudmessage(s:"I'd pay twice as much as him."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.66, 120.0);
	}
}
Script 104 (void)
{
	If(CheckInventory("InventoryPendantOfTrueSight") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The magic pendant reveals an ethereal plaque with a riddle on it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.46, 120.0);

	Hudmessage(s:"Butcher Iod is so upset"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"His two hogs refuse to mate"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 120.0);

	Hudmessage(s:"Ever since the plague has hit"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.56, 120.0);
	Hudmessage(s:"His whole fortune is forfeit."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.58, 120.0);

	Hudmessage(s:"Still, he won't admit defeat"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.62, 120.0);
	Hudmessage(s:"So he's also bought two chicks"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.64, 120.0);
	}
}

//Obelisk Riddle
int Spec133 = 0;
Script 133 (void)
{
	If(Spec133 == 0)
	{
	  Spec133 += 1;
	  PlaySound(0, "Interaction/HarpA", CHAN_AUTO);
	  GiveInventory("ScriptObeliskCount", 1);
	}

	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 120.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"__ _ C____R__ __ F___, _I__ _ _O____ G____N_ ___. S___ _T ___,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 120.0);
	Hudmessage(s:"_N_ ___I__ __R____R__, __K_ ___E_ ___P_ ___ S____ T_ ___.        "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 120.0);
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

//JOURNAL
int JournalPage = 0;
Script "OpenJournal" (void)
{
	SetFont ("OLAYTJOU");
    HudMessage (s:"a"; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.10, 9999.0);

	SetFont("SMALLFONT");
	Hudmessage(s:".oO   JOURNAL OF ZAN THE BONEBREAKER   Oo."; HUDMSG_PLAIN, 999, CR_BLACK, 1.5, 0.10, 9999.0);

	If(CheckInventory("JournalScrawnSketch") > 0)
	{
		GiveInventory("JournalBrowseExtraPages", 1);
	}

    If(JournalPage == 0)
	{
	//MAIN QUESTS
	//Survive
	  If(CheckInventory("QuestMap18Survive") == 2)
	  {
	    Hudmessage(s:"> Stranded. Need to find some food and get my bearings"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	  }
	    else
	    If(CheckInventory("QuestMap18Survive") == 1)
	    {
		  Hudmessage(s:"> Stranded. Need to find some food and get my bearings"; HUDMSG_PLAIN | HUDMSG_LOG, 1001, CR_BLACK, 1.5, 0.16, 9999.0);
	      Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1002, CR_BLACK, 1.5, 0.16, 9999.0);
	    }
	//Get Primarch Taints
	If(CheckInventory("QuestMap18GetPrimarchsTaint") == 2)
	{
	  Hudmessage(s:"> To enter the Icon's lair I need taints from 5 primarchs:"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
      Hudmessage(s:"> Gaun -                                                                                              "; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
      Hudmessage(s:"> Adur -                                                                                        "; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
      Hudmessage(s:"> Elzriel -                                                                                        "; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
	  Hudmessage(s:"> Scorlag -                                                                                          "; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
	  Hudmessage(s:"> Erudin -                                                                                            "; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
	  Hudmessage(s:"_________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1029, CR_BLACK, 1.5, 0.56, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GetPrimarchsTaint") == 1)
	  {
	    Hudmessage(s:"> To enter the Icon's lair I need taints from 5 primarchs:"; HUDMSG_PLAIN | HUDMSG_LOG, 1003, CR_BLACK, 1.5, 0.18, 9999.0);
		Hudmessage(s:"-----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1004, CR_BLACK, 1.5, 0.18, 9999.0);
		Hudmessage(s:"_________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1029, CR_BLACK, 1.5, 0.56, 9999.0);
	  }
	//Green Primarch
	If(CheckInventory("QuestMap18GreenPrimarch") == 2)
	{
	  Hudmessage(s:"> Gaun - green - wants a crimson salt statue of myself"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GreenPrimarch") == 1)
	  {
	    Hudmessage(s:"> Gaun - green - wants a crimson salt statue of myself"; HUDMSG_PLAIN | HUDMSG_LOG, 1005, CR_BLACK, 1.5, 0.24, 9999.0);
		Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1006, CR_BLACK, 1.5, 0.24, 9999.0);
	  }
	//Purple Primarch
	If(CheckInventory("QuestMap19PurplePrimarch") == 2)
	{
	  Hudmessage(s:"> Adur - purple - wants me to seduce a demonblood"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19PurplePrimarch") == 1)
	  {
	    Hudmessage(s:"> Adur - purple - wants me to seduce a demonblood"; HUDMSG_PLAIN | HUDMSG_LOG, 1007, CR_BLACK, 1.5, 0.30, 9999.0);
		Hudmessage(s:"-----------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1008, CR_BLACK, 1.5, 0.30, 9999.0);
	  }
	//Get Sacrificial Sword
	If(CheckInventory("QuestMap18GetSacrificialSword") == 2)
	{
	  Hudmessage(s:"Eraanthe will help me if I find her a sacrificial sword"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.32, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18GetSacrificialSword") == 1)
	  {
	    Hudmessage(s:"Eraanthe will help me if I find her a sacrificial sword"; HUDMSG_PLAIN | HUDMSG_LOG, 1009, CR_BLACK, 1.5, 0.32, 9999.0);
		Hudmessage(s:"--------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1010, CR_BLACK, 1.5, 0.32, 9999.0);
	  }
	//Yellow Primarch
	If(CheckInventory("QuestMap19YellowPrimarch") == 2)
	{
	  Hudmessage(s:"> Elzriel - gold - wants me to offer him 300 gold coins"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19YellowPrimarch") == 1)
	  {
	    Hudmessage(s:"> Elzriel - gold - wants me to offer him 300 gold coins"; HUDMSG_PLAIN | HUDMSG_LOG, 1011, CR_BLACK, 1.5, 0.36, 9999.0);
		Hudmessage(s:"--------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1012, CR_BLACK, 1.5, 0.36, 9999.0);
	  }
	//Blue Primarch
	If(CheckInventory("QuestMap20BluePrimarch") == 2)
	{
	  Hudmessage(s:"> Scorlag - blue - wants elixir of life and elixir of death"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20BluePrimarch") == 1)
	  {
	    Hudmessage(s:"> Scorlag - blue - wants elixir of life and elixir of death"; HUDMSG_PLAIN | HUDMSG_LOG, 1013, CR_BLACK, 1.5, 0.42, 9999.0);
		Hudmessage(s:"----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1014, CR_BLACK, 1.5, 0.42, 9999.0);
	  }
	//Red Primarch
	If(CheckInventory("QuestMap20RedPrimarch") == 2)
	{
	  Hudmessage(s:"> Erudin - red - wants me to perform a bloody betrayal"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20RedPrimarch") == 1)
	  {
	    Hudmessage(s:"> Erudin - red - wants me to perform a bloody betrayal"; HUDMSG_PLAIN | HUDMSG_LOG, 1015, CR_BLACK, 1.5, 0.48, 9999.0);
		Hudmessage(s:"---------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1016, CR_BLACK, 1.5, 0.48, 9999.0);
	  }
	//Help Wounded Bear Warrior
	If(CheckInventory("QuestMap18HelpWoundedBearWarrior") > 0 && CheckInventory("ScriptHasBetrayedID") > 0)
	{
	  Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
	  Hudmessage(s:"////////////////////////////////////////"; HUDMSG_PLAIN | HUDMSG_LOG, 1018, CR_BLACK, 1.5, 0.50, 9999.0);
	}
	else
	If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 2)
	{
	  Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpWoundedBearWarrior") == 1)
	  {
	    Hudmessage(s:"A wounded Bear asked me to warn our camp of an attack"; HUDMSG_PLAIN | HUDMSG_LOG, 1017, CR_BLACK, 1.5, 0.50, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1018, CR_BLACK, 1.5, 0.50, 9999.0);
	  }
	//Help Pit Lord Eberon
	If(CheckInventory("QuestMap18HelpPitLordEberon") == 2)
	{
	  Hudmessage(s:"Eberon wants me to open the gate by the side of his fort"; HUDMSG_PLAIN | HUDMSG_LOG, 1019, CR_BLACK, 1.5, 0.52, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpPitLordEberon") == 1)
	  {
	    Hudmessage(s:"Eberon wants me to open the gate by the side of his fort"; HUDMSG_PLAIN | HUDMSG_LOG, 1019, CR_BLACK, 1.5, 0.52, 9999.0);
		Hudmessage(s:"-----------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1020, CR_BLACK, 1.5, 0.52, 9999.0);
	  }
	//Help Flame Beacon Ghost
	If(CheckInventory("QuestMap18HelpFlameBeaconGhost") == 2)
	{
	  Hudmessage(s:"> Port ghost asked me to find his brothers with his pendant"; HUDMSG_PLAIN | HUDMSG_LOG, 1021, CR_BLACK, 1.5, 0.60, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18HelpFlameBeaconGhost") == 1)
	  {
	    Hudmessage(s:"> Port ghost asked me to find his brothers with his pendant"; HUDMSG_PLAIN | HUDMSG_LOG, 1021, CR_BLACK, 1.5, 0.60, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1022, CR_BLACK, 1.5, 0.60, 9999.0);
	  }
	//Get Soul Key Fragments
	If(CheckInventory("QuestMap20GetSoulKeyFragments") == 2)
	{
	  Hudmessage(s:"> Abedun said I need 3 soul key fragments to sap the Baron"; HUDMSG_PLAIN | HUDMSG_LOG, 1023, CR_BLACK, 1.5, 0.62, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap20GetSoulKeyFragments") == 1)
	  {
	    Hudmessage(s:"> Abedun said I need 3 soul key fragments to sap the Baron"; HUDMSG_PLAIN | HUDMSG_LOG, 1023, CR_BLACK, 1.5, 0.62, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1024, CR_BLACK, 1.5, 0.62, 9999.0);
	  }
	//Rescue Lancer
	If(CheckInventory("QuestMap19RescueLancer") == 2)
	{
	  Hudmessage(s:"__________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.64, 9999.0);
	  Hudmessage(s:"> A lancer trapped inside a painting asked me to rescue her"; HUDMSG_PLAIN | HUDMSG_LOG, 1025, CR_BLACK, 1.5, 0.66, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap19RescueLancer") == 1)
	  {
		Hudmessage(s:"__________________________________"; HUDMSG_PLAIN | HUDMSG_LOG, 1030, CR_BLACK, 1.5, 0.64, 9999.0);
	    Hudmessage(s:"> A lancer trapped inside a painting asked me to rescue her"; HUDMSG_PLAIN | HUDMSG_LOG, 1025, CR_BLACK, 1.5, 0.66, 9999.0);
		Hudmessage(s:"------------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1026, CR_BLACK, 1.5, 0.66, 9999.0);
	  }
	//Enter Portal
	If(CheckInventory("QuestMap18EnterPortal") == 2)
	{
	  Hudmessage(s:"> Time to end this war. The Baron's citadel awaits me."; HUDMSG_PLAIN | HUDMSG_LOG, 1027, CR_BLACK, 1.5, 0.80, 9999.0);
	}
	  else
	  If(CheckInventory("QuestMap18EnterPortal") == 1)
	  {
	    Hudmessage(s:"> Time to end this war. The Baron's citadel awaits me."; HUDMSG_PLAIN | HUDMSG_LOG, 1027, CR_BLACK, 1.5, 0.80, 9999.0);
		Hudmessage(s:"-------------------------------------------------------"; HUDMSG_PLAIN | HUDMSG_LOG, 1028, CR_BLACK, 1.5, 0.80, 9999.0);
	  }


	If(CheckInventory("JournalScrawnSketch") > 0)
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

		If(GameSkill() > SKILL_VERY_HARD)
		{
		  SetFont ("OLAYTJO1");
		}
		else
		{
		  SetFont ("OLAYTJO2");
		}
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

    Hudmessage(s:""; HUDMSG_PLAIN, 1998, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 1999, CR_UNTRANSLATED, 1.5, 0.5, 0.1);
}
