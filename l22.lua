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
local lock, l16, l17, l18, l19, l20, l21, l22, l23, l24, l25, l26,l27

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
	local text1 = display.newText("More levels coming soon...",50,140,'optima',20)
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
	if (levels <= 21) then
		l22 = display.newImageRect('Stars/Locked-22.png' ,55,55)
	l22.x = w/2-95
	l22.y = 40
	group:insert(l22)
	
	else
	
	l22a = display.newImageRect('Stars/Unlocked-22.png' ,55,55)
	l22a.x = w/2-95
	l22a.y = 40
	l22a:addEventListener('tap', onTap22)
	group:insert(l22a)
	end
	
	
	l23 = display.newImageRect('Stars/Locked-23.png',55,55)
	l23.x = w/2
	l23.y = 40
	group:insert(l23)
	
	
	l24 = display.newImageRect('Stars/Locked-24.png',55,55)
	l24.x = w/2+95
	l24.y = 40
	group:insert(l24)
	
	l25 = display.newImageRect('Stars/Locked-25.png',55,55)
	l25.x = w/2-95
	l25.y = 100
	group:insert(l25)
	
	l26 = display.newImageRect('Stars/Locked-26.png',55,55)
	l26.x = w/2
	l26.y = 100
	group:insert(l26)
	
	l27 = display.newImageRect('Stars/Locked-27.png',55,55)
	l27.x = w/2+95
	l27.y = 100
	group:insert(l27)

	l23 = display.newImageRect('home.png',50,50)
	l23.x = w/2+2
	l23.y = 455
	l23:addEventListener('tap', onTapHome)
	group:insert(l23)
	--]]
	ll = display.newImageRect('arrowL.png',50,50)
	ll.x = 25
	ll.y = 455
	ll:addEventListener('tap', onTapBack)
	group:insert(ll)
	--]]
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