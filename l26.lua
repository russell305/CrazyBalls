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
local bg1, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15
local lock, l16, l17, l18, l19, l20, l21, l22, l23, l24, l25, l26, l27

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
	--[[
	text1 = display.newText("More levels coming soon...",50,140,'optima',20)
text1:setTextColor(250,250,250)
--text1:setTextColor(200,200,0)
group:insert(text1)
--]]
local text2 = display.newImageRect('text3.png', w, 300)
		text2.xScale = 1.0
		text2.yScale=1.0
		text2.x =w/2
		text2.y = h/2+290
		group:insert(text2)
	

	
	
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
	storyboard.removeScene('start1')
	storyboard.removeScene('loadMainMenu')
	storyboard.removeScene('tapNext')
	
	
	local function ballSetup()
		
	local stars22 = myStars22:retrieve('stars22') 
		
		if (stars22 
		== 13) then
			l22 = display.newImageRect('Stars/3-Stars-22.png',55,55)
			
		elseif (stars22 == 12) then
			l22 = display.newImageRect('Stars/2-Stars-22.png',55,55)
		else 
			l22= display.newImageRect('Stars/1-Stars-22.png',55,55)
			
		end
		
	l22.x = w/2-95
	l22.y = 40
	l22:addEventListener('tap', onTap22)
	group:insert(l22)
	
	
	local stars23 = myStars23:retrieve('stars23') 
		
		if (stars23 == 13) then
			l23 = display.newImageRect('Stars/3-Stars-23.png',55,55)
			
		elseif (stars23 == 12) then
			l23 = display.newImageRect('Stars/2-Stars-23.png',55,55)
		else 
			l23= display.newImageRect('Stars/1-Stars-23.png',55,55)
			
		end
	l23:addEventListener('tap', onTap23)
	l23.x = w/2
	l23.y = 40
	group:insert(l23)
	
	
	local stars24 = myStars24:retrieve('stars24') 
		
		if (stars24 == 13) then
			l24 = display.newImageRect('Stars/3-Stars-24.png',55,55)
			
		elseif (stars24 == 12) then
			l24 = display.newImageRect('Stars/2-Stars-24.png',55,55)
		else 
			l24= display.newImageRect('Stars/1-Stars-24.png',55,55)
			
		end
	l24:addEventListener('tap', onTap24)
	l24.x = w/2+95
	l24.y = 40
	group:insert(l24)
	
	local stars25 = myStars25:retrieve('stars25') 
		
		if (stars25 == 13) then
			l25 = display.newImageRect('Stars/3-Stars-25.png',55,55)
			
		elseif (stars25 == 12) then
			l25 = display.newImageRect('Stars/2-Stars-25.png',55,55)
		elseif (stars25 == 11) then 
			l25= display.newImageRect('Stars/1-Stars-25.png',55,55)
		else	
			l25 = display.newImageRect('Stars/Unlocked-25.png',55,55)
		end
	
	l25:addEventListener('tap', onTap25)
	l25.x = w/2-95
	l25.y = 100
	group:insert(l25)
	
	local stars26 = myStars26:retrieve('stars26') 
		
		if (stars26 == 13) then
			l26 = display.newImageRect('Stars/3-Stars-26.png',55,55)
			
		elseif (stars26 == 12) then
			l26 = display.newImageRect('Stars/2-Stars-26.png',55,55)
		elseif (stars26 == 11) then 
			l26= display.newImageRect('Stars/1-Stars-26.png',55,55)
		else	
			l26 = display.newImageRect('Stars/Unlocked-26.png',55,55)
		end
	
	l26:addEventListener('tap', onTap26)
	l26.x = w/2
	l26.y = 100
	group:insert(l26)
	
	l27 = display.newImageRect('Stars/Locked-27.png',55,55)
	l27.x = w/2+95
	l27.y = 100
	group:insert(l27)
	

	lH = display.newImageRect('home.png',50,50)
	lH.x = w/2+2
	lH.y = 455
	lH:addEventListener('tap', onTapHome)
	group:insert(lH)
	--]]
	ll = display.newImageRect('arrowL.png',50,50)
	ll.x = 25
	ll.y = 455
	ll:addEventListener('tap', onTapBack)
	group:insert(ll)
	
	end
	
	function onTapBack()
		audio.play(s5)
		storyboard.gotoScene('tapBack')
	end
	
	function onTapHome()
		audio.play(s5)
		storyboard.gotoScene('start1')
	end
	
	
	function onTap22()
		audio.play(s5)
		storyboard.gotoScene('pepper22')
	end
	
	function onTap23()
		audio.play(s5)
		storyboard.gotoScene('pepper23')
	end
	
	function onTap24()
		audio.play(s5)
		storyboard.gotoScene('pepper24')
	end
	
	function onTap25()
		audio.play(s5)
		storyboard.gotoScene('pepper25')
	end
	
	function onTap26()
		audio.play(s5)
		storyboard.gotoScene('pepper26')
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