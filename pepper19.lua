----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
local physics = require ("physics")
storyboard.level = 19
storyboard.loading = 1

physics.start(true)
physics.setGravity(0, 4)
--physics.setDrawMode('hybrid')

local circle
local bg
local gameScore
local scoreText
local cupText
local ball
local redBack
local bluBack
local floor1
local myButton
local myButton1
local myButton2
local myButton3
local onButtonEvent
local onButtonEvent1
local onButtonEvent2
local onButtonEvent3
local line
local tmr1
local cup
local cup2
local b = 0
local r = 0
local i = 1
local j = 0
local k = 0
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
	storyboard.removeScene('nextPepp')
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
	
	level = display.newText("Level 19",30,10,'marker felt', 20)
	group:insert(level)
	
	
	
	circle = display.newCircle(w/2, 40, 25)
	circle.name = 'circle'
	circle:setFillColor(0,0,0)
	--physics.addBody(circle, "static",{bounce = 0.1, friction = .7} )
	group:insert(circle)
	
	floor1 = display.newRect(w/2, h+5, w, 10)
	floor1.name = 'floor1'
	floor1:setFillColor(255,0,0)
	physics.addBody(floor1, "static",{bounce = 0.1, friction = .7} )
	group:insert(floor1)
	

	wood = display.newImageRect('wood.png', 80, 5)
	wood.anchorX = -1
  wood.anchorY = 1
	wood.x = 0
	wood.y = h/2 -153
	physics.addBody(wood, "static",{bounce = 0.1, friction = .7} )
	group:insert(wood)
	
	cupC = display.newImageRect('cupV.png', 70, 93)
	cupC.anchorX = -1
  cupC.anchorY = 1
	cupC:setFillColor(255,255,255)
	cupC.x = 10
	cupC.y = h/2-60
	group:insert(cupC)
	
	cupScoreC = 25
	cupTextC = display.newText(cupScoreC,0,0,"Arial", 15)
	cupTextC:setTextColor(0,0,0)
	cupTextC.x = 37
	cupTextC.y = h/2-128
	group:insert(cupTextC)

	lineT3 = display.newRect( 38,h/2-102, 39, 3)
	lineT3.name = "lineT3"
	--lineT3:setReferencePoint(display.BottomLeftReferencePoint)
	lineT3:setFillColor(200,0,0)
	physics.addBody( lineT3, "static", { isSensor = true } )
	group:insert(lineT3)
	lineT3.alpha = 0 --this is if you want the line to be invisble	
	
	lineL3 = display.newRect(20, h/2-130, 55, 2  )
	lineL3.rotation= 100
	lineL3:setFillColor(200,0,0) 
	physics.addBody( lineL3, "static" )
	group:insert(lineL3)
	lineL3.alpha = 0 --this is if you want the line to be invisble
	
	lineR3 = display.newRect( 64, h/2-130, 58, 2  )
	lineR3.rotation= 80
	lineR3:setFillColor(200,0,0) 
	physics.addBody( lineR3, "static" )
	group:insert(lineR3)
	lineR3.alpha = 0 --this is if you want the line to be invisble
	
	
	woodD = display.newImageRect('wood.png', 80, 5)
	woodD.anchorX = -1
  woodD.anchorY = 1
	woodD.x = w-80
	woodD.y = h/2 -73
	physics.addBody(woodD, "static",{bounce = 0.1, friction = .7} )
	group:insert(woodD)
	
	--gameScoreD = 25
	
	cupD = display.newImageRect('cupV.png', 70, 93)
	cupD.anchorX = -1
  cupD.anchorY = 1
	cupD:setFillColor(255,255,255)
	cupD.x = w-70
	cupD.y = h/2+20
	group:insert(cupD)
	
	cupScoreD = 25
	cupTextD = display.newText(cupScoreD,0,0,"Arial", 15)
	cupTextD:setTextColor(0,0,0)
	cupTextD.x = w-43
	cupTextD.y = h/2-48
	group:insert(cupTextD)

	lineTD = display.newRect( w-44,h/2-22, 39, 3)
	lineTD.name = "lineTD"
	
	lineTD:setFillColor(200,0,0)
	physics.addBody( lineTD, "static", { isSensor = true } )
	group:insert(lineTD)
	lineTD.alpha = 0 --this is if you want the line to be invisble	
	
	lineLD = display.newRect(w-65, h/2-50, 55, 2  )
	lineLD.rotation= 100
	lineLD:setFillColor(200,0,0) 
	physics.addBody( lineLD, "static" )
	group:insert(lineLD)
	lineLD.alpha = 0 --this is if you want the line to be invisble
	
	lineRD = display.newRect(w-50+34, h/2-50, 58, 2  )
	lineRD.rotation= 80
	lineRD:setFillColor(200,0,0) 
	physics.addBody( lineRD, "static" )
	group:insert(lineRD)
	lineRD.alpha = 0 --this is if you want the line to be invisble
	
	bluBack = display.newRect(5,h-180, 75, 7) 
	bluBack.name = "bluBack"
	bluBack.anchorX = -1
  bluBack.anchorY = -1
	bluBack:setFillColor(0, 200, 0) 
	physics.addBody( bluBack, "static", { isSensor = true } )
	group:insert(bluBack)
	--]]
	
	cupA = display.newImageRect('cup1.png', 70, 93)
	 cupA:setFillColor(0,200,0)
	cupA.anchorX = -1
  cupA.anchorY = 1
	cupA.x = 75
	cupA.y = h
	group:insert(cupA)
	
	gameScore = 25
	scoreText = display.newText(gameScore,0,0,"Arial", 15)
	scoreText:setTextColor(0,0,0)
	scoreText.x = 102
	scoreText.y = h-22
	group:insert(scoreText)
	
	lineT1 = display.newRect( 104,h-55, 39, 3)
	lineT1.name = "lineT1"
	lineT1:setFillColor(200,0,0)
	physics.addBody( lineT1, "static", { isSensor = true } )
	group:insert(lineT1)
	lineT1.alpha = 0 --this is if you want the line to be invisble
	
	lineL1 = display.newRect(78, h-20, 70, 1  )
	lineL1.name = "lineL1"
	lineL1.rotation= 80
	lineL1:setFillColor(200,0,0) 
	physics.addBody( lineL1, "static" )
	group:insert(lineL1)
	lineL1.alpha = 0 --this is if you want the line to be invisble
	
	lineR1 = display.newRect( 92+34, h-20, 70, 1  )
	lineR1.name = "lineR1"
	lineR1.rotation= -80
	lineR1:setFillColor(200,0,0) 
	physics.addBody( lineR1, "static" )
	group:insert(lineR1)
	lineR1.alpha = 0 --this is if you want the line to be invisble
	
	
	
	 
	cupB = display.newImageRect('cup1.png', 70, 93)
	cupB.anchorX = -1
  cupB.anchorY = 1
	cupB:setFillColor(0,200,0)
	cupB.x = w/2 +75
	cupB.y = h
	group:insert(cupB)
	
	cupScore = 25
	cupText = display.newText(cupScore,0,0,"Arial", 15)
	cupText:setTextColor(0,0,0)
	cupText.x = w/2 +102
	cupText.y = h-22
	group:insert(cupText)
	
	lineT2 = display.newRect( w/2+102,h-55, 39, 3)
	lineT2.name = "lineT2"
	lineT2:setFillColor(200,0,0) 
	physics.addBody( lineT2 , "static", { isSensor = true } )
	group:insert(lineT2 )
	lineT2.alpha = 0 --this is if you want the line to be invisble

	lineL2 = display.newRect( w/2+78, h-20, 70, 1 )
	lineL2.name = "line1"
	lineL2.rotation= 80
	lineL2:setFillColor(200,0,0) 
	physics.addBody( lineL2, "static" )
	group:insert(lineL2)
	lineL2.alpha = 0 --this is if you want the line to be invisble
	
	lineR2 = display.newRect( w/2+92+34, h-20, 70, 1 )
	lineR2.name = "linet"
	lineR2.rotation= -80
	lineR2:setFillColor(200,0,0) 
	physics.addBody( lineR2, "static" )
	group:insert(lineR2)
	lineR2.alpha = 0 --this is if you want the line to be invisble
	
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	local group = self.view
function start()
		if (storyboard.level >= levels) then
	 		myData:store('levele',19)
        	myData:save()
        	print(levels)
    	end
    	
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
	--[[
	onButtonEventP = function (event )
        if event.phase == "began" then
        	myButtonP:scale(1.2,1.2)
        	audio.play(s5)
        	
         elseif	event.phase == "ended" then
         	myButtonP:scale(.8334,.8334)
         	
         	if flag == true then
         		myButton:setEnabled( false )
				myButton1:setEnabled( false )
				myButtonH:setEnabled( false )
         		timer.pause(tmr1)
        		physics.pause()
        		flag=false
        		--audio.pause( {channel = 14})
        		audio.stop({channel= 12})
				audio.stop({channel= 14})
        	elseif flag==false then
        		timer.resume(tmr1)
         		physics.start(true)
         		flag=true
         		myButton:setEnabled( true )
				myButton1:setEnabled( true )
				myButtonH:setEnabled( true )
         		audio.play(songA, {channel = 12, loops =1})
         	end
        	
        end
    end
    	
 
     myButtonP = widget.newButton{
    	defaultFile = "pause.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
         --label = "pause",
         fontSize=10,
                 left = w-110,
        top = 60,

      width =47, height = 47,
     	
      	onEvent = onButtonEventP
    }
	group:insert(myButtonP)
	--]]
		function removeHints(event)
        if event.phase == "began" then
            
          elseif  event.phase == "ended" then
            timer.resume(tmr1)
            physics.start(true)
            Runtime:addEventListener("touch", runTouch)
            hhints2:removeSelf()
            hhints2 = nil
            myButton:setEnabled( true )
        myButton1:setEnabled( true )
        myButtonH:setEnabled( true )
        audio.play(songA, {channel = 12, loops =1})
          end
    end
     
    function hintButton1()
      hhints2 = display.newImageRect('hint19.png',w ,h)
      hhints2.x = w - w/2
      hhints2.y = h - h/2
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
      group:insert(hhints2)
    end

    onButtonEventH = function (event )
        if event.phase == "began" then
            myButtonH:scale(1.2,1.2)
            audio.stop({channel= 12})
            audio.stop({channel= 14})
            audio.play(s5)
              
        elseif  event.phase == "ended" then
            myButtonH:scale(.8334,.8334)
            flag=true
            timer.pause(tmr1)
            physics.pause()
            Runtime:removeEventListener("touch", runTouch)
            hintButton1()
            myButton:setEnabled( false )
            myButton1:setEnabled( false )
            myButtonH:setEnabled( false )
        end
    end
    	
 
     myButtonH = widget.newButton{
    	defaultFile = "hint.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "hint",
         fontSize=10,
        left = 70,
        top = 5,
      width =47, height = 47,
     	
      	onEvent = onButtonEventH
    }
	group:insert(myButtonH)
	
	myButtonH:scale(.1,.1)
     transition.to(myButtonH,{time=300, xScale=1, yScale=1})
	--[[
	myButtonP:scale(.1,.1)
     transition.to(myButtonP,{time=300, xScale=1, yScale=1})
     --]]
	 myButton:scale(.1,.1)
     transition.to(myButton,{time=300, xScale=1, yScale=1})
	 myButton1:scale(.1,.1)
     transition.to(myButton1,{time=300, xScale=1, yScale=1})
     
	onButtonEventU = function (event )
        if event.phase == "began" then
        	myButtonU:scale(1.2,1.2)
        	audio.play(s5)
        	
         elseif	event.phase == "ended" then
         	myButtonU:scale(.8334,.8334)
         	
         	if flag == true then

         		
        		physics.setGravity(0, -3)
        		flag=false
        		
        	elseif flag==false then
        		
         		physics.setGravity(0, 3)
         		flag=true
         		
         	end
        	
        end
    end
    	
 
     myButtonU = widget.newButton{
    	defaultFile = "gbutton.png",
    	--overFile = "down.png",
    	--defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
         --label = "gravity",
         fontSize=10,
        left = w-55,
        top = 60,
      width =47, height = 47,
     	
      	onEvent = onButtonEventU
    }
	group:insert(myButtonU)
	

	
	
      myButtonU:scale(.1,.1)
     transition.to(myButtonU,{time=300, xScale=1, yScale=1})
      
     
end


	
function hintButton()
		
		
    shade = display.newRoundedRect(w/2,h/2,w/2+92,h-50,25)
    shade:setFillColor(0,0,0)
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
	
	
		function hintpage()
			audio.play(s5)
         	hhints2 = display.newImageRect('hint19.png',w ,h)----------------------------
			hhints2.x = w - w/2
			hhints2.y = h - h/2
			hhints2:addEventListener('touch', removeHints)
			group:insert(hhints2)
end

function removeHints()
				timer.resume(tmr1)
         		physics.start(true)
         		Runtime:addEventListener("touch", runTouch)
         		
         	myButton5:removeSelf()
      		myButton5 = nil
      		
      		myButtonY:removeSelf()
      		myButtonY = nil
      		
      		myButton7:removeSelf()
      		myButton7 = nil
      		
      		
      		hhints2:removeSelf()
      		hhints2 = nil
      		
      		
      		if (restore2) then
      		restore2:removeSelf()
      		restore2 = nil
      		end
      		
      		shade:removeSelf()
      		shade = nil
      		
      		if (myButtonUnlock) then
      		myButtonUnlock:removeSelf()
      		myButtonUnlock = nil
      		end
      		
      	
      		
      		myButton:setEnabled( true )
			myButton1:setEnabled( true )
			myButtonH:setEnabled( true )
		--	myButtonP:setEnabled( true )
			audio.play(songA, {channel = 12, loops =1})
      		
      		
end

	onButtonEventY = function (event )
		
        if event.phase == "began" then
        	--myButton1:scale(1.2,1.2)
        	
      		iap2 = myIAP2:retrieve('iap21') 
    		 print(iap2)
    		 --[[
    		 iapText = display.newText(iap2,50,50,"Arial", 15)
    		 group:insert(iapText)
    		 --]]
        elseif	event.phase == "ended" then
        myButtonY:setEnabled( false )
        
        	if (iap2 == 4) then
         	hintpage()
         	
		 	else
		 	
			 unlockH()--]]
	
		 end	
         	
        	
        end
    end
		
		
		myButtonY = widget.newButton{
    	defaultFile = "yes.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "yes",
         fontSize=10,
        left = w/2-50-15,
        top = 200,
      width =47, height = 47,
     	
      	onEvent = onButtonEventY
      	
    }
	group:insert(myButtonY)
	
	--------------USER PRESSES NO -------------
		onButtonEvent7 = function (event )
        if event.phase == "began" then
        	--myButton1:scale(1.2,1.2)
        	audio.play(s5)
         elseif	event.phase == "ended" then
         
         	timer.resume(tmr1)
         	physics.start(true)
         	Runtime:addEventListener("touch", runTouch)
         		
         	myButton5:removeSelf()
      		myButton5 = nil
      		
      		if (myButtonY) then
      		myButtonY:removeSelf()
      		myButtonY = nil
      		end
      		
      		myButton7:removeSelf()
      		myButton7 = nil
      		
      		if (myButtonUnlock) then
      		myButtonUnlock:removeSelf()
      		myButtonUnlock = nil
      		end
      		
      		if (restore2) then
      		restore2:removeSelf()
      		restore2 = nil
      		end
      		
      		shade:removeSelf()
      		shade = nil
      		
      		myButton:setEnabled( true )
			myButton1:setEnabled( true )
			myButtonH:setEnabled( true )
			--myButtonP:setEnabled( true )
			audio.play(songA, {channel = 12, loops =1})
         	
        	
        end
    end
		
		
		myButton7 = widget.newButton{
    	defaultFile = "no.png",
    	defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        id = "btn001",
        -- label = "no",
         fontSize=10,
        left = w/2+25-15,
        top = 200,
      width =47, height = 47,
     	
      	onEvent = onButtonEvent7
      	
    }
	group:insert(myButton7)
	------------------------------------------------------	
	
	 function unlockH()

	onButtonEventUnlock = function (event )
        if event.phase == "began" then
        		
        		audio.play(s5)
        		
         elseif	event.phase == "ended" then
          		--hintpage()
         		iap.buyItem2(callbackFunction)
         	 	
       
        end
    end
	
	
	myButtonUnlock = widget.newButton{
    		defaultFile = "unlockhints.png",
    		defaultColor = { default={ 255, 0, 0 }, over={  0, 0, 255} },
        	id = "btn001",
       		 -- label = "no",
         	fontSize=10,
        	left = w/2-50,
        	top = 270,
      		width =100, height = 100,
     	
      		onEvent = onButtonEventUnlock
      		--onEvent = onButtonEventUnlock
      	
    }
	group:insert(myButtonUnlock)
	

 
	end

	end

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
        
           		 
        	end
      
		end		
		lineRight:addEventListener("collision",lineRight)	
function lineT1:collision (event)
		if (event.other.name == 'ball') then
           event.other:removeSelf()
           event.other = nil
            audio.play(pig)
       
        elseif (event.other.name == 'ball1') then  
        	event.other:removeSelf()
          	event.other = nil 
            gameScore = gameScore-1
			scoreText.text = gameScore
			 audio.play(wee)
				if gameScore == 0 then
					local	poof = display.newImageRect('poof1.png', 80,90)
							poof.anchorX = 0
                    poof.anchorY = 1
							poof.x = cupA.x-15
							poof.y = cupA.y
							group:insert(poof)
							audio.play(win)
					b= b+1
					scoreText.alpha=0
						if b ==4 then
							timer.cancel(tmr1)
							timer.performWithDelay(500,transitionA,1)
						end
				end    
        end
      
	end		
		lineT1:addEventListener("collision",lineT1)
		
function lineT2:collision (event)
		if (event.other.name == 'ball') then
           event.other:removeSelf()
           event.other = nil
            audio.play(pig)
    
        elseif (event.other.name == 'ball1') then  
        	event.other:removeSelf()
          	event.other = nil 
            cupScore = cupScore-1
			cupText.text = cupScore
			 audio.play(wee)
						if cupScore == 0 then
							local	poof = display.newImageRect('poof1.png', 80,90)
							poof.anchorX = 0
                    poof.anchorY = 1
							poof.x = cupB.x-15
							poof.y = cupB.y
							group:insert(poof)
							audio.play(win)
							b= b+1
							cupText.alpha=0
							if b==4 then
								timer.cancel(tmr1)
								timer.performWithDelay(500,transitionA,1)
							end
							
						end	  
        end
      
	end		
		lineT2:addEventListener("collision",lineT2)	
		
	function lineT3:collision (event)
		if (event.other.name == 'ball1') then
           event.other:removeSelf()
           event.other = nil
            audio.play(pig)
     
        elseif (event.other.name == 'ball') then  
        	event.other:removeSelf()
          	event.other = nil 
           cupScoreC = cupScoreC-1
			cupTextC.text = cupScoreC
			 audio.play(wee)
						if cupScoreC == 0 then
							local	poof = display.newImageRect('poof1.png', 80,90)
							poof.anchorX = 0
                    poof.anchorY = 1
							poof.x = cupC.x-15
							poof.y = cupC.y
							group:insert(poof)
							audio.play(win)
							b= b+1
							cupTextC.alpha=0
							if b==4 then
								timer.cancel(tmr1)
								timer.performWithDelay(500,transitionA,1)
							end
							
						end	  
        end
      
	end		
		lineT3:addEventListener("collision",lineT3)		
		
			function lineTD:collision (event)
			if (event.other.name == 'ball1') then
           		event.other:removeSelf()
           		event.other = nil
           		 audio.play(pig)
        
        	elseif (event.other.name == 'ball') then  
        		event.other:removeSelf()
          		event.other = nil 
           		cupScoreD = cupScoreD-1
				cupTextD.text = cupScoreD
				 audio.play(wee)
					if cupScoreD == 0 then
						local	poof = display.newImageRect('poof1.png', 80,90)
							poof.anchorX = 0
                    poof.anchorY = 1
							poof.x = cupD.x-15
							poof.y = cupD.y
							group:insert(poof)
							audio.play(win)
						b= b+1
						cupTextD.alpha=0
							if b==4 then
								timer.cancel(tmr1)
								timer.performWithDelay(500,transitionA,1)
							end
					end	 
        	end
      
		end		
		lineTD:addEventListener("collision",lineTD)					




function transitionA()
	if j < 220 then
				storyboard.star = 3
        		print ("3star")
        		myStars19:store('stars19',13)
        		myStars19:save()
    	elseif j < 260 then
    			storyboard.star = 2
        		print ("2star")
        		myStars19:store('stars19',12)
        		myStars19:save()
    	elseif j < 300 then
    			storyboard.star = 1
        		print ("1star")
        		myStars19:store('stars19',11)
        		myStars19:save()
    end
    z=1
	storyboard.gotoScene('nextPepp',"flipFadeOutIn",500)
	
	print (j)
	storyboard.j = j
end

function bluBack:collision (event)
		if (event.other.name == 'ball') then
           event.other:setFillColor(0,200,0)
           event.other.name = 'ball1'
           print("hi")
			
		end
	end		
		bluBack:addEventListener("collision", bluBack)


	function createBall()
		ranX = math.random( w/2-5, w/2+5 )
		ball[j] = display.newImageRect("ballW.png", 15, 15)
		ball[j].x = ranX
		ball[j].y = 40
      --  ball[j] = display.newCircle( ranX, 40, 2 )
       -- ball[j]:setFillColor(255,255,255)
        ball[j].name = "ball"
        ball[j]:addEventListener("collision", ball[j])
        physics.addBody(ball[j],"dynamic", {bounce=.6, radius = 7.5,density = .3,  friction=1 })
        group:insert(ball[j])
        j = j + 1
        if (j==119) then
        	system.vibrate()
        end	
	end
function callTimer()
	tmr1 = timer.performWithDelay( 400, createBall, 2222 )
	end

-- Draw a line


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
	
	local secsText = 3

local timeText = display.newText(secsText,  w/2 + 35, 29, "marker felt", 20)
timeText:setTextColor(255,0,0)
group:insert(timeText)
 
 function updateTime(event)
secsText = secsText - 1
	if (secsText == 0) then
		
		callTimer()
		timeText.alpha = 0
		menuButtons()
		
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