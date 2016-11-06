num=argument0
dif=argument1


npc=instance_create(x,y,npc_obj)

        with npc{   
       
       name= global.npc[other.num,0]
    hp=(global.npc[other.num,1]+(global.npc[other.num,1]*(other.dif/100)))//adjusting dificulty based on difrence in wanted dif
    temphp = hp
    ttlhp=hp
    atk= (global.npc[other.num,2]+(global.npc[other.num,2]*(other.dif/100)))
    spd= global.npc[other.num,3]
    trn= spd
    
        for(i=0;i<6;i++){
        def[i]=global.npc[other.num,i+8]
    }
     //place=instance_number(npc_obj)
     sprite_index= global.npc[other.num,5]
     image_index=global.npc[other.num,6]
        
        
        }

