// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>
#include "../include/gl_common.inc"
#include "../include/gl_spawns.inc"

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("TaxiSpawn Script");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

new TaxiVehicleID = 0;
//new Float:destX, Float:destZ;

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp("/getTaxi", cmdtext, true, 10) == 0){
	//Check if there is a vehicle already
		if(TaxiVehicleID != 0) {
		    return 1;
		}

		//Creating the taxi right to the front of the player
  		new Float:x, Float:y, Float:z;
	    GetPlayerPos(playerid, x, y, z);
		TaxiVehicleID = CreateVehicle(420, x+5, y-2, z+5, 0, 6, 5, 0);

        new randSpawn = 0;
        new int = random(2);

		if(int == 2) {
 	    	randSpawn = random(sizeof(gRandomSpawns_LosSantos));
 	    	SetPlayerCheckpoint(playerid,
		 	gRandomSpawns_LosSantos[randSpawn][0],
		 	gRandomSpawns_LosSantos[randSpawn][1],
		 	gRandomSpawns_LosSantos[randSpawn][2], 5);
		}
		else if(int == 1) {
 	    	randSpawn = random(sizeof(gRandomSpawns_SanFierro));
 	    	SetPlayerCheckpoint(playerid,
		 	gRandomSpawns_SanFierro[randSpawn][0],
		 	gRandomSpawns_SanFierro[randSpawn][1],
		 	gRandomSpawns_SanFierro[randSpawn][2], 5);
		}
		else if(int == 0) {
 	    	randSpawn = random(sizeof(gRandomSpawns_LasVenturas));
 	    	SetPlayerCheckpoint(playerid,
		 	gRandomSpawns_LasVenturas[randSpawn][0],
		 	gRandomSpawns_LasVenturas[randSpawn][1],
		 	gRandomSpawns_LasVenturas[randSpawn][2], 5);
		}

		new string[100];
		SendClientMessage(playerid, -1, "You have got a client successfuly, now take him/her to the checkpoint!");
		return 1;
	}

    if (strcmp("/abortTaxi", cmdtext, true, 10) == 0){
	    AbortClient(playerid);
		return 1;
	}
	
	return 0;
}

public AbortClient(playerid) {
    DestroyVehicle(TaxiVehicleID);
    DisablePlayerCheckpoint(playerid);
    TaxiVehicleID = 0;
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	SendClientMessage(playerid, -1, "You have successfuly took the client to right place, so you have got 10.000 dollars!");
		
	GivePlayerMoney(playerid, 10000);
    DisablePlayerCheckpoint(playerid);
    AbortClient(playerid);
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
