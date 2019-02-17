	#include "A3XAI_Client\A3XAI_initclient.sqf"; 
	[] execVM "Custom\EnigmaRevive\init.sqf";

[] execVM "addons\paintshop\paintshop_serveraddon.sqf";
[] execVM "R3F_LOG\init.sqf"; //Add this to your init.sqf


////////////////////////////////////////////////////////
//         vemfr                                      //
////////////////////////////////////////////////////////
if hasInterface then
{
	[] ExecVM "VEMFr_client\sqf\initClient.sqf"; // Client-side part of VEMFr
};
