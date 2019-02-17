/**
 *
 * 
 * www.exilemod.com
 */

[] execVM "statusIcons\statusIcons.sqf"; 
[] execVM "addons\paintshop\paintshop.sqf";

if (!hasInterface || isServer) exitWith {};

// 45 NPCs
private _npcs = [
["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "WhiteHead_11", [[],[],[],["U_B_HeliPilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [5198.37, 7418.73, 8.89788], [0.796025, -0.605264, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_05", [[],[],[],["U_B_Wetsuit",[]],["V_RebreatherB",[]],[],"H_Cap_surfer","",[],["","","","","",""]], [14409, 17985.7, 1.67516], [-0.999993, 0.0038395, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_AircraftCustoms", "WhiteHead_01", [[],[],[],["U_B_HeliPilotCoveralls",[]],["Exile_Vest_Rebreather_CSAT",[]],[],"H_CrewHelmetHeli_O","",[],["","","","","",""]], [5201.24, 7422.1, 8.79484], [0.839667, -0.543101, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1"], "Exile_Trader_BoatCustoms", "WhiteHead_20", [[],[],[],["U_B_Wetsuit",[]],["V_RebreatherB",[]],[],"","",[],["","","","","",""]], [14409.4, 17976.3, 1.67361], [-0.999698, -0.024589, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "WhiteHead_03", [[],[],[],["U_B_HeliPilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [5070.26, 14863.2, 338.961], [-0.851083, -0.525031, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_AircraftCustoms", "GreekHead_A3_06", [[],[],[],["U_B_HeliPilotCoveralls",[]],["Exile_Vest_Rebreather_CSAT",[]],[],"H_CrewHelmetHeli_O","",[],["","","","","",""]], [5067.64, 14865.3, 338.961], [-0.283856, -0.958867, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_09", [[],[],[],["U_B_Wetsuit",[]],[],[],"H_Cap_surfer","",[],["","","","","",""]], [7965.37, 7978.39, 0.569859], [-0.434814, 0.90052, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_BoatCustoms", "WhiteHead_12", [[],[],[],["U_B_Wetsuit",[]],["V_RebreatherB",[]],[],"","",[],["","","","","",""]], [7964.3, 7980.72, 0.569859], [0.433247, -0.901275, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_15", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [7988.94, 8007, 0.370014], [0.867757, 0.496989, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "GreekHead_A3_09", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [14399.7, 17975.6, 1.68029], [0.81373, 0.581243, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "WhiteHead_07", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [7961.51, 8008.35, 2.91747], [0.944531, 0.328421, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "WhiteHead_08", [[],[],[],["U_B_Wetsuit",[]],[],[],"H_Cap_surfer","",[],["","","","","",""]], [4326.95, 7267.59, 3.26146], [0.435151, 0.900357, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_BoatCustoms", "WhiteHead_18", [[],[],[],["U_B_Wetsuit",[]],["V_RebreatherB",[]],[],"","",[],["","","","","",""]], [4324.12, 7268.84, 3.26146], [0.454901, 0.890542, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubStandingUC_idle1","HubStandingUC_idle2","HubStandingUC_idle3","HubStandingUC_move1","HubStandingUC_move2"], "Exile_Trader_Vehicle", "GreekHead_A3_06", [[],[],[],["U_C_Driver_4",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [1736.65, 10228.7, 153.343], [0.634927, -0.772572, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1","InBaseMoves_HandsBehindBack2"], "Exile_Trader_VehicleCustoms", "WhiteHead_13", [[],[],[],["U_C_Driver_3",[]],[],[],"H_Cap_blk","G_Aviator",[],["","","","","",""]], [1741.77, 10232.4, 153.817], [0.827695, -0.561177, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUB_idle1","HubStandingUB_idle2","HubStandingUB_idle3","HubStandingUB_move1"], "Exile_Trader_WasteDump", "WhiteHead_07", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [1741, 10237.7, 153.888], [0.998723, -0.0505233, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "Sturrock", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1684.73, 10204.1, 152.987], [0.941244, 0.337727, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [1686.88, 10199.6, 152.981], [0.957849, 0.287274, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_Equipment", "WhiteHead_18", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [1683.29, 10211.7, 152.953], [0.977027, 0.213116, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubStandingUC_idle1","HubStandingUC_idle2","HubStandingUC_idle3","HubStandingUC_move1","HubStandingUC_move2"], "Exile_Trader_Office", "GreekHead_A3_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [1714.51, 10221.7, 153.064], [-0.30341, -0.95286, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_Hardware", "WhiteHead_11", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [1703.92, 10200.4, 152.981], [-0.419429, 0.907788, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubStandingUB_idle1","HubStandingUB_idle2","HubStandingUB_idle3","HubStandingUB_move1"], "Exile_Trader_Hardware", "WhiteHead_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [4556.25, 13307.9, 318.356], [-0.389664, -0.920957, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubFixingVehicleProne_idle1"], "Exile_Trader_Vehicle", "WhiteHead_02", [[],[],[],["U_B_CTRG_Soldier_urb_2_F",[]],[],[],"H_Watchcap_blk","G_Shades_Blue",[],["","","","","",""]], [4515.98, 13335.6, 317.611], [0.0287523, -0.999587, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1","InBaseMoves_HandsBehindBack2"], "Exile_Trader_VehicleCustoms", "WhiteHead_12", [[],[],[],["U_B_CTRG_Soldier_2_F",[]],[],[],"H_Cap_khaki_specops_UK","G_Aviator",[],["","","","","",""]], [4519.49, 13335.7, 317.791], [0.145374, -0.989377, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUB_idle1","HubStandingUB_idle2","HubStandingUB_idle3","HubStandingUB_move1"], "Exile_Trader_WasteDump", "WhiteHead_20", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [4519.43, 13281.4, 317.853], [0.305526, 0.952184, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUB_idle1","HubStandingUB_idle2","HubStandingUB_idle3","HubStandingUB_move1"], "Exile_Trader_WasteDump", "WhiteHead_07", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [4600.13, 13311.1, 317.519], [-0.952926, 0.303202, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["HubStandingUA_idle3"], "Exile_Trader_Equipment", "WhiteHead_06", [[],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_I_pilotCoveralls",[["11Rnd_45ACP_Mag",3,11]]],["V_PlateCarrierSpec_rgr",[]],["B_Carryall_oli",[]],"H_Cap_grn","G_Bandanna_beast",[],["","","","","","NVGoggles_INDEP"]], [4561.23, 13307.3, 318.356], [-0.263234, -0.964732, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubStanding_idle2"], "Exile_Trader_Armory", "WhiteHead_13", [["MMG_02_black_F","muzzle_snds_338_black","acc_flashlight","optic_Arco_blk_F",[],[],"bipod_01_F_blk"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",11],[],""],["U_I_CombatUniform",[["11Rnd_45ACP_Mag",1,11]]],["V_PlateCarrierIA1_dgtl",[["11Rnd_45ACP_Mag",2,11]]],["B_Respawn_TentDome_F",[]],"H_HelmetIA","G_Shades_Black",[],["","","","","",""]], [4567.81, 13304.7, 318.356], [-0.849169, -0.528122, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubStandingUC_idle1","HubStandingUC_idle2","HubStandingUC_idle3","HubStandingUC_move1","HubStandingUC_move2"], "Exile_Trader_Office", "WhiteHead_06", [["arifle_Katiba_F","muzzle_snds_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_green",30],[],""],[],[],["U_B_CTRG_1",[["30Rnd_65x39_caseless_green",3,30]]],["V_Rangemaster_belt",[]],["B_Messenger_Black_F",[]],"H_Cap_usblack","G_Aviator",[],["","","","","",""]], [4572.19, 13303, 318.356], [-0.148147, -0.988965, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubStanding_idle2"], "Exile_Trader_SpecialOperations", "WhiteHead_09", [["srifle_LRR_tna_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],["launch_O_Vorona_green_F","","","",[],[],""],["Makarov","","","",["8Rnd_9x18_Makarov",8],[],""],["U_B_CTRG_1",[["8Rnd_9x18_Makarov",3,8]]],["V_PlateCarrierGL_blk",[["7Rnd_408_Mag",3,7]]],[],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [4548.19, 13304.6, 318.356], [0.0940107, -0.995571, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "WhiteHead_02", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [4561.73, 13291, 318.356], [0.251216, 0.967931, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "WhiteHead_17", [[],[],[],["U_B_HeliPilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [4519.42, 13304.3, 317.853], [-0.0186665, -0.999826, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_AircraftCustoms", "WhiteHead_21", [[],[],[],["U_B_HeliPilotCoveralls",[]],["Exile_Vest_Rebreather_CSAT",[]],[],"H_CrewHelmetHeli_O","",[],["","","","","",""]], [4524.57, 13304.4, 317.853], [-0.231924, -0.972734, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_VehicleCustoms", "WhiteHead_01", [[],[],[],["U_C_Driver_4",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [13111.4, 12541.4, 5.77437], [-0.659189, 0.751978, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "WhiteHead_05", [[],[],[],["U_C_Driver_3",[]],[],[],"H_RacingHelmet_3_F","G_Tactical_Clear",[],["","","","","",""]], [13106.9, 12539.9, 5.83058], [0.532554, 0.846396, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["UnaErcPoslechVelitele2"], "Exile_Trader_Hardware", "WhiteHead_14", [[],[],[],["U_C_Man_casual_5_F",[]],["V_Safety_blue_F",[]],[],"H_Construction_earprot_orange_F","G_Tactical_Clear",[],["","","","","",""]], [13094.2, 12575.6, 5.7362], [-0.259132, 0.965842, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUC_idle3"], "Exile_Trader_WasteDump", "WhiteHead_08", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [13127, 12535.2, 5.45664], [-0.245621, 0.969366, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["InBaseMoves_SittingRifle2"], "Exile_Trader_Armory", "AfricanHead_02", [["srifle_LRR_F","","","optic_KHS_blk",["7Rnd_408_Mag",7],[],""],[],[],["U_B_T_Sniper_F",[]],["V_Rangemaster_belt",[["7Rnd_408_Mag",2,7]]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [13122.3, 12582, 5.45116], [-0.988267, -0.152734, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["InBaseMoves_SittingRifle1"], "Exile_Trader_Equipment", "WhiteHead_17", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [13122.4, 12589, 6.27791], [-0.976272, -0.216547, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["InBaseMoves_table1"], "Exile_Trader_SpecialOperations", "Sturrock", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [13118.3, 12598.1, 5.52387], [-0.688609, -0.725133, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_patrolling1","InBaseMoves_patrolling2"], "", "WhiteHead_07", [["srifle_DMR_05_hex_F","muzzle_snds_93mmg","acc_pointer_IR","optic_AMS",["10Rnd_93x64_DMR_05_Mag",10],[],""],[],[],["U_B_CTRG_Soldier_3_F",[["10Rnd_93x64_DMR_05_Mag",1,10]]],["V_PlateCarrierGL_tna_F",[["10Rnd_93x64_DMR_05_Mag",2,10]]],["B_Carryall_oli",[]],"H_Booniehat_oli","G_Balaclava_TI_tna_F",[],["","","","","",""]], [13091.7, 12533.8, 5.8721], [-0.967224, -0.253923, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_patrolling1","InBaseMoves_patrolling2"], "", "WhiteHead_07", [["srifle_DMR_02_camo_F","muzzle_snds_338_black","acc_pointer_IR","optic_AMS",["10Rnd_338_Mag",10],[],"bipod_01_F_khk"],[],[],["U_B_CTRG_Soldier_3_F",[["10Rnd_338_Mag",1,10]]],["V_PlateCarrierGL_tna_F",[["10Rnd_338_Mag",2,10]]],["B_Carryall_oli",[]],"H_Booniehat_oli","G_Balaclava_TI_tna_F",[],["","","","","",""]], [13083.2, 12561.7, 5.81672], [-0.967652, -0.252288, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubStandingUC_idle1","HubStandingUC_idle2","HubStandingUC_idle3","HubStandingUC_move1","HubStandingUC_move2"], "Exile_Trader_Office", "Barklem", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [13126.3, 12570.5, 5.38247], [-0.957441, -0.28863, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "WhiteHead_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [13094.5, 12593.5, 5.65265], [0.853552, -0.521008, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [1718.91, 10213.6, 153.065], [-0.929719, 0.36827, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;

DDR_fnc_Mushrooms = compileFinal preprocessFileLineNumbers "Custom\drugs\mushrooms.sqf";
DDR_fnc_Weed = compileFinal preprocessFileLineNumbers "Custom\drugs\weed.sqf";
DDR_fnc_Ore_Mining = compileFinal preprocessFileLineNumbers "Custom\mining\ore_mining.sqf";
DDR_fnc_Crystal_Mining = compileFinal preprocessFileLineNumbers "Custom\mining\crystal_mining.sqf";