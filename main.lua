require "man"
--require "terrain"

numberOfMen = 12

function love.load()

	love.window.setMode( 800, 550, flags )

	--loading classes
	man.load()
	--terrain.load()
end 

function love.update(dt)
	--UPDATE_PLAYER(dt)
end

function love.draw()

	love.graphics.circle( "line", 400, 250, 200, numberOfMen )
	--DRAW_TERRAIN()
	DRAW_MAN()
	
end

