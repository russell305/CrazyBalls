----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

local h = display.contentHeight
local w = display.contentWidth
local bg1, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15
local lock, l16, l17, l18, l19, l20, l21, l22, l23, l24, l25

local onTap1
local ballSetup
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
	
	bg1 = display.newImageRect('env1.png',w ,h)--menu1.jpg
	bg1.x = w - w/2
	bg1.y = h - h/2
	group:insert(bg1)
	
	local text2 = display.newImageRect('text3.png', w, 300)
		text2.xScale = 1.0
		text2.yScale=1.0
		text2.x =w/2
		text2.y = h/2+290
		group:insert(text2)
	
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
	storyboard.removeScene('start1')
	storyboard.removeScene('loadMainMenu')

	
local function ballSetup()
		
	
	local stars1 = myStars1:retrieve('stars1') 
		print (stars)
		if (stars1 == 13) then
			l1 = display.newImageRect('Stars/3-Stars-1.png',55,55)
			
		elseif (stars1 == 12) then
			l1 = display.newImageRect('Stars/2-Stars-1.png',55,55)
		else 
			l1 = display.newImageRect('Stars/1-Stars-1.png',55,55)
			
		end
	
		l1.x =  w/2-95
		l1.y = 40
		l1:addEventListener('tap', onTap1)
		group:insert(l1)
	
	
	local stars2 = myStars2:retrieve('stars2') 
		
		if (stars2 == 13) then
			l2 = display.newImageRect('Stars/3-Stars-2.png',55,55)
			
		elseif (stars2 == 12) then
			l2 = display.newImageRect('Stars/2-Stars-2.png',55,55)
		else 
			l2 = display.newImageRect('Stars/1-Stars-2.png',55,55)
			
		end
		l2.x = w/2+5
		l2.y = 40
		l2:addEventListener('tap', onTap2)
		group:insert(l2)

	local stars3 = myStars3:retrieve('stars3') 
		
		if (stars3 == 13) then
			l3 = display.newImageRect('Stars/3-Stars-3.png',55,55)
			
		elseif (stars3 == 12) then
			l3 = display.newImageRect('Stars/2-Stars-3.png',55,55)
		else 
			l3 = display.newImageRect('Stars/1-Stars-3.png',55,55)
			
		end
	l3.x = w/2+105
	l3.y = 40
	l3:addEventListener('tap', onTap3)
	group:insert(l3)
	
	l4 = display.newImageRect('Stars/Unlocked-4.png',55,55)
	l4.x =  w/2-95
	l4.y = 100
	l4:addEventListener('tap', onTap4)
	group:insert(l4)
	
	l5 = display.newImageRect('Stars/Locked-5.png',55,55)
	l5.x = w/2+5
	l5.y = 100
	group:insert(l5)
	
	l6 = display.newImageRect('Stars/Locked-6.png',55,55)
	l6.x = w/2+105
	l6.y = 100
	group:insert(l6)
	
	l7 = display.newImageRect('Stars/Locked-7.png',55,55)
	l7.x =  w/2-95
	l7.y = 160
	group:insert(l7)
	
	l8 = display.newImageRect('Stars/Locked-8.png',55,55)
	l8.x = w/2+5
	l8.y = 160
	group:insert(l8)
	
	l9 = display.newImageRect('Stars/Locked-9.png',55,55)
	l9.x = w/2+105
	l9.y = 160
	group:insert(l9)
	
	l10 = display.newImageRect('Stars/Locked-10.png',55,55)
	l10.x =  w/2-95
	l10.y = 220
	group:insert(l10)
	
	l11 = display.newImageRect('Stars/Locked-11.png',55,55)
	l11.x = w/2+5
	l11.y = 220
	group:insert(l11)
	
	l12 = display.newImageRect('Stars/Locked-12.png',55,55)
	l12.x = w/2+105
	l12.y = 220
	group:insert(l12)
	
	l13 = display.newImageRect('Stars/Locked-13.png',55,55)
	l13.x =  w/2-95
	l13.y = 280
	group:insert(l13)
	
	l14 = display.newImageRect('Stars/Locked-14.png',55,55)
	l14.x = w/2+5
	l14.y = 280
	group:insert(l14)
	
	l15 = display.newImageRect('Stars/Locked-15.png',55,55)
	l15.x = 264
	l15.y = 280
	group:insert(l15)
	
	l16 = display.newImageRect('Stars/Locked-16.png',55,55)
	l16.x =   w/2-95
	l16.y =  340
	group:insert(l16)

	l17 = display.newImageRect('Stars/Locked-17.png',55,55)
	l17.x =  w/2+5
	l17.y =  340
	group:insert(l17)
	
	l18 = display.newImageRect('Stars/Locked-18.png',55,55)
	l18.x = w/2+105
	l18.y = 340
	group:insert(l18)
	
	l19 = display.newImageRect('Stars/Locked-19.png',55,55)
	l19.x =  w/2-95
	l19.y = 400
	group:insert(l19)
	
	l20 = display.newImageRect('Stars/Locked-20.png',55,55)
	l20.x = w/2+5
	l20.y = 400
	group:insert(l20)
	
	l21 = display.newImageRect('Stars/Locked-21.png',55,55)
	l21.x =  w/2+105
	l21.y =  400
	group:insert(l21)
	
	l23 = display.newImageRect('home.png',50,50)
	l23.x = w/2+2
	l23.y = 455
	l23:addEventListener('tap', onTapHome)
	group:insert(l23)
	
	ll = display.newImageRect('arrowLock.png',50,50)
	ll.x = w/2+104
	ll.y = 455
	group:insert(ll)
	
	end
	function onTapHome()
		audio.play(s5)
		storyboard.gotoScene('start1')
		
	end
	
	function onTap1()
		audio.play(s5)
		storyboard.gotoScene('pepper1')
		
	end
	
	function onTap2()
		audio.play(s5)
		storyboard.gotoScene('pepper2')
	end
	
	function onTap3()
		audio.play(s5)
		storyboard.gotoScene('pepper3')
	end
	
	function onTap4()
		audio.play(s5)
		storyboard.gotoScene('pepper4')
	end
	
	ballSetup()
	
	
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