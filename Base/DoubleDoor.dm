//Main CommonDoor animating proc
/proc/DoubleDoorAnimator(dmifile as icon)
	var/icon/corners = icon(base_door)
	corners.DrawBox(null, 6, 32, 59, 31)
	corners.DrawBox(null, 6, 2, 59, 1)
	corners.DrawBox(null, 1, 6, 64, 27)
	corners.DrawBox(null, 5, 30, 60, 30)
	corners.DrawBox(null, 4, 29, 61, 29)
	corners.DrawBox(null, 3, 28, 62, 28)
	corners.DrawBox(null, 3, 5, 62, 5)
	corners.DrawBox(null, 4, 4, 61, 4)
	corners.DrawBox(null, 5, 3, 60, 3)
	if(closing)
		for(var/direct in directions)
			for(FRAME_N2 = 1, FRAME_N2 < 30, FRAME_N2++)
				outputIcon += icon(filename)
				var/icon/lframe = icon(base_door)
				lframe.DrawBox(null, 18, 32, 64, 30)
				lframe.DrawBox(null, 19, 29, 64, 26)
				lframe.DrawBox(null, 20, 25, 64, 21)
				lframe.DrawBox(null, 21, 20, 64, 17)
				lframe.DrawBox(null, 22, 16, 64, 13)
				lframe.DrawBox(null, 23, 12, 64, 8)
				lframe.DrawBox(null, 24, 7, 64, 4)
				lframe.DrawBox(null, 25, 3, 64, 1)
				if(FRAME_N2 > 9){lframe.DrawBox(null, 1, 32, 21 - FRAME_N1, 1); lframe.Shift(WEST, 21 - FRAME_N1)}
				else{lframe.DrawBox(null, 1, 32, 21, 1); lframe.Shift(WEST, 21)}
				var/icon/rframe = icon(base_door)
				rframe.DrawBox(null, 1, 32, 47, 30)
				rframe.DrawBox(null, 1, 29, 46, 26)
				rframe.DrawBox(null, 1, 25, 45, 21)
				rframe.DrawBox(null, 1, 20, 44, 17)
				rframe.DrawBox(null, 1, 16, 43, 13)
				rframe.DrawBox(null, 1, 12, 42, 8)
				rframe.DrawBox(null, 1, 7, 41, 4)
				rframe.DrawBox(null, 1, 3, 40, 1)
				if(FRAME_N2 > 9){rframe.DrawBox(null, 64, 32, 44 + FRAME_N1, 1); rframe.Shift(EAST, 21 - FRAME_N1)}
				else{rframe.DrawBox(null, 64, 32, 44, 1); rframe.Shift(EAST, 21)}
				var/icon/mframe = icon(base_door)
				mframe.DrawBox(null, 1, 32, 16, 30)
				mframe.DrawBox(null, 1, 29, 17, 26)
				mframe.DrawBox(null, 1, 25, 18, 21)
				mframe.DrawBox(null, 1, 20, 19, 17)
				mframe.DrawBox(null, 1, 16, 20, 13)
				mframe.DrawBox(null, 1, 12, 21, 8)
				mframe.DrawBox(null, 1, 7, 22, 4)
				mframe.DrawBox(null, 1, 3, 23, 1)
				mframe.DrawBox(null, 64, 32, 49, 30)
				mframe.DrawBox(null, 64, 29, 48, 26)
				mframe.DrawBox(null, 64, 25, 47, 21)
				mframe.DrawBox(null, 64, 20, 46, 17)
				mframe.DrawBox(null, 64, 16, 45, 13)
				mframe.DrawBox(null, 64, 12, 44, 8)
				mframe.DrawBox(null, 64, 7, 43, 4)
				mframe.DrawBox(null, 64, 3, 42, 1)
				mframe.Shift(NORTH, 30 - FRAME_N3)
				mframe.DrawBox(null, 1, 64, 64, 33)
				mframe.Blend(lframe,ICON_OVERLAY,1,1)
				mframe.Blend(rframe,ICON_OVERLAY,1,1)
				mframe.Blend(corners,ICON_OVERLAY,1,1)
				if(greenlight)mframe.Blend(DDgreen,ICON_OVERLAY,1,1)
				if(redlight)mframe.Blend(DDred,ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){mframe.Turn(-90); mframe.Shift(WEST, 32); outputIcon.Insert(mframe, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){mframe.Turn(90); outputIcon.Insert(mframe, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){mframe.Turn(180); mframe.Shift(SOUTH, 32); outputIcon.Insert(mframe, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){outputIcon.Insert(mframe, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				if(FRAME_N2 > 9){FRAME_N1++}
				FRAME_N3++
			var/icon/frame = icon(base_door)
			if(greenlight)frame.Blend(DDgreen,ICON_OVERLAY,1,1)
			if(redlight)frame.Blend(DDred,ICON_OVERLAY,1,1)
			switch(direct)
				if("NORTH"){frame.Turn(-90); frame.Shift(WEST, 32); outputIcon.Insert(frame, statename, NORTH, frame = 30, delay = FRAME_DELAY)}
				if("SOUTH"){frame.Turn(90); outputIcon.Insert(frame, statename, SOUTH, frame = 30, delay = FRAME_DELAY)}
				if("WEST"){frame.Turn(180); frame.Shift(SOUTH, 32); outputIcon.Insert(frame, statename, WEST, frame = 30, delay = FRAME_DELAY)}
				if("EAST"){outputIcon.Insert(frame, statename, EAST, frame = 30, delay = FRAME_DELAY)}
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			FRAME_N3 = 1
		closing = 0
		greenlight = 0
		redlight = 0
		fcopy(outputIcon, "Output/[filename]")
	else
		for(var/direct in directions)
			var/icon/frame = icon(base_door)
			if(greenlight)frame.Blend(DDgreen,ICON_OVERLAY,1,1)
			if(redlight)frame.Blend(DDred,ICON_OVERLAY,1,1)
			switch(direct)
				if("NORTH"){frame.Turn(-90); frame.Shift(WEST, 32); outputIcon.Insert(frame, statename, NORTH, frame = 1, delay = FRAME_DELAY)}
				if("SOUTH"){frame.Turn(90); outputIcon.Insert(frame, statename, SOUTH, frame = 1, delay = FRAME_DELAY)}
				if("WEST"){frame.Turn(180); frame.Shift(SOUTH, 32); outputIcon.Insert(frame, statename, WEST, frame = 1, delay = FRAME_DELAY)}
				if("EAST"){outputIcon.Insert(frame, statename, EAST, frame = 1, delay = FRAME_DELAY)}
			for(FRAME_N2 = 2, FRAME_N2 < 31, FRAME_N2++)
				outputIcon += icon(filename)
				var/icon/lframe = icon(base_door)
				lframe.DrawBox(null, 18, 32, 64, 30)
				lframe.DrawBox(null, 19, 29, 64, 26)
				lframe.DrawBox(null, 20, 25, 64, 21)
				lframe.DrawBox(null, 21, 20, 64, 17)
				lframe.DrawBox(null, 22, 16, 64, 13)
				lframe.DrawBox(null, 23, 12, 64, 8)
				lframe.DrawBox(null, 24, 7, 64, 4)
				lframe.DrawBox(null, 25, 3, 64, 1)
				if(FRAME_N2 < 22){lframe.DrawBox(null, 1, 32, FRAME_N1, 1); lframe.Shift(WEST, FRAME_N1)}
				else{lframe.DrawBox(null, 1, 32, 21, 1); lframe.Shift(WEST, 21)}
				var/icon/rframe = icon(base_door)
				rframe.DrawBox(null, 1, 32, 47, 30)
				rframe.DrawBox(null, 1, 29, 46, 26)
				rframe.DrawBox(null, 1, 25, 45, 21)
				rframe.DrawBox(null, 1, 20, 44, 17)
				rframe.DrawBox(null, 1, 16, 43, 13)
				rframe.DrawBox(null, 1, 12, 42, 8)
				rframe.DrawBox(null, 1, 7, 41, 4)
				rframe.DrawBox(null, 1, 3, 40, 1)
				if(FRAME_N2 < 22){rframe.DrawBox(null, 64, 32, 65 - FRAME_N1, 1); rframe.Shift(EAST, FRAME_N1)}
				else{rframe.DrawBox(null, 64, 32, 44, 1); rframe.Shift(EAST, 21)}
				var/icon/mframe = icon(base_door)
				mframe.DrawBox(null, 1, 32, 16, 30)
				mframe.DrawBox(null, 1, 29, 17, 26)
				mframe.DrawBox(null, 1, 25, 18, 21)
				mframe.DrawBox(null, 1, 20, 19, 17)
				mframe.DrawBox(null, 1, 16, 20, 13)
				mframe.DrawBox(null, 1, 12, 21, 8)
				mframe.DrawBox(null, 1, 7, 22, 4)
				mframe.DrawBox(null, 1, 3, 23, 1)
				mframe.DrawBox(null, 64, 32, 49, 30)
				mframe.DrawBox(null, 64, 29, 48, 26)
				mframe.DrawBox(null, 64, 25, 47, 21)
				mframe.DrawBox(null, 64, 20, 46, 17)
				mframe.DrawBox(null, 64, 16, 45, 13)
				mframe.DrawBox(null, 64, 12, 44, 8)
				mframe.DrawBox(null, 64, 7, 43, 4)
				mframe.DrawBox(null, 64, 3, 42, 1)
				mframe.Shift(NORTH, FRAME_N1)
				mframe.DrawBox(null, 1, 33, 64, 64)
				mframe.Blend(lframe,ICON_OVERLAY,1,1)
				mframe.Blend(rframe,ICON_OVERLAY,1,1)
				mframe.Blend(corners,ICON_OVERLAY,1,1)
				if(greenlight)mframe.Blend(DDgreen,ICON_OVERLAY,1,1)
				if(redlight)mframe.Blend(DDred,ICON_OVERLAY,1,1)
				switch(direct)
					if("NORTH"){mframe.Turn(-90); mframe.Shift(WEST, 32); outputIcon.Insert(mframe, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("SOUTH"){mframe.Turn(90); outputIcon.Insert(mframe, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("WEST"){mframe.Turn(180); mframe.Shift(SOUTH, 32); outputIcon.Insert(mframe, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
					if("EAST"){outputIcon.Insert(mframe, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
				FRAME_N1++
			FRAME_N1 = 1 //reset values for next icon
			FRAME_N2 = 1
			FRAME_N3 = 1
		closing = 0
		greenlight = 0
		redlight = 0
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating opened door icon
/proc/DoubleDoorOpenState(dmifile as icon)
	var/icon/corners = icon(door_state)
	corners.DrawBox(null, 6, 32, 59, 31)
	corners.DrawBox(null, 6, 2, 59, 1)
	corners.DrawBox(null, 1, 6, 64, 27)
	corners.DrawBox(null, 5, 30, 60, 30)
	corners.DrawBox(null, 4, 29, 61, 29)
	corners.DrawBox(null, 3, 28, 62, 28)
	corners.DrawBox(null, 3, 5, 62, 5)
	corners.DrawBox(null, 4, 4, 61, 4)
	corners.DrawBox(null, 5, 3, 60, 3)
	for(var/direct in directions)
		var/icon/lframe = icon(door_state)
		lframe.DrawBox(null, 18, 32, 64, 30)
		lframe.DrawBox(null, 19, 29, 64, 26)
		lframe.DrawBox(null, 20, 25, 64, 21)
		lframe.DrawBox(null, 21, 20, 64, 17)
		lframe.DrawBox(null, 22, 16, 64, 13)
		lframe.DrawBox(null, 23, 12, 64, 8)
		lframe.DrawBox(null, 24, 7, 64, 4)
		lframe.DrawBox(null, 25, 3, 64, 1)
		lframe.DrawBox(null, 1, 32, 21, 1)
		lframe.Shift(WEST, 21)
		var/icon/rframe = icon(door_state)
		rframe.DrawBox(null, 1, 32, 47, 30)
		rframe.DrawBox(null, 1, 29, 46, 26)
		rframe.DrawBox(null, 1, 25, 45, 21)
		rframe.DrawBox(null, 1, 20, 44, 17)
		rframe.DrawBox(null, 1, 16, 43, 13)
		rframe.DrawBox(null, 1, 12, 42, 8)
		rframe.DrawBox(null, 1, 7, 41, 4)
		rframe.DrawBox(null, 1, 3, 40, 1)
		rframe.DrawBox(null, 64, 32, 44, 1)
		rframe.Shift(EAST, 21)
		var/icon/mframe = icon(door_state)
		mframe.DrawBox(null, 1, 32, 16, 30)
		mframe.DrawBox(null, 1, 29, 17, 26)
		mframe.DrawBox(null, 1, 25, 18, 21)
		mframe.DrawBox(null, 1, 20, 19, 17)
		mframe.DrawBox(null, 1, 16, 20, 13)
		mframe.DrawBox(null, 1, 12, 21, 8)
		mframe.DrawBox(null, 1, 7, 22, 4)
		mframe.DrawBox(null, 1, 3, 23, 1)
		mframe.DrawBox(null, 64, 32, 49, 30)
		mframe.DrawBox(null, 64, 29, 48, 26)
		mframe.DrawBox(null, 64, 25, 47, 21)
		mframe.DrawBox(null, 64, 20, 46, 17)
		mframe.DrawBox(null, 64, 16, 45, 13)
		mframe.DrawBox(null, 64, 12, 44, 8)
		mframe.DrawBox(null, 64, 7, 43, 4)
		mframe.DrawBox(null, 64, 3, 42, 1)
		mframe.Shift(NORTH, 29)
		mframe.DrawBox(null, 1, 33, 64, 64)
		mframe.Blend(lframe,ICON_OVERLAY,1,1)
		mframe.Blend(rframe,ICON_OVERLAY,1,1)
		mframe.Blend(corners,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){mframe.Turn(-90); mframe.Shift(WEST, 32); outputIcon.Insert(mframe, statename, NORTH, frame = FRAME_N2, delay = FRAME_DELAY)}
			if("SOUTH"){mframe.Turn(90); outputIcon.Insert(mframe, statename, SOUTH, frame = FRAME_N2, delay = FRAME_DELAY)}
			if("WEST"){mframe.Turn(180); mframe.Shift(SOUTH, 32); outputIcon.Insert(mframe, statename, WEST, frame = FRAME_N2, delay = FRAME_DELAY)}
			if("EAST"){outputIcon.Insert(mframe, statename, EAST, frame = FRAME_N2, delay = FRAME_DELAY)}
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating locked door icon
/proc/DoubleDoorLockedState(dmifile as icon)
	for(var/direct in directions)
		base_door = icon(door_state)
		base_door.Blend(DDorange,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST)}
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating deny door animation
/proc/DoubleDoorDenyState(dmifile as icon)
	for(var/direct in directions)
		base_door = icon(door_state)
		base_door.Blend(DDred,ICON_OVERLAY,1,1)
		base_door.Blend(DDpanelred,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 1)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 1)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 1)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 1)}
		base_door = icon(door_state)
		base_door.Blend(DDred,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 2)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 2)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 2)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 2)}
		base_door = icon(door_state)
		base_door.Blend(DDred,ICON_OVERLAY,1,1)
		base_door.Blend(DDpanelred,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 3)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 3)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 3)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 3)}
		fcopy(outputIcon, "Output/[filename]")

//secondary proc for generating door sparking animation
/proc/DoubleDoorSparksState(dmifile as icon)
	for(var/direct in directions)
		base_door = icon(door_state)
		base_door.Blend(DDsparks1,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 1)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 1)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 1)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 1)}
		base_door = icon(door_state)
		base_door.Blend(DDpanelgreen,ICON_OVERLAY,1,1)
		base_door.Blend(DDgreen,ICON_OVERLAY,1,1)
		base_door.Blend(DDsparks2,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 2)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 2)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 2)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 2)}
		base_door = icon(door_state)
		base_door.Blend(DDsparks3,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 3)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 3)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 3)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 3)}
		base_door = icon(door_state)
		base_door.Blend(DDpanelred,ICON_OVERLAY,1,1)
		base_door.Blend(DDred,ICON_OVERLAY,1,1)
		base_door.Blend(DDsparks4,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 4)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 4)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 4)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 4)}
		base_door = icon(door_state)
		base_door.Blend(DDsparks5,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 5)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 5)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 5)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 5)}
		base_door = icon(door_state)
		base_door.Blend(DDpanelgreen,ICON_OVERLAY,1,1)
		base_door.Blend(DDgreen,ICON_OVERLAY,1,1)
		base_door.Blend(DDsparks6,ICON_OVERLAY,1,1)
		switch(direct)
			if("NORTH"){base_door.Turn(-90); base_door.Shift(WEST, 32); outputIcon.Insert(base_door, statename, NORTH, frame = 6)}
			if("SOUTH"){base_door.Turn(90); outputIcon.Insert(base_door, statename, SOUTH, frame = 6)}
			if("WEST"){base_door.Turn(180); base_door.Shift(SOUTH, 32); outputIcon.Insert(base_door, statename, WEST, frame = 6)}
			if("EAST"){outputIcon.Insert(base_door, statename, EAST, frame = 6)}
		fcopy(outputIcon, "Output/[filename]")