//refrence item,type of item,a,b,c,lvl of item

//HP: min.hp + (lvl - 1) ^ groethfacatore. * (max.hp - min.hp) / (max.lvl - 1) ^ 1.0 = HP * modpercetn
pick=argument0
t= argument1
m1= argument2
m2= argument3
m3= argument4
lvl= argument5
minhp = global.item[pick,10]
maxhp = global.item[pick,11]
maxlvl = global.item[pick,2]
growthf = global.item[pick,16]
 fValue =0
 modhp =0

   if (t==0) modhp = m3
     if (t==1) modhp = m2
      if (t==2) modhp = m1
        if (t==3) modhp = m1
         if (t==4) modhp = m2
          if (t==5) modhp = m3         
          
 fValue=(minhp + (maxhp-minhp)* power((lvl-1)/(maxlvl-1),growthf))* modhp // ((minhp + (lvl - 1)^growthf) * (maxhp - minhp) / (maxlvl - 1) ^ growthf) //* modhp         
           
return round( fValue )            
