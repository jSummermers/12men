require "man"
--require "terrain"

numberOfMen = 12

function love.load()
	--loading classes
	man.load()
	--terrain.load()
end 

function love.update(dt)
	--UPDATE_PLAYER(dt)
end

function love.draw()
	--DRAW_TERRAIN()
	DRAW_MAN()
	
end

