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
	
		l1.x = w/2-95
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
	
	local stars4 = myStars4:retrieve('stars4') 
		
		if (stars4 == 13) then
			l4 = display.newImageRect('Stars/3-Stars-4.png',55,55)
			
		elseif (stars4 == 12) then
			l4 = display.newImageRect('Stars/2-Stars-4.png',55,55)
		else 
			l4 = display.newImageRect('Stars/1-Stars-4.png',55,55)
			
		end
	l4.x = w/2-95
	l4.y = 100
	l4:addEventListener('tap', onTap4)
	group:insert(l4)
	
	local stars5 = myStars5:retrieve('stars5') 
		
		if (stars5 == 13) then
			l5 = display.newImageRect('Stars/3-Stars-5.png',55,55)
			
		elseif (stars5 == 12) then
			l5 = display.newImageRect('Stars/2-Stars-5.png',55,55)
		else 
			l5 = display.newImageRect('Stars/1-Stars-5.png',55,55)
			
		end
	
	l5.x = w/2+5
	l5.y = 100
	l5:addEventListener('tap', onTap5)
	group:insert(l5)
	
	local stars6 = myStars6:retrieve('stars6') 
		
		if (stars6 == 13) then
			l6 = display.newImageRect('Stars/3-Stars-6.png',55,55)
			
		elseif (stars6 == 12) then
			l6 = display.newImageRect('Stars/2-Stars-6.png',55,55)
		else 
			l6 = display.newImageRect('Stars/1-Stars-6.png',55,55)
			
		end
	l6.x = w/2+105
	l6.y = 100
	l6:addEventListener('tap', onTap6)
	group:insert(l6)
	
	local stars7 = myStars7:retrieve('stars7') 
		
		if (stars7 == 13) then
			l7 = display.newImageRect('Stars/3-Stars-7.png',55,55)
			
		elseif (stars7 == 12) then
			l7 = display.newImageRect('Stars/2-Stars-7.png',55,55)
		else 
			l7 = display.newImageRect('Stars/1-Stars-7.png',55,55)
			
		end
	l7.x = w/2-95
	l7.y = 160
	l7:addEventListener('tap', onTap7)
	group:insert(l7)
	
	
	
	local stars8 = myStars8:retrieve('stars8') 
		
		if (stars8 == 13) then
			l8 = display.newImageRect('Stars/3-Stars-8.png',55,55)
			
		elseif (stars8 == 12) then
			l8 = display.newImageRect('Stars/2-Stars-8.png',55,55)
		else 
			l8 = display.newImageRect('Stars/1-Stars-8.png',55,55)
			
		end
	l8.x = w/2+5
	l8.y = 160
	l8:addEventListener('tap', onTap8)
	group:insert(l8)
	
	local stars9 = myStars9:retrieve('stars9') 
		
		if (stars9 == 13) then
			l9 = display.newImageRect('Stars/3-Stars-9.png',55,55)
			
		elseif (stars9 == 12) then
			l9 = display.newImageRect('Stars/2-Stars-9.png',55,55)
		else 
			l9 = display.newImageRect('Stars/1-Stars-9.png',55,55)
			
		end
	l9.x = w/2+105
	l9.y = 160
	l9:addEventListener('tap', onTap9)
	group:insert(l9)
	
	local stars10 = myStars10:retrieve('stars10') 
		
		if (stars10 == 13) then
			l10 = display.newImageRect('Stars/3-Stars-10.png',55,55)
			
		elseif (stars10 == 12) then
			l10 = display.newImageRect('Stars/2-Stars-10.png',55,55)
		else 
			l10= display.newImageRect('Stars/1-Stars-10.png',55,55)
			
		end
	l10.x = w/2-95
	l10.y = 220
	l10:addEventListener('tap', onTap10)
	group:insert(l10)

	local stars11 = myStars11:retrieve('stars11') 
		
		if (stars11 == 13) then
			l11 = display.newImageRect('Stars/3-Stars-11.png',55,55)
			
		elseif (stars11 == 12) then
			l11 = display.newImageRect('Stars/2-Stars-11.png',55,55)
		else 
			l11= display.newImageRect('Stars/1-Stars-11.png',55,55)
			
		end
	l11.x = w/2+5
	l11.y = 220
	l11:addEventListener('tap', onTap11)
	group:insert(l11)
	
	
	local stars12 = myStars11:retrieve('stars11') 
		
		if (stars12 == 13) then
			l12 = display.newImageRect('Stars/3-Stars-12.png',55,55)
			
		elseif (stars12 == 12) then
			l12 = display.newImageRect('Stars/2-Stars-12.png',55,55)
		else 
			l12= display.newImageRect('Stars/1-Stars-12.png',55,55)
			
		end
	l12.x = w/2+105
	l12.y = 220
	l12:addEventListener('tap', onTap12)
	group:insert(l12)
	
	local stars13 = myStars13:retrieve('stars13') 
		
		if (stars13 == 13) then
			l13 = display.newImageRect('Stars/3-Stars-13.png',55,55)
			
		elseif (stars13 == 12) then
			l13 = display.newImageRect('Stars/2-Stars-13.png',55,55)
		else 
			l13= display.newImageRect('Stars/1-Stars-13.png',55,55)
			
		end
	l13.x = w/2-95
	l13.y = 280
	l13:addEventListener('tap', onTap13)
	group:insert(l13)

	
	local stars14 = myStars14:retrieve('stars14') 
		
		if (stars14 == 13) then
			l14 = display.newImageRect('Stars/3-Stars-14.png',55,55)
			
		elseif (stars14 == 12) then
			l14 = display.newImageRect('Stars/2-Stars-14.png',55,55)
		else 
			l14= display.newImageRect('Stars/1-Stars-14.png',55,55)
			
		end
	l14.x = w/2+5
	l14.y = 280
	l14:addEventListener('tap', onTap14)
	group:insert(l14)
	
	
	local stars15 = myStars15:retrieve('stars15') 
		
		if (stars15 == 13) then
			l15 = display.newImageRect('Stars/3-Stars-15.png',55,55)
			
		elseif (stars15 == 12) then
			l15 = display.newImageRect('Stars/2-Stars-15.png',55,55)
		else 
			l15= display.newImageRect('Stars/1-Stars-15.png',55,55)
			
		end
	l15.x = w/2+105
	l15.y = 280
	l15:addEventListener('tap', onTap15)
	group:insert(l15)
	
	local stars16 = myStars16:retrieve('stars16') 
		
		if (stars16 == 13) then
			l16 = display.newImageRect('Stars/3-Stars-16.png',55,55)
			
		elseif (stars16 == 12) then
			l16 = display.newImageRect('Stars/2-Stars-16.png',55,55)
		else 
			l16= display.newImageRect('Stars/1-Stars-16.png',55,55)
			
		end
	l16.x =  w/2-95
	l16.y =  340
	l16:addEventListener('tap', onTap16)
	group:insert(l16)

	local stars17 = myStars17:retrieve('stars17') 
		
		if (stars17 == 13) then
			l17 = display.newImageRect('Stars/3-Stars-17.png',55,55)
			
		elseif (stars17 == 12) then
			l17 = display.newImageRect('Stars/2-Stars-17.png',55,55)
		else 
			l17= display.newImageRect('Stars/1-Stars-17.png',55,55)
			
		end
	l17.x =  w/2+5
	l17.y =  340
	l17:addEventListener('tap', onTap17)
	group:insert(l17)
	
	l18 = display.newImageRect('Stars/Unlocked-18.png',55,55)
	l18.x = w/2+105
	l18.y = 340
	l18:addEventListener('tap', onTap18)
	group:insert(l18)
	
	l19 = display.newImageRect('Stars/Locked-19.png',55,55)
	l19.x = w/2-95
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
	
	function onTap5()
		audio.play(s5)
		storyboard.gotoScene('pepper5')
	end
	
	function onTap6()
		audio.play(s5)
		storyboard.gotoScene('pepper6')
	end
	
	function onTap7()
		audio.play(s5)
		storyboard.gotoScene('pepper7')
	end
	
	function onTap8()
		audio.play(s5)
		storyboard.gotoScene('pepper8')
	end
	
	function onTap9()
		audio.play(s5)
		storyboard.gotoScene('pepper9')
	end
	
	function onTap10()
		audio.play(s5)
		storyboard.gotoScene('pepper10')
	end
	
	function onTap11()
		audio.play(s5)
		storyboard.gotoScene('pepper11')
	end
	
	function onTap12()
		audio.play(s5)
		storyboard.gotoScene('pepper12')
	end
	
	function onTap13()
		audio.play(s5)
		storyboard.gotoScene('pepper13')
	end
	
	function onTap14()
		audio.play(s5)
		storyboard.gotoScene('pepper14')
	end
	
	function onTap15()
		audio.play(s5)
		storyboard.gotoScene('pepper15')
	end
	
	function onTap16()
		audio.play(s5)
		storyboard.gotoScene('pepper16')
	end
	
	function onTap17()
		audio.play(s5)
		storyboard.gotoScene('pepper17')
	end
	
	function onTap18()
		audio.play(s5)
		storyboard.gotoScene('pepper18')
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