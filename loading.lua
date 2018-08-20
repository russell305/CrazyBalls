----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
local loading
local shade



-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	audio.stop({channel= 12})
	audio.stop({channel= 14})
	audio.stop({channel= 2})


	
	storyboard.removeScene('nextPepp')
	storyboard.removeScene('restart')
	storyboard.removeScene('main')
	storyboard.removeScene('pepper1')
	storyboard.removeScene('pepper2')
	storyboard.removeScene('pepper3')
	storyboard.removeScene('pepper4')
	storyboard.removeScene('pepper5')
	storyboard.removeScene('pepper6')
	storyboard.removeScene('pepper7')
	storyboard.removeScene('pepper8')
	storyboard.removeScene('pepper9')
	storyboard.removeScene('pepper10')
	storyboard.removeScene('pepper11')
	storyboard.removeScene('pepper12')
	storyboard.removeScene('pepper13')
	storyboard.removeScene('pepper14')
	storyboard.removeScene('pepper15')
	storyboard.removeScene('pepper16')
	storyboard.removeScene('pepper17')
	storyboard.removeScene('pepper18')
	storyboard.removeScene('pepper19')
	storyboard.removeScene('pepper20')
	storyboard.removeScene('pepper21')
	storyboard.removeScene('pepper22')
	storyboard.removeScene('pepper23')
	storyboard.removeScene('pepper24')
	storyboard.removeScene('pepper25')
	storyboard.removeScene('pepper26')
	storyboard.removeScene('pepper27')
	storyboard.removeScene('pepper28')
	storyboard.removeScene('pepper29')
	storyboard.removeScene('pepper30')
	storyboard.removeScene('pepperInstructions')
	if(storyboard.loading == 1) then
			
		bg = display.newImageRect('env1.png',w ,h)
		bg.x = w - w/2
		bg.y = h - h/2
		group:insert(bg)
	elseif (storyboard.loading == 2) then
	
		bg = display.newImageRect('env2.png',w ,h)
		bg.x = w - w/2
		bg.y = h - h/2
		group:insert(bg)
	
	elseif (storyboard.loading == 3) then
	
		bg = display.newImageRect('env3.png',w ,h)
		bg.x = w - w/2
		bg.y = h - h/2
		group:insert(bg)
	
	end
	
	shade = display.newRoundedRect(w/2,h/2,245,50,25)
			shade:setFillColor(0,0,0,255)
			--shade:setReferencePoint(display.TopLeftReferencePoint)
			shade.alpha = .5
			group:insert(shade)
	loading = display.newText("Loading..." ,w/2+10,h/2,'helvetica', 40)
			group:insert(loading)
	


	
	
	
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	function start2()
	

		
		if(storyboard.level == 1) then
			print("level 1") 
			storyboard.gotoScene('pepper1')
		
		elseif(storyboard.level == 2) then
			print("level 2") 
			storyboard.gotoScene('pepper2')
		
		elseif(storyboard.level == 3) then
			print("level3")
			storyboard.gotoScene('pepper3')
			
		elseif(storyboard.level == 4)	then
			print("level4")
			storyboard.gotoScene('pepper4')
			
		elseif(storyboard.level == 5)	then
			print("level5")
			storyboard.gotoScene('pepper5')	
			
		elseif(storyboard.level == 6)	then
			storyboard.gotoScene('pepper6')	
			
		elseif(storyboard.level == 7)	then
			storyboard.gotoScene('pepper7')	
			
		elseif(storyboard.level == 8)	then
			storyboard.gotoScene('pepper8')	
			
		elseif(storyboard.level == 9)	then
			storyboard.gotoScene('pepper9')	
			
		elseif(storyboard.level == 10) then
			storyboard.gotoScene('pepper10')	
			
		elseif(storyboard.level == 11)then
			storyboard.gotoScene('pepper11')
				
		elseif(storyboard.level == 12)then
			storyboard.gotoScene('pepper12')	
			
		elseif(storyboard.level == 13)then
			storyboard.gotoScene('pepper13')		
		elseif(storyboard.level == 14)then
			storyboard.gotoScene('pepper14')	
				
		elseif(storyboard.level == 15)then
			storyboard.gotoScene('pepper15')	
		
		elseif(storyboard.level == 16)then
			storyboard.gotoScene('pepper16')
			
		elseif(storyboard.level == 17)then
			storyboard.gotoScene('pepper17')
					
		elseif(storyboard.level == 18)then
			storyboard.gotoScene('pepper18')
				
		elseif(storyboard.level == 19)then
			storyboard.gotoScene('pepper19')
		elseif(storyboard.level == 20)then
			storyboard.gotoScene('pepper20')
				
		elseif(storyboard.level == 21)then
			storyboard.gotoScene('pepper21')	
		
		elseif(storyboard.level == 22)then
			storyboard.gotoScene('pepper22')	
		elseif(storyboard.level == 23)then
			storyboard.gotoScene('pepper23')	
		elseif(storyboard.level == 24)then
			storyboard.gotoScene('pepper24')	
		elseif(storyboard.level == 25)then
			storyboard.gotoScene('pepper25')	
		elseif(storyboard.level == 26)then
			storyboard.gotoScene('pepper26')
		elseif(storyboard.level == 27)then
			storyboard.gotoScene('pepper27')																											
		--]]	
		end
	end
	
	function start1()
		print("start1")
		timer.performWithDelay(500,start2,1)
	end
	
	
	start1()
	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	



	
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. remove listeners, widgets, save state, etc.)
	
	-----------------------------------------------------------------------------
	
end

---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene