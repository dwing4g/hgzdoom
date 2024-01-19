#include "zcommon.acs"


//LEVEL START
Script 1 ENTER
{
  ACS_NamedExecuteWithResult("FriendlySpawner");

  Floor_LowerByValue(1,4,88);
  Delay(105);
  SetMusic("HTrack17");

  SetActorFlag(112, "NOTONAUTOMAP", 1);
  SetActorFlag(112, "COUNTITEM", 0);

  Ceiling_Waggle (119, 24, 32, 0, 0);

  SetActorFlag(123, "NOTONAUTOMAP", 1);
  SetActorFlag(123, "COUNTITEM", 0);
  SetActorFlag(123, "NOINTERACTION", 1);
  SetActorFlag(127, "INVULNERABLE", 1);
}

Script 4 ENTER
{
	If(GameSkill() < SKILL_VERY_HARD)
	{
	Ceiling_Waggle (3, 12, 32, 0, 0);
	}
	If(GameSkill() >= SKILL_VERY_HARD)
	{
	Ceiling_LowerByValue(116, 99999, 112);
	}
	Ceiling_Waggle (90, 12, 32, 0, 0);
}

//LEVEL END
Script 54 (void)
{
	ACS_NamedExecuteWithResult("FriendlyCounter");

	Exit_Normal(0);
}

//DIALOGUE
Script 55 (void)
{
	If(GameSkill() >= SKILL_VERY_HARD)
	{
	Hudmessage(s:"Bear Warrior:    Sarge? What the hell is going on here?"; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(115, "BearWarrior/Ha", CHAN_AUTO);
	Delay(35*4);
	Hudmessage(s:"We should stick together, ready when you are."; HUDMSG_FADEINOUT | HUDMSG_LOG, 1, CR_DARKBROWN, 1.5, 0.86, 4.0, 0.2, 0.5);
	Ceiling_RaiseByValue(3, 16, 36);
	Delay(3*35);
	Hudmessage(s:"Tip: You can order companions to follow you or hold position by interacting with them \c[White](DEFAULT: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 10.0);
	}
}

Script 56 (void)
{
	If(CheckProximity(0, "IDBearWarrior", 560.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 560.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Looks like Dura's squad made it to the Forge, but the gate is closed. Gotta find another way."; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
    }
}

Script 57 (void)
{
	If(CheckProximity(0, "IDBearWarrior", 640.0, 1) || CheckProximity(0, "IDBearWarriorGuarding",640.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Curse these scumbags! We shall avenge our sisters!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 5.0, 0.2, 0.5);
    }
}

Script 58 (void)
{
  If(CheckProximity(0, "IDBearWarrior", 2000.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 2000.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    These bastards are everywhere! Let's hurry up, we can't let them take the Crystal Heart!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 6.0, 0.2, 0.5);
    Thing_Remove(128);
	}
}

//BREAKABLE WINDOW
Script 50 (void)
If(IsTIDUsed(108))
{
	Thing_Remove(108);
	SetLineTexture(104, SIDE_FRONT, TEXTURE_MIDDLE, "Glass01");
	SetLineTexture(104, SIDE_BACK, TEXTURE_MIDDLE, "Glass01");
	Line_SetBlocking(104, 0, 32);
	SpawnSpot("JunkBrokenGlassA", 105);
	SpawnSpot("JunkBrokenGlassA", 106);
	SpawnSpot("JunkBrokenGlassB", 107);
	PlaySound(105, "Weapons/PotionDie");
}

//LIFT CRUSHER
Script 53 ENTER
{
	SectorDamage(110, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	SectorDamage(111, 1000, "Crush", "", DAMAGE_PLAYERS | DAMAGE_NONPLAYERS | DAMAGE_NO_ARMOR);
	Delay(35);
	Restart;
}

//LIFTS & DOORS
Script 5 (void)
{
FloorAndCeiling_LowerByValue(110, 16, 256);
FloorAndCeiling_LowerByValue(9, 16, 256);
Tagwait(110);
Tagwait(9);
delay(105);
FloorAndCeiling_RaiseByValue(9, 16, 256);
FloorAndCeiling_RaiseByValue(110, 16, 256);
Tagwait(9);
Tagwait(110);
}

Script 20 (void)
{
Ceiling_RaiseByValue(27, 8, 48);
Tagwait(27);
Delay(350);
Ceiling_LowerByValue(27, 8, 48);
Tagwait(27);
}

Script 24 (void)
{
If ((GetActorZ(0) < 180.0) && CheckInventory("StoneKey") > 0)
  {
  Door_Open(38, 16, 0);
  Tagwait(38);
  Delay(105);
  Door_Close(38, 16, 0);
  Tagwait(38);
  }
    Else
    Print(s:"This switch requires a Stone key to open the door.");
}

Script 49 (void)
{
If ((GetActorZ(0) < 444.0) && CheckInventory("IronKey") > 0)
  {
  Door_Open(10, 16, 0);
  Tagwait(10);
  Delay(105);
  Door_Close(10, 16, 0);
  Tagwait(10);
  }
    Else
    Print(s:"This switch requires an Iron key to open the door.");
}

Script 25 (void)
{
FloorAndCeiling_LowerByValue(47, 4, 536);
tagwait(46);
Delay(400);
Thing_Destroy(667);
}

Script 30 (void)
{
FloorAndCeiling_LowerByValue(111, 32, 474);
FloorAndCeiling_LowerByValue(58, 32, 474);
Tagwait(111);
Tagwait(58);
delay(105);
FloorAndCeiling_RaiseByValue(58, 32, 474);
FloorAndCeiling_RaiseByValue(111, 32, 474);
Tagwait(58);
Tagwait(111);
}

//BATH HOUSE GATE & POWER
script 9 (void)
{
If(IsTIDUsed(16))
{
FloorAndCeiling_LowerByValue(15, 8, 36);
Delay(70);
Floor_LowerByValue(12, 3, 24);
Floor_RaiseByValue(13, 16, 136);
Delay(105);
Thing_Remove(16);
Floor_RaiseByValue(14, 16, 48);
If(GetActorProperty(95, APROP_Health) > 0 && GetActorProperty(94, APROP_Health) > 0)
{
TeleportOther(95, 93, 0);
TeleportOther(94, 92, 0);
}
}
}

script 23 (void)
{
If(IsTIDUsed(37))
{
FloorAndCeiling_LowerByValue(33, 8, 36);
Delay(70);
Floor_LowerByValue(34, 3, 24);
Floor_RaiseByValue(35, 16, 136);
Delay(105);
Thing_Remove(37);
Floor_RaiseByValue(36, 16, 48);
If(GetActorProperty(98, APROP_Health) > 0 && GetActorProperty(99, APROP_Health) > 0)
{
TeleportOther(98, 96, 0);
TeleportOther(99, 97, 0);
}
}
}

Script 32 (void)
{
	If(IsTIDUsed(16) || IsTIDUsed(37))
	{
	Print(s:"The gate must be fully powered first.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	}
	else
	{
	SetLineSpecial(129, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(61, 8, 128);
	}
}

//ABHAOTH SIGHTINGS
Script 12 (void)
{
	If (CheckInventory("ScriptHasReadDuraLog") >> 0)
	  If (IsTIDUsed (21))
	  {
	  Thing_Remove(21);
	  SpawnSpot("ShadowAbhaothLevitating", 22, 666);
	  SetActorFlag(666, "FLOATBOB", 1);
	  SetActorProperty(666, APROP_Speed, 0);
	  //SetActorProperty(666, APROP_FloatSpeed, 0);
	  }
}

Script 13 (void)
{
	If (CheckInventory("ScriptHasReadDuraLog") >> 0)
	  SetActorFlag(666, "FLOATBOB", 0);
	  SetActorProperty(666, APROP_Speed, 20);
	  //SetActorProperty(666, APROP_FloatSpeed, 20);
	  Thing_Hate(666, 23, 6);
      Delay(26);
	  Thing_Destroy(666);
}

Script 43 (void)
{
	  Delay(20);
	  Thing_Destroy(668);
}

//GYM AMBUSH
Script 21 (void)
{
Delay(70);
Thing_Spawn(28, 65004, 0, 0);
Thing_Spawn(29, 65004, 0, 0);
Thing_Spawn(30, 65004, 0, 0);
Delay(1);
NoiseAlert(0,0);
}

//DEPOT AMBUSH
Script 28 (void)
{
	If(IsTIDUsed(54) && CheckInventory("Crushbow") > 0)
	{
	Thing_remove(54);
	Delay(35);
	Thing_Spawn(50, 65000, 0, 0);
	Thing_Spawn(51, 65000, 0, 0);
	Thing_Spawn(52, 65000, 0, 0);
	Thing_Spawn(53, 65000, 0, 0);
	Delay(1);
	NoiseAlert(0,0);
	If(CheckProximity(0, "IDBearWarrior", 800.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 800.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Oh shit!!!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 1.0, 0.2, 0.5);
    }
	}
}

//BATH YARD AMBUSH
Script 34 (void)
{
	If(IsTIDUsed(80))
	{
	Thing_Destroy(80);
	Thing_Remove(117);
	Delay(16);
	//Ceiling_LowerByValue(81, 64, 168);
	Ceiling_LowerAndCrush(81, 96, 200, 0);
	Thing_Activate(64);
	Thing_Activate(66);
	Thing_Activate(67);
	Thing_Activate(68);
	Thing_Activate(69);
	Thing_Activate(70);
	Thing_Activate(113);
	NoiseAlert(0, 0);
	Delay(40);
	SetMusic("HTrack07");
	//SetMusicVolume(2.0);

	If(CheckProximity(0, "IDBearWarrior", 1200.0, 1) || CheckProximity(0, "IDBearWarriorGuarding", 1200.0, 1))
    {
	Hudmessage(s:"Bear Warrior:    Look out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_DARKBROWN, 1.5, 0.86, 3.0, 0.2, 0.5);
    }
	}
}

Script 35 OPEN
{
	While(ThingCount(65004, 64) > 0)
	Delay(1);
	Thing_Spawn(83, 65005, 0, 64);
	Delay(105);
	Thing_Spawn(71, 65004, 0, 64);
	Thing_Spawn(72, 65004, 0, 64);
	Thing_Spawn(73, 65004, 0, 64);
	Thing_Spawn(83, 65004, 0, 64);
	Thing_Spawn(84, 65004, 0, 64);
	NoiseAlert(0, 0);
}

Script 36 OPEN
{
	While(ThingCount(65004, 66) > 0)
	Delay(1);
	Thing_Spawn(85, 65005, 0, 66);
	Delay(105);
	Thing_Spawn(74, 65004, 0, 66);
	Thing_Spawn(75, 65001, 0, 66);
	Thing_Spawn(76, 65004, 0, 66);
	Thing_Spawn(85, 65004, 0, 66);
	Thing_Spawn(86, 65001, 0, 66);
	NoiseAlert(0, 0);
}

Script 37 OPEN
{
	While(ThingCount(65004, 67) > 0)
	Delay(1);
	Thing_Spawn(87, 65005, 0, 67);
	Delay(105);
	Thing_Spawn(77, 65004, 0, 67);
	Thing_Spawn(78, 65004, 0, 67);
	Thing_Spawn(79, 65004, 0, 67);
	Thing_Spawn(87, 65004, 0, 67);
	Thing_Spawn(88, 65004, 0, 67);
	NoiseAlert(0, 0);
}

Script 38 OPEN
{
	While(ThingCount(65004, 68) > 0)
	Delay(1);
	Thing_Spawn(83, 65005, 0, 68);
	Delay(105);
	Thing_Spawn(71, 65001, 0, 68);
	Thing_Spawn(72, 65004, 0, 68);
	Thing_Spawn(73, 65004, 0, 68);
	Thing_Spawn(83, 65004, 0, 68);
	Thing_Spawn(84, 65001, 0, 68);
	NoiseAlert(0, 0);
}

Script 39 OPEN
{
	While(ThingCount(65004, 69) > 0)
	Delay(1);
	Thing_Spawn(87, 65005, 0, 69);
	Delay(105);
	Thing_Spawn(77, 65001, 0, 69);
	Thing_Spawn(78, 65004, 0, 69);
	Thing_Spawn(79, 65001, 0, 69);
	Thing_Spawn(87, 65004, 0, 69);
	Thing_Spawn(88, 65004, 0, 69);
	NoiseAlert(0, 0);
}

Script 40 OPEN
{
	While(ThingCount(65004, 70) > 0)
	Delay(1);
	Thing_Spawn(85, 65005, 0, 70);
	Delay(105);
	Thing_Spawn(74, 65001, 0, 70);
	Thing_Spawn(75, 65004, 0, 70);
	Thing_Spawn(76, 65004, 0, 70);
	Thing_Spawn(85, 65004, 0, 70);
	Thing_Spawn(86, 65001, 0, 70);
	NoiseAlert(0, 0);
}

Script 41 OPEN
{
	While(ThingCount(65004, 64) > 0 || ThingCount(65004, 66) > 0 || ThingCount(65004, 67) > 0 || ThingCount(65004, 68) > 0 || ThingCount(65004, 69) > 0 || ThingCount(65004, 70) > 0 || ThingCount(65010, 113) > 0)
	Delay(35);
	Ceiling_RaiseByValue(81, 4, 168);
	Delay(175);
	Ceiling_RaiseByValue(65, 4, 112);
	Delay(210);
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
	Delay(105);
}

//BATH HOUSE HEALING POOL
Script 51 (void)
{
	If(IsTIDUsed(109)==1 && GetActorProperty(0, APROP_Health) <= 199)
	 {
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 GiveInventory("HealthBonus", 1);
		 Delay(8);
		 Thing_Remove(109);
	 }
}

//PRINTS & HUDMESSAGES

Script 2 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"To VALC'S BARRACKS AND BATH HOUSE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 3 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"TO VALC'S PLAZA"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 6 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The note looks like it was pinned on the nearby wall but got blown away onto the floor)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
    Hudmessage(s:"If any survivor gets here, we are holding up in the garrison so link up with us as soon as"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
	Hudmessage(s:"you can.   Make sure to hail us before entering the courtyard, or we might open fire on "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
    Hudmessage(s:"you. Oh, and if any of you cultist freaks can read this, come kiss our asses. -Cpt. Beza "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 7 (void)
{
	GiveInventory("ScriptHasReadDuraLog", 1);

	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 90.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Captain Dura's Log - Day 239"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 90.0);
	Hudmessage(s:"Valc is under attack! Our crystal barriers must have fallen somehow, since the invading force is using "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 90.0);
	Hudmessage(s:"powerful magic portals to bypass our outer defenses! I have linked up with Captain Beza and the rest "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.72, 90.0);
    Hudmessage(s:"of the garrison.  We are outnumbered, and we're barely holding the apartments.  We don't have enough"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.74, 90.0);
	Hudmessage(s:"supplies to survive a siege,  so we have decided to split up...     I will take six Bear Warriors and rush to "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 90.0);
	Hudmessage(s:"aid the Lancers guarding the Crystal Heart, since that's our grand duty. The Plaza path is blocked so "; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 90.0);
	Hudmessage(s:"our best shot is to move to the Forge and use the portal there to rally up with the Heart's Guardians. "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.80, 90.0);
    Hudmessage(s:"Beza will stay here with the goblins and hold the barracks. Or at least try to slow the new waves down."; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.82, 90.0);
	Hudmessage(s:"(A sentence has been added to the bottom, clearly written in haste by someone else. The ink hasn't dried.)"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.86, 90.0);
	Hudmessage(s:"We ran out of ammo... it's not even fair... Beza is dead... I've nowhere to fall back now. Remember us."; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.90, 90.0);
}

Script 8 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"BATH HOUSE GATE POWER - SOUTH HALF"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 10 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The parchments depict various sketches and schematics)"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 11 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 45.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"'tis a shame I couldn't find you before you set off. The matters of the Underworld are"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 45.0);
    Hudmessage(s:"ever pressing me. I hope you're all well. It is about time you and your orc sisters went"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.82, 45.0);
	Hudmessage(s:"to strike those chaotic savages.    Still,  as much as I like the scars,  try not to bring  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.84, 45.0);
    Hudmessage(s:"back any fresh ones.  I will be watching this conflict carefully, but my resources are  "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.86, 45.0);
	Hudmessage(s:"stretched thin.   Speaking of, you forgot your sentry toy by the temple, I dropped it   "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.88, 45.0);
	Hudmessage(s:"in the bedroom.    P.S. You need to find a better place to hide your apartment key. -A."; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.90, 45.0);
}

Script 22 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"BATH HOUSE GATE POWER - NORTH HALF"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 26 (void)
{
	If(GetActorZ(0) > -110.0)
	SetFont("SMALLFONT");
    Hudmessage(s:"HOW DID YOU GET HERE?"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 27 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"TO VALC'S GREAT FORGE"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 5.0);
}

Script 29 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.5, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"All our Crushbows are now enchanted with Air Magic, courtesy to the Lancers and Earth Mothers.       "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 25.0);
    Hudmessage(s:"This allows for deadly fast and accurate shots that pierce through all flesh and armor with ease.     "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.5, 25.0);
	Hudmessage(s:"Know that the magic force encasing the bolt dulls the explosion and fragmentation radius, but this  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.52, 25.0);
    Hudmessage(s:"can certainly be used to our advantage at closer range.   No demon will withstand this raw power.      "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.54, 25.0);

}

Script 31 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 25.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Beza, if you or your scouts read this,  know that we have carved our way into the Forge. "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.82, 25.0);
    Hudmessage(s:"The gates were open, so the cultists must have taken over the security posts in there.     "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 25.0);
	Hudmessage(s:"We'll lock them down behind us, as we were just ambushed by a wave spawning right into  "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 25.0);
    Hudmessage(s:"the depot here, and we can't risk getting flanked while pushing. We've loaded up on ammo"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 25.0);
	Hudmessage(s:"and potions but there's plenty supplies left around if you can get here. Good luck. - Dura"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 25.0);
}

Script 33 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"BATH HOUSE OF THE ANCIENTS"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"RESTORED AND PRESERVED BY GRAND EARTH MOTHER BREAZA"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 15.0);
}

Script 42 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"This wall remembers the western wing,  which was damaged beyond repair."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"The recovered materials have been used to restore the other bath chambers."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 15.0);
}

Script 44 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The ledger holds records of supplies brought in from the Forge) "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 10.0);
	Hudmessage(s:"(Several blank pages at the back seem to have been ripped away)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 10.0);
}

Script 45 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 75.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The scroll feels warm, and after unrolling it you notice the ink is still fresh)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.64, 75.0);
    Hudmessage(s:"Zan!   What the hell are you doing here?   Weren't you supposed to be off with our main  "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.68, 75.0);
	Hudmessage(s:"force to strike at Hell's core?  Unless... Look, the demons are way up our ass right now."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.70, 75.0);
	Hudmessage(s:"I saw you coming through the vision globe,  and I think I know where you're headed...     "; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.72, 75.0);
    Hudmessage(s:"Cultists are all over the place, and pretty much everyone got ambushed and killed in  "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.76, 75.0);
	Hudmessage(s:"mere moments. The Forge made no exception. An elven warlock seems to be leading this"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.78, 75.0);
	Hudmessage(s:"assault. Tough bitch, went straight through the lower Plaza and used magic to cave in"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.80, 75.0);
	Hudmessage(s:"the whole tunnel behind her...     The Lancers won't hold out forever,  and it's going to   "; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.82, 75.0);
	Hudmessage(s:"be hard for us to reach them and assist. Dura went through with five other orcs, and    "; HUDMSG_PLAIN | HUDMSG_LOG, 9, CR_UNTRANSLATED, 1.5, 0.84, 75.0);
	Hudmessage(s:"used the Forge portal to get there.   Or at least I think so, the warp looked unstable   "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_UNTRANSLATED, 1.5, 0.86, 75.0);
	Hudmessage(s:"to me.    She told me to get to Beza,  but I was too late,  so I am heading back to the    "; HUDMSG_PLAIN | HUDMSG_LOG, 11, CR_UNTRANSLATED, 1.5, 0.88, 75.0);
	Hudmessage(s:"Crystal Heart now.  Hurry up to the Forge, I'll keep the portal open.   -   Reaver Tiati   "; HUDMSG_PLAIN | HUDMSG_LOG, 12, CR_UNTRANSLATED, 1.5, 0.90, 75.0);
}

Script 46 (void)
{
	SetFont("SMALLFONT");
    Hudmessage(s:"By the time it was discovered,  this corridor had completely succumbed to ruin."; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.48, 15.0);
	Hudmessage(s:"The room beyond has been reconstructed from bare rock by the Earth Mothers' magic."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.50, 15.0);
}

Script 47 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Hey, can you go check out the vents behind the gym? The Bears keep telling me.  "; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 15.0);
	Hudmessage(s:"they hear some weird hissing noise.    Could be a fissure or perhaps some pests...   "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 15.0);
	Hudmessage(s:"Don't forget to take a fragfire can with you, you might have some purging to do."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
}

script 52 (void)
{
	SetFont("SMALLFONT");
	Hudmessage(s:"Tip: You can deploy Sentry Turrets from your inventory. "; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 8.0);
    Hudmessage(s:"Once deployed, you can move them around by interacting with them \c[White](DEFAULT: E)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.14, 8.0);
	//Hudmessage(s:"After you pick them up, you can place them back down using primary fire (DEFAULT: LMB)."; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_GOLD, 1.5, 0.16, 25.0);
	//Hudmessage(s:"However, you cannot undeploy them back to your inventory, so use them wisely."; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_GOLD, 1.5, 0.18, 25.0);
}

//SWINGING DOORS
Script 90 (void)
{
If (GetActorZ(0) < 147.0)
{
Polyobj_DoorSwing(90,16,64,105);
Polyobj_DoorSwing(269,-16,64,105);
}
}

Script 180 (void)
{
If (GetActorZ(0) < 400.0)
Polyobj_DoorSwing(180,16,64,105);
}

Script 270 (void)
{
If ((GetActorZ(0) < 400.0) && CheckInventory("AxeKey") > 0)
Polyobj_DoorSwing(270,16,64,105);
else
{
Print(s:"This door bears a strange feeling. The lock has a small axe symbol etched into it.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
}
}

Script 271 (void)
{
If (GetActorZ(0) < 400.0)
Polyobj_DoorSwing(271,16,64,105);
}

Script 272 (void)
{
If (GetActorZ(0) > 180.0)
Polyobj_DoorSwing(272,16,64,105);
}

Script 1001 (void)
{
If ((GetActorZ(0) < 131.0) && CheckInventory("StoneKey") > 0)
Polyobj_DoorSwing(1,16,64,105);
else
If ((GetActorZ(0) < 131.0) && CheckInventory("StoneKey") == 0)
{
Print(s:"This door requires a Stone key to open.");
PlaySound(0, "Interaction/Locked", CHAN_AUTO);
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