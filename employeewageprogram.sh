echo $"Welcome to EmployeeWage Computation Program"

isPresent=1
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
