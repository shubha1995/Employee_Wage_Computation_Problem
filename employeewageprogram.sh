echo $"Welcome to EmployeeWage Computation Program"

WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4
read -p "To number of working day :" NUMBER_OF_WORKING_DAYS
read -p "To number of working hours :" NUMBER_OF_WORKING_HOURS

totalSalary=0
totalEmployeeHours=0
totalWorkingDays=0

while [[ $totalEmployeeHours -le $NUMBER_OF_WORKING_HOURS &&
			$totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	randomShiftCheck=$((RANDOM%3))
	case $randomShiftCheck in

		$IS_FULL_TIME )
			employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
			;;
		$IS_PART_TIME )
			employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
			;;
		* )
			employeeHour=0
			;;
	esac
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHour))
	echo "To total employee hours :" $totalEmployeeHours	
done

totalWorkingWage=$(($totalEmployeeHours * $WAGE_PER_HOUR))
echo $totalWorkingWage
