g = argument0//grabed instance id 
h = argument1//hit instance id
var hit2
hX=h.x
hY=h.y


if 1=1{
h.x=g.x
h.y=g.y

g.x=hX
g.y=hY
audio_play_sound (gem_move_snd,10,false)
}
/*
if abs(g.x-h.x)<10    //checking to see if the hit cell is in the same colom, 
{
    if abs(g.y-h.y)<130
    {
        if g.y < h.y    ///checking to see if the braged rune is above the hit rune
        {
        g.y=g.y+120;    
        h.y=h.y-120;
        
        }else{
                g.y=g.y-120;
                h.y=h.y+120;
                }audio_play_sound (gem_move_snd,10,false)
    }
  
}

if abs(g.y-h.y)<10    //checking to see if hit cell is in the same row
{
    if abs(g.x-h.x)<130
    {
        if g.x<h.x
        {
        g.x=g.x+120;
        h.x=h.x-120;
        }else{
               g.x=g.x-120;
               h.x=h.x+120;
                }audio_play_sound (gem_move_snd,10,false)
    }

}else{//if not in the cells next to chosen 
        if abs(g.x-mouse_x)>abs(g.y-mouse_y)
                    {
             hit2 =instance_position(mouse_x,g.y, rune_obj);
            if inthit!=noone 
            {
            move_scr(g,hit2)
            }
            }else{ 
             hit2 =instance_position(g.x,mouse_y, rune_obj);
            if inthit!=noone 
            {
            move_scr(g,hit2)
             }}


            }
