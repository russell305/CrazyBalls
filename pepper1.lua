----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------
--9505513191838211196606
local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
storyboard.level = 1
storyboard.loading = 1
local widget = require "widget"
local physics = require ("physics")

physics.start(true)
physics.setGravity(0, 4)
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
local line2
local line3
local line4
local tmr1
local cup
local level
local shade
local onButtonEvent
local onButtonEvent1
local myButton
local myButton1
local recycle
local menuButtons
local restartButton
local wood
local text1
local text2
local text3
local text4
local text5
local text6
local text7
local text8
local text9
local t = 0
local r = 0
local j = 0
local z = 0
local lines = {}
local line_number = 1
local line_width = 3.5
local prev_x, prev_y, ball
local ball = {}
local flag = true

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local group = self.view
	
	
	storyboard.removeScene('start1')
	--storyboard.removeScene('nextPepp')
	storyboard.removeScene('loading')
	storyboard.removeScene('loadMainMenu')
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
	storyboard.removeScene('l25')
	
	
if (storyboard.music == 1) then
	audio.play(songA, {channel = 12, loops =1})
end	
	audio.play(song,{channel = 2,loops = -1})  
	
	
	bg = display.newImageRect('env1.png',w ,h)
	bg.x = w - w/2
	bg.y = h - h/2
	group:insert(bg)
	
	level = display.newText("Level 1",40,10,'marker felt', 20)
	group:insert(level)
	
	circle = display.newCircle(90, 30, 25)
	circle.name = 'circle'
	circle:setFillColor(0,0,0)
	--physics.addBody(circle, "static",{bounce = 0.1, friction = .7} )
	group:insert(circle)
	
		dash = display.newImageRect('dash2.png',w/2 ,h/2)
	dash.alpha = .5
	dash.x = w/2+18
	dash.y = h/2+65
	group:insert(dash)
	


		floor1 = display.newRect(w/2, h+5, w, 10)
		floor1.name = 'floor1'
		floor1:setFillColor(0,255,0)
		physics.addBody(floor1, "static",{bounce = 0.1, friction = .7} )
		group:insert(floor1)
	
	
	 cup = display.newImageRect('cup1.png', 70, 93)
	 cup:setFillColor(255,185,0)
	cup.anchorX = 0
 	cup.anchorY = 1
	cup.x = 60
	cup.y = h
	group:insert(cup)
	
	gameScore = 1
	
	scoreText = display.newText(gameScore,0,0,"Arial", 15)
	scoreText:setTextColor(0,0,0)
	scoreText.x = 86
	scoreText.y = h-22
	group:insert(scoreText)
	
	line = display.newRect(cup.x +27,cup.y-55, 40, 1)
	line.name = "line"
	line:setFillColor(200,0,0) 
	physics.addBody( line, "static", { isSensor = true } )
	group:insert(line)
	line.alpha = 0 --this is if you want the line to be invisble

	line1 = display.newRect(cup.x+5,cup.y -25, 55, 1  )
	line1.name = "line1"
	line1.rotation= 80
	line1:setFillColor(200,0,0) 
	physics.addBody( line1, "static" )
	group:insert(line1)
	line1.alpha = 0 --this is if you want the line to be invisble

	line2 = display.newRect(cup.x+50,cup.y -25, 55, 1  )
	line2.name = "line2"
	line2.rotation= -80
	line2:setFillColor(200,0,0) 
	physics.addBody( line2, "static" )
	group:insert(line2)
	line2.alpha = 0 --this is if you want the line to be invisble
	--[[
	line3 = display.newRect(25, 120, 100, 3 )
	line3.rotation= 55
	line3:setFillColor(255,255,255) 
	physics.addBody( line3, "static" )
	group:insert(line3)
	--]]
	wood = display.newImageRect('wood.png', 100, 10)
	--wood:setReferencePoint(display.BottomLeftReferencePoint)
	wood.rotation= 45
	wood.x =85
	wood.y = 120
	physics.addBody(wood, "static" )
	group:insert(wood)
	
local offset = 250	
	
text1 = display.newText("DRAW to get",w-70,h/2-110 +offset,'marker felt',22)
text1:setTextColor(250,250,250)
--text1:setTextColor(200,200,0)
group:insert(text1)
		
text2 = display.newText("enough BALLS",w-70,h/2-90 +offset,'marker felt',22)
text2:setTextColor(250,250,250)
--text2:setTextColor(200,200,0)
group:insert(text2)

text3 = display.newText("in the CUP.",w-70,h/2 -70 +offset,'marker felt',22)
text3:setTextColor(250,250,250)
--text3:setTextColor(200,200,0)
group:insert(text3)

text7 = display.newText("Draw as many lines",w-90,h/2-20+offset,'marker felt',20)
text7:setTextColor(250,250,250)
group:insert(text7)

text8 = display.newText("as necessary.",w-90,h/2+offset,'marker felt',20)
text8:setTextColor(250,250,250)
group:insert(text8)

arrow2 = display.newImageRect('arrowL.png', 45, 20)
arrow2.x = w/2-20
arrow2.y = 40
group:insert(arrow2)

text9 = display.newText("Balls",w/2-10,17,'marker felt',20)
text9:setFillColor(255,0,0)
group:insert(text9)

	
	

end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
	
function start()
		
		if (storyboard.level >= levels) then
	 		myData:store('levele',1)
        	myData:save()
        	print (levels)
        
    	end
    	

    	
    	
  
   	
local function touchMove()
	
	
	local touchme= display.newImageRect('touchme.png',30 ,38)
	
	touchme.x = w-45
	touchme.y = h/2-50
	group:insert(touchme)
	
	transition.to(touchme,{ time = 5000, x= 75, y= h+50})
	--transition=easing.inOutQuad 
	
	
end
touchMove() 	
 --]]
 
 
 function menuButtons()   	
    	
	 onButtonEvent = function (event )
        if event.phase == "began" then
        	myButton:scale(1.2,1.2)
        	audio.play(s5)
        elseif	event.phase == "ended" then
        	timer.cancel(tmr1)
        	storyboard.gotoScene('loading')
          
        end
    end
    myButton = widget.newButton{
    	defaultFile = "Replay.png",
    	--defaultColor = { default={ 0, 0, 255 }, over={  0, 0, 255} },
        --id = "btn001",
        left = w-110,
        top = 5,
        --label = "reset level",
       	labelColor = { default={ 255, 0, 0 }, over={  0, 0, 255 } },
        width =47, height = 47,
       -- yOffset = 100,
        --cornerRadius = 8,
        emboss=true,
       	font = "helvetica",
        fontSize = 10,
       
      	onEvent = onButtonEvent
    }
    group:insert(myButton)
    
     
     
  	onButtonEvent1 = function (event )
        if event.phase == "began" then
        	myButton1:scale(1.2,1.2)
        	audio.play(s5)
         elseif	event.phase == "ended" then
         	timer.cancel(tmr1)	
        	storyboard.gotoScene('loadMainMenu')
        	
        end
    end
    	
 
     myButton1 = widget.newButton{
    	defaultFile = "Menu.png",
    	--defaultColor = { default={ 0, 0, 255 }, over={  0, 0, 255} },
        id = "btn001",
        left = w-55,
        top = 5,
      width =47, height = 47,
     	
      	onEvent = onButtonEvent1
    }
	group:insert(myButton1)
	

     
     	function hintButton()
     		hhints2 = display.newImageRect('hint1.png',w ,h)
			hhints2.x = w - w/2
			hhints2.y = h - h/2
			--hhints2:addEventListener('touch', removeHints)
			group:insert(hhints2)

			function handleButtonEvent( event )
 
			    if ( "ended" == event.phase ) then
			    	timer.resume(tmr1)
	         		physics.start(true)
	         		Runtime:addEventListener("touch", runTouch)
	         		hhints2:removeSelf()
	      			hhints2 = nil
	      			button1:removeSelf()
      				button1 = nil
	      			myButton:setEnabled( true )
					myButton1:setEnabled( true )
					myButtonH:setEnabled( true )
					audio.play(songA, {channel = 12, loops =1})
			    	--removeHints()
			        print( "Button was pressed and released" )
			    end
			end
 
				 button1 = widget.newButton(
				    {
				        label = "Back",
				        onEvent = handleButtonEvent,
				        emboss = false,
				        -- Properties for a rounded rectangle button
				        shape = "roundedRect",
				        width = 100,
				        height = 40,
				        cornerRadius = 2,
				       
				        fillColor = { default={0,1,0,1}, over={0,1,0.7,0.4} },
				        strokeColor = { default={.4,1,0,1}, over={1,1,.8,.8} },
				        strokeWidth = 4
				    }
				)

				button1.x = display.contentCenterX + 100
				button1.y = 40
 		end

		onButtonEventH = function (event )
	        if event.phase == "began" then
	        	myButtonH:scale(1.2,1.2)
	        	audio.stop({channel= 12})
				audio.stop({channel= 14})
	        	audio.play(s5)
	        		
	        elseif	event.phase == "ended" then
	         	myButtonH:scale(.8334,.8334)
	         	flag=true
	         	timer.pause(tmr1)
	        	physics.pause()
	        	Runtime:removeEventListener("touch", runTouch)
	        	
	        	myButton:setEnabled( false )
				myButton1:setEnabled( false )
				myButtonH:setEnabled( false )
				hintButton()
	        end
    	end



    ---[[	
 
     myButtonH = widget.newButton{
    	defaultFile = "hint.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "hint",
         fontSize=10,
        left = w-165,
        top = 5,
      width =47, height = 47,
     	
      	onEvent = onButtonEventH
    }
	group:insert(myButtonH)
	--]]
	myButtonH:scale(.1,.1)
     transition.to(myButtonH,{time=300, xScale=1, yScale=1})
	

	 myButton:scale(.1,.1)
     transition.to(myButton,{time=300, xScale=1, yScale=1})
	 myButton1:scale(.1,.1)
     transition.to(myButton1,{time=300, xScale=1, yScale=1})



		
		--[[
		shade = display.newRoundedRect(w/2,h/2,w/2+92,h-50,25)
		shade:setFillColor(0,0,0)
	--	shade:setReferencePoint(display.TopLeftReferencePoint)
		--shade.alpha = .9
		group:insert(shade)

		myButton5 = widget.newButton{
    	defaultFile = "seehint.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "see hints?",
         fontSize=10,
        left = w/2-35,
        top = 120,
     	 width =w/4-20, height = h/8,
     	
      	--onEvent = onButtonEvent5
    }
	group:insert(myButton5)
	--]]
	--[[

	
	onButtonEventYES = function (event )
        if event.phase == "began" then
        	--myButton1:scale(1.2,1.2)
        	audio.play(s5)
         elseif	event.phase == "ended" then
         	hhints2 = display.newImageRect('hint1.png',w ,h)----------------------------
			hhints2.x = w - w/2
			hhints2.y = h - h/2
			hhints2:addEventListener('touch', removeHints)
			group:insert(hhints2)
         	
        	
        end
    end
		--]]
		--[[
		myButtonYES = widget.newButton{
    	defaultFile = "yes.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "yes",
         fontSize=10,
        left = w/2-50-15,
        top = 200,
      width =47, height = 47,
     	
      	onEvent = onButtonEventYES
      	
    }
	group:insert(myButtonYES)
	
		onButtonEventNO = function (event )
        if event.phase == "began" then
        	--myButton1:scale(1.2,1.2)
        	audio.play(s5)
         elseif	event.phase == "ended" then
         
         	timer.resume(tmr1)
         	physics.start(true)
         	Runtime:addEventListener("touch", runTouch)
         		
         	myButton5:removeSelf()
      		myButton5 = nil
      		
      		myButtonY:removeSelf()
      		myButtonY = nil
      		
      		myButton7:removeSelf()
      		myButton7 = nil
      		
      		shade:removeSelf()
      		shade = nil
      		
      		myButton:setEnabled( true )
			myButton1:setEnabled( true )
			--myButtonP:setEnabled( true )
			audio.play(songA, {channel = 12, loops =1})
			myButtonH:setEnabled( true )
         	
        	
        end
    end
		
		
		myButtonNO = widget.newButton{
    	defaultFile = "no.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "no",
         fontSize=10,
        left = w/2+25-15,
        top = 200,
      width =47, height = 47,
     	
      	onEvent = onButtonEventNO
      	
    }
	group:insert(myButtonNO)
	--]]
	
	------------------------------------------------------

	
	
	
	
end
	
	--menuTimer = timer.performWithDelay(10000,menuButtons,1)
	--menuButtons()
	function line:collision (event)
		
        if (event.other.name == 'ball') then  
        	if (z == 0) then
        		audio.play(wee)	
        	end
        	event.other:removeSelf()
          	event.other = nil 
          gameScore = gameScore-1
			scoreText.text = gameScore
			 
						if gameScore == 0 then
							local	poof = display.newImageRect('poof1.png', 80,90)
							poof.anchorX = 0
             				poof.anchorY = 1
							poof.x = cup.x-15
							poof.y = cup.y
							group:insert(poof)
							audio.play(win)
							scoreText.alpha=0
							timer.cancel(tmr1)
							timer.performWithDelay(500,transitionA,1)
							
							
						end	  
        end
      
	end		
		line:addEventListener("collision",line)	
function transitionA()
	if j < 25 then
				storyboard.star = 3
        		print ("3star")
        		myStars1:store('stars1',13)
        		myStars1:save()
    	elseif j < 75 then
    			storyboard.star = 2
        		print ("2star")
        		myStars1:store('stars1',12)
        		myStars1:save()
    	elseif j < 150 then
    			storyboard.star = 1
        		print ("1star")
        		myStars1:store('stars1',11)
        		myStars1:save()
    end
    print (stars)
    z=1
	
	storyboard.gotoScene('nextPepp',"flipFadeOutIn",500)
	
	print (j)
	storyboard.j = j
end




	function createBall()
		ranX = math.random( 85,95 )
		ball[j] = display.newImageRect("ball2.png", 15, 15)
		ball[j].x = ranX
		ball[j].y = 30
       -- ball[j] = display.newCircle( ranX, 40, 2 )
       -- ball[j]:setFillColor(0, 0, 255)
        ball[j].name = "ball"
        ball[j]:addEventListener("collision", ball[j])
        physics.addBody(ball[j],"dynamic", {bounce=.3, radius = 7.5,density = .3,  friction=1 })
        group:insert(ball[j])
        j = j + 1
       	
        
  
        
	end
function callTimer()
	tmr1 = timer.performWithDelay( 800, createBall, 1490 )
end	


  function runTouch(e)
	if e.phase == "began" then
    	prev_x = e.x
    	prev_y = e.y
 
  	elseif e.phase == "moved" then
   					lines[line_number] = display.newLine(prev_x, prev_y, e.x, e.y) 
    				lines[line_number].strokeWidth = line_width
    				dist_x = e.x - prev_x
    				dist_y = e.y - prev_y
            group:insert(lines[line_number])
   					physics.addBody(lines[line_number], "static", { density = 1, friction = 1, bounce = .1} )
            prev_x = e.x
    				prev_y = e.y
  				  line_number = line_number + 1
    end
		
	end
	Runtime:addEventListener("touch", runTouch)
	--]]
	

	lineLeft = display.newRect( -20,-1000, 5, h+1000)
	lineLeft.name = "lineLeft"
	lineLeft.anchorX = 0
 	lineLeft.anchorY = 0
	lineLeft:setFillColor(200,0,0)
	physics.addBody( lineLeft, "static", { isSensor = true } )
	group:insert(lineLeft)

	
	lineRight = display.newRect( w+20,-1000, 5, h+1000)
	lineRight.name = "lineRight"
	lineRight.anchorX = 0
 	lineRight.anchorY = 0
	lineRight:setFillColor(200,0,0)
	physics.addBody( lineRight, "static", { isSensor = true } )
	group:insert(lineRight)

		
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

	
local secsText = 3

local timeText = display.newText(secsText, w/2+15, 37, "marker felt", 20)
timeText:setTextColor(255,0,0)
group:insert(timeText)
 
 function updateTime(event)
secsText = secsText - 1
	if (secsText == 0) then
		print("stt")
		callTimer()
		
	
			text9:removeSelf()
			text9 = nil
			arrow2:removeSelf()
			arrow2 = nil
			menuButtons()
			
	
	
	
		timeText.alpha = 0
		
	end
 	timeText.text =secsText
end
 
timer.performWithDelay(1000, updateTime, 3)


		
end	
start()
	
	-----------------------------------------------------------------------------
		
	--	INSERT code here (e.g. start timers, load audio, start listeners, etc.)
	
	-----------------------------------------------------------------------------
	
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
	local group = self.view
	
	Runtime:removeEventListener("touch", runTouch)
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
