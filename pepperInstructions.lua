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
physics.setGravity(0, 2)
--physics.setDrawMode('hybrid')
local circle
local arrow
local arrow1
local arrow2
local bg
local gameScore
local scoreText
local ball
local bluBack
local floor1
local line
local tmr1
local cup
local level
local shade
local onButtonEvent
local onButtonEvent1
local myButton
local myButton1
local recycle
local text1
local text2
local text3
local text4
local text5
local text6
local text7
local t = 0
local r = 0
local j = 1
local lines = {}
local line_number = 1
local line_width = 3.5
local prev_x, prev_y, ball
local ball = {}
local touchMove
local touchme
local timerLine1
local timerLine2
-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	
	storyboard.removeScene('next')
	storyboard.removeScene('start1')
	
	
	bg = display.newImageRect('env1.png',w ,h)
	bg.x = w - w/2
	bg.y = h - h/2
	group:insert(bg)
	
	level = display.newText("Instructions" ,135,17,'marker felt', 20)
	group:insert(level)
	
	circle = display.newCircle(90, 30, 25)
	circle.name = 'circle'
	circle:setFillColor(0,0,0)
	--physics.addBody(circle, "static",{bounce = 0.1, friction = .7} )
	group:insert(circle)
	
	floor1 = display.newRect(-200, h, w+400, 10)
	floor1.name = 'floor1'
	floor1:setFillColor(255,0,0)
	physics.addBody(floor1, "static",{bounce = 0.1, friction = .7} )
	group:insert(floor1)
	
	
	 cup = display.newImageRect('cup1.png', 70, 93)
	 cup:setFillColor(255,200,0)
	cup:setReferencePoint(display.BottomLeftReferencePoint)
	cup.x = w-70
	cup.y = h
	group:insert(cup)
	
	gameScore = 10
	
	scoreText = display.newText(gameScore,0,0,"Arial", 15)
	--scoreText:setTextColor(255,255,255)
	scoreText.x = w-44
	scoreText.y = h-22
	group:insert(scoreText)
	
	line = display.newRect( w-62,h-55, 39, 3)
	line.name = "line"
	line:setFillColor(200,0,0) 
	physics.addBody( line, "static", { isSensor = true } )
	group:insert(line)
	line.alpha = 0 --this is if you want the line to be invisble

	line1 = display.newRect( w-98, h-20, 70, 2 )
	line1.name = "line1"
	line1.rotation= 80
	line1:setFillColor(200,0,0) 
	physics.addBody( line1, "static" )
	group:insert(line1)
	line1.alpha = 0 --this is if you want the line to be invisble

	line2 = display.newRect( w-55, h-20, 70, 2 )
	line2.name = "line2"
	line2.rotation= -80
	line2:setFillColor(200,0,0) 
	physics.addBody( line2, "static" )
	group:insert(line2)
	line2.alpha = 0 --this is if you want the line to be invisble
	

	
text1 = display.newText("Draw lines",w-100,160,'marker felt',20)
text1:setTextColor(250,250,250)
--text1:setTextColor(200,200,0)
group:insert(text1)
		
text2 = display.newText("with",w-100,180,'marker felt',20)
text2:setTextColor(250,250,250)
--text2:setTextColor(200,200,0)
group:insert(text2)

text3 = display.newText("Your Finger.",w-100,200,'marker felt',20)
text3:setTextColor(250,250,250)
--text3:setTextColor(200,200,0)
group:insert(text3)
--]]
text4 = display.newText("Steer Balls",w-100,h-180,'marker felt',20)
text4:setTextColor(250,250,250)
--text3:setTextColor(200,200,0)
group:insert(text4)

text5 = display.newText("Into ",w-100,h-160,'marker felt',20)
text5:setTextColor(250,250,250)
--text3:setTextColor(200,200,0)
group:insert(text5)

text6 = display.newText("The cup.",w-100,h-140,'marker felt',20)
text6:setTextColor(250,250,250)
group:insert(text6)

	

arrow1 = display.newImageRect('arrowR.png', 56, 32)
arrow1.x = w-100
arrow1.y = h-40
group:insert(arrow1)




	
	

end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
function start()
		
		
 
   	
function touchMove()
	
	
	touchme= display.newImageRect('touchme.png',30 ,38)
	
	touchme.x = 80
	touchme.y = 120
	group:insert(touchme)
	
	transition.to(touchme,{ time = 10000, x= w-45, y= h+20})

	
end
touchMove() 	
 --]]
 function menuButtons()   	
    
    
  	onButtonEvent1 = function (event )
        if event.phase == "press" then
        	myButton1:scale(1.2,1.2)
        	audio.play(s5)
         elseif	event.phase == "release" then
         	timer.cancel(tmr1)	
         	timer.cancel(timerLine2)	
        	storyboard.gotoScene('start1')
        	
        end
    end
    	
 
     myButton1 = widget.newButton{
    	default = "home.png",
    	--defaultColor = { default={ 0, 0, 255 }, over={  0, 0, 255} },
        id = "btn001",
        left = w-55,
        top = 5,
       -- label = "Main Menu",
       --	labelColor = { default={ 255, 0, 0 }, over={  0, 0, 255 } },
        width =47, height = 47,
        --yOffset = 100,
        --cornerRadius = 8,
        emboss=true,
       	font = "helvetica",
        fontSize = 10,
      	onEvent = onButtonEvent1
    }
	group:insert(myButton1)
end
	
	--menuTimer = timer.performWithDelay(1000,menuButtons,1)
	menuButtons()
	function line:collision (event)
		
        if (event.other.name == 'ball') then  
        	audio.play(wee)	
        	event.other:removeSelf()
          	event.other = nil 
          gameScore = gameScore-1
			scoreText.text = gameScore
			 
						if gameScore == 0 then
							local	poof = display.newImageRect('poof1.png', 80,90)
							poof:setReferencePoint(display.BottomLeftReferencePoint)
							poof.x = cup.x-15
							poof.y = cup.y
							group:insert(poof)
							audio.play(win)
							scoreText.alpha=0
							timer.cancel(tmr1)
							timer.performWithDelay(1000,transitionA,1)
							
							
						end	  
        end
      
	end		
		line:addEventListener("collision",line)	
function transitionA()

    print (stars)
	storyboard.gotoScene('start1')
	print (j)
end


	function createBall()
		ranX = math.random( 85,95 )
		ball[j] = display.newImageRect("ball2.png", 20,20)
		ball[j].x = ranX
		ball[j].y = 30
       -- ball[j] = display.newCircle( ranX, 40, 2 )
       -- ball[j]:setFillColor(0, 0, 255)
        ball[j].name = "ball"
        ball[j]:addEventListener("collision", ball[j])
        physics.addBody(ball[j],"dynamic", {bounce=.1, radius = 10,density = .3,  friction=1 })
        group:insert(ball[j])
        j = j + 1
        
	end

	tmr1 = timer.performWithDelay( 800, createBall, 150 )
	
	function timerLine1()
			line3 = display.newRect(-10, 220, 340, 2 )
	line3.rotation= 55
	line3:setFillColor(255,255,255) 
	physics.addBody( line3, "static" )
	group:insert(line3)
	
	line4 = display.newRect(w-6,h-h/3,2,h/4)
	line4:setFillColor(255,255,255) 
	physics.addBody( line4, "static" )
	group:insert(line4)
	end

timerLine2 = timer.performWithDelay(3000,timerLine1,1)
	

			lineLeft = display.newRect( -20,-1000, 5, h+1000)
	lineLeft.name = "lineLeft"
	lineLeft:setReferencePoint(display.TopLeftReferencePoint)
	lineLeft:setFillColor(200,0,0)
	physics.addBody( lineLeft, "static", { isSensor = true } )
	group:insert(lineLeft)
	lineLeft.alpha = 0 --this is if you want the line to be invisble	
	
	lineRight = display.newRect( w+20,-1000, 5, h+1000)
	lineRight.name = "lineRight"
	lineRight:setReferencePoint(display.TopLeftReferencePoint)
	lineRight:setFillColor(200,0,0)
	physics.addBody( lineRight, "static", { isSensor = true } )
	group:insert(lineRight)
	lineRight.alpha = 0 --this is if you want the line to be invisble
		
		function lineLeft:collision (event)
			if (event.other.name == 'ball') then
           		event.other:removeSelf()
           		event.other = nil
        	elseif (event.other.name == 'ball1') then  
        		event.other:removeSelf()
           		event.other = nil 
        	elseif (event.other.name == 'ballG') then  
        		event.other:removeSelf()
          		event.other = nil 
           		 
        	end
      
		end		
		lineLeft:addEventListener("collision",lineLeft)	
		
		function lineRight:collision (event)
			if (event.other.name == 'ball') then
           		event.other:removeSelf()
           		event.other = nil
        	elseif (event.other.name == 'ball1') then  
        		event.other:removeSelf()
           		event.other = nil 
        	elseif (event.other.name == 'ballG') then  
        		event.other:removeSelf()
          		event.other = nil 
           		 
        	end
      
		end		
		lineRight:addEventListener("collision",lineRight)	

end
start()
	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	
	Runtime:removeEventListener( "collision", turnRed )
	Runtime:removeEventListener( "collision", turnBlue )
	--audio.pause(song1)
	--audio.rewind(song1)


	
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