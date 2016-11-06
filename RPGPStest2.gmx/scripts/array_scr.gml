var gem;
for (i =0; i <6;i++){
    for (j = 0; j < 6; j++)
    {
    gem=instance_create((room_width-Xs)-(i*128),(room_height-8)-(j*128),gem_obj);   
    //gem=instance_create(Xs+(i*128),Ys+(j*128),gem_obj); 
    
       //global.battleGrid[i,j]=1;
     
        }
        }
  
        
        for (i=0;i<6;i++)
        {
       global.damt[i]=0
        
        }
//damt 0  = pink    
//damt 1    black
//damt 2    green
//damt 3    red
//damt 4    blue
//damt 5    white
//damt 6

