#.\objects.ps1

$my_num = 5

#$my_num | Get-Member -MemberType Method

$my_num.GetType().Name

$my_num.CompareTo(3)

<#
if the output is 1, the specified integer is less than my_num
if the output is 0, the specified integer is equal to my_num
if the output is -1, the specified integer is more than my_num
#>

#Adding properties to an object
$person = New-Object -TypeName PSCustomObject
$person | Add-Member -MemberType NoteProperty -Name "FirstName" -Value "Daniel"
$person | Add-Member -MemberType ScriptMethod -Name "greeting" -Value { Write-Host "Hello!" }

$person.greeting()

<# Hash table object creation
$person = [PSCustomObject]@{
  Name = "Daniel"
  Age = 30
}

$person | Get-Member -MemberType NoteProperty
#>


<# Work with Arrays and Objects
$spanish_nums_1 = "Uno", "Dos", "Tres"
$spanish_nums_2 = "Cuatro", "Cinco"

# Make changes below
$spanish_nums = $spanish_nums_1 + $spanish_nums_2
$is_seis_in_spanish_nums = $spanish_nums -contains "seis"
[Int[]]$nums = 1, 2, 3, 4, 5
$spanish_nums_join_string = $spanish_nums -join ", "
$nums_join_string = $nums -join " >> "
# Make changes above

Write-Host `nNumbers are: $nums_join_string
Write-Host Spanish numbers are: $spanish_nums_join_string
Write-Host Is seis in spanish_nums? $is_seis_in_spanish_nums

#>