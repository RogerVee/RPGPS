//aug1 ///type sword sheild ect
//aug2// rareity
//aug3//collor
/*r=(random_range(0,99))//getting rare lvl will be feed later
t=random(5)//random item type will be fedd later// maybe get it when assesing the list to see what is avlibille
c=random(5)//random color /will be feed later
a=random(15) // base precent for agumenting item 
ar=random(a) // devding precent top smaller value 
b=min((a-ar),ar)//seconed value
c=abs(a-b)//third value 
set=random(3)//ds get (ds_r,ds_t,randomds range) gos and gets an item acorindg to preivoues premaintores


for (i=0;i<26;i++){
        global.neweqt[i]=global.gameInv[set,i]}//creat array for new item atributes from ds list now array
       
        
          if t=0{//agumenting for weapion type
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))
          }
         if t=1{
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))}
         if t=2{
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))}
         if t=3{
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))}
         if t=4{
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))}
         if t=5{
          global.neweqt[]=(global.neweqt[]*(1+(a/100))
           global.neweqt[]=(global.neweqt[]*(1-(b/100))
            global.neweqt[]=(global.neweqt[]*(1-(c/100))}
  
            
    global.neweqt[image]=(global.neweqt[t]//need to change the image for the type
    
    
    
