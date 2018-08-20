----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"



-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
		audio.stop({channel= 12})
		audio.stop({channel= 14})
		--audio.rewind({channel= 12})
		--audio.rewind({channel= 14})
		
	
	storyboard.removeScene('nextPepp')
	storyboard.removeScene('restart')
	storyboard.removeScene('main')
	
	storyboard.removeScene('l21')
	storyboard.removeScene('l22')
	storyboard.removeScene('l23')
	storyboard.removeScene('l24')
	storyboard.removeScene('l25')
	storyboard.removeScene('l26')
	storyboard.removeScene('l27')
	
	bg = display.newImageRect('env1.png',w ,h)
	bg.x = w - w/2
	bg.y = h - h/2
	group:insert(bg)
	
	shade = display.newRoundedRect(w/2-110,h/2,245,50,25)
			shade:setFillColor(0,0,0,255)
			shade.anchorX = -1
  			shade.anchorY = 1
			shade.alpha = .5
			group:insert(shade)
	
	loading = display.newText("Loading..." ,w/2+20,h/2-20,'helvetica', 40)
	group:insert(loading)
	
	
	
	
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
	function start2()
		

		
			storyboard.gotoScene('l21')
			
		
	end
	
	
	function start1()
		levels = myData:retrieve('levele') 
		print (levels)
		print ('hi')
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