echo $"Welcome to EmployeeWage Computation Program"

isPresent=1
wph=20
fdh=8
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
function calculateDailyEmployeeWage(){
	read -p "Assume Wage per hour is :" isWagePerHour
	read -p "To full day hours is :" isFullDayHour
	calculateEmployeeWage=$((isWagePerHour *isFullDayHour))
	echo "To calculate daily employee wage :" $calculateEmployeeWage
}
calculateDailyEmployeeWage
else
        echo "Employee Absent"
fi
