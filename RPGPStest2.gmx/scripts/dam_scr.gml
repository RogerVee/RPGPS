gridx = 6;
gridy = 6;
size = 120;
for(i=0;i<6;i++){
        dam_spr[i]=0
        
        }
        
        
dam_spr[0]=health_spr
dam_spr[1]=blk_dam_spr
dam_spr[2]=grn_dam_spr
dam_spr[3]=red_dam_spr
dam_spr[4]=blue_dam_spr
dam_spr[5]=wh_dam_spr


for(gx=0; gx<gridx; gx++){
    dam=instance_create(gx*size,global.Ly-(gridy*size+1),obj_dam)
        with dam{
            type=other.gx
            sprite_index=other.dam_spr[other.gx]
          
        }

}
