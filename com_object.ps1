$FilePath = "C:\Users\cian1\OneDrive\Documents\powershell project\bum.xlsx"
$MasterPath = "C:\Users\cian1\OneDrive\Documents\powershell project\Master.xlsx"

#opens files in same folder, how do other folders?



$Excel = New-Object -ComObject Excel.Application

$Excel.Visible = $true

$Workbook = $Excel.Workbooks.Open($FilePath)

# Select the sheet containing the data
$worksheet = $workbook.Worksheets.Item("Sheet1")

$column1 = $WorkSheet.Columns.Item(1).value2

#  Loop to find the number infirst col
	$i=0
	Do {
		If ($Column1[$i,1] -ne "number" -and $Column1[$i,1] -ge 0){
        
        $bumnumber = $Column1[$i,1]

		}
}  # End If Number Found
While ($i++ -lt 33) 

Write-Output $bumnumber


#close the open excel TODO

#access master file goto tab with bumnumber if it does not exist create it

$Master = New-Object -ComObject Excel.Application

$Master.Visible = $true

$Workbook1 = $Master.Workbooks.Open($MasterPath)

#go to bumnumber tab if does not exist create it

#x = 0
#For Each objWorksheet in Workbook1.Worksheets
#    If objWorksheet.Name = “Budget” Then
#        x = 1
#        Exit For
#    End If
#Next


