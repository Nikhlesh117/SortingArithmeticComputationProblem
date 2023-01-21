echo "Welcome to Sorting Arithmetic computation program!!!"

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
declare -a array

dict[compute1]=$compute1
dict[compute2]=$compute2
dict[compute3]=$compute3
dict[compute4]=$compute4
index=0
for i in ${!dict[@]}
do 
    array[index++]=${dict[$i]}
done
echo "The i results array is"
echo ${array[@]}

array=($(printf '%d\n' "${array[@]}"|sort -n))
echo "The sorted array is:${array[@]}"
