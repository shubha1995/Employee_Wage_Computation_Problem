echo $"Welcome to EmployeeWage Computation Program"

isPresent=1
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 	$isPresent ]
then
	echo "Employee Present"
	echo "Enter choice: "
	echo "1.Daily Employee"
	echo "2.Part Time Employee"
	read ch
case "$ch" in
	1) echo "To calculate Daily Employee Wage"
		function calculateDailyEmployeeWae(){
		read -p "Assume Wage per hour is :" isWagePerHour
		read -p "To full day hours is :" isFullDayHour
		read -p "To days in month :" isDaysinMonth
		calculateEmployeeWage=$((isWagePerHour*isFullDayHour*isDaysinMonth))
		echo "To calculate daily employee wage :" $calculateEmployeeWage
		}
		calculateDailyEmployeeWae
			
		;;
	2)echo "To calculate part time Employee and wage"
		function partTimeEmployeeAndWage(){
		read -p "Assume Wage per hour is :" isWagePerHour "rupees"
		read -p "To part time hour is :" isFullDayHour
		read -p "To days in month :" isDaysinMonth
		calculatePartTimeEmployeeWage=$((isWagePerHour*isFullDayHour*isDaysinMonth))
		echo "To calculate part time employee and wage :" $calculatePartTimeEmployeeWage
		}
		partTimeEmployeeAndWage
		;;
		*)echo "No choice"
		;;
esac

else
   echo "Employee Absent"
 fi

