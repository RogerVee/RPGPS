for (i = 0;i < global.maxInv; i++)
{
    if( global.inv_item[i,0] == -1)// check to see if empty
        {
             return i
        }
}
//return null // for when there is no spot open
