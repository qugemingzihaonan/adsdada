--
-- Author: Your Name
-- Date: 2015-05-27 11:18:14
--
-- print("loadFile")
-- require("game")
-- no.play()

-- tsprite={x=0,y=0}
-- function tsprite:setposition(x,y)
-- 	self.x=x;
-- 	self.y=y;
-- 	print("setposition")
-- end
-- local who=tsprite;
-- tsprite=nil;
-- who:setposition(1,2);

 -- Hero={}
 -- function  Hero:new(tab)
 -- 	tab=tab or {}
 -- 	setmetatable(tab,self)
 -- 	self.__index=self
 -- 	return  tab
 -- end
 -- function  Hero:skill(addAttack)
 -- 	self.attack=self.attack+addAttack
 -- end
 -- function Hero:test()
 -- 	print("Hero test")  
 -- end
 -- oneHero=Hero:new({attack=100})
 -- oneHero:skill(10)
 -- print(oneHero.attack)

 -- function oneHero:test()
 -- 	print("oneHero test")
 -- end

 -- function oneHero:injured(loserattack)
 -- 	if loserattack then
 -- 		print("not engouth attack")
 -- 	end
 -- 	self.attack=self.attack-loserattack/2
 -- end
 -- oneHero:injured(100)
 -- print(oneHero.attack)
 -- oneHero:test()

-- local t1={}
-- local t2={}
-- local  mt={
-- 	__add=function ()
-- 		print("jiafa")
-- 	end,
-- 	__sub=function ()
-- 		print("jianfa")
-- 	end,
-- 	__div=function ( )
-- 		print("chufa")
-- 	end,
-- 	__mul=function ()
-- 		print("chengfa")
-- 	end,
-- 	__mod=function ()
-- 		print("qumo")
-- 	end,
-- 	__unm=function ()
-- 		print("xiangfanshu")
-- 	end,
-- 	__pow=function ()
-- 		print("chengmi")
-- 	end,

-- 	__eq=function ()
-- 		print("dayu")
-- 	end,
-- 	__le=function ()
-- 		print("xiaoyudengyu")
-- 	end,
-- 	__lt=function ()
-- 		print("xiaoyu")
-- 	end,
-- 	__index=function ()
-- 		print("meiyou")
-- 	end,
-- 	__newindex=t2
-- }
-- setmetatable(t1, mt)
-- --setmetatable(t2, mt)
-- print(t1.name)
-- t1.name="ada"
--  print(t1.name)
-- print(t2.name)

-- module("name",package.seeall)
-- function play()
-- 	print("play")
-- end
-- function createClass()
-- 	local parents={}
-- 	local child={}
-- 	setmetatable(child,{
-- 	    __index=function (table,key)
-- 	    	return search(parents,key)
-- 	    end
--     })
-- function child:new()
-- 	tab={}
-- 	setmetatable(tab, child)
-- 	child.__index=child
-- 	return tab
-- end
--     return child
-- end
-- tsprite={}
-- function tsprite:hello()
-- 	print("hello")
-- end
-- function tsprite:new()
-- 	o={}
-- 	setmetatable(o, self)
-- 	self.__index=self
-- 	return o
-- end
-- tbullet={}
-- function tbullet:fire()
-- 	print("kaihuo")
-- end
-- function tbullet:new()
--     o={}
--     setmetatable(o, self)
--     self.__index=self
--     return o
-- end
-- local bulletsprite=createClass(tsprite,tbullet)
-- local b=bulletsprite:new()
-- b:hello()
-- b:fire()

-- function createsp()
-- 	local self={name="myname"}
-- 	local function mybus()
-- 		print("my selef function")
-- 	end
-- 	local function hello( )
-- 		print("hello")
-- 		mybus()
-- 	end
-- 	return {hello=hello}
-- end
-- local sp=createsp()

t={}
key1={name="key1"}
t[key1]=1
key1=nil
key2={name="key2"}
t[key2]=1
key2=nil
collectgarbage()
for k,v in pairs(t) do
	print(k.name)
end
