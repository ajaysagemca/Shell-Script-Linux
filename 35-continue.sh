#!/binbash
number=0
while [[ $number -lt 11 ]]
do
  ((number++))
  if [[ $number -eq 5 ]]
  then
      echo "five is continue statement"
      continue
  fi
  echo $number
done