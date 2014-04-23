--Your machine location

function SelectMenuPlayerStatsLocation()
	return "The University of Arizona, Tucson, AZ"
end


--functions required for [MusicWheel] attributes that changed based on the sub-theme selected.
function ItemSpacingY()
	if Color() == 13 then
		return 47
	else
		return 30
	end
end

function NumWheelItems()
	if Color() == 13 then
		return 35
	else
		return 22
	end
end

function CirclePercent()
	if Color() == 13 then
		return .42
	else
		return 1
	end
end

function BannerOff()
	if Color() == 13 then
		self:accelerate(0.75)
		self:addx(SCREEN_WIDTH)
	else
		self:addx(0)
	end
end

--options menu placement

function RowYOffScreenTop()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*(1.5)"
		else return "SCREEN_CENTER_Y-145+28*(-0.5)"
	end	
end

function OptionsRowFunction1()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*2"
		else return "SCREEN_CENTER_Y-145+1+28*0"
	end	
end

function OptionsRowFunction2()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*3"
		else return "SCREEN_CENTER_Y-145+1+28*1"
	end
end

function OptionsRowFunction3()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*4"
		else return "SCREEN_CENTER_Y-145+1+28*2"
	end
end

function OptionsRowFunction4()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*5"
		else return "SCREEN_CENTER_Y-145+1+28*3"
	end
end

function RowYOffScreenCenter()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*5.5"
		else return "SCREEN_CENTER_Y-145+28*3.5"
	end
end

function OptionsRowFunction5()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*6"
		else return "SCREEN_CENTER_Y-145+1+28*4"
	end
end

function OptionsRowFunction6()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*7"
		else return "SCREEN_CENTER_Y-145+1+28*5"
	end
end

function OptionsRowFunction7()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*8"
		else return "SCREEN_CENTER_Y-145+1+28*6"
	end
end

function OptionsRowFunction8()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*9"
		else return "SCREEN_CENTER_Y-145+1+28*7"
	end
end

function OptionsRowFunction9()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*10"
		else return "SCREEN_CENTER_Y-145+1+28*8"
	end
end

function OptionsRowFunction10()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*11"
		else return "SCREEN_CENTER_Y-145+1+28*9"
	end
end

function RowYOffScreenBottom()
	if Color() == 13
		then return "SCREEN_CENTER_Y-145+28*11.5"
		else return "SCREEN_CENTER_Y-145+28*9.5"
	end
end

function SeparateExitRowY()
	if Color() == 13
		then return "SCREEN_CENTER_Y+134+55+2"
		else return "SCREEN_CENTER_Y+134+2"
	end
end

function MoreY()
	if Color() == 13
		then return "SCREEN_CENTER_Y+112+55+2"
		else return "SCREEN_CENTER_Y+112+2"
	end
end

function ExplanationZoom()
	if Color() == 13
		then return "0"
		else return "0.3"
	end
end

function FrameOff()
	if Color() == 13
		then return "accelerate,0.3;addx,SCREEN_WIDTH"
		else return ""
	end
end

function DisqualifyY()
	if Color() == 13
		then return "SCREEN_CENTER_Y+191"
		else return "SCREEN_CENTER_Y+136"
	end
end

function Timer(self)
	if Color() == 13 then 
		if PREFSMAN:GetPreference('MenuTimer') == false 
		then 
			self:hidden(1) 
		else 
			self:x(SCREEN_CENTER_X+(SCREEN_CENTER_X/5));
			self:y(SCREEN_BOTTOM+32)
			self:draworder(400); 
			self:zoom(0.68);
			self:decelerate(0.75); 
			self:addy(-50);
			self:queuecommand('Loop') 
		end
	else 
		self:draworder(301); 
		self:zoom(1) 
	end 
end

function ScreenWithMenuElementsTimer(self) 
	if Color() == 13 then 
		if PREFSMAN:GetPreference('MenuTimer') == false 
		then 
			self:hidden(1) 
		else 
			self:x(SCREEN_CENTER_X+(SCREEN_CENTER_X/5));
			self:y(SCREEN_BOTTOM+32)
			self:draworder(400); 
			self:zoom(0.68);
			self:decelerate(0.75); 
			self:addy(-50);
		end
	else 
	end 
end

function OffTimer(self)
	if Color() == 13 then
		self:stoptweening();
		self:accelerate(0.75);
		self:addy(SCREEN_HEIGHT*0.354);
	else end
end

--evaluation screen required functions

function EvalTweenDistance()
   local Distance = SCREEN_WIDTH/2
   if GAMESTATE:PlayerUsingBothSides() then Distance = Distance * 2 end
   return Distance
end