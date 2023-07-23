#include "zcommon.acs"

script 1 OPEN
{
	Thing_Deactivate(1);
	Thing_Activate(1);
	Thing_Deactivate(6);
	Thing_Activate(6);
	ACS_Execute(9, 0, 0, 0, 0);
	ChangeCamera(6, 1, 0);
	FadeTo(0, 0, 0, 1.0, 0.0);
	Delay(1);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Delay(70);
	FadeTo(0, 0, 0, 1.0, 1.0);
	Delay(35);
	ACS_Execute(6, 0, 0, 0, 0);
	ACS_Execute(7, 0, 0, 0, 0);
	SetFont("BIGFONT");
    HudMessage(s:"Zan presents..."; HUDMSG_FADEINOUT, 0, CR_UNTRANSLATED, 0.5, 0.02, 3.50, 0.50, 3.00);
	Delay(35);
	ChangeCamera(1, 1, 0);
	SetMusic("HTrack00", 0, 0);
	FadeTo(0, 0, 0, 0.0, 2.0);
	Delay(105);
	ACS_Execute(3, 0, 0, 0, 0);
	//ACS_ExecuteWithResult(8, 0, 0, 0, 0);
}

Script 9 (void) //title pic change
{
	Switch(random(1, 4))
	{
		Case 1:
		Thing_Remove(2);
		Break;

		Case 2:
		Thing_Remove(7);
		Break;

		Case 3:
		Thing_Remove(2);
		Break;

		Case 4:
		Thing_Remove(2);
		Break;
	}
}

script 3 (void)
{
	SetFont("CONFONT");
    HudMessage(s:" ver. 2.4.0"; HUDMSG_PLAIN, 10, CR_DARKGRAY, 0.00, 1.00, 9999.00);
}

Script 6 (void)
{
	Delay(15*35);
	SetFont("SMALLFONT");
    HudMessage(s:"Press any key to begin."; HUDMSG_FADEINOUT, 0, CR_ORANGE, 0.5, 0.94, 10.00, 1.00, 1.00);
	Delay(15*35);
	Restart;
}

Script 7 (void)
{
	Delay(random(140, 210));
	FadeTo(0, 0, 0, 0.25, 0.4);
	Delay(4);
	Radius_Quake2(1, 1, 8, 0, 1, "Misc/Silence");
	Delay(10);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Restart;

}

Script 8 (void)
{
	FadeTo(0, 0, 0, 0.18, 1.0);
	Delay(35);
	FadeTo(0, 0, 0, 0.0, 1.0);
	Restart;
}

Script 4 ENTER
{
	Delay(315);
	ACS_ExecuteWithResult(5, 0, 0, 0, 0);
}


Script 5 (void)
{
	Switch(random(1, 50))
	{
		Case 1:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #1: Rocket jumping allows for shortcuts and different approaches of a level."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
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
        Hudmessage(s:"Tip #6: Potions of Might greatly reduce your ranged damage (except for melee weapon throws) while active."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 7:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #7: Weaker enemies will attempt to flee when badly injured."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 8:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #8: All demons (regardless of type or color) are resistant to fire and vulnerable to ice."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
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
        Hudmessage(s:"Tip #16: Forge Elementals don't spawn any Iron Urchins when killed by acid or ice."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 17:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #17: Killing enemies with your Fists will not raise an alert."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 18:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #18: The Crushbow's alt fire has higher damage and penetration at the expense of explosion radius."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 19:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #19: Potions of Stoneskin significantly reduce the explosion radius damage you take."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 20:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #20: Red crystal clusters and fel fungi explode violently when hit."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 21:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #21: Bags of Holding only increase your ammo capacity once."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
		Break;

		Case 22:
		SetFont("SMALLFONT");
        Hudmessage(s:"Tip #22: Sentry Turrets take damage underwater. Swimming while holding one in your hands can be hazardous."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
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
        Hudmessage(s:"Tip #29: Warlocks and Psi Demons are resistant to elemental and magic damage."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
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
        Hudmessage(s:"Tip #33: The Great Axe's Thorns buff reduces nature damage (dealt by Initiates) and reflects damage back to the attackers."; HUDMSG_PLAIN, 111, CR_ORANGE, 1.5, 0.98, 10.0);
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

//MESSAGE SCALE
Script "MessageScale" ENTER
{
  If(GetCVar("sv_UISc") == 1)
  {
	    SetCVar("sv_UISc", 0);

		If(GetScreenWidth() >= 1440) // && GetScreenWidth() < 2560)
		{
		  SetCVar("uiscale", 2);
		}

		//If(GetScreenWidth() >= 2560)
		//{
		  //SetCVar("uiscale", 3);
		//}

		If(GetScreenWidth() < 1440)
		{
		  SetCVar("uiscale", 1);
		}
  }
}