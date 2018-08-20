----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------


local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"

local h = display.contentHeight
local w = display.contentWidth
local bg1
local level
local pay
local onTouch
local onTouch2
local ball
local j = 1
local ball={ }
local btnAni
local btnAni2
local myButton
local myButton1
local move
local kn

----------------------------------------------------------------------------------
-- 
--	NOTE:
--	
--	Code outside of listener functions (below) will only be executed once,
--	unless storyboard.removeScene() is called.
-- 
---------------------------------------------------------------------------------

---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	
		storyboard.removeScene('options')

	
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		
		local txt2 = display.newText('Bunny the Ninja', 92, 140, 'papyrus', 20)
		txt2:setTextColor(255,255,0)
		group:insert(txt2)
		
		local txt1 = display.newText('Bunny the Waiter', 87, 290 , 'papyrus', 20)
		txt1:setTextColor(255,255,0)
		group:insert(txt1)
		
		local txt3 = display.newText('Dragon Draw', 100, 440, 'papyrus', 20)
		txt3:setTextColor(255,255,0)
		group:insert(txt3)
		
		local txt4 = display.newText('GREAT FREE GAMES', 5, -5, 'papyrus', 30)
		txt4:setTextColor(130,255,0)
		group:insert(txt4)
		
		
	
	-----------------------------------------------------------------------------
		
	--	CREATE display objects and add them to 'group' here.
	--	Example use-case: Restore 'group' from previously saved state.
	
	-----------------------------------------------------------------------------
	
end

function scene:willEnterScene( event )
        local group = self.view
        
        -----------------------------------------------------------------------------
                
        --      This event requires build 2012.782 or later.
        
        -----------------------------------------------------------------------------
        
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	
	
	local group = self.view
	
	
	
	function text()
	
		
		levels = myData:retrieve('levele') 
		print (levels)
		
	
	
		
		function story()
		system.openURL  ("http://itunes.apple.com/us/app/bunny-the-ninja/id548471845?mt=8")
		end
		
		function story2()
		system.openURL	("http://itunes.apple.com/us/app/bunny-the-waiter/id533680443?mt=8&uo=4") 
		end
		
		function story3()
		system.openURL	("https://itunes.apple.com/us/app/drawing-dragons-unique-good/id740728979?ls=1&mt=8") 
		end

		iconDragon = display.newImageRect( 'IconDD.png',100,100)
		iconDragon.x = 	w/2
		iconDragon.y =  90
		iconDragon:addEventListener('tap', story3)
		group:insert(iconDragon)
		
		iconNinja = display.newImageRect( 'IconBN.png',100,100)
		iconNinja.x = 	w/2
		iconNinja.y =  240
		iconNinja:addEventListener('tap', story)
		group:insert(iconNinja)

		
		iconBunny = display.newImageRect( 'IconBW.png', 100,100)
		iconBunny.x =  w/2
		iconBunny.y =   390
		iconBunny:addEventListener('tap', story2)
		group:insert(iconBunny)
		
		
		
	
		
		onButtonEvent = function (event )
        		if event.phase == "began" then
        				audio.play(s5)
        				myButton:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				myButton:scale(.8334,.8334)
        				storyboard.gotoScene('options')
        			
        		end
    		end
    
    		myButton = widget.newButton{
    		defaultFile = "back.png",
    		left = w-60,
        	top =h-60,
      		width =55, height = 55,
      		emboss=true,
       		onEvent = onButtonEvent
    		}
    		group:insert(myButton)
	end
	text()	
		
	
	
	
	
	

	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	-----------------------------------------------------------------------------
	
	--	INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)
	
	-----------------------------------------------------------------------------
	
end

function scene:didExitScene( event )
        local group = self.view
        
        -----------------------------------------------------------------------------
                
        --      This event requires build 2012.782 or later.
        
        -----------------------------------------------------------------------------
        
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

-- "willEnterScene" event is dispatched before scene transition begins
scene:addEventListener( "willEnterScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "didExitScene" event is dispatched after scene has finished transitioning out
scene:addEventListener( "didExitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene