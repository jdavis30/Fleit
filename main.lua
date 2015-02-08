--required modules to be used

function love.load()
	require("code/game.lua")
	require("code/intro.lua")
	require("code/menu.lua")
	state = "Intro"
end
function love.update(dt)
	if state == "intro" then
		updateIntro(dt)
	elseif state == "game" then
		updateGame(dt)
	end
end
function love.draw()
	if state == "intro" then
		drawIntro()
	elseif state == "game" then
		drawGame()
	end
end
