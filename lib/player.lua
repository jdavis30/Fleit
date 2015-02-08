--######################### Fleit Player System #############################
-- Authors: Jasper Davis
-- lastMod: 2-08-2015
-- currently holds:
-- 	-player Table
--	-player draw functions
-- 	-player stat loading functions
-- 	-player collision maps
--	-player actions
--	-player state variables
--///////////////////////////////////////////////////////////////////////////
--///////////////////////// Player Table ////////////////////////////////////
-- Includes 
-- 	-Player default x and y coordinates

Player = {
---------------- Default Variables ---------------------------
-- x & y coordinate on screen
	x = 300,
	y = 705,
-- health, measured in hits
	health = 3,
-- rate of fire, measured in number of frames between shots. last shot tells how many frames since the last bullet was fired
	fire-rate = 2, 
	last-shot = 0,
-- movement speed about the screen in any direction. may be split into multiple different parts later
	speed = 10,

}
