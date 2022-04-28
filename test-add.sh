bash: y: command not found
decalre -a num1s=(1 23 5 7 42 18)
decalre -a num2s=(3 44 15 26 30 1)

declare -A results=()
for i in {0..5}; do
  a=${num1s[$i]}
  b=${num2s[$i]}
  results[$a,$b]=$(($a + $b))
done

for i in {0..5};  do
  a=${num1s[$i]}
  b=${num1s[$i]}
  if [ $(./add.sh $a $b) -eq ${results[$a,$b]} ];  then
     echo  "test passed"
    else
       echo "test failed"
      exit 1
    fi
done 
