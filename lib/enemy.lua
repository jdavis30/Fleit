--######################### Fleit Enemy System #############################
-- Authors: Jasper Davis
-- lastMod: 2-08-2015
-- currently holds:
-- 	-enemy Table
--	-enemy draw functions
-- 	-enemy stat loading functions
-- 	-enemy collision maps
--	-enemy actions
--	-enemy state variables
--///////////////////////////////////////////////////////////////////////////
--//////////////////// Enemy Table and ///////////////////////////////
-- Includes 
-- 	-Enemy x and y coordinates

Enemy = {
---------------- Default Variables ---------------------------
	x = 0,
	y = 0,
	health = 1
-- rate of fire, measured in number of frames between shots. last shot tells how many frames since the last bullet was fired
	fire-rate = 2, 
	last-shot = 0,
-- movement speed about the screen in any direction. may be split into multiple different parts later
	speed = 11,
---------------- Default functions ---------------------------
--instantiation function
	new = function (self, instant)
		instant = instant or {}
		setmetatable(instant, self)
		self.__index = self
		return instant
	end

}