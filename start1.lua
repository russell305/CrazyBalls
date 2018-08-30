----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------


local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
local physics = require ("physics")


physics.start(true)
physics.setGravity(0, 3)
--physics.setDrawMode('hybrid')


local h = display.contentHeight
local w = display.contentWidth
local bg1
local level
local pay
local onTouch
local onTouch2
local ball
local ball1
local ball2
local j = 1
local k = 1
local l = 1
local ball={ }
local ball1={ }
local ball2={ }
local btnAni
local btnAni2
local myButton
local myButton1
local myButtonG
local move
local kn
local btTwitter
 local twitter
 local btGame
 local facebookgg
 local btFacebook
 local socialText
 local text2
local buttonGrowA
local buttonGrowB
local buttonGrowC
local timerButton
 
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
		storyboard.removeScene('main')
		storyboard.removeScene('l1');storyboard.removeScene('l2')
	storyboard.removeScene('l3');storyboard.removeScene('l4')
	storyboard.removeScene('l5');storyboard.removeScene('l6')
	storyboard.removeScene('l7');storyboard.removeScene('l8')
	storyboard.removeScene('l9');storyboard.removeScene('l10')
	storyboard.removeScene('l11');storyboard.removeScene('l12')
	storyboard.removeScene('l13');storyboard.removeScene('l14')
	storyboard.removeScene('l15');storyboard.removeScene('l16')
	storyboard.removeScene('l17');storyboard.removeScene('l18')
	storyboard.removeScene('l19');storyboard.removeScene('l20')
	storyboard.removeScene('l21');storyboard.removeScene('l22')
	storyboard.removeScene('l23');storyboard.removeScene('l24')
	storyboard.removeScene('options')
	storyboard.removeScene('l25')
	storyboard.removeScene('pepperInstructions')
	
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		
		 --audio.play(song,{channel = 2,loops = -1}) 
		
		socialText = "Fun with Crazy Balls is a great game, you should try it!"
		--socialText = "Bunny the Ninja is a great game, you should try it!"
	
		text2 = display.newImageRect('title.png', w, 300)
		text2.xScale = 1.1
		text2.yScale=1.1
		text2.x =w/2
		text2.y = h/2-102
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
			
	
	function text()
	
		
		levels = myData:retrieve('levele') 
		print (levels)
		
		floor1 = display.newRect(w/2, h+5, w, 10)
		floor1.name = 'floor1'
		floor1:setFillColor(0,255,0)
		physics.addBody(floor1, "static",{bounce = 0.1, friction = .7} )
		group:insert(floor1)
		floor1.anchorX = .5
 		floor1.anchorY = .5
		

	
	end	
	
	function createBall()
		ranX = math.random( 20, w-20)
		ball[j] = display.newImageRect("ball2.png", 20,20)
		ball[j].x = ranX
		ball[j].y = -40
       -- ball[j].name = "ball"
        --ball[j]:addEventListener("collision", ball[j])
        physics.addBody(ball[j],"dynamic", {bounce=.1, radius = 10,density = .3,  friction=1 })
        group:insert(ball[j])
        j = j + 1
	end

	tmr1 = timer.performWithDelay( 400, createBall, 250 )
	
	
	
	

	
	local onButtonEvent = function (event)
		if event.phase == "began" then
			myButton:scale(1.2,1.2)
			shade = display.newRoundedRect(w/2,h/2,245,50,25)
			shade:setFillColor(0,0,0,255)
			--shade:setReferencePoint(display.TopLeftReferencePoint)
			shade.alpha = .5
			group:insert(shade)
			loading = display.newText("Loading..." ,w/2+10,h/2,'helvetica', 40)
			group:insert(loading)
			audio.stop({channel= 2})
      	elseif event.phase == "ended" then
      		myButton:scale(.8334,.8334)
      		print (levels)
			audio.play(s5)	
		if (levels == nil) then
			--print('nil')
			storyboard.gotoScene('pepper1')
		elseif(levels == 1) then
			print("level 1") 
			storyboard.gotoScene('pepper1')
			
		elseif(levels == 2) then
			print("level 2") 
			storyboard.gotoScene('l2')
			
		elseif(levels == 3) then
			print("level3")
			storyboard.gotoScene('l3')
		
		elseif(levels == 4)	then
			storyboard.gotoScene('l4')
				
		elseif(levels == 5)	then
			storyboard.gotoScene('l5')
				
		elseif(levels == 6)	then
			storyboard.gotoScene('l6')	
		
		elseif(levels == 7)	then
			storyboard.gotoScene('l7')
					
		elseif(levels == 8)	then
			storyboard.gotoScene('l8')	
			
		elseif(levels == 9)	then
			storyboard.gotoScene('l9')	
			
		elseif(levels == 10) then
			storyboard.gotoScene('l10')	
			
		elseif(levels == 11)then
			storyboard.gotoScene('l11')	
		
		elseif(levels == 12)then
			storyboard.gotoScene('l12')	
				
		elseif(levels == 13)then
			storyboard.gotoScene('l13')		
		elseif(levels == 14)then
			storyboard.gotoScene('l14')	
				
		elseif(levels == 15)then
			storyboard.gotoScene('l15')	
		
		elseif(levels == 16)then
			storyboard.gotoScene('l16')	
		
		elseif(levels == 17)then
			storyboard.gotoScene('l17')	
				
		elseif(levels == 18)then
			storyboard.gotoScene('l18')	
			
		elseif(levels == 19)then
			storyboard.gotoScene('l19')
		elseif(levels == 20)then
			storyboard.gotoScene('l20')	
			
		elseif(levels == 21)then
			storyboard.gotoScene('l21')	
		
		elseif(levels == 22)then
			storyboard.gotoScene('l21')	
		elseif(levels == 23)then
			storyboard.gotoScene('l21')	
		elseif(levels == 24)then
			storyboard.gotoScene('l21')	
		elseif(levels == 25)then
			storyboard.gotoScene('l21')	
		elseif(levels == 26)then
			storyboard.gotoScene('l21')
		elseif(levels == 27)then
			storyboard.gotoScene('l21')																											
		--]]
		end
		end
		return true	
	end
	
	--[[
			function buttonGrowB()
				myButton:scale(.8334,.8334)
			end
			function buttonGrowA()
				myButton:scale(1.2,1.2)
				
				local timerButtonB = timer.performWithDelay(200,buttonGrowB,1)
			end
			timerButton = timer.performWithDelay(3000,buttonGrowA,-1)
	--]]
	
	 	myButton = widget.newButton{
    	defaultFile = "start.png",
    	left = w/2-60,
        top = h/2+50,
       width =120, height = 60,
     onEvent = onButtonEvent,
    }
   		 group:insert(myButton)
   		 
   --------------------------------------	


   		 
   		
   		 

	 
 

---[[

    ---------------------------------------------
    function btEmail(event)
	if event.phase == "began" then
			myButtonEmail:scale(1.2,1.2)
			audio.play(s5)
    elseif event.phase == "ended" then
      	local options =
{
to = "",
subject = "Fun with Crazy Balls!",
body = "Check out this really cool game Fun Crazy Balls! - https://play.google.com/store/apps/details?id=com.miamigames.games.funcrazyballs",
attachment = { baseDir=system.DocumentsDirectory,
filename="Screenshot.png", type="image" },
}
native.showPopup("mail", options)
		myButtonEmail:scale(.8334,.8334)
	end
end


    
     myButtonEmail= widget.newButton
     {
    	defaultFile = "email.png",
    	--defaultColor = { default={ 0, 0, 255 }, over={  0, 0, 255} },
        --id = "btn001",
        left = 40,
        top = h/2+90,
        --label = "reset level",
       	labelColor = { default={ 255, 0, 0 }, over={  0, 0, 255 } },
        width =40, height = 40,
     
      	onEvent = btEmail,
    }
    group:insert(myButtonEmail)
    --]]
-------------------------------------------------------------------------------
---[[  
    function btText(event)
	if event.phase == "began" then
			myButtonText:scale(1.2,1.2)
			audio.play(s5)
    elseif event.phase == "ended" then
      	local options =
			{
				body = "Check out this really cool game Fun Crazy Balls! - https://play.google.com/store/apps/details?id=com.miamigames.games.funcrazyballs",
						
			}
			native.showPopup("sms", options)
		myButtonText:scale(.8334,.8334)
	end
end


    
     myButtonText= widget.newButton
     {
    	defaultFile = "text.png",
    	--defaultColor = { default={ 0, 0, 255 }, over={  0, 0, 255} },
        --id = "btn001",
        left = w-80,
        top = h/2+90,
        --label = "reset level",
       	labelColor = { default={ 255, 0, 0 }, over={  0, 0, 255 } },
        width =40, height = 40,
     
      	onEvent = btText,
    }
    group:insert(myButtonText)
--]]
    reviewGame=function (event )
         local deviceType = system.getInfo ( "platformName" )
        local deviceVersion = system.getInfo ( "platformVersion" )

        local appleAppID = "895489568"
        local googleAppID = "com.miamigames.games.funcrazyballs"

        local urlPrefix = "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id="
        local urlSuffix = "&pageNumber=0&sortOrdering=2&type=Purple+Software&mt=8"

        if deviceType == "iPhone OS" then

           if string.find ( deviceVersion, "7.0" ) then
              system.openURL ( "itms-apps://itunes.apple.com/app/id" .. appleAppID )
           else
              system.openURL ( urlPrefix .. appleAppID .. urlSuffix )
           end

        else

           system.openURL ( "https://play.google.com/store/apps/details?id=" .. googleAppID )
                        
        end
    end  

    reviewButton = widget.newButton
{defaultFile = "review-button.png",
    left = w/2-50,
    top = h/2+150,
    width = 100,
    height = 40,
    
    onEvent = reviewGame,
}
group:insert( reviewButton ) 

	 text()
end




-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	timer.cancel(tmr1)

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