#!/bin/bash
number=1
while [[ $number -le 3 ]]
do
   #echo $number
   for i in item1 item2 item3
   do 
      #echo  "$number --> $i"
      if [[ $number -eq 2 ]]
      then
         echo "condtion is true $number"
         break
      fi
      echo  "$number --> $i"
   done
   ((number++))
done








    
    


    
    
















   
   





    



