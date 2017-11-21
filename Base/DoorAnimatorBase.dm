//here you set delay time every generated animation frame will have, does not affect simple icons in any way
//the frame delay time is dependent on the number of frames by default. 15 frames is 0.8, 12 frames is 1, so that the animation will always last 1.2 seconds
//ID = IndustrialDoor
//CD = CommonDoor
//HD = HatchDoor
//SD = SecureDoor
//HAZD = HazardDoor
//EXD = ExternalDoor
//MATD = MaterialDoor
//WD = WallDoor
//BLD = BlastDoor
//SHD = ShutterDoor
//SACD = SACDoor
//HISED = HighSecDoor
//VD = VaultDoor
//DD = DoubleDoor
var/const/FRAME_DELAY_ID = 0.8//done
var/const/FRAME_DELAY_CD = 0.8//done
var/const/FRAME_DELAY_HD = 0.8//done
var/const/FRAME_DELAY_SD = 0.8//done
var/const/FRAME_DELAY_HAZD = 0.8//done
var/const/FRAME_DELAY_FD = 0.8
var/const/FRAME_DELAY_EXD = 0.75//done
var/const/FRAME_DELAY_MATD = 1
var/const/FRAME_DELAY_WD = 0.6
var/const/FRAME_DELAY_BLD = 0.5
var/const/FRAME_DELAY_SHD = 0.25
var/const/FRAME_DELAY_SACD = 0.7
var/const/FRAME_DELAY_HISED = 1//done
var/const/FRAME_DELAY_VD = 0.75//done
var/const/FRAME_DELAY_DD = 0.6

//path to folder with all overlays
#define OVERLAY_FOLDER 'Base/Overlays.dmi'
#define OVERLAY_FOLDER_64 'Base/Overlays64x64.dmi'

//These vars determine which icon states get processed into the final dmi
var/do_door_closed = 1
var/do_door_open = 1
var/do_door_locked = 1
var/do_door_deny = 1
var/do_door_spark = 1
var/do_door_opening = 1
var/do_door_closing = 1
var/do_o_door_opening = 1
var/do_o_door_closing = 1
var/do_door_opening_stat = 1
var/do_door_closing_stat = 1
var/do_panel_open = 1
var/do_welded = 1
var/do_sparks = 1

//These vars store all overlays used in generation of icon states
//ID = IndustrialDoor
//CD = CommonDoor
//HD = HatchDoor
//SD = SecureDoor
//HAZD = HazardDoor
//EXD = ExternalDoor
//BLD = BlastDoor
//SHD = ShutterDoor
//SACD = SACDoor
//HISED = HighSecDoor
//VD = VaultDoor
//DD = DoubleDoor
var/icon/IDgreen = icon(OVERLAY_FOLDER,"IDgreen")
var/icon/IDred = icon(OVERLAY_FOLDER,"IDred")
var/icon/IDpanelgreen = icon(OVERLAY_FOLDER,"IDpanelgreen")
var/icon/IDpanelred = icon(OVERLAY_FOLDER,"IDpanelred")
var/icon/IDpanelopen = icon(OVERLAY_FOLDER,"IDpanelopen")
var/icon/IDwelded = icon(OVERLAY_FOLDER,"IDwelded")
var/icon/IDsparks_damaged = icon(OVERLAY_FOLDER,"IDsparks_damaged")
var/icon/IDsparks_broken = icon(OVERLAY_FOLDER,"IDsparks_broken")
var/icon/IDsparks_open = icon(OVERLAY_FOLDER,"IDsparks_open")
var/icon/IDsparks1 = icon(OVERLAY_FOLDER,"IDsparks", frame = 1)
var/icon/IDsparks2 = icon(OVERLAY_FOLDER,"IDsparks", frame = 2)
var/icon/IDsparks3 = icon(OVERLAY_FOLDER,"IDsparks", frame = 3)
var/icon/IDsparks4 = icon(OVERLAY_FOLDER,"IDsparks", frame = 4)
var/icon/IDsparks5 = icon(OVERLAY_FOLDER,"IDsparks", frame = 5)
var/icon/IDsparks6 = icon(OVERLAY_FOLDER,"IDsparks", frame = 6)

var/icon/CDgreen = icon(OVERLAY_FOLDER,"CDgreen")
var/icon/CDred = icon(OVERLAY_FOLDER,"CDred")
var/icon/CDpanelgreen = icon(OVERLAY_FOLDER,"CDpanelgreen")
var/icon/CDpanelred = icon(OVERLAY_FOLDER,"CDpanelred")
var/icon/CDpanelopen = icon(OVERLAY_FOLDER,"CDpanelopen")
var/icon/CDwelded = icon(OVERLAY_FOLDER,"CDwelded")
var/icon/CDsparks_damaged = icon(OVERLAY_FOLDER,"CDsparks_damaged")
var/icon/CDsparks_broken = icon(OVERLAY_FOLDER,"CDsparks_broken")
var/icon/CDsparks_open = icon(OVERLAY_FOLDER,"CDsparks_open")
var/icon/CDsparks1 = icon(OVERLAY_FOLDER,"CDsparks", frame = 1)
var/icon/CDsparks2 = icon(OVERLAY_FOLDER,"CDsparks", frame = 2)
var/icon/CDsparks3 = icon(OVERLAY_FOLDER,"CDsparks", frame = 3)
var/icon/CDsparks4 = icon(OVERLAY_FOLDER,"CDsparks", frame = 4)
var/icon/CDsparks5 = icon(OVERLAY_FOLDER,"CDsparks", frame = 5)

var/icon/HDgreen = icon(OVERLAY_FOLDER,"HDgreen")
var/icon/HDred = icon(OVERLAY_FOLDER,"HDred")
var/icon/HDorange = icon(OVERLAY_FOLDER,"HDorange")
var/icon/HDpanelgreen = icon(OVERLAY_FOLDER,"HDpanelgreen")
var/icon/HDpanelred = icon(OVERLAY_FOLDER,"HDpanelred")
var/icon/HDpanelopen = icon(OVERLAY_FOLDER,"HDpanelopen")
var/icon/HDwelded = icon(OVERLAY_FOLDER,"HDwelded")
var/icon/HDsparks_damaged = icon(OVERLAY_FOLDER,"HDsparks_damaged")
var/icon/HDsparks_broken = icon(OVERLAY_FOLDER,"HDsparks_broken")
var/icon/HDsparks_open = icon(OVERLAY_FOLDER,"HDsparks_open")
var/icon/HDsparks1 = icon(OVERLAY_FOLDER,"HDsparks", frame = 1)
var/icon/HDsparks2 = icon(OVERLAY_FOLDER,"HDsparks", frame = 2)
var/icon/HDsparks3 = icon(OVERLAY_FOLDER,"HDsparks", frame = 3)
var/icon/HDsparks4 = icon(OVERLAY_FOLDER,"HDsparks", frame = 4)
var/icon/HDsparks5 = icon(OVERLAY_FOLDER,"HDsparks", frame = 5)
var/icon/HDsparks6 = icon(OVERLAY_FOLDER,"HDsparks", frame = 6)

var/icon/SDgreen = icon(OVERLAY_FOLDER,"SDgreen")
var/icon/SDred = icon(OVERLAY_FOLDER,"SDred")
var/icon/SDpanelgreen = icon(OVERLAY_FOLDER,"SDpanelgreen")
var/icon/SDpanelred = icon(OVERLAY_FOLDER,"SDpanelred")
var/icon/SDpanelopen = icon(OVERLAY_FOLDER,"SDpanelopen")
var/icon/SDwelded = icon(OVERLAY_FOLDER,"SDwelded")
var/icon/SDsparks_damaged = icon(OVERLAY_FOLDER,"SDsparks_damaged")
var/icon/SDsparks_broken = icon(OVERLAY_FOLDER,"SDsparks_broken")
var/icon/SDsparks_open = icon(OVERLAY_FOLDER,"SDsparks_open")
var/icon/SDsparks1 = icon(OVERLAY_FOLDER,"SDsparks", frame = 1)
var/icon/SDsparks2 = icon(OVERLAY_FOLDER,"SDsparks", frame = 2)
var/icon/SDsparks3 = icon(OVERLAY_FOLDER,"SDsparks", frame = 3)
var/icon/SDsparks4 = icon(OVERLAY_FOLDER,"SDsparks", frame = 4)
var/icon/SDsparks5 = icon(OVERLAY_FOLDER,"SDsparks", frame = 5)
var/icon/SDsparks6 = icon(OVERLAY_FOLDER,"SDsparks", frame = 6)

var/icon/HAZDgreen = icon(OVERLAY_FOLDER,"HAZDgreen")
var/icon/HAZDred = icon(OVERLAY_FOLDER,"HAZDred")
var/icon/HAZDpanel_open = icon(OVERLAY_FOLDER,"HAZDhatch")
var/icon/HAZDpanel_open2 = icon(OVERLAY_FOLDER,"HAZDhatch2")
var/icon/HAZDpanel_open3 = icon(OVERLAY_FOLDER,"HAZDhatch3")
var/icon/HAZDwelded = icon(OVERLAY_FOLDER,"HAZDwelded")
var/icon/HAZDwelded_open = icon(OVERLAY_FOLDER,"HAZDwelded_open")
var/icon/HAZDpalert = icon(OVERLAY_FOLDER,"HAZDpalert")
var/icon/HAZDalert_cold_1 = icon(OVERLAY_FOLDER,"HAZDalert_cold_1")
var/icon/HAZDalert_cold_2 = icon(OVERLAY_FOLDER,"HAZDalert_cold_2")
var/icon/HAZDalert_cold_4 = icon(OVERLAY_FOLDER,"HAZDalert_cold_4")
var/icon/HAZDalert_cold_8 = icon(OVERLAY_FOLDER,"HAZDalert_cold_8")
var/icon/HAZDalert_hot_1 = icon(OVERLAY_FOLDER,"HAZDalert_hot_1")
var/icon/HAZDalert_hot_2 = icon(OVERLAY_FOLDER,"HAZDalert_hot_2")
var/icon/HAZDalert_hot_4 = icon(OVERLAY_FOLDER,"HAZDalert_hot_4")
var/icon/HAZDalert_hot_8 = icon(OVERLAY_FOLDER,"HAZDalert_hot_8")

var/icon/FDgreen = icon(OVERLAY_FOLDER,"FDgreen")
var/icon/FDred = icon(OVERLAY_FOLDER,"FDred")
var/icon/FDwelded = icon(OVERLAY_FOLDER,"FDwelded")
var/icon/FDwelded_open = icon(OVERLAY_FOLDER,"FDwelded_open")

var/icon/EXDgreen = icon(OVERLAY_FOLDER,"EXDgreen")
var/icon/EXDred = icon(OVERLAY_FOLDER,"EXDred")
var/icon/EXDpanelopen = icon(OVERLAY_FOLDER,"EXDpanelopen")
var/icon/EXDwelded = icon(OVERLAY_FOLDER,"EXDwelded")
var/icon/EXDsparks_damaged = icon(OVERLAY_FOLDER,"EXDsparks_damaged")
var/icon/EXDsparks_broken = icon(OVERLAY_FOLDER,"EXDsparks_broken")
var/icon/EXDsparks_open = icon(OVERLAY_FOLDER,"EXDsparks_open")
var/icon/EXDsparks1 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 1)
var/icon/EXDsparks2 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 2)
var/icon/EXDsparks3 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 3)
var/icon/EXDsparks4 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 4)
var/icon/EXDsparks5 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 5)
var/icon/EXDsparks6 = icon(OVERLAY_FOLDER,"EXDsparks", frame = 6)

var/icon/BLDg_lights1 = icon(OVERLAY_FOLDER,"BLDg_lights", frame = 1)
var/icon/BLDg_lights2 = icon(OVERLAY_FOLDER,"BLDg_lights", frame = 2)
var/icon/BLDg_lights3 = icon(OVERLAY_FOLDER,"BLDg_lights", frame = 3)
var/icon/BLDg_lights4 = icon(OVERLAY_FOLDER,"BLDg_lights", frame = 4)
var/icon/BLDg_lights5 = icon(OVERLAY_FOLDER,"BLDg_lights", frame = 5)
var/icon/BLDc_lights1 = icon(OVERLAY_FOLDER,"BLDc_lights", frame = 1)
var/icon/BLDc_lights2 = icon(OVERLAY_FOLDER,"BLDc_lights", frame = 2)
var/icon/BLDo_lights1 = icon(OVERLAY_FOLDER,"BLDo_lights", frame = 1)
var/icon/BLDo_lights2 = icon(OVERLAY_FOLDER,"BLDo_lights", frame = 2)
var/icon/BLDo_lights3 = icon(OVERLAY_FOLDER,"BLDo_lights", frame = 3)
var/icon/BLDo_lights4 = icon(OVERLAY_FOLDER,"BLDo_lights", frame = 4)
var/icon/BLDo_lights5 = icon(OVERLAY_FOLDER,"BLDo_lights", frame = 5)

var/icon/SHDgreen = icon(OVERLAY_FOLDER,"SHDgreen")
var/icon/SHDred = icon(OVERLAY_FOLDER,"SHDred")

var/icon/SACDgreen = icon(OVERLAY_FOLDER,"SACDgreen")
var/icon/SACDred = icon(OVERLAY_FOLDER,"SACDred")
var/icon/SACDpanelopen = icon(OVERLAY_FOLDER,"SACDpanelopen")
var/icon/SACDwelded = icon(OVERLAY_FOLDER,"SACDwelded")
var/icon/SACDsparks_damaged = icon(OVERLAY_FOLDER,"SACDsparks_damaged")
var/icon/SACDsparks_broken = icon(OVERLAY_FOLDER,"SACDsparks_broken")
var/icon/SACDsparks_open = icon(OVERLAY_FOLDER,"SACDsparks_open")
var/icon/SACDsparks1 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 1)
var/icon/SACDsparks2 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 2)
var/icon/SACDsparks3 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 3)
var/icon/SACDsparks4 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 4)
var/icon/SACDsparks5 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 5)
var/icon/SACDsparks6 = icon(OVERLAY_FOLDER,"SACDsparks", frame = 6)

var/icon/HISEDgreen = icon(OVERLAY_FOLDER,"HISEDgreen")
var/icon/HISEDred = icon(OVERLAY_FOLDER,"HISEDred")
var/icon/HISEDpanelgreen = icon(OVERLAY_FOLDER,"HISEDpanelgreen")
var/icon/HISEDpanelred = icon(OVERLAY_FOLDER,"HISEDpanelred")
var/icon/HISEDpanelopen = icon(OVERLAY_FOLDER,"HISEDpanelopen")
var/icon/HISEDwelded = icon(OVERLAY_FOLDER,"HISEDwelded")
var/icon/HISEDsparks_damaged = icon(OVERLAY_FOLDER,"HISEDsparks_damaged")
var/icon/HISEDsparks_broken = icon(OVERLAY_FOLDER,"HISEDsparks_broken")
var/icon/HISEDsparks_open = icon(OVERLAY_FOLDER,"HISEDsparks_open")
var/icon/HISEDsparks1 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 1)
var/icon/HISEDsparks2 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 2)
var/icon/HISEDsparks3 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 3)
var/icon/HISEDsparks4 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 4)
var/icon/HISEDsparks5 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 5)
var/icon/HISEDsparks6 = icon(OVERLAY_FOLDER,"HISEDsparks", frame = 6)
var/icon/HISEDspikes_left = icon(OVERLAY_FOLDER,"HISEDspikes_left")
var/icon/HISEDspikes_right = icon(OVERLAY_FOLDER,"HISEDspikes_right")

var/icon/VDgreen = icon(OVERLAY_FOLDER,"VDgreen")
var/icon/VDgreen1 = icon(OVERLAY_FOLDER,"VDgreen1")
var/icon/VDgreen2 = icon(OVERLAY_FOLDER,"VDgreen2")
var/icon/VDgreen3 = icon(OVERLAY_FOLDER,"VDgreen3")
var/icon/VDgreen4 = icon(OVERLAY_FOLDER,"VDgreen4")
var/icon/VDred = icon(OVERLAY_FOLDER,"VDred")
var/icon/VDred1 = icon(OVERLAY_FOLDER,"VDred1")
var/icon/VDred2 = icon(OVERLAY_FOLDER,"VDred2")
var/icon/VDred3 = icon(OVERLAY_FOLDER,"VDred3")
var/icon/VDred4 = icon(OVERLAY_FOLDER,"VDred4")
var/icon/VDpanelopen = icon(OVERLAY_FOLDER,"VDpanelopen")
var/icon/VDpanel = icon(OVERLAY_FOLDER,"VDpanel")
var/icon/VDwelded = icon(OVERLAY_FOLDER,"VDwelded")
var/icon/VDsparks_damaged = icon(OVERLAY_FOLDER,"VDsparks_damaged")
var/icon/VDsparks_broken = icon(OVERLAY_FOLDER,"VDsparks_broken")
var/icon/VDsparks_open = icon(OVERLAY_FOLDER,"VDsparks_open")
var/icon/VDsparks1 = icon(OVERLAY_FOLDER,"VDsparks", frame = 1)
var/icon/VDsparks2 = icon(OVERLAY_FOLDER,"VDsparks", frame = 2)
var/icon/VDsparks3 = icon(OVERLAY_FOLDER,"VDsparks", frame = 3)
var/icon/VDsparks4 = icon(OVERLAY_FOLDER,"VDsparks", frame = 4)
var/icon/VDspikes_left = icon(OVERLAY_FOLDER,"VDspikes_left")
var/icon/VDspikes_right = icon(OVERLAY_FOLDER,"VDspikes_right")
var/icon/VDstumps_left = icon(OVERLAY_FOLDER,"VDstumps_left")
var/icon/VDstumps_right = icon(OVERLAY_FOLDER,"VDstumps_right")

var/icon/DDgreen = icon(OVERLAY_FOLDER_64,"DDgreen")
var/icon/DDred = icon(OVERLAY_FOLDER_64,"DDred")
var/icon/DDorange = icon(OVERLAY_FOLDER_64,"DDorange")
var/icon/DDpanelgreen = icon(OVERLAY_FOLDER_64,"DDpanelgreen")
var/icon/DDpanelred = icon(OVERLAY_FOLDER_64,"DDpanelred")
var/icon/DDpanelopen = icon(OVERLAY_FOLDER_64,"DDpanelopen")
var/icon/DDwelded = icon(OVERLAY_FOLDER_64,"DDwelded")
var/icon/DDsparks_damaged = icon(OVERLAY_FOLDER_64,"DDsparks_damaged")
var/icon/DDsparks_broken = icon(OVERLAY_FOLDER_64,"DDsparks_broken")
var/icon/DDsparks_open = icon(OVERLAY_FOLDER_64,"DDsparks_open")
var/icon/DDsparks1 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 1)
var/icon/DDsparks2 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 2)
var/icon/DDsparks3 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 3)
var/icon/DDsparks4 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 4)
var/icon/DDsparks5 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 5)
var/icon/DDsparks6 = icon(OVERLAY_FOLDER_64,"DDsparks", frame = 6)

//These vars take care of storing shift and frame value for each frame in animating procs
var/FRAME_N1=1
var/FRAME_N2=1
var/FRAME_N3=1

//Other vars used around around code to store icons, states names and such
var/list/directions = list("NORTH","SOUTH","EAST","WEST")
var/PRE_FRAME_DELAY = 1
var/FRAME_DELAY = 1
var/icon/sourceIcon
var/icon/outputIcon
var/icon/overlayIcon
var/icon/base_door
var/icon/door_state
var/list/source_states
var/list/all_states
var/filename
var/statename
var/dmifile
var/closing
var/pre_mode
var/mode
var/greenlight
var/redlight
var/lightswitch

//WARNING: Contains lots of copied, pasted and possibly tangled code. Could be probably done better.
//Based on and built around SS13SmoothingCutter

//Mode select setup:
world/view = "32x32"
turf/density = 1
turf/space/icon = 'Base/Icons.dmi'
turf/space/whitespace/icon_state = "whitespace"
turf/space/blackspace/icon_state = "blackspace"
turf/space/greyspace/icon_state = "greyspace"
turf/space/greenspace/icon_state = "greenspace"
turf/space/redpace/icon_state = "redspace"
turf/space/lighthere/icon_state = "lighthere"
turf/space/panelhere/icon_state = "panelhere"
turf/space/linehere/icon_state = "linehere"
turf/centerpoint/icon = 'Base/Icons.dmi'
turf/centerpoint/Main/icon_state = "blackspace"
turf/centerpoint/CommonDoor/icon_state = "panelhere"
turf/centerpoint/IndustrialDoor/icon_state = "whitespace"
turf/centerpoint/HatchDoor/icon_state = "linehere"
turf/centerpoint/SecureDoor/icon_state = "whitespace"
turf/centerpoint/HazardDoor/icon_state = "linehere"
turf/centerpoint/FireDoor/icon_state = "linehere"
turf/centerpoint/ExternalDoor/icon_state = "linehere"
turf/centerpoint/MaterialDoor/icon_state = "whitespace"
turf/centerpoint/WallDoor/icon_state = "whitespace"
turf/centerpoint/BlastDoor/icon_state = "whitespace"
turf/centerpoint/ShutterDoor/icon_state = "whitespace"
turf/centerpoint/SACDoor/icon_state = "whitespace"
turf/centerpoint/HighSecDoor/icon_state = "whitespace"
turf/centerpoint/VaultDoor/icon_state = "panelhere"
turf/centerpoint/DoubleDoor/icon_state = "panelhere"


turf/letter/icon = 'Base/Icons.dmi'
turf/letter/D/icon_state = "D"
turf/letter/L/icon_state = "L"
turf/letter/H/icon_state = "H"
turf/letter/P/icon_state = "P"
turf/letter/E/icon_state = "E"
turf/letter/O/icon_state = "O"
turf/letter/I/icon_state = "I"
turf/letter/T/icon_state = "T"
turf/letter/A/icon_state = "A"
turf/letter/F/icon_state = "F"
turf/letter/R/icon_state = "R"
turf/letter/G/icon_state = "G"
turf/letter/S/icon_state = "S"
turf/letter/N/icon_state = "N"
turf/letter/M/icon_state = "M"
mob/Login()
	new/obj/states/door_closed(usr)
	new/obj/states/door_open(usr)
	new/obj/states/door_locked(usr)
	new/obj/states/door_deny(usr)
	new/obj/states/door_spark(usr)
	new/obj/states/door_opening(usr)
	new/obj/states/door_closing(usr)
	new/obj/states/o_door_opening(usr)
	new/obj/states/o_door_closing(usr)
	new/obj/states/door_opening_stat(usr)
	new/obj/states/door_closing_stat(usr)
	new/obj/states/panel_open(usr)
	new/obj/states/welded(usr)
	new/obj/states/sparks(usr)
	new/obj/states/sparks(usr)
	usr.loc = locate(/turf/centerpoint/Main)
	..()
mob/Stat()
	statpanel("Modes")
	stat("")
	stat("Click animating mode to begin.")
	stat("Main animating modes:")
	stat("")
	stat(new/obj/modes/IndustrialDoor)
	stat("")
	stat(new/obj/modes/CommonDoor)
	stat("")
	stat(new/obj/modes/SecureDoor)
	stat("")
	stat(new/obj/modes/HatchDoor)
	stat("")
	stat(new/obj/modes/ExternalDoor)
	stat("")
	stat(new/obj/modes/SACDoor)
	stat("")
	stat(new/obj/modes/HighSecDoor)
	stat("")
	stat(new/obj/modes/VaultDoor)
	stat("")
	stat(new/obj/modes/DoubleDoor)
	stat("")
	stat("")
	stat("Misc animating modes:")
	stat("")
	stat(new/obj/modes/HazardDoor)
	stat("")
	stat(new/obj/modes/FireDoor)
	stat("")
	stat(new/obj/modes/MaterialDoor)
	stat("")
	stat(new/obj/modes/BlastDoor)
	stat("")
	stat(new/obj/modes/ShutterDoor)
	stat("")
	stat(new/obj/modes/WallDoor)

	statpanel("States to include")
	stat("")
	stat("Click any object in list to toggle it. If state is turned off, it will not be processed and will not appear in the output file in the end.")
	stat("")
	stat(usr.contents)

	statpanel("Help")
	stat("")
	stat("The map you see when you hover over any mode represents pixel map of all important points on the door. \
	It is there to give you rough idea of how the mode you are about to choose operates. \
	If placement of elements around your door is differend from what the mode has, the sprite set will come out messed up. \
	The separating line represents line where two differend door parts touch.")
	stat("")
	stat("Dmis provided to the animator have to have only one single icon state in them, else they will be rejected.")
	stat("")
	stat("Main door modes are compatible with the 'States to include' settings. \
	 The rest however has some special states added, and some regular taken away. You cannot set which door states you want with these modes. \
	 The animator will always add all of them to the final file.")
	stat("")
	stat("Misc animating modes sometimes also have strict rules for placement of lights and direction of the sprite. Since some modes \
	 produce several directions.")

obj/states
	icon = 'Base/Icons.dmi'
	icon_state = "yes"
	var/clicked = 0
	Click()
		if(!clicked)
			icon_state = "no"
			clicked = !clicked
		else
			icon_state = "yes"
			clicked = !clicked
obj/states/door_closed/name = "Closed state"
obj/states/door_open/name = "Opened state"
obj/states/door_locked/name = "Locked state"
obj/states/door_deny/name = "Deny animation"
obj/states/door_spark/name = "Sparking animation"
obj/states/door_opening/name = "Opening animation"
obj/states/door_closing/name = "Closing animation"
obj/states/o_door_closing/name = "Opening animation, panel open"
obj/states/o_door_opening/name = "Closing animation, panel open"
obj/states/door_opening_stat/name = "Opening animation, lights off"
obj/states/door_closing_stat/name = "Closing animation, lights off"
obj/states/panel_open/name = "Panel open overlay"
obj/states/welded/name = "Welded overlay"
obj/states/sparks/name = "Sparks overlays"
obj/states/door_closed/Click(){do_door_closed = !do_door_closed; ..()}
obj/states/door_open/Click(){do_door_open = !do_door_open; ..()}
obj/states/door_locked/Click(){do_door_locked = !do_door_locked; ..()}
obj/states/door_deny/Click(){do_door_deny = !do_door_deny; ..()}
obj/states/door_spark/Click(){do_door_spark = !do_door_spark; ..()}
obj/states/door_opening/Click(){do_door_opening = !do_door_opening; ..()}
obj/states/o_door_opening/Click(){do_o_door_opening = !do_o_door_opening; ..()}
obj/states/door_opening_stat/Click(){do_door_opening_stat = !do_door_opening_stat; ..()}
obj/states/panel_open/Click(){do_panel_open = !do_panel_open; ..()}
obj/states/welded/Click(){set src in usr; do_welded = !do_welded; ..()}
obj/states/sparks/Click(){do_sparks = !do_sparks; ..()}

//every object under obj/modes represents one cutting mode
//if adding any new objects as animating modes, they need to also be created in the "Modes" statpanel menu code so you can select them
//clicking on object in statpanel asks for icon and providing icon ends all user input and begins work
obj/modes
	icon = 'Base/Icons.dmi'
	MouseExited(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/Main)
	Click()
		var/dmifile = input(usr) as icon|null
		if(!dmifile)
			world << "You either stopped the file input, or your file was rejected."//sometimes even if you choose a file, it sends in null value, try altering the icon file to fix it
			return
		if(isfile(dmifile) && (copytext("[dmifile]",-4) == ".dmi"))
			world << "Icon [dmifile] loaded."
			FRAME_DELAY = PRE_FRAME_DELAY
			mode = pre_mode
			AnimateDoor(dmifile)
		else
			world << "Bad DMI file."
obj/modes/CommonDoor
	icon_state = "CD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/CommonDoor)
	Click()
		pre_mode = "CommonDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_CD
		world << "<B>CommonDoor mode chosen.</B>"
		..()
obj/modes/IndustrialDoor
	icon_state = "ID"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/IndustrialDoor)
	Click()
		pre_mode = "IndustrialDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_ID
		world << "<B>IndustrialDoor mode chosen.</B>"
		..()
obj/modes/HatchDoor
	icon_state = "HD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/HatchDoor)
	Click()
		pre_mode = "HatchDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_HD
		world << "<B>HatchDoor mode chosen.</B>"
		..()
obj/modes/SecureDoor
	icon_state = "SD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/SecureDoor)
	Click()
		pre_mode = "SecureDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_SD
		world << "<B>SecureDoor mode chosen.</B>"
		..()
obj/modes/HazardDoor
	icon_state = "HAZD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/HazardDoor)
	Click()
		pre_mode = "HazardDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_HAZD
		world << "<B>HazardDoor mode chosen.</B>"
		..()
obj/modes/FireDoor
	icon_state = "FD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/FireDoor)
	Click()
		pre_mode = "FireDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_FD
		world << "<B>FireDoor mode chosen.</B>"
		..()
obj/modes/ExternalDoor
	icon_state = "EXD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/ExternalDoor)
	Click()
		pre_mode = "ExternalDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_EXD
		world << "<B>ExternalDoor mode chosen.</B>"
		..()
obj/modes/MaterialDoor
	icon_state = "MATD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/MaterialDoor)
	Click()
		pre_mode = "MaterialDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_MATD
		world << "<B>MaterialDoor mode chosen.</B>"
		..()
obj/modes/WallDoor
	icon_state = "WD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/WallDoor)
	Click()
		pre_mode = "WallDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_WD
		world << "<B>WallDoor mode chosen.</B>"
		..()
obj/modes/BlastDoor
	icon_state = "BLD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/BlastDoor)
	Click()
		pre_mode = "BlastDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_BLD
		world << "<B>BlastDoor mode chosen.</B>"
		..()
obj/modes/ShutterDoor
	icon_state = "SHD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/ShutterDoor)
	Click()
		pre_mode = "ShutterDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_SHD
		world << "<B>ShutterDoor mode chosen.</B>"
		..()
obj/modes/SACDoor
	icon_state = "SACD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/SACDoor)
	Click()
		pre_mode = "SACDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_SACD
		world << "<B>SACDoor mode chosen.</B>"
		..()
obj/modes/HighSecDoor
	icon_state = "HISED"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/HighSecDoor)
	Click()
		pre_mode = "HighSecDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_HISED
		world << "<B>HighSecDoor mode chosen.</B>"
		..()
obj/modes/VaultDoor
	icon_state = "VD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/VaultDoor)
	Click()
		pre_mode = "VaultDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_VD
		world << "<B>VaultDoor mode chosen.</B>"
		..()
obj/modes/DoubleDoor
	icon = 'Base/Icons64x64.dmi'
	icon_state = "DD"
	MouseEntered(statpanel="Modes")
		usr.loc = locate(/turf/centerpoint/DoubleDoor)
	Click()
		pre_mode = "DoubleDoorAnimator"
		PRE_FRAME_DELAY = FRAME_DELAY_DD
		world << "<B>DoubleDoor mode chosen.</B>"
		..()

//The main proc is very long mainly because grouping all icon states under every door mode was easier to work with in the long run,
//while smashing all door modes under every icon state over and over would be about 4 times as space efficient, it would make it pain to work with.
/proc/AnimateDoor(dmifile as icon)
	sourceIcon = icon(dmifile) //the original door icon gets loaded into this var
	source_states = sourceIcon.IconStates()
	switch(source_states.len)//if you input dmi with less or more than one state, ends here
		if(0)
			world << "Provided DMI file was found to be empty. Halting process."
			return
		if(1)
		else
			world << "Provided DMI file was found to have more than one icon state. Halting process."
			return
	//list of all icon states generated by the animator
	//this list is overriden later in some door modes, since they do not have the usual ammount and naming of icon states
	all_states = list("door_closed","door_open","door_locked","door_deny","door_spark","door_opening","door_closing","o_door_opening","o_door_closing","door_opening_stat","door_closing_stat","panel_open","welded","sparks_damaged","sparks_broken","sparks_open")
	filename = "[copytext("[dmifile]", 1, -4)].dmi"
	fdel(filename)
	outputIcon = new/icon()
	fcopy(outputIcon, "Output/[filename]")
	outputIcon += icon()
	switch(mode)
		if("IndustrialDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							IndustrialDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							IndustrialDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							IndustrialDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							IndustrialDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(IDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(IDpanelgreen,ICON_OVERLAY,1,1)
							IndustrialDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(IDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(IDpanelgreen,ICON_OVERLAY,1,1)
							IndustrialDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(IDpanelopen,ICON_OVERLAY,1,1)
							IndustrialDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(IDpanelopen,ICON_OVERLAY,1,1)
							IndustrialDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							IndustrialDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							IndustrialDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(IDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(IDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(IDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(IDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(IDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("CommonDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							CommonDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							CommonDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							CommonDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							CommonDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(CDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(CDpanelgreen,ICON_OVERLAY,1,1)
							CommonDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(CDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(CDpanelgreen,ICON_OVERLAY,1,1)
							CommonDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(CDpanelopen,ICON_OVERLAY,1,1)
							CommonDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(CDpanelopen,ICON_OVERLAY,1,1)
							CommonDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							CommonDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							CommonDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(CDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(CDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(CDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(CDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(CDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("HatchDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				outputIcon += icon(filename)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							HatchDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							HatchDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							HatchDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							HatchDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							greenlight = 1
							base_door.Blend(HDpanelgreen,ICON_OVERLAY,1,1)
							HatchDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							redlight = 1
							HatchDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(HDpanelopen,ICON_OVERLAY,1,1)
							HatchDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(HDpanelopen,ICON_OVERLAY,1,1)
							HatchDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							HatchDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							HatchDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(HDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(HDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(HDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(HDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(HDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("SecureDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							SecureDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							SecureDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							SecureDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							SecureDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(SDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(SDpanelgreen,ICON_OVERLAY,1,1)
							SecureDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(SDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(SDpanelgreen,ICON_OVERLAY,1,1)
							SecureDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(SDpanelopen,ICON_OVERLAY,1,1)
							SecureDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(SDpanelopen,ICON_OVERLAY,1,1)
							SecureDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							SecureDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							SecureDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(SDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(SDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(SDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(SDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(SDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("HazardDoorAnimator")
			all_states = list("door_closed","door_open","door_locked","door_deny","door_opening","door_closing","door_anchored","door_construction","welded","welded_open","hatch","misc_overlays")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						outputIcon.Insert(sourceIcon, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						world << "Generating opened door state."
						HazardDoorOpenState(dmifile)
					if("door_locked")
						world << "Generating locked door state."
						HazardDoorLockedState(dmifile)
					if("door_deny")
						world << "Generating door deny animation."
						HazardDoorDenyState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						base_door.Blend(HAZDgreen,ICON_OVERLAY,1,1)
						HazardDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						base_door.Blend(HAZDgreen,ICON_OVERLAY,1,1)
						HazardDoorAnimator(dmifile)
					if("door_anchored")
						world << "Generating door anchored state."
						HazardDoorAnchoredState(dmifile)
					if("door_construction")
						world << "Generating door construction state."
						HazardDoorConstructionState(dmifile)
					if("hatch")
						world << "Adding hatch overlay."
						outputIcon.Insert(HAZDpanel_open3, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("welded")
						world << "Adding welded overlay."
						outputIcon.Insert(HAZDwelded, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("welded_open")
						world << "Adding welded open overlay."
						outputIcon.Insert(HAZDwelded_open, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("misc_overlays")
						world << "Adding misc overlays."
						statename = "palert"
						outputIcon.Insert(HAZDpalert, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_cold_1"
						outputIcon.Insert(HAZDalert_cold_1, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_cold_2"
						outputIcon.Insert(HAZDalert_cold_2, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_cold_4"
						outputIcon.Insert(HAZDalert_cold_4, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_cold_8"
						outputIcon.Insert(HAZDalert_cold_8, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_hot_1"
						outputIcon.Insert(HAZDalert_hot_1, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_hot_2"
						outputIcon.Insert(HAZDalert_hot_2, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_hot_4"
						outputIcon.Insert(HAZDalert_hot_4, statename)
						fcopy(outputIcon, "Output/[filename]")
						statename = "alert_hot_8"
						outputIcon.Insert(HAZDalert_hot_8, statename)
						fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("FireDoorAnimator")
			all_states = list("door_closed","door_open","door_locked","door_deny","door_opening","door_closing","welded","welded_open")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						outputIcon.Insert(sourceIcon, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						world << "Generating opened door state."
						FireDoorOpenState(dmifile)
					if("door_locked")
						world << "Generating locked door state."
						FireDoorLockedState(dmifile)
					if("door_deny")
						world << "Generating door deny animation."
						FireDoorDenyState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						base_door.Blend(FDgreen,ICON_OVERLAY,1,1)
						FireDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						base_door.Blend(HAZDgreen,ICON_OVERLAY,1,1)
						FireDoorAnimator(dmifile)
					if("welded")
						world << "Adding welded overlay."
						outputIcon.Insert(FDwelded, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("welded_open")
						world << "Adding welded open overlay."
						outputIcon.Insert(FDwelded_open, statename)
						fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("ExternalDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							ExternalDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							ExternalDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							ExternalDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							ExternalDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							//greenlight = 1
							base_door.Blend(EXDgreen,ICON_OVERLAY,1,1)
							ExternalDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							//greenlight = 1
							base_door.Blend(EXDgreen,ICON_OVERLAY,1,1)
							ExternalDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(EXDpanelopen,ICON_OVERLAY,1,1)
							ExternalDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(EXDpanelopen,ICON_OVERLAY,1,1)
							ExternalDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							ExternalDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							ExternalDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(EXDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(EXDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(EXDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(EXDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(EXDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("MaterialDoorAnimator")
			all_states = list("door_closed","door_open","door_opening","door_closing")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						outputIcon.Insert(sourceIcon, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						world << "Generating opened door state."
						MaterialDoorOpenState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						MaterialDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						MaterialDoorAnimator(dmifile)
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("WallDoorAnimator")
			all_states = list("door_closed","door_open","door_opening","door_closing")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						outputIcon.Insert(sourceIcon, statename)
						fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						world << "Generating opened door state."
						WallDoorOpenState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						WallDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						WallDoorAnimator(dmifile)
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("BlastDoorAnimator")
			all_states = list("door_closed","door_open","door_opening","door_closing")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						BlastDoorClosedState(dmifile)
					if("door_open")
						world << "Generating opened door state."
						BlastDoorOpenState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						BlastDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						BlastDoorAnimator(dmifile)
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("ShutterDoorAnimator")
			all_states = list("door_closed","door_open","door_opening","door_closing")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				switch(statename)
					if("door_closed")
						world << "Generating closed door state."
						ShutterDoorClosedState(dmifile)
					if("door_open")
						world << "Generating opened door state."
						ShutterDoorOpenState(dmifile)
					if("door_opening")
						world << "Generating door opening animation."
						base_door = icon(door_state)
						closing = 0
						ShutterDoorAnimator(dmifile)
					if("door_closing")
						world << "Generating door closing animation."
						base_door = icon(door_state)
						closing = 1
						ShutterDoorAnimator(dmifile)
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("SACDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				outputIcon += icon(filename)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							SACDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							SACDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							SACDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							SACDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							greenlight = 1
							SACDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							greenlight = 1
							SACDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(SACDpanelopen,ICON_OVERLAY,1,1)
							SACDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(SACDpanelopen,ICON_OVERLAY,1,1)
							SACDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							SACDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							SACDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(SACDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(SACDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(SACDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(SACDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(SACDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("HighSecDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				outputIcon += icon(filename)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							HighSecDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							HighSecDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							HighSecDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							HighSecDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(HISEDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(HISEDpanelgreen,ICON_OVERLAY,1,1)
							HighSecDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(HISEDgreen,ICON_OVERLAY,1,1)
							base_door.Blend(HISEDpanelgreen,ICON_OVERLAY,1,1)
							HighSecDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(HISEDpanelopen,ICON_OVERLAY,1,1)
							HighSecDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(HISEDpanelopen,ICON_OVERLAY,1,1)
							HighSecDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							HighSecDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							HighSecDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(HISEDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(HISEDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(HISEDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(HISEDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(HISEDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("VaultDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				outputIcon += icon(filename)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							outputIcon.Insert(sourceIcon, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							VaultDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							VaultDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							VaultDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							VaultDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(VDgreen,ICON_OVERLAY,1,1)
							VaultDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(VDgreen,ICON_OVERLAY,1,1)
							VaultDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(VDpanel,ICON_OVERLAY,1,1)
							VaultDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(VDpanel,ICON_OVERLAY,1,1)
							VaultDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							VaultDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							VaultDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							outputIcon.Insert(VDpanelopen, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							outputIcon.Insert(VDwelded, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							outputIcon.Insert(VDsparks_damaged, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							outputIcon.Insert(VDsparks_broken, statename)
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							outputIcon.Insert(VDsparks_open, statename)
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."
		if("DoubleDoorAnimator")
			for(var/state in all_states)
				statename = lowertext(state)
				door_state = icon(sourceIcon)
				outputIcon += icon(filename)
				switch(statename)
					if("door_closed")
						if(do_door_closed)
							world << "Generating closed door state."
							for(var/direct in directions)
								base_door = icon(sourceIcon)
								switch(direct)
									if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH)}
									if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH)}
									if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST)}
									if("EAST"){outputIcon.Insert(base_door, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					if("door_open")
						if(do_door_open)
							world << "Generating opened door state."
							DoubleDoorOpenState(dmifile)
					if("door_locked")
						if(do_door_locked)
							world << "Generating locked door state."
							DoubleDoorLockedState(dmifile)
					if("door_deny")
						if(do_door_deny)
							world << "Generating door deny animation."
							DoubleDoorDenyState(dmifile)
					if("door_spark")
						if(do_door_spark)
							world << "Generating door sparking animation."
							DoubleDoorSparksState(dmifile)
					if("door_opening")
						if(do_door_opening)
							world << "Generating door opening animation."
							base_door = icon(door_state)
							closing = 0
							greenlight = 1
							base_door.Blend(DDpanelgreen,ICON_OVERLAY,1,1)
							DoubleDoorAnimator(dmifile)
					if("door_closing")
						if(do_door_closing)
							world << "Generating door closing animation."
							base_door = icon(door_state)
							closing = 1
							redlight = 1
							DoubleDoorAnimator(dmifile)
					if("o_door_opening")
						if(do_o_door_opening)
							world << "Generating door opening animation with panel open."
							base_door = icon(door_state)
							closing = 0
							base_door.Blend(DDpanelopen,ICON_OVERLAY,1,1)
							DoubleDoorAnimator(dmifile)
					if("o_door_closing")
						if(do_o_door_closing)
							world << "Generating door closing animation with panel open."
							base_door = icon(door_state)
							closing = 1
							base_door.Blend(DDpanelopen,ICON_OVERLAY,1,1)
							DoubleDoorAnimator(dmifile)
					if("door_opening_stat")
						if(do_door_opening_stat)
							world << "Generating door opening animation with lights off."
							base_door = icon(door_state)
							closing = 0
							DoubleDoorAnimator(dmifile)
					if("door_closing_stat")
						if(do_door_closing_stat)
							world << "Generating door closing animation with lights off."
							base_door = icon(door_state)
							closing = 1
							DoubleDoorAnimator(dmifile)
					if("panel_open")
						if(do_panel_open)
							world << "Adding panel overlay."
							for(var/direct in directions)
								var/icon/holder = icon(DDpanelopen)
								switch(direct)
									if("NORTH"){holder.Turn(-90); holder.Shift(WEST, 32); outputIcon.Insert(holder, statename, NORTH)}
									if("SOUTH"){holder.Turn(90); outputIcon.Insert(holder, statename, SOUTH)}
									if("WEST"){holder.Turn(180); holder.Shift(SOUTH, 32); outputIcon.Insert(holder, statename, WEST)}
									if("EAST"){outputIcon.Insert(holder, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					if("welded")
						if(do_welded)
							world << "Adding welded overlay."
							for(var/direct in directions)
								var/icon/holder = icon(DDwelded)
								switch(direct)
									if("NORTH"){holder.Turn(-90); holder.Shift(WEST, 32); outputIcon.Insert(holder, statename, NORTH)}
									if("SOUTH"){holder.Turn(90); outputIcon.Insert(holder, statename, SOUTH)}
									if("WEST"){holder.Turn(180); holder.Shift(SOUTH, 32); outputIcon.Insert(holder, statename, WEST)}
									if("EAST"){outputIcon.Insert(holder, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_damaged")
						if(do_sparks)
							world << "Adding sparks damaged overlay."
							for(var/direct in directions)
								var/icon/holder = icon(DDsparks_damaged)
								switch(direct)
									if("NORTH"){holder.Turn(-90); holder.Shift(WEST, 32); outputIcon.Insert(holder, statename, NORTH)}
									if("SOUTH"){holder.Turn(90); outputIcon.Insert(holder, statename, SOUTH)}
									if("WEST"){holder.Turn(180); holder.Shift(SOUTH, 32); outputIcon.Insert(holder, statename, WEST)}
									if("EAST"){outputIcon.Insert(holder, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_broken")
						if(do_sparks)
							world << "Adding sparks broken overlay."
							for(var/direct in directions)
								var/icon/holder = icon(DDsparks_broken)
								switch(direct)
									if("NORTH"){holder.Turn(-90); holder.Shift(WEST, 32); outputIcon.Insert(holder, statename, NORTH)}
									if("SOUTH"){holder.Turn(90); outputIcon.Insert(holder, statename, SOUTH)}
									if("WEST"){holder.Turn(180); holder.Shift(SOUTH, 32); outputIcon.Insert(holder, statename, WEST)}
									if("EAST"){outputIcon.Insert(holder, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					if("sparks_open")
						if(do_sparks)
							world << "Adding sparks open overlay."
							for(var/direct in directions)
								var/icon/holder = icon(DDsparks_open)
								switch(direct)
									if("NORTH"){holder.Turn(-90); holder.Shift(WEST, 32); outputIcon.Insert(holder, statename, NORTH)}
									if("SOUTH"){holder.Turn(90); outputIcon.Insert(holder, statename, SOUTH)}
									if("WEST"){holder.Turn(180); holder.Shift(SOUTH, 32); outputIcon.Insert(holder, statename, WEST)}
									if("EAST"){outputIcon.Insert(holder, statename, EAST)}
							fcopy(outputIcon, "Output/[filename]")
					else
						world << "Found redundant icon. Adding to output file."
						var/icon/redundant = icon(sourceIcon, statename)
						outputIcon.Insert(redundant, statename)
						fcopy(outputIcon, "Output/[filename]")
			world << "\blue Door file finished and ready in output folder."