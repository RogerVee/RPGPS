//refrence item,type of item,a,b,c,lvl of item

//HP: min.heal + (lvl - 1) ^ groethfacatore. * (max.heal - min.heal) / (max.lvl - 1) ^ 1.0 = HP * modpercetn
pick=argument0
t= argument1
m1=argument2
m2= argument3
m3= argument4
lvl= argument5
minheal = global.item[pick,14]
maxheal = global.item[pick,15]
maxlvl = global.item[pick,2]
growthf = global.item[pick,18]
var fValue = 0
var modheal = 0

   if t=0 modheal = m2
   if t=1 modheal = m1
   if t=2 modheal = m2
   if t=3 modheal = m3
   if t=4 modheal = m3
   if t=5 modheal = m1        
          
fValue=  (minheal + (maxheal-minheal)* power((lvl-1)/(maxlvl-1),growthf))* modheal
           
return round( fValue )           
