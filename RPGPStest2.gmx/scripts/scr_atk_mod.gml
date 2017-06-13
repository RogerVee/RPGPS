//refrence item,type of item,a,b,c,lvl of item

//HP: min.atk + (lvl - 1) ^ groethfacatore. * (max.atk - min.atk) / (max.lvl - 1) ^ 1.0 = HP * modpercetn
pick=argument0
t= argument1
m1=argument2 
m2= argument3
m3= argument4
lvl= argument5
minatk = global.item[pick,12]
maxatk = global.item[pick,13]
maxlvl = global.item[pick,2]
growthf = global.item[pick,17]
var fValue = 0
var modatk =0

   if t=0 modatk = m1
   if t=1 modatk = m3
   if t=2 modatk = m3
   if t=3 modatk = m2
   if t=4 modatk = m1
   if t=5 modatk = m2        
          
fValue=  (minatk + (maxatk-minatk)* power((lvl-1)/(maxlvl-1),growthf))* modatk        
           
return round( fValue )       
