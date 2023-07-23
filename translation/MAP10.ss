#include "zcommon.acs"

int mtid = 999;

//LEVEL START
Script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  Floor_Waggle(35, 16, 64, 0, 0);
  Ceiling_Waggle(35, 16, 64, 0, 0);

  Floor_Waggle(175, 256, 32, 0, 0);
  Ceiling_Waggle(175, 256, 32, 0, 0);

  Ceiling_Waggle(167, 32, 32, 0, 0);

  Floor_Waggle(93, 192, 8, 0, 0);
  Floor_Waggle(94, 256, 10, 0, 0);
  Floor_Waggle(109, 320, 12, 0, 0);

  SetActorFlag(74, "NOTONAUTOMAP", 1);

  SetActorFlag(101, "FLOATBOB", 1);

  SetActorFlag(223, "NOTONAUTOMAP", 1);
  SetActorFlag(223, "NOINTERACTION", 1);

  //SetActorFlag(306, "BRIGHT", 0);
  SetActorFlag(306, "FLOORCLIP", 1);
  SetActorFlag(306, "NOGRAVITY", 0);

  SetActorFlag(352, "FLOORCLIP", 0);

  SetActorFlag(396, "BRIGHT", 1);

  SetActorFlag(419, "COUNTKILL", 0);

  SetActorFlag(438, "FLOATBOB", 1);

  SetActorFlag(447, "SOLID", 0);
  SetActorFlag(447, "RELATIVETOFLOOR", 1);
  SetActorFlag(447, "FLOATBOB", 0);
  Floor_Waggle(449, 720, 24, 0, 0);
  Ceiling_Waggle(449, 720, 24, 0, 0);

  Delay(35);

  Thing_ChangeTID(901, 900);

  If(ThingCountName("IDBearWarrior", 0) > 0 || ThingCountName("IDBearWarriorGuarding", 0) > 0)
  {
	  Hudmessage(s:"Bear Warrior:    Sarge, you're alive! Thought you were done for in that crashed elevator."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
      PlaySound(690, "BearWarrior/Ha", CHAN_AUTO);

	  If(ThingCountName("IDReaver", 0) > 0 || ThingCountName("IDReaverGuarding", 0) > 0)
      {
	  Delay(5*35);
	  Hudmessage(s:"Reaver:    Good to have you back. We hadn't made it too far before we got pinned down by Forge Elementals."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.0, 0.2, 0.5);
      }
	  else
	    If(ThingCountName("IDBearWarrior", 0) > 0 || ThingCountName("IDBearWarriorGuarding", 0) > 0)
        {
	    Delay(5*35);
	    Hudmessage(s:"Good to have you back. Haven't made it too far myself... got pinned down by some Forge Elementals."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
        }
  }
  else
  If(ThingCountName("IDReaver", 0) > 0 || ThingCountName("IDReaverGuarding", 0) > 0)
      {
	  Hudmessage(s:"Reaver:    Zan! I thought you were dead in that crashed elevator. Can't believe you made it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
      PlaySound(690, "Reaver/Hm", CHAN_AUTO);
	  Delay(5*35);
	  Hudmessage(s:"I tried to push on without you, but got pinned down here by some Forge Elementals..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	  }
}

//LEVEL OPTIMIZATION
//Remove Map Start Actors
Script 124 (void)
{
	Thing_Remove(440);
	Thing_Remove(901);
}
//Remove Elemental Temple Actors
Script 125 (void)
{
	Thing_Remove(441);
	Thing_Remove(901);
}
//Remove Lancer Temple Actors
Script 126 (void)
{
	Thing_Remove(442);
	Thing_Remove(901);
	//Thing_Remove(214);
	//Thing_Remove(212);
	//Thing_Remove(209);
	//Thing_Remove(208);
}
//Remove Actors Final Fight
Script 127 (void)
{
	Thing_Remove(443);
	Thing_Remove(447);
	Thing_Remove(901);
	//Thing_Remove(258);
	//Thing_Remove(263);
    //Thing_Remove(301);
}

//BOSS
//Teleport
Script 108 (void)
{
	Teleport(367, 0, 0);
}

//Tiati
Script 115 (void)
{
	SetLineSpecial(389, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Tiati:    Zan... I couldn't stop her... she made it inside..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(387, "Reaver/Pain", CHAN_AUTO);
}

//Start Cinematic
Script 114 (void)
{
	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.90, 0.1, 0.1, 0.1);

	FadeTo(0, 0, 0, 1.0, 2.0);
    Polyobj_DoorSwing(720,8,64,70);
	Polyobj_DoorSwing(540,-8,64,70);
	Delay(2*35);
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_Speed, 0.0);
	SetActorProperty(0, APROP_Friction, 0.1);
	SetActorAngle(0, 0.25);
	Thing_Move(0, 367, 1);
	Thing_Activate(768);
	ChangeCamera(768, 0, 0);
	TakeInventory("IsPlaying", 1);
	FadeTo(0, 0, 0, 0.0, 5.0);
	Delay(5*35);
	TakeInventory("IsPlaying", 1);
	Delay(9*35);
	Polyobj_DoorSwing(721,8,64,995);
	Polyobj_DoorSwing(541,-8,64,995);
	Delay(35);
	Thing_Activate(391);
	ThrustThing(64, 5, 0, 391);
	Delay(50);
	Hudmessage(s:"Crystal Curator:    Begone, elf! The Disk won't bring you anything but doom."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(386, "Lancer/Ha", CHAN_AUTO);
	Delay(3*35);
	Thing_Stop(391);
	Delay(35);
	ChangeCamera(773, 0, 0);
	Polyobj_DoorSwing(720,8,64,485);
	Polyobj_DoorSwing(540,-8,64,485);
	Thing_Move(0, 390, 1);
	SetActorAngle(391, 0.25);
	Thing_Hate(391, 393, 0);
	SetActorState(391, "MagicMissile", 0);
	Delay(90);
	Hudmessage(s:"Nithriel:    Your barrier won't last forever, orc. The only doom here will be upon you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
    PlaySound(391, "Warlock/Active", CHAN_AUTO);
	Delay(2*35);
	//ChangeCamera(773, 0, 0);
	Thing_Activate(773);
	Delay(3*35);
	If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDLancer", 1280.0, 1) || CheckProximity(0, "IDReaver", 1280.0, 1))
	{
		Hudmessage(s:"Crystal Curator:    It doesn't have to last forever... I have some friends at my side."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
	else
	{
    Hudmessage(s:"Crystal Curator:    It doesn't have to last forever... I have a champion at my side."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
	Delay(10*35);
	Hudmessage(s:"Nithriel:    *Laughing* Oh? Well so do I..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 8.0, 0.2, 0.5);
    PlaySound(391, "Nithriel/Laugh", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(6*35);
	PlaySound(400, "PitLord/Sight", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(2*35);
	SetActorState(400, "Jump", 0);
	Delay(70);
	Line_SetBlocking(361, 0, BLOCKF_EVERYTHING);

	Thing_Remove(392);
	Thing_Remove(387);
	SetLineSpecial(383, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(381, 32, 168);
	//Thing_Destroy(386);
	Thing_Remove(386);
	SpawnSpotForced("NPCCrystalCurator", 361, 361, 0);
	SetActorFlag(361, "INVULNERABLE", 1);
	SetActorFlag(361, "NODAMAGE", 1);
	Ceiling_LowerByValue(394, 99999, 1845);
	Line_SetBlocking(397, 0, BLOCKF_EVERYTHING);
	Thing_Move(391, 395, 1);
	Thing_Deactivate(391);

    SetActorAngle(0, 0.25);
	SetActorPitch(0, 0);
    ChangeCamera(0, 0, 0);
	SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);
	GiveInventory("IsPlaying", 1);

	Delay(70);
	Autosave();
	SetMusic("HTrack20", 0, 0);
	Delay(35);
	If(CheckProximity(0, "IDBearWarrior", 1280.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
	}
	else
	If(CheckProximity(0, "IDLancer", 1280.0, 1))
    {
	  Hudmessage(s:"Lancer:    Victory or death!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
	}
	else
	If(CheckProximity(0, "IDReaver", 1280.0, 1))
    {
	  Hudmessage(s:"Reaver:    Uh-oh..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 2.0, 0.2, 0.5);
	}

	Delay(35);
	ACS_Execute(119, 0, 0, 0, 0);
	ACS_Execute(109, 0, 0, 0, 0);
	ACS_Execute(110, 0, 0, 0, 0);
	ACS_Execute(111, 0, 0, 0, 0);
	ACS_Execute(120, 0, 0, 0, 0);
}

//Health Bar
Script 119 (void)
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

	SetFont ("OLAYPITA");
    HudMessage (s:"a"; HUDMSG_FADEOUT, 103, CR_UNTRANSLATED, 80.0, 50.0, 0.1, 1.0);

    SetFont ("BIGFONT");
    HudMessage (s:"Pit Lord Alpha"; HUDMSG_FADEOUT, 102, CR_BLACK, 100.0, 22.0, 0.1, 1.0);

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

//Phase 2
Script 109 (void)
{
	If(GetActorProperty(999, APROP_Health) <= GetActorProperty(999, APROP_SpawnHealth) - GetActorProperty(999, APROP_SpawnHealth)/5 && GetSectorFloorZ(371, 0, 0) == -600.0)
	{
	SetActorFlag(402, "DONTTHRUST", 1);
	SetActorProperty(999, APROP_Speed, 45.0);
	Floor_LowerByValue(371, 32, 532);
	Terminate;
	}
	Delay(1);
	Restart;
}
//Phase 3
Script 110 (void)
{
	If(GetActorProperty(999, APROP_Health) <= GetActorProperty(999, APROP_SpawnHealth) - GetActorProperty(999, APROP_SpawnHealth)/5 - GetActorProperty(999, APROP_SpawnHealth)/5 && GetSectorFloorZ(372, 0, 0) == -600.0)
	{
	SetActorProperty(999, APROP_Speed, 50.0);
	Floor_LowerByValue(372, 32, 532);

	Line_SetBlocking(364, 0, BLOCKF_EVERYTHING);
	SpawnSpot("JunkBrokenGlassA", 376, 0, 0);
	SpawnSpot("JunkBrokenGlassB", 377, 0, 0);
	PlaySound(385, "Weapons/PotionDie", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SetLineTexture(364, SIDE_FRONT, TEXTURE_MIDDLE, "Window08");
	SetLineTexture(364, SIDE_BACK, TEXTURE_MIDDLE, "Window08");

	Terminate;
	}
	Delay(1);
	Restart;
}
//Phase 4
Script 111 (void)
{
	If(GetActorProperty(999, APROP_Health) <= GetActorProperty(999, APROP_SpawnHealth) - GetActorProperty(999, APROP_SpawnHealth)/5 - GetActorProperty(999, APROP_SpawnHealth)/5 - GetActorProperty(999, APROP_SpawnHealth)/5 && GetSectorFloorZ(374, 0, 0) == -682.0)
	{
	SetActorProperty(999, APROP_Speed, 60.0);
	SetActorState(999, "SuperRage", 0);
	PlaySound(999, "PitLord/Rage", CHAN_AUTO, 2.0, false, ATTN_NONE);
	FadeTo(255, 255, 255, 1.0, 1.5);
	Delay(35);
	PlaySound(999, "PitLord/Sight", CHAN_AUTO, 2.0, false, ATTN_NONE);
	Delay(35);
	Floor_LowerByValue(374, 99999, 443);
	PlaySound(375, "Interaction/IceShatter", CHAN_AUTO, 1.0, false, ATTN_NONE);
	FadeTo(255, 255, 255, 0.0, 1.0);

	Line_SetBlocking(365, 0, BLOCKF_EVERYTHING);
	SpawnSpot("JunkBrokenGlassA", 378, 0, 0);
	SpawnSpot("JunkBrokenGlassB", 379, 0, 0);
	PlaySound(378, "Weapons/PotionDie", CHAN_AUTO, 1.0, false, ATTN_NONE);
	SetLineTexture(365, SIDE_FRONT, TEXTURE_MIDDLE, "Window08");
	SetLineTexture(365, SIDE_BACK, TEXTURE_MIDDLE, "Window08");
	ACS_Execute(121, 0, 0, 0, 0);

	Terminate;
	}
	Delay(1);
	Restart;
}
//Warlock Spawns
Script 121 (void)
{
	Delay(90*35);
	SpawnSpot("Warlock", 403, 402, 0);
	NoiseAlert(0, 0);
	Restart;
}
//Boss Defeat
Script 120 (void)
{
  If(GetActorProperty(999, APROP_Health) <= 1000 && IsTIDUsed(401))
	{
		Thing_Remove(401);
		ACS_Terminate(119, 0);
		ACS_Terminate(121, 0);
		SetActorFlag(0, "INVULNERABLE", 1);
		FadeTo(255, 255, 255, 1.0, 3.0);

		If(CheckProximity(0, "IDReaver", 1800.0, 1) || CheckProximity(0, "IDReaverGuarding", 1800.0, 1))
		  {
		  Hudmessage(s:"Reaver:    Die, demon!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
		  }
		  else
	        If(CheckProximity(0, "IDLancer", 1800.0, 1) || CheckProximity(0, "IDLancerGuarding", 1800.0, 1))
              {
	          Hudmessage(s:"Lancer:    Face defeat, hellspawn!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
              }
		      else
			    If(CheckProximity(0, "IDBearWarrior", 1800.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1800.0, 1))
                  {
			      SetLineSpecial(310, 0, 0, 0, 0, 0, 0);
	              Hudmessage(s:"Bear Warrior:    Bow before our might, scumbag!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
                  }

		Thing_Destroy(402);
		//SetActorState(999, "Defeat", 0);
		Thing_Destroy(999);
		SetMusic("");
		PlaySound(0, "Music/UnsungFoesOutro", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(105);
		FadeTo(255, 255, 255, 0.0, 1.0);
		//SetActorFlag(0, "INVULNERABLE", 0);
		Delay(140);
		FadeTo(0, 0, 0, 1.0, 5.0);
		Delay(5*35);
		Polyobj_DoorSwing(720,8,64, 0xffffff);
	    Polyobj_DoorSwing(540,-8,64,0xffffff);
		SetActorFlag(0, "INVULNERABLE", 0);

		SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
		Thing_Move(0, 404, 1);
		SetActorAngle(0, 0.25);
		TakeInventory("IsPlaying", 1);
		//Thing_Destroy(999);

		ChangeFloor(405, "Portal01");
		ChangeCamera(779, 0, 0);
		Thing_Activate(779);
		FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(1*35);
		TakeInventory("IsPlaying", 1);
		Delay(2*35);
		Hudmessage(s:"Nithriel:    Such a display of might, Demonblood..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
        PlaySound(391, "Warlock/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
		Delay(2*35);
		Polyobj_DoorSwing(721,8,64,0xffffff);
	    Polyobj_DoorSwing(541,-8,64,0xffffff);
		Delay(2*35);
		Hudmessage(s:"...but sadly, you are too late."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
        PlaySound(391, "Warlock/Pain", CHAN_AUTO, 1.0, false, ATTN_NONE);
	    Delay(4*35);
		Thing_Remove(391);
		SpawnSpotForced("BubbleNithriel", 410, 391, 196);
		Thing_Move(396, 411, 1);
		Delay(4*35);
		ThrustThingZ(391, 8, 1, 0);
		ThrustThingZ(396, 7, 1, 0);
		Hudmessage(s:"Nithriel:    See you in Hell!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
        PlaySound(391, "Nithriel/Laugh", CHAN_AUTO, 1.0, false, ATTN_NONE);
		FadeTo(255, 255, 255, 1.0, 3.0);
		Delay(3*35);
		Thing_Remove(391);
		Thing_Remove(396);


		ChangeFloor(406, "Tile05");
		ChangeFloor(407, "Tile02");
		SpawnSpot("IDBannerExit", 408, 998, 192);
		SpawnSpot("MarkerExit", 408, 0, 0);
		//SetActorProperty(998, APROP_ScaleX, 0.3);
		//SetActorProperty(998, APROP_ScaleY, 0.3);
		SetActorFlag(998, "FLOATBOB", 1);

		Delay(35);
		FadeTo(255, 255, 255, 0.0, 1.5);
		SetPlayerProperty(1, 0, PROP_TOTALLYFROZEN);
		Thing_Move(0, 409, 1);
		ChangeCamera(0, 0, 0);
		GiveInventory("IsPlaying", 1);

		If(CheckProximity(0, "IDLancer", 900.0, 1) || CheckProximity(0, "IDLancerGuarding", 900.0, 1))
              {
	          Hudmessage(s:"Lancer:    Follow her! We can't let her get away with the Disk!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
              }
		  else
	        If(CheckProximity(0, "IDReaver", 900.0, 1) || CheckProximity(0, "IDReaverGuarding", 900.0, 1))
		      {
			  Hudmessage(s:"Reaver:    Quickly! We must pursue her!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
		      }
		      else
			    If(CheckProximity(0, "IDBearWarrior", 900.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 900.0, 1))
                  {
			      SetLineSpecial(310, 0, 0, 0, 0, 0, 0);
	              Hudmessage(s:"Bear Warrior:    Elf bitch! We have to follow her, quickly!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
                  }

		Terminate;
	}
	Delay(1);
	Restart;
}

//ENDING
Script 122 (void)
{
	SetPlayerProperty(1, 1, PROP_TOTALLYFROZEN);
	If(GetSectorCeilingZ(381, 0, 0) > -1108.0)
	{
		Ceiling_LowerByValue(381, 32, 168);
	}
	FadeTo(255, 255, 255, 1.0, 0.5);
	Delay(18);
	Thing_Move(0, 418, 1);
	ChangeCamera(412, 0, 0);
	PlaySound(0, "Music/UnderworldPart2", CHAN_AUTO, 1.0, true, ATTN_NONE);
    Delay(3*35);
    FadeTo(0, 0, 0, 0.0, 5.0);
    Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 5.0);
	Delay(5*35);
	TakeInventory("IsPlaying", 1);
	Delay(35);
	Hudmessage(s:"After a fierce battle, the grotesque demon finally collapsed, his dying roar echoing through the halls.         "; HUDMSG_TYPEON | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.30, 38.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"Stumbling towards the massive doors, the Half-Orc forced them open, gathering breath for her final fight."; HUDMSG_TYPEON | HUDMSG_LOG, 2, CR_WHITE, 1.5, 0.32, 30.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"Yet her fists unclenched as soon as she found Nithriel holding the mysterious disk  -  she was too late!           "; HUDMSG_TYPEON | HUDMSG_LOG, 3, CR_WHITE, 1.5, 0.34, 22.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"The Warlock wasted no time, conjuring an eldritch portal and escaping the orc stronghold with the Disk...   "; HUDMSG_TYPEON | HUDMSG_LOG, 4, CR_WHITE, 1.5, 0.36, 12.0, 0.06, 5.0);
	Delay(10*35);
	Hudmessage(s:"But Zan was hell bent on not letting her get away. Driven by a swift impulse, she plunged into the closing"; HUDMSG_TYPEON | HUDMSG_LOG, 5, CR_WHITE, 1.5, 0.44, 8.0, 0.06, 5.0);
	Delay(6*35);
	Hudmessage(s:"wormhole, following Nithriel into places unknown...                                                                                                             "; HUDMSG_TYPEON | HUDMSG_LOG, 6, CR_WHITE, 1.5, 0.46, 0.1, 0.06, 5.0);
	Delay(10*35);
	FadeTo(0, 0, 0, 0.0, 5.0);

	Thing_Remove(998);
	Thing_Remove(361);
	ChangeFloor(415, "Tile02");
	SpawnSpotForced("NPCDendraRegular", 413, 0, 0);
	SpawnSpotForced("NPCDuraRegular", 414, 0, 0);
    SpawnSpotForced("IDBearWarriorStationary", 416, 0, 64);
	SpawnSpotForced("IDReaverStationary", 417, 0, 0);
	Thing_Activate(783);
	ChangeCamera(783, 0, 0);
	Delay(4*35);
	Hudmessage(s:"ART, ANIMATION, PROGRAMMING, WRITING, LEVEL DESIGN, SOUND DESIGN, PUBLISHING"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 10.0, 1.0, 2.5);
    Hudmessage(s:"by Zan_HedonDev"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 10.0, 1.0, 2.5);
	Delay(5*35);
	//Hudmessage(s:"(Any resemblance of the protagonist's name is purely coincidental :P)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 7.0, 0.2, 0.5);
	Delay(7*35);
	Hudmessage(s:"Having repelled the last wave of invaders, the Iron Division defenders rushed to the Heart."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 6.0, 0.5, 1.0);
	Delay(12*35);
	Hudmessage(s:"They found nothing but massacre and destruction... the Sacred Disk artifact - gone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 6.0, 0.5, 1.0);
	Delay(12*35);
	Hudmessage(s:"Both Zan and Tiati seemed to have disappeared without a trace, leaving many questions behind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 6.0, 0.5, 1.0);
	Delay(9*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

	Delay(3*35);
	ChangeCamera(788, 0, 0);
	Thing_Activate(788);
	Delay(35);
	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(3*35);
    Hudmessage(s:"Thanks to iamfailtacular for the bits of character and lore inspiration"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 5.0, 1.0, 2.5);
	Delay(7*35);
	Hudmessage(s:"The invasion was over, but the damage left behind by Nithriel's attack etched a deep scar into Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
	Hudmessage(s:"SOUNDTRACK"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 12.0, 1.0, 2.5);
    Hudmessage(s:"Akhzul - Hedon's dedicated OST composer"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 12.0, 1.0, 2.5);
	Hudmessage(s:"Alexander Brandon - the Man, the Legend"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 12.0, 1.0, 2.5);
	Hudmessage(s:"Breathelast - coolest sharks in the tank"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.32, 12.0, 1.0, 2.5);
	Hudmessage(s:"Methadone Skies - the stuff of dreams"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.34, 12.0, 1.0, 2.5);
	Hudmessage(s:"Shivaxi & Xenofish - that Godlike remix"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.36, 12.0, 1.0, 2.5);
	Delay(3*35);
	Delay(12*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

	Delay(3*35);
	FadeTo(0, 0, 0, 0.0, 2.0);
	ChangeCamera(420, 0, 0);
	Delay(2*35);
	Hudmessage(s:"The few secluded fighters who survived the initial attack regrouped and held out against the remaining foes."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(6*35);
    Hudmessage(s:"VOICE ACTING"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 10.0, 1.0, 0.5);
    Hudmessage(s:"Zan - Olivia Steele"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 10.0, 1.0, 0.5);
	Hudmessage(s:"Bear Warrior - Sara Mears"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 10.0, 1.0, 0.5);
	Hudmessage(s:"Lancer - Emaline Tuck"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.32, 10.0, 1.0, 0.5);
	Hudmessage(s:"Reaver - SB Steagall"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.34, 10.0, 1.0, 0.5);
	Delay(5*35);
	Thing_Activate(419);
	Thing_Hate(419, 421, 4);
	Delay(7*35);
	Hudmessage(s:"Brutal Friendly AI by Sgt_Mark_IV"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.26, 4.0, 1.0, 1.5);
	Hudmessage(s:"Improved Player Movement by Nash Muhandes"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 4.0, 1.0, 1.5);
    Delay(5*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

    Thing_Destroy(419);
	SetActorState(424, "Death", 0);
	Delay(3*35);
	FadeTo(0, 0, 0, 0.0, 1.0);
	ChangeCamera(793, 0, 0);
	Thing_Activate(793);
	Delay(2*35);
	Hudmessage(s:"Lith had already met her swift demise. She was prepared for cremation and stripped of all honor."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
	Hudmessage(s:"Chieftain Zura was recovered from Lith's tank, and urgently put under intensive treatment."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
	Hudmessage(s:"Cover art by Fragua Studio (Dario Martinez, Pau Barz)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 5.0, 1.0, 2.5);
	Hudmessage(s:"Extra posters & paintings by Eraanthe, Jessy Ruiz, Katiethemoo, Pyss"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.30, 5.0, 1.0, 2.5);
	Delay(7*35);
	FadeTo(0, 0, 0, 1.0, 2.0);

	Delay(2*35);
	ChangeCamera(425, 0, 0);
    FadeTo(0, 0, 0, 0.0, 1.0);
	Hudmessage(s:"With the high rank Lancers having perished, she assumed temporary command over Valc."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
    Hudmessage(s:"Her efforts, however, focused on studying Lith's notes to cure and revert the horrors she had created."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
	ChangeCamera(426, 0, 0);
	Hudmessage(s:"Moreso as she was carrying the dark poison herself..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 4.0, 0.5, 1.0);
	Delay(6*35);
	Hudmessage(s:"GZDOOM ENGINE"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.18, 6.0, 1.0, 0.5);
    Hudmessage(s:"Graf Zahl - lead development"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.20, 6.0, 1.0, 0.5);
	Hudmessage(s:"The Doom Community - feedback and contributions"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.22, 6.0, 1.0, 0.5);
	Hudmessage(s:"John Carmack - original id Tech 1 Engine"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.24, 6.0, 1.0, 0.5);
	Hudmessage(s:"Rachael, Graf Zahl - hGZDoom (Hedon specific GZDoom fork)"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.26, 6.0, 1.0, 0.5);

	Hudmessage(s:"Daniel Jenssen, Mikolaj 'D1SoveR' Banasik - Linux compilation & testing"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_WHITE, 1.5, 0.30, 6.0, 1.0, 0.5);
	Delay(7*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

    Delay(3*35);
	FadeTo(0, 0, 0, 0.0, 2.0);
	ChangeCamera(796, 0, 0);
	Thing_Activate(796);
	Delay(3*35);
	Hudmessage(s:"Once a lively fort, Icepeak became nothing more but a frigid stone husk - a stern reminder of Lith's deeds."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_GRAY, 1.5, 0.90, 8.0, 0.5, 1.0);
	Delay(11*35);
	Hudmessage(s:"GZDOOM BUILDER"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGRAY, 1.5, 0.26, 11.0, 1.0, 0.5);
    Hudmessage(s:"MaxED - design and programming"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_DARKGRAY, 1.5, 0.28, 11.0, 1.0, 0.5);
	Hudmessage(s:"Gez - game configurations"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_DARKGRAY, 1.5, 0.30, 11.0, 1.0, 0.5);
	Hudmessage(s:"ZZYZX - maintenance and bugfix updates"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_DARKGRAY, 1.5, 0.32, 11.0, 1.0, 0.5);
	Hudmessage(s:"SLADE3 DOOM EDITOR by Simon Judd"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_DARKGRAY, 1.5, 0.36, 11.0, 1.0, 0.5);
	Delay(13*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

	If(CheckInventory("ScriptHasSavedAndrik") > 0)
	{
	  Delay(3*35);
	  ChangeCamera(427, 0, 0);
	  FadeTo(0, 0, 0, 0.0, 1.0);
	  Delay(35);
	  Hudmessage(s:"Inside, a lone Dwarf began to slowly put things back in order."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_GRAY, 1.5, 0.90, 4.0, 0.5, 1.0);
	  Delay(5*35);
	  FadeTo(0, 0, 0, 1.0, 3.0);
	}
	Delay(3*35);
	ChangeSky("Sky13", "Sky13");
	ChangeCamera(428, 0, 0);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(2*35);
	Hudmessage(s:"Lancer Dendra was ordered to return to her base and ensure the functioning of the anti-magic ward."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 5.0, 0.5, 1.0);
	Delay(7*35);
	Hudmessage(s:"Her time split between burying her sisters and standing at the edge of the mountain. Watching. Waiting."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 6.0, 0.5, 1.0);
	Delay(8*35);
	Hudmessage(s:"Thanks to those who helped me learn how to develop a game and answered my questions:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 15.0, 1.0, 0.5);
	Hudmessage(s:"Lud, DoomKrakken, Xaser, phantombeta, Michaelis, RockstarRaccoon, Popsoap10, Pyroscourge, Rachael,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 15.0, 1.0, 0.5);
	Hudmessage(s:"worldendDominator, dyveira, Diode, Shadowman, Nash, Sgt_Mark_IV, wildweasel, Jimmy, Mr. Enchanter,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.30, 15.0, 1.0, 0.5);
	Hudmessage(s:"Gutawer, Kodi, Brohnesorge, Enjay, ZZYZX, Lord Iheanacho"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.32, 15.0, 1.0, 0.5);
	Delay(16*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

	Delay(3*35);
	ChangeCamera(432, 0, 0);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(2*35);
	Hudmessage(s:"Captain Dura gathered a handful of warriors and headed to the Forge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 4.0, 0.5, 1.0);
	Delay(6*35);
	Hudmessage(s:"They readied to hunt down rogue Forge Elementals and re-establish a connection with the Minotaur caves below."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_WHITE, 1.5, 0.90, 6.0, 0.5, 1.0);
	Delay(8*35);
	Hudmessage(s:"Thanks to all the beta testers for their feedback:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_WHITE, 1.5, 0.26, 14.0, 1.0, 0.5);
	Hudmessage(s:"Captain J, JaywalkingKnight, spart_n, The_Individualist, QuakedoomNukem, BeardedDoomGuy, Arcus Valarian"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.28, 14.0, 1.0, 0.5);
	Hudmessage(s:"And many thanks to the dedicated testers who have greatly helped me improve Hedon in time:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.34, 14.0, 1.0, 0.5);
	Hudmessage(s:"RTheM, Albatross, RawbGM, Copper Boltwire, Makerrcat, Sasha the Lynx"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.36, 14.0, 1.0, 0.5);
	Delay(16*35);
	FadeTo(0, 0, 0, 1.0, 3.0);

	Delay(3*35);
	ChangeSky("Sky14", "Sky14");
	ChangeCamera(799, 0, 0);
	Thing_Activate(799);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Hudmessage(s:"And of course, tons of thanks to everyone who financially supported Hedon through Patreon:"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_UNTRANSLATED, 1.5, 0.24, 28.0, 1.0, 0.5);
    Hudmessage(s:"Copper Boltwire, Karitan Aegis, Danyx992, Kyurae Minasaki, ekwood, papyLaPlage, Robopatron,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 101, CR_UNTRANSLATED, 1.5, 0.28, 28.0, 1.0, 0.5);
	Hudmessage(s:"Albatross, Iceman13, Vodyanoi, Daniel Jewell, Sarah, Kiyu69, Alexander Howard, Nistal,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 102, CR_UNTRANSLATED, 1.5, 0.30, 28.0, 1.0, 0.5);
	Hudmessage(s:"D The Rage, RawbGM, Metazealot, D1soveR, Art0fShred, M.A.Kerr, Shaeoggath, William Vicic,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 103, CR_UNTRANSLATED, 1.5, 0.32, 28.0, 1.0, 0.5);
	Hudmessage(s:"BeardedDoomGuy, FrawLawk, AlexZerker, Sakis Lioliosidis, Lem, Kat G, Sasha the Lynx, BazookaDre,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 104, CR_UNTRANSLATED, 1.5, 0.34, 28.0, 1.0, 0.5);
	Hudmessage(s:"MonsterGang, Alex Ashe, Tadhg Briody, Xev, dirtygrass, Deathmarine, JKeyes, Vince gent, Knugen,"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_UNTRANSLATED, 1.5, 0.36, 28.0, 1.0, 0.5);
	Hudmessage(s:"D3str0y3r176, AMIG, Dark Castle, Spardajackal, Grant Ruhoff, Clair Redfield, Allegory, John Poole"; HUDMSG_FADEINOUT | HUDMSG_LOG, 106, CR_UNTRANSLATED, 1.5, 0.38, 28.0, 1.0, 0.5);
	Delay(26*35);
	FadeTo(0, 0, 0, 1.0, 3.0);


    Delay(5*35);
	ChangeCamera(434, 0, 0);
	Hudmessage(s:"Days passed quickly as the few surviving members of the Iron Division struggled to restore their stronghold.    "; HUDMSG_TYPEON | HUDMSG_LOG, 101, CR_WHITE, 1.5, 0.30, 34.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"But as tunnels were cleared, stragglers were rescued and bodies were buried, time seemed to flow slower...     "; HUDMSG_TYPEON | HUDMSG_LOG, 102, CR_WHITE, 1.5, 0.32, 26.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"And questions began to arise. What happened to the campaign against the Demons? No messenger had arrived..."; HUDMSG_TYPEON | HUDMSG_LOG, 103, CR_WHITE, 1.5, 0.34, 18.0, 0.06, 5.0);
	Delay(8*35);
	Hudmessage(s:"Why was the Disk artifact so important to Nithriel? How would it change the future? And where did Zan go?      "; HUDMSG_TYPEON | HUDMSG_LOG, 104, CR_WHITE, 1.5, 0.36, 8.0, 0.06, 5.0);
	Delay(5*35);
	FadeTo(0, 0, 0, 0.0, 10.0);
	Delay(7*35);
	Hudmessage(s:"End of Hedon I - Crystal Heart"; HUDMSG_FADEINOUT | HUDMSG_LOG, 105, CR_UNTRANSLATED, 1.5, 0.80, 8.5, 1.0, 2.5);
	Delay(2*35);
    //Hudmessage(s:"Patreon @ Hedon"; HUDMSG_FADEINOUT | HUDMSG_LOG, 106, CR_UNTRANSLATED, 1.5, 0.82, 8.5, 1.0, 2.5);
	Ceiling_LowerByValue(435, 12, 640);
	Ceiling_LowerByValue(436, 11, 640);
	Ceiling_LowerByValue(437, 10, 640);
	TagWait(437);
	//ACS_NamedExecuteWithResult("FriendlyCounter");

	Exit_Normal(0);


}

//Nithriel Bridge
Script 27 (void)
{
	//SetLineSpecial(164, 0, 0, 0, 0, 0, 0);
	If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    Over there! A Lancer!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	}
	else
	If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
    {
	  Hudmessage(s:"Reaver:    Over there! A Lancer!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	}
	Delay(35);
	Thing_Activate(162);
	Thing_Hate(163, 162, 0);
	Thing_Hate(165, 162, 0);
	Thing_Hate(162, 163, 0);
	Thing_Hate(162, 165, 0);
	Thing_Hate(162, 0, 0);
	Delay(35);
	PlaySound(0, "Nithriel/Laugh", CHAN_AUTO);
	Delay(105);
	Thing_Activate(161);
	SetActorFlag(161, "NODAMAGE", 1);
	SetActorFlag(161, "NOBLOCKMAP", 1);
	SetActorFlag(161, "THRUACTORS", 1);
	Thing_Activate(398);
	Thing_SetGoal(398, 399, 0, 1);
	If(CheckProximity(0, "IDBearWarrior", 2400.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 2400.0, 1))
    {
	  Hudmessage(s:"Bear Warrior:    Oh, fuck!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	}
	Delay(105);
	Thing_Destroy(163, 1, 0);
	Delay(35);
	PlaySound(398, "PitLord/Active", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Thing_Destroy(165, 1, 0);
	Delay(35);
	Thing_Remove(161);
	Delay(70);
	PlaySound(398, "PitLord/Rage", CHAN_AUTO, 1.0, false, ATTN_NONE);
	Delay(280);
	If(CheckProximity(0, "IDReaver", 2400.0, 1) || CheckProximity(0, "IDReaverGuarding", 2400.0, 1))
    {
	  Hudmessage(s:"Reaver:    Have you seen the size of that thing?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	}
	Thing_Remove(398);
}

//Rocket Jump Failsafe
Script 123 (void)
{
	If(GetActorZ(0) > -706.0)
	{
		Thing_Activate(263);
		Thing_Activate(258);
	}
}

//FRAGMENT PLACEMENT
//Air
Script 23 (void)
{
	If(CheckInventory("InventoryAirFragment") > 0 && GetSectorFloorZ(136, 0, 0) < -520.0)
	{
		TakeInventory("InventoryAirFragment", 1);
		PlaySound(137, "Metal/Land", CHAN_AUTO);
		ChangeFloor(136, "Stone2");
		Floor_RaiseByValue(136, 99999, 2);
		Delay(16);
		PlaySound(137, "Magic/Dispel", CHAN_AUTO);
		SetSectorGlow(138, 0, 230, 240, 255, 32);
		SpawnSpotForced("LightBeamA", 154, 595, 0);
		SetActorProperty(595, APROP_ScaleX, 0.5);
		If(GetSectorFloorZ(139, 0, 0) > -521.0 && GetSectorFloorZ(143, 0, 0) > -521.0 && GetSectorFloorZ(148, 0, 0) > -521.0)
		{
			Delay(35);
			Floor_RaiseByValue(155, 8, 144);
			Radius_Quake(1, 140, 0, 1, 0);
			Delay(35);
			FadeTo(255, 255, 255, 1.0, 3.5);
			TagWait(155);
			PlaySound(154, "Weapons/CrylanceReady", CHAN_AUTO);
			Delay(35);
			PlaySound(156, "Weapons/CrylanceAltFire", CHAN_AUTO);
			Delay(12);
			FadeTo(255, 255, 255, 0.0, 0.8);
	        SpawnProjectile(156, "SpecialCryball", 64, 170, 0, 1, 0);
			Delay(60);
			Light_Fade(157, 152, 35);
			Delay(50);
			Floor_LowerByValue(158, 8, 164);
		}
	}
	else
	If(CheckInventory("InventoryAirFragment") == 0 && GetSectorFloorZ(136, 0, 0) < -520.0)
	{
		Print(s:"An empty socket.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Fire
Script 24 (void)
{
	If(CheckInventory("InventoryFireFragment") > 0 && GetSectorFloorZ(139, 0, 0) < -520.0)
	{
		TakeInventory("InventoryFireFragment", 1);
		PlaySound(141, "Metal/Land", CHAN_AUTO);
		ChangeFloor(139, "Stone05");
		ChangeFloor(140, "Lava_01");
		Floor_RaiseByValue(139, 99999, 2);
		Floor_RaiseByValue(140, 99999, 1);
		Delay(16);
		PlaySound(141, "Magic/Dispel", CHAN_AUTO);
		SetSectorGlow(142, 0, 255, 140, 40, 32);
		SpawnSpotForced("LightBeamA", 154, 595, 0);
		SetActorProperty(595, APROP_ScaleX, 0.5);
		If(GetSectorFloorZ(136, 0, 0) > -521.0 && GetSectorFloorZ(143, 0, 0) > -521.0 && GetSectorFloorZ(148, 0, 0) > -521.0)
		{
			Delay(35);
			Floor_RaiseByValue(155, 8, 144);
			Radius_Quake(1, 140, 0, 1, 0);
			Delay(35);
			FadeTo(255, 255, 255, 1.0, 3.5);
			TagWait(155);
			PlaySound(154, "Weapons/CrylanceReady", CHAN_AUTO);
			Delay(35);
			PlaySound(156, "Weapons/CrylanceAltFire", CHAN_AUTO);
			Delay(12);
			FadeTo(255, 255, 255, 0.0, 0.8);
	        SpawnProjectile(156, "SpecialCryball", 64, 170, 0, 1, 0);
			Delay(60);
			Light_Fade(157, 152, 35);
			Delay(50);
			Floor_LowerByValue(158, 8, 164);
		}
	}
	else
	If(CheckInventory("InventoryFireFragment") == 0 && GetSectorFloorZ(139, 0, 0) < -520.0)
	{
		Print(s:"An empty socket.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Earth
Script 25 (void)
{
	If(CheckInventory("InventoryEarthFragment") > 0 && GetSectorFloorZ(143, 0, 0) < -520.0)
	{
		TakeInventory("InventoryEarthFragment", 1);
		PlaySound(146, "Metal/Land", CHAN_AUTO);
		ChangeFloor(143, "Moss_B2");
		ChangeFloor(144, "Stone_G");
		ChangeFloor(145, "Earth1");
		Floor_RaiseByValue(143, 99999, 2);
		Floor_RaiseByValue(144, 99999, 2);
		Floor_RaiseByValue(145, 99999, 1);
		Delay(16);
		PlaySound(146, "Magic/Dispel", CHAN_AUTO);
		SetSectorGlow(147, 0, 40, 255, 140, 32);
		SpawnSpotForced("LightBeamA", 154, 595, 0);
		SetActorProperty(595, APROP_ScaleX, 0.5);
		If(GetSectorFloorZ(136, 0, 0) > -521.0 && GetSectorFloorZ(139, 0, 0) > -521.0 && GetSectorFloorZ(148, 0, 0) > -521.0)
		{
			Delay(35);
			Floor_RaiseByValue(155, 8, 144);
			Radius_Quake(1, 140, 0, 1, 0);
			Delay(35);
			FadeTo(255, 255, 255, 1.0, 3.5);
			TagWait(155);
			PlaySound(154, "Weapons/CrylanceReady", CHAN_AUTO);
			Delay(35);
			PlaySound(156, "Weapons/CrylanceAltFire", CHAN_AUTO);
			Delay(12);
			FadeTo(255, 255, 255, 0.0, 0.8);
	        SpawnProjectile(156, "SpecialCryball", 64, 170, 0, 1, 0);
			Delay(60);
			Light_Fade(157, 152, 35);
			Delay(50);
			Floor_LowerByValue(158, 8, 164);
		}
	}
	else
	If(CheckInventory("InventoryEarthFragment") == 0 && GetSectorFloorZ(143, 0, 0) < -520.0)
	{
		Print(s:"An empty socket.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Water
Script 26 (void)
{
	If(CheckInventory("InventoryWaterFragment") > 0 && GetSectorFloorZ(148, 0, 0) < -520.0)
	{
		TakeInventory("InventoryWaterFragment", 1);
		PlaySound(150, "Metal/Land", CHAN_AUTO);
		ChangeFloor(148, "Stone_G");
		ChangeFloor(149, "Carpet2A");
		Floor_RaiseByValue(148, 99999, 2);
		Ceiling_RaiseByValue(153, 99999, 2);
		Delay(16);
		PlaySound(150, "Magic/Dispel", CHAN_AUTO);
		SetSectorGlow(151, 0, 120, 160, 255, 32);
		SpawnSpotForced("LightBeamA", 154, 595, 0);
		SetActorProperty(595, APROP_ScaleX, 0.5);
		If(GetSectorFloorZ(136, 0, 0) > -521.0 && GetSectorFloorZ(139, 0, 0) > -521.0 && GetSectorFloorZ(143, 0, 0) > -521.0)
		{
			Delay(35);
			Floor_RaiseByValue(155, 8, 144);
			Radius_Quake(1, 140, 0, 1, 0);
			Delay(35);
			FadeTo(255, 255, 255, 1.0, 3.5);
			TagWait(155);
			PlaySound(154, "Weapons/CrylanceReady", CHAN_AUTO);
			Delay(35);
			PlaySound(156, "Weapons/CrylanceAltFire", CHAN_AUTO);
			Delay(12);
			FadeTo(255, 255, 255, 0.0, 0.8);
	        SpawnProjectile(156, "SpecialCryball", 64, 170, 0, 1, 0);
			Delay(60);
			Light_Fade(157, 152, 35);
			Delay(50);
			Floor_LowerByValue(158, 8, 164);
		}
	}
	else
	If(CheckInventory("InventoryWaterFragment") == 0 && GetSectorFloorZ(148, 0, 0) < -520.0)
	{
		Print(s:"An empty socket.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//MONSTER SPAWNS
//First Main Hall Ambush (Unused)
Script 20 (void)
{
	Thing_Activate(125);
}

//Water Fragment Main Hall Spawn
Script 21 (void)
{
	If(CheckInventory("InventoryWaterFragment") > 0)
	{
		SetLineSpecial(130, 0, 0, 0, 0, 0, 0);
		SpawnSpot("IronMaiden", 100, 596, 64);
		SpawnSpot("IronMaiden", 127, 596, 192);
		SpawnSpot("Initiate", 128, 0, 128);
		SpawnSpot("SniperCultist", 129, 596, 128);
		SpawnSpot("Cerberus", 131, 596, 64);
		SpawnSpot("Cerberus", 132, 596, 192);
		SetActorFlag(596, "AMBUSH", 1);
	}
}

//Earth Fragment Main Hall Spawn
Script 22 (void)
{
	If(CheckInventory("InventoryEarthFragment") > 0)
	{
		SetLineSpecial(133, 0, 0, 0, 0, 0, 0);
		SpawnSpot("Golem", 135, 0, 0);
		SpawnSpot("Warlock", 134, 596, 128);
		SetActorFlag(596, "AMBUSH", 1);
	}
}

//Water Figurine Spawn
Script 4 (void)
{
	SpawnSpot("Conscript", 58, 0, 64);
	SpawnSpot("Conscript", 59, 0, 192);
	SpawnSpot("Initiate", 60, 0, 0);
}

//Air Fragment Spawn
Script 8 (void)
{
	If(CheckInventory("InventoryAirFragment") > 0)
	{
		SetLineSpecial(75, 0, 0, 0, 0, 0, 0);
		Delay(12);
		PlaySound(72, "ForgeElemental/Sight", CHAN_AUTO, 0.6, false, ATTN_NONE);
		SpawnSpot("ForgeElemental", 72, 0, 192);
		SpawnSpot("Initiate", 59, 0, 192);
		NoiseAlert(0, 0);
	}
}

//Fire Figurine Spawn
Script 14 (void)
{
	SpawnSpot("Cerberus", 120, 0, 0);
}

//East Hall Ambush
Script 9 (void)
{
	If(CheckInventory("InventoryEarthFigurine") > 0)
	{
		SetLineSpecial(80, 0, 0, 0, 0, 0, 0);

		PlaySound(445, "Crawler/Active", CHAN_AUTO);

		Delay(35);
		Ceiling_LowerByValue(81, 64, 1);
		Radius_Quake(5, 35, 0, 1, 0);
		Thing_Remove(85);
		SetLineTexture(77, SIDE_FRONT, TEXTURE_MIDDLE, "Window08");
		SetLineTexture(77, SIDE_BACK, TEXTURE_MIDDLE, "Window08");
		Line_SetBlocking(77, 0, 32);
		SpawnSpotForced("JunkBrokenGlassB", 82, 0, 0);
		SpawnSpotForced("JunkBrokenGlassA", 83, 0, 0);
		PlaySound(83, "Weapons/PotionDie", CHAN_AUTO);
		Thing_Activate(84);
		Thing_Hate(84, 0, 0);
	}
}

Script 130 (void)
{
	PlaySound(445, "Crawler/Active", CHAN_AUTO);
}
//Fire Ring Forge Elemental Ambush
Script 13 (void)
{
	SetLineSpecial(115, 0, 0, 0, 0, 0, 0);
	SpawnSpot("IronUrchin", 116, 0, 192);
	Floor_RaiseByValue(113, 32, 64);
	TagWait(113);
	Thing_Activate(114);
	NoiseAlert(0,0);
}

Script 131 (void)
{
	SetLineSpecial(446, 0, 0, 0, 0, 0, 0);
	Delay(35);
	PlaySound(114, "ForgeElemental/Active", CHAN_AUTO);
}

//Pentagram Hall Monster Activation
Script 93 (void)
{
	SetLineSpecial(439, 0, 0, 0, 0, 0, 0);
	Thing_Activate(258);
}

//Bridge Cross Monster Activation
Script 94 (void)
{
	If(GetActorZ(0) > -705.0)
	{
	SetLineSpecial(264, 0, 0, 0, 0, 0, 0);
	Thing_Activate(263);
	NoiseAlert(0, 0);
	}
}

//First Bridge Urchin Spawn
Script 91 (void)
{
	SpawnSpot("IronUrchin", 256, 0, 64);
}






//ELEMENTAL SECTIONS

//WATER SECTION
//Figurine Pedestal
Script 3 (void)
{
	If(CheckInventory("InventoryFireFigurine") > 0 && IsTIDUsed(660) == 0)
	{
		TakeInventory("InventoryFireFigurine", 1);
		SpawnSpotForced("NatureStatueFire", 57, 660, 0);
		SetActorProperty(660, APROP_ScaleX, 0.2);
		SetActorProperty(660, APROP_ScaleY, 0.2);
		PlaySound(57, "Metal/Bounce", CHAN_AUTO);
		Delay(35);
		PlaySound(57, "Weapons/FlameDeath", CHAN_AUTO);
		Delay(70);
		Thing_Remove(15);
		SpawnSpotForced("LightIDBrazzier", 16, 599, 0);
		SetActorProperty(599, APROP_ScaleX, 1.1);
		SetActorProperty(599, APROP_ScaleY, 1.1);
		Delay(1);
		SpawnSpotForced("ForgeLightSmall", 16, 0, 0);
		PlaySound(16, "Weapons/FlameDeath", CHAN_AUTO);
		Delay(70);
		Radius_Quake(2, 140, 0, 1, 0);
		Ceiling_RaiseByValue(23, 99999, 141);
		Ceiling_LowerByValue(22, 16, 140);
		Ceiling_LowerByValue(30, 16, 247);
		Ceiling_RaiseByValue(31, 16, 247);
		Delay(8);
		Ceiling_RaiseByValue(23, 1, 15);
	}
	else
	If(IsTIDUsed(660) == 0)
	{
	    Print(s:"A set of amber glyphs is etched into the sides of the empty pedestal.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}
//Arena Switches
Script 2 (void)
{
	If(GetSectorCeilingZ(52, 0, 0) == -362.0)
	{
		Ceiling_LowerByValue(52, 32, 686);
		Floor_LowerByValue(54, 32, 686);
		Radius_Quake(3, 175, 0, 1, 0);
		Delay(105);
		NoiseAlert(0, 0);
	}
	else
	{
	Ceiling_LowerByValue(50, 32, 686);
	Floor_LowerByValue(56, 32, 686);
	Radius_Quake(3, 175, 0, 1, 0);
	Delay(105);
	NoiseAlert(0, 0);
	}
}


//AIR SECTION
//Figurine Pedestal
Script 5 (void)
{
	If(CheckInventory("InventoryEarthFigurine") > 0 && IsTIDUsed(661) == 0)
	{
		TakeInventory("InventoryEarthFigurine", 1);
		SpawnSpotForced("NatureStatueEarth", 61, 661, 0);
		SetActorProperty(661, APROP_ScaleX, 0.2);
		SetActorProperty(661, APROP_ScaleY, 0.2);
		PlaySound(61, "Metal/Bounce", CHAN_AUTO);
		Delay(35);
		PlaySound(61, "Magic/StoneSkinHit", CHAN_AUTO);
		Ceiling_LowerByValue(45, 16, 112);
		Delay(70);
		PlaySound(43, "Magic/Earth1", CHAN_AUTO);
		ChangeFloor(87, "Moss_G");
		SpawnSpotForced("WallCrystalLight", 43, 0, 0);
		Delay(70);
		Radius_Quake(2, 175, 0, 1, 0);
		ChangeFloor(62, "Moss_B1");
		ChangeFloor(63, "Moss_B1");
		ChangeFloor(64, "Moss_B1");
		Floor_RaiseByValue(62, 128, 1980);
		Floor_RaiseByValue(64, 96, 2004);
		Floor_RaiseByValue(63, 112, 1992);
		SetLineTexture(86, SIDE_FRONT, TEXTURE_BOTTOM, "Stone2_U");
	}
	else
	If(IsTIDUsed(661) == 0)
	{
	    Print(s:"A set of green glyphs is etched into the sides of the empty pedestal.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//EARTH SECTION
//Figurine Pedestal
Script 16 (void)
{
	If(CheckInventory("InventoryAirFigurine") > 0 && IsTIDUsed(664) == 0)
	{
		TakeInventory("InventoryAirFigurine", 1);
		SpawnSpotForced("NatureStatueAir", 124, 664, 0);
		SetActorProperty(664, APROP_ScaleX, 0.2);
		SetActorProperty(664, APROP_ScaleY, 0.2);
		PlaySound(124, "Metal/Bounce", CHAN_AUTO);
		Delay(16);
		PlaySound(124, "Ambient/Wind", CHAN_AUTO);
		Delay(105);
		Thing_Remove(88);
		SpawnSpotForced("IDBrazzierB", 89, 597, 0);
		SetActorProperty(597, APROP_ScaleX, 1.1);
		SetActorProperty(597, APROP_ScaleY, 1.1);
		Delay(1);
		SpawnSpotForced("WallCrystalLight", 89, 0, 0);
		PlaySound(89, "Magic/Earth1", CHAN_AUTO);
		Delay(105);
		Radius_Quake(2, 175, 0, 1, 0);
		Delay(175);
		SetActorState(90, "Death", 0);
		Delay(35);
		Thing_Remove(90);
	}
	else
	If(IsTIDUsed(664) == 0)
	{
	    Print(s:"A set of silver glyphs is etched into the sides of the empty pedestal.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//FIRE SECTION
//Figurine Pedestal
Script 12 (void)
{
	If(CheckInventory("InventoryWaterFigurine") > 0 && IsTIDUsed(663) == 0)
	{
		TakeInventory("InventoryWaterFigurine", 1);
		SpawnSpotForced("NatureStatueWater", 126, 663, 0);
		SetActorProperty(663, APROP_ScaleX, 0.2);
		SetActorProperty(663, APROP_ScaleY, 0.2);
		PlaySound(126, "Metal/Bounce", CHAN_AUTO);
		Delay(35);
		//Autosave();
		PlaySound(126, "TerrainSnd/WaterSmall", CHAN_AUTO);
		Delay(8);
		PlaySound(126, "TerrainSnd/WaterSmall", CHAN_AUTO);
		Delay(8);
		PlaySound(126, "TerrainSnd/WaterSmall", CHAN_AUTO);
		Delay(8);
		Thing_Remove(101);
		PlaySound(102, "Interaction/Smother", CHAN_AUTO);
		SpawnSpotForced("SteamPuffMedium", 102, 0, 0);
		SpawnSpotForced("IDTorch", 102, 598, 0);
		SetActorFlag(598, "FLOATBOB", 1);
		Delay(70);
		Radius_Quake(2, 175, 0, 1, 0);
		Ceiling_LowerByValue(112, 64, 528);
		TagWait(112);
		Thing_Remove(105);
		TeleportOther(110, 106, 0);
		TeleportOther(111, 107, 0);
		ChangeFloor(96, "Stone05");
		SpawnSpotForced("SteamPuffMedium", 103, 0, 0);
		PlaySound(103,"Weapons/SteamHiss", CHAN_AUTO);
		SetSectorGlow(96, 0, -1, -1, -1, 0);
		Delay(16);
		ChangeFloor(96, "Water_G1");
		Floor_RaiseByValue(92, 64, 4);
		SetSectorGlow(92, 0, -1, -1, -1, 0);
		ChangeFloor(92, "Stone05");
		SetSectorGlow(97, 0, -1, -1, -1, 0);
		ChangeFloor(97, "Stone05");
		Floor_lowerByValue(97, 64, 24);
		SetSectorGlow(98, 0, -1, -1, -1, 0);
		ChangeFloor(98, "Stone05");
		Floor_lowerByValue(98, 64, 48);
		SetSectorGlow(99, 0, -1, -1, -1, 0);
		ChangeFloor(99, "Stone05");
		Floor_lowerByValue(99, 64, 64);
		Ceiling_LowerByValue(118, 16, 224);
		Thing_Remove(119);
		Thing_Remove(123);
		SetLineSpecial(121, 0, 0, 0, 0, 0, 0);
		Line_SetBlocking(121, 0, BLOCKF_PLAYERS);
		ChangeFloor(122, "Ash1");

	}
	else
	If(IsTIDUsed(663) == 0)
	{
	    Print(s:"A set of aqua glyphs is etched into the sides of the empty pedestal.");
	    PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
}

//Lava Damage (Permanent)
Script 10 ENTER
{
	SectorDamage(95, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(118, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	Restart;
}
//Lava Damage (Temporary)
Script 11 ENTER
{
	SectorDamage(92, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(96, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(97, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(98, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(99, 16, "Lava", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(16);
	If(IsTIDUsed(105) == 0)
	{
	Delay(8);
	Terminate;
	}
	Restart;
}

//EARTHQUAKES/BATTLE
//Quakes & Explosions
Script 31 (void)
{
	Radius_Quake(3, 140, 0, 1, 0);
	SpawnSpot("ExplosionHuge", 169, 0, 0);
	Delay(16);
	SpawnSpot("ExplosionHuge", 169, 0, 0);
	Delay(12);
	SpawnSpot("ExplosionHuge", 169, 0, 0);
	Delay(8);
	SpawnSpot("ExplosionHuge", 169, 0, 0);

	SetActorFlag(177, "BUDDHA", 1);
	Thing_Damage(177, 1000, 0);
	SetActorFlag(177, "BUDDHA", 0);
}

Script 34 (void)
{
	Radius_Quake(3, 175, 0, 1, 0);
	SpawnSpot("ExplosionHuge", 181, 0, 0);
	Delay(70);
	SpawnSpot("ExplosionHuge", 181, 0, 0);
	Delay(35);
	SpawnSpot("ExplosionHuge", 181, 0, 0);
	Delay(16);
	SpawnSpot("ExplosionHuge", 181, 0, 0);
}

Script 38 (void)
{
	SetLineSpecial(193, 0, 0, 0, 0, 0, 0);
	Radius_Quake(8, 105, 5, 10, 188);
	SpawnSpotForced("ExplosionLarge", 188, 0, 0);
	SpawnSpotForced("DustCloud", 187, 0, 0);
	PlaySound(187, "Ambient/Rocks", CHAN_AUTO);
	Delay(16);
	SpawnSpotForced("ExplosionHuge", 187, 0, 0);
	SpawnSpotForced("DustCloud", 190, 0, 0);
	PlaySound(190, "Ambient/Rocks", CHAN_AUTO);
	Delay(12);
	SpawnSpotForced("ExplosionHuge", 189, 0, 0);
	SpawnSpotForced("DustCloud", 188, 0, 0);
	PlaySound(188, "Ambient/Rocks", CHAN_AUTO);
	Delay(8);
	SpawnSpotForced("ExplosionHuge", 190, 0, 0);
	SpawnSpotForced("DustCloud", 189, 0, 0);
	PlaySound(189, "Ambient/Rocks", CHAN_AUTO);
	ChangeFloor(192, "Ash2");
	Floor_RaiseByValue(192, 99999, random(4,8));
	Floor_LowerInstant(185, 0, 13);
	Thing_Remove(221);
	Delay(12);
	Thing_Activate(191);

	Delay(105);
	Line_SetBlocking(194, 0, BLOCKF_EVERYTHING);
}

//Stuck Gates Fight
Script 32 (void)
{
	Thing_Activate(171);
	Thing_Hate(171, 170, 3);
	//Thing_Hate(171, 173, 2);
	//Thing_Hate(171, 0, 6);
	Delay(140);
	Radius_Quake(2, 105, 0, 1, 0);
	SpawnSpot("ExplosionHuge", 172, 0, 0);
}

//Urchin Ambushes
Script 33 (void)
{
	Delay(50);
	Ceiling_RaiseByValue(178, 16, 36);
}

Script 36 (void)
{
	Delay(35);
	Ceiling_RaiseByValue(179, 16, 36);
}

//Initiate Hate
Script 35 (void)
{
	Thing_Activate(183);
	Delay(8);
	Thing_Hate(183, 184, 0);
}

Script 37 (void)
{
	Thing_Remove(183);
	Thing_Remove(184);
	SpawnSpotForced("Initiate", 186, 214, 64);

}

//First Big Battle
Script 40 (void)
{
	SetActorAngle(171, 0.25);
	Thing_Activate(208);
	Thing_Activate(212);
	Thing_Hate(208, 202, 4);
	Thing_Hate(208, 203, 4);
	Thing_Hate(208, 204, 4);
	Thing_Hate(208, 205, 4);
	Thing_Hate(208, 217, 4);
	Thing_Hate(212, 202, 4);
	Thing_Hate(212, 203, 4);
	Thing_Hate(212, 204, 4);
	Thing_Hate(212, 205, 4);
	Thing_Hate(212, 217, 4);
	//Thing_Hate(171, 202, 4);
	//Thing_Hate(171, 203, 4);
	//Thing_Hate(171, 204, 4);
	//Thing_Hate(171, 205, 4);
	//Thing_Hate(171, 217, 4);
	Thing_Activate(209);
	Thing_SetGoal(209, 210, 0, 1);

    /*Thing_Hate(202, 212, 4);
	Thing_Hate(203, 212, 4);
	Thing_Hate(204, 212, 4);
	Thing_Hate(205, 212, 4);
	Thing_Hate(217, 212, 4);
	Thing_Hate(202, 209, 4);
	Thing_Hate(203, 209, 4);
	Thing_Hate(204, 209, 4);
	Thing_Hate(205, 209, 4);
	Thing_Hate(217, 209, 4);
	Thing_Hate(202, 208, 4);
	Thing_Hate(203, 208, 4);
	Thing_Hate(204, 208, 4);
	Thing_Hate(205, 208, 4);
	Thing_Hate(217, 208, 4);
	Thing_Hate(170, 212, 4);
	Thing_Hate(170, 209, 4);
	Thing_Hate(170, 208, 4);
	*/

	Delay(75*35);
	If(GetSectorCeilingZ(213, 0, 0) == -598.0)
	  {
		  Thing_Remove(216);
		  Ceiling_RaiseByValue(213, 16, 210);
		  Line_SetBlocking(218, BLOCKF_MONSTERS, 0);
		  Delay(35);
		  Thing_SetGoal(214, 215, 0, 1);

	      If(CheckProximity(0, "IDBearWarrior", 320.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 320.0, 1) || CheckProximity(0, "IDBearWarriorStationary", 320.0, 1))
          {
        	Hudmessage(s:"Bear Warrior:    They're opening the Council Room! Get ready for another wave!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
          }
        	else
	        If(CheckProximity(0, "IDReaver", 320.0, 1) || CheckProximity(0, "IDReaverGuarding", 320.0, 1) || CheckProximity(0, "IDReaverStationary", 320.0, 1))
            {
	        Hudmessage(s:"Reaver:    They're opening the Council Room! Brace the defenses!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
            }
	  }
}

//Council Room Opening
Script 43 (void)
{
  If(GetSectorCeilingZ(213, 0, 0) == -598.0 && ThingCountName("SniperCultist", 212) == 0 && ThingCountName("Crawler", 212) == 0 && ThingCountName("Warlock", 212) == 0 && ThingCountName("ForgeElemental", 212) == 0)
	{
	Thing_Remove(216);
	Ceiling_RaiseByValue(213, 16, 210);
	Line_SetBlocking(218, BLOCKF_MONSTERS, 0);
	Delay(35);
	Thing_SetGoal(214, 215, 0, 1);
	If(GetActorProperty(217, APROP_Health) >= 1)
	{
	Hudmessage(s:"Reaver:    They're opening the Council Room! Brace the defenses!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(217, "Reaver/Huh", CHAN_AUTO);
	}
	else
	  If(GetActorProperty(203, APROP_Health) >= 1)
	  {
	  Hudmessage(s:"Reaver:    They're opening the Council Room! Brace the defenses!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
      PlaySound(203, "Reaver/Huh", CHAN_AUTO);
	  }
	  else
	    If(GetActorProperty(204, APROP_Health) >= 1)
	    {
	    Hudmessage(s:"Reaver:    They're opening the Council Room! Brace the defenses!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
        PlaySound(204, "Reaver/Huh", CHAN_AUTO);
	    }
		else
		  If(GetActorProperty(205, APROP_Health) >= 1)
	      {
		  Hudmessage(s:"Bear Warrior:    They're opening the Council Room! Get ready for another wave!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	      PlaySound(205, "BearWarrior/Huh", CHAN_AUTO);
		  }
		  else
			If(GetActorProperty(202, APROP_Health) >= 1)
	        {
	        Hudmessage(s:"Bear Warrior:    They're opening the Council Room! Get ready for another wave!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	        PlaySound(202, "BearWarrior/Huh", CHAN_AUTO);
	        }
			else
			If(GetActorProperty(206, APROP_Health) >= 1)
	        {
	        Hudmessage(s:"Reaver:    They're opening the Council Room! Brace the defenses!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
            PlaySound(206, "Reaver/Huh", CHAN_AUTO);
	        }
	  }
}

//Part Two Fight
Script 88 (void)
{
	Thing_Remove(259);
	TakeInventory("ScriptIsPlayingUnderworldIntro", 1);
	SetLineSpecial(248, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(168, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(168, 0, BLOCKF_EVERYTHING);
	PlaySound(250, "PitLord/Sight", CHAN_AUTO, 1.0, FALSE, ATTN_NONE);
	Delay(24);
	If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1) || CheckProximity(0, "IDBearWarriorStationary", 640.0, 1))
          {
        	Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_UNTRANSLATED, 1.5, 0.86, 0.1, 0.1, 0.1);
			Hudmessage(s:"Bear Warrior:    Look out! Right corridor!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 1.5, 0.2, 0.5);
          }
        	else
	        If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1) || CheckProximity(0, "IDReaverStationary", 640.0, 1))
            {
			Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_UNTRANSLATED, 1.5, 0.86, 0.1, 0.1, 0.1);
	        Hudmessage(s:"Reaver:    Look out! Right corridor!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 1.5, 0.2, 0.5);
            }
	SpawnSpotForced("PitLord", 250, 594, 64);
	SpawnSpotForced("Cerberus", 251, 0, 64);
	SpawnSpotForced("SniperCultist", 252, 0, 64);
	SpawnSpotForced("PitLord", 253, 0, 128);
	SpawnSpotForced("Initiate", 254, 0, 128);
	Delay(50);
	PolyObj_DoorSlide(181, 48, 0, 112, 0x7FFFFFFF);
	PolyObj_DoorSlide(361, 48, 128, 112, 0x7FFFFFFF);
	If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1) || CheckProximity(0, "IDReaverStationary", 1280.0, 1))
            {
			Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_UNTRANSLATED, 1.5, 0.86, 0.1, 0.1, 0.1);
	        Hudmessage(s:"Reaver:    A demon!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
            }
        	else
	        If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1) || CheckProximity(0, "IDBearWarriorStationary", 1280.0, 1))
            {
			Hudmessage(s:" "; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_UNTRANSLATED, 1.5, 0.86, 0.1, 0.1, 0.1);
        	Hudmessage(s:"Bear Warrior:    A demon!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
            }
	Delay(20);
	SpawnSpotForced("DustCloud", 249, 0, 0);
	SpawnSpotForced("SparkGenerator", 249, 0, 0);
	Radius_Quake(6, 70, 0, 1, 0);
	SetActorAngle(594, 0.25);
	SetActorState(594, "Melee", 0);
	PlaySound(250, "PitLord/Rage", CHAN_AUTO, 1.0, FALSE, ATTN_NONE);
	Delay(70);
	Thing_Hate(594, 0, 0);
	If(CheckInventory("ScriptStoppedPlayingUnderworldIntro") > 0)
	{
	SetMusic("HTrack19");
	}
}

//UnderWorld Music Intro
Script 89 (void)
{
	PlaySound(0, "Music/UnderworldIntro", CHAN_AUTO);
    GiveInventory("ScriptIsPlayingUnderworldIntro", 1);
	Delay(60*35);
	GiveInventory("ScriptStoppedPlayingUnderworldIntro", 1);
	If(CheckInventory("ScriptIsPlayingUnderworldIntro") == 0)
	{
	TakeInventory("ScriptStoppedPlayingUnderworldIntro", 1);
	SetMusic("HTrack19");
	}
}

//DIALOGUE
//FOLLOWERS
//Boss Pentagram Hall
Script 92 (void)
{
	If(CheckProximity(0, "Cultist", 2400.0, 0, CPXF_EXACT) && CheckProximity(0, "Initiate", 2400.0, 0, CPXF_EXACT) && CheckProximity(0, "Cerberus", 2400.0, 0, CPXF_EXACT) && CheckProximity(0, "PitLord", 2400.0, 0, CPXF_EXACT))
	{
	 SetLineSpecial(257, 0, 0, 0, 0, 0, 0);
	 If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1))
          {
        	Hudmessage(s:"Bear Warrior:    Look at this thing... What the fuck were they trying to conjure here?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
            Delay(5*35);
	        If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
            {
	        Hudmessage(s:"Reaver:    Guess we'll soon find out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
            }
		  }
        	else
	        If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
            {
	        Hudmessage(s:"Reaver:    This pentagram is huge... wonder what they were trying to conjure here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
            Delay(5*35);
	        If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1))
            {
	        Hudmessage(s:"Guess we'll soon find out."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
            }
			}
	}
}

//Library Shutter
Script 95 (void)
{
	 If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1) && GetSectorCeilingZ(265, 0, 0) > -390.0)
            {
			SetLineSpecial(271, 0, 0, 0, 0, 0, 0);
	        Hudmessage(s:"Reaver:    Looks like they've closed down the shutter gate from inside."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);
            Delay(4*35);
	        If(CheckProximity(0, "IDReaver", 1280.0, 1) || CheckProximity(0, "IDReaverGuarding", 1280.0, 1) && GetSectorCeilingZ(265, 0, 0) > -390.0)
              {
	          Hudmessage(s:"Gotta find a way to open it... I can also hold here and attack them when it goes up if you wish."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 6.5, 0.2, 0.5);
              Delay(7*35);
			  If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1) && GetSectorCeilingZ(265, 0, 0) > -390.0)
                {
			      SetLineSpecial(271, 0, 0, 0, 0, 0, 0);
        	      Hudmessage(s:"Bear Warrior:    Not a bad idea, I'll stay here too if you want, sarge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
                }
			  }
			}
        	else
	        If(CheckProximity(0, "IDBearWarrior", 1280.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1280.0, 1) && GetSectorCeilingZ(265, 0, 0) > -390.0)
            {
			SetLineSpecial(271, 0, 0, 0, 0, 0, 0);
        	Hudmessage(s:"Bear Warrior:    Damn it, they've locked us out with that shutter. There should be a way to open it..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
            }
}

//Trapped Bear
Script 99 (void)
{
	SetLineSpecial(294, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(271, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(291, 32, 480);
	Delay(1);
	Floor_RaiseByValue(291, 32, 480);
	Delay(70);
	Ceiling_LowerByValue(292, 8, 95);
	TagWait(292);
	Line_SetBlocking(294, 0, BLOCKF_EVERYTHING);
	Ceiling_RaiseByValue(289, 16, 128);
	TagWait(289);
	Ceiling_LowerByValue(295, 99999, 159);
	Delay(4);
	If(GetActorProperty(288, APROP_Health) >= 1)
	{
	Thing_Remove(288);
	SpawnSpotForced("IDBearWarrior", 293, 0, 0);
	Delay(35);
	Hudmessage(s:"Bear Warrior:    Phew, thanks for the rescue! The bastards trapped me inside this tank!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	Delay(3*35);
	Delay(18);
	Hudmessage(s:"They've set up in the library ahead. We could breach in from here, take 'em unprepared."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.5, 0.2, 0.5);
	}

}

Script 100 (void)
{
	If(GetActorProperty(288, APROP_Health) >= 1)
	{
	SetActorAngle(288, 0.6);
	PlaySound(288, "BearWarrior/Ha", CHAN_AUTO, 0.2);
	Hudmessage(s:"Bear Warrior:    *Muffled* Heeey, get me out of here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	Delay(1);
	SetActorAngle(288, 0.6);
	}

}

Script 101 (void)
{
	If(GetActorProperty(288, APROP_Health) >= 1)
	{
	SetActorAngle(288, 0.5);
	PlaySound(288, "BearWarrior/Ha", CHAN_AUTO, 0.2);
	Hudmessage(s:"Bear Warrior:    The pump is right there, turn it on and get me out of here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(1);
	SetActorAngle(288, 0.5);
	Delay(3*35);
	}
}

//Library Lancer
Script 102 (void)
{
	If(GetActorProperty(300, APROP_Health) >= 1)
	{
	PlaySound(300, "Lancer/Ha", CHAN_AUTO);
	Thing_Remove(300);
	SpawnSpotForced("IDLancer", 304, 0, 0);
	Hudmessage(s:"Lancer:    A timely arrival, sergeant. I could use your help."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
	}
}

//Library Gate 2 Switch
Script 103 (void)
{
	 If(CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1))
	 {
	   Hudmessage(s:"Lancer:    I heard Nithriel and a demon passing by a while ago. He sounded awfully... large."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
	 }
}

//Western Wing
Script 104 (void)
{
	 If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
            {
			SetLineSpecial(310, 0, 0, 0, 0, 0, 0);
	        Hudmessage(s:"Reaver:    Damn it, we're too late. Nithriel might have already breached the Heart!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);
            Delay(4*35);
	        If(CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1))
              {
	          Hudmessage(s:"Lancer:    Let us hurry, we've no time to waste!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
              }
			}
			else
			If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 640.0, 1))
            {
			SetLineSpecial(310, 0, 0, 0, 0, 0, 0);
	        Hudmessage(s:"Bear Warrior:    Damn it, we're too late. Nithriel's just shattered the defense!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
            Delay(4*35);
	        If(CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1))
              {
	          Hudmessage(s:"Lancer:    Let us hurry, we must stop her at all costs!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.5, 0.2, 0.5);
              }
			}
        	else
	        If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
            {
			SetLineSpecial(310, 0, 0, 0, 0, 0, 0);
        	Hudmessage(s:"Lancer:    Our sisters have fallen... we've no time to waste, Nithriel must be right by the Heart!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
            }
}

//Water Statue Hall
Script 105 (void)
{
	 Delay(35);
	 If(CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1))
	 {
	   Hudmessage(s:"Lancer:   Look alive! Time to make our founders proud."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
	 }
}

//Crystal Dome
Script 106 (void)
{
	 If(CheckProximity(0, "IDReaver", 960.0, 1) || CheckProximity(0, "IDReaverGuarding", 960.0, 1))
            {
			Thing_Remove(360);
	        Hudmessage(s:"Reaver:    The Crystal Heart... I've only heard stories about this place."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 4.0, 0.2, 0.5);
            Delay(4*35);
	        If(CheckProximity(0, "IDLancer", 960.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
              {
	          Hudmessage(s:"Lancer:    'tis the essence of our existence. And we are its only hope now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
              }
			}
			else
			If(CheckProximity(0, "IDBearWarrior", 960.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 960.0, 1))
            {
			Thing_Remove(360);
	        Hudmessage(s:"Bear Warrior:    So this is the Crystal Heart... this place is... weird."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
            Delay(4*35);
	        If(CheckProximity(0, "IDLancer", 960.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
              {
	          Hudmessage(s:"Lancer:    The birthplace of our generation. We are its only hope now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
              }
			}
        	else
	        If(CheckProximity(0, "IDLancer", 960.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
            {
			Thing_Remove(360);
        	Hudmessage(s:"Lancer:    Crystal Heart. Essence of our World, we come to defend you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
            }
}

//ABHAOTH
//Script 107 (void)
//{
//	Thing_Destroy(361);
//}

//DEFENDERS
//Hail Zan
Script 41 (void)
{
	If(GetActorProperty(202, APROP_Health) >= 1)
	{
	Hudmessage(s:"Bear Warrior:    Zan, over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.84, 3.0, 0.2, 0.5);
	PlaySound(202, "BearWarrior/Huh", CHAN_AUTO);
	}
	else
	  If(GetActorProperty(203, APROP_Health) >= 1)
	  {
	  Hudmessage(s:"Reaver:    Hey Zan, over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.84, 3.0, 0.2, 0.5);
      PlaySound(203, "Reaver/Huh", CHAN_AUTO);
	  }
	  else
	    If(GetActorProperty(204, APROP_Health) >= 1)
	    {
	    Hudmessage(s:"Reaver:    Hey Zan, over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.84, 3.0, 0.2, 0.5);
        PlaySound(204, "Reaver/Huh", CHAN_AUTO);
	    }
		else
		  If(GetActorProperty(205, APROP_Health) >= 1)
	      {
		  Hudmessage(s:"Bear Warrior:    Zan, over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.84, 3.0, 0.2, 0.5);
	      PlaySound(205, "BearWarrior/Huh", CHAN_AUTO);
		  }
		  else
		    If(GetActorProperty(217, APROP_Health) >= 1)
	        {
	   	    Hudmessage(s:"Reaver:    Hey Zan, over here!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.84, 3.0, 0.2, 0.5);
            PlaySound(217, "Reaver/Huh", CHAN_AUTO);
		    }
}

//Well met
Script 128 (void)
{
  If(GetActorProperty(202, APROP_Health) >= 1 || GetActorProperty(203, APROP_Health) >= 1 || GetActorProperty(204, APROP_Health) >= 1 || GetActorProperty(205, APROP_Health) >= 1 || GetActorProperty(217, APROP_Health) >= 1)
  {
	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
	{
	  SetLineSpecial(444, 0, 0, 0, 0, 0, 0);
	  SetFont("SMALLFONT");
	  Hudmessage(s:"Lancer:    Good to see you're still holding, sisters."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.82, 3.0, 0.2, 0.5);
	}
	else
	If(CheckProximity(0, "IDReaver", 640.0, 1) || CheckProximity(0, "IDReaverGuarding", 640.0, 1))
	{
	  SetLineSpecial(444, 0, 0, 0, 0, 0, 0);
	  SetFont("SMALLFONT");
	  Hudmessage(s:"Reaver:    Well met, sisters."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.82, 3.0, 0.2, 0.5);
	}
	else
	If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 640.0, 1))
	{
	  SetLineSpecial(444, 0, 0, 0, 0, 0, 0);
	  SetFont("SMALLFONT");
	  Hudmessage(s:"Bear Warrior:    Hail, sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.82, 3.0, 0.2, 0.5);
	}
  }
}

Script 42 (void)
{
	If(GetActorProperty(206, APROP_Health) >= 1)
	  {
	  SetLineSpecial(211, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Reaver:    Am I glad to see you, sergeant! We could really use your help!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
      PlaySound(206, "Reaver/Huh", CHAN_AUTO);
	  }
}

//Reaver Rescue
Script 44 (void)
{
	  SpawnSpotForced("IDReaverRecruitable", 207, 0, 0);
	  Delay(12);
	  Hudmessage(s:"Reaver:    Die y- ...Zan?! I can't believe it's you!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.82, 4.0, 0.2, 0.5);
      PlaySound(207, "Reaver/Huh", CHAN_AUTO);
	  Delay(150);
	  Hudmessage(s:"We've got to link back up with the defenders!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.82, 3.0, 0.2, 0.5);
	  Delay(70);
	  If(IsTIDUsed(219) && GameSkill() < SKILL_VERY_HARD)
	  {
		  Thing_Remove(219);
		  SetFont("SMALLFONT");
		  Hudmessage(s:"Tip: You can order certain friendlies to follow you/hold position with the Use key \c[White](DEFAULT: E)\c-."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	  }
}

//Orc Survivors
Script 45 (void)
{
	If(ThingCountName("IDReaverRecruitable", 170) > 0 || ThingCountName("IDBearWarriorRecruitable", 170) > 0)//GetActorProperty(170, APROP_Health) >= 1)
	  {
	  SetLineSpecial(220, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Iron Division Survivor:    Hey, Zan, you're alive! Let's kick some cultist ass!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKGREEN, 1.5, 0.82, 4.0, 0.2, 0.5);
	  Delay(150);
	  Delay(16);
	  If(IsTIDUsed(219) && GameSkill() < SKILL_VERY_HARD)
	  {
		  Thing_Remove(219);
		  SetFont("SMALLFONT");
		  Hudmessage(s:"Tip: You can order certain friendlies to follow you/hold position with the Use key \c[White](DEFAULT: E)\c-."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	  }
	  }
}

//Glass Break Complaints
int spec139a = 0;
int spec139b = 0;
int spec139c = 0;
int spec139d = 0;
Script 139 (void)
{
	If(ThingCount(T_NONE, 66) < 2 && IsTIDUsed(240) && spec139a == 0)
	{
	  spec139a += 1;
	  Hudmessage(s:"Bear Warrior:    Hey, stop that! We need these bowls."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
	  PlaySound(240, "BearWarrior/Huh", CHAN_AUTO);
	}
	If(ThingCount(T_NONE, 67) < 2 && spec139b == 0)
	{
	  spec139b += 1;
	  Hudmessage(s:"Witch:    The fuck are you doing? Knock it off!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.0, 0.2, 0.5);
	  PlaySound(232, "Witch/Ha", CHAN_AUTO);
	}
	If(ThingCount(T_NONE, 68) < 2 && spec139c == 0)
	{
	  spec139c += 1;
	  Hudmessage(s:"Earth Mother:    What are you doing, Zan?! I really need the mana..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.0, 0.2, 1.5);
	  PlaySound(234, "EarthMother/Hmm", CHAN_AUTO);
	}
	If(ThingCount(T_NONE, 69) < 1 && spec139d == 0)
	{
	  spec139d += 1;
	  Hudmessage(s:"Wounded Shieldguard:    Aye, aye, what good is a bottle if it's empty?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 2.0, 0.2, 1.5);
	  PlaySound(225, "Andrik/Grumble", CHAN_AUTO);
	}
	Delay(16);
	Restart;
}

//DURA
//Hail
Script 46 (void)
{
	Hudmessage(s:"Captain Dura:    Well, well, well, look who made it... "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.5, 0.2, 0.5);
	PlaySound(224, "BearWarrior/Ha", CHAN_AUTO);
	SetLineSpecial(444, 0, 0, 0, 0, 0, 0);
}

Script 50 (void)
{
	If(CheckInventory("ScriptHasCompletedDendrasDialogue") == 0);
	{
	Thing_Remove(227);
	Hudmessage(s:"Captain Dura:    Dendra wants to talk to you, she's in the patio behind us."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 3.5, 0.2, 0.5);
	PlaySound(224, "BearWarrior/Hmm", CHAN_AUTO);
	}
}

Script 47 (void)
{
	SetLineSpecial(225, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    I'd rather have my Crushbow at hand if you don't mind. We have other supplies to spare if you need 'em."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    PlaySound(224, "BearWarrior/Hmm", CHAN_AUTO);
}

//Good Hunting
int spec90 = 0;
Script 90 (void)
{
	If(IsTIDUsed(662) && spec90 == 0)
	{
		spec90 += 1;
		Hudmessage(s:"Lancer Dendra:    The crystal key, Zan. Don't forget to take it before you leave."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.82, 4.0, 0.2, 1.5);
	    PlaySound(226, "Lancer/Hmm", CHAN_AUTO);
	}
	else
	If(IsTIDUsed(662) == 0)
	{
	  SetLineSpecial(255, 0, 0, 0, 0, 0, 0);
	  Hudmessage(s:"Captain Dura:    Good hunting, warrior."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 2.0, 0.2, 1.5);
	  PlaySound(224, "BearWarrior/Huh", CHAN_AUTO);
	}
}

//Chatter
Script 52 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    So, Tiati saved your ass, eh? She's not here if you wanna thank her, Dendra sent her on recon duty."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 7.0, 0.2, 0.5);
	PlaySound(224, "BearWarrior/Hmm", CHAN_AUTO);
	Delay(7*35);
	SetLineSpecial(228, ACS_Execute, 61, 0, 0, 0, 0);
}
Script 61 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    I was at the Witch Clinic just over a week ago. Everything looked so... normal back then."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(228, ACS_Execute, 53, 0, 0, 0, 0);
}
Script 53 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    That bitch Lith was behind all this mess! I still can't believe what she did. She's ruined us..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(228, ACS_Execute, 54, 0, 0, 0, 0);
}
Script 54 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    Bah, to all Hells with Lith! We gotta focus on the battle at hand. We haven't come this far to lose it now!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(224, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(6*35);
	SetLineSpecial(228, ACS_Execute, 55, 0, 0, 0, 0);
}
Script 55 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    It looks like the cultists have taken a break from attacking this wing. They're up to something..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	PlaySound(224, "BearWarrior/Hmm", CHAN_AUTO);
	Delay(6*35);
	SetLineSpecial(228, ACS_Execute, 56, 0, 0, 0, 0);
}
Script 56 (void)
{
	SetLineSpecial(228, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Captain Dura:    Good to have you on board, sergeant. Must have been a hell to make it here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_BROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(228, ACS_Execute, 52, 0, 0, 0, 0);
}

//DENDRA
//Hail
Script 49 (void)
{
	Hudmessage(s:"Lancer Dendra:    Over here, Zan."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.82, 2.0, 0.2, 0.5);
	PlaySound(226, "Lancer/Ha", CHAN_AUTO);
}

//Briefing
Script 82 (void)
{
		SetLineSpecial(241, 0, 0, 0, 0, 0, 0);

		SetWeapon("Fists");
		SetActorProperty(0, APROP_Speed, 0.0);
		SetActorProperty(0, APROP_Friction, 0.1);
		Delay(4);
		ACS_NamedExecuteWithResult("TakeWeapons");

		Hudmessage(s:"Lancer Dendra:   At last, you have arrived. I am Lancer Dendra and I've assumed command of the remnants here..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.0, 0.1, 1.0);
		PlaySound(226, "Lancer/Heh", CHAN_AUTO);

		Delay(105);
		FadeTo(0, 0, 0, 1.0, 3.0);
	    Delay(105);
		ACS_Execute(224, 0, 0, 0, 0); //skip Briefing
	    Delay(145);

	    FadeTo(0, 0, 0, 0.0, 3.0);
		Delay(35);
		Hudmessage(s:"Tiati has informed me about your... unexpected return to Valc. She's also found out about Lith's betrayal and"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"this Nithriel character that so eagerly wants to break us apart.  Alas, we have no time to fret so I'll be brief.  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		PlaySound(226, "Lancer/Hmm", CHAN_AUTO);
		Delay(15*35);
		Hudmessage(s:"Thanks to you powering up the Parapet ward, Nithriel's ability to teleport more cultists in has been severed, thus"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"allowing us to hold the defense of this wing. Behind us lies the very Crystal Heart - which we shall die protecting.  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		Delay(15*35);
		Hudmessage(s:"In our desperation, we called for the power of the Earth, and collapsed as many entrances in the temple   "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"as we could. We bought time, but also blocked ourselves from reaching the defenders in the western wing..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		PlaySound(226, "Lancer/Hmm", CHAN_AUTO);
		Delay(15*35);
		Hudmessage(s:"That is the only other place to access the Heart.    We used to keep in touch with the Lancers in there   "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"through the crystal ball but we've recently lost all contact. The cultists have so far focused on us..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		Delay(15*35);
		Hudmessage(s:"But a few hours ago, Nithriel has vanished from the front line, leaving a handful of her minions to keep us "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"busy here. I've sent Tiati to find out what she's up to, but she hasn't returned yet. I fear for the worst..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		Delay(15*35);

		Hudmessage(s:"Yes, I need you to go find out what Nithriel is up to.   It will not be an easy task, but you shall not be  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"on your own. As a sergeant of the Bear Warriors, I shall entrust you with commanding your own squad."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		PlaySound(226, "Lancer/Heh", CHAN_AUTO);
		Delay(15*35);
		Hudmessage(s:"Take along a few sisters to aid you, if you wish.  You will also need this crystal key to gain further "; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"access. Now take whatever supplies you need, and get going. Find out what Nithriel is trying to do..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
		SpawnSpotForced("CrystalKey", 242, 662, 0);
		PlaySound(242, "Ammo/DepletedShardBounce", CHAN_AUTO);
		Thing_Remove(238);
		SpawnSpotForced("IDReaverRecruitable", 243, 238, 196);
		SetLineSpecial(255, ACS_Execute, 90, 0, 0, 0, 0);
		SetLineSpecial(246, ACS_Execute, 86, 0, 0, 0, 0);
		SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
		Thing_Remove(240);
		Thing_Remove(245);
		SpawnSpotForced("IDBearWarriorRecruitable", 244, 240, 64);
		SetLineSpecial(247, ACS_Execute, 87, 0, 0, 0, 0);
		SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
		Delay(15*35);

		Hudmessage(s:"Oh, and one more thing...  we don't need to know what happened to the campaign, Zan. Morale is low enough"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.84, 15.0, 0.1, 0.2);
		Hudmessage(s:"already, and knowing that we might be the last of our kind won't help us now.     Keep the story for after.  "; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 15.0, 0.1, 0.2);
        PlaySound(226, "Lancer/Ha", CHAN_AUTO);
		Delay(15*35);

		Autosave();
		//PlaySound(0, "Music/UnderworldIntro", CHAN_AUTO);
		Acs_Execute(89, 0, 0, 0, 0);
		SetLineSpecial(248, ACS_Execute, 88, 0, 0, 0, 0);
		//GiveInventory("ScriptIsPlayingUnderworldIntro", 1);

		ACS_NamedExecuteWithResult("GiveWeapons");
		SetActorProperty(0, APROP_SPEED, 1.0);
		SetActorProperty(0, APROP_Friction, 1.0);

		SetLineSpecial(241, ACS_Execute, 83, 0, 0, 0, 0);

		SetLineSpecial(450, ACS_Execute, 132, 0, 0, 0, 0);
}

//skip Briefing
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
	ACS_Terminate(82, 0);

	Hudmessage(s:"Lancer Dendra:   Take a few warriors and find out what Nithriel is up to - she might try to break through the west wing!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 6.0, 0.1, 0.2);
	PlaySound(226, "Lancer/Heh", CHAN_AUTO);

	SpawnSpotForced("CrystalKey", 242, 662, 0);
	PlaySound(242, "Ammo/DepletedShardBounce", CHAN_AUTO);
	Thing_Remove(238);
	SpawnSpotForced("IDReaverRecruitable", 243, 238, 196);
	SetLineSpecial(255, ACS_Execute, 90, 0, 0, 0, 0);
	SetLineSpecial(246, ACS_Execute, 86, 0, 0, 0, 0);
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Thing_Remove(240);
	Thing_Remove(245);
	SpawnSpotForced("IDBearWarriorRecruitable", 244, 240, 64);
	SetLineSpecial(247, ACS_Execute, 87, 0, 0, 0, 0);
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);

	//Autosave();
	//PlaySound(0, "Music/UnderworldIntro", CHAN_AUTO);
	Acs_Execute(89, 0, 0, 0, 0);
	SetLineSpecial(248, ACS_Execute, 88, 0, 0, 0, 0);
	//GiveInventory("ScriptIsPlayingUnderworldIntro", 1);

	ACS_NamedExecuteWithResult("GiveWeapons");
	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_Friction, 1.0);

	SetLineSpecial(241, ACS_Execute, 83, 0, 0, 0, 0);

	SetLineSpecial(450, ACS_Execute, 132, 0, 0, 0, 0);

	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(105);
	Autosave();
}

//Is that my lance?
Script 132 (void)
{
	If(CheckInventory("ScriptHasTakenDendrasCrylance") > 0 && CheckWeapon("Crylance"))
	{
	SetLineSpecial(450, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Lancer Dendra:    By the way, is that... my Crylance that you're carrying? Nevermind, must be a coincidence..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_CYAN, 1.5, 0.84, 6.0, 0.2, 0.5);
	PlaySound(226, "Lancer/Ha", CHAN_AUTO);
	}
}


//Dendra Chatter
Script 83 (void)
{
	If(GetActorProperty(226, APROP_Health) > 0)
	{
	SetLineSpecial(241, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Lancer Dendra:   I'd say Nithriel is trying to shift her remaining forces towards the western wing."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_CYAN, 1.5, 0.86, 5.0, 0.1, 0.2);
	PlaySound(226, "Lancer/Heh", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(241, ACS_Execute, 84, 0, 0, 0, 0);
	}
}
Script 84 (void)
{
	If(GetActorProperty(226, APROP_Health) > 0)
	{
	SetLineSpecial(241, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Lancer Dendra:   If the cultists are indeed pushing west, then the defenders across will need you to reinforce them."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_CYAN, 1.5, 0.86, 6.0, 0.1, 0.2);
	Delay(6*35);
	SetLineSpecial(241, ACS_Execute, 85, 0, 0, 0, 0);
	}
}
Script 85 (void)
{
	If(GetActorProperty(226, APROP_Health) > 0)
	{
	SetLineSpecial(241, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Lancer Dendra:   You must hurry! If they manage to breach into the Heart we will be doomed!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_CYAN, 1.5, 0.86, 5.0, 0.1, 0.2);
	PlaySound(226, "Lancer/Ha", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(241, ACS_Execute, 83, 0, 0, 0, 0);
	}
}


//TIATI
Script 116 (void)
{
	If(GetActorProperty(387, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Tiati:    Go get her! You can't let her take the Disk!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(3*35);
	SetLineSpecial(388, ACS_Execute, 117, 0, 0, 0, 0);
	}
}
Script 117 (void)
{
	If(GetActorProperty(387, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Tiati:    Her magic is simply too strong... she managed to conjure this giant demon..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(387, "Reaver/Huh", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(388, ACS_Execute, 118, 0, 0, 0, 0);
	}
}
Script 118 (void)
{
	If(GetActorProperty(387, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Tiati:    I'll be fine. Stop wasting time!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(387, "Reaver/Pain", CHAN_AUTO);
	Delay(3*35);
	SetLineSpecial(388, ACS_Execute, 116, 0, 0, 0, 0);
	}
}


//WOUNDED FIXER
Script 72 (void)
{
	If(GetActorProperty(236, APROP_Health) > 0)
	{
	Hudmessage(s:"Wounded Fixer:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_ORANGE, 1.5, 0.86, 2.0, 0.2, 0.5);
	Delay(2*35);
	}
}

//BEAR WARRIOR GUARD
Script 57 (void)
{
	If(GetActorProperty(230, APROP_Health) > 0)
	{
	SetLineSpecial(229, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    You're a sight for sore eyes, sarge. Are our sisters finally sending back reinforcements?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.82, 6.0, 0.2, 0.5);
	PlaySound(230, "BearWarrior/Huh", CHAN_AUTO);
	Delay(6*35);
	SetLineSpecial(229, ACS_Execute, 58, 0, 0, 0, 0);
	}
}
Script 58 (void)
{
	If(GetActorProperty(230, APROP_Health) > 0)
	{
	SetLineSpecial(229, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    We carved our way here from the Barracks with Captain Dura. These cultists are everywhere!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.82, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(229, ACS_Execute, 59, 0, 0, 0, 0);
	}
}
Script 59 (void)
{
	If(GetActorProperty(230, APROP_Health) > 0)
	{
	SetLineSpecial(229, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    Sounded like a hell of a fight outside. Too bad Dura ordered me to stay here and protect the wounded."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.82, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(229, ACS_Execute, 60, 0, 0, 0, 0);
	}
}
Script 60 (void)
{
	If(GetActorProperty(230, APROP_Health) > 0)
	{
	SetLineSpecial(229, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    Don't know for how long we can keep holding up. We barely have supplies for another day..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKBROWN, 1.5, 0.82, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(229, ACS_Execute, 57, 0, 0, 0, 0);
	}
}

//WOUNDED DWARF SHIELDGUARD
Script 62 (void)
{
	If(GetActorProperty(225, APROP_Health) > 0)
	{
	SetLineSpecial(231, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Shieldguard:    Oh, no, no, I'm not wounded, I'm just... argh- layin' fer a bit..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(225, "Andrik/Cough", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(231, ACS_Execute, 63, 0, 0, 0, 0);
	}
}
Script 63 (void)
{
	If(GetActorProperty(225, APROP_Health) > 0)
	{
	SetLineSpecial(231, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Shieldguard:    Oh, I still 'ave some skulls to crack!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(3*35);
	SetLineSpecial(231, ACS_Execute, 64, 0, 0, 0, 0);
	}
}
Script 64 (void)
{
	If(GetActorProperty(225, APROP_Health) > 0)
	{
	SetLineSpecial(231, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Shieldguard:    What in all the Hells happened to Icepeak? Why aren't me brethren here yet, darn it!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(225, "Andrik/Mumble", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(231, ACS_Execute, 65, 0, 0, 0, 0);
	}
}
Script 65 (void)
{
	If(GetActorProperty(225, APROP_Health) > 0)
	{
	SetLineSpecial(231, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Shieldguard:    At least I'm surrounded by women. Aye, t'would be a good day to die..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GRAY, 1.5, 0.86, 4.0, 0.2, 0.5);
	Delay(4*35);
	SetLineSpecial(231, ACS_Execute, 62, 0, 0, 0, 0);
	}
}

//WOUNDED WITCH
Script 66 (void)
{
	If(GetActorProperty(232, APROP_Health) > 0)
	{
	SetLineSpecial(233, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Witch:    Buzz off."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(232, "Reaver/Hm", CHAN_AUTO);
	Delay(2*35);
	SetLineSpecial(233, ACS_Execute, 67, 0, 0, 0, 0);
	}
}
Script 67 (void)
{
	If(GetActorProperty(232, APROP_Health) > 0)
	{
	SetLineSpecial(233, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Witch:    Heard Tiati shot Lith like a fucking dog. I would have plucked her eyes out instead."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(233, ACS_Execute, 68, 0, 0, 0, 0);
	}
}
Script 68 (void)
{
	If(GetActorProperty(232, APROP_Health) > 0)
	{
	SetLineSpecial(233, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Witch:    Look, just go pester someone else..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_PURPLE, 1.5, 0.86, 3.0, 0.2, 0.5);
	Delay(3*35);
	SetLineSpecial(233, ACS_Execute, 66, 0, 0, 0, 0);
	}
}

//WOUNDED EARTH MOTHER
Script 69 (void)
{
	If(GetActorProperty(234, APROP_Health) > 0)
	{
	SetLineSpecial(235, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Earth Mother:    If you don't mind, I'd rather be left alone."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(234, "Lancer/Hmm", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(235, ACS_Execute, 70, 0, 0, 0, 0);
	}
}
Script 70 (void)
{
	If(GetActorProperty(234, APROP_Health) > 0)
	{
	SetLineSpecial(235, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Earth Mother:    It's hard enough to focus with this head wound, would you please move along?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(235, ACS_Execute, 71, 0, 0, 0, 0);
	}
}
Script 71 (void)
{
	If(GetActorProperty(234, APROP_Health) > 0)
	{
	SetLineSpecial(235, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Wounded Earth Mother:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_GREEN, 1.5, 0.86, 2.0, 0.2, 0.5);
	Delay(2*35);
	SetLineSpecial(235, ACS_Execute, 69, 0, 0, 0, 0);
	}
}

//RECOVERING REAVER
Script 73 (void)
{
	If(GetActorProperty(238, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    This is so bad... they've overwhelmed us from inside our own impenetrable stronghold."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(238, "Reaver/Hm", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(237, ACS_Execute, 74, 0, 0, 0, 0);
	}
}
Script 74 (void)
{
	If(GetActorProperty(238, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    I heard they took over the Plaza in mere minutes. Wonder if the Grove and Reaver HQ met the same fate."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(238, "Reaver/Huh", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(237, ACS_Execute, 75, 0, 0, 0, 0);
	}
}
Script 75 (void)
{
	If(GetActorProperty(238, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    I was close to the Lancer's temple when the invasion began. Had enough time to get here and regroup."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(237, ACS_Execute, 76, 0, 0, 0, 0);
	}
}
Script 76 (void)
{
	If(GetActorProperty(238, APROP_Health) > 0)
	{
	SetLineSpecial(237, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    Killed a few. Took a few hits as well. Nothing the right potion couldn't heal, though."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(237, ACS_Execute, 73, 0, 0, 0, 0);
	}
}

//Recovering Reaver Recruit
Script 86 (void)
{
	If(GetActorProperty(238, APROP_Health) > 0)
	{
	SetLineSpecial(246, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Reaver:    Setting off to stop the Warlock? I'm ready to join you."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(238, "Reaver/Hm", CHAN_AUTO);
	Delay(50);
	If(IsTIDUsed(219) && GameSkill() < SKILL_VERY_HARD)
	  {
		  Thing_Remove(219);
		  SetFont("SMALLFONT");
		  Hudmessage(s:"Tip: You can order certain friendlies to follow you/hold position with the Use key \c[White](DEFAULT: E)\c-."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	  }
	}
}

//RECOVERING BEAR
Script 77 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    So, you actually turned the anti-magic ward at the Parapet back on? That really saved our skin."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(5*35);
	SetLineSpecial(239, ACS_Execute, 78, 0, 0, 0, 0);
	}
}
Script 78 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    They wouldn't stop pouring out of those magic pentagrams. Seeing them fizzle was a huge relief!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(239, ACS_Execute, 79, 0, 0, 0, 0);
	}
}
Script 79 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    All this treachery and corruption... I heard Lith was downright possessed. She screwed us all over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(239, ACS_Execute, 81, 0, 0, 0, 0);
	}
}
Script 81 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	SetLineSpecial(239, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    We're low on supplies and our morale is even lower, but we'll protect the Heart to our last breath."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
	Delay(6*35);
	SetLineSpecial(239, ACS_Execute, 77, 0, 0, 0, 0);
	}
}

//Recovering Bear Recruit
Script 87 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	SetLineSpecial(247, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Bear Warrior:    So, you're moving out to the west wing? I'm at your command."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(240, "BearWarrior/Ha", CHAN_AUTO);
	Delay(50);
	If(IsTIDUsed(219) && GameSkill() < SKILL_VERY_HARD)
	  {
		  Thing_Remove(219);
		  SetFont("SMALLFONT");
		  Hudmessage(s:"Tip: You can order certain friendlies to follow you/hold position with the Use key \c[White](DEFAULT: E)\c-."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 15.0);
	  }
	}
}

//Food Warning
Script 80 (void)
{
	If(GetActorProperty(240, APROP_Health) > 0)
	{
	Hudmessage(s:"Bear Warrior:    Easy on the food, there isn't much left here."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
	PlaySound(240, "BearWarrior/Huh", CHAN_AUTO);
	SetActorAngle(240, 1.0);
	}
}

//EXTERIOR DEFENDERS
int dial133=3;
Script 133 (void)
{
If(GetActorProperty(206, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Reaver:    Dendra is in charge now. She's inside, go talk to her."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.82, 4.0, 0.2, 0.5);
    Delay(4*35);
  }
  else
If(GetActorProperty(206, APROP_Health) >= 1 && dial133 % 3 ==0)
  {
	Hudmessage(s:"Reaver:    Dendra is inside with the wounded, we must defend them!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.82, 4.0, 0.2, 0.5);
	PlaySound(206, "Reaver/Huh", CHAN_AUTO);
	dial133 += 1;
	Delay(4*35);
  }
  else
  If(GetActorProperty(206, APROP_Health) >= 1 && dial133 % 3 ==1)
  {
	Hudmessage(s:"Reaver:    Get whatever weapons and ammo you can and let's push them back!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.82, 4.0, 0.2, 0.5);
	dial133 += 1;
	Delay(4*35);
  }
  else
  If(GetActorProperty(206, APROP_Health) >= 1 && dial133 % 3 ==2)
  {
	Hudmessage(s:"Reaver:    Bastards!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_DARKRED, 1.5, 0.82, 1.0, 0.2, 0.5);
	PlaySound(206, "Reaver/Hm", CHAN_AUTO);
	dial133 += 1;
	Delay(1*35);
  }
}

Script 134 (void)
{
If(GetActorProperty(217, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Reaver:    What a mess..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 3.0, 0.2, 0.5);
    Delay(12*35);
  }
  else
If(GetActorProperty(217, APROP_Health) >= 1)
  {
	Hudmessage(s:"Reaver:    Not now, Sarge."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 2.0, 0.2, 0.5);
	Delay(2*35);
  }
}

Script 135 (void)
{
If(GetActorProperty(203, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Reaver:    We held them off... for now."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 3.0, 0.2, 0.5);
    Delay(12*35);
  }
  else
If(GetActorProperty(203, APROP_Health) >= 1)
  {
	Hudmessage(s:"Reaver:    Watch out for those toxic clouds!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 2.0, 0.2, 0.5);
	PlaySound(203, "Reaver/Hm", CHAN_AUTO);
	Delay(2*35);
  }
}

Script 136 (void)
{
If(GetActorProperty(204, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Reaver:    Don't know for how much longer we can hold out..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 4.0, 0.2, 0.5);
    Delay(12*35);
  }
  else
If(GetActorProperty(204, APROP_Health) >= 1)
  {
	Hudmessage(s:"Reaver:    ..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKRED, 1.5, 0.84, 2.0, 0.2, 0.5);
	Delay(2*35);
  }
}

Script 137 (void)
{
If(GetActorProperty(202, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Bear Warrior:    Fuck! Can't believe we survived that onslaught!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
    Delay(12*35);
  }
  else
If(GetActorProperty(202, APROP_Health) >= 1)
  {
	Hudmessage(s:"Bear Warrior:    For the Iron Division!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(202, "BearWarrior/Rage2", CHAN_AUTO);
	Delay(3*35);
  }
}

Script 138 (void)
{
If(GetActorProperty(205, APROP_Health) >= 1 && CheckInventory("EarthKey") > 0)
  {
	Hudmessage(s:"Bear Warrior:    Keep your eyes peeled, this isn't over."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
    PlaySound(205, "BearWarrior/Hmm", CHAN_AUTO);
	Delay(4*35);
  }
  else
If(GetActorProperty(205, APROP_Health) >= 1)
  {
	Hudmessage(s:"Bear Warrior:    Grrrh!..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 120, CR_DARKBROWN, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(205, "BearWarrior/Rage1", CHAN_AUTO);
	Delay(3*35);
  }
}

//DOORS & ELEVATORS
Script 29 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		Generic_Door(125, 16, 0, 69, 0);
		TagWait(125);
	}
	else
	Print(s:"This door requires a Crystal key to open.");
}

Script 129 (void)
{
	If(CheckInventory("CrystalKey") > 0)
	{
		Generic_Door(305, 16, 0, 69, 0);
		TagWait(305);
	}
	else
	{
	Print(s:"This door requires a Crystal key to open.");
	If(CheckProximity(0, "IDLancer", 1000.0, 1) || CheckProximity(0, "IDLancerGuarding", 1000.0, 1))
	  {
	  Delay(35);
	  Hudmessage(s:"Lancer:    I don't have any crystal key on me, we'll have to go back and search for someone who does."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	  Delay(6*35);
	  }
	}
}

Script 39 (void)
{
	If(CheckInventory("EarthKey") > 0)
	{
		Generic_Door(198, 16, 0, 34, 0);
		TagWait(198);
	}
	else
	Print(s:"This door requires an Earth key to open.");
}

Script 96 (void)
{
	Thing_Activate(301);
	Thing_Activate(302);
	FloorAndCeiling_LowerByValue(279, 32, 200);
	FloorAndCeiling_LowerByValue(280, 32, 200);
	TagWait(279);
	TagWait(280);
	Delay(4*35);
	FloorAndCeiling_RaiseByValue(279, 32, 200);
	FloorAndCeiling_RaiseByValue(280, 32, 200);
	TagWait(279);
	TagWait(280);
}

Script 98 (void)
{
	SetLineSpecial(271, 0, 0, 0, 0, 0, 0);
	Ceiling_RaiseByValue(265, 32, 312);
	Ceiling_RaiseByValue(277, 16, 138);
	Thing_Activate(301);
	Thing_Activate(302);
	Delay(50);
	NoiseAlert(0, 0);
	Delay(140);
	Thing_Hate(301, 300, 4);
}

//Elevator Crusher
Script 97 ENTER
{
	SectorDamage(280, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//PRINTS
Script 15 (void)
{
	SetFont("SMALLFONT");
    Print(s:"The fire won't yield.");
}

Script 30 (void)
{
	SetFont("SMALLFONT");
    Print(s:"The gates won't budge.");
	PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 7, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 8, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 10, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 11, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 12, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//MUSIC
Script 28 (void)
{
	SetLineSpecial(166, 0, 0, 0, 0, 0, 0);
	SetMusic("HTrak18A");
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


//PATREON DOOR
Script 112 (void)
{
	If(GetSectorCeilingZ(381, 0, 0) < -1108.0)
	{
		Ceiling_RaiseByValue(381, 32, 168);
	}
}

Script 113 (void)
{
	If(GetSectorCeilingZ(381, 0, 0) > -1108.0)
	{
		TagWait(381);
		Ceiling_LowerByValue(381, 32, 168);
	}
}

//PATREON
Script 499 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"Thanks to EVERYONE who financially supported Hedon on Patreon!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.42, 95.0);
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
    Hudmessage(s:"WELCOME TO HEDON'S CRYSTAL HEART PATREON GALLERY!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.44, 35.0);
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