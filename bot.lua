local bot = {}

local onTouch

function bot.new(  x, y )
  group = group or display.currentStage

  local obj = display.newRect( x, y, 32, 32 )
  obj.touch = onTouch
  obj:addEventListener( "touch" )

  return obj
end

function onTouch( self, event )
   print("jjjjjjjjjj")
end

return bot