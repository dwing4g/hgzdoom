#include "zcommon.acs"

//TESTING
Script 430 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Welcome to Hedon's beta testing hub!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"Select a level by jumping in one of the pits and using the front wall."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 35.0);
	Hudmessage(s:"You will get the standard gear for the level once you jump, but you can"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
	Hudmessage(s:"grab more items from the room here, though it's not advised for 1st runs."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 35.0);
    Hudmessage(s:"Please give me all your feedback and report bugs through ModDB comments"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 35.0);
	Hudmessage(s:"or email at hedongame@yahoo.com . Thanks, and enjoy yourself! - Zan"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 35.0);
}


//MAP SELECT

Script 401 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP01", 0, 0, -1);
}

Script 402 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP02", 0, 0, -1);
}

Script 403 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP03", 0, 0, -1);
}

Script 404 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP04", 0, 0, -1);
}

Script 405 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP05", 0, 0, -1);
}

Script 406 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP06", 0, 0, -1);
}

Script 407 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP07", 0, 0, -1);
}

Script 408 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP08", 0, 0, -1);
}

Script 409 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP09", 0, 0, -1);
}

Script 410 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP10", 0, 0, -1);
}

Script 411 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP11", 0, 0, -1);
}

Script 412 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP12", 0, 0, -1);
}

Script 413 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP13", 0, 0, -1);
}

Script 414 (void)//
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP14", 0, 0, -1);
}

Script 415 (void)//
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP15", 0, 0, -1);
}

Script 416 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP16", 0, 0, -1);
}

Script 417 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP17", 0, 0, -1);
}

Script 418 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP18", 0, 0, -1);
}

Script 419 (void)//
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP19", 0, 0, -1);
}

Script 420 (void)//
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP20", 0, 0, -1);
}

Script 421 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");
	ChangeLevel("MAP21", 0, 0, -1);
}



Script 431 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map01 - Cold Rock (Start Normally)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 432 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map02 - Plaza (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 433 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map03 - Barracks (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 434 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map04 - Technical Space (Minor Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 435 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map05 - Grove (Moderate Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 436 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map06 - Errant Signal (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 437 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map07 - Parapet (Moderate Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 438 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map08 - Pale Wind (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 439 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map09 - Research and Decay (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 440 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map10 - Crystal Heart (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 441 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map11 - Deep Chill (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 442 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map12 - Mansion (Moderate Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 443 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map13/14/15 - Besieged (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 444 (void)//
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map14 - Brazen Bull (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 445 (void)//
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map15 - Deep Calls (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 446 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map16 - Port to Hell (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 447 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map17 - Hellscape (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 448 (void)//
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map18/19/20 - Paradise Lost (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 449 (void)//
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map19 - Place Afoul (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 450 (void) //
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map20 - Salt and Blood (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

Script 451 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Map21/22 - Bloodrite (Major Spoilers)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 4.0);
}

//ARENA
Script 1 ENTER
{
	Thing_Activate(779);
	SetActorFlag(5, "COUNTKILL", 0);
	SetActorFlag(5, "FLOATBOB", 0);
	SetActorFlag(5, "NOCLIP", 1);
	SetActorFlag(5, "NOBLOCKMAP", 1);
}
//Permieter Lock
Script 100 (void)
{
	If(GetSectorCeilingZ(100, 0, 0) == 221.0)
	{
		Ceiling_LowerByValue(100, 96, 208);
		TagWait(6);
	}
	else
	{
		Ceiling_RaiseByValue(100, 96, 208);
		TagWait(6);
	}
}
//Monster Fight
Script 101 (void)
{
	Hudmessage(s:"FIGHT!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 1.0, 0.2, 0.5);
	PlaySound(0, "Ambient/Crash", CHAN_AUTO, 0.3);
	NoiseAlert(0, 0);
	Thing_Hate(108, 109, 3);
	Thing_Hate(109, 108, 3);
	Delay(35);
}
Script 104 (void)
{
	Hudmessage(s:"5..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"4..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"3..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"2..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"1..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"FIGHT!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 1.0, 0.2, 0.5);
	PlaySound(0, "Ambient/Crash", CHAN_AUTO, 0.5);
	NoiseAlert(0, 0);
	Thing_Hate(108, 109, 3);
	Thing_Hate(109, 108, 3);
}
Script 105 (void)
{
	Hudmessage(s:"10..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"9..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"8..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"7..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"6..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"5..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"4..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"3..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"2..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"1..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 0.5, 0.2, 0.3);
	Delay(5);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.5);
	Delay(10);
	PlaySound(0, "Switches/Switch3", CHAN_AUTO, 0.2);
	Delay(20);
	Hudmessage(s:"FIGHT!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 1.0, 0.2, 0.5);
	PlaySound(0, "Ambient/Crash", CHAN_AUTO, 0.8);
	NoiseAlert(0, 0);
	Thing_Hate(108, 109, 3);
	Thing_Hate(109, 108, 3);
}
//Middle Block
int spec102=0;
Script 102 (void)
{
	If(spec102==0)
	{
		Floor_RaiseByValue(102, 96, 48);
		TagWait(102);
		spec102 += 1;
	}
	else
	{
		Floor_LowerToLowest(102, 96);
		TagWait(102);
		spec102 -= 1;
	}
}
//Traverse Block A
int spec99=0;
Script 99 (void)
{
	If(spec99==0)
	{
		Floor_RaiseByValue(99, 8, 24);
		Floor_RaiseByValue(97, 16, 48);
		TagWait(99);
		TagWait(97);
		spec99 += 1;
	}
	else
	{
		Floor_LowerToLowest(99, 32);
		Floor_LowerToLowest(97, 32);
		TagWait(99);
		TagWait(97);
		spec99 -= 1;
	}
}
//Traverse Block B
int spec98=0;
Script 98 (void)
{
	If(spec98==0)
	{
		Floor_RaiseByValue(98, 8, 32);
		Floor_RaiseByValue(96, 18, 80);
		TagWait(98);
		TagWait(96);
		spec98 += 1;
	}
	else
	{
		Floor_LowerToLowest(98, 32);
		Floor_LowerToLowest(96, 32);
		TagWait(98);
		TagWait(96);
		spec98 -= 1;
	}
}
//Lower Ground
Script 95 (void)
{
	If(GetSectorFloorZ(95, 0, 0) > -480.0)
	{
		Floor_LowerByValue(95, 16, 16);
		TagWait(95);
	}
}
//Raise Ground
Script 94 (void)
{
	If(GetSectorFloorZ(95, 0, 0) < -64.0)
	{
		Floor_RaiseByValue(95, 16, 16);
		TagWait(95);
	}
}
//Fall Pits
int spec93=0;
Script 93 (void)
{
	If(spec93==0)
	{
		ChangeFloor(93, "ASH1");
		Delay(90);
		Floor_LowerByValue(93, 999, 1280);
		TagWait(93);
		spec93 += 1;
	}
	else
	{
		ChangeFloor(93, "SAND1");
		Floor_RaiseToHighest(93, 999);
		TagWait(93);
		spec93 -= 1;
	}
}
//Ziggurats
int spec90=0;
Script 90 (void)
{
	If(spec90==0)
	{
		Floor_RaiseByValue(90, 12, 24);
		Floor_RaiseByValue(91, 12, 48);
		Floor_RaiseByValue(92, 12, 72);
		TagWait(90);
		TagWait(91);
		TagWait(92);
		spec90 += 1;
	}
	else
	{
		Floor_LowerByValue(92, 32, 72);
		Floor_LowerByValue(91, 32, 48);
		Floor_LowerByValue(90, 32, 24);
		TagWait(92);
		TagWait(91);
		TagWait(90);
		spec90 -= 1;
	}
}
//Lava Damage
int spec88=0;
Script 86 ENTER
{   If(spec88==1)
	{
	SectorDamage(89, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	}
	Delay(16);
	Restart;
}
//Lava Pits
int spec87=0;
//int spec88=0;
Script 88 (void)
{
	TagWait(87);
	Delay(4);
	If(spec88==0 && spec87==0)
	{
		ChangeFloor(89, "ASH2");
		Delay(70);
		ChangeFloor(89, "LAVA_01");
		Line_SetBlocking(88, BLOCKF_MONSTERS, 0);
		spec88 += 1;
	}
	else
	If(spec88==1 && spec87==0)
	{
		ChangeFloor(89, "ASH2");
		Delay(16);
		ChangeFloor(89, "SAND1");
		Line_SetBlocking(0, 0, BLOCKF_MONSTERS);
		spec88 -= 1;
	}
}

//Flood
//int spec87=0;
Script 87 (void)
{
	If(Spec87==0)
	{
	  If(spec88==1)
	  {
		ChangeFloor(89, "ASH2");
		Delay(16);
		ChangeFloor(89, "SAND1");
		Line_SetBlocking(0, 0, BLOCKF_CREATURES);
		spec88 -= 1;
	  }
	Ceiling_RaiseByValue(87, 64, 1600);
	TagWait(87);
	spec87 += 1;
	}
	else
	{
		Ceiling_LowerByValue(87, 64, 1600);
		TagWait(87);
		spec87 -= 1;
	}
}
//Randomizer
int spec85=0;
Script 85 (void)
{
	If(spec85==0)
	  {
		Hudmessage(s:"Terrain randomizer activated."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
		SetLineTexture(85, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_DN");
		ACS_Execute(84, 0, 0, 0, 0);
		spec85 = 1;
	  }
	  else
	  {
		  SetLineTexture(85, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_BL");
		  ACS_Terminate(84, 0);
		  spec85 = 0;
	  }
}
Script 84 (void)
{
	Switch(random(1, 11))
	{
		Case 1:
		ACS_Execute(94, 0, 0, 0, 0);
		Break;

		Case 2:
		ACS_Execute(94, 0, 0, 0, 0);
		Break;

		Case 3:
		ACS_Execute(95, 0, 0, 0, 0);
		Break;

		Case 4:
		ACS_Execute(95, 0, 0, 0, 0);
		Break;

		Case 5:
		ACS_Execute(102, 0, 0, 0, 0);
		Break;

		Case 6:
		ACS_Execute(87, 0, 0, 0, 0);
		Break;

		Case 7:
		ACS_Execute(88, 0, 0, 0, 0);
		Break;

		Case 8:
		ACS_Execute(90, 0, 0, 0, 0);
		Break;

		Case 9:
		ACS_Execute(93, 0, 0, 0, 0);
		Break;

		Case 10:
		ACS_Execute(99, 0, 0, 0, 0);
		Break;

		Case 11:
		ACS_Execute(98, 0, 0, 0, 0);
		Break;
	}
	Delay(35*6);
	Restart;
}
//Random Tips
int spec83=0;
Script 83 (void)
{
	If(spec83==0)
	  {
		Hudmessage(s:"Random tips activated."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
		SetLineTexture(83, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_DN");
		ACS_Execute(82, 0, 0, 0, 0);
		spec83 = 1;
	  }
	  else
	  {
		  SetLineTexture(83, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_BL");
		  ACS_Terminate(82, 0);
		  Hudmessage(s:""; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 0.1);
		  spec83 = 0;
	  }
}
Script 82 (void)
{
	Switch(random(1, 35))
	{
		Case 1:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #35: Rocket jumping allows for shortcuts and different approaches of a level."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 2:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #2: Blood/Gore effects can be turned off from Options - Display Options."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 3:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #3: You can set your automap style and colors from Options - Automap Options."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 4:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #4: Using an Amulet of Shadows prevents seeker projectiles from locking on to you."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 5:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #5: Using an Elemental Ring gives you endless underwater breath."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 6:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #6: Potions of Might greatly reduce your ranged damage (except for melee throws) while active."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 7:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #7: Weaker enemies attempt to flee when badly injured."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 8:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #8: Demons (like Cerberi and Pit Lords) are resistant to fire."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 9:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #9: Some enemies may be immune to the Time Shard's freezing effect but their projectiles aren't."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 10:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #10: Enemies have different fields of view. A Cerberus can see well beyond 180 degrees, while a Crawler is more narrow sighted."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 11:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #11: The game's Wiki page contains information you won't find in-game."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 12:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #12: You can always review messages in the console (DEFAULT: Tilde)."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 13:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #13: Press F1 for a quick reference screen of the default inventory item key bindings."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 14:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #14: While in the map screen, you can mark your current position (DEFAULT : M)."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 15:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #15: The Potion Launcher's pink toxic gas is highly flammable."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 16:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #16: Forge Elementals don't spawn any Iron Urchins when killed by acid."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 17:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #17: Killing enemies with your Fists will not raise an alert."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 18:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #18: The Crushbow's Impact Bolts have higher damage and penetration at the expense of explosion radius."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 19:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #19: Potions of Stoneskin significantly reduce the explosion radius damage you take."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 20:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #20: Red Crystal clusters explode when hit."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 21:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #21: Bags of Holding only increase your ammo capacity once."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 22:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #22: Sentry Turrets get damaged by water. Swimming while holding one in your hands can be hazardous."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 23:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #23: Saving the game is the strongest spell in the book."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 24:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #24: Memorizing a few consumable hotkeys can be handy in a pinch."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 25:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #25: Use chasecam to better manage your platform jumps. (Default: numpad1)"; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 26:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #26: Use F6/F9 to quick save/load. If you die, you can also press Use (DEFAULT : E) to load the last save."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 27:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #27: You can toggle random sound pitching from Sound Options - Randomize Pitches."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

        Case 28:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #28: You can change the notification/item query message time with the console command - con_notifytime 7.0 (eg. for 7 seconds)."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 29:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #29: Warlocks are resistant to elemental damage and certain magic."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 30:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #30: Shooting a Crylance underwater without proper protection will have shocking results."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 31:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #31: Forge Elementals can't open doors so they rely on their Iron Urchins to do it for them."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 32:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #32: The Fire Hammer protects against all fire damage and allows walking on lava unhindered."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 33:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #33: The Great Axe's Thorns buff reduces nature damage (dealt by Initiates) and reflects the pain back to the attacker."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 34:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #34: Using the Shield to block and reflect incoming projectiles is less effective when moving."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 35:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #35: The Hellclaw's melee attack (DEFAULT : R) will restore ammo when damaging living enemies."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 36:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #36: Potions of Haste improve the firing rate of each weapon differently."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 37:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #37: Unlike levers and chains, button switches can be activated by projectiles from afar."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 38:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #38: Strafing right while moving forward will make you slightly faster."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 39:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #39: Hitting enemies with the Storm Staff charges it with mana. The bigger the enemy, the more mana it yields."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 40:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #40: You can keep the Paingun's barrels spinning and ready to fire by holding down reload (DEFAULT : R)."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 41:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #41: To kill a boss, shoot at it until it dies."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 42:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #42: She is watching you."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 43:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #43: The tower shields carried by Iron Maidens offer them great protection, but can be bypassed in many ways."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 44:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #44: The lightning bolts cast by Genii do massive splash damage in deep water."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 45:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #45: Potions of Stoneskin protect against physical and nature damage, Elemental Rings protect against all non physical damage."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 46:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #46: Some enemies are more prone to infighting than others. This is also affected by the difficulty level."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 47:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #47: Heavier armor amulets absorb higher amounts of damage, but deplete at a faster rate as a result."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 48:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #48: Power Shards boost your armor by a small amount and provide ammo for the Crylance."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 49:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #49: You can combine kicks with jumping and crouching for higher damage."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 50:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #50: You don't need to have your companions closeby when changing levels. They will join you even when ordered to guard."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;


	}
	Delay(35*10);
	Restart;
}

//Endless Mode - White
int spec78=0;
Script 78 (void)
{
	If(spec78==0)
	  {
		Hudmessage(s:"Endless Mode Activated."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
		SetLineTexture(78, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_DN");
		Line_SetBlocking(8, 0, BLOCKF_SOUND);
		ACS_Execute(77, 0, 0, 0, 0);
		spec78 = 1;
	  }
	  else
	  {
		  SetLineTexture(78, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_BL");
		  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.20, 0.1, 0.1, 0.1);
		  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.20, 0.1, 0.1, 0.1);
		  ACS_Terminate(77, 0);
		  Line_SetBlocking(8, BLOCKF_SOUND, 0);
		  spec78 = 0;
	  }
}
Script 77 (void)
{
	Hudmessage(s:"Monsters Spawning in"; HUDMSG_FADEINOUT | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.04, 9.5, 0.2, 0.3);
	Hudmessage(s:"7..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"6..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"5..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"4..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"3..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"2..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"1..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);

	ACS_Execute(76, 0, 0, 0, 0);
	Restart;
}
Script 76 (void)
{
	Switch(random(1,54))
	{
		Case 1:
		ACS_Execute(110, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 2:
		ACS_Execute(111, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 3:
        ACS_Execute(112, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 4:
		ACS_Execute(116, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 5:
		ACS_Execute(117, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 6:
		ACS_Execute(118, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 7:
		ACS_Execute(122, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 8:
		ACS_Execute(123, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 9:
		ACS_Execute(124, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 10:
		ACS_Execute(128, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 11:
		ACS_Execute(129, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 12:
		ACS_Execute(130, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 13:
		ACS_Execute(134, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 14:
		ACS_Execute(135, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 15:
		ACS_Execute(136, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 16:
		ACS_Execute(140, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 17:
		ACS_Execute(141, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 18:
		ACS_Execute(142, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 19:
		ACS_Execute(146, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 20:
		ACS_Execute(147, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 21:
		ACS_Execute(148, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 22:
		ACS_Execute(152, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 23:
		ACS_Execute(153, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 24:
		ACS_Execute(154, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 25:
		ACS_Execute(158, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 26:
		ACS_Execute(159, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 27:
		ACS_Execute(160, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;


        Case 28:
		ACS_Execute(164, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 29:
		ACS_Execute(165, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 30:
		ACS_Execute(166, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 31:
		ACS_Execute(170, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 32:
		ACS_Execute(171, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 33:
		ACS_Execute(172, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 34:
		ACS_Execute(176, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 35:
		ACS_Execute(177, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 36:
		ACS_Execute(178, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 37:
		ACS_Execute(182, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 38:
		ACS_Execute(183, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 39:
		ACS_Execute(184, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 40:
		ACS_Execute(188, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 41:
		ACS_Execute(189, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 42:
		ACS_Execute(190, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 43:
		ACS_Execute(194, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 44:
		ACS_Execute(195, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 45:
		ACS_Execute(196, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 46:
		ACS_Execute(200, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 47:
		ACS_Execute(201, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 48:
		//ACS_Execute(202, 0, 0, 0, 0); 3 Gluttons
		ACS_Execute(201, 0, 0, 0, 0); //2
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 49:
		ACS_Execute(206, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 50:
		//ACS_Execute(207, 0, 0, 0, 0); 2 Psi Demons
		ACS_Execute(206, 0, 0, 0, 0); //1
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 51:
		//ACS_Execute(208, 0, 0, 0, 0); 3 Psi Demons
		ACS_Execute(206, 0, 0, 0, 0); //1
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 52:
		ACS_Execute(212, 0, 0, 0, 0);
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 53:
		//ACS_Execute(213, 0, 0, 0, 0); 2 Commanders
		ACS_Execute(212, 0, 0, 0, 0); //1
		Delay(4);
		NoiseAlert(0, 0);
		Break;

		Case 54:
		//ACS_Execute(214, 0, 0, 0, 0); 3 Commanders
		ACS_Execute(212, 0, 0, 0, 0); //1
		Delay(4);
		NoiseAlert(0, 0);
		Break;
	}
}

//Endless Mode - White vs Black
int spec81=0;
Script 81 (void)
{
	If(spec81==0)
	  {
		Hudmessage(s:"Endless Mode Versus Activated."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
		SetLineTexture(81, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_DN");
		ACS_Execute(80, 0, 0, 0, 0);
		spec81 = 1;
	  }
	  else
	  {
		  SetLineTexture(81, SIDE_FRONT, TEXTURE_BOTTOM, "GATE2_BL");
		  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.20, 0.1, 0.1, 0.1);
		  Hudmessage(s:""; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.20, 0.1, 0.1, 0.1);
		  ACS_Terminate(80, 0);
		  spec81 = 0;
	  }
}
Script 80 (void)
{
	Hudmessage(s:"Monsters Spawning in"; HUDMSG_FADEINOUT | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.04, 9.5, 0.2, 0.3);
	Hudmessage(s:"8..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"7..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"6..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"5..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"4..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"3..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"2..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);
	Hudmessage(s:"1..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.06, 0.5, 0.2, 0.3);
	Delay(35);

	ACS_Execute(79, 0, 0, 0, 0);
	Restart;
}
Script 79 (void)
{
	Switch(random(1,54))
	{
		Case 1:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(112, 0, 0, 0, 0);
		}
		else
		ACS_Execute(110, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(115, 0, 0, 0, 0);
		}
		else
		ACS_Execute(113, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 2:
		ACS_Execute(111, 0, 0, 0, 0);
		ACS_Execute(114, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 3:
        If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(110, 0, 0, 0, 0);
		}
		else
		ACS_Execute(112, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(113, 0, 0, 0, 0);
		}
		else
		ACS_Execute(115, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 4:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(118, 0, 0, 0, 0);
		}
		else
		ACS_Execute(116, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(121, 0, 0, 0, 0);
		}
		else
		ACS_Execute(119, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 5:
		ACS_Execute(117, 0, 0, 0, 0);
		ACS_Execute(120, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 6:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(116, 0, 0, 0, 0);
		}
		else
		ACS_Execute(118, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(119, 0, 0, 0, 0);
		}
		else
		ACS_Execute(121, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 7:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(124, 0, 0, 0, 0);
		}
		else
		ACS_Execute(122, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(127, 0, 0, 0, 0);
		}
		else
		ACS_Execute(125, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 8:
		ACS_Execute(123, 0, 0, 0, 0);
		ACS_Execute(126, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 9:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(122, 0, 0, 0, 0);
		}
		else
		ACS_Execute(124, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(125, 0, 0, 0, 0);
		}
		else
		ACS_Execute(127, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 10:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(130, 0, 0, 0, 0);
		}
		else
		ACS_Execute(128, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(133, 0, 0, 0, 0);
		}
		else
		ACS_Execute(131, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 11:
		ACS_Execute(129, 0, 0, 0, 0);
		ACS_Execute(132, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 12:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(128, 0, 0, 0, 0);
		}
		else
		ACS_Execute(130, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(131, 0, 0, 0, 0);
		}
		else
		ACS_Execute(133, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 13:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(136, 0, 0, 0, 0);
		}
		else
		ACS_Execute(134, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(139, 0, 0, 0, 0);
		}
		else
		ACS_Execute(137, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 14:
		ACS_Execute(135, 0, 0, 0, 0);
		ACS_Execute(138, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 15:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(134, 0, 0, 0, 0);
		}
		else
		ACS_Execute(136, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(137, 0, 0, 0, 0);
		}
		else
		ACS_Execute(139, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 16:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(142, 0, 0, 0, 0);
		}
		else
		ACS_Execute(140, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(145, 0, 0, 0, 0);
		}
		else
		ACS_Execute(143, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 17:
		ACS_Execute(141, 0, 0, 0, 0);
		ACS_Execute(144, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 18:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(140, 0, 0, 0, 0);
		}
		else
		ACS_Execute(142, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(143, 0, 0, 0, 0);
		}
		else
		ACS_Execute(145, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 19:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(148, 0, 0, 0, 0);
		}
		else
		ACS_Execute(146, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(151, 0, 0, 0, 0);
		}
		else
		ACS_Execute(149, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 20:
		ACS_Execute(147, 0, 0, 0, 0);
		ACS_Execute(150, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 21:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(146, 0, 0, 0, 0);
		}
		else
		ACS_Execute(148, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(149, 0, 0, 0, 0);
		}
		else
		ACS_Execute(151, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 22:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(154, 0, 0, 0, 0);
		}
		else
		ACS_Execute(152, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(157, 0, 0, 0, 0);
		}
		else
		ACS_Execute(155, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 23:
		ACS_Execute(153, 0, 0, 0, 0);
		ACS_Execute(156, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 24:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(152, 0, 0, 0, 0);
		}
		else
		ACS_Execute(154, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(155, 0, 0, 0, 0);
		}
		else
		ACS_Execute(157, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 25:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(160, 0, 0, 0, 0);
		}
		else
		ACS_Execute(158, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(161, 0, 0, 0, 0);
		}
		else
		ACS_Execute(163, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 26:
		ACS_Execute(159, 0, 0, 0, 0);
		ACS_Execute(162, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 27:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(158, 0, 0, 0, 0);
		}
		else
		ACS_Execute(160, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(161, 0, 0, 0, 0);
		}
		else
		ACS_Execute(163, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;


        Case 28:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(166, 0, 0, 0, 0);
		}
		else
		ACS_Execute(164, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(169, 0, 0, 0, 0);
		}
		else
		ACS_Execute(167, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 29:
		ACS_Execute(165, 0, 0, 0, 0);
		ACS_Execute(168, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 30:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(164, 0, 0, 0, 0);
		}
		else
		ACS_Execute(166, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(167, 0, 0, 0, 0);
		}
		else
		ACS_Execute(169, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 31:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(172, 0, 0, 0, 0);
		}
		else
		ACS_Execute(170, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(175, 0, 0, 0, 0);
		}
		else
		ACS_Execute(173, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 32:
		ACS_Execute(171, 0, 0, 0, 0);
		ACS_Execute(174, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 33:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(170, 0, 0, 0, 0);
		}
		else
		ACS_Execute(172, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(173, 0, 0, 0, 0);
		}
		else
		ACS_Execute(175, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 34:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(178, 0, 0, 0, 0);
		}
		else
		ACS_Execute(176, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(181, 0, 0, 0, 0);
		}
		else
		ACS_Execute(179, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 35:
		ACS_Execute(177, 0, 0, 0, 0);
		ACS_Execute(180, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 36:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(176, 0, 0, 0, 0);
		}
		else
		ACS_Execute(178, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(179, 0, 0, 0, 0);
		}
		else
		ACS_Execute(181, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 37:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(184, 0, 0, 0, 0);
		}
		else
		ACS_Execute(182, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(187, 0, 0, 0, 0);
		}
		else
		ACS_Execute(185, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 38:
		ACS_Execute(183, 0, 0, 0, 0);
		ACS_Execute(186, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 39:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(182, 0, 0, 0, 0);
		}
		else
		ACS_Execute(184, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(185, 0, 0, 0, 0);
		}
		else
		ACS_Execute(187, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 40:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(190, 0, 0, 0, 0);
		}
		else
		ACS_Execute(188, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(193, 0, 0, 0, 0);
		}
		else
		ACS_Execute(191, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 41:
		ACS_Execute(189, 0, 0, 0, 0);
		ACS_Execute(192, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 42:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(188, 0, 0, 0, 0);
		}
		else
		ACS_Execute(190, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(191, 0, 0, 0, 0);
		}
		else
		ACS_Execute(193, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 43:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(196, 0, 0, 0, 0);
		}
		else
		ACS_Execute(194, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(199, 0, 0, 0, 0);
		}
		else
		ACS_Execute(197, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 44:
		ACS_Execute(195, 0, 0, 0, 0);
		ACS_Execute(198, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 45:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(194, 0, 0, 0, 0);
		}
		else
		ACS_Execute(196, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(197, 0, 0, 0, 0);
		}
		else
		ACS_Execute(199, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 46:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(202, 0, 0, 0, 0);
		}
		else
		ACS_Execute(200, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(205, 0, 0, 0, 0);
		}
		else
		ACS_Execute(203, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 47:
		ACS_Execute(201, 0, 0, 0, 0);
		ACS_Execute(204, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 48:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(200, 0, 0, 0, 0);
		}
		else
		ACS_Execute(202, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(203, 0, 0, 0, 0);
		}
		else
		ACS_Execute(205, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 49:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(208, 0, 0, 0, 0);
		}
		else
		ACS_Execute(206, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(211, 0, 0, 0, 0);
		}
		else
		ACS_Execute(209, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 50:
		ACS_Execute(207, 0, 0, 0, 0);
		ACS_Execute(210, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 51:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(206, 0, 0, 0, 0);
		}
		else
		ACS_Execute(208, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(209, 0, 0, 0, 0);
		}
		else
		ACS_Execute(211, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 52:
		If(ThingCount(T_NONE, 108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(214, 0, 0, 0, 0);
		}
		else
		ACS_Execute(212, 0, 0, 0, 0);
		If(ThingCount(T_NONE,109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(217, 0, 0, 0, 0);
		}
		else
		ACS_Execute(215, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 53:
		ACS_Execute(213, 0, 0, 0, 0);
		ACS_Execute(216, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;

		Case 54:
		If(ThingCount(T_NONE, 109) < (ThingCount(T_NONE,108)/2))
		{
		ACS_Execute(212, 0, 0, 0, 0);
		}
		else
		ACS_Execute(214, 0, 0, 0, 0);
		If(ThingCount(T_NONE,108) < (ThingCount(T_NONE,109)/2))
		{
		ACS_Execute(215, 0, 0, 0, 0);
		}
		else
		ACS_Execute(217, 0, 0, 0, 0);
		Delay(4);
		Thing_Hate(108, 109, 4);
	    Thing_Hate(109, 108, 4);
		Break;
	}
}

//Monster Reset
Script 103 (void)
{
	Hudmessage(s:"Clearing monsters..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
	Thing_Remove(108);
	Thing_Remove(109);
	Delay(35);
}
//Cleaning up
Script 107 (void)
{
	Hudmessage(s:"Cleaning up..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
	Thing_Remove(901);
	Thing_Remove(902);
	Delay(35);
}

//Monster Destroy
Script 106 (void)
{
	Hudmessage(s:"DIE!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_RED, 1.5, 0.20, 1.0, 0.2, 0.5);
	PlaySound(0, "Misc/Die", CHAN_AUTO);
	PlaySound(0, "Misc/Die", CHAN_AUTO);
	Thing_Destroy(108, 1);
	Thing_Destroy(109, 1);
	Thing_Destroy(901, 1);
	Radius_Quake(5, 35, 0, 1, 0);
	Delay(35);
}

//Monster Infighting
/*Script 107 (void) used for cleanup
{
	Hudmessage(s:"Current monsters deal more friendly fire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
	SetActorFlag(108, "DOHARMSPECIES", 1);
	SetActorFlag(108, "HARMFRIENDS", 1);
	SetActorFlag(108, "NOTARGET", 0);
	SetActorFlag(108, "NOINFIGHTING", 0);
	SetActorFlag(108, "NOINFIGHTSPECIES", 0);
	SetActorFlag(108, "FORCEINFIGHTING", 1);
	SetActorFlag(109, "DOHARMSPECIES", 1);
	SetActorFlag(109, "HARMFRIENDS", 1);
	SetActorFlag(109, "NOTARGET", 0);
	SetActorFlag(109, "NOINFIGHTING", 0);
	SetActorFlag(109, "NOINFIGHTSPECIES", 0);
	SetActorFlag(109, "FORCEINFIGHTING", 1);
	Delay(35);
}*/

/*Script 108 (void) used for camera
{
	Hudmessage(s:"Current monsters deal less friendly fire."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 2.0, 0.2, 0.5);
	SetActorFlag(108, "FORCEINFIGHTING", 0);
	SetActorFlag(108, "DOHARMSPECIES", 0);
	SetActorFlag(108, "NOINFIGHTING", 1);
	SetActorFlag(108, "NOINFIGHTSPECIES", 1);
	SetActorFlag(108, "HARMFRIENDS", 0);
	SetActorFlag(108, "DONTHARMSPECIES", 1);
	SetActorFlag(108, "DONTHARMCLASS", 1);
	SetActorFlag(109, "FORCEINFIGHTING", 0);
	SetActorFlag(109, "DOHARMSPECIES", 0);
	SetActorFlag(109, "NOINFIGHTING", 1);
	SetActorFlag(109, "NOINFIGHTSPECIES", 1);
	SetActorFlag(109, "HARMFRIENDS", 0);
	SetActorFlag(109, "DONTHARMSPECIES", 1);
	SetActorFlag(109, "DONTHARMCLASS", 1);
	Delay(35);
}*/

//MONSTER SPAWNERS
//Cultist
Script 110 (void) //1
{
	Thing_Spawn(110, 65001, 64, 108);
}
Script 111 (void) //2
{
	Thing_Spawn(111, 65001, 64, 108);
}
Script 112 (void) //3
{
	Thing_Spawn(112, 65001, 64, 108);
}
Script 113 (void) //1 B
{
	Thing_Spawn(113, 65001, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 114 (void) //2 B
{
	Thing_Spawn(114, 65001, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 115 (void) //3 B
{
	Thing_Spawn(115, 65001, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Mentalist
Script 116 (void) //1
{
	Thing_Spawn(116, 65014, 64, 108);
}
Script 117 (void) //2
{
	Thing_Spawn(117, 65014, 64, 108);
}
Script 118 (void) //3
{
	Thing_Spawn(118, 65014, 64, 108);
}
Script 119 (void) //1 B
{
	Thing_Spawn(119, 65014, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 120 (void) //2 B
{
	Thing_Spawn(120, 65014, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 121 (void) //3 B
{
	Thing_Spawn(121, 65014, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Conscript
Script 122 (void) //1
{
	Thing_Spawn(122, 65000, 64, 108);
}
Script 123 (void) //2
{
	Thing_Spawn(123, 65000, 64, 108);
}
Script 124 (void) //3
{
	Thing_Spawn(124, 65000, 64, 108);
}
Script 125 (void) //1 B
{
	Thing_Spawn(125, 65000, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 126 (void) //2 B
{
	Thing_Spawn(126, 65000, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 127 (void) //3 B
{
	Thing_Spawn(127, 65000, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Initiate
Script 128 (void) //1
{
	Thing_Spawn(128, 65004, 64, 108);
}
Script 129 (void) //2
{
	Thing_Spawn(129, 65004, 64, 108);
}
Script 130 (void) //3
{
	Thing_Spawn(130, 65004, 64, 108);
}
Script 131 (void) //1 B
{
	Thing_Spawn(131, 65004, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 132 (void) //2 B
{
	Thing_Spawn(132, 65004, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 133 (void) //3 B
{
	Thing_Spawn(133, 65004, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Crawler
Script 134 (void) //1
{
	Thing_Spawn(134, 65003, 64, 108);
}
Script 135 (void) //2
{
	Thing_Spawn(135, 65003, 64, 108);
}
Script 136 (void) //3
{
	Thing_Spawn(136, 65003, 64, 108);
}
Script 137 (void) //1 B
{
	Thing_Spawn(137, 65003, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 138 (void) //2 B
{
	Thing_Spawn(138, 65003, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 139 (void) //3 B
{
	Thing_Spawn(139, 65003, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Cerberus
Script 140 (void) //1
{
	Thing_Spawn(140, 65005, 64, 108);
}
Script 141 (void) //2
{
	Thing_Spawn(141, 65005, 64, 108);
}
Script 142 (void) //3
{
	Thing_Spawn(142, 65005, 64, 108);
}
Script 143 (void) //1 B
{
	Thing_Spawn(143, 65005, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 144 (void) //2 B
{
	Thing_Spawn(144, 65005, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 145 (void) //3 B
{
	Thing_Spawn(145, 65005, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Iron Urchin
Script 146 (void) //1
{
	Thing_Spawn(146, 65007, 64, 108);
}
Script 147 (void) //2
{
	Thing_Spawn(147, 65007, 64, 108);
}
Script 148 (void) //3
{
	Thing_Spawn(148, 65007, 64, 108);
}
Script 149 (void) //1 B
{
	Thing_Spawn(149, 65007, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 150 (void) //2 B
{
	Thing_Spawn(150, 65007, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 151 (void) //3 B
{
	Thing_Spawn(151, 65007, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Forge Elemental
Script 152 (void) //1
{
	Thing_Spawn(152, 65006, 64, 108);
}
Script 153 (void) //2
{
	Thing_Spawn(153, 65006, 64, 108);
}
Script 154 (void) //3
{
	Thing_Spawn(154, 65006, 64, 108);
}
Script 155 (void) //1 B
{
	Thing_Spawn(155, 65006, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 156 (void) //2 B
{
	Thing_Spawn(156, 65006, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 157 (void) //3 B
{
	Thing_Spawn(157, 65006, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Iron Maiden
Script 158 (void) //1
{
	Thing_Spawn(158, 65008, 64, 108);
}
Script 159 (void) //2
{
	Thing_Spawn(159, 65008, 64, 108);
}
Script 160 (void) //3
{
	Thing_Spawn(160, 65008, 64, 108);
}
Script 161 (void) //1 B
{
	Thing_Spawn(161, 65008, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 162 (void) //2 B
{
	Thing_Spawn(162, 65008, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 163 (void) //3 B
{
	Thing_Spawn(163, 65008, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Warlock
Script 164 (void) //1
{
	Thing_Spawn(164, 65010, 64, 108);
}
Script 165 (void) //2
{
	Thing_Spawn(165, 65010, 64, 108);
}
Script 166 (void) //3
{
	Thing_Spawn(166, 65010, 64, 108);
}
Script 167 (void) //1 B
{
	Thing_Spawn(167, 65010, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 168 (void) //2 B
{
	Thing_Spawn(168, 65010, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 169 (void) //3 B
{
	Thing_Spawn(169, 65010, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Golem
Script 170 (void) //1
{
	Thing_Spawn(170, 65011, 64, 108);
}
Script 171 (void) //2
{
	Thing_Spawn(171, 65011, 64, 108);
}
Script 172 (void) //3
{
	Thing_Spawn(172, 65011, 64, 108);
}
Script 173 (void) //1 B
{
	Thing_Spawn(173, 65011, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 174 (void) //2 B
{
	Thing_Spawn(174, 65011, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 175 (void) //3 B
{
	Thing_Spawn(175, 65011, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Pit Lord
Script 176 (void) //1
{
	Thing_Spawn(176, 65012, 64, 108);
}
Script 177 (void) //2
{
	Thing_Spawn(177, 65012, 64, 108);
}
Script 178 (void) //3
{
	Thing_Spawn(178, 65012, 64, 108);
}
Script 179 (void) //1 B
{
	Thing_Spawn(179, 65012, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 180 (void) //2 B
{
	Thing_Spawn(180, 65012, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 181 (void) //3 B
{
	Thing_Spawn(181, 65012, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Hellblaze
Script 182 (void) //1
{
	Thing_Spawn(182, 65013, 64, 108);
}
Script 183 (void) //2
{
	Thing_Spawn(183, 65013, 64, 108);
}
Script 184 (void) //3
{
	Thing_Spawn(184, 65013, 64, 108);
}
Script 185 (void) //1 B
{
	Thing_Spawn(185, 65013, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 186 (void) //2 B
{
	Thing_Spawn(186, 65013, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 187 (void) //3 B
{
	Thing_Spawn(187, 65013, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Hellion
Script 188 (void) //1
{
	Thing_Spawn(188, 65015, 64, 108);
}
Script 189 (void) //2
{
	Thing_Spawn(189, 65015, 64, 108);
}
Script 190 (void) //3
{
	Thing_Spawn(190, 65015, 64, 108);
}
Script 191 (void) //1 B
{
	Thing_Spawn(191, 65015, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 192 (void) //2 B
{
	Thing_Spawn(192, 65015, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 193 (void) //3 B
{
	Thing_Spawn(193, 65015, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Genius
Script 194 (void) //1
{
	Thing_Spawn(194, 65051, 64, 108);
}
Script 195 (void) //2
{
	Thing_Spawn(195, 65051, 64, 108);
}
Script 196 (void) //3
{
	Thing_Spawn(196, 65051, 64, 108);
}
Script 197 (void) //1 B
{
	Thing_Spawn(197, 65051, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 198 (void) //2 B
{
	Thing_Spawn(198, 65051, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 199 (void) //3 B
{
	Thing_Spawn(199, 65051, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Glutton
Script 200 (void) //1
{
	Thing_Spawn(200, 65018, 64, 108);
}
Script 201 (void) //2
{
	Thing_Spawn(201, 65018, 64, 108);
}
Script 202 (void) //3
{
	Thing_Spawn(202, 65018, 64, 108);
}
Script 203 (void) //1 B
{
	Thing_Spawn(203, 65018, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 204 (void) //2 B
{
	Thing_Spawn(204, 65018, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 205 (void) //3 B
{
	Thing_Spawn(205, 65018, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Psi Demon
Script 206 (void) //1
{
	Thing_Spawn(206, 65016, 64, 108);
}
Script 207 (void) //2
{
	Thing_Spawn(207, 65016, 64, 108);
}
Script 208 (void) //3
{
	Thing_Spawn(208, 65016, 64, 108);
}
Script 209 (void) //1 B
{
	Thing_Spawn(209, 65016, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 210 (void) //2 B
{
	Thing_Spawn(210, 65016, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 211 (void) //3 B
{
	Thing_Spawn(211, 65016, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
//Pit Lord Commander
Script 212 (void) //1
{
	Thing_Spawn(212, 65046, 64, 108);
}
Script 213 (void) //2
{
	Thing_Spawn(213, 65046, 64, 108);
}
Script 214 (void) //3
{
	Thing_Spawn(214, 65046, 64, 108);
}
Script 215 (void) //1 B
{
	Thing_Spawn(215, 65046, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 216 (void) //2 B
{
	Thing_Spawn(216, 65046, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}
Script 217 (void) //3 B
{
	Thing_Spawn(217, 65046, 192, 109);
	SetActorProperty(109, APROP_RenderStyle, STYLE_FUZZY);
}

//PATREON
Script 498 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"1. Black"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_Black, 1.5, 0.30, 15.0);
	Hudmessage(s:"2. Blue"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_Blue, 1.5, 0.32, 15.0);
	Hudmessage(s:"3. Brick"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_Brick, 1.5, 0.34, 15.0);
	Hudmessage(s:"4. Brown"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_Brown, 1.5, 0.36, 15.0);
	Hudmessage(s:"5. Cream"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_Cream, 1.5, 0.38, 15.0);
	Hudmessage(s:"6. Cyan"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_Cyan, 1.5, 0.40, 15.0);
	Hudmessage(s:"7. DarkBrown"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_DarkBrown, 1.5, 0.42, 15.0);
	Hudmessage(s:"8. DarkGray"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_DarkGray, 1.5, 0.44, 15.0);
	Hudmessage(s:"9. DarkGreen"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_DarkGreen, 1.5, 0.46, 15.0);
	Hudmessage(s:"10. DarkRed"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_DarkRed, 1.5, 0.48, 15.0);
	Hudmessage(s:"11. Gold"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_Gold, 1.5, 0.50, 15.0);
	Hudmessage(s:"12. Gray"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_Gray, 1.5, 0.52, 15.0);
	Hudmessage(s:"13. Green"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_Green, 1.5, 0.54, 15.0);
	Hudmessage(s:"14. LightBlue"; HUDMSG_PLAIN | HUDMSG_LOG, 14, CR_LightBlue, 1.5, 0.56, 15.0);
	Hudmessage(s:"15. Olive"; HUDMSG_PLAIN | HUDMSG_LOG, 15, CR_Olive, 1.5, 0.58, 15.0);
	Hudmessage(s:"16. Orange"; HUDMSG_PLAIN | HUDMSG_LOG, 16, CR_Orange, 1.5, 0.60, 15.0);
	Hudmessage(s:"17. Purple"; HUDMSG_PLAIN | HUDMSG_LOG, 17, CR_Purple, 1.5, 0.62, 15.0);
	Hudmessage(s:"18. Red"; HUDMSG_PLAIN | HUDMSG_LOG, 18, CR_Red, 1.5, 0.64, 15.0);
	Hudmessage(s:"19. Tan"; HUDMSG_PLAIN | HUDMSG_LOG, 19, CR_Tan, 1.5, 0.66, 15.0);
	Hudmessage(s:"20. White"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_White, 1.5, 0.68, 15.0);
	Hudmessage(s:"21. Yellow"; HUDMSG_PLAIN | HUDMSG_LOG, 21, CR_Yellow, 1.5, 0.70, 15.0);
}
Script 499 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Thanks to EVERYONE who financially supported Hedon I - Crystal Heart on Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 95.0);
	Hudmessage(s:"Copper Boltwire, Karitan Aegis, Danyx992, Kyurae Minasaki, ekwood, papyLaPlage, Robopatron,"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.46, 95.0);
	Hudmessage(s:"Albatross, Iceman13, Vodyanoi, Daniel Jewell, Sarah, Kiyu69, Alexander Howard, Nistal,"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.48, 95.0);
	Hudmessage(s:"D The Rage, RawbGM, Metazealot, D1soveR, Art0fShred, M.A.Kerr, Shaeoggath, William Vicic,"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.50, 95.0);
	Hudmessage(s:"BeardedDoomGuy, FrawLawk, AlexZerker, Sakis Lioliosidis, Lem, Kat G, Sasha the Lynx, BazookaDre,"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.52, 95.0);
	Hudmessage(s:"MonsterGang, Alex Ashe, Tadhg Briody, Xev, dirtygrass, Deathmarine, JKeyes, Vince gent, Knugen,"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.54, 95.0);
	Hudmessage(s:"D3str0y3r176, AMIG, Dark Castle, Spardajackal, Grant Ruhoff, Clair Redfield, Allegory, John Poole"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.56, 95.0);
}
Script 500 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"WELCOME TO HEDON'S EPISODE I PATREON GALLERY!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 35.0);
	Hudmessage(s:"Do you want to feature in here as a supporter of Hedon?"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.48, 35.0);
	Hudmessage(s:"Do you want a chance at having drawn a custom avatar of your choosing?"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 35.0);
	Hudmessage(s:"Do you want to help Hedon grow bigger and hook up to development updates?"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.52, 35.0);
    Hudmessage(s:"Then join up on Hedon's Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.56, 35.0);
	//Hudmessage(s:"www.patreon.com/hedon"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.58, 35.0);
}

Script 502 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Nistal"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 503 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Vodyanoi"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 504 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Nistal (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 505 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Sarah"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 506 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Lem"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 507 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Robopatron"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 508 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Kiyu69"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 509 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Karitan Aegis"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 510 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Kiyu69 (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 511 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Vodyanoi (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 512 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Kyurae Minasaki"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 513 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Danyx992"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 514 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Copper Boltwire (1 & 2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 515 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ekwood"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 516 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"papyLaPlage"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 517 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Danyx992 (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 518 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Kyurae Minasaki (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 519 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Karitan Aegis (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 520 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Sasha The Lynx (Avatar created by Sasha the Lynx)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 521 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Iceman13"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 522 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Albatross"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 523 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Danyx992 (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 524 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Vodyanoi (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 525 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Daniel Jewell"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 526 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ekwood (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 527 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"papyLaPlage (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 528 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"ArtOfShred"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 529 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"DTheRage"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 530 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Vivien Lynn (Reward slot gifted by Albatross)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 531 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"M.A.Kerr"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 532 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"RawbGM"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 533 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Metazealot"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 534 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Karitan Aegis (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 535 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Albatross (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 536 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"BeardedDoomGuy"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 537 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"CopperBoltwire (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 538 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"D1SoveR"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 539 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Danyx992 (4)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 540 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"FrawLawk"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 541 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"AlexZerker"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 542 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Thanks to EVERYONE who financially supported Hedon II - Bloodrite on Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.08, 95.0);

	Hudmessage(s:"\c[Blue]LukeB\c-     \c[LightBlue]Eisenhorn\c-     \c[Purple]Sleepy Mei\c-     \c[DarkGreen]Murdo McClelland\c-     Red Charge     \c[LightBlue]Simon P\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.14, 95.0);
	Hudmessage(s:"Danyx992     \c[Gray]ekwood\c-     \c[Cyan]Infab\c-     \c[DarkRed]SuggestiveBox\c-     \c[Red]Badguy292\c-     \c[Olive]Burchy\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.16, 95.0);
	Hudmessage(s:"\c[Purple]Elzevir Mensk\c-     \c[Brick]D1SoveR\c-     Vdubs     \c[DarkGreen]Chaos Embrace\c-     \c[Cyan]Willag_mac\c-     Christian Morris"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.18, 95.0);
	Hudmessage(s:"\c[LightBlue]Gary_#23\c-     Jacob Markley     \c[cream]papyLaPlage\c-     \c[LightBlue]Anna_Maniac\c-     Daniel Jewell     \c[Purple]KitsuneNZ\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.20, 95.0);
	Hudmessage(s:"Robert Phair     Karitan Aegis     \c[Green]adamboye\c-     \c[DarkGray]strange desire\c-     Kyurae Minasaki     \c[Gold]KnobGoblin\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.22, 95.0);
	Hudmessage(s:"\c[Cyan]Mortician175\c-     \c[DarkRed]Alex 'Razor' Penn\c-     \c[Blue]KECG\c-     Metazealot     Darth-Morella     Albatross"; HUDMSG_PLAIN | HUDMSG_LOG, 70, CR_UNTRANSLATED, 1.5, 0.24, 95.0);
	Hudmessage(s:"\c[Red]Mr Red\c-     Copper Boltwire     Emotive Remembrancer     Regular Dude     \c[Orange]Mercs\c-     \c[Gold]ArtOfShred\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.26, 95.0);
	Hudmessage(s:"\c[Green]DS98\c-     Vodyanoi     Salokin Sekwah     Iceman13     Ion B. Fork     Robopatron"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.28, 95.0);
	Hudmessage(s:"\c[Red]Aegis\c-     \c[Orange]KOL_Freak\c-     Samuel Stacey     William Vicic     CaptainRumia     \c[Purple]Siegfried Pinzer\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.30, 95.0);
	Hudmessage(s:"\c[Green]AMIG\c-     \c[Red]Arn\c-     \c[LightBlue]Bluefire\c-     \c[DarkRed]LuzTheBuz~\c-     \c[Olive]CoreySchimpf\c-     Grey"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.32, 95.0);
	Hudmessage(s:"ha ha     Scott Schwerdfeger     \c[Purple]screenThief\c-     Spookems     \c[DarkRed]Zixon01\c-     Echo Byrnes"; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.34, 95.0);
	Hudmessage(s:"\c[Red]GirlieAllie\c-     Hatty     \c[Cyan]Kevin Fung\c-     Mark Grubich     \c[Olive]Spooks\c-     \c[Brick]Third-Energy\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.36, 95.0);
	Hudmessage(s:"Father Opossum     \c[Gold]Hatguy\c-     \c[Brick]Julien Grenier\c-     Chainworm Kommando     Paul     \c[Cyan]Stormyface\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 13, CR_UNTRANSLATED, 1.5, 0.38, 95.0);
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
	Hudmessage(s:"Simon P"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 567 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"AMIG"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 568 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Mechfried"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 569 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"screenThief"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 570 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"WillaGrey"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 571 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Murdo McClelland"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 572 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Alex 'Razor' Penn (2)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

Script 573 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"SuggestiveBox (3)"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.9, 3.0);
}

//HUDMESSAGE CLEAR
Script 19 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 2, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 3, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
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

//JUKEBOX
//Tip
Script 14 (void)
{
	  Hudmessage(s:"You can always change music with the console command - changemus TrackName"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 6.0, 0.2, 0.5);
      Hudmessage(s:"eg. changemus HTrack00 or changemus HTrak18A"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 6.0, 0.2, 0.5);
}
//Tracks
Script 20 (void)
{
  If(GetSectorFloorZ(20, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack00"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Sinking Ships (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(20, 64, 1);
      Delay(41);
      SetMusic("HTrack00");
  }
}
Script 21 (void)
{
  If(GetSectorFloorZ(21, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack01"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Cold Rock"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(21, 64, 1);
      Delay(41);
      SetMusic("HTrack01");
  }
}
Script 22 (void)
{
  If(GetSectorFloorZ(22, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack02"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Raw Whisper"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(22, 64, 1);
      Delay(41);
      SetMusic("HTrack02");
  }
}
Script 23 (void)
{
  If(GetSectorFloorZ(23, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack03"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Orc's Song"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(23, 64, 1);
      Delay(41);
      SetMusic("HTrack03");
  }
}
Script 24 (void)
{
  If(GetSectorFloorZ(24, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack04"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Tension"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(24, 64, 1);
      Delay(41);
      SetMusic("HTrack04");
  }
}
Script 25 (void)
{
  If(GetSectorFloorZ(25, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack05"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Hold Your Knife"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(25, 64, 1);
      Delay(41);
      SetMusic("HTrack05");
  }
}
Script 37 (void)
{
  If(GetSectorFloorZ(37, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack17"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Consumed"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(37, 64, 1);
      Delay(41);
      SetMusic("HTrack17");
  }
}
Script 26 (void)
{
  If(GetSectorFloorZ(26, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack06"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Industro"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(26, 64, 1);
      Delay(41);
      SetMusic("HTrack06");
  }
}
Script 27 (void)
{
  If(GetSectorFloorZ(27, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack07"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Ascuns in Pereti (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(27, 64, 1);
      Delay(41);
      SetMusic("HTrack07");
  }
}
Script 28 (void)
{
  If(GetSectorFloorZ(28, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack08"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Brandon - The Craftsman"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(28, 64, 1);
      Delay(41);
      SetMusic("HTrack08");
  }
}
Script 29 (void)
{
  If(GetSectorFloorZ(29, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack09"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Dead Coins (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(29, 64, 1);
      Delay(41);
      SetMusic("HTrack09");
  }
}
Script 30 (void)
{
  If(GetSectorFloorZ(30, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack10"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Methadone Skies - Exit the Void"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(30, 64, 1);
      Delay(41);
      SetMusic("HTrack10");
  }
}
Script 31 (void)
{
  If(GetSectorFloorZ(31, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack11"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Methadone Skies - Hyperspace"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(31, 64, 1);
      Delay(41);
      SetMusic("HTrack11");
  }
}
Script 32 (void)
{
  If(GetSectorFloorZ(32, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack12"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Branon - One Calm Day"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(32, 64, 1);
      Delay(41);
      SetMusic("HTrack12");
  }
}
Script 33 (void)
{
  If(GetSectorFloorZ(33, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack13"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Pale Wind"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(33, 64, 1);
      Delay(41);
      SetMusic("HTrack13");
  }
}
Script 34 (void)
{
  If(GetSectorFloorZ(34, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack14"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Come to Church"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(34, 64, 1);
      Delay(41);
      SetMusic("HTrack14");
  }
}
Script 35 (void)
{
  If(GetSectorFloorZ(35, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack15"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Longing"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(35, 64, 1);
      Delay(41);
      SetMusic("HTrack15");
  }
}

Script 36 (void)
{
  If(GetSectorFloorZ(36, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack16"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Brandon - Heavy"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(36, 64, 1);
      Delay(41);
      SetMusic("HTrack16");
  }
}
Script 38 (void)
{
  If(GetSectorFloorZ(38, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrak18A"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Brandon - Underworld"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(38, 64, 1);
      Delay(41);
      SetMusic("HTrak18A");
  }
}
Script 39 (void)
{
  If(GetSectorFloorZ(39, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack19"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Shivaxi & Xenofish - Underworld Remix"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(39, 64, 1);
      Delay(41);
      SetMusic("HTrack19");
  }
}
Script 40 (void)
{
  If(GetSectorFloorZ(40, 0, 0) == -82.0)
  {
	  Hudmessage(s:"Playing HTrack20"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Unsung Foes (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(40, 64, 1);
      Delay(41);
      SetMusic("HTrack20");
  }
}
Script 41 (void)
{
  If(GetSectorFloorZ(41, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack21"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Zan_HedonDev - Chill"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(41, 64, 1);
      Delay(41);
      SetMusic("HTrack21");
  }
}
Script 42 (void)
{
  If(GetSectorFloorZ(42, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrak22B"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Brandon - Deep Chill"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(42, 64, 1);
      Delay(41);
      SetMusic("HTrak22B");
  }
}
Script 43 (void)
{
  If(GetSectorFloorZ(43, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack23"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Michiel van den Bos - NEWMCA12"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(43, 64, 1);
      Delay(41);
      SetMusic("HTrack23");
  }
}
Script 44 (void)
{
  If(GetSectorFloorZ(44, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack24"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - No Way Out?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(44, 64, 1);
      Delay(41);
      SetMusic("HTrack24");
  }
}
Script 45 (void)
{
  If(GetSectorFloorZ(45, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack25"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Alexander Brandon - Magnus (No Voice)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(45, 64, 1);
      Delay(41);
      SetMusic("HTrack25");
  }
}
Script 46 (void)
{
  If(GetSectorFloorZ(46, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack26"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Fightmare"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(46, 64, 1);
      Delay(41);
      SetMusic("HTrack26");
  }
}
Script 47 (void)
{
  If(GetSectorFloorZ(47, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack27"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Lost Call"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(47, 64, 1);
      Delay(41);
      SetMusic("HTrack27");
  }
}
Script 48 (void)
{
  If(GetSectorFloorZ(48, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack28"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Gutter Anthem (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(48, 64, 1);
      Delay(41);
      SetMusic("HTrack28");
  }
}
Script 49 (void)
{
  If(GetSectorFloorZ(49, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack29"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - The Bridge (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(49, 64, 1);
      Delay(41);
      SetMusic("HTrack29");
  }
}
Script 50 (void)
{
  If(GetSectorFloorZ(50, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack30"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Firelungs (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(50, 64, 1);
      Delay(41);
      SetMusic("HTrack30");
  }
}
Script 51 (void)
{
  If(GetSectorFloorZ(51, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack31"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - It's not Paradise, it's Hell"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(51, 64, 1);
      Delay(41);
      SetMusic("HTrack31");
  }
}
Script 52 (void)
{
  If(GetSectorFloorZ(52, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack32"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Doomnezeu - Kranioutopos (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(52, 64, 1);
      Delay(41);
      SetMusic("HTrack32");
  }
}
Script 53 (void)
{
  If(GetSectorFloorZ(53, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack33"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Zan_HedonDev - Down in the Bone Hall"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(53, 64, 1);
      Delay(41);
      SetMusic("HTrack33");
  }
}
Script 54 (void)
{
  If(GetSectorFloorZ(54, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack34"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Akhzul - Grit"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(54, 64, 1);
      Delay(41);
      SetMusic("HTrack34");
  }
}
Script 55 (void)
{
  If(GetSectorFloorZ(55, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack35"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Doomnezeu - Desertaciune (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(55, 64, 1);
      Delay(41);
      SetMusic("HTrack35");
  }
}
Script 56 (void)
{
  If(GetSectorFloorZ(56, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack36"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Breathelast - Buried (Instrumental)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(56, 64, 1);
      Delay(41);
      SetMusic("HTrack36");
  }
}
Script 57 (void)
{
  If(GetSectorFloorZ(57, 0, 0) == -74.0)
  {
	  Hudmessage(s:"Playing HTrack37"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.20, 3.0, 0.2, 0.5);
      Hudmessage(s:"Mumble Etc. - Cygni"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.22, 3.0, 0.2, 0.5);
	  ACS_Execute(15, 0, 0, 0, 0);
	  Delay(1);
	  Floor_LowerByValue(57, 64, 1);
      Delay(41);
      SetMusic("HTrack37");
  }
}
//Reset
Script 15 (void)
{
	If(GetSectorFloorZ(16, 0, 0) == -65.0)
	{
		Floor_RaiseByValue(16, 64, 1);
	}

	If(GetSectorFloorZ(20, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(20, 64, 1);
	}
	If(GetSectorFloorZ(21, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(21, 64, 1);
	}
	If(GetSectorFloorZ(22, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(22, 64, 1);
	}
	If(GetSectorFloorZ(23, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(23, 64, 1);
	}
	If(GetSectorFloorZ(24, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(24, 64, 1);
	}
	If(GetSectorFloorZ(25, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(25, 64, 1);
	}
	If(GetSectorFloorZ(26, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(26, 64, 1);
	}
	If(GetSectorFloorZ(27, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(27, 64, 1);
	}
	If(GetSectorFloorZ(28, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(28, 64, 1);
	}
	If(GetSectorFloorZ(29, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(29, 64, 1);
	}
	If(GetSectorFloorZ(30, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(30, 64, 1);
	}
	If(GetSectorFloorZ(31, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(31, 64, 1);
	}
	If(GetSectorFloorZ(32, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(32, 64, 1);
	}
	If(GetSectorFloorZ(33, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(33, 64, 1);
	}
	If(GetSectorFloorZ(34, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(34, 64, 1);
	}
	If(GetSectorFloorZ(35, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(35, 64, 1);
	}
	If(GetSectorFloorZ(36, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(36, 64, 1);
	}
	If(GetSectorFloorZ(37, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(37, 64, 1);
	}
	If(GetSectorFloorZ(38, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(38, 64, 1);
	}
	If(GetSectorFloorZ(39, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(39, 64, 1);
	}
	If(GetSectorFloorZ(40, 0, 0) == -83.0)
	{
		Floor_RaiseByValue(40, 64, 1);
	}
	If(GetSectorFloorZ(41, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(41, 64, 1);
	}
	If(GetSectorFloorZ(42, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(42, 64, 1);
	}
	If(GetSectorFloorZ(43, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(43, 64, 1);
	}
	If(GetSectorFloorZ(44, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(44, 64, 1);
	}
	If(GetSectorFloorZ(45, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(45, 64, 1);
	}
	If(GetSectorFloorZ(46, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(46, 64, 1);
	}
	If(GetSectorFloorZ(47, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(47, 64, 1);
	}
	If(GetSectorFloorZ(48, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(48, 64, 1);
	}
	If(GetSectorFloorZ(49, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(49, 64, 1);
	}
	If(GetSectorFloorZ(50, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(50, 64, 1);
	}
	If(GetSectorFloorZ(51, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(51, 64, 1);
	}
	If(GetSectorFloorZ(52, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(52, 64, 1);
	}
	If(GetSectorFloorZ(53, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(53, 64, 1);
	}
	If(GetSectorFloorZ(54, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(54, 64, 1);
	}
	If(GetSectorFloorZ(55, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(55, 64, 1);
	}
	If(GetSectorFloorZ(56, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(56, 64, 1);
	}
	If(GetSectorFloorZ(57, 0, 0) == -75.0)
	{
		Floor_RaiseByValue(57, 64, 1);
	}

	    SetMusicVolume(0.9);
	    Delay(4);
	    SetMusicVolume(0.8);
	    Delay(4);
	    SetMusicVolume(0.7);
	    Delay(4);
	    SetMusicVolume(0.6);
	    Delay(4);
	    SetMusicVolume(0.5);
	    Delay(4);
	    SetMusicVolume(0.4);
	    Delay(4);
	    SetMusicVolume(0.3);
	    Delay(4);
	    SetMusicVolume(0.2);
	    Delay(4);
	    SetMusicVolume(0.1);
	    Delay(4);
	    SetMusicVolume(0.0);
	    SetMusic("");
	    Delay(4);
	    SetMusicVolume(1.0);
}

//MUSIC FADE
Script 16 (void)
{
	If(GetSectorFloorZ(16, 0, 0) == -64.0)
	{
		ACS_Execute(15, 0, 0, 0, 0);
		Delay(4);
		Floor_LowerByValue(16, 64, 1);
	    SetMusicVolume(0.9);
	    Delay(4);
	    SetMusicVolume(0.8);
	    Delay(4);
	    SetMusicVolume(0.7);
	    Delay(4);
	    SetMusicVolume(0.6);
	    Delay(4);
	    SetMusicVolume(0.5);
	    Delay(4);
	    SetMusicVolume(0.4);
	    Delay(4);
	    SetMusicVolume(0.3);
	    Delay(4);
	    SetMusicVolume(0.2);
	    Delay(4);
	    SetMusicVolume(0.1);
	    Delay(4);
	    SetMusicVolume(0.0);
	    SetMusic("");
	    Delay(4);
	    SetMusicVolume(1.0);
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

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}