[String]$name = Read-Host -Prompt "Type your name"
[Int]$number_1 = Read-Host -Prompt "Type the first number"
[Int]$number_2 = Read-Host -Prompt "Type the second number"

# Write your operator statements below
$both_are_less_than_50 = $number_1 -lt 50 -and $number_2 -lt 50
$one_is_higher_than_100 = $number_1 -gt 100 -or $number_2 -gt 100
$only_one_is_less_than_10 = $number_1 -le 10 -xor $number_2 -le 10
$name_is_not_codecademy = !($name -eq 'codecademy')
# Write your operator statements above

Write-Host "`nHello, $name! Let's evaluate your inputs as True or False."
Write-Host "Both numbers are less than 50: $both_are_less_than_50"
Write-Host "One number is higher than 100: $one_is_higher_than_100"
Write-Host "Only one number is less than or equal to 10: $only_one_is_less_than_10"
Write-Host "Your name is not 'codecademy': $name_is_not_codecademy"