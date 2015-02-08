--######################### Fleit Player System #############################
-- Authors: Jasper Davis
-- lastMod: 2-08-2015
-- currently holds:
-- 	-Made with love logo intro
--///////////////////////////////////////////////////////////////////////////
--intro table setup
intro = {
		logo = love.graphics.newImage("assets/loveLogo.png"),
		r = 0,
		scalex = .75,
		scaley = .75,
}
--set the font
loveFont = love.graphics.newFont("assets/fonts/ThrowMyHandsUpintheAirBold.ttf", 30)
love.graphics.setFont(loveFont)
--centering of logo
intro.logox = intro.logo:getWidth()
intro.logoy = intro.logo:getHeight()
--setting the circle color
intro.cColor = {0,0,0,255}
--setting the text color
intro.tColor = {131,192,240,0}
--setting the logo color
intro.lColor = {255,255,255,255}
--setting of time
time = 0
--update function
function updateIntro(dt)
	intro.sizex = intro.logox * intro.scalex
	intro.sizey = intro.logoy * intro.scaley
	intro.x = (love.graphics.getWidth()/2) - (intro.sizex/2)
	intro.y = (love.graphics.getHeight()/2) - (intro.sizey/2)
	intro.cx = love.graphics.getWidth()/2
	intro.cy = love.graphics.getHeight()/2
	if time > 70 and time <= 120 then
		intro.cColor[1] = intro.cColor[1] + (255/51)
		intro.cColor[2] = intro.cColor[2] + (255/51)
		intro.cColor[3] = intro.cColor[3] + (255/51)
	elseif time > 150 and time < 250 then
		intro.cColor[4] = intro.cColor[4] - (256/99) 
	elseif time > 300 and time < 400 then
		intro.tColor[4] = intro.tColor[4] + (255/100)
	elseif time > 800 and time < 1000 then
		intro.lColor[4] = intro.lColor[4] - (255/200)
		intro.tColor[4] = intro.tColor[4] - (255/201)
	elseif time > 1100 then
		state = "game"
	end
	time = time + dt
end
function drawIntro()
	--drawing the logo
	love.graphics.setColor(intro.lColor)
	love.graphics.draw(intro.logo, intro.x, intro.y, 0, intro.scalex, intro.scaley, 0,0)
	--drawing the circle which hides the logo
	love.graphics.setColor(intro.cColor)
	love.graphics.circle("fill", intro.cx, intro.cy, (intro.sizex/2) - 10, 100)
	--drawing the text
	love.graphics.setColor(intro.tColor)
	love.graphics.printf( "Made with Löve", (love.graphics.getWidth()/2) - (intro.sizex + 5), (love.graphics.getHeight()/2) + (intro.sizey/2), 400, "center", 0, 1, 1, 0, 0, 0, 0 )
	love.graphics.setColor(255,255,255,255)
end
