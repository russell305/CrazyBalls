----------------------------------------------------------------------------------
--
-- scenetemplate.lua
--
----------------------------------------------------------------------------------
display.setStatusBar( display.HiddenStatusBar ) 
native.setProperty( "androidSystemUiVisibility", "immersiveSticky" )
local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
local widget = require "widget"
p=0
local h = display.contentHeight
local w = display.contentWidth
local shade
local balls
local ball
local ballz
local myBalls1
local myBalls2
local myBalls3
local StarInactive1
local StarInactive2
local StarInactive3
local starActive1
local starActive2
local starActive3
local stars3
local stars2
local stars1
local tmrStarA
local tmrStarB
local tmrStarC
local trans1
local trans2
local trans3
local myButton
local myButton1
local myButton2
local onButtonEvent
local onButtonEvent1
local onButtonEvent2
local playbutton
local ballswest
local ballsnorth
local ballseast
local star1
local star2
local star3
local text2
local textwin3
local starman
local starActive1b
local starActive2b
local starActive3b
local googleAppID =1
----------------------------------------------------------------------------------
-- TRY PUTTING FUNCTIONS HERE THAN CALLING THEM BELOW!!
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
		audio.stop({channel= 12})
		audio.stop({channel= 14})
		audio.stop({channel= 2})
		


	-----------------------------------------------------------------------------
		
	--	CREATE display objects and add them to 'group' here.
	--	Example use-case: Restore 'group' from previously saved state.
	
	-----------------------------------------------------------------------------
	
	function ballswest()
		function ball1Destroy()
		
			ball1a:removeSelf()
			ball1a=nil
			ball1b:removeSelf()
			ball1b=nil
			ball1c:removeSelf()
			ball1c=nil
			ball1d:removeSelf()
			ball1d=nil
			ball1e:removeSelf()
			ball1e=nil
			ball1f:removeSelf()
			ball1f=nil
			ball1g:removeSelf()
			ball1g=nil
			ball1h:removeSelf()
			ball1h=nil
			ball1i:removeSelf()
			ball1i=nil
			ball1j:removeSelf()
			ball1j=nil
			ball1k:removeSelf()
			ball1k=nil
			ball1l:removeSelf()
			ball1l=nil
			ball1m:removeSelf()
			ball1m=nil
			ball1n:removeSelf()
			ball1n=nil
			ball1o:removeSelf()
			ball1o=nil
			ball1p:removeSelf()
			ball1p=nil
			ball1q:removeSelf()
			ball1q=nil
			ball1r:removeSelf()
			ball1r=nil
			ball1s:removeSelf()
			ball1s=nil
			ball1t:removeSelf()
			ball1t=nil
			ball1u:removeSelf()
			ball1u=nil
			ball1v:removeSelf()
			ball1v=nil
			
			ball1aa:removeSelf()
			ball1aa=nil
			ball1bb:removeSelf()
			ball1bb=nil
			ball1cc:removeSelf()
			ball1cc=nil
			ball1dd:removeSelf()
			ball1dd=nil
			ball1ee:removeSelf()
			ball1ee=nil
			ball1ff:removeSelf()
			ball1ff=nil
			ball1gg:removeSelf()
			ball1gg=nil
			ball1hh:removeSelf()
			ball1hh=nil
			ball1ii:removeSelf()
			ball1ii=nil
			ball1jj:removeSelf()
			ball1jj=nil
			ball1kk:removeSelf()
			ball1kk=nil
			ball1ll:removeSelf()
			ball1ll=nil
			ball1mm:removeSelf()
			ball1mm=nil
			ball1nn:removeSelf()
			ball1nn=nil
			ball1oo:removeSelf()
			ball1oo=nil
			ball1pp:removeSelf()
			ball1pp=nil
			ball1qq:removeSelf()
			ball1qq=nil
			ball1rr:removeSelf()
			ball1rr=nil
			ball1ss:removeSelf()
			ball1ss=nil
			ball1tt:removeSelf()
			ball1tt=nil
			ball1uu:removeSelf()
			ball1uu=nil
			ball1vv:removeSelf()
			ball1vv=nil
		end
			
				ball1a= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball1a)
				ball1a.x = starActive1.x +30
				ball1a.y = starActive1.y 
				transition.to( ball1a, { time=700,  x=ball1a.x-22, y=ball1a.y+100, alpha = 0} )
				
			ball1b= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1b)
			ball1b.x = starActive1.x +30
			ball1b.y =  starActive1.y 
			transition.to( ball1b, { time=700,  x=ball1b.x-30, y=ball1b.y+80, alpha = 0} )
			
			ball1c= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1c)
			ball1c.x = starActive1.x+30
			ball1c.y =  starActive1.y
			transition.to( ball1c, { time=700,  x=ball1c.x-50, y=ball1c.y-100, alpha = 0} )
			
			ball1d= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1d)
			ball1d.x = starActive1.x +30
			ball1d.y = starActive1.y
			transition.to( ball1d, { time=700,  x=ball1d.x-60, y=ball1d.y+55, alpha = 0} )
			
			ball1e= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1e)
			ball1e.x = starActive1.x+30
			ball1e.y = starActive1.y
			transition.to( ball1e, { time=700,  x=ball1e.x-80, y=ball1e.y-70, alpha = 0} )
			
			ball1f= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1f)
			ball1f.x = starActive1.x +30
			ball1f.y = starActive1.y
			transition.to( ball1f, { time=700,  x=ball1f.x-90, y=ball1f.y+70, alpha = 0} )
			
			ball1g= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1g)
			ball1g.x = starActive1.x+30
			ball1g.y = starActive1.y 
			transition.to( ball1g, { time=700,  x=ball1g.x-34, y=ball1g.y+100, alpha = 0} )
			
			ball1h= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1h)
			ball1h.x = starActive1.x+30
			ball1h.y = starActive1.y 
			transition.to( ball1h, { time=700,  x=ball1h.x-103, y=ball1h.y+45, alpha = 0} )
			
			ball1i= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1i)
			ball1i.x = starActive1.x+30
			ball1i.y = starActive1.y 
			transition.to( ball1i, { time=700,  x=ball1i.x-103, y=ball1i.y-45, alpha = 0} )
			
			ball1j= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1j)
			ball1j.x = starActive1.x+30
			ball1j.y = starActive1.y 
			transition.to( ball1j, { time=700,  x=ball1j.x-34, y=ball1j.y-100, alpha = 0} )
			
			ball1k= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1k)
			ball1k.x = starActive1.x+30
			ball1k.y = starActive1.y 
			transition.to( ball1k, { time=700,  x=ball1k.x-103, y=ball1k.y-22, alpha = 0} )
			
			ball1l= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1l)
			ball1l.x = starActive1.x+30
			ball1l.y = starActive1.y 
			transition.to( ball1l, { time=1000,  x=ball1l.x-95, y=ball1l.y-13, alpha = 0} )
			
			ball1m= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1m)
			ball1m.x = starActive1.x+30
			ball1m.y = starActive1.y 
			transition.to( ball1m, { time=1000,  x=ball1m.x-70, y=ball1m.y-110, alpha = 0} )
			
			ball1n= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1n)
			ball1n.x = starActive1.x+30
			ball1n.y = starActive1.y 
			transition.to( ball1n, { time=1000,  x=ball1n.x-95, y=ball1n.y-50, alpha = 0} )
			
			ball1o= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1o)
			ball1o.x = starActive1.x+30
			ball1o.y = starActive1.y 
			transition.to( ball1o, { time=1000,  x=ball1o.x-103, y=ball1o.y+45, alpha = 0} )
			
			ball1p= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1p)
			ball1p.x = starActive1.x+30
			ball1p.y = starActive1.y 
			transition.to( ball1p, { time=1000,  x=ball1p.x-86, y=ball1p.y+13, alpha = 0} )
			
			ball1q= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1q)
			ball1q.x = starActive1.x +30
			ball1q.y = starActive1.y
			transition.to( ball1q, { time=1000,  x=ball1q.x-85, y=ball1q.y+63, alpha = 0} )
			
			ball1r= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1r)
			ball1r.x = starActive1.x+30
			ball1r.y = starActive1.y
			transition.to( ball1r, { time=1000,  x=ball1r.x-77, y=ball1r.y-77, alpha = 0} )
			
			ball1s= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball1s)
				ball1s.x = starActive1.x +30
				ball1s.y = starActive1.y 
				transition.to( ball1s, { time=1000,  x=ball1s.x-27, y=ball1s.y+92, alpha = 0} )
		
			ball1t= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1t)
			ball1t.x = starActive1.x +30
			ball1t.y =  starActive1.y 
			transition.to( ball1t, { time=1000,  x=ball1t.x-33, y=ball1t.y+72, alpha = 0} )
			
			ball1u= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1u)
			ball1u.x = starActive1.x+30
			ball1u.y =  starActive1.y
			transition.to( ball1u, { time=1000,  x=ball1u.x-56, y=ball1u.y-111, alpha = 0} )
			
			ball1v= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1v)
			ball1v.x = starActive1.x +30
			ball1v.y = starActive1.y
			transition.to( ball1v, { time=1000,  x=ball1v.x-52, y=ball1v.y+57, alpha = 0, onComplete = ball1Destroy} )
			---------------------
			ball1aa= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball1aa)
				ball1aa.x = starActive1.x +30
				ball1aa.y = starActive1.y 
				transition.to( ball1aa, { time=800,  x=ball1aa.x+42, y=ball1aa.y+100, alpha = 0} )
				
			ball1bb= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1bb)
			ball1bb.x = starActive1.x +30
			ball1bb.y =  starActive1.y 
			transition.to( ball1bb, { time=800,  x=ball1bb.x+55, y=ball1bb.y+80, alpha = 0} )
			
			ball1cc= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1cc)
			ball1cc.x = starActive1.x+30
			ball1cc.y =  starActive1.y
			transition.to( ball1cc, { time=800,  x=ball1cc.x+50, y=ball1cc.y-100, alpha = 0} )
			
			ball1dd= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1dd)
			ball1dd.x = starActive1.x +30
			ball1dd.y = starActive1.y
			transition.to( ball1dd, { time=800,  x=ball1dd.x+60, y=ball1dd.y+55, alpha = 0} )
			
			ball1ee= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1ee)
			ball1ee.x = starActive1.x+30
			ball1ee.y = starActive1.y
			transition.to( ball1ee, { time=800,  x=ball1ee.x+80, y=ball1ee.y-70, alpha = 0} )
			
			ball1ff= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1ff)
			ball1ff.x = starActive1.x +30
			ball1ff.y = starActive1.y
			transition.to( ball1ff, { time=800,  x=ball1ff.x+90, y=ball1ff.y+70, alpha = 0} )
			
			ball1gg= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1gg)
			ball1gg.x = starActive1.x+30
			ball1gg.y = starActive1.y 
			transition.to( ball1gg, { time=800,  x=ball1gg.x+60, y=ball1gg.y+100, alpha = 0} )
			
			ball1hh= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1hh)
			ball1hh.x = starActive1.x+30
			ball1hh.y = starActive1.y 
			transition.to( ball1hh, { time=850,  x=ball1hh.x+103, y=ball1hh.y+45, alpha = 0} )
			
			ball1ii= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1ii)
			ball1ii.x = starActive1.x+30
			ball1ii.y = starActive1.y 
			transition.to( ball1ii, { time=850,  x=ball1ii.x+103, y=ball1ii.y-45, alpha = 0} )
			
			ball1jj= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1jj)
			ball1jj.x = starActive1.x+30
			ball1jj.y = starActive1.y 
			transition.to( ball1jj, { time=850,  x=ball1jj.x+66, y=ball1jj.y-100, alpha = 0} )
			
			ball1kk= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1kk)
			ball1kk.x = starActive1.x+30
			ball1kk.y = starActive1.y 
			transition.to( ball1kk, { time=860,  x=ball1kk.x+103, y=ball1kk.y-12, alpha = 0} )
			
			ball1ll= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1ll)
			ball1ll.x = starActive1.x+30
			ball1ll.y = starActive1.y 
			transition.to( ball1ll, { time=960,  x=ball1ll.x+95, y=ball1ll.y-13, alpha = 0} )
			
			ball1mm= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1mm)
			ball1mm.x = starActive1.x+30
			ball1mm.y = starActive1.y 
			transition.to( ball1mm, { time=960,  x=ball1mm.x+70, y=ball1mm.y-110, alpha = 0} )
			
			ball1nn= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1nn)
			ball1nn.x = starActive1.x+30
			ball1nn.y = starActive1.y 
			transition.to( ball1nn, { time=960,  x=ball1nn.x+95, y=ball1nn.y-50, alpha = 0} )
			
			ball1oo= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1oo)
			ball1oo.x = starActive1.x+30
			ball1oo.y = starActive1.y 
			transition.to( ball1oo, { time=960,  x=ball1oo.x+103, y=ball1oo.y+45, alpha = 0} )
			
			ball1pp= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1pp)
			ball1pp.x = starActive1.x+30
			ball1pp.y = starActive1.y 
			transition.to( ball1pp, { time=960,  x=ball1pp.x+86, y=ball1pp.y+13, alpha = 0} )
			
			ball1qq= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1qq)
			ball1qq.x = starActive1.x +30
			ball1qq.y = starActive1.y
			transition.to( ball1qq, { time=1060,  x=ball1qq.x+85, y=ball1qq.y+63, alpha = 0} )
			
			ball1rr= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1rr)
			ball1rr.x = starActive1.x+30
			ball1rr.y = starActive1.y
			transition.to( ball1rr, { time=960,  x=ball1rr.x+77, y=ball1rr.y-77, alpha = 0} )
			
			ball1ss= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball1ss)
				ball1ss.x = starActive1.x +30
				ball1ss.y = starActive1.y 
				transition.to( ball1ss, { time=1060,  x=ball1ss.x+47, y=ball1ss.y+92, alpha = 0} )
		
			ball1tt= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1tt)
			ball1tt.x = starActive1.x +30
			ball1tt.y =  starActive1.y 
			transition.to( ball1tt, { time=930,  x=ball1tt.x+53, y=ball1tt.y+72, alpha = 0} )
			
			ball1uu= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball1uu)
			ball1uu.x = starActive1.x+30
			ball1uu.y =  starActive1.y
			transition.to( ball1uu, { time=980,  x=ball1uu.x+56, y=ball1uu.y-111, alpha = 0} )
			
			ball1vv= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball1vv)
			ball1vv.x = starActive1.x +30
			ball1vv.y = starActive1.y
			transition.to( ball1vv, {time=970,  x=ball1vv.x+52, y=ball1vv.y+57, alpha = 0} )
			--]]
			end
			
			function ballsnorth()
		function ball2Destroy()
		
			ball2a:removeSelf()
			ball2a=nil
			ball2b:removeSelf()
			ball2b=nil
			ball2c:removeSelf()
			ball2c=nil
			ball2d:removeSelf()
			ball2d=nil
			ball2e:removeSelf()
			ball2e=nil
			ball2f:removeSelf()
			ball2f=nil
			ball2g:removeSelf()
			ball2g=nil
			ball2h:removeSelf()
			ball2h=nil
			ball2i:removeSelf()
			ball2i=nil
			ball2j:removeSelf()
			ball2j=nil
			ball2k:removeSelf()
			ball2k=nil
			ball2l:removeSelf()
			ball2l=nil
			ball2m:removeSelf()
			ball2m=nil
			ball2n:removeSelf()
			ball2n=nil
			ball2o:removeSelf()
			ball2o=nil
			ball2p:removeSelf()
			ball2p=nil
			ball2q:removeSelf()
			ball2q=nil
			ball2r:removeSelf()
			ball2r=nil
			ball2s:removeSelf()
			ball2s=nil
			ball2t:removeSelf()
			ball2t=nil
			ball2u:removeSelf()
			ball2u=nil
			ball2v:removeSelf()
			ball2v=nil
			
			ball2aa:removeSelf()
			ball2aa=nil
			ball2bb:removeSelf()
			ball2bb=nil
			ball2cc:removeSelf()
			ball2cc=nil
			ball2dd:removeSelf()
			ball2dd=nil
			ball2ee:removeSelf()
			ball2ee=nil
			ball2ff:removeSelf()
			ball2ff=nil
			ball2gg:removeSelf()
			ball2gg=nil
			ball2hh:removeSelf()
			ball2hh=nil
			ball2ii:removeSelf()
			ball2ii=nil
			ball2jj:removeSelf()
			ball2jj=nil
			ball2kk:removeSelf()
			ball2kk=nil
			ball2ll:removeSelf()
			ball2ll=nil
			ball2mm:removeSelf()
			ball2mm=nil
			ball2nn:removeSelf()
			ball2nn=nil
			ball2oo:removeSelf()
			ball2oo=nil
			ball2pp:removeSelf()
			ball2pp=nil
			ball2qq:removeSelf()
			ball2qq=nil
			ball2rr:removeSelf()
			ball2rr=nil
			ball2ss:removeSelf()
			ball2ss=nil
			ball2tt:removeSelf()
			ball2tt=nil
			ball2uu:removeSelf()
			ball2uu=nil
			ball2vv:removeSelf()
			ball2vv=nil
		end
			
				ball2a= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball2a)
				ball2a.x = starActive2.x +30
				ball2a.y = starActive2.y 
				transition.to( ball2a, { time=700,  x=ball2a.x-22, y=ball2a.y+100, alpha = 0} )
				
			ball2b= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2b)
			ball2b.x = starActive2.x +30
			ball2b.y =  starActive2.y 
			transition.to( ball2b, { time=700,  x=ball2b.x-30, y=ball2b.y+80, alpha = 0} )
			
			ball2c= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2c)
			ball2c.x = starActive2.x+30
			ball2c.y =  starActive2.y
			transition.to( ball2c, { time=700,  x=ball2c.x-50, y=ball2c.y-100, alpha = 0} )
			
			ball2d= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2d)
			ball2d.x = starActive2.x +30
			ball2d.y = starActive2.y
			transition.to( ball2d, { time=700,  x=ball2d.x-60, y=ball2d.y+55, alpha = 0} )
			
			ball2e= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2e)
			ball2e.x = starActive2.x+30
			ball2e.y = starActive2.y
			transition.to( ball2e, { time=700,  x=ball2e.x-80, y=ball2e.y-70, alpha = 0} )
			
			ball2f= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2f)
			ball2f.x = starActive2.x +30
			ball2f.y = starActive2.y
			transition.to( ball2f, { time=700,  x=ball2f.x-90, y=ball2f.y+70, alpha = 0} )
			
			ball2g= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2g)
			ball2g.x = starActive2.x+30
			ball2g.y = starActive2.y 
			transition.to( ball2g, { time=700,  x=ball2g.x-34, y=ball2g.y+100, alpha = 0} )
			
			ball2h= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2h)
			ball2h.x = starActive2.x+30
			ball2h.y = starActive2.y 
			transition.to( ball2h, { time=700,  x=ball2h.x-103, y=ball2h.y+45, alpha = 0} )
			
			ball2i= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2i)
			ball2i.x = starActive2.x+30
			ball2i.y = starActive2.y 
			transition.to( ball2i, { time=700,  x=ball2i.x-103, y=ball2i.y-45, alpha = 0} )
			
			ball2j= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2j)
			ball2j.x = starActive2.x+30
			ball2j.y = starActive2.y 
			transition.to( ball2j, { time=700,  x=ball2j.x-34, y=ball2j.y-100, alpha = 0} )
			
			ball2k= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2k)
			ball2k.x = starActive2.x+30
			ball2k.y = starActive2.y 
			transition.to( ball2k, { time=700,  x=ball2k.x-103, y=ball2k.y-22, alpha = 0} )
			
			ball2l= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2l)
			ball2l.x = starActive2.x+30
			ball2l.y = starActive2.y 
			transition.to( ball2l, { time=1000,  x=ball2l.x-95, y=ball2l.y-13, alpha = 0} )
			
			ball2m= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2m)
			ball2m.x = starActive2.x+30
			ball2m.y = starActive2.y 
			transition.to( ball2m, { time=1000,  x=ball2m.x-70, y=ball2m.y-110, alpha = 0} )
			
			ball2n= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2n)
			ball2n.x = starActive2.x+30
			ball2n.y = starActive2.y 
			transition.to( ball2n, { time=1000,  x=ball2n.x-95, y=ball2n.y-50, alpha = 0} )
			
			ball2o= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2o)
			ball2o.x = starActive2.x+30
			ball2o.y = starActive2.y 
			transition.to( ball2o, { time=1000,  x=ball2o.x-103, y=ball2o.y+45, alpha = 0} )
			
			ball2p= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2p)
			ball2p.x = starActive2.x+30
			ball2p.y = starActive2.y 
			transition.to( ball2p, { time=1000,  x=ball2p.x-86, y=ball2p.y+13, alpha = 0} )
			
			ball2q= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2q)
			ball2q.x = starActive2.x +30
			ball2q.y = starActive2.y
			transition.to( ball2q, { time=1000,  x=ball2q.x-85, y=ball2q.y+63, alpha = 0} )
			
			ball2r= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2r)
			ball2r.x = starActive2.x+30
			ball2r.y = starActive2.y
			transition.to( ball2r, { time=1000,  x=ball2r.x-77, y=ball2r.y-77, alpha = 0} )
			
			ball2s= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball2s)
				ball2s.x = starActive2.x +30
				ball2s.y = starActive2.y 
				transition.to( ball2s, { time=1000,  x=ball2s.x-27, y=ball2s.y+92, alpha = 0} )
		
			ball2t= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2t)
			ball2t.x = starActive2.x +30
			ball2t.y =  starActive2.y 
			transition.to( ball2t, { time=1000,  x=ball2t.x-33, y=ball2t.y+72, alpha = 0} )
			
			ball2u= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2u)
			ball2u.x = starActive2.x+30
			ball2u.y =  starActive2.y
			transition.to( ball2u, { time=1000,  x=ball2u.x-56, y=ball2u.y-111, alpha = 0} )
			
			ball2v= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2v)
			ball2v.x = starActive2.x +30
			ball2v.y = starActive2.y
			transition.to( ball2v, { time=1000,  x=ball2v.x-52, y=ball2v.y+57, alpha = 0, onComplete = ball2Destroy} )
			---------------------
			ball2aa= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball2aa)
				ball2aa.x = starActive2.x +30
				ball2aa.y = starActive2.y 
				transition.to( ball2aa, { time=800,  x=ball2aa.x+42, y=ball2aa.y+100, alpha = 0} )
				
			ball2bb= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2bb)
			ball2bb.x = starActive2.x +30
			ball2bb.y =  starActive2.y 
			transition.to( ball2bb, { time=800,  x=ball2bb.x+55, y=ball2bb.y+80, alpha = 0} )
			
			ball2cc= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2cc)
			ball2cc.x = starActive2.x+30
			ball2cc.y =  starActive2.y
			transition.to( ball2cc, { time=800,  x=ball2cc.x+50, y=ball2cc.y-100, alpha = 0} )
			
			ball2dd= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2dd)
			ball2dd.x = starActive2.x +30
			ball2dd.y = starActive2.y
			transition.to( ball2dd, { time=800,  x=ball2dd.x+60, y=ball2dd.y+55, alpha = 0} )
			
			ball2ee= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2ee)
			ball2ee.x = starActive2.x+30
			ball2ee.y = starActive2.y
			transition.to( ball2ee, { time=800,  x=ball2ee.x+80, y=ball2ee.y-70, alpha = 0} )
			
			ball2ff= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2ff)
			ball2ff.x = starActive2.x +30
			ball2ff.y = starActive2.y
			transition.to( ball2ff, { time=800,  x=ball2ff.x+90, y=ball2ff.y+70, alpha = 0} )
			
			ball2gg= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2gg)
			ball2gg.x = starActive2.x+30
			ball2gg.y = starActive2.y 
			transition.to( ball2gg, { time=800,  x=ball2gg.x+60, y=ball2gg.y+100, alpha = 0} )
			
			ball2hh= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2hh)
			ball2hh.x = starActive2.x+30
			ball2hh.y = starActive2.y 
			transition.to( ball2hh, { time=850,  x=ball2hh.x+103, y=ball2hh.y+45, alpha = 0} )
			
			ball2ii= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2ii)
			ball2ii.x = starActive2.x+30
			ball2ii.y = starActive2.y 
			transition.to( ball2ii, { time=850,  x=ball2ii.x+103, y=ball2ii.y-45, alpha = 0} )
			
			ball2jj= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2jj)
			ball2jj.x = starActive2.x+30
			ball2jj.y = starActive2.y 
			transition.to( ball2jj, { time=850,  x=ball2jj.x+66, y=ball2jj.y-100, alpha = 0} )
			
			ball2kk= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2kk)
			ball2kk.x = starActive2.x+30
			ball2kk.y = starActive2.y 
			transition.to( ball2kk, { time=860,  x=ball2kk.x+103, y=ball2kk.y-12, alpha = 0} )
			
			ball2ll= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2ll)
			ball2ll.x = starActive2.x+30
			ball2ll.y = starActive2.y 
			transition.to( ball2ll, { time=960,  x=ball2ll.x+95, y=ball2ll.y-13, alpha = 0} )
			
			ball2mm= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2mm)
			ball2mm.x = starActive2.x+30
			ball2mm.y = starActive2.y 
			transition.to( ball2mm, { time=960,  x=ball2mm.x+70, y=ball2mm.y-110, alpha = 0} )
			
			ball2nn= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2nn)
			ball2nn.x = starActive2.x+30
			ball2nn.y = starActive2.y 
			transition.to( ball2nn, { time=960,  x=ball2nn.x+95, y=ball2nn.y-50, alpha = 0} )
			
			ball2oo= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2oo)
			ball2oo.x = starActive2.x+30
			ball2oo.y = starActive2.y 
			transition.to( ball2oo, { time=960,  x=ball2oo.x+103, y=ball2oo.y+45, alpha = 0} )
			
			ball2pp= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2pp)
			ball2pp.x = starActive2.x+30
			ball2pp.y = starActive2.y 
			transition.to( ball2pp, { time=960,  x=ball2pp.x+86, y=ball2pp.y+13, alpha = 0} )
			
			ball2qq= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2qq)
			ball2qq.x = starActive2.x +30
			ball2qq.y = starActive2.y
			transition.to( ball2qq, { time=1060,  x=ball2qq.x+85, y=ball2qq.y+63, alpha = 0} )
			
			ball2rr= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2rr)
			ball2rr.x = starActive2.x+30
			ball2rr.y = starActive2.y
			transition.to( ball2rr, { time=960,  x=ball2rr.x+77, y=ball2rr.y-77, alpha = 0} )
			
			ball2ss= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball2ss)
				ball2ss.x = starActive2.x +30
				ball2ss.y = starActive2.y 
				transition.to( ball2ss, { time=1060,  x=ball2ss.x+47, y=ball2ss.y+92, alpha = 0} )
		
			ball2tt= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2tt)
			ball2tt.x = starActive2.x +30
			ball2tt.y =  starActive2.y 
			transition.to( ball2tt, { time=930,  x=ball2tt.x+53, y=ball2tt.y+72, alpha = 0} )
			
			ball2uu= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball2uu)
			ball2uu.x = starActive2.x+30
			ball2uu.y =  starActive2.y
			transition.to( ball2uu, { time=980,  x=ball2uu.x+56, y=ball2uu.y-111, alpha = 0} )
			
			ball2vv= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball2vv)
			ball2vv.x = starActive2.x +30
			ball2vv.y = starActive2.y
			transition.to( ball2vv, {time=970,  x=ball2vv.x+52, y=ball2vv.y+57, alpha = 0} )
			--]]
			end
			
			function ballseast()
		function ball3Destroy()
		
			ball3a:removeSelf()
			ball3a=nil
			ball3b:removeSelf()
			ball3b=nil
			ball3c:removeSelf()
			ball3c=nil
			ball3d:removeSelf()
			ball3d=nil
			ball3e:removeSelf()
			ball3e=nil
			ball3f:removeSelf()
			ball3f=nil
			ball3g:removeSelf()
			ball3g=nil
			ball3h:removeSelf()
			ball3h=nil
			ball3i:removeSelf()
			ball3i=nil
			ball3j:removeSelf()
			ball3j=nil
			ball3k:removeSelf()
			ball3k=nil
			ball3l:removeSelf()
			ball3l=nil
			ball3m:removeSelf()
			ball3m=nil
			ball3n:removeSelf()
			ball3n=nil
			ball3o:removeSelf()
			ball3o=nil
			ball3p:removeSelf()
			ball3p=nil
			ball3q:removeSelf()
			ball3q=nil
			ball3r:removeSelf()
			ball3r=nil
			ball3s:removeSelf()
			ball3s=nil
			ball3t:removeSelf()
			ball3t=nil
			ball3u:removeSelf()
			ball3u=nil
			ball3v:removeSelf()
			ball3v=nil
			
			ball3aa:removeSelf()
			ball3aa=nil
			ball3bb:removeSelf()
			ball3bb=nil
			ball3cc:removeSelf()
			ball3cc=nil
			ball3dd:removeSelf()
			ball3dd=nil
			ball3ee:removeSelf()
			ball3ee=nil
			ball3ff:removeSelf()
			ball3ff=nil
			ball3gg:removeSelf()
			ball3gg=nil
			ball3hh:removeSelf()
			ball3hh=nil
			ball3ii:removeSelf()
			ball3ii=nil
			ball3jj:removeSelf()
			ball3jj=nil
			ball3kk:removeSelf()
			ball3kk=nil
			ball3ll:removeSelf()
			ball3ll=nil
			ball3mm:removeSelf()
			ball3mm=nil
			ball3nn:removeSelf()
			ball3nn=nil
			ball3oo:removeSelf()
			ball3oo=nil
			ball3pp:removeSelf()
			ball3pp=nil
			ball3qq:removeSelf()
			ball3qq=nil
			ball3rr:removeSelf()
			ball3rr=nil
			ball3ss:removeSelf()
			ball3ss=nil
			ball3tt:removeSelf()
			ball3tt=nil
			ball3uu:removeSelf()
			ball3uu=nil
			ball3vv:removeSelf()
			ball3vv=nil
		end
			
				ball3a= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball3a)
				ball3a.x = starActive3.x +30
				ball3a.y = starActive3.y 
				transition.to( ball3a, { time=700,  x=ball3a.x-22, y=ball3a.y+100, alpha = 0} )
				
			ball3b= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3b)
			ball3b.x = starActive3.x +30
			ball3b.y =  starActive3.y 
			transition.to( ball3b, { time=700,  x=ball3b.x-30, y=ball3b.y+80, alpha = 0} )
			
			ball3c= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3c)
			ball3c.x = starActive3.x+30
			ball3c.y =  starActive3.y
			transition.to( ball3c, { time=700,  x=ball3c.x-50, y=ball3c.y-100, alpha = 0} )
			
			ball3d= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3d)
			ball3d.x = starActive3.x +30
			ball3d.y = starActive3.y
			transition.to( ball3d, { time=700,  x=ball3d.x-60, y=ball3d.y+55, alpha = 0} )
			
			ball3e= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3e)
			ball3e.x = starActive3.x+30
			ball3e.y = starActive3.y
			transition.to( ball3e, { time=700,  x=ball3e.x-80, y=ball3e.y-70, alpha = 0} )
			
			ball3f= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3f)
			ball3f.x = starActive3.x +30
			ball3f.y = starActive3.y
			transition.to( ball3f, { time=700,  x=ball3f.x-90, y=ball3f.y+70, alpha = 0} )
			
			ball3g= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3g)
			ball3g.x = starActive3.x+30
			ball3g.y = starActive3.y 
			transition.to( ball3g, { time=700,  x=ball3g.x-34, y=ball3g.y+100, alpha = 0} )
			
			ball3h= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3h)
			ball3h.x = starActive3.x+30
			ball3h.y = starActive3.y 
			transition.to( ball3h, { time=700,  x=ball3h.x-103, y=ball3h.y+45, alpha = 0} )
			
			ball3i= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3i)
			ball3i.x = starActive3.x+30
			ball3i.y = starActive3.y 
			transition.to( ball3i, { time=700,  x=ball3i.x-103, y=ball3i.y-45, alpha = 0} )
			
			ball3j= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3j)
			ball3j.x = starActive3.x+30
			ball3j.y = starActive3.y 
			transition.to( ball3j, { time=700,  x=ball3j.x-34, y=ball3j.y-100, alpha = 0} )
			
			ball3k= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3k)
			ball3k.x = starActive3.x+30
			ball3k.y = starActive3.y 
			transition.to( ball3k, { time=700,  x=ball3k.x-103, y=ball3k.y-22, alpha = 0} )
			
			ball3l= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3l)
			ball3l.x = starActive3.x+30
			ball3l.y = starActive3.y 
			transition.to( ball3l, { time=1000,  x=ball3l.x-95, y=ball3l.y-13, alpha = 0} )
			
			ball3m= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3m)
			ball3m.x = starActive3.x+30
			ball3m.y = starActive3.y 
			transition.to( ball3m, { time=1000,  x=ball3m.x-70, y=ball3m.y-110, alpha = 0} )
			
			ball3n= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3n)
			ball3n.x = starActive3.x+30
			ball3n.y = starActive3.y 
			transition.to( ball3n, { time=1000,  x=ball3n.x-95, y=ball3n.y-50, alpha = 0} )
			
			ball3o= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3o)
			ball3o.x = starActive3.x+30
			ball3o.y = starActive3.y 
			transition.to( ball3o, { time=1000,  x=ball3o.x-103, y=ball3o.y+45, alpha = 0} )
			
			ball3p= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3p)
			ball3p.x = starActive3.x+30
			ball3p.y = starActive3.y 
			transition.to( ball3p, { time=1000,  x=ball3p.x-86, y=ball3p.y+13, alpha = 0} )
			
			ball3q= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3q)
			ball3q.x = starActive3.x +30
			ball3q.y = starActive3.y
			transition.to( ball3q, { time=1000,  x=ball3q.x-85, y=ball3q.y+63, alpha = 0} )
			
			ball3r= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3r)
			ball3r.x = starActive3.x+30
			ball3r.y = starActive3.y
			transition.to( ball3r, { time=1000,  x=ball3r.x-77, y=ball3r.y-77, alpha = 0} )
			
			ball3s= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball3s)
				ball3s.x = starActive3.x +30
				ball3s.y = starActive3.y 
				transition.to( ball3s, { time=1000,  x=ball3s.x-27, y=ball3s.y+92, alpha = 0} )
		
			ball3t= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3t)
			ball3t.x = starActive3.x +30
			ball3t.y =  starActive3.y 
			transition.to( ball3t, { time=1000,  x=ball3t.x-33, y=ball3t.y+72, alpha = 0} )
			
			ball3u= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3u)
			ball3u.x = starActive3.x+30
			ball3u.y =  starActive3.y
			transition.to( ball3u, { time=1000,  x=ball3u.x-56, y=ball3u.y-111, alpha = 0} )
			
			ball3v= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3v)
			ball3v.x = starActive3.x +30
			ball3v.y = starActive3.y
			transition.to( ball3v, { time=1000,  x=ball3v.x-52, y=ball3v.y+57, alpha = 0, onComplete = ball3Destroy} )
			---------------------
			ball3aa= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball3aa)
				ball3aa.x = starActive3.x +30
				ball3aa.y = starActive3.y 
				transition.to( ball3aa, { time=800,  x=ball3aa.x+42, y=ball3aa.y+100, alpha = 0} )
				
			ball3bb= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3bb)
			ball3bb.x = starActive3.x +30
			ball3bb.y =  starActive3.y 
			transition.to( ball3bb, { time=800,  x=ball3bb.x+55, y=ball3bb.y+80, alpha = 0} )
			
			ball3cc= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3cc)
			ball3cc.x = starActive3.x+30
			ball3cc.y =  starActive3.y
			transition.to( ball3cc, { time=800,  x=ball3cc.x+50, y=ball3cc.y-100, alpha = 0} )
			
			ball3dd= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3dd)
			ball3dd.x = starActive3.x +30
			ball3dd.y = starActive3.y
			transition.to( ball3dd, { time=800,  x=ball3dd.x+60, y=ball3dd.y+55, alpha = 0} )
			
			ball3ee= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3ee)
			ball3ee.x = starActive3.x+30
			ball3ee.y = starActive3.y
			transition.to( ball3ee, { time=800,  x=ball3ee.x+80, y=ball3ee.y-70, alpha = 0} )
			
			ball3ff= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3ff)
			ball3ff.x = starActive3.x +30
			ball3ff.y = starActive3.y
			transition.to( ball3ff, { time=800,  x=ball3ff.x+90, y=ball3ff.y+70, alpha = 0} )
			
			ball3gg= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3gg)
			ball3gg.x = starActive3.x+30
			ball3gg.y = starActive3.y 
			transition.to( ball3gg, { time=800,  x=ball3gg.x+60, y=ball3gg.y+100, alpha = 0} )
			
			ball3hh= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3hh)
			ball3hh.x = starActive3.x+30
			ball3hh.y = starActive3.y 
			transition.to( ball3hh, { time=850,  x=ball3hh.x+103, y=ball3hh.y+45, alpha = 0} )
			
			ball3ii= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3ii)
			ball3ii.x = starActive3.x+30
			ball3ii.y = starActive3.y 
			transition.to( ball3ii, { time=850,  x=ball3ii.x+103, y=ball3ii.y-45, alpha = 0} )
			
			ball3jj= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3jj)
			ball3jj.x = starActive3.x+30
			ball3jj.y = starActive3.y 
			transition.to( ball3jj, { time=850,  x=ball3jj.x+66, y=ball3jj.y-100, alpha = 0} )
			
			ball3kk= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3kk)
			ball3kk.x = starActive3.x+30
			ball3kk.y = starActive3.y 
			transition.to( ball3kk, { time=860,  x=ball3kk.x+103, y=ball3kk.y-12, alpha = 0} )
			
			ball3ll= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3ll)
			ball3ll.x = starActive3.x+30
			ball3ll.y = starActive3.y 
			transition.to( ball3ll, { time=960,  x=ball3ll.x+95, y=ball3ll.y-13, alpha = 0} )
			
			ball3mm= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3mm)
			ball3mm.x = starActive3.x+30
			ball3mm.y = starActive3.y 
			transition.to( ball3mm, { time=960,  x=ball3mm.x+70, y=ball3mm.y-110, alpha = 0} )
			
			ball3nn= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3nn)
			ball3nn.x = starActive3.x+30
			ball3nn.y = starActive3.y 
			transition.to( ball3nn, { time=960,  x=ball3nn.x+95, y=ball3nn.y-50, alpha = 0} )
			
			ball3oo= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3oo)
			ball3oo.x = starActive3.x+30
			ball3oo.y = starActive3.y 
			transition.to( ball3oo, { time=960,  x=ball3oo.x+103, y=ball3oo.y+45, alpha = 0} )
			
			ball3pp= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3pp)
			ball3pp.x = starActive3.x+30
			ball3pp.y = starActive3.y 
			transition.to( ball3pp, { time=960,  x=ball3pp.x+86, y=ball3pp.y+13, alpha = 0} )
			
			ball3qq= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3qq)
			ball3qq.x = starActive3.x +30
			ball3qq.y = starActive3.y
			transition.to( ball3qq, { time=1060,  x=ball3qq.x+85, y=ball3qq.y+63, alpha = 0} )
			
			ball3rr= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3rr)
			ball3rr.x = starActive3.x+30
			ball3rr.y = starActive3.y
			transition.to( ball3rr, { time=960,  x=ball3rr.x+77, y=ball3rr.y-77, alpha = 0} )
			
			ball3ss= display.newImageRect('Star-Active.png',15,15 )
				group:insert(ball3ss)
				ball3ss.x = starActive3.x +30
				ball3ss.y = starActive3.y 
				transition.to( ball3ss, { time=1060,  x=ball3ss.x+47, y=ball3ss.y+92, alpha = 0} )
		
			ball3tt= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3tt)
			ball3tt.x = starActive3.x +30
			ball3tt.y =  starActive3.y 
			transition.to( ball3tt, { time=930,  x=ball3tt.x+53, y=ball3tt.y+72, alpha = 0} )
			
			ball3uu= display.newImageRect('Star-Active.png',15,15 )
			group:insert(ball3uu)
			ball3uu.x = starActive3.x+30
			ball3uu.y =  starActive3.y
			transition.to( ball3uu, { time=980,  x=ball3uu.x+56, y=ball3uu.y-111, alpha = 0} )
			
			ball3vv= display.newImageRect( 'Star-Active.png',15,15 )
			group:insert(ball3vv)
			ball3vv.x = starActive3.x +30
			ball3vv.y = starActive3.y
			transition.to( ball3vv, {time=970,  x=ball3vv.x+52, y=ball3vv.y+57, alpha = 0} )
			--]]
			end
function star1()
			function delarge1()
				print("delarge1")
				starActive1b.isVisible = false
				--starActive1b:scale(-.5,-.5)
				--starActive1.x = starActive1.x - starActive1.width - starActive1.width/2
				
			end
			function enlarge1()
				starActive1b.isVisible = true
				starActive1b:scale(-2,-2)
				starActive1b.x = starActive1.x --+ starActive1.width + starActive1.width/2
				--starActive1:scale(-2,-2)
				
				print("enlarge1")
				timer.performWithDelay(700,delarge1, 1)
				ballswest()
				
			end
			transition.to(starActive1,{ time = 400, x=w/2-70, y=320, transition=easing.inOutQuad, onComplete = enlarge1}) 
			
			
end
		
		
function star2()
			function delarge2()
				print("delarge2")
				starActive2b.isVisible = false
			end
			function enlarge2()
				starActive2b.isVisible = true
				starActive2b:scale(-2,-2)
				starActive2b.x = starActive2.x --+ starActive2.width + starActive2.width/2
				timer.performWithDelay(700,delarge2, 1)
				ballsnorth()
			end
				local trans2 = transition.to(starActive2,{ time = 400, x= w/2, y=320, transition=easing.inOutQuad, onComplete = enlarge2})
end	
		
		
function star3()
			function delarge3()
				print("delarge3")
				starActive3b.isVisible = false
			end
			function enlarge3()
				starActive3b.isVisible = true
				starActive3b:scale(-2,-2)
				starActive3b.x = starActive3.x --+ starActive3.width + starActive3.width/2
				timer.performWithDelay(700,delarge3, 1)
				ballseast()
			end
				local trans3 = transition.to(starActive3,{ time = 400, x=w/2+70, y=320, transition=easing.inOutQuad, onComplete = enlarge3})
end	
		
function starman()
		StarInactive1 = display.newImageRect('Star-Inactive.png',60 ,60)
		--StarInactive1:setReferencePoint(display.CenterLeftReferencePoint)
		StarInactive1.x = w/2-70
		StarInactive1.y = 320
		group:insert(StarInactive1)
		
		StarInactive2 = display.newImageRect('Star-Inactive.png',60 ,60)
		--StarInactive2:setReferencePoint(display.CenterLeftReferencePoint)
		StarInactive2.x = w/2
		StarInactive2.y = 320
		group:insert(StarInactive2)
		
		StarInactive3 = display.newImageRect('Star-Inactive.png',60 ,60)
		--StarInactive3:setReferencePoint(display.CenterLeftReferencePoint)
		StarInactive3.x = w/2+70
		StarInactive3.y = 320
		group:insert(StarInactive3)
		--------------------------------------------------------------------
		starActive1 = display.newImageRect('Star-Active.png',60 ,60)
		--starActive1:setReferencePoint(display.CenterLeftReferencePoint)
		starActive1.x = w/2-40
		starActive1.y = h+100
		group:insert(starActive1)
		
		starActive1b = display.newImageRect('Star-Active.png',60 ,60)
		--starActive1b:setReferencePoint(display.CenterLeftReferencePoint)
		starActive1b.x = w/2-100
		starActive1b.y = 320
		starActive1b.isVisible = false
		group:insert(starActive1b)
		
		starActive2 = display.newImageRect('Star-Active.png',60 ,60)
		--starActive2:setReferencePoint(display.CenterLeftReferencePoint)
		starActive2.x = w/2
		starActive2.y = h+320
		group:insert(starActive2)
		------------------------------------------------------------------------------------------


		starActive2b = display.newImageRect('Star-Active.png',60 ,60)
		--starActive2b:setReferencePoint(display.CenterLeftReferencePoint)
		starActive2b.x = w/2-70
		starActive2b.y = 320
		starActive2b.isVisible = false
		group:insert(starActive2b)
		
		
		starActive3 = display.newImageRect('Star-Active.png',60 ,60)
		--starActive3:setReferencePoint(display.CenterLeftReferencePoint)
		starActive3.x = w+100
		starActive3.y = h+100
		group:insert(starActive3)  
		
		starActive3b = display.newImageRect('Star-Active.png',60 ,60)
		--starActive3b:setReferencePoint(display.CenterLeftReferencePoint)
		starActive3b.x =w/2+40
		starActive3b.y = 320
		starActive3b.isVisible = false
		group:insert(starActive3b)

		if storyboard.star == 3 then
					tmrStarA = timer.performWithDelay(300,star1,1)
					tmrStarB = timer.performWithDelay(1300,star2,1)
					tmrStarC = timer.performWithDelay(2300,star3,1)
			elseif storyboard.star == 2 then
					tmrStarA = timer.performWithDelay(300,star1,1)
					tmrStarB = timer.performWithDelay(1300,star2,1)
					starActive3:removeSelf()
					starActive3 = nil
			elseif storyboard.star == 1 then
					tmrStarA = timer.performWithDelay(600,star1,1)
					starActive2:removeSelf()
					starActive2 = nil
					starActive3:removeSelf()
					starActive3 = nil
		end
end
			
			
			
			
			
	
end

function scene:willEnterScene( event )
        local group = self.view
        
        -----------------------------------------------------------------------------
                
        --      This event requires build 2012.782 or later.
        
        -----------------------------------------------------------------------------
        
end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
	storyboard.removeScene('pepper1')
	storyboard.removeScene('pepper2')
	storyboard.removeScene('pepper3')
	storyboard.removeScene('pepper4')
	storyboard.removeScene('pepper5')
	storyboard.removeScene('pepper6')
	storyboard.removeScene('pepper7')
	storyboard.removeScene('pepper8')
	storyboard.removeScene('pepper9')
	storyboard.removeScene('pepper10')
	storyboard.removeScene('pepper11')
	storyboard.removeScene('pepper12')
	storyboard.removeScene('pepper13')
	storyboard.removeScene('pepper14')
	storyboard.removeScene('pepper15')
	storyboard.removeScene('pepper16')
	storyboard.removeScene('pepper17')
	storyboard.removeScene('pepper18')
	storyboard.removeScene('pepper19')
	storyboard.removeScene('pepper20')
	storyboard.removeScene('pepper21')
	storyboard.removeScene('pepper22')
	storyboard.removeScene('pepper23')
	storyboard.removeScene('pepper24')
	storyboard.removeScene('pepper25')
	storyboard.removeScene('pepper26')
	storyboard.removeScene('pepper27')
local group = self.view

q=storyboard.level 
	
	--VUNGLE
	if (q==6) then
		--ads.show()
	elseif	 (q==12)  or (q==18)   or (q==24)   then
		--ads.show()
		
	end 

          
function textwin3()

		shade = display.newRoundedRect(w/2,h/2,w/1.3,h-50,25)
		shade:setFillColor(0,0,0,255)
		shade.alpha = .5
		group:insert(shade)

		text2 = display.newImageRect('win3.png', w, 300)
		text2.xScale = .85
		text2.yScale=2
		text2.x =w/2
		text2.y = h/2+20
		group:insert(text2)

		ballsZ = display.newText("Balls Used:  ", w/2-20,235 ,'futura', 18)
		ballsZ:setTextColor(255,255,0)
		group:insert(ballsZ)

		balls = display.newText(storyboard.j, w/2+40,235 ,'futura', 18)
		balls:setTextColor(255,255,0)
		group:insert(balls)
end

function play()
	audio.setVolume( 1, { channel=16} ) 
	audio.play(cheers, {channel = 16, loops =0, duration = 6000})
	audio.fadeOut({ channel=16, time=6000 } )
end

function playbutton1()
	onButtonEvent = function (event )
        		if event.phase == "began" then
        				audio.play(s5)
        				myButton:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('loading')
        			
        			end
    end
    
    		myButton = widget.newButton{
    		defaultFile = "Replay.png",
    		left = w/2-100,
        	top =h/2+115,
      		width =55, height = 55,
      		emboss=true,
       		onEvent = onButtonEvent
    		}
    		group:insert(myButton)

    onButtonEvent1 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton1:scale(1.2,1.2)
        				if (storyboard.level >= levels) then
        					myData:store('levele',storyboard.level + 1)
        					myData:save()
        				end	
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('loadMainMenu')
        			
        			end
    end
    	
 
    		myButton1 = widget.newButton{
    		defaultFile = "Menu.png",
    		left = w/2-30,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent1
   			 }
			group:insert(myButton1)
end	


if (storyboard.level==1) then
		
		timer.performWithDelay(100, play, 1)
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

		
		
		textwin3()
		
		local reward_text="Thank you for playing. If you enjoy my trivia game,\nplease leave a nice review in the Google Play store."
        local options2 = 
				        {
				            text = reward_text,
				            x = w/2,
				            y= h-50,
				            width = 650,   
				            font = "marker felt",
				            fontSize = 10,
				            align = "center",
				        }
				    local line1 = display.newText(options2)
				    line1:setFillColor( 0, 1, 0 )
		group:insert(line1)

		
		reviewGame=function (event )

			if event.phase == "began" then
			        	reviewButton:scale(1.2,1.2)
			        	audio.play(s5)
			        elseif	event.phase == "ended" then
			        	reviewButton:scale(.8334,.8334)
			          system.openURL ( "https://play.google.com/store/apps/details?id=" .. googleAppID )
			        end
                     
        end  


       reviewButton = widget.newButton
                        {defaultFile = "review-button.png",
                            left = w/2-50,
                            top = h-100,
                            width = 100,
                            height = 30,
                            
                            onEvent = reviewGame,
                        }
        group:insert( reviewButton ) 
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		number2star = display.newText('<75', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)

		number3star = display.newText('<25', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)

		starman()
		
		function playbutton()
			
   					onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper2',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	

	
	
	
	if(storyboard.level==2) then
		
		timer.performWithDelay(100, play, 1)
	
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<50', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<100', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

	starman()
  		function playbutton()

		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper3',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		

		
		
if(storyboard.level==3) then

		timer.performWithDelay(100, play, 1)
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

		textwin3()
		
		number3star = display.newText('<40', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<80', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<120', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
		starman()

    	
function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper4',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		

if(storyboard.level==4) then
		
		timer.performWithDelay(100, play, 1)
		
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		
		number3star = display.newText('<65', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<85', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<105', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 

function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper5',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
		
	if(storyboard.level==5) then
		
		timer.performWithDelay(100, play, 1) 
		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		
		number3star = display.newText('<75', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<100', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<125', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
	starman()  

function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper6',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)

		
end			
	
		
		if(storyboard.level==6) then

		timer.performWithDelay(100, play, 1)
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<100', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<125', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 

function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper7',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
				
		if(storyboard.level==7) then
		
		timer.performWithDelay(100, play, 1)
	
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<100', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<125', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()    
	
function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper8',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
	
		
		
		if(storyboard.level==8) then
		
		timer.performWithDelay(100, play, 1)
		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<75', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<100', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<125', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman()

function playbutton()
					
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper9',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
		
		if(storyboard.level==9) then
		
		timer.performWithDelay(100, play, 1)
		
 
		
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<115', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<135', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<155', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
	
		
starman()  

function playbutton()
	
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper10',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
		
		if(storyboard.level==10) then

		timer.performWithDelay(100, play, 1)
	
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<110', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<130', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
	
		
starman() 

function playbutton()
					
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper11',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
		
				
		if(storyboard.level==11) then

		timer.performWithDelay(100, play, 1)  
		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()
		

		number3star = display.newText('<130', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<150', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<170', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()  

function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper12',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end				
		
		
		if(storyboard.level==12) then
		
		
		timer.performWithDelay(100, play, 1) 
		
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()
	
		number3star = display.newText('<100', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<125', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<150', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman() 

function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper13',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
				
		if(storyboard.level==13) then
		
		timer.performWithDelay(100, play, 1) 
		
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<125', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<145', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<165', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 
  	
function playbutton()
			
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper14',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
		
		if(storyboard.level==14) then
		
		
		timer.performWithDelay(100, play, 1) 
		

		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

		local reward_text="Thank you for playing. If you enjoyed my trivia game, please leave a nice review in the Google Play store."
        local options2 = 
				        {
				            text = reward_text,
				            x = w/2,
				            y= h/3,
				            width = 650,   
				            font = "marker felt",
				            fontSize = 60,
				            align = "center",
				        }
				    local line1 = display.newText(options2)
				    line1:setFillColor( 0, 1, 0 )
		group:insert(line1)

		
		reviewGame=function (event )

			if event.phase == "began" then
			        	reviewButton:scale(1.2,1.2)
			        	audio.play(s5)
			        elseif	event.phase == "ended" then
			        	reviewButton:scale(.8334,.8334)
			          system.openURL ( "https://play.google.com/store/apps/details?id=" .. googleAppID )
			        end
                     
        end  


       reviewButton = widget.newButton
                        {defaultFile = "review-button.png",
                            left = w/2-210,
                            top = h/2,
                            width = 420,
                            height = 100,
                            
                            onEvent = reviewGame,
                        }
        group:insert( reviewButton ) 
		

		textwin3()

		number3star = display.newText('<115', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<135', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<155', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()  
   	
function playbutton()
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper15',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
				
		if(storyboard.level==15) then
	
		timer.performWithDelay(100, play, 1) 
		
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

		
		textwin3()

		number3star = display.newText('<175', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<200', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<225', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 
	
function playbutton()
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper16',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
				
		if(storyboard.level==16) then

		timer.performWithDelay(100, play, 1) 
		
		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<100', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<120', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<140', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman()  
 	
function playbutton()
	
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper17',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
				
if(storyboard.level==17) then

		timer.performWithDelay(100, play, 1)
		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<150', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<175', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<200', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		
		
		
starman()  
  	
function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper18',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
				
		if(storyboard.level==18) then

		
		timer.performWithDelay(100, play, 1)
		bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()


		number3star = display.newText('<90', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<110', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<130', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()  
 	
function playbutton()
				
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper19',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end				
		
		
		if(storyboard.level==19) then

		timer.performWithDelay(100, play, 1) 

		bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<220', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<260', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<320', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman()    
 	
function playbutton()
		
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper20',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
	if(storyboard.level==20) then
	

		timer.performWithDelay(100, play, 1)
		
		bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<160', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<180', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<200', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman() 
  	
function playbutton()
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper21',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end			
		
		if(storyboard.level==21) then

		timer.performWithDelay(100, play, 1)
		
    	bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<180', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<220', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<300', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()  
  	
function playbutton()
				
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper22',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
	if(storyboard.level==22) then

		timer.performWithDelay(100, play, 1)
		
    	bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<180', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<220', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<260', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman()  
 	
function playbutton()
				
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper23',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
	if(storyboard.level==23) then

		timer.performWithDelay(100, play, 1)
    	bg1 = display.newImageRect('env2.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)

	
		textwin3()

		number3star = display.newText('<225', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<270', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<300', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 
	
function playbutton()
				
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper24',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
	if(storyboard.level==24) then

		timer.performWithDelay(100, play, 1)
		
    	bg1 = display.newImageRect('env3.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()


		number3star = display.newText('<200', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<270', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<300', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)

		
starman()  
 	
function playbutton()
				
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper25',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
		
end		
	
if(storyboard.level==25) then
	

		timer.performWithDelay(100, play, 1)
		
    	bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		number3star = display.newText('<200', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<270', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<300', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 

    	
		function playbutton()
		
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper26',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
	end	
	
if(storyboard.level==26) then
	

		timer.performWithDelay(100, play, 1)
		
    	bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		
		number3star = display.newText('<220', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<270', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<300', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 

		function playbutton()
					
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper27',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
	end	
	
if(storyboard.level==27) then
	
	
		timer.performWithDelay(100, play, 1)
		

		

		
    	bg1 = display.newImageRect('env1.png',w ,h)
		bg1.x = w - w/2
		bg1.y = h - h/2
		group:insert(bg1)
		

	
		textwin3()

		
		number3star = display.newText('<270', w/2+70,270, 'futura', 15)
		number3star:setTextColor(255,255,0)
		group:insert(number3star)
		
		number2star = display.newText('<300', w/2,270, 'futura', 15)
		number2star:setTextColor(255,255,0)
		group:insert(number2star)
		
		number1star = display.newText('<350', w/2-70,270, 'futura', 15)
		number1star:setTextColor(255,255,0)
		group:insert(number1star)
		

		
starman() 

		function playbutton()
			
		
			onButtonEvent2 = function (event )
        			if event.phase == "began" then
        				audio.play(s5)
        				myButton2:scale(1.2,1.2)
        			elseif event.phase == "ended" then
        				storyboard.gotoScene('pepper1',"slideLeft",500)
        			
        			end
    			end
    	
 
    		myButton2 = widget.newButton{
    		defaultFile = "play.png",
    		left = w/2+40,
        	top =h/2+115,
       		width =55, height = 55,
        	emboss=true,
       		onEvent = onButtonEvent2
   			 }
			group:insert(myButton2)
		end	
		timer.performWithDelay(3500, playbutton, 1)
		timer.performWithDelay(3500, playbutton1, 1)
	end	
	
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