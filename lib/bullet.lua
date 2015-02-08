--######################### Fleit Bullet System #############################
-- Authors: Jasper Davis
-- lastMod: 2-08-2015
-- currently holds:
-- 	-bullet Table
--	-bullet draw functions
-- 	-bullet stat loading functions
--	-bullet actions
--	-bullet state variables
--///////////////////////////////////////////////////////////////////////////
--//////////////////// Bullet Table and State Variables//////////////////////
-- Includes 
-- 	-bullet x and y coordinates

Bullet = {
---------------- Default Variables ---------------------------
--x & y coordinates on the level
	x = 0,
	y = 0,
--velocity of the bullet {x, y}
	vel = {0, 0}
---------------- Default functions ---------------------------
--instantiation function
	new = function (self, instant)
		instant = instant or {}
		setmetatable(instant, self)
		self.__index = self
		return instant
	end
--update function
	update = function(self, dt)
		x = x + (vel[1] * dt)
		y = y + (vel[2] * dt)
	end
}
