// scr_check_playfield(across,down,size)
// Returns the number of matches

var gridx, gridy, size, vmatch, hmatch, iii, nnn;

gridx = 6;
gridy = 6;
size = 120;
hmatch = 0;
vmatch = 0;
ccombo =0
ctr = 0;
z=0;//placeholder for combo matches 

/* Start of rows checking */
for(gy=global.Ly; gy>global.Ly-(gridy*size); gy-=size){
  for(gx = global.Lx; gx>global.Lx-(gridx*size); gx-=size){
    // fetch first target instance
    nnn = instance_position(gx,gy,rune_obj)
    if(nnn > 0){
      ctr = 1; // the target will alwaglobal.Ys match with itself.
      match_count[0] = nnn; // so store target in array index 0;
      iii = instance_position(gx-size,gy,rune_obj);
      // loop until there is no match
      while (iii > 0){
        if(iii.sprite_index == nnn.sprite_index){
          // We have a match so store the instance ID
          match_count[ctr] = iii;
          ctr +=1;
          gx -= size;
          iii = instance_position(gx-size,gy,rune_obj);
        }else{
          // no (more) matches so break out to save time.
          break;
        }
      }
      if(ctr > 2){
        hmatch += 1;
        ccombo +=1;
        
        for(i=0; i<ctr; i+=1){// set the matched variable in all matching instances
            if match_count[i].matched >2{
                z=match_count[i].ccombo
                with rune_obj{
                                if ccombo = other.z {
                                    ccombo=other.ccombo   
                                    fcombo=0
                                                 }                                                        
                              }           }
          if i=0 match_count[i].fcombo=1
          match_count[i].matched = ctr;
           match_count[i].ccombo = ccombo;
          match_count[i] = 0;
        }
      }
    }
  }
}

/* Start of column check */
ctr = 0;
vmatch = 0;
for(gx = global.Lx; gx>global.Lx-(gridx*size); gx-=size){
  for(gy=global.Ly; gy>global.Ly-(gridy*size); gy-=size){
    // fetch first target instance
    nnn = instance_position(gx,gy,rune_obj)
    if(nnn > 0){
      ctr = 1; // the target will alwaglobal.Ys match with itself.
      match_count[0] = nnn; // so store target in array index 0;
      iii = instance_position(gx,gy-size,rune_obj);
      // loop until there is no match
      while (iii > 0){
        if(iii.sprite_index == nnn.sprite_index){
          // We have a match
          match_count[ctr] = iii;
          ctr += 1;
          gy -= size;
          iii = instance_position(gx,gy-size,rune_obj);
        }else{
          break; // break out to save time.
        }
      }
      if(ctr > 2){
        vmatch += 1; 
        ccombo +=1; //assineg a combo incress     
        for(i=0; i<ctr; i+=1){// set the matched variable in all matching instances
          
          if match_count[i].matched >2{//if allready iubn a combo change all it is with to new combo number 
                z=match_count[i].ccombo
                with rune_obj{
                                if ccombo = other.z {
                                    ccombo=other.ccombo 
                                    fcombo=0   
                                    
                                                 }                                                        
                              }           }
           if i=0 match_count[i].fcombo=1     //if first object in combo assening for later user of dislplay combo nuber                
          match_count[i].matched = ctr;
          match_count[i].ccombo = ccombo;
          match_count[i] = 0;
        }
      }
    }
  }
}
if global.step!=0{
        if (hmatch+vmatch) >0 or instance_number(rune_obj)<36{
            global.ccombo=ccombo//pass combo count to global for destroy step 
            global.step = 3.2;//if matches go fall 
            
        }else{global.step=3.6}//go deal some damage
    
    }
    
// return the number of 3 in a line matches;
return (hmatch+vmatch);

