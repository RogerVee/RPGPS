ref=argument0
x1=argument1
y1=argument2

nnn=instance_create(x1,y1,obj_eqtNew)
    with nnn
        {
            invSlot=other.ref
            nameSet=global.inv_item[other.ref,0]//
            LV=global.inv_item[other.ref,19]//current lvl
            maxLV=global.inv_item[other.ref,2]//base maxLV
            ATB=global.inv_item[other.ref,3]//artibutes fwgldh
            SN=global.inv_item[other.ref,1]//serial number
            ID=global.inv_item[other.ref,20]//
            mainType=global.inv_item[other.ref,28]//weapion,armor peice, other/ slot
            subType=global.inv_item[other.ref,0]//used for weapion /special/ repair and upgrade
            weight=global.inv_item[other.ref,4] //
            xpCurve=global.inv_item[other.ref,5]//1-5 float
            triggerSkill=global.inv_item[other.ref,6]//
            weapionSkill=global.inv_item[other.ref,7]//
            dur=global.inv_item[other.ref,27]//
            tier=global.inv_item[other.ref,8]//
            type = global.inv_item[other.ref,9]
            
            
            HP=global.inv_item[other.ref,21]////default value 
            minHP=global.inv_item[other.ref,10]//base minhp
            maxHP=global.inv_item[other.ref,11]//base maxHP
            HPGF=global.inv_item[other.ref,16] //growth fator for hp
            
            ATK=global.inv_item[other.ref,22]////default value 
            minATK= global.inv_item[other.ref,12]//base minATK
            maxATK=global.inv_item[other.ref,13]//base maxATK
            ATKGF= global.inv_item[other.ref,17]//growth fator for ATK
            
            HEAL=global.inv_item[other.ref,23]////default value 
            minHEAL=global.inv_item[other.ref,14]//base minHEAL
            maxHEAL=global.inv_item[other.ref,15]//base maxHEAL
            HEALGF=global.inv_item[other.ref,18]//growth fator for HEAL
            
          
            sprite_index = global.inv_item_img[global.inv_item[other.ref,1]]
            image_index = global.inv_item[other.ref,28]
            xp=global.inv_item[other.ref,30]//xp
            equiped=global.inv_item[other.ref,31]//xp
            
         
        }
