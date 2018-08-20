
----[[
local cup={} -- this is the accessable lua object.
local cup_mt={__index=card} -- a lua object is an object with an implicit table.

function cup.new(x, y, width, height, hp) -- pseudo constructor.
	local cup_new = {}
	cup_new.image = display.newImageRect('cup1.png', width, height)
	cup_new.image.x = x
	cup_new.image.y = y
	cup_new.image.anchorX = .5
	cup_new.image.anchorY = .5

	cup_new.top = display.newRect(x-5, y-8, 50, 1)
	cup_new.top:setFillColor(200, 0, 0)
	cup_new.top.name = "top"
	cup_new.top.anchorX = .5
	cup_new.top.anchorY = .5
	cup_new.top.alpha = 0 
	physics.addBody(cup_new.top, "static", { isSensor = true } )
	
	cup_new.lineLeft = display.newRect(x-30, y+20, 60, 1)
	cup_new.lineLeft:setFillColor(200, 0, 0)
	cup_new.lineLeft.name = "lineLeft"
	cup_new.lineLeft.anchorX = .5
	cup_new.lineLeft.anchorY = .5
	cup_new.lineLeft.alpha = 0
	cup_new.lineLeft.rotation = 80
	physics.addBody(cup_new.lineLeft, "static")

	cup_new.lineRight = display.newRect(x+20, y+20, 60, 1)
	cup_new.lineRight:setFillColor(200, 0, 0)
	cup_new.lineRight.name = "lineRight"
	cup_new.lineRight.anchorX = .5
	cup_new.lineRight.anchorY = .5
	cup_new.lineRight.alpha = 0
	cup_new.lineRight.rotation = -80
	physics.addBody(cup_new.lineRight, "static")

	cup_new.hp = display.newText(tostring(hp), x-8, y+25, "Arial", 15)
	cup_new.hp.anchorX = .5
	cup_new.hp.anchorY = .5
	cup_new.hp:setTextColor(0,0,0)
	return setmetatable(cup_new, cup_mt)
end

function color(self)
	print(self.hp)
end	

return cup

--]]