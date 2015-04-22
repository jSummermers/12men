
man = {}

function man.load()
	man.isAlive = true
	man.position = -1
	man.murderLevel = 0
	
	man.x = 1
	man.y = 1
	man.centerX = 1
	man.centerY = 1
	man.isPositionSet = false
	
	man.width = 50
	man.height = 80
	
end

function man.draw()
	if man.isPositionSet == false 
	then
		man.setPosition()
	end
	
	love.graphics.setColor(255,0,0)
	love.graphics.rectangle("line", man.x, man.y, man.width, man.height)
end

function man.setPosition(numberOfMen) 
	
	-- TODO: do code to put each person in their position on the clock
	-- 		 according to how many men there are

	man.adjustForCenterXY()
	
	man.isPositionSet = true
end

function man.adjustForCenterXY()
	man.x = man.centerX - man.width/2
	man.y = man.centerY - man.height/2
	
end

--[[
function player.draw()
	love.graphics.setColor(255,0,0)
	love.graphics.rectangle("line", player.x, player.y, player.width, player.height)
end

function player.physics(dt)
	player.x = player.x + player.xvel * dt
	player.y = player.y + player.yvel * dt
	
	--friction
	player.xvel = player.xvel * (1 - math.min(dt * player.friction, 1))
	player.yvel = player.yvel * (1 - math.min(dt * player.friction, 1))
end

function player.move(dt)

	--right
	if love.keyboard.isDown('d') and player.xvel < player.maxSpeed	then
		player.xvel = player.xvel + player.maxSpeed * dt
	end
	
	--left
	if love.keyboard.isDown('a') and player.xvel > -player.maxSpeed	then
		player.xvel = player.xvel - player.maxSpeed * dt
	end
	
	if love.keyboard.isDown('s') and player.yvel > -player.maxSpeed then
		player.yvel = player.yvel + player.maxSpeed * dt
	end
	
	--up
	if love.keyboard.isDown('w') and player.yvel < player.maxSpeed then
		player.yvel = player.yvel - player.maxSpeed * dt
	end
	
	player.boundary()
end

function player.boundary()
    if player.x < 0 then
        player.x = 0
        player.xvel = 0
    end
end

function player.speak()
	if love .keyboard.isDown(' ') then
		love.graphics.print("I have a voice!", player.x, player.y - 15)
	end 
end
]]

-- function collections

function UPDATE_MAN(dt)
	--player.physics(dt)
	--player.move(dt)
end

function DRAW_MAN()
	man.draw()
	--player.speak()
end