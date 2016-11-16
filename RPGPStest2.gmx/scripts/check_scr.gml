// scr_check_playfield(across,down,size)
// Returns the number of matches

var gridx, gridy, size, vmatch, hmatch, iii, nnn;

gridx = 6;
gridy = 6;
size = 120;
hmatch = 0;
vmatch = 0;
ctr = 0;

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
        for(i=0; i<ctr; i+=1){
          // set the matched variable in all matching instances
          match_count[i].matched = ctr;
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
        for(i=0; i<ctr; i+=1){
          // set the matched variable in all matching instances
          match_count[i].matched = ctr;
          match_count[i] = 0;
        }
      }
    }
  }
}
if global.step!=0{
        if (hmatch+vmatch) >0 or instance_number(rune_obj)<36{
            global.step = 3.5;//if matches go fall 
        }else{global.step=3.6}//go deal some damage
    
    }
    
// return the number of 3 in a line matches;
return (hmatch+vmatch);

