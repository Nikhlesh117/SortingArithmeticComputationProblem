echo "Welcome to Sorting Arithmetic Computation program!!!"

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
echo "The given three numbers:$a $b $c"

compute1=$(($a+$b*$c))
echo "$a+$b*$c:$compute1"