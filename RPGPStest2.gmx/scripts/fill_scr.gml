gridx = 6;
gridy = 6;
size = 120;

for(gy=0; gy<gridy; gy++){//gy>global.Ly-(gridy*size
  for(gx=0; gx<gridx; gx++){
  if instance_position(global.Lx-(gx*size),global.Ly-(gy*size),rune_obj)=noone{
  instance_create(global.Lx-(gx*size),global.Ly-(gy*size),rune_obj)
 }
    
  }}

