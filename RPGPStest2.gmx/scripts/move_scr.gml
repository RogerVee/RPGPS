g = argument0//grabed instance id 
h = argument1//hit instance id
var hit2




if abs(g.x-h.x)<64      //checking to see if the hit cell is in the same row
{
    if abs(g.y-h.y)<130
    {
        if g.y < h.y
        {
        g.y=g.y+128;
        h.y=h.y-128;
        
        }else{
                g.y=g.y-128;
                h.y=h.y+128;
                }audio_play_sound (gem_move_snd,10,false)
    }
  
}

if abs(g.y-h.y)<64      //checking to see if hit cell is in the same collom
{
    if abs(g.x-h.x)<130
    {
        if g.x<h.x
        {
        g.x=g.x+128;
        h.x=h.x-128;
        }else{
               g.x=g.x-128;
               h.x=h.x+128;
                }audio_play_sound (gem_move_snd,10,false)
    }

}else{//if not in the cells next to chosen 
        if abs(g.x-mouse_x)>abs(g.y-mouse_y)
                    {
             hit2 =instance_position(mouse_x,g.y, gem_obj);
            if inthit!=noone 
            {
            move_scr(g,hit2)
            }
            }else{ 
             hit2 =instance_position(g.x,mouse_y, gem_obj);
            if inthit!=noone 
            {
            move_scr(g,hit2)
             }}


            }
