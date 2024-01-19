#include "zcommon.acs"

//Gold - 50


//LEVEL START

Script 1 ENTER
{

	//Actor Changes
	SetActorFlag(18, "INVISIBLE", 1);
	SetActorFlag(97, "INVISIBLE", 1);
	SetActorProperty(614, APROP_Speed, 0.0);
	SetActorFlag(614, "MISSILEMORE", 1);
	SetActorFlag(614, "MISSILEEVENMORE", 1);
	SetActorFlag(108, "NOINTERACTION", 1);
	SetActorFlag(108, "COUNTITEM", 0);
	SetActorFlag(182, "FLOATBOB", 1);
	SetActorFlag(182, "NOBLOCKMAP", 1);
	SetActorFlag(11, "NOBLOCKMAP", 1);

	//Ship Segment
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 1, 601, 192);
	}
	If(CheckInventory("IDEarthMotherCounter") > 0)
	{
		TakeInventory("IDEarthMotherCounter", 1);
		SpawnSpotForced("IDEarthMotherStationary", 2, 602, 160);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 3, 603, 0);
	}
	If(CheckInventory("IDBearCounter") > 0)
	{
		TakeInventory("IDBearCounter", 1);
		SpawnSpotForced("IDBearWarriorStationary", 4, 604, 0);
	}
	If(CheckInventory("IDFixerCounter") > 0)
	{
		TakeInventory("IDFixerCounter", 1);
		SpawnSpotForced("IDFixerStationary", 5, 605, 64);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 6, 606, 0);
	}
	If(CheckInventory("IDReaverCounter") > 0)
	{
		TakeInventory("IDReaverCounter", 1);
		SpawnSpotForced("IDReaverStationary", 7, 607, 128);
	}
	If(CheckInventory("IDWitchCounter") > 0)
	{
		TakeInventory("IDWitchCounter", 1);
		SpawnSpotForced("IDWitchStationary", 8, 608, 32);
	}
	//If(CheckInventory("IDLancerCounter") > 0)
	If(CheckInventory("ScriptCrystalCuratorHasSurvived") > 0)
	{
		TakeInventory("IDLancerCounter", 1);
		SpawnSpotForced("IDLancerStationary", 9, 609, 0);
	}

	ACS_NamedExecuteWithResult("FriendlySpawner");

	FadeTo(0, 0, 0, 1.0, 0.0);
	SetActorProperty(0, APROP_Speed, 0.0);
	Delay(35);

	Thing_ChangeTID(901, 626);

	SetMusic("HTrack30");

	PlaySound(341, "Eraanthe/Mm", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    There's the Baron's fleet! Don't get any funny ideas now, wait until we reach the shore!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.90, 5.5, 0.2, 1.5);
    Delay(35);
	SetActorProperty(0, APROP_Speed, 1.0);
	FadeTo(0, 0, 0, 0.0, 3.0);

	ACS_Execute(2, 0, 0, 0, 0);
	Scroll_Floor(305, 0, -192, SCROLL_AND_CARRY);
	Scroll_Ceiling(13, 0, -192, SCROLL);
	Sector_SetWind(305, 50, 192, 0);
	Floor_Waggle(305, 56, 40, 1, 0);
    Ceiling_Waggle(13, 56, 40, 1, 0);
	Floor_Waggle(41, 96, 140, 1, 0);
	Ceiling_CrushAndRaiseA(110, 20, 20, 16);
	Floor_Waggle(111, 192, 68, 8, 0);
	Floor_Waggle(112, 192, 68, 20, 0);
	Floor_Waggle(113, 192, 68, 32, 0);

    Delay(35);
	Thing_Activate(612);
	Polyobj_Move(1, 56, 192, 5500);
}


//SHIP SEGMENT
//Cleanup
Script 3 (void)
{
	Thing_Remove(901);
	Thing_Remove(902);
	Thing_Remove(600);
	Thing_Remove(611);
	Thing_Remove(612);
	Thing_Remove(613);
	Thing_Remove(614);
	Thing_Remove(18);
	Thing_Remove(20);
	Thing_Remove(45);
	Thing_Remove(47);
	Thing_Remove(49);
	Thing_Remove(56);
	Thing_Remove(97);
	Thing_Remove(108);
	Thing_Remove(130);
	Thing_Remove(616);
	Thing_Remove(177);
	//Thing_Remove(182);
	Thing_Remove(181);

	Thing_Remove(341);

	Scroll_Floor(305, 0, 0, SCROLL_AND_CARRY);
	Scroll_Ceiling(13, 0, 0, SCROLL);
	Sector_SetWind(305, 0, 0, 0);
	Ceiling_CrushAndRaiseA(110, 0, 0, 0);
	ACS_Terminate(22, 0);
}
//Start
Script 4 (void)
{
	PlaySound(10, "Ambient/Impact", CHAN_AUTO, 2.0, false, ATTN_NONE);
	Thing_Activate(611);
	Radius_Quake(3, 35, 0, 1, 0);
	Delay(16);
    NoiseAlert(0, 0);

	If(CheckProximity(0, "IDReaverStationary", 640.0, 1))
	  {
		PlaySound(606, "Reaver/Huh", CHAN_AUTO);
	    Hudmessage(s:"Reaver:    They're trying to board our ship!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_DARKRED, 1.5, 0.86, 2.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDLancerStationary", 640.0, 1))
	  {
		PlaySound(609, "Lancer/Ha", CHAN_AUTO);
	    Hudmessage(s:"Crystal Curator:    They are attacking us! To arms!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_CYAN, 1.5, 0.86, 2.5, 0.2, 0.5);
	  }
    else
    If(CheckProximity(0, "IDBearWarriorStationary", 640.0, 1))
	  {
		PlaySound(603, "BearWarrior/Rage", CHAN_AUTO);
	    Hudmessage(s:"Bear Warrior:    Arrgh, they're boarding our ship! Push them back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDWitchStationary", 640.0, 1))
	  {
		PlaySound(608, "Witch/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Witch:    Umm, ladies? I believe our ship is being boarded."; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_PURPLE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	If(CheckProximity(0, "IDEarthMotherStationary", 640.0, 1))
	  {
		PlaySound(602, "EarthMother/Hm", CHAN_AUTO);
	    Hudmessage(s:"Earth Mother:    Oh my! What was that? Are they trying to board our ship?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  }
	else
    If(CheckProximity(0, "IDFixerStationary", 640.0, 1))
	  {
		PlaySound(601, "Fixer/Huh", CHAN_AUTO);
	    Hudmessage(s:"Fixer:    Huh? What's that sound? Is someone climbing on our ship?!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 200, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  }
	else
	{
	PlaySound(341, "Eraanthe/Mmf", CHAN_AUTO);
	Hudmessage(s:"Eraanthe:    Sounds like they're trying to board our ship. Go deal with them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.90, 6.5, 0.2, 0.5);
    }

	Delay(2*35);

    //SetMusic("HTrack30");
}

//Rope Sound
Script 6 (void)
{
	If(GetActorZ(0) > 264.0)
	{
		PlaySound(0, "Interaction/RopeTie", CHAN_AUTO, 0.4);
	}
}

//Draw Bridges
Script 8 (void)
{
	If(GetSectorFloorZ(42, 0, 0) == 89.0)
	{
		SetActorPitch(45, 0.65);
	    PlaySound(45, "Interaction/MachineOn");
		FloorAndCeiling_LowerByValue(42, 32, 128);
		FloorAndCeiling_RaiseByvalue(44, 999, 449);
		SetActorFlag(20, "INVISIBLE", 1);
		Scroll_Wall(46, 0, -4.0, 0, 2);
		TagWait(42);
		Scroll_Wall(46, 0, 0.0, 0, 2);
	}
	else
	If(GetSectorFloorZ(42, 0, 0) == -39.0)
	{
		SetActorPitch(45, 0.8);
	    PlaySound(45, "Interaction/MachineOn");
		FloorAndCeiling_RaiseByValue(42, 32, 128);
		FloorAndCeiling_LowerByvalue(44, 999, 449);
		SetActorFlag(20, "INVISIBLE", 0);
		Scroll_Wall(46, 0, 4.0, 0, 2);
		TagWait(42);
		Scroll_Wall(46, 0, 0.0, 0, 2);
		PlaySound(10, "Ambient/Impact", CHAN_AUTO);
	}
}
int Spec9 = 0;
Script 9 (void)
{
	If(GetSectorFloorZ(15, 0, 0) == -48.0)
	{
		SetActorPitch(47, 0.65);
	    PlaySound(47, "Interaction/MachineOn");
		FloorAndCeiling_RaiseByValue(15, 32, 192);
		FloorAndCeiling_LowerByvalue(17, 999, 512);
		SetActorFlag(18, "INVISIBLE", 0);
		Scroll_Wall(48, 0, 4.0, 0, 2);
		TagWait(15);
		Scroll_Wall(48, 0, 0.0, 0, 2);
	    If(Spec9 == 0)
	    {
		Spec9 += 1;
		Radius_Quake(1, 50, 0, 1, 0);
		Delay(16);
		Thing_Destroy(49, 1, 0);
		SpawnSpotForced("Golem", 50, 612, 0);
		SpawnSpotForced("Golem", 51, 611, 145);
		Delay(1);
		SetActorState(612, "AssaultRoll", 0);
		SetActorState(611, "AssaultRoll", 0);
		Floor_RaiseByValue(54, 999, 128);
		FloorAndCeiling_RaiseByValue(53, 999, 128);
		TagWait(54);
		Thing_Activate(613);
		SpawnSpotForced("Cultist", 55, 613, 128);
		SpawnSpotForced("Initiate", 62, 613, 128);
		SpawnSpotForced("Cerberus", 63, 613, 128);
		Thing_Activate(56);
		Line_SetBlocking(57, 0, BLOCKF_PLAYERS);
		}
	}
	else
	If(GetSectorFloorZ(15, 0, 0) == 144.0)
	{
		SetActorPitch(47, 0.8);
	    PlaySound(47, "Interaction/MachineOn");
		FloorAndCeiling_LowerByValue(15, 32, 192);
		FloorAndCeiling_RaiseByvalue(17, 999, 512);
		SetActorFlag(18, "INVISIBLE", 1);
		Scroll_Wall(48, 0, -4.0, 0, 2);
		TagWait(15);
		Scroll_Wall(48, 0, 0.0, 0, 2);
	}
}

Script 22 (void)
{
	If(GetSectorFloorZ(128, 0, 0) == -40.0)
	{
		SetActorPitch(130, 0.65);
	    PlaySound(130, "Interaction/MachineOn");
		FloorAndCeiling_RaiseByValue(128, 32, 160);
		FloorAndCeiling_LowerByvalue(129, 999, 512);
		SetActorFlag(97, "INVISIBLE", 0);
		Scroll_Wall(48, 0, 4.0, 0, 2);
		TagWait(128);
		Scroll_Wall(48, 0, 0.0, 0, 2);
	}
	else
	If(GetSectorFloorZ(128, 0, 0) == 120.0)
	{
		SetActorPitch(130, 0.8);
	    PlaySound(130, "Interaction/MachineOn");
		FloorAndCeiling_LowerByValue(128, 32, 160);
		FloorAndCeiling_RaiseByvalue(129, 999, 512);
		SetActorFlag(97, "INVISIBLE", 1);
		Scroll_Wall(48, 0, -4.0, 0, 2);
		TagWait(128);
		Scroll_Wall(48, 0, 0.0, 0, 2);
	}
}

//Vent Wind Push
Script 10 (void)
{
	If(GetActorZ(0) > 300.0 && GetActorZ(0) < 448.0)
	{
		ThrustThing(random(60,68), 25, 0, 0);
	}
	else
	If(GetActorZ(0) > 270.0 && GetActorZ(0) < 464.0)
	{
		ThrustThing(random(60,68), 12, 0, 0);
	}
}

//Blue Baron
Script 25 (void)
{
	Floor_RaiseByValue(150, 8, 128);
	Delay(105);
	Thing_Activate(151);
	SetActorState(151, "SpawnLoopHostile", 0);

	PlaySound(0, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Hudmessage(s:"Blue Baron:    *Murmurs*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.5, 2.5);

}
Script 26 (void)
{
	Delay(35);
	PlaySound(0, "BlueBaron/Ha", CHAN_AUTO, 1.0, false, ATTN_NONE);
    Hudmessage(s:"Blue Baron:    ...the ones who defy their masters perish first..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_LIGHTBLUE, 1.5, 0.86, 2.5, 1.5, 2.5);
}
Script 27 (void)
{
	If(CheckInventory("GoldenKey") > 0)
	{
		SetLineSpecial(162, 0, 0, 0, 0, 0, 0);
		Thing_Remove(151);
		SpawnSpotForced("BlueBaronCinematic", 152, 615, 128);
		SetActorState(615, "SpawnLoopHostile", 0);
		SetActorProperty(615, APROP_ScaleX, 0.55);
		SetActorProperty(615, APROP_ScaleY, 0.51);
	}
}
Script 29 (void)
{
	If(GetSectorFloorZ(164, 0, 0) == 122.0)
	{
		Thing_Remove(615);
		Thing_Remove(163);
		Delay(4);
		SpawnSpotForced("BlueBaronCinematic", 153, 616, 0);
		SetActorState(616, "SpawnLoopHostile", 0);
		SetActorProperty(616, APROP_ScaleX, 0.63);
		SetActorProperty(616, APROP_ScaleY, 0.59);
		Delay(24);
		SpawnSpotForced("ForgeElemental", 175, 600, 64);
		Delay(12);
		NoiseAlert(0, 0);
	}
}

//Ship Cannon
Script 28 (void)
{
	SetWeapon("Fists");
	SetLineSpecial(171, 0, 0, 0, 0, 0, 0);
	ChangeFloor(167, "Iron_18");
	ChangeFloor(168, "Iron1_G");
	Floor_MoveToValue(167, 999, 90, 0);
	Floor_MoveToValue(168, 999, 84, 0);
	PlaySound(170, "Ambient/Impact", CHAN_AUTO, 2.0);
	Delay(4);
	SpawnSpotForced("ExplosionLargeRed", 169, 0, 0);
	Radius_Quake(10, 35, 1, 10, 170);
	ThrustThing(0, 4, 0, 0);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 172, 0, 0);
	Floor_RaiseByValue(164, 999, 58);
	Floor_RaiseByValue(165, 999, 68);
	Floor_RaiseByValue(166, 999, 54);
	Delay(12);
	SpawnSpotForced("ExplosionLarge", 173, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionLarge", 174, 0, 0);
	Delay(6);
	SpawnSpotForced("ExplosionMedium", 172, 0, 0);
	Delay(8);
	SpawnSpotForced("ExplosionMedium", 173, 0, 0);
}

//Chains
Script 12 (void)
{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
}
Script 11 (void)
{
	If(GetActorZ(0) > 264.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.3);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO, 0.6);
	}
}

//Bar Stage
Script 14 (void)
{
	Ceiling_RaiseByValue(81, 24, 88);
	Delay(12);
	Line_SetBlocking(82, 0, BLOCKF_SIGHT);
}
//Bar Window
Script 15 (void)
{
	SetLineSpecial(86, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(87, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(60, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(87, 0, BLOCKF_EVERYTHING);
	SetLineTexture(87, SIDE_FRONT, TEXTURE_MIDDLE, "WINDW15C");
	SetLineTexture(87, SIDE_BACK, TEXTURE_MIDDLE, "WINDW15C");
	Radius_Quake(1, 24, 0, 7, 89);
	SpawnSpotForced("DustCloud", 88, 0, 0);
	SpawnSpotForced("JunkBrokenGlassB", 89, 600, 0);
	SpawnSpotForced("JunkBrokenGlassA", 90, 600, 0);
	PlaySound(88, "Weapons/PotionDie", CHAN_AUTO);
	Thing_Remove(88);
}

Script 52 (void)
{
	Print(s:"The cracked door window looks like it could easily be shattered.");
	PlaySound(0, "Character/ZanThink" , CHAN_AUTO);
	Delay(35);
}

//Bulkhead Doors
Script 21 (void)
{
	SetLineSpecial(101, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(102, 8, 80);
}

//Kitchen Elevator
Script 23 (void)
{
	Delay(50);
	FloorAndCeiling_RaiseByValue(132, 12, 262);
	FloorAndCeiling_RaiseByValue(133, 12, 262);
	Scroll_Wall(134, 0, 1.5, 0, 2);
	TagWait(132);
	Scroll_Wall(134, 0, 0.0, 0, 2);
	TagWait(133);

	Delay(4*35);

	FloorAndCeiling_LowerByValue(132, 12, 262);
	FloorAndCeiling_LowerByValue(133, 12, 262);
	Scroll_Wall(134, 0, -1.5, 0, 2);
	TagWait(132);
	Scroll_Wall(134, 0, 0.0, 0, 2);
	TagWait(133);
}

//Periscope Easter Egg
Script 24 (void)
{
	If(GetActorZ(0) > 40.0)
	{
		ChangeCamera(142, 0, 1);
	}
}

//Nithriel
Script 30 (void)
{
	Hudmessage(s:"Nithriel:    Oh my... I was not expecting guests. Come in, Halfblood, don't be shy... I'm just around the corner."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.0, 0.2, 0.5);
    PlaySound(0, "Nithriel/Active", CHAN_AUTO);
}

//Ending
Script 31 (void)
{
	Delay(12);
	Hudmessage(s:"Nithriel:    Surprise!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 1.0, 0.2, 2.5);
    PlaySound(177, "Nithriel/Laugh", CHAN_AUTO);

    PlaySound(0, "Projectile/MentalistMindBlastDeath", CHAN_AUTO);
	Radius_Quake(8, 35, 0, 1, 0);

	Delay(15);
	PlaySound(0, "PsiDemon/AttackC", CHAN_AUTO);
	Thing_Remove(183);
	FadeTo(255, 120, 220, 1.0, 0.5);
	SetWeapon("Fists");
	Delay(20);
	//If(GetActorProperty(0, APROP_Health) < 100)
	//{
	//	SetActorProperty(0, APROP_Health, 100);
	//}
	SetMusic("", 0, 0);

	Teleport_NoFog(179, 1, 0);
	Thing_Move(177, 180, 1);
	SetLineTexture(178, SIDE_BACK, TEXTURE_MIDDLE, "Magic1");
	SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
	SetActorPitch(0, 0.02);
	SetActorFlag(0, "NODAMAGE", 1);
	PlaySound(0, "Music/Firelung", CHAN_AUTO);
	Delay(2*35);
	FadeTo(0, 0, 0, 0.0, 4.0);

	Delay(3*35);
	Hudmessage(s:"Tiati:    Zan... she's...c-controlling... me... urgh-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(181, "Reaver/Pain", CHAN_AUTO);
	Delay(3*35);

	Hudmessage(s:"Nithriel:    Surprised to see your little friend here? She was rather helpful with retrieving the Seed for me."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.0, 0.2, 0.5);
    PlaySound(177, "Warlock/Active", CHAN_AUTO);
	Delay(7*35);
	Hudmessage(s:"The Baron was slightly reluctant to share it, but thanks to you two, it's in my possession now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.5, 0.2, 0.5);
    PlaySound(177, "Warlock/Pain", CHAN_AUTO);
	Delay(5*35);

    SetActorState(181, "ThrowPotion", 0);

	Hudmessage(s:"Tiati:    Zan... ugh... go-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(181, "Reaver/Pain", CHAN_AUTO);
	Delay(2*35);

	Delay(10);

    Radius_Quake(1, 16, 0, 1, 0);
	Hudmessage(s:"Nithriel:    Silence, worm! Your pitiful savior is powerless before me now. I'll enjoy draining the life out of y-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 6.0, 0.2, 0.5);
    PlaySound(0, "Nithriel/Active", CHAN_AUTO);

	SetActorAngle(177, 1.0);
	Delay(2*35);
	Delay(15);
	SetActorAngle(177, 0.25);
	Delay(20);
	Delay(2*35);

	Delay(1*35);
	SetActorAngle(177, 1.0);
	Hudmessage(s:"What?! Where did y-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.0, 0.2, 0.5);
    PlaySound(0, "Warlock/Pain", CHAN_AUTO);
	Delay(2*35);

	SetActorAngle(177, 0.5);

	Hudmessage(s:"NOOOOOOOO-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.0, 0.2, 4.5);
    PlaySound(0, "Nithriel/Death", CHAN_AUTO);
	Radius_Quake(3, 70, 0, 1, 0);
	Delay(1*35);
	SpawnProjectile(184, "FlameShot", 64, 5, 0, 0, 0);
	Delay(1*35);
	SetActorAngle(177, 0.25);
	//Thing_Activate(177);
	SetActorState(177, "Bubble", 0);
	Thing_Remove(188);

	Radius_Quake(10, 155, 0, 1, 0);
	SpawnSpotForced("ExplosionHuge", 184, 0, 0);
	SetMugShotState("Pain");
	Delay(20);
	SpawnSpotForced("ExplosionHuge", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(15);
	SpawnSpotForced("ExplosionMedium", 186, 0, 0);
	SpawnSpotForced("ExplosionMedium", 184, 0, 0);
	SpawnSpotForced("ExplosionMedium", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(25);
	SpawnSpotForced("ExplosionMedium", 187, 0, 0);
	SpawnSpotForced("ExplosionMedium", 186, 0, 0);
	SpawnSpotForced("ExplosionMedium", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(15);
	SpawnSpotForced("ExplosionMedium", 186, 0, 0);
	SpawnSpotForced("ExplosionMedium", 184, 0, 0);
	SpawnSpotForced("ExplosionMedium", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(25);
	SpawnSpotForced("ExplosionLarge", 186, 0, 0);
	SpawnSpotForced("ExplosionHuge", 184, 0, 0);
	SpawnSpotForced("ExplosionMedium", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(20);
	SpawnSpotForced("ExplosionLarge", 187, 0, 0);
	SpawnSpotForced("ExplosionHuge", 186, 0, 0);
	SpawnSpotForced("ExplosionLarge", 185, 0, 0);
	SetMugShotState("Pain");
	Delay(20);
	SpawnSpotForced("ExplosionHuge", 186, 0, 0);
	SpawnSpotForced("ExplosionHuge", 186, 0, 0);
	SpawnSpotForced("ExplosionHuge", 186, 0, 0);
	Delay(15);
	SetMugShotState("Death");
	FadeTo(0, 0, 0, 1.0, 0.0);
    ACS_Execute(3, 0, 0, 0, 0);

    TakeInventory("InventoryJournal", 1);
	TakeInventory("GoldenKey", 1);
	TakeInventory("BloodKey", 1);

	If(GameSkill() != 5)
	{
	  TakeInventory("Axe", 1);
	}
	else
	{
	  TakeInventory("HatchetAndShield", 1);
	}

	Delay(7*35);

	If(GetActorProperty(601, APROP_Health) > 0)
	{
		GiveInventory("IDFixerCounter", 1);
	}
	If(GetActorProperty(602, APROP_Health) > 0)
	{
		GiveInventory("IDEarthMotherCounter", 1);
	}
	If(GetActorProperty(603, APROP_Health) > 0)
	{
		GiveInventory("IDBearCounter", 1);
	}
	If(GetActorProperty(604, APROP_Health) > 0)
	{
		GiveInventory("IDBearCounter", 1);
	}
	If(GetActorProperty(605, APROP_Health) > 0)
	{
		GiveInventory("IDFixerCounter", 1);
	}
	If(GetActorProperty(606, APROP_Health) > 0)
	{
		GiveInventory("IDReaverCounter", 1);
	}
	If(GetActorProperty(607, APROP_Health) > 0)
	{
		GiveInventory("IDReaverCounter", 1);
	}
	If(GetActorProperty(608, APROP_Health) > 0)
	{
		GiveInventory("IDWitchCounter", 1);
	}
	If(GetActorProperty(609, APROP_Health) <= 0)
	{
		TakeInventory("ScriptCrystalCuratorHasSurvived", 1);
	}

	//SetMugShotState("Normal");
	SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	SetActorFlag(0, "NODAMAGE", 0);

	Exit_Normal(0);

	/*Delay(10*35);

	Teleport_NoFog(255, 1, 0);
	ChangeCamera(251, 0, 1);
	SetActorAngle(0, 0.75);

	SetActorFlag(237, "INVISIBLE", 1);

	SetActorFlag(222, "INVISIBLE", 1);
	SetActorFlag(223, "INVISIBLE", 1);

	SetActorFlag(224, "NOBLOCKMAP", 1);

	ACS_Execute(32, 0, 0, 0, 0);
	Delay(1);
	ACS_Execute(33, 0, 0, 0, 0);
	ACS_Execute(38, 0, 0, 0, 0);

	Delay(245);
	FadeTo(0, 0, 0, 0.0, 1.0);

	PlaySound(251, "Character/ZanTired", CHAN_AUTO);
	SetMugShotState("Normal");
	Delay(105);
	FadeTo(0, 0, 0, 1.0, 6.0);
	Delay(245);

	SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	SetActorFlag(0, "NODAMAGE", 0);

	ChangeCamera(0, 0, 1);
	PlaySound(0, "Character/ZanAwake", CHAN_AUTO);
	FadeTo(0, 0, 0, 0.0, 5.0);

	Delay(70);
	Autosave();
	*/
}

//Fire Sea Damage + Elevator Crusher
Script 2 (void)
{
	SectorDamage(305, 1000, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(13, 1000, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(133, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SetActorFlag(902, "FLOORCLIP", 1);
	Delay(8);
	Restart;
}

//Fire Sea Fade
Script 16 (void)
{
	Delay(90);
	If(GetActorProperty(0, APROP_Health) <= 0)
	{
		FadeTo(255, 140, 40, 1.0, 2.5);
	}
}

//Friendlies Dialogue
Script 5 (void) //Eraanthe
{
	PlaySound(341, "Eraanthe/Urgh", CHAN_AUTO);
    Hudmessage(s:"Eraanthe:    Don't pester me now! I must make sure the boat stays on course."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_RED, 1.5, 0.86, 4.5, 0.2, 0.5);
    Delay(7*35);
}
Script 601 (void) //Fixer 1
{
    If(GetActorProperty(601, APROP_Health) > 0)
	{
	  Hudmessage(s:"Fixer:    *Is too absorbed by the surrounding machinery to notice you*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(7*35);
	}
}
Script 605 (void) //Fixer 2
{
    If(GetActorProperty(601, APROP_Health) > 0)
	{
	  PlaySound(605, "Fixer/Huh", CHAN_AUTO);
	  Hudmessage(s:"Fixer:    N-not now, Zan! I-I need to focus!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 3.5, 0.2, 0.5);
	  Delay(6*35);
	}
}
Script 602 (void) //Earth Mother
{
	If(GetActorProperty(602, APROP_Health) > 0 && CheckInventory("PowerPotionofStoneskin") > 0 && CheckInventory("PowerNourish") > 0)
	{
		PlaySound(602, "EarthMother/Hmm", CHAN_AUTO);
	    Hudmessage(s:"Earth Mother:    Let me know if you are in need of my magic. I'll tend to you however I can."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.5, 0.2, 0.5);
	    Delay(2*35);
		Terminate;
	}
	If(GetActorProperty(602, APROP_Health) > 0 && CheckInventory("PowerNourish") == 0)
	{
	  PlaySound(676, "EarthMother/Hm", CHAN_AUTO);
	  SetActorState(602, "BuffNourish", 0);
	  Hudmessage(s:"Earth Mother:    Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 0.0, 0.5);
	  Delay(35);
	}
	If(GetActorProperty(602, APROP_Health) > 0 && CheckInventory("PowerPotionofStoneskin") == 0)
	{
	  SetActorState(602, "BuffStoneskin", 0);
	  Hudmessage(s:"Earth Mother:    Earth protect you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.5, 0.0, 0.5);
	  Delay(35);
	}
}
Script 603 (void) //Bear Warrior 1
{
    If(GetActorProperty(603, APROP_Health) > 0)
	{
	  PlaySound(603, "BearWarriorr/Huh", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    Stay sharp! They might try to outmaneuver us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  Delay(6*35);
	}
}
Script 604 (void) //Bear Warrior 2
{
    If(GetActorProperty(604, APROP_Health) > 0)
	{
	  PlaySound(604, "BearWarriorr/Rage", CHAN_AUTO);
	  Hudmessage(s:"Bear Warrior:    This is it, the Baron is in our reach! For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(7*35);
	}
}
Script 606 (void) //Reaver 1
{
    If(GetActorProperty(606, APROP_Health) > 0)
	{
	  PlaySound(606, "Reaver/Hm", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    I'll lay down covering fire, go kick their ass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.5, 0.2, 0.5);
	  Delay(6*35);
	}
}
Script 607 (void) //Reaver 2
{
    If(GetActorProperty(607, APROP_Health) > 0)
	{
	  PlaySound(607, "Reaver/Huh", CHAN_AUTO);
	  Hudmessage(s:"Reaver:    Keep your eyes peeled, they might try to board our ship again."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(7*35);
	}
}
Script 608 (void) //Witch
{
    If(GetActorProperty(608, APROP_Health) > 0)
	{
	  PlaySound(608, "Witch/Ha", CHAN_AUTO);
	  Hudmessage(s:"Witch:    Well, Bonebreaker? Are you crazy enough to board the Baron's ship?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 4.5, 0.2, 0.5);
	  Delay(7*35);
	}
}
Script 609 (void) //Curator
{
    If(GetActorProperty(609, APROP_Health) > 0)
	{
	  PlaySound(609, "Lancer/Ha", CHAN_AUTO);
	  Hudmessage(s:"Crystal Curator:    I'll protect the ship! Go find Nithriel!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	  Delay(6*35);
	}
}














//LOCKED DOORS
Script 7 (void)
{
	Print(s:"The door won't budge.");
	PlaySound(0, "Charcter/ZanFail2", CHAN_AUTO);
	Delay(35);
}

//ROTATING DOORS
Script 179 (void)
{
  If(GetActorZ(0) < 220.0)
  {
	SetLineSpecial(371, 80, 179, 0, 0, 0, 0);
    Polyobj_DoorSwing(179,16,64,105);
  }
}
Script 180 (void)
{
  If(GetActorZ(0) > 300.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(180,16,64,175);
  }
    else
    If(GetActorZ(0) > 300.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 268 (void)
{
  If(GetActorZ(0) < -46.0 && CheckInventory("BloodKey") > 0)
  {
    Polyobj_DoorSwing(268,16,64,175);
  }
    else
    If(GetActorZ(0) < -46.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 269 (void)
{
  If(GetActorZ(0) > 300.0 && CheckInventory("GoldenKey") > 0)
  {
    Polyobj_DoorSwing(269,16,64,175);
	Polyobj_DoorSwing(271,16,64,175);
  }
    else
    If(GetActorZ(0) > 300.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 270 (void)
{
  If(GetActorZ(0) < 255.0)
  {
    Polyobj_DoorSwing(270,16,64,175);
  }
}
Script 249 (void)
{
  If(GetActorZ(0) < 30.0 && CheckInventory("BloodKey") > 0)
  {
	SetLineSpecial(123, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(249,16,12,0x7FFFFFFF);
  }
    else
    If(GetActorZ(0) < 30.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 295 (void)
{
  If(GetActorZ(0) < 30.0 && CheckInventory("BloodKey") > 0)
  {
	SetLineSpecial(114, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(295,-16,64,0x7FFFFFFF);
  }
    else
    If(GetActorZ(0) < 30.0 && CheckInventory("BloodKey") == 0)
    {
      Print(s:"This door requires a Blood key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}
Script 272 (void)
{
  If(GetActorZ(0) > 140.0 && CheckInventory("GoldenKey") > 0)
  {
	Polyobj_DoorSwing(272,16,64,175);
	Thing_Remove(176);
  }
    else
    If(GetActorZ(0) > 140.0 && CheckInventory("GoldenKey") == 0)
    {
      Print(s:"This door requires a Golden key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 360 (void)
{
  If(GetActorZ(0) < 336.0)
  {
	SetLineSpecial(412, 80, 360, 0, 0, 0, 0);
    Polyobj_DoorSwing(360,-16,64,105);
  }
}




//READABLES
Script 13 (void)
{
	If(GetActorZ(0) > 310.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 145.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Captain's Log"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 145.0);

	Hudmessage(s:"57/3rd/1106   I thought this was going to be a regular supply run, but lo and behold, the Baron appears perched up   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 145.0);
    Hudmessage(s:"atop of his flagship, observing our fleet.   I think my contact inside the minotaur town factory will have interesting    "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 145.0);
	Hudmessage(s:"news to share... granted he hasn't been worked to death already. I better watch my thoughts now, the Baron is close."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 145.0);

	Hudmessage(s:"58/3rd/1106   We were greeted at the port by the warlock chief bitch. Her face was more wry than I remember. If only "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.78, 145.0);
    Hudmessage(s:"I could've heard what she told the Baron.. everyone looks to be more agitated than usual. I need to meet my contact."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.80, 145.0);

	Hudmessage(s:"59/3rd/1106   A million curses on that wretched elf! We barely dropped anchor for a day and she orders us to prepare"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.84, 145.0);
    Hudmessage(s:"to leave. Urgently. Wonder why the Baron doesn't put her in her place. Much to my expectations, her cultists did load "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.86, 145.0);
	Hudmessage(s:"our ships with weapon crates, and a bunch of Hellions joined, slinging around the new hell powder guns I heard rumors   "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.88, 145.0);
	Hudmessage(s:"about. My contact was right... if these contraptions catch on, politics will soon shift. Now... how do I ride this wave?     "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.90, 145.0);
	}
}

Script 20 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"I will be spending the rest of the journey locked inside the engine room, as it appears to be the only place capable   "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"of shielding me from certain intrusive thoughts. Make sure none of our bumbling cultists open the doors! -Mistress N"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 47 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"UPPER DRAWBRIDGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 2.0);
}

Script 49 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"MAST SNAPPER"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 2.0);
}

Script 51 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"HULL PIERCER"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 2.0);
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
