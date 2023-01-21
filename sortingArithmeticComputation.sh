echo "Welcome to Sorting Arithmetic i program!!!"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo "The given three numbers:$a $b $c"

compute1=$(($a+$b*$c))
echo "$a+$b*$c:$compute1"

compute2=$(($a*$b+$c))
echo "$a*$b+$c:$compute2"

compute3=$(($c+$a/$b))
echo "$c+$a/$b:$compute3"

compute4=$(($a%$b+$c))
echo "$a%$b+$c:$compute4"

declare -A dict

dict[compute1]=$compute1
dict[compute2]=$compute2
dict[compute3]=$compute3
dict[compute4]=$compute4

for i in ${!dict[@]}
do 
    echo "$i = ${dict[$i]}"
done