#Run file in CLI with command
# .\testing.ps1

Write-Host "All commands that act on Host:"
Get-Command -Noun Host


Write-Host "The Current Date is:"
Get-Date

$name = 'Daniel'
$age = Read-Host -Prompt "Enter your age"

Write-Host "Hello, $name! You are $age years old."

#Multiple variables to same value
$i = $j = $k = 1
[Int] $num_1 = 42

#Declaring multiple variables on one line
$name, $color, $date = "Daniel", "Red", (Get-Date).DateTime
$date_data_type = $date.GetType().Name
Write-Host "Value of num_1 is $num_1"
Write-Host "Hello, my name is $name!"
Write-Host "My favorite color is $color."
Write-Host "Today is $date"
Write-Host "The data type for 'date' is '$date_data_type'`n"

#Lists all environment variables
#Get-ChildItem Env:

#To create a new environment variable (use all caps for env variables)
# $Env:USERS = "Daniel"

<#
Comparison operators
-eq
-ne
-gt
-lt
-ge
-le
#>
