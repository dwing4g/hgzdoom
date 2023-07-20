#include "zcommon.acs"

// Nithriel Health Bar
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

	SetFont ("OLAYNTHA");
    HudMessage (s:"a"; HUDMSG_FADEOUT, 103, CR_UNTRANSLATED, 80.0, 50.0, 0.1, 1.0);

    SetFont ("BIGFONT");
    HudMessage (s:"Giant Nithriel"; HUDMSG_FADEOUT, 102, CR_BLACK, 100.0, 22.0, 0.1, 1.0);

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

//MISSION START

script 1 ENTER
{
	ACS_NamedExecuteWithResult("TakeWeapons");
	ACS_NamedExecuteWithResult("TakeConsumables");
	TakeInventory("InventoryBowlOfScribeEmbers", 10);
	TakeInventory("InventoryMortarOfEarthPigment", 10);
	TakeInventory("InventoryBookOfEarth", 1);
	TakeInventory("HoldingAxe", 1);
	TakeInventory("HoldingFragfireGun", 1);
	TakeInventory("HoldingSpikeGun", 1);
	TakeInventory("HoldingCrushbow", 1);
	TakeInventory("HoldingPotionLauncher", 1);
	TakeInventory("HoldingCrylance", 1);
  FadeTo(0, 0, 0, 1.0, 0.0);
  PlaySound(1, "Interaction/TeleWarp", CHAN_5);
  ChangeCamera(1, 0, 0);
  SetActorFlag(0, "INVULNERABLE", 0);
  Delay(3*35);
  FadeTo(0, 0, 0, 0.0, 7.0);
  Delay(7*35);
  Delay(32);
  Sector_SetColor(4, 255, 45, 45);
  Sector_SetFade(4, 255, 45, 45);
  Delay(105);
  ThrustThing(64, 25, 0, 1);
  FadeTo(255, 255, 255, 1.0, 4.0);
  Delay(4*35);
  FadeTo(255, 255, 255, 0.0, 0.5);
  ChangeCamera(0, 0, 0);
  Thing_Move(0, 3, 1);
  SetActorAngle(0, 0);
  ThrustThing(0, 10, 1, 0);
  Radius_Quake(1, 70, 0, 1, 0);

  SetActorFlag(380, "NOTONAUTOMAP", 1);
  SetActorFlag(380, "COUNTITEM", 0);

  //SetActorFlag(399, "NOEXTREMEDEATH", 1);
}


//Sector Damage
Script 109 ENTER
{
	SectorDamage(394, 500, "Aggro", "", DAMAGE_NONPLAYERS);
	Delay(35);
	Restart;
}



//Invisibility
Script 8 (void)
{
	SetActorFlag(0, "INVISIBLE", 1);
}

Script 9 (void)
{
	SetActorFlag(0, "INVISIBLE", 0);
}

//Crickets Silence
Script 2 (Void)
{
	Thing_Remove(5);
}

//Creepy Sound
Script 102 (void)
{
	Delay(45);
	PlaySound(0, "Ambient/Creepy", CHAN_AUTO);
}

//Blood Steps
Script 4 (void)
{
	Delay(12);
	SpawnSpot("BloodSplashFloor1", 6, 600, 0);
	PlaySound(600, "Gore/BloodSplat");
	Delay(7);
	SpawnSpot("BloodSplashFloor1", 12, 601, 0);
	PlaySound(601, "Gore/BloodSplat");
	Delay(9);
	SpawnSpot("BloodSplashFloor1", 13, 602, 0);
	PlaySound(602, "Gore/BloodSplat");
	Delay(7);
	SpawnSpot("BloodSplashFloor1", 18, 603, 0);
	PlaySound(603, "Gore/BloodSplat");
	Delay(9);
	SpawnSpot("BloodSplashFloor1", 21, 604, 0);
	PlaySound(604, "Gore/BloodSplat");
	Delay(7);
	SpawnSpot("BloodSplashFloor1", 23, 605, 0);
	PlaySound(605, "Gore/BloodSplat");
	Delay(9);
	SpawnSpot("BloodSplashFloor1", 26, 606, 0);
	PlaySound(606, "Gore/BloodSplat");
	Delay(7);
	SpawnSpot("BloodJutHorizontalFloor", 27, 607, 192);
	PlaySound(607, "Gore/BloodJut");
	SetActorProperty(607, APROP_ScaleX, 1.0);
	SetActorProperty(607, APROP_ScaleY, 0.6);
}

//Stair Footsteps
Script 6 (void)
{
	PlaySound(34, "Interaction/FootStep", CHAN_AUTO, 0.2);
	Delay(7);
	PlaySound(35, "Interaction/FootStep", CHAN_AUTO, 0.3);
	Delay(9);
	PlaySound(36, "Interaction/FootStep", CHAN_AUTO, 0.4);
	Delay(7);
	PlaySound(37, "Interaction/FootStep", CHAN_AUTO, 0.5);
	Delay(9);
	PlaySound(38, "Interaction/FootStep", CHAN_AUTO, 0.6);
	Delay(7);
	PlaySound(39, "Interaction/FootStep", CHAN_AUTO, 0.7);
	Delay(9);
	PlaySound(40, "Interaction/FootStep", CHAN_AUTO, 0.8);
	Delay(7);
	PlaySound(41, "Interaction/FootStep", CHAN_AUTO, 0.9);
	Delay(9);
	PlaySound(42, "Interaction/FootStep", CHAN_AUTO, 1.0);
}

//Crate Removal
Script 101 (void)
{
	Thing_Remove(363);
	Delay(105);
	Thing_Remove(383);
}

//Green Cave Event
Script 14 (void)
{
	GiveInventory("ScriptGreenCave", 1);
	Thing_Move(19, 382, 1);
	Thing_Move(24, 22, 1);
	Thing_Move(63, 64, 1);
	SpawnSpot("IDParchmentB", 66, 608, 96);
	SetActorProperty(608, APROP_ScaleX, 0.6);
	SetActorProperty(608, APROP_ScaleY, 0.6);
	SetLineTexture(43, SIDE_FRONT, TEXTURE_MIDDLE, "Corupt01");
	SetLineTexture(48, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_UP");
	Floor_Waggle(369, 64, 24, 4, 0);
	Floor_Waggle(370, 52, 32, 6, 0);
	Floor_Waggle(371, 40, 40, 8, 0);
	Floor_Waggle(372, 16, 20, 2, 0);
	Floor_Waggle(373, 24, 16, 4, 0);
	Thing_Remove(384);
}

//Cave seal off
Script 105 (void)
{
	If(IsTIDused(376))
	{
		Thing_Remove(376);
		Floor_RaiseInstant(374, 0, 120);
		Floor_RaiseInstant(375, 0, 96);
	}
}

//Awake Unconscious Zan
Script 23 (void)
{
	If(IsTIDUsed(65))
	{
		DamageActor(65, 0, 0, 0, 100000, "Normal");
		Thing_Remove(364);
		SetActorProperty(0, APROP_Speed, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		SetActorProperty(0, APROP_JumpZ, 20.0);
		Delay(25);
		FadeTo(0, 0, 0, 1.0, 2.5);
		Delay(90);
		TakeInventory("VineKey", 1);
		SetMusic("HTrack10");
		Teleport_NoFog(100, 1, 0, 0);
		Delay(140);
		Hudmessage(s:"Abhaoth:   ...ah..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 0.4);
		PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
		Delay(130);
		Hudmessage(s:"Abhaoth:   ...now you remember..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 2.0);
		PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
		SetActorProperty(0, APROP_Speed, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);
		SetActorAngle(0, 0.0);
		SetActorPitch(0, 0);
		FadeTo(0, 0, 0, 0.0, 4.0);
	Ceiling_RaiseByValue(92, 16, 664);
	Ceiling_RaiseByValue(366, 32, 800);
	Ceiling_RaiseByValue(367, 40, 800);
	Ceiling_RaiseByValue(368, 48, 800);
	Floor_LowerByValue(80, 32, 472);
	Delay(35);
	FloorAndCeiling_RaiseByValue(94, 32, 600);
    Floor_LowerByValue(81, 32, 472);
	Delay(35);
	FloorAndCeiling_RaiseByValue(98, 32, 600);
	Floor_LowerByValue(85, 32, 472);
	Delay(20);
	FloorAndCeiling_RaiseByValue(96, 32, 600);
	Floor_LowerByValue(83, 32, 472);
	Delay(25);
	FloorAndCeiling_RaiseByValue(97, 32, 600);
	Floor_LowerByValue(84, 32, 472);
	Delay(30);
	FloorAndCeiling_RaiseByValue(95, 32, 600);
	Floor_LowerByValue(82, 32, 472);
	Delay(35);
	FloorAndCeiling_RaiseByValue(99, 32, 600);
	Floor_LowerByValue(86, 32, 472);
	Delay(40);
	FloorAndCeiling_RaiseByValue(101, 32, 600);
	Floor_LowerByValue(87, 32, 472);
	Delay(40);
	Floor_RaiseByValue(102, 32, 600);
	Floor_LowerByValue(88, 32, 472);
	Delay(40);
	FloorAndCeiling_RaiseByValue(103, 32, 600);
	Floor_LowerByValue(89, 32, 472);
	Delay(40);
	Floor_RaiseByValue(104, 32, 600);
	Floor_LowerByValue(90, 32, 472);
	Delay(40);
	FloorAndCeiling_RaiseByValue(105, 32, 600);
	Floor_LowerByValue(91, 32, 472);
	Delay(40);
	FloorAndCeiling_RaiseByValue(106, 32, 600);
	ChangeCeiling(92, "Sky10");
	//Delay(35*60*11);
	//Delay(35*52);
	//ACS_ExecuteWithResult(48);
	}
}

//BLACK CUBE SECTION
//Safety Teleports
Script 25 (void)
{
	If(IsTIDUsed(666))
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(107, 1, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	Line_SetBlocking(109, BLOCKF_PLAYERS, 0);
	SetLineSpecial(109, 9);
	Delay(35);
	Hudmessage(s:"Abhaoth:   *Giggles*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.0, 0.2, 4.0);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	Delay(35);
	Thing_Destroy(666, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 110, 667, 0);
	}
	else
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(107, 0, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	}
}
Script 21 (void)
{
	If(IsTIDUsed(666))
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(107, 1, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	Line_SetBlocking(109, BLOCKF_PLAYERS, 0);
	SetLineSpecial(109, 9);
	Delay(35);
	Hudmessage(s:"Abhaoth:   *Giggles*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.0, 0.2, 4.0);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	Delay(35);
	Thing_Destroy(666, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 110, 667, 0);
	}
	else
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(107, 1, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	}
}
Script 22 (void)
{
	If(IsTIDUsed(669))
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(108, 1, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	Delay(16);
	Hudmessage(s:"Abhaoth:   I should have you start from square one."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(16);
	Thing_Destroy(669, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 113, 670, 0);
	}
	else
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0,0,0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(108, 1, 0, 0);
	SetActorPitch(0, 0.0);
	FadeTo(0,0,0, 0.0, 1.0);
	}
}
//Abhaoth Black Cube Section
Script 24 (void)
{
	If(IsTIDUsed(666))
	{
	Delay(8);
	Line_SetBlocking(109, BLOCKF_PLAYERS, 0);
	SetLineSpecial(109, 9);
	Hudmessage(s:"Abhaoth:   Such a leap of faith..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 2.0);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(16);
	SpawnSpot("ShadowAbhaothStanding", 110, 667, 0);
	SetActorFlag(667, "NODAMAGE", 1);
	Thing_Destroy(666, 0, 0);
	Delay(16);
	}
	Delay(8);
	Line_SetBlocking(109, BLOCKF_PLAYERS, 0);
	SetLineSpecial(109, 9);
}

Script 26 (void)
{
	If(IsTIDUsed(666) == 0 && IsTIDUsed(667))
	{
	Delay(8);
	Hudmessage(s:"Abhaoth:   So eager..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(16);
	SetActorFlag(667, "NODAMAGE", 0);
	Thing_Destroy(667, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 111, 668, 0);
	}
}

Script 27 (void)
{
	If(IsTIDUsed(666) == 0 && IsTIDUsed(667) == 0 &&  IsTIDUsed(668))
	{
	Delay(8);
	Hudmessage(s:"Abhaoth:   Woop- You almost missed it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	Delay(16);
	Thing_Destroy(668, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 112, 669, 0);
	Line_SetBlocking(378, 0, 32);
	}
}

Script 28 (void)
{
	If(IsTIDUsed(666) == 0 && IsTIDUsed(667) == 0 && IsTIDUsed(668) == 0 && IsTIDUsed(669))
	{
	Thing_Destroy(669, 0, 0);
	Delay(8);
	Hudmessage(s:"Abhaoth:   Leap, you faithful hound!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	Delay(16);
	SpawnSpot("ShadowAbhaothStanding", 113, 670, 0);
	}
}

Script 29 (void)
{
	If(IsTIDUsed(666) == 0 && IsTIDUsed(667) == 0 && IsTIDUsed(668) == 0 && IsTIDUsed(669) == 0 && IsTIDUsed(670))
	{
	Delay(8);
	Hudmessage(s:"Abhaoth:   What's the matter?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(16);
	Thing_Destroy(670, 0, 0);
	SpawnSpot("ShadowAbhaothStanding", 114, 671, 0);
	}
}

Script 30 (void)
{
	If(IsTIDUsed(666) == 0 && IsTIDUsed(667) == 0 && IsTIDUsed(668) == 0 && IsTIDUsed(669) == 0 && IsTIDUsed(670) == 0 && IsTIDUsed(671))
	{
	Delay(8);
	Hudmessage(s:"Abhaoth:   Confused?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 3.0);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(16);
	Thing_Destroy(671, 0, 0);
	ChangeCeiling(116, "Portal01");
	Ceiling_RaiseByValue(116, 32, 128);
	SetLineSpecial(117, 80, 56);
	}
}

Script 56 (void)
{
	FadeTo(255, 255, 255, 1.0, 0.5);
	Delay(18);
	Teleport_NoFog(260, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 1.0);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(35);
	Hudmessage(s:"Abhaoth:   All you have to do... is open a simple door."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
}


//GIANT DOOR SECTION
//Failsafe Teleporter
Script 57 (void)
{
	If(IsTIDUsed(261))
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	Thing_Remove(261);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(260, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 1.0);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Hudmessage(s:"Abhaoth:   No, no, no... you're going to play by *my* rules."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	}
	else
	{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(260, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 1.0);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Hudmessage(s:"Abhaoth:   *Giggles*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.0, 0.2, 4.0);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	}
}

//Abhaoth Dialogue Door Segment
Script 59 (void)
{
	Thing_Destroy(263);
	Delay(5*35);
	Hudmessage(s:"Abhaoth:   Ah, yes... your memories are eluding you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
}

//Exit Portal Giant Door Segment
Script 61 (void)
{
	Floor_RaiseByValue(262, 32, 128);
}

Script 62 (void)
{
	//SetActorFlag(0, "INVISIBLE", 1);
	FadeTo(255, 255, 255, 1.0, 0.5);
	Delay(18);
	SetActorProperty(0, APROP_JumpZ, 8.0);
	Teleport_NoFog(264, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.5);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(70);
	Hudmessage(s:"Abhaoth:   Search for it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
}

//CORRIDOR SEGMENT
//Abhaoth Dialogue Corridor Segment
Script 63 (void)
{
	Hudmessage(s:"Abhaoth:   You have to find it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
}

Script 64 (void)
{
	Hudmessage(s:"Abhaoth:   ...even if it means turning this place upside down."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
}

Script 66 (void)
{
	Delay(35);
	Hudmessage(s:"Abhaoth:  Warm."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
}

Script 67 (void)
{
	Delay(60);
	Hudmessage(s:"Abhaoth:  Warmer."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	SetLineSpecial(393, ACS_Execute, 108, 0, 0, 0, 0);
}

Script 108 (void)
{
	SetLineSpecial(393, 0, 0, 0, 0, 0, 0);
	Delay(60);
	Hudmessage(s:"Abhaoth:  Colder..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	Thing_Remove(401);
}

Script 68 (void)
{
	Delay(16);
	Hudmessage(s:"Abhaoth:  There it is..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
}

Script 69 (void)
{
	Delay(16);
	Hudmessage(s:"Abhaoth:  ...burning. Red. Hot."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
}


//Exit Portal Corridor Segment
Script 31 (void)
{
	SetActorProperty(0, APROP_JumpZ, 16.0);
	//SetActorFlag(0, "INVISIBLE", 0);
	FadeTo(255, 255, 255, 1.0, 0.5);
	Delay(18);
	//Floor_RaiseInstant(127, 0, 5064);
	Teleport_NoFog(126, 1, 0, 0);
	Delay(1);
	Floor_lowerInstant(127, 0, 5064);
	Delay(105);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 32);
	FadeTo(0, 0, 0, 0.0, 4.0);
}

//BATTLEFIELD SECTION
//Floor Waggle + Thing FLOATBOB + NOGRAVITY Remove + Zan Blood Invisibility
Script 33 ENTER
{
	SetActorFlag(387, "NOBLOCKMAP", 1);

	SetActorFlag(258, "INVISIBLE", 1);
	SetActorFlag(662, "NOGRAVITY", 0);
	SetActorFlag(663, "NOGRAVITY", 1);
	SetActorFlag(663, "FLOATBOB", 1);

	Floor_Waggle(148, 192, 32, 4, 0);
	Ceiling_Waggle(148, 192, 32, 4, 0);

	Floor_Waggle(149, 320, 24, 16, 0);
	Ceiling_Waggle(149, 320, 24, 16, 0);

	Floor_Waggle(164, 32, 16, 6, 0);
	Ceiling_Waggle(164, 32, 16, 6, 0);

	Floor_Waggle(165, 48, 24, 12, 0);
	Ceiling_Waggle(165, 48, 24, 12, 0);

	Floor_Waggle(166, 64, 16, 18, 0);
	Ceiling_Waggle(166, 64, 16, 18, 0);
}

//Failsafe Teleports
Script 32 (void)
{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Floor_RaiseInstant(127, 0, 5064);
	Teleport_NoFog(126, 1, 0, 0);
	Floor_lowerInstant(127, 0, 5064);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.25);
	FadeTo(0, 0, 0, 0.0, 1.0);
}
Script 40 (void)
{
	If(IsTIDUsed(227) && GetSectorCeilingZ(225, 0, 0) > -3560.0)
	{
	Thing_Remove(227);
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(203, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.75);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Hudmessage(s:"Abhaoth:   The bridge ended there, genius-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	}
	else
	{
    PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(203, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.75);
	FadeTo(0, 0, 0, 0.0, 1.0);
	}
}
//Abhaoth Battlefield Segment
Script 35 (void)
{
	Delay(90);
	Hudmessage(s:"Abhaoth:   Curious are the corners of your mind..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Thing_Remove(183);
}

Script 36 (void)
{
	Delay(175);
	Hudmessage(s:"Abhaoth:   Yes... t'was a great battle..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
}

Script 37 (void)
{
	If(IsTIDUsed(183))
	{
	Thing_Remove(187);
	SpawnSpot("ShadowAbhaothStanding", 228, 666, 0);
	Line_SetBlocking(377, 0, 32);
	Delay(70);
	Hudmessage(s:"Abhaoth:   ...but it was treason that ultimately decided the victor..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	}
	else
	{
	Thing_Remove(187);
	SpawnSpot("ShadowAbhaothStanding", 228, 666, 0);
	Line_SetBlocking(377, 0, 32);
	Delay(70);
	Hudmessage(s:"Abhaoth:   ...as I was saying. A great battle... but one decided by treason."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	}
}

Script 38 (void)
{
	If(IsTIDUsed(666))
	{
	Thing_Remove(229);
	Delay(35);
	Hudmessage(s:"Abhaoth:   You and the Iron Division have made it deep into enemy territory."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(16);
	Thing_Destroy(666);
	SpawnSpotForced("ShadowAbhaothStanding", 230, 667, 128);
	}
}

Script 45 (void)
{
	If(IsTIDUsed(667) && IsTIDUsed(231))
	{
	Thing_Remove(231);
	Delay(16);
	Hudmessage(s:"Abhaoth:   You've carved your way towards the Hell Gates. Poised to strike at the very heart of the demons..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(35*8);
	Hudmessage(s:"...little did you know that the siege was where it would all come to an end..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(35*6);
	Hudmessage(s:"Maddened with corruption, your own Forge Elementals have turned against you... a sudden and deadly betrayal."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(35*8);
	Hudmessage(s:"They struck down your siege weapons and supplies, as demons grinned from behind the dark gates..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(35*7);
	Hudmessage(s:"By the time you repelled the attack, your fate had already been sealed. You could not advance, nor retreat."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(35*8);
	Hudmessage(s:"Your only hope was to wait for the supply line to send help, but alas, the transports had met the same fate..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(35*8);
	Thing_Destroy(667);
	SpawnSpotForced("ShadowAbhaothStanding", 232, 668, 0);
	}
}

Script 46 (void)
{
	If(IsTIDUsed(668) && IsTIDUsed(365))
	{
	Thing_Remove(365);
	Delay(16);
	Hudmessage(s:"Abhaoth:   You held up for a week. Then, you began to starve."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(35*7);
	Hudmessage(s:"The demons had you in their claws now... they knew well your supplies would never come..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(35*8);
	Hudmessage(s:"All they did was unleash the Cerberi upon you. Weakened as you were, you fought to the last breath..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Delay(35*8);
	Hudmessage(s:"All your hopes have been shattered... but your fate has yet to be fulfilled."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(35*7);
	Hudmessage(s:"Come. It is time to reveal your purpose."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(35*5);
	Thing_Destroy(668);
	SpawnSpotForced("ShadowAbhaothStanding", 233, 665, 0);
	}
}

Script 47 (void)
{
	If(IsTIDUsed(665))
	{
	Thing_Destroy(665);
	Hudmessage(s:"Abhaoth:   Ever wondered why the orcs have accepted a half-demon like you among them?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	SpawnSpotForced("ShadowAbhaothStanding", 234, 669, 0);
	Line_SetBlocking(381, 0, 32);
	}
}

Script 49 (void)
{
	If(IsTIDUsed(669))
	{
	Thing_Destroy(669);
	Thing_Remove(215);
	Delay(35);
	Hudmessage(s:"Abhaoth:   Your blood is the key to defeat the demons."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.5, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	SpawnSpotForced("ShadowAbhaothStanding", 235, 670, 0);
	Floor_LowerByValue(189, 4, 64);
	Floor_LowerByValue(202, 2, 48);
	Floor_RaiseByValue(196, 3, 12);
	Floor_RaiseByValue(197, 2, 64);
	Floor_RaiseByValue(198, 4, 128);
	Floor_RaiseByValue(199, 4, 160);
	Floor_RaiseByValue(200, 3, 90);
	Floor_RaiseByValue(201, 2, 40);
	}
}

Script 50 (void)
{
	If(IsTIDUsed(236) && GetActorZ(0) > 392.0)
	{
	Thing_Remove(236);
	Hudmessage(s:"Abhaoth:   The orcs needed you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 2.0);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	}
}

Script 51 (void)
{
	If(IsTIDUsed(236) == 0 && IsTIDUsed(670) && GetActorZ(0) > 392.0)
	{
	SetActorFlag(238, "FLOATBOB", 1);
	Delay(35);
	FadeTo( 0, 0, 0, 1.0, 3.0);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(120);
	Hudmessage(s:"Abhaoth:   ...but so do I."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	Thing_Remove(670);
	Teleport_NoFog(237, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.25);
	Delay(105);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	FadeTo( 0, 0, 0, 0.0, 3.0);
	}
}
//Bridge Fragments Raising
Script 41 (void)
{
	If(IsTIDUsed(669))
	{
		Thing_Remove(226);
		FloorAndCeiling_RaiseByValue(222, 1200, 4008);
		SetLineTexture(385, SIDE_FRONT, TEXTURE_MIDDLE, "MASON5");
	}
}
Script 42 (void)
{
	If(IsTIDUsed(669))
	{
		FloorAndCeiling_RaiseByValue(223, 1400, 4008);
	}
}
Script 43 (void)
{
	If(IsTIDUsed(669))
	{
		FloorAndCeiling_RaiseByValue(224, 1600, 4008);
	}
}
Script 44 (void)
{
	If(IsTIDUsed(669))
	{
		FloorAndCeiling_RaiseByValue(225, 1800, 4008);
		Delay(230);
		Thing_Remove(227);
	}
}

//NITHRIEL DARK CHAMBER
Script 52 (void)
{
	Hudmessage(s:"Abhaoth:   Nithriel is her name. She is behind the invasion of your stronghold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(8*35);
	Hudmessage(s:"Some of your sisters have assumed it was the demons who launched the attack but they"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"were wrong. Much like me, she is from the Nether. A place even demons fear to dare..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(13*35);
	Hudmessage(s:"What your sisters *did* assume correctly, however, is that Nithriel received help from"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"within your ranks in order to launch such a precise attack. Just a month after you left town."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(13*35);
	Hudmessage(s:"Who's the mole? No idea. But your... Lancers as you call them, have always protected"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"your city from magical attacks. Someone has tampered with the wards from the inside."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(13*35);
	Light_Fade(239, 144, 70);
	Hudmessage(s:"Your friend, Tiati, thinks you are involved. She thinks you are a coward who fled battle."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(8*35);
	Hudmessage(s:"Such an example of bravery she is..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperGiggle", CHAN_AUTO);
	Delay(6*35);
	Hudmessage(s:"She knew about your return long before she let you know it... she was just... unsure."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(6*35);
	Hudmessage(s:"She could have opened some doors for you... help you link up with the rest of the survivors."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"Instead, she chose to keep you at distance, and leave notes behind. You cannot trust her..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(13*35);
	Light_Fade(239, 0, 70);
	Delay(105);
	Light_Fade(240, 144, 70);
	Hudmessage(s:"Nithriel seeks a powerful artifact held by the Lancers. She has a grand scheme in mind, and"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"as we speak, her cultists are carving their way towards what you call the *Crystal Heart*..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
	Delay(13*35);
	Hudmessage(s:"It is here where this artifact lies, hidden by an ancient civilization that went extinct long ago."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.84, 12.0, 0.2, 0.5);
	Hudmessage(s:"...after all, you didn't imagine the orcs came up with crystal tech by themselves, did you?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 2, CR_ORANGE, 1.5, 0.86, 12.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(13*35);
	Hudmessage(s:"What the artifact does is of no importance now. What matters is that I need you to stop her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(8*35);
	Light_Fade(240, 0, 140);
	//Light_Fade(366, 0, 210);
	Hudmessage(s:"You do want your vengeance, don't you? Besides, you owe me your life..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	Floor_RaiseByValue(251, 48, 128);
	ChangeFloor(251, "Portal01");
	SetLineSpecial(253, 80, 53);
	Thing_Remove(255);
	SpawnSpotForced("ShadowAbhaothStanding", 252, 666, 0);
	Delay(8*35);
	Ceiling_RaiseByValue(241, 30, 128);
	Light_Fade(242, 144, 4);
	Delay(4);
	Light_Fade(243, 144, 8);
	Delay(4);
	Light_Fade(244, 144, 4);
	Delay(4);
	Light_Fade(245, 144, 4);
	Delay(4);
	Light_Fade(246, 144, 4);
	Delay(4);
	Light_Fade(247, 144, 4);
	Delay(4);
	Light_Fade(248, 144, 4);
	Delay(4);
	Light_Fade(249, 144, 4);
	ACS_ExecuteWithResult(48);
	Delay(8*35);
	If(IsTIDUsed(250))
	{
	Hudmessage(s:"Come now, step in."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	}
	Delay(20*35);
	If(IsTIDUsed(250))
	{
	Hudmessage(s:"...what are you staring at?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	}
	Delay(25*35);
	If(IsTIDUsed(250))
	{
	Hudmessage(s:"Come on, horndog, the future is at stake..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	}
	Delay(30*35);
	If(IsTIDUsed(250))
	{
	Hudmessage(s:"I'm going to add a whole new set of scars when I get my claws on you..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 2.0);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
	}
}

Script 39 (void)
{
	Thing_Remove(250);
	SetActorFlag(258, "INVISIBLE", 0);
	ChangeFloor(259, "BLACK");
	SetLineSpecial(253, 80, 53);
	FadeTo(255, 255, 255, 1.0, 0.5);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	Delay(17);
	Autosave();
	Teleport_NoFog(254, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.25);
	FadeTo(255, 255, 255, 0.0, 3.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	Delay(35);
	Hudmessage(s:"Abhaoth:   ...right. I saved your skin, remember?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
}


//CAVE SEGMENT
Script 53 (void)
{
	FadeTo(0, 0, 0, 1.0, 0.5);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	SetActorProperty(0, APROP_JumpZ, 8.0);
	Delay(16);
	Teleport_NoFog(256, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 1.0);
	Delay(70);
	FadeTo(0, 0, 0, 0.0, 6.0);
	SetActorProperty(0, APROP_Speed, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	Delay(105);
	Hudmessage(s:"Abhaoth:   ...of course you don't. You did hit your head pretty hard."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperSorrow", CHAN_AUTO);
}

Script 70 (void)
{
	PlaySound(0, "Ambient/Rocks", CHAN_7);
}

Script 71 (void)
{
	If(GetActorZ(0) < -112.0);
	ThrustThingZ(0, 16, 1, 0);
}

Script 72 (void)
{
	Delay(105);
	Hudmessage(s:"Abhaoth:   I dragged you away from battle a mere moment before you would have died. You're welcome."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(35*12);
	Hudmessage(s:"Abhaoth:   For days you've crawled through dark caves, holding on to your final breath..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(35*13);
	Hudmessage(s:"Abhaoth:   But you couldn't die now. You still have a mission to fulfill."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
}

Script 73 (void)
{
	Hudmessage(s:"Abhaoth:   ...but then the unpredictable happened."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperAnger", CHAN_AUTO);
}

//Exit Avalanche
Script 74 (void)
{
	Delay(35);
	Radius_Quake2(0, 9, 179, 0, 64, "Ambient/Rocks");
	FadeTo(0, 0, 0, 1.0, 8.0);
	Delay(105);
	Ceiling_LowerInstant(274, 0, 3716);
	Delay(75);
	Thing_Stop(0);
	Delay(5);
	PlaySound(0, "Character/ZanLandHard", CHAN_AUTO);
	Delay(8);
	PlaySound(0, "Magic/StoneskinHit", CHAN_AUTO);
	Delay(35);
	PlaySound(0, "Magic/StoneskinHit", CHAN_AUTO);
	Delay(175);
	Teleport_NoFog(275, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.5);
	SetActorProperty(0, APROP_Speed, 0.0);
	Hudmessage(s:"Abhaoth:   Now you know how it began. And you know what you must end."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	Delay(70);
	FadeTo(0, 0, 0, 0.0, 6.0);
	Delay(35*5);
	Hudmessage(s:"Hurry now, time to stop Nith-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	Delay(35);
	Thing_Activate(279);
	Thing_SetGoal(279, 277, 0, 1);
	Delay(35);
	Thing_Destroy(276);
	Hudmessage(s:"WAIT-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
	Delay(35*4);
	Hudmessage(s:"Don't. Even. Flinch."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.0);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(35*2);
	SetActorAngle(279, 1.0);
	Delay(35);
	SetActorAngle(279, 0.85);
	Delay(35*2);
	SetActorAngle(279, 1.0);
	Delay(35*3);
	SetActorProperty(279, APROP_Alpha, 0.9);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.8);
	Delay(16);
	Hudmessage(s:"She was faster than I expected. You have to get out... Find yourself before she finds you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 6.0, 0.2, 2.5);
	PlaySound(0, "ShadowAbhaoth/WhisperExplanation", CHAN_AUTO);
	SetActorProperty(0, APROP_Speed, 1.0);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.7);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.6);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.5);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.4);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.3);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.2);
	Delay(16);
	SetActorProperty(279, APROP_Alpha, 0.1);
	Delay(16);
	Thing_Remove(279);
}

//NITHRIEL PATROL AREA
Script 75 (void)
{
	If(IsTIDUsed(290))
	{
		Thing_Remove(290);
		Thing_Activate(282);
		//Thing_SetGoal(282, 283, 0, 0);
		//Thing_SetGoal(285, 286, 0, 0);
		Delay(70);
	    Hudmessage(s:"Abhaoth:   She seems to have trouble seeing you... I wouldn't force my luck, though."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
		PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	}
}

Script 76 (void)
{
		Delay(35);
	    Hudmessage(s:"Abhaoth:   Careful... she can kill you before you can blink in this place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 4.0, 0.2, 1.5);
		PlaySound(0, "ShadowAbhaoth/WhisperSinister", CHAN_AUTO);
}

Script 104 (void)
{
	Hudmessage(s:"Abhaoth: That's it, you're almost out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 1.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
}

//Final Door
Script 77 (void)
{
	Thing_Remove(282);
	Floor_LowerByValue(283, 4, 104);
	Delay(35);
	PlaySound(664, "Nithriel/Laugh", CHAN_AUTO);
	Floor_RaiseInstant(284, 0, 88);
	Delay(20);
	PlaySound(0, "Interaction/TeleWarp", CHAN_AUTO);
	PlaySound(1, "Interaction/TeleWarp", CHAN_AUTO);
	Delay(15);
	Radius_Quake2(0, 1, 350, 0, 64, " ");
	FadeTo(255, 255, 255, 1.0, 7.0);
	ChangeSky("Sky12", "Sky12");
	SetSkyScrollSpeed(1, 0.01);
	Light_Fade(285, 0, 245);
	Delay(70);
	Hudmessage(s:"Abhaoth:   What the-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 1.0, 0.2, 0.5);
	PlaySound(0, "ShadowAbhaoth/WhisperWarning", CHAN_AUTO);
	Delay(140);
	Hudmessage(s:"*Fading*  Zan?....  Zan?!......."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_ORANGE, 1.5, 0.86, 3.0, 0.2, 4.0);
	PlaySound(0, "ShadowAbhaoth/WhisperRecall", CHAN_AUTO);
	Delay(35*3);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_JumpZ, 16.0);
	//Sector_SetColor(4, 255, 45, 45);
    //Sector_SetFade(4, 255, 45, 45);

	//SetActorProperty(278, APROP_Health, 10000);

    Autosave();
	ChangeCamera(1, 0, 0);
    FadeTo(255, 255, 255, 0.0, 4.0);
    Delay(6*35);
    Delay(140);
    //ThrustThing(64, 25, 0, 1);
    FadeTo(255, 0, 0, 1.0, 1.0);
    Delay(1*35);
    FadeTo(255, 0, 0, 0.0, 0.5);
	ChangeCamera(0, 0, 0);
	SetActorProperty(0, APROP_Speed, 1.0);
	//Delay(1);
	//SetMusic("HTrack11", 0, 0);
	//Delay(1);
	//SetMusicVolume(2.0);
	SetActorPitch(0, 0.0);
    SetActorAngle(0, 0.62);
	Teleport_NoFog(348, 1, 0, 0);

	ThrustThingZ(278, 12, 0, 0);

    ThrustThing(128, 30, 1, 0);
    Radius_Quake(1, 70, 0, 1, 0);
	ACS_Execute(100, 0, 0, 0, 0);
	Delay(35);
	Floor_LowerInstant(347, 0, 4159);

	SetActorFlag(346, "NOGRAVITY", 0);
	SetActorFlag(337, "DROPOFF", 0);

	Thing_Remove(664);
	Thing_Remove(238);

	Delay(50);
	PlaySound(0, "Nithriel/Active", CHAN_AUTO);
	Delay(35);
	Thing_Activate(278);
	ThrustThingZ(278, 0, 0, 0);
	NoiseAlert(0, 0);

	Thing_Remove(388);
	If(GameSkill() == 6)
	{
		SetActorProperty(278, APROP_DamageFactor, 1.5);
	}
}

//NITHRIEL BOSS FIGHT
//Failsafe Teleport
Script 78 (void)
{
	PlaySound(0, "Misc/Silence", CHAN_VOICE, 1.0);
	FadeTo(0, 0, 0, 1.0, 0.2);
	Delay(18);
	Teleport_NoFog(287, 1, 0, 0);
	SetActorPitch(0, 0.0);
	SetActorAngle(0, 0.5);
	FadeTo(0, 0, 0, 0.0, 1.0);
}

//Phase 2 Platforms
Script 92 ENTER
{
	If(GetActorProperty(278, APROP_Health) <= GetActorProperty(278, APROP_SpawnHealth) - GetActorProperty(278, APROP_SpawnHealth)/5 && IsTIDUsed(334))
	{
		Thing_Remove(334);
		SetActorProperty(278, APROP_Speed, 28.0);
		FloorAndCeiling_LowerByValue(327, 32, 640);
		FloorAndCeiling_LowerByValue(328, 28, 640);
		FloorAndCeiling_LowerByValue(329, 24, 640);
		FloorAndCeiling_LowerByValue(330, 20, 640);
		FloorAndCeiling_LowerByValue(331, 16, 640);
		FloorAndCeiling_LowerByValue(332, 12, 640);
		FloorAndCeiling_LowerByValue(333, 8, 640);
		Thing_Activate(337);
		NoiseAlert(0, 0);
		Delay(35*15);
		Line_SetBlocking(349, 0, BLOCKF_FLOATERS);
	}
	Delay(1);
	Restart;
}

//Phase 3 Platforms
Script 93 ENTER
{
	If(GetActorProperty(278, APROP_Health) <= GetActorProperty(278, APROP_SpawnHealth) - GetActorProperty(278, APROP_SpawnHealth)/2 && IsTIDUsed(336))
	{
		Thing_Remove(336);
		SetActorState(278, "DarkTendril", 0);
		SetActorProperty(278, APROP_Speed, 36.0);
		SetActorFlag(402, "MOVEWITHSECTOR", 1);
		FloorAndCeiling_LowerByValue(335, 48, 880);
		Thing_Activate(420);
		Thing_Activate(421);
		Thing_Activate(422);
		Thing_Activate(423);
		NoiseAlert(0, 0);
		SetActorFlag(338, "NOCLIP", 1);
		SetActorFlag(339, "NOCLIP", 1);
		SetActorFlag(340, "NOCLIP", 1);
		SetActorFlag(341, "NOCLIP", 1);
		SetActorFlag(342, "NOCLIP", 1);
		SetActorFlag(343, "NOCLIP", 1);
		SetActorFlag(344, "NOCLIP", 1);
		SetActorFlag(345, "NOCLIP", 1);
		Delay(35*15);
		Line_SetBlocking(350, 0, BLOCKF_FLOATERS);
	}
	Delay(1);
	Restart;
}

//Nithriel Defeat
Script 98 ENTER
{
	If(GetActorProperty(278, APROP_Health) <= 500 && IsTIDUsed(353))
	{
		Thing_Remove(353);
		ACS_Terminate(100, 0);
		SetActorState(278, "Death", 0);
		//PlaySound(0, "Nithriel/Death", CHAN_AUTO);
		Thing_Remove(338);
		Thing_Remove(339);
		Thing_Remove(340);
		Thing_Remove(341);
		Thing_Remove(342);
		Thing_Remove(343);
		Thing_Remove(344);
		Thing_Remove(345);
		FadeTo(255, 255, 255, 1.0, 1.0);
		SetActorFlag(0, "INVULNERABLE", 1);
		Delay(35);
		//SetMusic("HTrak11B");
		SetMusic("");
		PlaySound(0, "Music/HyperspaceOutro", CHAN_AUTO);
		Thing_Destroy(0);
		Delay(35);
		ChangeCeiling(354, "Portal01");
		ChangeSky("Sky11", "Sky11");
	    SetSkyScrollSpeed(1, 0.01);
		SpawnSpot("BubbleNithriel", 351, 419, 0);
		Thing_Remove(352);
		Delay(1);
		SpawnSpotForced("LightBeamA", 351, 418, 0);
		SetActorProperty(418, APROP_ScaleY, 10.0);
		FadeTo(255, 255, 255, 0.0, 5.0);
		Delay(4*35);
		SetActorFlag(0, "INVULNERABLE", 0);
		SpawnSpotForced("LightBeamA", 351, 418, 0);
		SetActorProperty(418, APROP_ScaleY, 10.0);
		Delay(4*35);
		SpawnSpotForced("LightBeamA", 351, 418, 0);
		SetActorProperty(418, APROP_ScaleY, 10.0);
		Delay(4*35);
		SpawnSpotForced("LightBeamA", 351, 418, 0);
		SetActorProperty(418, APROP_ScaleY, 10.0);
		ThrustThingZ(419, 10, 0, 1);
		Delay(70);
		ThrustThingZ(419, 12, 0, 0);
		Delay(35);
		ThrustThingZ(419, 14, 0, 0);
		Delay(35);
		ThrustThingZ(419, 20, 0, 0);
		Delay(35);
		ThrustThingZ(419, 28, 0, 0);
		Delay(35);
		ThrustThingZ(419, 40, 0, 0);
		Delay(35);
		ThrustThingZ(419, 60, 0, 0);
		Delay(150);
		FadeTo(255, 255, 255, 1.0, 0.5);
		Delay(18);
		Thing_Remove(418);
		Thing_Remove(419);
		ChangeCeiling(354, "Sky10");
		FadeTo(255, 255, 255, 0.0, 2.5);
		SetActorFlag(0, "INVISIBLE", 0);

        Delay(35*4);
		ChangeFloor(355, "BLACK");
		FloorAndCeiling_RaiseByValue(357, 4, 116);
		Delay(16);
		Floor_RaiseByValue(359, 4, 95);
		Floor_RaiseByValue(360, 4, 95);
		Floor_RaiseByValue(361, 4, 4);
		//Floor_RaiseByValue(356, 2, 95);
		SetLineSpecial(358, 80, 99, 0, 0, 0, 0);
		Autosave();
		Delay(24);
		SpawnSpotForced("IDBannerExit", 362, 520, 0);
		//SetActorProperty(520, APROP_ScaleX, 0.3);
		//SetActorProperty(520, APROP_ScaleY, 0.3);
		SetActorProperty(520, APROP_Radius, 5);
		ThrustThingZ(520, 2, 0, 1);
		Delay(192);
		Thing_Stop(520);
		TagWait(359);
		Delay(170);
		//SetMusic("");
	}
	Delay(1);
	Restart;
}

//LEVEL END
Script 99 (void)
{
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
	SetActorProperty(0, APROP_JumpZ, 8.0);
	ACS_NamedExecuteWithResult("GiveWeapons");
	ACS_NamedExecuteWithResult("GiveConsumables");
	Thing_Destroy(0);
	SetMusicVolume(1.0);
    Delay(4);
	Exit_Normal(0);
}

//Monster Teleports
Script 94 ENTER //NE
{
	If(IsTIDUsed(336) == 0)
	{
		Delay(35*65);
		Thing_Spawn(338, 65004, 0, 420);
		Thing_Spawn(339, 65004, 0, 420);
		NoiseAlert(0, 0);
	}
	Delay(1);
	Restart;
}
Script 95 ENTER //SE
{
	If(IsTIDUsed(336) == 0)
    {
		Delay(35*80);
		Thing_Spawn(340, 65004, 0, 421);
		Thing_Spawn(341, 65004, 0, 421);
		NoiseAlert(0, 0);
	}
	Delay(1);
	Restart;
}
Script 96 ENTER //SW
{
	If(IsTIDUsed(336) == 0)
	{
		Delay(35*65);
		Thing_Spawn(342, 65004, 0, 422);
		Thing_Spawn(343, 65004, 0, 422);
		NoiseAlert(0, 0);
	}
	Delay(1);
	Restart;
}
Script 97 ENTER //NW
{
	If(IsTIDUsed(336) == 0)
	{
		Delay(35*80);
		Thing_Spawn(344, 65004, 0, 423);
		Thing_Spawn(345, 65004, 0, 423);
		NoiseAlert(0, 0);
	}
	Delay(1);
	Restart;
}

//Axes
Script 79 ENTER
{
	If(IsTIDUsed(288) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Axe", 289, 288, 0);
	}
	Delay(1);
	Restart;
}
Script 80 ENTER
{
	If(IsTIDUsed(291) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Axe", 292, 291, 0);
	}
	Delay(1);
	Restart;
}
Script 81 ENTER
{
	If(IsTIDUsed(293) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Axe", 294, 293, 0);
	}
	Delay(1);
	Restart;
}
Script 82 ENTER
{
	If(IsTIDUsed(295) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Axe", 296, 295, 0);
	}
	Delay(1);
	Restart;
}
Script 83 ENTER
{
	If(IsTIDUsed(297) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Axe", 298, 297, 0);
	}
	Delay(1);
	Restart;
}

//Fire Hammers
Script 110 ENTER
{
	If(IsTIDUsed(396) == 0 && IsTIDUsed(278) && GameSkill() > SKILL_VERY_HARD)
	{
		Delay(300);
		SpawnSpotForced("FireHammer", 324, 396, 0);
	}
	Delay(1);
	Restart;
}
Script 111 ENTER
{
	If(IsTIDUsed(397) == 0 && IsTIDUsed(278) && GameSkill() > SKILL_VERY_HARD)
	{
		Delay(300);
		SpawnSpotForced("FireHammer", 320, 397, 0);
	}
	Delay(1);
	Restart;
}
Script 112 ENTER
{
	If(IsTIDUsed(398) == 0 && IsTIDUsed(278) && GameSkill() > SKILL_VERY_HARD)
	{
		Delay(300);
		SpawnSpotForced("FireHammer", 326, 398, 0);
	}
	Delay(1);
	Restart;
}
Script 113 ENTER
{
	If(IsTIDUsed(395) == 0 && IsTIDUsed(278) && GameSkill() > SKILL_VERY_HARD)
	{
		Delay(300);
		SpawnSpotForced("FireHammer", 322, 395, 0);
	}
	Delay(1);
	Restart;
}

//Spike Guns
Script 88 ENTER
{
	If(IsTIDUsed(319) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("SpikeMag", 320, 319, 0);
	}
	Delay(1);
	Restart;
}
Script 89 ENTER
{
	If(IsTIDUsed(321) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("SpikeMag", 322, 321, 0);
	}
	Delay(1);
	Restart;
}

//Fragfire Guns
Script 90 ENTER
{
	If(IsTIDUsed(323) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("FragfireCan", 324, 323, 0);
	}
	Delay(1);
	Restart;
}
Script 91 ENTER
{
	If(IsTIDUsed(325) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("FragfireCan", 326, 325, 0);
	}
	Delay(1);
	Restart;
}

//Crushbows
Script 84 ENTER
{
	If(IsTIDUsed(311) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Boltmag", 312, 311, 0);
	}
	Delay(1);
	Restart;
}
Script 85 ENTER
{
	If(IsTIDUsed(313) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("Boltmag", 314, 313, 0);
	}
	Delay(1);
	Restart;
}

//Potion Launchers
Script 86 ENTER
{
	If(IsTIDUsed(315) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("PotionBoxAcid", 316, 315, 0);
	}
	Delay(1);
	Restart;
}
Script 87 ENTER
{
	If(IsTIDUsed(317) == 0 && IsTIDUsed(278))
	{
		Delay(300);
		SpawnSpotForced("PotionBoxAcid", 318, 317, 0);
	}
	Delay(1);
	Restart;
}

//POWER CORE DOOR
Script 12 (void)
{
	If(CheckInventory("InventoryPowerCore") > 0)
	{
		//SetLineSpecial(50, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryPowerCore", 1);
		Door_Open(16, 16, 0);
		SetLineTexture(50, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_0");
		PlaySound(0, "Switches/Switch1");
	}
	else
	If (GetSectorCeilingZ(16, 0, 0) < 201.0)
	{
	    Print(s:"The switch is out of power.");
		PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//CLOSET DOORS
Script 20 (void)
{
	Teleport_NoFog(62, 1, 0, 1);
	FadeTo(255, 255, 255, 1.0, 0.0);
	Delay(4);
	FadeTo(255, 255, 255, 0.0, 0.3);
}

Script 13 (void)
{
	If(CheckInventory("InventoryPowerCore") > 0 && IsTidUsed(59))
	{
	Thing_Remove(59);
	//SetLineSpecial(62, 0);
	Polyobj_DoorSwing(269,16,64,105);
	Delay(16);
	PlaySound(51, "Interaction/FootStep", CHAN_AUTO, 0.2);
	Delay(16);
	PlaySound(52, "Interaction/FootStep", CHAN_AUTO, 0.3);
	Delay(16);
	PlaySound(53, "Interaction/FootStep", CHAN_AUTO, 0.4);
	Delay(16);
	PlaySound(54, "Interaction/FootStep", CHAN_AUTO, 0.5);
	Delay(16);
	PlaySound(55, "Interaction/FootStep", CHAN_AUTO, 0.6);
	Delay(16);
	PlaySound(56, "Interaction/FootStep", CHAN_AUTO, 0.7);
	Delay(16);
	PlaySound(57, "Interaction/FootStep", CHAN_AUTO, 0.8);
	Delay(16);
	PlaySound(58, "Interaction/FootStep", CHAN_AUTO, 0.9);
	Delay(35);
	Polyobj_DoorSwing(179,-16,64,0x7FFFFFFF);
	GiveInventory("ScriptHasOpenedStoneDoor", 1);
	Floor_RaiseInstant(60, 0, 88);
    }
}

//LIFT CRUSHER
Script 107 ENTER
{
	SectorDamage(379, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//LIFTS & DOORS

script 10 (void)
{
If(CheckInventory("ScriptGreenCave") > 0)
{
FloorAndCeiling_LowerByValue(379, 16, 242);
FloorAndCeiling_LowerByValue(8, 16, 242);
Tagwait(379);
Tagwait(8);
//PlaySound(282, "Nithriel/Active");
delay(60);
FloorAndCeiling_RaiseByValue(8, 16, 242);
FloorAndCeiling_RaiseByValue(379, 16, 242);
Tagwait(8);
Tagwait(379);
}
}

script 114 (void)
{
FloorAndCeiling_LowerByValue(379, 24, 242);
FloorAndCeiling_LowerByValue(8, 24, 242);
Tagwait(379);
Tagwait(8);
Delay(140);
FloorAndCeiling_RaiseByValue(8, 20, 242);
FloorAndCeiling_RaiseByValue(379, 20, 242);
Tagwait(8);
Tagwait(379);
}

Script 3 (void)
{
	If(IsTIDUsed(11))
	{
	Thing_Remove(11);
	Floor_LowerByValue(32, 8, 104);
	}
}

Script 5 (void)
{
	SetLineTexture(28, SIDE_FRONT, TEXTURE_MIDDLE, "Sw01_DN");
	PlaySound(0, "Switches/Switch1");
	Floor_LowerByValue(30, 8, 104);
	Floor_RaiseInstant(32, 0, 104);
	Floor_RaiseInstant(29, 0, 80);
}

Script 7 (void)
{
	If(CheckInventory("ScriptGreenCave") > 0)
	Door_Open(17, 8, 0);
	else
	If(CheckInventory("ScriptGreenCave") < 1)
	{
	Door_Open(17, 8, 0);
	Tagwait(17);
	SetLineTexture(43, SIDE_FRONT, TEXTURE_MIDDLE, "Water_G1");
	}
}

Script 54 (void)
{
	If(GetSectorFloorZ(137, 0, 0) > (225.0 + 99.0) && CheckInventory("VineKey") > 0)
	Floor_LowerByValue(137, 8, 112);
	else
	If(CheckInventory("VineKey") == 0)
	Print(s:"This switch requires a Vine key to open the door.");
}

Script 103 (void)
{
	If(CheckInventory("EarthKey") > 0)
	Generic_Door(389, 16, 0, 34, 0);
	else
	{
	Print(s:"This door requires an Earth key to open.");
	}
}

//SWINGING DOORS
Script 179 (void)
{
If(CheckInventory("ScriptHasOpenedStoneDoor") < 1)
{
Print(s:"This door requires a Stone key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 269 (void)
{
If (GetActorZ(0) < 280.0)
Polyobj_DoorSwing(269,16,64,105);
}

Script 270 (void)
{
If (GetActorZ(0) < 262.0)
Polyobj_DoorSwing(270,16,64,0x7FFFFFFF);
}

Script 271 (void)
{
If (GetActorZ(0) < 280.0)
  Polyobj_DoorSwing(271,16,64,105);
}

//PRINTS & HUDMESSAGES

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

Script 106 (void)
{
	If(GetActorZ(0) > 400.0)
	{
	SetFont("SMALLFONT");
	Hudmessage(s:"KEEP CLOSED"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
	}
}

Script 65 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Rot. 509, Day 176 (The date of this last entry appears to be from well over two months ago.)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"Received: Two crates of leather straps and a barrel of salt from lower Valc. Stored by the portal."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"Received:  Three root oil jugs for Earth Mother Bendi.  Will keep them inside for when she drops by.   "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 11 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 15.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"The dwarven prospector should arrive by the end of the moon."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 15.0);
	Hudmessage(s:"If he is wearing an elemental ring signet,  you may let him in.   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 15.0);
}

Script 34 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Day 233"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
	Hudmessage(s:"We've had a strange tremor today...  the ground shook for a while, and I swear I've heard a quaint    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
	Hudmessage(s:"tune going along with it.   Almost like some steam hissing down below.  Chilled me to the bone.  We've    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"also heard some rubble collapsing. Guess we'll have to look into it and reinforce the weaker caves...  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"And only a month after our army set off. I know I'm worrying too much but I so hate this coincidence."; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 15 (void)
{
	If(CheckInventory("ScriptGreenCave") > 0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Find yourself. Before she finds you."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
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

//MUSIC FADE
Script 48 (void)
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