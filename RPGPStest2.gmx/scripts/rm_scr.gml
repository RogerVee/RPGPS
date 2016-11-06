rm=argument0;
cnt =random_range(1,5)// how many npcs in the room
ccnt =cnt//npcs need to gen
iii=0
dif=global.instance[rm,1]
ddd=dif
chkrange=10
///////////////////////
do //loop untill all npc postions are full
{iii=random(4)
          if global.npc[iii,7] <((ddd/ccnt)+chkrange) or global.npc[iii,7] >((ddd/ccnt)-chkrange)
            {npc_scr(iii,(ddd/ccnt)-global.npc[iii,7])
            ccnt-=1
            ddd-= (ddd/ccnt)-global.npc[iii,7]}else{chkrange+=10}



}until(ccnt <1)
