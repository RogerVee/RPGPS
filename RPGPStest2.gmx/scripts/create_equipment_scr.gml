//creating an item and assing it to the invintoray aray trhen creating the refrenceing the itme int eh arromery 
//returns array number of itme in inventory 
pick=irandom(20)// pick set
t=irandom(5)//random item type will be fedd later// maybe get it when assesing the list to see what is avlibille
a=irandom(15) // base precent for agumenting item 
ar=irandom(a) // devding precent top smaller value 
b=min((a-ar),ar)//seconed value
c=abs(a-b)//third value 
a1=(1+(a/100))
b1=(1-(b/100))
c1=(1-(c/100))
lvl=1
hp=scr_hp_mod(pick,t,a1,b1,c1,lvl)
atk=scr_atk_mod(pick,t,a1,b1,c1,lvl)
heal=scr_heal_mod(pick,t,a1,b1,c1,lvl)
invN =scr_inven_check()/// need to find if empty or not and then assing 

global.inv_item[invN,0]=global.item[pick,0]
global.inv_item[invN,1]=global.item[pick,1]
global.inv_item[invN,2]=global.item[pick,2]
global.inv_item[invN,3]=global.item[pick,3]
global.inv_item[invN,4]=global.item[pick,4]
global.inv_item[invN,5]=global.item[pick,5]
global.inv_item[invN,6]=global.item[pick,6]
global.inv_item[invN,7]=global.item[pick,7]
global.inv_item[invN,8]=global.item[pick,8]
global.inv_item[invN,9]=global.item[pick,9]
global.inv_item[invN,10]=global.item[pick,10]
global.inv_item[invN,11]=global.item[pick,11]
global.inv_item[invN,12]=global.item[pick,12]
global.inv_item[invN,13]=global.item[pick,13]
global.inv_item[invN,14]=global.item[pick,14]
global.inv_item[invN,15]=global.item[pick,15]
global.inv_item[invN,16]=global.item[pick,16]
global.inv_item[invN,17]=global.item[pick,17]
global.inv_item[invN,18]=global.item[pick,18]
global.inv_item[invN,19]=lvl
global.inv_item[invN,20]=irandom(1000)//ID unice for player item
global.inv_item[invN,21]=hp//HP
global.inv_item[invN,22]=atk//atk 
global.inv_item[invN,23]=heal//heal
global.inv_item[invN,24]=a//moda
global.inv_item[invN,25]=b//modb 
global.inv_item[invN,26]=c//modc 
global.inv_item[invN,27]=100//dur 
global.inv_item[invN,28]=t//MainType  012345
global.inv_item[invN,29]=//"sprite"+string(global.item[pick,1]) //image? "sprite"+string(sn)
global.inv_item[invN,30]=0//xp
global.inv_item[invN,31]=false//xp

return invN;

