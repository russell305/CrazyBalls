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
local mg
local mg1
local mg2
local mg3
local back

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
	
		storyboard.removeScene('start1')
		storyboard.removeScene('moregames')
		storyboard.removeScene('abcredit')

	
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		
		mg = display.newText('More Games by Developer', 5 , 43, 'marker felt', 23)
		mg:setTextColor(255,185,0)
		group:insert(mg) 
		
		mg1 = display.newText('Rate Game', 5 , 143-10, 'marker felt', 23)
		mg1:setTextColor(255,185,0)
		group:insert(mg1) 
		
		mg2 = display.newText('How to Play', 5 , 243-20, 'marker felt', 23)
		mg2:setTextColor(255,185,0)
		group:insert(mg2) 
		
		mg3 = display.newText('Music', 5 , 343-30, 'marker felt', 23)
		mg3:setTextColor(255,185,0)
		group:insert(mg3) 
	
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
		
	
		
		
	onTouch4 = function (event )
	
		if event.phase == "began" then
        				audio.play(s5)
        				myButton4:scale(1.2,1.2)
        				
		elseif event.phase == "ended" then
		
			myButton4:scale(.8334,.8334)
			storyboard.gotoScene('moregames')
		end	
		
	end
			
		
		
	onTouch3 = function (event )
		if event.phase == "began" then
        				audio.play(s5)
        				myButton3:scale(1.2,1.2)
        				
		elseif event.phase == "ended" then
		
			myButton3:scale(.8334,.8334)
			local url = "itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa"
					url = url .. "/wa/viewContentsUserReviews?"
					url = url .. "type=Purple+Software&id="
					url = url .. "630102331"
							
					system.openURL(url)
				
		end
	end	
		
	onTouch2 = function (event )
	
		if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        				
		elseif event.phase == "ended" then
		
			myButton2:scale(.8334,.8334)
			system.openURL("https://www.youtube.com/watch?v=eRg-9d24BHg")
		end	
		
	end
	
	onTouch5 = function(event)
		if event.phase == "began" then
        				audio.play(s5)
        				myButton5:scale(1.2,1.2)
        				storyboard.music = 1
        elseif event.phase == "ended" then
				myButton5:scale(.8334,.8334)
				
		end		
		
	end
	
	onTouch6 = function(event)
		if event.phase == "began" then
        				audio.play(s5)
        				myButton6:scale(1.2,1.2)
        				storyboard.music = 2
        				
        				
        elseif event.phase == "ended" then
			myButton6:scale(.8334,.8334)
				
		end		
		
	end
	--]]
	
			
		myButton4 = widget.newButton{
    		defaultFile = "play.png",
    		left = w-45,
        	top =30,
       		width =45, height = 45,
        	emboss=true,
       		onEvent = onTouch4
   			 }
			group:insert(myButton4)
		
		myButton3 = widget.newButton{
    		defaultFile = "play.png",
    		left = w-45,
        	top =120,
       		width =45, height = 45,
        	emboss=true,
       		onEvent = onTouch3
   			 }
			group:insert(myButton3)
		
		
	
		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w-45,
        	top =230-20,
       		width =45, height = 45,
        	emboss=true,
       		onEvent = onTouch2
   			 }
			group:insert(myButton2)
			
		myButton5 = widget.newButton{
    		defaultFile = "on.png",
    		left = w-95,
        	top =330-30,
       		width =45, height = 45,
        	emboss=true,
       		onEvent = onTouch5
   			 }
			group:insert(myButton5)	
			
		myButton6 = widget.newButton{
    		defaultFile = "off.png",
    		left = w-45,
        	top =330-30,
       		width =45, height = 45,
        	emboss=true,
       		onEvent = onTouch6
   			 }
			group:insert(myButton6)	
		
				
			
			
	
			onButtonEvent = function (event )
        		if event.phase == "began" then
        				audio.play(s5)
        				myButton:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('start1')
        				myButton:scale(.8334,.8334)
        			
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