//This file, unlike any other, holds several types of doors.
//Secret wall doors, simple material doors, blast doors & shutters.
//These consist of such simple structure and low ammount of icon states, that they might as well share a folder.

//Main MaterialDoor animating proc
/proc/MaterialDoorAnimator(dmifile as icon)
	if(closing)
		var/icon/frame = icon(base_door)
		outputIcon.Insert(frame, statename, frame = 12, delay = FRAME_DELAY)
		for(FRAME_N2 = 11, FRAME_N2 > 0, FRAME_N2--)
			outputIcon += icon(filename)
			var/icon/lframe = icon(base_door)
			lframe.DrawBox(null, 17, 1, 32, 32)
			lframe.DrawBox(null, 1, 32, FRAME_N1, 1)
			lframe.Shift(WEST, FRAME_N1)
			var/icon/rframe = icon(base_door)
			rframe.DrawBox(null, 1, 1, 16, 32)
			rframe.DrawBox(null, 32, 32, 33 - FRAME_N1, 1)
			rframe.Shift(EAST, FRAME_N1)
			lframe.Blend(rframe,ICON_OVERLAY,1,1)
			outputIcon.Insert(lframe, statename, frame = FRAME_N2, delay = FRAME_DELAY)

			FRAME_N1++
		fcopy(outputIcon, "Output/[filename]")
	else
		var/icon/frame = icon(base_door)
		outputIcon.Insert(frame, statename, frame = 1, delay = FRAME_DELAY)
		for(FRAME_N2 = 2, FRAME_N2 < 13, FRAME_N2++)
			outputIcon += icon(filename)
			var/icon/lframe = icon(base_door)
			lframe.DrawBox(null, 17, 1, 32, 32)
			lframe.DrawBox(null, 1, 32, FRAME_N1, 1)
			lframe.Shift(WEST, FRAME_N1)
			var/icon/rframe = icon(base_door)
			rframe.DrawBox(null, 1, 1, 16, 32)
			rframe.DrawBox(null, 32, 32, 33 - FRAME_N1, 1)
			rframe.Shift(EAST, FRAME_N1)
			lframe.Blend(rframe,ICON_OVERLAY,1,1)
			outputIcon.Insert(lframe, statename, frame = FRAME_N2, delay = FRAME_DELAY)
			FRAME_N1++
		fcopy(outputIcon, "Output/[filename]")
	FRAME_N1 = 1 //reset values for next icon
	FRAME_N2 = 1
	closing = 0

//secondary proc for generating opened door icon
/proc/MaterialDoorOpenState(dmifile as icon)
	var/icon/lframe = icon(door_state)
	lframe.DrawBox(null, 17, 1, 32, 32)
	lframe.DrawBox(null, 1, 32, FRAME_N1, 1)
	lframe.Shift(WEST, 11)
	var/icon/rframe = icon(door_state)
	rframe.DrawBox(null, 1, 1, 16, 32)
	rframe.DrawBox(null, 32, 32, 33 - FRAME_N1, 1)
	rframe.Shift(EAST, 11)
	lframe.Blend(rframe,ICON_OVERLAY,1,1)
	outputIcon.Insert(lframe, statename)
	fcopy(outputIcon, "Output/[filename]")

//Main WallDoor animating proc
/proc/WallDoorAnimator(dmifile as icon)
	if(closing)
		for(FRAME_N2 = 1, FRAME_N2 < 27, FRAME_N2++)//this for loop is done differently than rest of closing for loops, as it simply did not generate first 8 or so frames when used with FRAME_N2-- for whatever reason. It always only generated 17th all the way to 1.
			outputIcon += icon(filename)
			var/icon/frameo = icon(base_door)
			frameo.DrawBox(null, 1, 1, 25 - FRAME_N1, 32)
			frameo.Shift(WEST, 25 - FRAME_N1)
			if(FRAME_N2 == 26)outputIcon.Insert(frameo, statename, frame = FRAME_N2, delay = 3)
			else outputIcon.Insert(frameo, statename, frame = FRAME_N2, delay = FRAME_DELAY)
			FRAME_N1++
		fcopy(outputIcon, "Output/[filename]")
	else
		var/icon/frame = icon(base_door)
		outputIcon.Insert(frame, statename, frame = 1, delay = FRAME_DELAY)
		for(FRAME_N2 = 2, FRAME_N2 < 27, FRAME_N2++)
			outputIcon += icon(filename)
			var/icon/frameo = icon(base_door)
			frameo.DrawBox(null, 1, 1, FRAME_N1, 1)
			frameo.Shift(WEST, FRAME_N1)
			if(FRAME_N2 == 26)outputIcon.Insert(frameo, statename, frame = FRAME_N2, delay = 3)
			else outputIcon.Insert(frameo, statename, frame = FRAME_N2, delay = FRAME_DELAY)
			FRAME_N1++
		fcopy(outputIcon, "Output/[filename]")
	FRAME_N1 = 1 //reset values for next icon
	FRAME_N2 = 1
	closing = 0

//secondary proc for generating opened door icon
/proc/WallDoorOpenState(dmifile as icon)
	var/icon/frame = icon(door_state)
	frame.DrawBox(null, 1, 32, 20, 1)
	frame.Shift(WEST, 25)
	outputIcon.Insert(frame, statename)
	fcopy(outputIcon, "Output/[filename]")

//Main BlastDoor animating proc
/proc/BlastDoorAnimator(dmifile as icon)
	if(closing)
		lightswitch = 1
		for(var/direct in directions)
			var/icon/frame = icon(base_door)
			frame.Blend(BLDc_lights2,ICON_OVERLAY,1,1)
			switch(direct)
				if("NORTH"){frame.Turn(180); outputIcon.Insert(frame, statename, NORTH, frame = 11, delay = 1)}
				if("SOUTH"){outputIcon.Insert(frame, statename, SOUTH, frame = 11, delay = 1)}
				if("WEST"){frame.Turn(90); outputIcon.Insert(frame, statename, WEST, frame = 11, delay = 1)}
				if("EAST"){frame.Turn(-90); outputIcon.Insert(frame, statename, EAST, frame = 11, delay = 1)}
			for(FRAME_N2 = 10, FRAME_N2 > 0, FRAME_N2--)
				outputIcon += icon(filename)
				if(lightswitch){base_door.Blend(BLDc_lights2,ICON_OVERLAY,1,1)}
				else{base_door.Blend(BLDc_lights1,ICON_OVERLAY,1,1)}
				var/icon/lframe = icon(base_door)
				lframe.DrawBox(null, 17, 1, 32, 32)
				lframe.DrawBox(null, 1, 32, FRAME_N1, 1)
				lframe.Shift(WEST, FRAME_N1)
				var/icon/rframe = icon(base_door)
				rframe.DrawBox(null, 1, 1, 16, 32)
				rframe.DrawBox(null, 32, 32, 33 - FRAME_N1, 1)
				rframe.Shift(EAST, FRAME_N1)
				lframe.Blend(rframe,ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){outputIcon.Insert(lframe, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				FRAME_N1++
				if(FRAME_N2 % 2 == 0)lightswitch = !lightswitch //only switches every second frame, else it will be too fast
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			closing = 0
			lightswitch = 1
		fcopy(outputIcon, "Output/[filename]")
	else
		lightswitch = 1
		for(var/direct in directions)
			var/icon/frame = icon(base_door)
			frame.Blend(BLDc_lights2,ICON_OVERLAY,1,1)
			switch(direct)
				if("NORTH"){frame.Turn(180); outputIcon.Insert(frame, statename, NORTH, frame = 1, delay = FRAME_DELAY)}
				if("SOUTH"){outputIcon.Insert(frame, statename, SOUTH, frame = 1, delay = FRAME_DELAY)}
				if("WEST"){frame.Turn(90); outputIcon.Insert(frame, statename, WEST, frame = 1, delay = FRAME_DELAY)}
				if("EAST"){frame.Turn(-90); outputIcon.Insert(frame, statename, EAST, frame = 1, delay = FRAME_DELAY)}
			for(FRAME_N2 = 2, FRAME_N2 < 12, FRAME_N2++)
				outputIcon += icon(filename)
				if(lightswitch){base_door.Blend(BLDc_lights2,ICON_OVERLAY,1,1)}
				else{base_door.Blend(BLDc_lights1,ICON_OVERLAY,1,1)}
				var/icon/lframe = icon(base_door)
				lframe.DrawBox(null, 17, 1, 32, 32)
				lframe.DrawBox(null, 1, 32, FRAME_N1, 1)
				lframe.Shift(WEST, FRAME_N1)
				var/icon/rframe = icon(base_door)
				rframe.DrawBox(null, 1, 1, 16, 32)
				rframe.DrawBox(null, 32, 32, 33 - FRAME_N1, 1)
				rframe.Shift(EAST, FRAME_N1)
				lframe.Blend(rframe,ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){lframe.Turn(180); if(FRAME_N2 == 11)outputIcon.Insert(lframe, statename, NORTH, frame = FRAME_N2, delay = 1); else outputIcon.Insert(lframe, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){if(FRAME_N2 == 11)outputIcon.Insert(lframe, statename, SOUTH, frame = FRAME_N2, delay = 1); else outputIcon.Insert(lframe, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){lframe.Turn(90); if(FRAME_N2 == 11)outputIcon.Insert(lframe, statename, WEST, frame = FRAME_N2, delay = 1); else outputIcon.Insert(lframe, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){lframe.Turn(-90); if(FRAME_N2 == 11)outputIcon.Insert(lframe, statename, EAST, frame = FRAME_N2, delay = 1); else outputIcon.Insert(lframe, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				FRAME_N1++
				if(FRAME_N2 % 2 == 0)lightswitch = !lightswitch
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			closing = 0
			lightswitch = 1
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating closed door icons
/proc/BlastDoorClosedState(dmifile as icon)
	var/set_dir
	for(var/direct in directions)
		switch(direct)
			if("NORTH"){set_dir = NORTH}
			if("SOUTH"){set_dir = SOUTH}
			if("WEST"){set_dir = WEST}
			if("EAST"){set_dir = EAST}
		outputIcon += icon(filename)
		base_door = icon(door_state)
		base_door.Blend(BLDo_lights1,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(180); outputIcon.Insert(base_door, statename, set_dir, frame = 1)}
			if("SOUTH"){outputIcon.Insert(base_door, statename, set_dir, frame = 1)}
			if("WEST"){base_door.Turn(90); outputIcon.Insert(base_door, statename, set_dir, frame = 1)}
			if("EAST"){base_door.Turn(-90); outputIcon.Insert(base_door, statename, set_dir, frame = 1)}
		base_door = icon(door_state)
		base_door.Blend(BLDo_lights2,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(180); outputIcon.Insert(base_door, statename, set_dir, frame = 2)}
			if("SOUTH"){outputIcon.Insert(base_door, statename, set_dir, frame = 2)}
			if("WEST"){base_door.Turn(90); outputIcon.Insert(base_door, statename, set_dir, frame = 2)}
			if("EAST"){base_door.Turn(-90); outputIcon.Insert(base_door, statename, set_dir, frame = 2)}
		base_door = icon(door_state)
		base_door.Blend(BLDo_lights3,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(180); outputIcon.Insert(base_door, statename, set_dir, frame = 3)}
			if("SOUTH"){outputIcon.Insert(base_door, statename, set_dir, frame = 3)}
			if("WEST"){base_door.Turn(90); outputIcon.Insert(base_door, statename, set_dir, frame = 3)}
			if("EAST"){base_door.Turn(-90); outputIcon.Insert(base_door, statename, set_dir, frame = 3)}
		base_door = icon(door_state)
		base_door.Blend(BLDo_lights4,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(180); outputIcon.Insert(base_door, statename, set_dir, frame = 4)}
			if("SOUTH"){outputIcon.Insert(base_door, statename, set_dir, frame = 4)}
			if("WEST"){base_door.Turn(90); outputIcon.Insert(base_door, statename, set_dir, frame = 4)}
			if("EAST"){base_door.Turn(-90); outputIcon.Insert(base_door, statename, set_dir, frame = 4)}
		base_door = icon(door_state)
		base_door.Blend(BLDo_lights5,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(180); outputIcon.Insert(base_door, statename, set_dir, frame = 5)}
			if("SOUTH"){outputIcon.Insert(base_door, statename, set_dir, frame = 5)}
			if("WEST"){base_door.Turn(90); outputIcon.Insert(base_door, statename, set_dir, frame = 5)}
			if("EAST"){base_door.Turn(-90); outputIcon.Insert(base_door, statename, set_dir, frame = 5)}
	fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating opened door icons
//could not think of a way to do this with for loop while using differend var each loop
/proc/BlastDoorOpenState(dmifile as icon)
	var/set_dir
	for(var/direct in directions)
		switch(direct)
			if("NORTH"){set_dir = NORTH}
			if("SOUTH"){set_dir = SOUTH}
			if("WEST"){set_dir = WEST}
			if("EAST"){set_dir = EAST}
		outputIcon += icon(filename)
		base_door = icon(door_state)
		base_door.Blend(BLDg_lights1,ICON_OVERLAY,1,1)
		var/icon/lframe = icon(base_door)
		lframe.DrawBox(null, 17, 1, 32, 32)
		lframe.DrawBox(null, 1, 32, 10, 1)
		lframe.Shift(WEST, 10)
		var/icon/rframe = icon(base_door)
		rframe.DrawBox(null, 1, 1, 16, 32)
		rframe.DrawBox(null, 32, 32, 23, 1)
		rframe.Shift(EAST, 10)
		lframe.Blend(rframe,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, set_dir, frame = 1)}
			if("SOUTH"){outputIcon.Insert(lframe, statename, set_dir, frame = 1)}
			if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, set_dir, frame = 1)}
			if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, set_dir, frame = 1)}
		base_door = icon(door_state)
		base_door.Blend(BLDg_lights2,ICON_OVERLAY,1,1)
		lframe = icon(base_door)
		lframe.DrawBox(null, 17, 1, 32, 32)
		lframe.DrawBox(null, 1, 32, 10, 1)
		lframe.Shift(WEST, 10)
		rframe = icon(base_door)
		rframe.DrawBox(null, 1, 1, 16, 32)
		rframe.DrawBox(null, 32, 32, 23, 1)
		rframe.Shift(EAST, 10)
		lframe.Blend(rframe,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, set_dir, frame = 2)}
			if("SOUTH"){outputIcon.Insert(lframe, statename, set_dir, frame = 2)}
			if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, set_dir, frame = 2)}
			if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, set_dir, frame = 2)}
		base_door = icon(door_state)
		base_door.Blend(BLDg_lights3,ICON_OVERLAY,1,1)
		lframe = icon(base_door)
		lframe.DrawBox(null, 17, 1, 32, 32)
		lframe.DrawBox(null, 1, 32, 10, 1)
		lframe.Shift(WEST, 10)
		rframe = icon(base_door)
		rframe.DrawBox(null, 1, 1, 16, 32)
		rframe.DrawBox(null, 32, 32, 23, 1)
		rframe.Shift(EAST, 10)
		lframe.Blend(rframe,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, set_dir, frame = 3)}
			if("SOUTH"){outputIcon.Insert(lframe, statename, set_dir, frame = 3)}
			if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, set_dir, frame = 3)}
			if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, set_dir, frame = 3)}
		base_door = icon(door_state)
		base_door.Blend(BLDg_lights4,ICON_OVERLAY,1,1)
		lframe = icon(base_door)
		lframe.DrawBox(null, 17, 1, 32, 32)
		lframe.DrawBox(null, 1, 32, 10, 1)
		lframe.Shift(WEST, 10)
		rframe = icon(base_door)
		rframe.DrawBox(null, 1, 1, 16, 32)
		rframe.DrawBox(null, 32, 32, 23, 1)
		rframe.Shift(EAST, 10)
		lframe.Blend(rframe,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, set_dir, frame = 4)}
			if("SOUTH"){outputIcon.Insert(lframe, statename, set_dir, frame = 4)}
			if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, set_dir, frame = 4)}
			if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, set_dir, frame = 4)}
		base_door = icon(door_state)
		base_door.Blend(BLDg_lights5,ICON_OVERLAY,1,1)
		lframe = icon(base_door)
		lframe.DrawBox(null, 17, 1, 32, 32)
		lframe.DrawBox(null, 1, 32, 10, 1)
		lframe.Shift(WEST, 10)
		rframe = icon(base_door)
		rframe.DrawBox(null, 1, 1, 16, 32)
		rframe.DrawBox(null, 32, 32, 23, 1)
		rframe.Shift(EAST, 10)
		lframe.Blend(rframe,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){lframe.Turn(180); outputIcon.Insert(lframe, statename, set_dir, frame = 5)}
			if("SOUTH"){outputIcon.Insert(lframe, statename, set_dir, frame = 5)}
			if("WEST"){lframe.Turn(90); outputIcon.Insert(lframe, statename, set_dir, frame = 5)}
			if("EAST"){lframe.Turn(-90); outputIcon.Insert(lframe, statename, set_dir, frame = 5)}
	fcopy(outputIcon, "Output/[filename]")


//Main ShutterDoor animating proc
proc/ShutterDoorAnimator(dmifile as icon)
	var/icon/frame = icon(base_door)
	frame.DrawBox(null, 4, 29, 29, 29)
	frame.DrawBox(null, 1, 28, 32, 2)
	if(closing)
		for(var/direct in directions)
			for(FRAME_N2 = 1, FRAME_N2 < 28, FRAME_N2++)
				outputIcon += icon(filename)
				var/icon/shutter = icon(base_door)
				shutter.DrawBox(null, 1, 1, 32, 1)
				shutter.DrawBox(null, 1, 32, 32, 3 + FRAME_N1)
				shutter.Shift(NORTH,27 - FRAME_N1)
				shutter.Blend(frame, ICON_OVERLAY,1,1)
				if(lightswitch) shutter.Blend(SHDred, ICON_OVERLAY,1,1)
				if(FRAME_N2 == 1) shutter.Blend(SHDgreen, ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){shutter.Turn(180); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, NORTH, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, SOUTH, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){shutter.Turn(90); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, WEST, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){shutter.Turn(-90); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, EAST, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				if(FRAME_N2 % 4 == 0)lightswitch = !lightswitch
				FRAME_N1++
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			closing = 0
		fcopy(outputIcon, "Output/[filename]")
	else
		//lightswitch = 1
		for(var/direct in directions)
			var/icon/shutter = icon(base_door)
			switch(direct)
				if("NORTH"){shutter.Turn(180); outputIcon.Insert(shutter, statename, NORTH, frame = 1, delay = FRAME_DELAY)}
				if("SOUTH"){outputIcon.Insert(shutter, statename, SOUTH, frame = 1, delay = FRAME_DELAY)}
				if("WEST"){shutter.Turn(90); outputIcon.Insert(shutter, statename, WEST, frame = 1, delay = FRAME_DELAY)}
				if("EAST"){shutter.Turn(-90); outputIcon.Insert(shutter, statename, EAST, frame = 1, delay = FRAME_DELAY)}
			for(FRAME_N2 = 2, FRAME_N2 < 28, FRAME_N2++)
				outputIcon += icon(filename)
				shutter = icon(base_door)
				shutter.DrawBox(null, 1, 1, 32, 1)
				shutter.DrawBox(null, 1, 32, 32, 33 - FRAME_N1)
				shutter.Shift(NORTH, FRAME_N1)
				shutter.Blend(frame, ICON_OVERLAY,1,1)
				if(lightswitch) shutter.Blend(SHDred, ICON_OVERLAY,1,1)
				if(FRAME_N2 == 27) shutter.Blend(SHDgreen, ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){shutter.Turn(180); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, NORTH, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, SOUTH, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){shutter.Turn(90); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, WEST, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){shutter.Turn(-90); if(FRAME_N2 == 27)outputIcon.Insert(shutter, statename, EAST, frame = FRAME_N2, delay = 4.5); else outputIcon.Insert(shutter, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				if(FRAME_N2 % 4 == 0)lightswitch = !lightswitch
				FRAME_N1++
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			closing = 0
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating opened door icon
/proc/ShutterDoorOpenState(dmifile as icon)
	var/icon/frame = icon(door_state)
	frame.DrawBox(null, 4, 29, 29, 29)
	frame.DrawBox(null, 1, 28, 32, 2)
	for(var/direct in directions)
		var/icon/shutter = icon(door_state)
		shutter.DrawBox(null, 1, 1, 32, 1)
		shutter.DrawBox(null, 1, 32, 32, 4)
		shutter.Shift(NORTH, 26)
		shutter.Blend(frame, ICON_OVERLAY,1,1)
		shutter.Blend(SHDgreen, ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){shutter.Turn(180); outputIcon.Insert(shutter, statename, NORTH, frame = 1, delay = FRAME_DELAY)}
			if("SOUTH"){outputIcon.Insert(shutter, statename, SOUTH, frame = 1, delay = FRAME_DELAY)}
			if("WEST"){shutter.Turn(90); outputIcon.Insert(shutter, statename, WEST, frame = 1, delay = FRAME_DELAY)}
			if("EAST"){shutter.Turn(-90); outputIcon.Insert(shutter, statename, EAST, frame = 1, delay = FRAME_DELAY)}
	fcopy(outputIcon, "Output/[filename]")

/proc/ShutterDoorClosedState(dmifile as icon)
	for(var/direct in directions)
		var/icon/shutter = icon(door_state)
		shutter.Blend(SHDred, ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){shutter.Turn(180); outputIcon.Insert(shutter, statename, NORTH, frame = 1, delay = FRAME_DELAY)}
			if("SOUTH"){outputIcon.Insert(shutter, statename, SOUTH, frame = 1, delay = FRAME_DELAY)}
			if("WEST"){shutter.Turn(90); outputIcon.Insert(shutter, statename, WEST, frame = 1, delay = FRAME_DELAY)}
			if("EAST"){shutter.Turn(-90); outputIcon.Insert(shutter, statename, EAST, frame = 1, delay = FRAME_DELAY)}
	fcopy(outputIcon, "Output/[filename]")


//Turns out some of these "simple doors" were not so simple after all