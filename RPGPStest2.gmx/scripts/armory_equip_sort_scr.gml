var equipGrid
k =((global.equipPage -1)*25)
equipCount=0
gridPostion =0

for(i=0;i<global.maxInv;i++)//getting count of inventor 
    {
        if (global.inv_item[i,0] != -1)
        {
            equipCount ++
        }
    }

equipGrid=ds_grid_create(5,equipCount)//creating grid for storing sorting info 
            /*  0   array postion 
                1   name
                2   lvl
                3   weight
                4   type
             */   
for(i=0;i<global.maxInv;i++)//setting items into sort grid 
    {
        if (global.inv_item[i,0] != -1)
        {
         ds_grid_set(equipGrid,0,gridPostion,i)
         ds_grid_set(equipGrid,1,gridPostion,global.inv_item[i,0])  
         ds_grid_set(equipGrid,2,gridPostion,global.inv_item[i,19])  
         ds_grid_set(equipGrid,3,gridPostion,global.inv_item[i,4])  
         ds_grid_set(equipGrid,4,gridPostion,global.inv_item[i,28])  
         gridPostion ++  
        }
    }
global.equipPageMax= ceil(equipCount/25)//setting max pages 

with (obj_eqtNew)//destroying old items in old sort 
    {
     instance_destroy();
    }
 ds_grid_sort(equipGrid, global.equipSort, true);   
    
for(i=0;i<5;i++)
{ 
    if (k >= ds_grid_height(equipGrid)) break;//if all itesm are created break out
        for(j=0;j<5;j++)
        {
            scr_item_creat(ds_grid_get(equipGrid,0,k),(j*148)+48,700+(i*132))
            k++
            if (k >= ds_grid_height(equipGrid)) break;//if all itesm are created break out
        }
}    

ds_grid_destroy(equipGrid)                      
            



    
    
    
    
