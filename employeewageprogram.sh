echo $"Welcome to EmployeeWage Computation Program"

isPresent=1
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
	function partTimeEmployeeAndWage(){
	read -p "Assume Wage per hour is :" isWagePerHour
	read -p "To part time hour is :" isFullDayHour
	calculatePartTimeEmployeeWage=$((isWagePerHour*isFullDayHour))
	echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage
}
partTimeEmployeeAndWage
else
   echo "Employee Absent"
 fi

