--TODO

--kurt
--ppal nicola
--redo mj question from review/ pollfish, applovin remove?/Call to action download/sponsor
-- iphone 6s
-- remove immersive sticky
-- Call to action. put in review button at 14 and 27
--dentist miami shores
--  google play store



display.setStatusBar( display.HiddenStatusBar ) 
native.setProperty( "androidSystemUiVisibility", "immersiveSticky" )
  w = display.contentWidth
 h = display.contentHeight
local storyboard = require 'storyboard'
--cupObject = require 'cup'

--------VUNGLE------------------

ads = require "ads"
ads.init("vungle", '630102331')




--local GGTwitter = require( "GGTwitter" )
require( "ice" )
myData = ice:loadBox('levele')
myStars1 = ice:loadBox('stars1')
myStars2 = ice:loadBox('stars2')
myStars3 = ice:loadBox('stars3')
myStars4 = ice:loadBox('stars4')
myStars5 = ice:loadBox('stars5')
myStars6 = ice:loadBox('stars6')
myStars7 = ice:loadBox('stars7')
myStars8 = ice:loadBox('stars8')
myStars9 = ice:loadBox('stars9')
myStars10 = ice:loadBox('stars10')
myStars11 = ice:loadBox('stars11')
myStars12 = ice:loadBox('stars12')
myStars13 = ice:loadBox('stars13')
myStars14 = ice:loadBox('stars14')
myStars15 = ice:loadBox('stars15')
myStars16 = ice:loadBox('stars16')
myStars17 = ice:loadBox('stars17')
myStars18 = ice:loadBox('stars18')
myStars19 = ice:loadBox('stars19')
myStars20 = ice:loadBox('stars20')
myStars21 = ice:loadBox('stars21')
myStars22 = ice:loadBox('stars22')
myStars23 = ice:loadBox('stars23')
myStars24 = ice:loadBox('stars24')
myStars25 = ice:loadBox('stars25')
myStars26 = ice:loadBox('stars26')
myStars27 = ice:loadBox('stars27')


storyboard.music = 1

--system.activate('multitouch')
--require ('revmob')

display.setDefault( "magTextureFilter", "nearest" )
display.setDefault( "minTextureFilter", "linear" )


myData:clear()
myData:save()




--]]
levels = myData:retrieve('levele') 
		print (levels)
	
if (levels == nil) then
	myData:store('levele',27)
    myData:save()
end	
--]]


		
songA = audio.loadStream('bunnyg.mp3')
song2 = audio.loadStream('bunnys.mp3')
song = audio.loadStream('birds.mp3')

s5 = audio.loadSound('click.mp3')	
s4 = audio.loadSound('s4.wav')	

wee = audio.loadSound('wee.wav')
--bust = audio.loadSound('bust.wav')
pig = audio.loadSound('pig.wav')
win = audio.loadSound('youwin.wav')
--fireworks = audio.loadSound('fireworks.wav')
cheers = audio.loadSound('cheers.mp3')


	


--storyboard.gotoScene('pepper26')
storyboard.gotoScene('start1')
--[[
local function garbagePrinting()
	collectgarbage("collect")
	local memUsage_str = string.format( "memUsage = %.3f KB", collectgarbage( "count" ) )
	print( memUsage_str )
	local texMemUsage_str = system.getInfo( "textureMemoryUsed" )
	texMemUsage_str = texMemUsage_str/(1024*1024)
	texMemUsage_str = string.format( "texMemUsage = %.3f MB", texMemUsage_str )
	print( texMemUsage_str )
end
Runtime:addEventListener( "enterFrame", garbagePrinting )
--]]

