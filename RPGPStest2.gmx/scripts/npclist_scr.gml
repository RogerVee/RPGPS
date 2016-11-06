 
    
          //npc generation array
for (i =0; i <6;i++){       // change i limit for how many bad guys 
    for (j = 0; j < 7; j++)
    {
    global.npc[i,j]=0
   // global.npc[i,7]=i//putting place in 
    }}
    //molder
    global.npc[0,0]="Molder"//name
    global.npc[0,1]=100//health
    global.npc[0,2]=random_range(5,15)//attack
    global.npc[0,3]=2//speed
    //global.npc[0,4]=0//Place asseinged by array
    global.npc[0,5]=grs_spr//image
    global.npc[0,6]=0//image index
    global.npc[0,7]=100//base dif
    global.npc[0,8]=1//pink 
    global.npc[0,9]=1//black
    global.npc[0,10]=.8//green
    global.npc[0,11]=2//red
    global.npc[0,12]=.5//blue
    global.npc[0,13]=1//white
    
    //pumkill
    global.npc[1,0]="Pumkill"//name
    global.npc[1,1]=150//health
    global.npc[1,2]=random_range(10,20)//attack
    global.npc[1,3]=3//speed
   // global.npc[1,4]=0//Place asseinged by array
    global.npc[1,5]=grs_spr//image
    global.npc[1,6]=1//image index
    global.npc[1,7]=200//base dif
    global.npc[1,8]=1//pink 
    global.npc[1,9]=.5//black
    global.npc[1,10]=.8//green
    global.npc[1,11]=1//red
    global.npc[1,12]=1//blue
    global.npc[1,13]=2//white
    
     
    global.npc[2,0]="skwirm"//name
    global.npc[2,1]=175//health
    global.npc[2,2]=random_range(5,10)//attack
    global.npc[2,3]=1//speed
    //global.npc[1,4]=0//Place asseinged by array
    global.npc[2,5]=grs_spr//image
    global.npc[2,6]=2//image index
    global.npc[2,7]=50//base dif
    global.npc[2,8]=1//pink 
    global.npc[2,9]=1//black
    global.npc[2,10]=1//green
    global.npc[2,11]=1//red
    global.npc[2,12]=1//blue
    global.npc[2,13]=1//white
    
    
    global.npc[3,0]="nombie"//name
    global.npc[3,1]=200//health
    global.npc[3,2]=random_range(10,25)//attack
    global.npc[3,3]=3//speed
   // global.npc[1,4]=0//Place asseinged by array
    global.npc[3,5]=grs_spr//image
    global.npc[3,6]=3//image index
    global.npc[3,7]=200//base dif
    global.npc[3,8]=1//pink 
    global.npc[3,9]=.5//black
    global.npc[3,10]=1//green
    global.npc[3,11]=1//red
    global.npc[3,12]=1//blue
    global.npc[3,13]=2//white
