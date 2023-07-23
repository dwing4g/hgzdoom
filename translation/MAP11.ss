#include "zcommon.acs"

//LEVEL START
Script 1 (void) //ENTER - triggered via gamma correction script
{
  FadeTo(0, 0, 0, 1.0, 0.0);
  SetGravity(200.0);
  Delay(1);
  Floor_LowerByValue(4, 9999, 1000);
  FadeTo(0, 0, 0, 0.0, 1.0);
  SpawnSpotForced("HedonTeleportFog", 5, 0, 0);
  PlaySound(5, "misc/teleport", CHAN_AUTO);

  SetActorFlag(1, "BRIGHT", 0);
  SetActorFlag(7, "RELATIVETOFLOOR", 1);

  SetActorFlag(19, "SOLID", 0);
  SetActorFlag(20, "SOLID", 0);

  SetActorFlag(88, "NOGRAVITY", 0);

  SetActorFlag(185, "INVISIBLE", 1);
  SetActorFlag(262, "INVISIBLE", 1);

  SetActorFlag(347, "INVISIBLE", 1);
  SetActorFlag(347, "NODAMAGE", 1);

  Scroll_Ceiling(31, 0, -64, 0);

  Delay(35);
  SetGravity(800.0);
  SetMusic("HTrack21", 0, 0);
}

//CAVERNS
//ITEM SPAWNS
//Crylance
Script 2 (void)
{
  If(GameSkill() > SKILL_VERY_HARD)
  {
  SetLineSpecial(8, 0, 0, 0, 0, 0, 0);
  SpawnSpotForced("HedonTeleportFog", 9, 0, 0);
  PlaySound(9, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("ForcePike", 9, 0, 0);
  }
  else
  {
  SetLineSpecial(8, 0, 0, 0, 0, 0, 0);
  SpawnSpotForced("HedonTeleportFog", 9, 0, 0);
  PlaySound(9, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("Crylance", 9, 0, 0);
  }
}
//Axe
Script 3 (void)
{
  If(GameSkill() > SKILL_VERY_HARD)
  {
  SetLineSpecial(10, 0, 0, 0, 0, 0, 0);
  Delay(16);
  SpawnSpotForced("HedonTeleportFog", 11, 0, 0);
  PlaySound(11, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("HatchetAndShield", 11, 0, 0);
  }
  else
  {
  SetLineSpecial(10, 0, 0, 0, 0, 0, 0);
  Delay(16);
  SpawnSpotForced("HedonTeleportFog", 11, 0, 0);
  PlaySound(11, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("Axe", 11, 0, 0);
  }
  Delay(70);
  ACS_Execute(1000, 0, 0, 0, 0);
}
//Munitions
Script 4 (void)
{
  SetLineSpecial(12, 0, 0, 0, 0, 0, 0);
  If(GameSkill() > SKILL_VERY_HARD)
  {
  Delay(105);
  SpawnSpotForced("HedonTeleportFog", 15, 0, 0);
  PlaySound(15, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("MediumArmorCrystal", 15, 0, 0);

  Delay(105);
  SpawnSpotForced("HedonTeleportFog", 14, 0, 0);
  PlaySound(14, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("InventorySentryGun", 14, 0, 0);
  }
  else
  {
  Delay(16);
  SpawnSpotForced("HedonTeleportFog", 13, 0, 0);
  PlaySound(13, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("Boltmag", 13, 0, 0);

  Delay(70);
  SpawnSpotForced("HedonTeleportFog", 15, 0, 0);
  PlaySound(15, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("LightArmorCrystal", 15, 0, 0);

  Delay(105);
  SpawnSpotForced("HedonTeleportFog", 14, 0, 0);
  PlaySound(14, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("PotionBoxAcid", 14, 0, 0);
  }
}

//Elemental Ring
Script 11 (void)
{
  SetLineSpecial(82, 0, 0, 0, 0, 0, 0);
  SpawnSpotForced("HedonTeleportFog", 81, 0, 0);
  PlaySound(81, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("InventoryElementalRing", 81, 0, 0);
}

//Spikes In Secret
Script 12 (void)
{
  SetLineSpecial(84, 0, 0, 0, 0, 0, 0);
  If(GameSkill() > SKILL_VERY_HARD)
  {
  Delay(16);
  SpawnSpotForced("HedonTeleportFog", 83, 0, 0);
  PlaySound(83, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("InventoryVialOfHealing", 83, 0, 0);
  Thing_Remove(83);
  }
  else
  {
  Delay(16);
  SpawnSpotForced("HedonTeleportFog", 83, 0, 0);
  PlaySound(83, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("AmmoCultistSpike", 83, 0, 0);
  Thing_Remove(83);
  }
}

//Waterfall Secret & Ring Progress
Script 13 (void)
{
  SetLineSpecial(82, 0, 0, 0, 0, 0, 0);
  SetLineSpecial(84, 0, 0, 0, 0, 0, 0);
  If(IsTIDUsed(83) && GameSkill() > SKILL_VERY_HARD)
  {
  SpawnSpot("InventoryVialOfHealing", 83, 0, 0);
  }
  else
  If(IsTIDUsed(83))
  {
  SpawnSpot("AmmoCultistSpike", 83, 0, 0);
  }
}

//Big Cave Munitions
Script 29 (void)
{
  SetFont("BIGFONT");
  Hudmessage(s:"ACT I"; HUDMSG_FADEINOUT | HUDMSG_LOG, 998, CR_UNTRANSLATED, 1.5, 0.12, 5.0, 3.0, 6.0);
  Hudmessage(s:"THE UNDERWORLD IS DYING"; HUDMSG_FADEINOUT | HUDMSG_LOG, 999, CR_UNTRANSLATED, 1.5, 0.16, 5.0, 3.0, 6.0);
  SetFont("SMALLFONT");

  If(GameSkill() > SKILL_VERY_HARD)
  {
  SetLineSpecial(109, 0, 0, 0, 0, 0, 0);
  Delay(4*35);

  SpawnSpotForced("HedonTeleportFog", 110, 0, 0);
  PlaySound(110, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("Axe", 110, 0, 0);
  }
  else
  {
  SetLineSpecial(109, 0, 0, 0, 0, 0, 0);
  Delay(4*35);

  SpawnSpotForced("HedonTeleportFog", 110, 0, 0);
  PlaySound(110, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("PotionBoxAcid", 110, 0, 0);

  Delay(50);
  SpawnSpotForced("HedonTeleportFog", 111, 0, 0);
  PlaySound(111, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("SpikeMag", 111, 0, 0);

  Delay(105);
  SpawnSpotForced("HedonTeleportFog", 112, 0, 0);
  PlaySound(112, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("FragfireCan", 112, 0, 0);

  Delay(70);
  SpawnSpotForced("HedonTeleportFog", 113, 0, 0);
  PlaySound(113, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("Boltmag", 113, 0, 0);
  }

}

//Falling Rocks
Script 9 (void)
{
	Delay(12);
	PlaySound(80, "Ambient/Rocks", CHAn_AUTO, 0.8);
}

//Laundry Ropes
Script 32 (void)
{
	If(GetActorZ(0) > 497.0 && GetActorZ(0) < 570.0)
	{
	PlaySound(164, "Interaction/RopeTie", CHAn_AUTO, 0.4);
	Delay(35);
	}
}

//Bridge
Script 10 (void)
{
	PlaySound(79, "Ambient/Wood", CHAn_AUTO, 0.6);
	Delay(140);
}

//Lancer & Last Munitions
Script 16 (void)
{
  SetLineSpecial(90, 0, 0, 0, 0, 0, 0);

  If(GameSkill() > SKILL_VERY_HARD)
  {
  SpawnSpotForced("HedonTeleportFog", 91, 0, 0);
  PlaySound(91, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("HealthPotionOfHealing", 91, 0, 0);
  Delay(35);

  SpawnSpotForced("HedonTeleportFog", 92, 0, 0);
  PlaySound(92, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("InventoryChokerOfTheBeast", 92, 0, 0);
  Delay(50);
  }
  else
  {
  SpawnSpotForced("HedonTeleportFog", 91, 0, 0);
  PlaySound(91, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("PotionBoxAcid", 91, 0, 0);
  Delay(35);

  SpawnSpotForced("HedonTeleportFog", 92, 0, 0);
  PlaySound(92, "misc/teleport", CHAN_AUTO);
  Delay(16);
  SpawnSpot("FragfireCan", 92, 0, 0);
  Delay(50);
  }

  SpawnSpotForced("HedonTeleportFog", 93, 0, 0);
  PlaySound(93, "misc/teleport", CHAN_AUTO);
  Delay(12);
  SpawnSpot("NPCCrystalCurator", 93, 600, 128);
  SetActorState(600, "Falling", 0);

  Delay(18);
  Hudmessage(s:"Crystal Curator:    *Groans*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
  PlaySound(600, "Lancer/Death", CHAN_AUTO, 0.5);

  Delay(35);
  SetLineSpecial(94, ACS_Execute, 20, 0, 0, 0, 0);
  Delay(700);
  SetLineSpecial(104, ACS_Execute, 27, 0, 0, 0, 0);
}

//CRYSTAL CURATOR
//Wounded
Script 20 (void)
{
	If(CheckProximity(0, "Golem", 1280.0, 1) && GetActorproperty(600, APROP_Health) > 0)
    {
		Hudmessage(s:"Crystal Curator:    Look out!... Golems..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
		PlaySound(600, "Lancer/Pain", CHAN_AUTO);
		Delay(4*35);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) > 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(600, "Inventory/PickBase", CHAN_AUTO);
		SetActorFlag(600, "INVULNERABLE", 1);
		Delay(8);
		SetActorState(600, "Drink", 0);
		Delay(35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);
		ACS_Execute(48, 0, 0, 0, 0);
		ACS_Execute(23, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) <= 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(104, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(346, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("IDManaPotion", 346, 0, 0);
		Delay(24);
		PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	}
	else
	If(GetActorproperty(600, APROP_Health) > 0)
	{
	SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"Crystal Curator:    I... tried to stop her... followed through... the Disk... we have to stop her..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    //PlaySound(600, "Lancer/Pain", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(94, ACS_Execute, 21, 0, 0, 0, 0);
	}
}

Script 21 (void)
{
	If(CheckProximity(0, "Golem", 1280.0, 1) && GetActorproperty(600, APROP_Health) > 0)
    {
		Hudmessage(s:"Crystal Curator:    Look out!... Golems..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
		PlaySound(600, "Lancer/Pain", CHAN_AUTO);
		Delay(4*35);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) > 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(600, "Inventory/PickBase", CHAN_AUTO);
		SetActorFlag(600, "INVULNERABLE", 1);
		Delay(8);
		SetActorState(600, "Drink", 0);
		Delay(35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);
		ACS_Execute(23, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) <= 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(104, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(346, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("IDManaPotion", 346, 0, 0);
		Delay(24);
		PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	}
	else
	If(GetActorproperty(600, APROP_Health) > 0)
	{
	SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"Crystal Curator:    I'm too weak to move... had to use all my energy... to protect the Disk..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    PlaySound(600, "Lancer/Pain", CHAN_AUTO);
	Delay(5*35);
	SetLineSpecial(94, ACS_Execute, 22, 0, 0, 0, 0);
	}
}

Script 22 (void)
{
	If(CheckProximity(0, "Golem", 1280.0, 1) && GetActorproperty(600, APROP_Health) > 0)
    {
		Hudmessage(s:"Crystal Curator:    Look out!... Golems..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 3.0, 0.2, 0.5);
		PlaySound(600, "Lancer/Pain", CHAN_AUTO);
		Delay(4*35);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) > 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(104, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(600, "Inventory/PickBase", CHAN_AUTO);
		SetActorFlag(600, "INVULNERABLE", 1);
		Delay(8);
		SetActorState(600, "Drink", 0);
		Delay(35);
		FadeTo(0, 0, 0, 1.0, 3.0);
		Delay(3*35);
		SpawnSpotForced("IDEmptyPotionGlass", 342, 0, 0);
		ACS_Execute(23, 0, 0, 0, 0);
	}
	else
	If(CheckInventory("InventoryManaPotion") > 0 && GetActorproperty(600, APROP_Health) <= 0)
	{
		SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
		SetLineSpecial(104, 0, 0, 0, 0, 0, 0);
		TakeInventory("InventoryManaPotion", 1);
		PlaySound(346, "Inventory/PickBase", CHAN_AUTO);
		SpawnSpotForced("IDManaPotion", 346, 0, 0);
		Delay(24);
		PlaySound(0, "Character/ZanSigh", CHAN_AUTO);
	}
	else
	If(GetActorproperty(600, APROP_Health) > 0)
	{
	SetLineSpecial(94, 0, 0, 0, 0, 0, 0);
    Hudmessage(s:"Crystal Curator:    I can sense her... she's close... do something..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
    //PlaySound(600, "Lancer/Pain", CHAN_AUTO);
	Delay(4*35);
	SetLineSpecial(94, ACS_Execute, 20, 0, 0, 0, 0);
	}
}

//Recovered
Script 23 (void)
{
	Thing_Remove(600);
	Delay(70);
	SetActorProperty(0, APROP_SPEED, 0.0);
	SetActorProperty(0, APROP_FRICTION, 0.0);
	Thing_Move(0, 97, 1);
	SetActorAngle(0, 0.14);
	SetActorPitch(0, 0);
	SpawnSpotForced("NPCCrystalCuratorCinematic", 96, 601, 140);

	FadeTo(0, 0, 0, 0.0, 3.0);
	Delay(35);

	Hudmessage(s:"Crystal Curator:    Thank you, Halfblood. I owe you my life..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(601, "Lancer/Hmm", CHAN_AUTO);
	Delay(5*35);

	Hudmessage(s:"I'd like to commend you for your fight back in the Sanctum, but alas, we have all failed..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	Delay(6*35);

	Hudmessage(s:"But the Elf is close, I can sense her power! We still have a chance to recover the Disk!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	PlaySound(601, "Lancer/Ha", CHAN_AUTO);
	Delay(6*35);

	SetActorAngle(601, 0.2);
	Delay(50);
	Thing_Hate(601, 599, 0);
	Delay(1);
	SetActorAngle(601, 0.2);
	SetActorState(601, "ForcePull", 0);
	FadeTo(255, 30, 230, 1.0, 0.1);
	SpawnSpotForced("WhirlSmall", 98, 0, 0);
	SpawnSpotForced("ExplosionMagicPurple", 98, 0, 0);
	Line_SetBlocking(26, 0, BLOCKF_EVERYTHING);
	SetLineSpecial(26, 0, 0, 0, 0, 0, 0);
	Thing_Destroy(99);
	Delay(1);
	Thing_Remove(95);
	Thing_Remove(99);
	Delay(3);
	FadeTo(255, 30, 230, 0.0, 0.1);

	Polyobj_DoorSwing(360,24,64,0x7FFFFFFF);
	Floor_LowerByValue(25, 9999, 160);

	Delay(70);
	SetActorAngle(601, 0.5);

	Hudmessage(s:"Crystal Curator:    Let us hurry! We can't let her get away like this!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 4.0, 0.2, 0.5);
	PlaySound(601, "Lancer/Heh", CHAN_AUTO);
	Delay(3*35);

	Thing_Remove(601);
	SpawnSpotForced("IDLancer", 96, 691, 128);

	SetActorProperty(0, APROP_SPEED, 1.0);
	SetActorProperty(0, APROP_FRICTION, 1.0);
}

//Chatter Outskirts
Script 27 (void)
{
  If(GetActorproperty(600, APROP_Health) > 0)
  {
	Hudmessage(s:"Crystal Curator:    *Groans*"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
	PlaySound(600, "Lancer/Pain", CHAN_AUTO, 0.5);
	Delay(700);
  }
}

Script 24 (void)
{
  If(CheckProximity(0, "IDLancer", 320.0, 1) || CheckProximity(0, "IDLancerGuarding", 320.0, 1))
  {
    SetLineSpecial(101, 0, 0, 0, 0, 0, 0);
	Delay(35);
	Hudmessage(s:"Crystal Curator:    Hmm... doesn't look like the handiwork of our sisters. The demons must have executed these poor bastards."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
  }
}

Script 25 (void)
{
  If(CheckProximity(0, "IDLancer", 320.0, 1) || CheckProximity(0, "IDLancerGuarding", 320.0, 1))
  {
    SetLineSpecial(102, 0, 0, 0, 0, 0, 0);
	Delay(35);
	Hudmessage(s:"Crystal Curator:    Strong mana. I would have been dead weight without it... thank you once again."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.82, 5.0, 0.2, 0.5);
  }
}

Script 26 (void)
{
  If(CheckProximity(0, "IDLancer", 320.0, 1) || CheckProximity(0, "IDLancerGuarding", 320.0, 1))
  {
    SetLineSpecial(103, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    Wretched thorns! Sadly, I'm not particularly proficient with fire magic."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
  }
}


//Chatter Town Phase 1
Script 56 (void)
{
  If(CheckProximity(0, "IDLancer", 320.0, 1) || CheckProximity(0, "IDLancerGuarding", 320.0, 1))
    {
	SetLineSpecial(295, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    Farm plots... The Disk's removal has made the crystals unstable, depriving the flora of energy."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    Delay(6*35);

	If(CheckProximity(0, "IDLancer", 320.0, 1) || CheckProximity(0, "IDLancerGuarding", 320.0, 1))
      {
	  Hudmessage(s:"If we don't recover it soon we might end up surviving on lichens and fungi once again."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
      }
	}
}

Script 57 (void)
{
  If(CheckProximity(0, "IDLancer", 960.0, 1) || CheckProximity(0, "IDLancerGuarding", 960.0, 1))
    {
    SetLineSpecial(294, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    The Iron Division banner? Well this is an unusual sight. We must be in one of the Cult towns..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    Delay(6*35);

	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
      {
	  Hudmessage(s:"I'm not familiar with the invasion plans but our sisters have certainly run this place through the blade."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
      }
	}
}

Script 58 (void)
{
  If(CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1))
    {
    SetLineSpecial(297, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    These ruins must date from when humans still worshiped the Elemental Gods. Before the schism."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
    Delay(6*35);

	If(CheckProximity(0, "IDLancer", 480.0, 1) || CheckProximity(0, "IDLancerGuarding", 480.0, 1))
      {
	  Hudmessage(s:"Look at these fresh graves... someone must have been here after our sisters attacked. I don't like this..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
      }
	}
}

Script 59 (void)
{
  If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	SetLineSpecial(296, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    Iron Division crates... but I doubt our campaigning sisters would leave anything useful behind."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
}

Script 60 (void)
{
  If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	SetLineSpecial(298, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    The Cult has decayed into madness and debauchery... this place is such a disgrace..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
}

Script 61 (void)
{
  If(CheckProximity(0, "IDLancer", 240.0, 1) || CheckProximity(0, "IDLancerGuarding", 240.0, 1))
    {
	SetLineSpecial(299, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    An impressive library I must say. The Cult scribes must have been hard at work."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
}

Script 62 (void)
{
  If(CheckProximity(0, "IDLancer", 240.0, 1) || CheckProximity(0, "IDLancerGuarding", 240.0, 1))
    {
	SetLineSpecial(300, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    What a lively fireplace... ready up, warrior, this place is not deserted at all."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
}
Script 74 (void)
{
  If(CheckProximity(0, "IDLancer", 1280.0, 1))
  {
    SetLineSpecial(343, 0, 0, 0, 0, 0, 0);
	Delay(35);
	Hudmessage(s:"Crystal Curator:    I may not age, but I'm not getting younger either..."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 4.5, 0.2, 0.5);
    Delay(5*35);
	Hudmessage(s:"...do I really need to follow you up there? If you find me a good position, I could stay and watch your back."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
  }
}
//Chatter Town Phase 2
Script 64 (void)
{
  If(CheckProximity(0, "IDLancer", 480.0, 1) || CheckProximity(0, "IDLancerGuarding", 480.0, 1))
    {
	SetLineSpecial(301, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    Onwards! I can sense the Disk being just ahead of us!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}
}

Script 66 (void) //+town monster spawns
{
 If(IsTIDUsed(266) == 0)
 {
  SetLineSpecial(305, 0, 0, 0, 0, 0, 0);
  If(CheckProximity(0, "IDLancer", 640.0, 1))
    {
	Hudmessage(s:"Crystal Curator:    Steel yourself, I feel like we're in for a lot of fighting."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 5.0, 0.2, 0.5);
	}

  SpawnSpot("Hellblaze", 317, 669, 64);
  SpawnSpot("Cerberus", 318, 669, 64);
  SpawnSpot("SniperCultist", 319, 669, 64);
  SpawnSpot("Initiate", 320, 669, 64);
  SpawnSpot("PitLord", 322, 669, 64);
  SpawnSpot("IronMaiden", 323, 669, 64);
  SpawnSpot("Crawler", 324, 669, 64);
  SetActorFlag(669, "AMBUSH", 1);
 }
}

Script 65 (void)
{
  If((CheckProximity(0, "IDLancer", 800.0, 1) || CheckProximity(0, "IDLancerGuarding", 800.0, 1)) && IsTIDUsed(234))
    {
	SetLineSpecial(302, 0, 0, 0, 0, 0, 0);
	Hudmessage(s:"Crystal Curator:    That book oozes unholy energy... I wouldn't touch it unless I were a half-demon."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
	}
}

//MANA SHRINE
Script 15 (void)
{
	If(CheckInventory("InventoryEmptyPotionBottle") > 0)
	{
		SetLineSpecial(85, 0, 0, 0, 0, 0, 0);
		SetWeapon("Fists");
		TakeInventory("InventoryEmptyPotionBottle", 1);

		SpawnSpotForced("Golem", 100, 0, 64);
		ChangeFloor(65, "CORUPT01");
		Floor_RaiseByValue(65, 32, 5);
		FloorAndCeiling_LowerByValue(64, 32, 128);

		PlaySound(0, "Inventory/PickBase", CHAN_AUTO);
		Delay(16);
		Floor_LowerByValue(87, 1, 2);
		TagWait(87);
		PlaySound(0, "Inventory/PickShort", CHAN_AUTO);
		Delay(16);
		SpawnSpot("InventoryManaPotion", 86, 0, 0);
		SpawnSpot("DustPuff", 86, 0, 0);
		PlaySound(86, "Metal/Land", CHAN_AUTO, 0.6);

		Delay(105);
		Autosave();
	}
	else
	{
		Print(s:"The bubbling water oozes a powerful energizing aura.");
        PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		Delay(105);
	}
}

//FARM PLOT DIG
Script 36 (void)
{
	If(CheckInventory("InventoryShovelB") > 0 || CheckInventory("InventoryShovel") > 0)
	{
		SetWeapon("Fists");
		SetLineSpecial(249, 0, 0, 0, 0, 0, 0);
		Floor_LowerInstant(250, 0, 64);
		Ceiling_LowerInstant(250, 0, 64);
		PlaySound(0, "Interaction/Shovel", CHAN_AUTO);
		PlaySound(247, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 247, 0, 0);
		Delay(1);
		SpawnSpotForced("CopperKey", 247, 0, 0);
		SpawnSpotForced("NatureDirtPile", 248, 0, 0);
		SpawnSpotForced("DustCloud", 248, 0, 0);
	}
	else
	{
	Print(s:"This patch of grass looks as if it was unearthed at some point. You could dig it with a proper tool.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(35);
	}
}

//TEMPLE YARD SECRET DIG
Script 45 (void)
{
	If(CheckInventory("InventoryShovelB") > 0 || CheckInventory("InventoryShovel") > 0)
	{
		SetWeapon("Fists");
		SetLineSpecial(287, 0, 0, 0, 0, 0, 0);
		Floor_LowerInstant(289, 0, 128);
		Ceiling_LowerInstant(289, 0, 128);
		PlaySound(0, "Interaction/Shovel", CHAN_AUTO);
		PlaySound(285, "Interaction/Shovel", CHAN_AUTO);
		SpawnSpotForced("DustCloud", 285, 0, 0);
		Delay(1);
		ChangeFloor(290, "Iron_08");
		Floor_RaiseByValue(290, 9999, 4);
		SpawnSpotForced("InventoryScrollAirWizardsEye", 285, 0, 0);
		SpawnSpotForced("NatureDirtPile", 286, 0, 0);
		SpawnSpotForced("DustCloud", 286, 0, 0);
	}
	//else
	//{
	//Print(s:"The patch of grass looks like it could be dug through with a proper tool.");
	//PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	//Delay(35);
	//}
}

//GRATE LEVERS
Script 37 (void)
{
	If(IsTIDUsed(259))
	{
		Thing_Remove(259);
		SetLineSpecial(260, ACS_Execute, 40, 0, 0, 0, 0);

		SetLineSpecial(294, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(295, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(296, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(297, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(298, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(299, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(300, 0, 0, 0, 0, 0, 0);
	}
	If(GetSectorFloorZ(251, 0, 0) > 672.0)
	{
	SetActorPitch(253, 0.65);
	PlaySound(253, "Interaction/MachineOn");
	Floor_LowerByValue(251, 6, 178);
	TagWait(251);
	}
	If(IsTIDUsed(335))
	{
		Thing_Remove(335);
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
		Delay(8);
		SetMusic("HTrak22B", 0, 0);
	}
}

Script 38 (void)
{
	If(IsTIDUsed(259))
	{
		Thing_Remove(259);
		SetLineSpecial(260, ACS_Execute, 40, 0, 0, 0, 0);

		SetLineSpecial(294, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(295, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(296, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(297, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(298, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(299, 0, 0, 0, 0, 0, 0);
	    SetLineSpecial(300, 0, 0, 0, 0, 0, 0);
	}
	If(GetSectorFloorZ(252, 0, 0) > 672.0)
	{
	SetActorPitch(254, 0.65);
	PlaySound(254, "Interaction/MachineOn");
	Floor_LowerByValue(252, 6, 178);
	TagWait(252);
	}
	If(IsTIDUsed(335))
	{
		Thing_Remove(335);
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
		Delay(8);
		SetMusic("HTrak22B", 0, 0);
	}
}

Script 39 (void)
{
	If(GetSectorCeilingZ(255, 0, 0) < 353.0)
	{
	SetActorPitch(256, 0.65);
	PlaySound(256, "Interaction/MachineOn");
	Ceiling_RaiseByValue(255, 16, 112);
	TagWait(255);
	}
}

//COURTYARD
//Nithriel Passing
Script 40 (void)
{
	SetLineSpecial(260, 0, 0, 0, 0, 0, 0);
	Polyobj_RotateRight(179, 16, 64);
	Polyobj_RotateLeft(361, 16, 64);
	SpawnSpot("BlindNithriel", 257, 597, 64);
	SpawnSpot("BlindNithrielDisk", 258, 597, 64);
	PlaySound(259, "Warlock/Active", CHAN_AUTO, 0.4, false, ATTN_NONE);
	SetActorFlag(597, "NODAMAGE", 1);
	SetActorFlag(597, "BRIGHT", 1);
	Delay(24);
	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	Hudmessage(s:"Crystal Curator:    There she is! After her!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 2.0, 0.2, 0.5);
    }
	Delay(50);
	SetActorState(597, "Fade", 0);
	Thing_remove(265);
	Delay(20);
	Thing_Remove(597);
	SetActorFlag(185, "INVISIBLE", 0);
	SetActorFlag(262, "INVISIBLE", 0);
}

//Ambush
Script 41 (void)
{
	SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
	//Thing_Remove(597);
	SetLineSpecial(263, ACS_Execute, 42, 0, 0, 0, 0);
	SetLineSpecial(264, ACS_Execute, 42, 0, 0, 0, 0);

	If(IsTIDUsed(266))
	{
	SpawnSpotForced("SniperCultist", 344, 670, 0);
	}

	Delay(12);


	Polyobj_RotateLeft(179, 9, 64);
	Polyobj_RotateRight(361, 9, 64);
	PlaySound(185, "Nithriel/Laugh", CHAN_AUTO, 0.4, false, ATTN_NONE);
	Delay(35);

	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	Hudmessage(s:"Crystal Curator:    Damn you, elf!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 1.5, 0.2, 0.5);
    }

	Delay(35);
	Thing_Remove(185);
	Thing_Remove(262);

	SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(264, 0, 0, 0, 0, 0, 0);
	Delay(70);

	If(IsTIDUsed(266))
	{
	Thing_Remove(266);
	ACS_Execute(42, 0, 0, 0, 0);
	}
}

Script 42 (void)
{
	SetLineSpecial(263, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(264, 0, 0, 0, 0, 0, 0);
	Thing_Remove(266);

    If(CheckProximity(670, "IDLancerGuarding", 360.0, 1) && GetActorProperty(670, APROP_Health) > 0)
	{
		Thing_Destroy(670, 0, 0);
	}
	else
	If(GetActorProperty(670, APROP_Health) > 0)
	{
	  If(GetSectorFloorZ(251, 0, 0) < 673.0)
	  {
		TagWait(251);
		SetActorPitch(253, 0.8);
		Floor_RaiseByValue(251, 96, 178);
	  }
	  If(GetSectorFloorZ(252, 0, 0) < 673.0)
	  {
		TagWait(252);
		SetActorPitch(254, 0.8);
		Floor_RaiseByValue(252, 96, 178);
      }
	  If(GetSectorCeilingZ(255, 0, 0) > 352.0)
	  {
		TagWait(255);
		SetActorPitch(256, 0.8);
		Ceiling_LowerByValue(255, 96, 112);
		TagWait(255);
      }
	}

	Delay(70);

	Floor_LowerToLowest(307, 9999);
	Floor_LowerToLowest(220, 9999);
	SetLineSpecial(308, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(221, 0, BLOCKF_PLAYERS);
	FloorAndCeiling_LowerByValue(310, 9999, 80);
	FloorAndCeiling_RaiseByValue(311, 9999, 80);
	FloorAndCeiling_RaiseByValue(321, 9999, 80);
	Floor_RaiseByValue(309, 9999, 72);
	ChangeFloor(336, "WOOD03");
	Floor_RaiseByValue(336, 9999, 92);
	ChangeFloor(337, "FLOORWD2");
	Floor_LowerByValue(337, 9999, 92);
	SetLineSpecial(312, ACS_Execute, 68, 0, 0, 0, 0);
	SetLineSpecial(338, ACS_Execute, 73, 0, 0, 0, 0);

	Polyobj_DoorSwing(89,24,64,0x7fffffff);
	Polyobj_DoorSwing(269,-24,64,0x7fffffff);
	Polyobj_DoorSwing(88,-24,64,0x7fffffff);
	Polyobj_DoorSwing(268,24,64,0x7fffffff);

	Delay(10);
	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	Hudmessage(s:"Crystal Curator:    Watch out!"; HUDMSG_FADEINOUT | HUDMSG_LOG, 100, CR_CYAN, 1.5, 0.86, 1.5, 0.2, 0.5);
    }

	//SetMusic("HTrak22B", 0, 0);

	Floor_LowerByValue(265, 9999, 92);
	ChangeFloor(265, "FLOORWD2");

	Thing_Activate(169);
	NoiseAlert(0, 0);

	Delay(16);
	Thing_Spawn(314, 65004, 192, 0);
	Delay(280);
	Thing_Spawn(316, 65004, 64, 0);

}

//LIBRARY BOOKCASE LOWER
Script 68 (void)
{
	SetLineSpecial(312, 0, 0, 0, 0, 0, 0);
	Floor_LowerByValue(313, 12, 88);
}

//TOWN MONSTER SPAWNS
Script 69 (void)
{
	If(IsTIDUsed(185) == 0)
	{
		SetLineSpecial(325, 0, 0, 0, 0, 0, 0);
		SpawnSpotForced("HedonTeleportFogDemon", 326, 0, 0);
	    SpawnSpotForced("HedonTeleportFogDemon", 327, 0, 0);
        PlaySound(326, "misc/teleport", CHAN_AUTO);
	    PlaySound(327, "misc/teleport", CHAN_AUTO);
        Delay(8);
        SpawnSpot("Hellblaze", 326, 0, 128);
	    SpawnSpotForced("Hellblaze", 327, 0, 0);
	}
}

Script 70 (void)
{
	If(IsTIDUsed(185) == 0)
	{
		Thing_Remove(315);
		Delay(70);
		SpawnSpotForced("HedonTeleportFogDemon", 328, 0, 0);
	    PlaySound(328, "misc/teleport", CHAN_AUTO);
        Delay(8);
	    SpawnSpotForced("Hellblaze", 328, 0, 64);
	}
}

//TEMPLE
//Passage Burn
Script 5 (void)
{
	If(CheckInventory("InventoryFireOil") > 0)
	{
	TakeInventory("InventoryFireOil", 1);
	SpawnSpotForced("CultLabGlassB", 303, 596, 0);
	SetActorFlag(347, "NODAMAGE", 0);
	Delay(12);
	Thing_Destroy(347, 0, 0);
	Thing_Remove(596);
	PlaySound(306, "Weapons/PotionDie", CHAN_AUTO);
	SpawnSpotForced("SteamPuffLarge", 306, 0, 0);
	SpawnSpotForced("DustCloud", 306, 0, 0);
	SpawnSpotForced("JunkBrokenGlassA", 306, 0, 0);
	SpawnSpotForced("FireTinyDie1", 304, 0, 0);
	SetLineSpecial(22, 0, 0, 0, 0, 0, 0);
	SetLineSpecial(23, 0, 0, 0, 0, 0, 0);
	Line_SetBlocking(23, 0, BLOCKF_EVERYTHING);
	Thing_Damage2(19, 99, "Fire");
	Delay(8);
	Thing_Damage2(20, 99, "Fire");
	Delay(8);
	Thing_Damage2(18, 99, "Fire");
	Thing_Damage2(24, 99, "Fire");
	Delay(8);
	Thing_Damage2(21, 99, "Fire");
	Delay(8);
	Thing_Damage2(68, 99, "Fire");
	Delay(8);
	Thing_Damage2(69, 99, "Fire");
	Delay(8);

	Thing_Remove(73);
	Thing_Move(76, 72, 1);
	Thing_Move(75, 74, 1);
	Thing_Activate(77);

	Thing_Damage2(70, 99, "Fire");
	Delay(8);
	Thing_Damage2(71, 99, "Fire");
	Delay(8);
	}
}
//Thorns Damage
Script 6 (void)
{
	Thing_Damage2(0, 1, "Nature");
	Print(s:"The dry thorns are too thick to be moved apart.");
	Delay(70);
}
//Fire Damage Check
Script 7 ENTER
{
	If(GetActorProperty(19, APROP_Health) < 1 || GetActorProperty(20, APROP_Health) < 1 )
	{
	  SetLineSpecial(23, 0, 0, 0, 0, 0, 0);
	  Line_SetBlocking(23, 0, BLOCKF_EVERYTHING);
	  Thing_Damage2(68, 99, "Fire");
	  Delay(8);
	  Thing_Remove(73);
	  Thing_Move(76, 72, 1);
	  Thing_Move(75, 74, 1);
	  Thing_Activate(77);
	  Terminate;
	}
	Delay(105);
	Restart;
}

//Nithriel Passing
Script 28 (void)
{
	SetLineSpecial(107, 0, 0, 0, 0, 0, 0);
	SpawnSpot("BlindNithriel", 105, 598, 64);
	SpawnSpot("BlindNithrielDisk", 106, 598, 64);
	SetActorFlag(598, "NODAMAGE", 1);
	SetActorFlag(598, "BRIGHT", 1);
	//PlaySound(598, "Warlock/Active", CHAN_AUTO, 0.4, false, ATTN_NONE);
	Delay(105);
	Thing_Remove(598);
}

//Creepy Sound
Script 14 (void)
{
	SetLineSpecial(89, 0, 0, 0, 0, 0, 0);
	PlaySound(0, "Ambient/CreepyWhistle", CHAN_AUTO);
}

//Hanging Cage Chain Rattle
Script 8 (void)
{
	If(GetActorZ(0) >= 502.0)
	{
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO);
		Delay(6);
		PlaySound(0, "Inventory/PickKey", CHAN_AUTO);
		Delay(50);
	}
}

//Secret Wall Break
Script 35 (void)
{
  If ((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickaxe") > 0) && GetSectorCeilingZ(241, 0, 0) < 377.0)
  {
	//Radius_Quake(2, 12, 0, 1, 0);
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Ceiling_RaiseByValue(241, 9999, 224);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(243);
	Delay(2);
	SpawnSpot("DustCloud",242, 0, 0);
  }
    else
	  If (GetSectorCeilingZ(241, 0, 0) < 377.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//Unholy Book
Script 34 (void)
{
	SetLineSpecial(232, 0, 0, 0, 0, 0, 0);
	SetActorState(233, "Special", 0);
	Delay(3);
	Thing_Remove(234);
	Delay(18);
	Thing_Remove(230);
	SetActorState(240, "Special", 0);
	PlaySound(235, "Interaction/Smother", CHAN_AUTO, 1.0, false, 0.4);
	Light_Fade(237, 100, 6);

	Delay(70);
	Light_Fade(237, 128, 4);
	SetActorState(236, "Special", 0);
	SpawnSpot("TorchLightLarge", 228, 0, 0);
	PlaySound(228, "Weapons/FlameDeath", CHAN_AUTO, 1.0, false, 0.4);
	Thing_Activate(229);

	Radius_Quake(4, 175, 0, 1, 0);
	Delay(35);
	SpawnSpotForced("HedonTeleportFogDemon", 330, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 331, 0, 0);
	SpawnSpotForced("HedonTeleportFogDemon", 332, 0, 0);
	PlaySound(330, "misc/teleport", CHAN_AUTO);
	PlaySound(331, "misc/teleport", CHAN_AUTO);
	PlaySound(332, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpot("PitLord", 331, 0, 192);
	SpawnSpotForced("Hellblaze", 330, 0, 192);
	SpawnSpotForced("Cerberus", 332, 0, 0);
	NoiseAlert(0, 0);

	Delay(350);
	SpawnSpotForced("HedonTeleportFogDemon", 333, 0, 0);
	PlaySound(333, "misc/teleport", CHAN_AUTO);
	Delay(8);
	SpawnSpot("Hellblaze", 333, 0, 192);
	NoiseAlert(0, 0);

	SetActorState(231, "Special", 0);
	Thing_Remove(239);
	Delay(105);
	Floor_LowerByValue(238, 4, 168);
	Floor_LowerByValue(244, 4, 122);
	Floor_LowerToLowest(245, 9999);

	Line_SetBlocking(261, 0, BLOCKF_PLAYERS);
	Polyobj_DoorSwing(361,16,64,0x7fffffff);
	Polyobj_DoorSwing(179,-16,64,0x7fffffff);

	SpawnSpotForced("ShadowAbhaothStanding", 282, 666, 0);

	SpawnSpot("PitLord", 329, 669, 192);
	SpawnSpot("Cerberus", 328, 669, 128);
	SetActorFlag(669, "AMBUSH", 1);

	/*
	If(GetSectorFloorZ(251, 0, 0) < 673.0)
	{
	TagWait(251);
	SetActorPitch(253, 0.8);
	Floor_RaiseByValue(251, 32, 178);
	}
	If(GetSectorFloorZ(252, 0, 0) < 673.0)
	{
	TagWait(252);
	SetActorPitch(254, 0.8);
	Floor_RaiseByValue(252, 32, 178);
    }
	If(GetSectorCeilingZ(255, 0, 0) > 352.0)
	{
	TagWait(255);
	SetActorPitch(256, 0.8);
	Ceiling_RaiseByValue(255, 32, 112);
	TagWait(255);
	}
	*/
}

//TOWN HALL SECRET WALL BREAK
Script 43 (void)
{
  If ((CheckInventory("InventorySledgehammer") > 0 || CheckInventory("InventoryPickaxe") > 0) && GetSectorFloorZ(271, 0, 0) > 647.0)
  {
	SetWeapon("Fists");
	Radius_Quake2(0, 2, 24, 0, 64, 0);
    Floor_LowerByValue(271, 9999, 80);
	PlaySound(0, "Interaction/WallPick");
	Thing_Remove(267);
	SpawnSpot("DustCloud",272, 0, 0);
	ChangeFloor(268, "MASON06");
	ChangeFloor(269, "MASON06");
	ChangeFloor(270, "MASON06");
	Floor_RaiseByValue(268, 9999, 2);
	Floor_RaiseByValue(269, 9999, 4);
	Floor_RaiseByValue(270, 9999, 6);
  }
    else
	  If (GetSectorFloorZ(271, 0, 0) > 647.0)
	  {
	      Print(s:"This wall looks like it could be broken with a proper tool.");
		  PlaySound(0, "Character/ZanThink", CHAN_AUTO);
		  Delay(50);
	  }
}

//LEVEL END
Script 44 (void)
{
	Ceiling_LowerByValue(274, 64, 128);
	Delay(70);
	Thing_Destroy(666);
	Delay(16);

	Thing_Remove(283);
	PlaySound(284, "Door2/Door2STA", CHAN_AUTO, 1.0, false, ATTN_STATIC);
	Radius_Quake(3, 35, 0, 1, 0);
	FloorAndCeiling_LowerByValue(279, 64, 296);
	FloorAndCeiling_LowerByValue(280, 58, 296);
	FloorAndCeiling_LowerByValue(281, 50, 296);

	If(CheckProximity(0, "IDLancer", 640.0, 1) || CheckProximity(0, "IDLancerGuarding", 640.0, 1))
    {
	Hudmessage(s:"Crystal Curator:    Oh no-"; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 1.0, 0.2, 0.5);
    }

	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(50);
	SetGravity(0.0);
	SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);

	PlaySound(0, "Character/ZanFall", CHAN_AUTO);

	Delay(120);

	TakeInventory("InventoryManaPotion", 1);
	TakeInventory("InventoryEmptyPotionBottle", 1);

	ACS_NamedExecuteWithResult("FriendlyCounter");
    SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
	Exit_Normal(0);
}


//DOOR WARDS
Script 30 (void)
If(CheckInventory("InventoryScrollSpiritDispelMagic") > 0)
{
	TakeInventory("InventoryScrollSpiritDispelMagic", 1);
    PlaySound(0, "Magic/Dispel", CHAN_AUTO);
    Delay(8);
	Radius_Quake(1, 70, 0, 1, 0);
	FadeTo(255, 30, 230, 1.0, 0.1);
	SpawnSpotForced("ExplosionMagicPurple", 98, 0, 0);
	Line_SetBlocking(26, 0, BLOCKF_EVERYTHING);
	SetLineSpecial(26, 0, 0, 0, 0, 0, 0);
	Thing_Destroy(99);
	Delay(1);
	Thing_Remove(95);
	Thing_Remove(99);
	Delay(3);
	FadeTo(255, 30, 230, 0.0, 0.1);

	Polyobj_DoorSwing(360,24,64,0x7FFFFFFF);
	Floor_LowerByValue(25, 9999, 160);
}
else
{
	Print(s:"A powerful magic ward keeps the gate sealed.");
	PlaySound(0, "Character/ZanThink", CHAN_AUTO);
	Delay(70);
}

int dial55=0;
Script 55 (void)
{
	If(IsTIDUsed(234))
	{
	  Print(s:"An unholy pentagram keeps the gate sealed.");
	  PlaySound(0, "Character/ZanThink", CHAN_AUTO);

	  If((CheckProximity(0, "IDLancer", 480.0, 1) || CheckProximity(0, "IDLancerGuarding", 480.0, 1)) && dial55 == 0)
        {
	    dial55 += 1;
	    Delay(70);
	    Hudmessage(s:"Crystal Curator:    This ward is too powerful for me to dispel. We must find the source of this dark energy first."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
        }

	  Delay(70);
	}
}


//DOOR LEVERS
Script 31 (void) //unused
{
	SetLineSpecial(196, 0, 0, 0, 0, 0, 0);
	SetActorPitch(195, 0.8);
	PlaySound(195, "Interaction/MachineOn");
	Ceiling_RaiseByValue(27, 8, 96);
}

//LOCKED DOORS
Script 33 (void)
{
	Print(s:"This door is locked from the inside.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
	//Delay(35);
}

Script 67 (void)
{
	Print(s:"This door appears to be stuck.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

Script 73 (void)
{
	Print(s:"This door appears to be blocked from inside.");
    PlaySound(0, "Character/ZanFail2", CHAN_AUTO);
	Delay(35);
}

//ROTATING DOORS
int dial47=0;
Script 90 (void)
{
  If(GetActorZ(0) < 437.0 && CheckInventory("CopperKey") > 0)
  {
    Polyobj_DoorSwing(90,16,64,70);
	dial47 += 1;
  }
  else
  If(GetActorZ(0) < 437.0 && CheckInventory("CopperKey") == 0)
  {
    Print(s:"This door requires a Copper key to open.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 91 (void)
{
  If(GetActorZ(0) < 600.0 && GetActorZ(0) > 500.0 && CheckInventory("DarkKey") > 0)
    Polyobj_DoorSwing(91,-16,64,350);
  else
  If(GetActorZ(0) < 600.0 && GetActorZ(0) > 500.0 && CheckInventory("DarkKey") == 0)
  {
    Print(s:"This door requires a Dark key to open.");
    PlaySound(0, "Interaction/Locked", CHAN_AUTO);
  }
}

Script 270 (void)
{
  If(GetActorZ(0) < 466.0 && CheckInventory("WitheredVineKey") > 0)
  {
    Polyobj_DoorSwing(270,16,64,175);
  }
    else
    If(GetActorZ(0) < 466.0 && CheckInventory("WitheredVineKey") == 0)
    {
      Print(s:"This door requires a Withered Vine key to open.");
      PlaySound(0, "Interaction/Locked", CHAN_AUTO);
    }
}

Script 271 (void)
{
  If(GetActorZ(0) < 590.0)
  {
	SetLineSpecial(178, 0, 0, 0, 0, 0, 0);
    Polyobj_DoorSwing(271,-16,64,0x7fffffff);
  }
}

//READABLES
//Ancient Texts
Script 46 (void)
{
	If(CheckInventory("InventoryAncientDictionary") > 0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 50.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the moldy parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.58, 50.0);
    Hudmessage(s:"I retreated from the town, for I could not bear what they had me do. I shall wait for my end here and    "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.62, 50.0);
	Hudmessage(s:"repent... but you still have a chance. I have buried something that will show you the way. May the great"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.64, 50.0);
    Hudmessage(s:"wisdom of Air descend upon you and His breath carry you from this decaying place. Remember His place..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.66, 50.0);
    Hudmessage(s:"(A diagram is scribbled at the bottom)"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.70, 50.0);
    Hudmessage(s:"O            O      O            O"; HUDMSG_PLAIN | HUDMSG_LOG, 6, CR_UNTRANSLATED, 1.5, 0.74, 50.0);
    Hudmessage(s:"O            O      O            O"; HUDMSG_PLAIN | HUDMSG_LOG, 7, CR_UNTRANSLATED, 1.5, 0.82, 50.0);
    Hudmessage(s:"                O   xO            O"; HUDMSG_PLAIN | HUDMSG_LOG, 8, CR_UNTRANSLATED, 1.5, 0.90, 50.0);
	}
	else
	{
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(A moldy parchment rests on the cave floor. It's covered in ancient symbols that you can't quite understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.66, 15.0);
	Hudmessage(s:"(You do, however, figure out a diagram scribbled at the bottom)"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.70, 15.0);
    Hudmessage(s:"O            O      O            O"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.74, 15.0);
    Hudmessage(s:"O            O      O            O"; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.82, 15.0);
    Hudmessage(s:"                O   xO            O"; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
	}
}

//int dial47=0; Above Script 90
Script 47 (void)
{
	If(CheckInventory("InventoryAncientDictionary") > 0 && GameSkill() == SKILL_HARD)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the posted parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
    Hudmessage(s:"I've buried the key behind the farm plot shed. This will buy us some time. We are leaving as planned. - C"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.54, 10.0);
	}
	else
	If(CheckInventory("InventoryAncientDictionary") > 0)
	{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 10.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the posted parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 10.0);
    Hudmessage(s:"I've buried the key \c[Gold]behind the farm plot shed\c-. This will buy us some time. We are leaving as planned. - C"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.54, 10.0);
	}
	else
	{
    SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 9.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(An old parchment is posted on the wall. It's covered in ancient symbols that you can't quite understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_GOLD, 1.5, 0.50, 9.0);
    PlaySound(0, "Character/ZanThink", CHAN_AUTO);

	If((CheckProximity(0, "IDLancer", 480.0, 1) || CheckProximity(0, "IDLancerGuarding", 480.0, 1)) && dial47 == 0)
    {
    dial47 += 1;
	Delay(70);
	Hudmessage(s:"Crystal Curator:    Hmm... that looks like an ancient human dialect. I'm not familiar with it."; HUDMSG_FADEINOUT | HUDMSG_LOG, 110, CR_CYAN, 1.5, 0.86, 6.0, 0.2, 0.5);
    }

	Delay(70);
	}
}

Script 49 (void)
{
	If(CheckInventory("InventoryAncientDictionary") > 0 && GetActorZ(0) > 500.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 15.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the partially torn parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.86, 15.0);
    Hudmessage(s:"They caught Calmun, to all Hells with the old man's map, we need to leave NOW! West gate, after the sermon."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 15.0);
	Hudmessage(s:" "; HUDMSG_PLAIN | HUDMSG_LOG, 110, CR_UNTRANSLATED, 1.5, 0.92, 0.1);
	}
	else
	If(CheckInventory("InventoryAncientDictionary") < 1 && GetActorZ(0) > 500.0)
	{
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(A partially torn parchment lies on the table. It's covered in ancient symbols that you can't quite understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
	}
}

Script 50 (void)
{
	If(CheckInventory("InventoryAncientDictionary") > 0 && GetActorZ(0) > 500.0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 20.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the tattered parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 20.0);
    Hudmessage(s:"[...]I won't end up like that lunatic they walled off inside the cathedral... I still can't believe what"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 20.0);
	Hudmessage(s:"they forced my brother to do...  no, this is too far.   This isn't what the Cult was supposed to be! [...] "; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 20.0);
	}
	else
	If(CheckInventory("InventoryAncientDictionary") < 1 && GetActorZ(0) > 500.0)
	{
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(A tattered parchment lies on the floor. It's covered in ancient symbols that you can't quite understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
	}
}

Script 51 (void)
{
	If(CheckInventory("InventoryAncientDictionary") > 0)
	{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 20.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(You use the dictionary to translate the ancient human dialect contained within the dusty parchment)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 20.0);
    Hudmessage(s:"This is it. They found out about my affinity for magic during the bloodletting. I must now pursue the"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 20.0);
	Hudmessage(s:"path of an Initiate... I must offer them the gift of my sight. But I knew this would happen one day..."; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 20.0);
	}
	else
	If(CheckInventory("InventoryAncientDictionary") < 1 && GetActorZ(0))
	{
    SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
    Hudmessage(s:"(A dusty parchment lies on the table. It's covered in ancient symbols that you can't quite understand)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
	}
}


//Demon Texts
Script 63 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 50.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A wrinkly parchment rests on the floor, a thick pellicle of dust covering it)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.80, 50.0);
    Hudmessage(s:"My faithful servant, you were indeed right.     The Iron Division orcs and their allies have launched      "; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.84, 50.0);
	Hudmessage(s:"a full scale assault on our hellish domain.  Once this bold affront is dealt with, I shall send my Demon"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.86, 50.0);
    Hudmessage(s:"troops to reclaim your shattered outposts and deliver the punishment for your failure to stop them..."; HUDMSG_PLAIN | HUDMSG_LOG, 4, CR_UNTRANSLATED, 1.5, 0.88, 50.0);
    Hudmessage(s:"Make sure nobody leaves your petty little town, or the consequences will be worse than death. - B.B. "; HUDMSG_PLAIN | HUDMSG_LOG, 5, CR_UNTRANSLATED, 1.5, 0.90, 50.0);
}

Script 52 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 8.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"By the law of the Blue Baron,"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 8.0);
    Hudmessage(s:"This establishment has been condemned due to forbidden practices."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 8.0);
}

Script 53 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 5.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(The ledger appears to keep track of various taxes and vassal contributions)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.90, 5.0);
}

Script 54 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 20.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"If you see any strange objects appear out of nowhere, collect them and have them sent to the new factory"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.88, 20.0);
    Hudmessage(s:"right away. Tell your men to stay put and prepare for the worst. I won't stay here much longer.   -   Nithriel"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.90, 20.0);
}

Script 72 (void)
{
	SetFont ("OLAYTMID");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 8.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"Keep the upper courtyard grates closed!"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.50, 8.0);
    Hudmessage(s:"Anyone who disturbs us gets a hundred lashes."; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.52, 8.0);
}

Script 75 (void)
{
	SetFont ("OLAYTBOT");
    HudMessage (s:"a"; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 1.0, 16.0);

	SetFont("SMALLFONT");
	Hudmessage(s:"(A plaque has been crudely bolted into the stone, covering the basin's ancient inscription)"; HUDMSG_PLAIN | HUDMSG_LOG, 1, CR_UNTRANSLATED, 1.5, 0.84, 16.0);

	Hudmessage(s:"Rest easy, weary traveller, but drink not from this fountain"; HUDMSG_PLAIN | HUDMSG_LOG, 2, CR_UNTRANSLATED, 1.5, 0.88, 16.0);
    Hudmessage(s:"For it only nourishes those who walk the path of the Initiate"; HUDMSG_PLAIN | HUDMSG_LOG, 3, CR_UNTRANSLATED, 1.5, 0.90, 16.0);
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
	Hudmessage(s:""; HUDMSG_PLAIN, 13, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 14, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 15, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN, 9999, CR_UNTRANSLATED, 1.5, 0.48, 0.1);
}

//MUSIC TOWN
Script 71 (void)
{
	SetLineSpecial(334, 0, 0, 0, 0, 0, 0);
	SetMusic("HTrak22A", 0, 0);
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

//MESSAGE SCALE
Script "MessageScale" (void)//ENTER
{
If(GetScreenWidth() >= 1440)// && GetScreenWidth() < 2560)
  {
	  SetCVar("con_scaletext", 2);
  }
  //else
  //{
	//If(GetScreenWidth() >= 2560)
    //{
	//SetCVar("con_scaletext", 3);
    //}
  //}
}

//GORE CLEAR
Script 901 (void)
{
	Thing_Remove(901);
}

//TIPS
script 1000 (void)
{
	If(GetCVar("sv_Tips") == 0)
	Terminate;
	else
	{
	SetLineSpecial(1000, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Remember that you can press \c[White]F1\c- to view the quick reference screen at any time."; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 12.0);
	}
}

script 1012 (void)
{
	If(GetCVar("sv_Tips") == 0)
	Terminate;
	else
	If(IsTIDUsed(345) == 0)
	{
	SetLineSpecial(1012, 0, 0, 0, 0, 0, 0);
	SetFont("SMALLFONT");
    Hudmessage(s:"Tip: Remember that you can inspect your currently selected item with \c[White](default: ENTER)\c-"; HUDMSG_PLAIN | HUDMSG_LOG, 10, CR_GOLD, 1.5, 0.12, 5.0);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 20, CR_GOLD, 1.5, 0.12, 0.1);
    Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 30, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	Hudmessage(s:""; HUDMSG_PLAIN | HUDMSG_LOG, 40, CR_UNTRANSLATED, 1.5, 0.01, 0.1);
	}
}

//GAMMA CALIBRATION
Script "GammaCalibration" ENTER
{
	If(GetCVar("sv_Clbr") == 1)
	{
	  SetCVar("sv_Clbr", 0);
	  SetPlayerProperty(0, 1, PROP_TOTALLYFROZEN);
      TakeInventory("IsPlaying", 1);

      FadeTo(0, 0, 0, 1.0, 0.0);
	  ChangeCamera(909, 1, 0);

	  ACS_Execute(910, 0, 0, 0, 0);
	  Delay(4);
	  TakeInventory("IsPlaying", 1);
	  ACS_Execute(911, 0, 0, 0, 0);
	  ACS_Execute(912, 0, 0, 0, 0);
	  ACS_Execute(913, 0, 0, 0, 0);
	  FadeTo(0, 0, 0, 0.0, 3.0);
	}
    else
	{
	  FadeTo(0, 0, 0, 1.0, 0.0);
	  ACS_Execute(1, 0, 0, 0, 0);
	}
}

int CurrentGamma = 0.0;
Script 910 (void)
{
	Setfont("SMALLFONT");
	Hudmessage(s:"If you can't see the plant in the background, increase the gamma so that it's barely visible"; HUDMSG_FADEINOUT, 910, CR_UNTRANSLATED, 1.5, 0.20, 9999.0, 3.2, 0.8);
	//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 3.2, 0.8);
    Hudmessage(s:"Press \c[Gold]Strafe Left\c- (default: \c[Gold]A\c-) to decrease gamma"; HUDMSG_FADEINOUT, 913, CR_UNTRANSLATED, 1.5, 0.63, 9999.0, 3.2, 0.8);
	Hudmessage(s:"Press \c[Gold]Strafe Right\c- (default: \c[Gold]D\c-) to increase gamma"; HUDMSG_FADEINOUT, 914, CR_UNTRANSLATED, 1.5, 0.65, 9999.0, 3.2, 0.8);
	Hudmessage(s:"Press \c[Gold]Use\c- (default: \c[Gold]E\c-) to continue"; HUDMSG_FADEINOUT, 915, CR_UNTRANSLATED, 1.5, 0.86, 9999.0, 3.2, 0.8);
	Hudmessage(s:"You can always adjust this setting from Options - Display Options"; HUDMSG_FADEINOUT, 916, CR_UNTRANSLATED, 1.5, 0.90, 9999.0, 3.2, 0.8);
	CurrentGamma = GetCVar("vid_gamma");
}
Script 911 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_MOVELEFT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_MOVELEFT) || (GetPlayerInput(-1, INPUT_BUTTONS) & BT_LEFT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_LEFT))
    {
        SetCVar("vid_gamma", CurrentGamma - 0.1);
		CurrentGamma = GetCVar("vid_gamma");
		Delay(8);
		//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 0.0, 0.8);
    }
	Delay(1);
	Restart;
}
Script 912 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_MOVERIGHT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_MOVERIGHT) || (GetPlayerInput(-1, INPUT_BUTTONS) & BT_RIGHT) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_RIGHT))
    {
        SetCVar("vid_gamma", CurrentGamma + 0.1);
		CurrentGamma = GetCVar("vid_gamma");
		Delay(8);
		//Hudmessage(s:"GAMMA CORRECTION = ", f:(CurrentGamma); HUDMSG_FADEINOUT, 912, CR_UNTRANSLATED, 1.5, 0.60, 9999.0, 0.0, 0.8);
    }
	Delay(1);
	Restart;
}
Script 913 (void)
{
	If ((GetPlayerInput(-1, INPUT_BUTTONS) & BT_USE) || (GetPlayerInput(-1, INPUT_OLDBUTTONS) & BT_USE))
    {
	  ACS_Terminate(911, 0);
	  ACS_Terminate(912, 0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 910, CR_GOLD, 1.5, 0.20, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 912, CR_GOLD, 1.5, 0.80, 0.0, 0.0, 0.0);
      Hudmessage(s:""; HUDMSG_FADEINOUT, 912, CR_GOLD, 1.5, 0.80, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 913, CR_GOLD, 1.5, 0.83, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 914, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 915, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  Hudmessage(s:""; HUDMSG_FADEINOUT, 916, CR_GOLD, 1.5, 0.90, 0.0, 0.0, 0.0);
	  FadeTo(0, 0, 0, 1.0, 2.0);
	  Delay(105);
	  Hudmessage(s:"Somewhere in the Underworld..."; HUDMSG_FADEINOUT, 917, CR_UNTRANSLATED, 1.5, 0.50, 2.0, 1.0, 1.0);
	  Delay(4*35);
	  SetPlayerProperty(0, 0, PROP_TOTALLYFROZEN);
      GiveInventory("IsPlaying", 1);
	  ChangeCamera(0, 1, 1);
	  ACS_Execute(1, 0, 0, 0, 0);
	  Terminate;
    }
	Delay(1);
	Restart;
}


